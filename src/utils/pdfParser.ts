import * as pdfjsLib from 'pdfjs-dist';
import {
  detectFormMetaFromPdf,
  finalizeTaxData,
  getFieldMap,
  type TaxData,
} from './dpfoParserCore';

// Set up the PDF.js worker
pdfjsLib.GlobalWorkerOptions.workerSrc = new URL(
  'pdfjs-dist/build/pdf.worker.min.mjs',
  import.meta.url,
).href;

type PdfFieldObject = {
  value?: unknown;
  defaultValue?: unknown;
};

type PdfFieldMap = Record<string, PdfFieldObject[]>;

/** Extract all text content from a PDF ArrayBuffer */
async function extractPdfText(arrayBuffer: ArrayBuffer): Promise<string> {
  const loadingTask = pdfjsLib.getDocument({ data: arrayBuffer });
  const pdf = await loadingTask.promise;
  const textParts: string[] = [];

  for (let pageNum = 1; pageNum <= pdf.numPages; pageNum++) {
    const page = await pdf.getPage(pageNum);
    const textContent = await page.getTextContent();
    const pageText = textContent.items
      .map((item) => ('str' in item ? item.str : ''))
      .join(' ');
    textParts.push(pageText);
  }

  return textParts.join('\n');
}

function normalizeKey(value: string): string {
  return value.toLowerCase().replace(/[^a-z0-9]/g, '');
}

function getFieldStringValue(field: PdfFieldObject): string | undefined {
  const raw = field.value ?? field.defaultValue;
  if (typeof raw === 'string') {
    const trimmed = raw.trim();
    return trimmed || undefined;
  }
  if (typeof raw === 'number') {
    return raw.toString();
  }
  if (typeof raw === 'boolean') {
    return raw ? '1' : '0';
  }
  return undefined;
}

function findFieldValue(fields: PdfFieldMap, ...candidates: string[]): string | undefined {
  const candidateKeys = candidates.map(normalizeKey);
  for (const [fieldName, definitions] of Object.entries(fields)) {
    const nameKey = normalizeKey(fieldName);
    const matches = candidateKeys.some(
      (candidate) => nameKey === candidate || nameKey.endsWith(candidate),
    );
    if (!matches) continue;
    for (const definition of definitions) {
      const value = getFieldStringValue(definition);
      if (value) return value;
    }
  }
  return undefined;
}

function parseAmount(value?: string): number | undefined {
  if (!value) return undefined;
  const normalized = value.replace(/\s/g, '').replace(',', '.');
  const parsed = parseFloat(normalized);
  if (!Number.isFinite(parsed)) return undefined;
  return parsed;
}

/** Find a value using regex in the text, returns first capture group */
function findByPattern(text: string, ...patterns: RegExp[]): string | undefined {
  for (const pattern of patterns) {
    const match = text.match(pattern);
    if (match?.[1]) return match[1].trim();
  }
  return undefined;
}

/** Find a numeric amount near a label */
function findAmount(text: string, ...labelPatterns: RegExp[]): number | undefined {
  for (const pattern of labelPatterns) {
    const match = text.match(pattern);
    if (match?.[1]) {
      const val = parseFloat(match[1].replace(/\s/g, '').replace(',', '.'));
      if (!isNaN(val) && val > 0) return val;
    }
  }
  return undefined;
}

export async function parsePdf(arrayBuffer: ArrayBuffer): Promise<TaxData> {
  const loadingTask = pdfjsLib.getDocument({ data: arrayBuffer });
  const pdf = await loadingTask.promise;
  const fieldObjects = (await pdf.getFieldObjects()) as PdfFieldMap | null;
  const fields: PdfFieldMap = fieldObjects ?? {};
  const text = await extractPdfText(arrayBuffer);

  const meta = detectFormMetaFromPdf(Object.keys(fields), text);
  if (!meta) {
    throw new Error(
      'Nepodarilo sa určiť typ alebo verziu DPFO formulára z PDF. Nahrajte DPFO A/B formulár.',
    );
  }
  const fieldMap = getFieldMap(meta);

  const menoFromFields = findFieldValue(fields, ...fieldMap.meno);
  const priezviskoFromFields = findFieldValue(fields, ...fieldMap.priezvisko);
  const rokFromFields = findFieldValue(fields, ...fieldMap.rok);
  const identityFromFields = findFieldValue(fields, ...fieldMap.identity);
  const taxDueFromFields = parseAmount(findFieldValue(fields, ...fieldMap.danNaUhradu));

  let dicFromFields = findFieldValue(fields, ...fieldMap.dic);
  let rcFromFields = findFieldValue(fields, ...fieldMap.rodneCislo);
  if (!dicFromFields && !rcFromFields && identityFromFields) {
    if (identityFromFields.includes('/')) {
      rcFromFields = identityFromFields;
    } else {
      dicFromFields = identityFromFields;
    }
  }

  // Rodné číslo pattern: XXXXXX/XXXX or XXXXXXXXXX (10 digits without slash)
  const rodneCisloFromText = findByPattern(
    text,
    /Rodn[eé]\s+[cč][ií]slo[:\s]+([0-9]{6}\/[0-9]{3,4})/i,
    /RC[:\s]+([0-9]{6}\/[0-9]{3,4})/i,
    /([0-9]{6}\/[0-9]{3,4})/,
  );

  // DIČ: typically 10 digits, often labeled as DIČ
  const dicFromText = findByPattern(
    text,
    /DI[Čč][:\s]+([0-9]{10})/i,
    /Da[nň]ov[eé]\s+identifika[cč][nň][eé]\s+[cč][ií]slo[:\s]+([0-9]{10})/i,
  );

  // Tax year: 4-digit year, often labeled as zdaňovacie obdobie or rok
  const zdanovaciePeriodFromText = findByPattern(
    text,
    /[Zz]da[nň]ovac[ie]+\s+obdob[ie]+[:\s]+(20[0-9]{2})/,
    /[Rr]ok[:\s]+(20[0-9]{2})/,
  );

  // First name and last name from PDF
  const priezviskoFromText = findByPattern(
    text,
    /Priezvisko[:\s]+([A-ZÁČĎÉÍĽĹŇÓÔŔŠŤÚÝŽ][a-záčďéíľĺňóôŕšťúýž]+)/i,
  );
  const menoFromText = findByPattern(text, /Meno[:\s]+([A-ZÁČĎÉÍĽĹŇÓÔŔŠŤÚÝŽ][a-záčďéíľĺňóôŕšťúýž]+)/i);

  // Tax amount: look for "daň na úhradu" or "daň celkom" followed by a number
  const danNaUhraduFromText = meta.type === 'A'
    ? findAmount(
        text,
        /[Dd]a[nň]\s+na\s+[uú]hradu[:\s]+([0-9][0-9\s,.]*)/,
        /r\.\s*71[:\s]+([0-9][0-9\s,.]*)/,
      )
    : findAmount(
        text,
        /[Dd]a[nň]\s+na\s+[uú]hradu[:\s]+([0-9][0-9\s,.]*)/,
        /r\.\s*115[:\s]+([0-9][0-9\s,.]*)/,
      );

  const danNaUhradu = taxDueFromFields && taxDueFromFields > 0
    ? taxDueFromFields
    : danNaUhraduFromText;

  return finalizeTaxData(
    {
      identity: identityFromFields,
      dic: dicFromFields || dicFromText,
      rodneCislo: rcFromFields || rodneCisloFromText,
      meno: menoFromFields || menoFromText,
      priezvisko: priezviskoFromFields || priezviskoFromText,
      danNaUhradu,
      zdanovaciePeriod: rokFromFields || zdanovaciePeriodFromText,
    },
    meta,
  );
}

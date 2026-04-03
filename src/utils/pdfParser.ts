import * as pdfjsLib from 'pdfjs-dist';
import type { TaxData } from './xmlParser';

// Set up the PDF.js worker
pdfjsLib.GlobalWorkerOptions.workerSrc = new URL(
  'pdfjs-dist/build/pdf.worker.min.mjs',
  import.meta.url,
).href;

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
  const text = await extractPdfText(arrayBuffer);

  // Rodné číslo pattern: XXXXXX/XXXX or XXXXXXXXXX (10 digits without slash)
  const rodneCislo = findByPattern(
    text,
    /Rodn[eé]\s+[cč][ií]slo[:\s]+([0-9]{6}\/[0-9]{3,4})/i,
    /RC[:\s]+([0-9]{6}\/[0-9]{3,4})/i,
    /([0-9]{6}\/[0-9]{3,4})/,
  );

  // DIČ: typically 10 digits, often labeled as DIČ
  const dic = findByPattern(
    text,
    /DI[Čč][:\s]+([0-9]{10})/i,
    /Da[nň]ov[eé]\s+identifika[cč][nň][eé]\s+[cč][ií]slo[:\s]+([0-9]{10})/i,
  );

  // Tax year: 4-digit year, often labeled as zdaňovacie obdobie or rok
  const zdanovaciePeriod = findByPattern(
    text,
    /[Zz]da[nň]ovac[ie]+\s+obdob[ie]+[:\s]+(20[0-9]{2})/,
    /[Rr]ok[:\s]+(20[0-9]{2})/,
    /([Rr]ok\s+)(20[0-9]{2})/,
  );

  // First name and last name from PDF
  const priezvisko = findByPattern(
    text,
    /Priezvisko[:\s]+([A-ZÁČĎÉÍĽĹŇÓÔŔŠŤÚÝŽ][a-záčďéíľĺňóôŕšťúýž]+)/i,
  );
  const meno = findByPattern(text, /Meno[:\s]+([A-ZÁČĎÉÍĽĹŇÓÔŔŠŤÚÝŽ][a-záčďéíľĺňóôŕšťúýž]+)/i);

  // Tax amount: look for "daň na úhradu" or "daň celkom" followed by a number
  const danNaUhradu = findAmount(
    text,
    /[Dd]a[nň]\s+na\s+[uú]hradu[:\s]+([0-9][0-9\s,.]*)/,
    /[Dd]a[nň]\s+celkom[:\s]+([0-9][0-9\s,.]*)/,
    /r\.\s*115[:\s]+([0-9][0-9\s,.]*)/,
    /r\.\s*81[:\s]+([0-9][0-9\s,.]*)/,
  );

  return {
    dic: dic || undefined,
    rodneCislo: rodneCislo || undefined,
    meno: meno || undefined,
    priezvisko: priezvisko || undefined,
    danNaUhradu,
    zdanovaciePeriod: zdanovaciePeriod || undefined,
    druhDane: 'Daňové priznanie FO',
  };
}

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

type PositionedTextItem = {
  text: string;
  x: number;
  y: number;
};

type PositionedWidget = {
  fieldName: string;
  value: string;
  centerX: number;
  centerY: number;
};

/** Extract all text content from a PDF ArrayBuffer */
async function extractPdfText(pdf: pdfjsLib.PDFDocumentProxy): Promise<string> {
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

function toPositionedTextItems(textContent: Awaited<ReturnType<pdfjsLib.PDFPageProxy['getTextContent']>>): PositionedTextItem[] {
  const positionedItems: PositionedTextItem[] = [];

  for (const item of textContent.items) {
    if (!('str' in item) || !('transform' in item)) continue;
    const text = String(item.str ?? '').trim();
    if (!text) continue;

    const transform = Array.isArray(item.transform) ? item.transform : null;
    if (!transform || transform.length < 6) continue;

    const x = Number(transform[4]);
    const y = Number(transform[5]);
    if (!Number.isFinite(x) || !Number.isFinite(y)) continue;

    positionedItems.push({ text, x, y });
  }

  return positionedItems;
}

function findLabel(items: PositionedTextItem[], exactText: string): PositionedTextItem | undefined {
  return items.find((item) => item.text === exactText);
}

function assertLabelAt(
  items: PositionedTextItem[],
  exactText: string,
  expectedX: number,
  expectedY: number,
  tolerance: number,
): PositionedTextItem {
  const label = findLabel(items, exactText);
  if (!label) {
    throw new Error(`Required label not found: ${exactText}`);
  }

  const dx = Math.abs(label.x - expectedX);
  const dy = Math.abs(label.y - expectedY);
  if (dx > tolerance || dy > tolerance) {
    throw new Error(
      `Label ${exactText} is not at expected position. Expected (${expectedX}, ${expectedY}), got (${label.x.toFixed(
        3,
      )}, ${label.y.toFixed(3)}).`,
    );
  }

  return label;
}

async function getWidgetFields(page: pdfjsLib.PDFPageProxy): Promise<PositionedWidget[]> {
  const annotations = await page.getAnnotations();
  const widgets: PositionedWidget[] = [];

  for (const annotation of annotations) {
    if (annotation.subtype !== 'Widget') continue;
    if (!Array.isArray(annotation.rect) || annotation.rect.length < 4) continue;

    const [x1, y1, x2, y2] = annotation.rect;
    const centerX = (Number(x1) + Number(x2)) / 2;
    const centerY = (Number(y1) + Number(y2)) / 2;
    if (!Number.isFinite(centerX) || !Number.isFinite(centerY)) continue;

    widgets.push({
      fieldName: String(annotation.fieldName ?? '').trim(),
      value: String(annotation.fieldValue ?? '').trim(),
      centerX,
      centerY,
    });
  }

  return widgets;
}

function findNearestWidgetRightOfLabel(
  widgets: PositionedWidget[],
  label: PositionedTextItem,
  maxDx: number,
  maxDy: number,
): PositionedWidget | undefined {
  const candidates = widgets
    .filter((widget) => {
      const dx = widget.centerX - label.x;
      const dy = Math.abs(widget.centerY - label.y);
      return dx >= 5 && dx <= maxDx && dy <= maxDy;
    })
    .sort((a, b) => {
      const scoreA = (a.centerX - label.x) + Math.abs(a.centerY - label.y) * 2;
      const scoreB = (b.centerX - label.x) + Math.abs(b.centerY - label.y) * 2;
      return scoreA - scoreB;
    });

  return candidates[0];
}

function findNearestLabelLeftOfWidget(
  items: PositionedTextItem[],
  widget: PositionedWidget,
  maxDx: number,
  maxDy: number,
): PositionedTextItem | undefined {
  const candidates = items
    .filter((item) => {
      const dx = widget.centerX - item.x;
      const dy = Math.abs(widget.centerY - item.y);
      return dx >= 5 && dx <= maxDx && dy <= maxDy;
    })
    .sort((a, b) => {
      const scoreA = (widget.centerX - a.x) + Math.abs(widget.centerY - a.y) * 2;
      const scoreB = (widget.centerX - b.x) + Math.abs(widget.centerY - b.y) * 2;
      return scoreA - scoreB;
    });

  return candidates[0];
}

function assertWidgetAndNeighborLabel(params: {
  field: PositionedWidget;
  expectedFieldName: string;
  pageTextItems: PositionedTextItem[];
  expectedLabelText: string;
  context: string;
}): PositionedTextItem {
  const { field, expectedFieldName, pageTextItems, expectedLabelText, context } = params;
  if (field.fieldName !== expectedFieldName) {
    throw new Error(`${context}: expected field ${expectedFieldName}, got ${field.fieldName}.`);
  }

  const exactNearbyLabel = pageTextItems.find((item) => {
    const dx = field.centerX - item.x;
    const dy = Math.abs(field.centerY - item.y);
    return item.text === expectedLabelText && dx >= 5 && dx <= 420 && dy <= 45;
  });

  if (exactNearbyLabel) {
    return exactNearbyLabel;
  }

  const nearestLabel = findNearestLabelLeftOfWidget(pageTextItems, field, 420, 45);
  if (!nearestLabel) {
    throw new Error(`${context}: unable to resolve neighboring left label.`);
  }

  if (nearestLabel.text !== expectedLabelText) {
    throw new Error(
      `${context}: expected neighboring label ${expectedLabelText}, got ${nearestLabel.text}.`,
    );
  }

  return nearestLabel;
}

function combineAmount(mainValue: string, decimalsValue: string): string {
  const main = String(mainValue ?? '').trim();
  const decimals = String(decimalsValue ?? '').trim();
  if (!main && !decimals) return '';
  if (!decimals) return main;
  return `${main},${decimals.padStart(2, '0')}`;
}

function normalizeTaxPeriod(rawYearValue?: string): string | undefined {
  const raw = String(rawYearValue ?? '').trim();
  if (!raw) return undefined;
  if (/^\d{4}$/.test(raw)) return raw;
  if (/^\d{2}$/.test(raw)) return `20${raw}`;
  return raw;
}

async function extractByPlacement(
  pdf: pdfjsLib.PDFDocumentProxy,
  detectedType: 'A' | 'B',
): Promise<{
  meno?: string;
  priezvisko?: string;
  identity?: string;
  zdanovaciePeriod?: string;
  danNaUhradu?: number;
}> {
  const page1 = await pdf.getPage(1);
  const page1TextContent = await page1.getTextContent();
  const page1TextItems = toPositionedTextItems(page1TextContent);
  const page1Widgets = await getWidgetFields(page1);

  assertLabelAt(page1TextItems, 'DAŇOVÉ PRIZNANIE', 208.1478, 799.7766, 2);
  assertLabelAt(page1TextItems, 'K DANI Z PRÍJMOV FYZICKEJ OSOBY', 173.1949, 783.2891, 2);

  const yearLabelY = detectedType === 'A' ? 685.0956 : 690.8556;
  const yearLabel = assertLabelAt(page1TextItems, 'Za rok', 459.4882, yearLabelY, 2.5);
  const yearField = findNearestWidgetRightOfLabel(page1Widgets, yearLabel, 140, 30);
  if (!yearField) throw new Error('Unable to find field for Zdaňovacie obdobie.');

  const surnameLabelText = detectedType === 'A' ? '03 - Priezvisko' : '04 - Priezvisko';
  const nameLabelText = detectedType === 'A' ? '04 - Meno' : '05 - Meno';

  const surnameLabel = findLabel(page1TextItems, surnameLabelText);
  if (!surnameLabel) throw new Error(`Unable to find surname label: ${surnameLabelText}`);
  const nameLabel = findLabel(page1TextItems, nameLabelText);
  if (!nameLabel) throw new Error(`Unable to find name label: ${nameLabelText}`);
  const idLabel = findLabel(page1TextItems, '01 - DIČ (ak nie je pridelené, uvádza sa rodné číslo)');
  if (!idLabel) throw new Error('Unable to find DIČ/Rodné číslo label on page 1.');

  const surnameField = findNearestWidgetRightOfLabel(page1Widgets, surnameLabel, 300, 35);
  if (!surnameField) throw new Error('Unable to find field for Priezvisko.');
  const nameField = findNearestWidgetRightOfLabel(page1Widgets, nameLabel, 300, 35);
  if (!nameField) throw new Error('Unable to find field for Meno.');
  const idField = findNearestWidgetRightOfLabel(page1Widgets, idLabel, 220, 40);
  if (!idField) throw new Error('Unable to find field for Rodné číslo.');

  const expectedSurnameField = detectedType === 'A' ? '03' : '04';
  const expectedNameField = detectedType === 'A' ? '04' : '05';
  const expectedIdField = detectedType === 'A' ? 'DIC' : 'dic';
  assertWidgetAndNeighborLabel({
    field: yearField,
    expectedFieldName: 'rok',
    pageTextItems: page1TextItems,
    expectedLabelText: 'Za rok',
    context: 'Zdaňovacie obdobie',
  });
  assertWidgetAndNeighborLabel({
    field: surnameField,
    expectedFieldName: expectedSurnameField,
    pageTextItems: page1TextItems,
    expectedLabelText: surnameLabelText,
    context: 'Priezvisko',
  });
  assertWidgetAndNeighborLabel({
    field: nameField,
    expectedFieldName: expectedNameField,
    pageTextItems: page1TextItems,
    expectedLabelText: nameLabelText,
    context: 'Meno',
  });
  assertWidgetAndNeighborLabel({
    field: idField,
    expectedFieldName: expectedIdField,
    pageTextItems: page1TextItems,
    expectedLabelText: '01 - DIČ (ak nie je pridelené, uvádza sa rodné číslo)',
    context: 'Rodné číslo',
  });

  const paymentPageNumber = detectedType === 'A' ? 4 : 11;
  const paymentPage = await pdf.getPage(paymentPageNumber);
  const paymentTextContent = await paymentPage.getTextContent();
  const paymentTextItems = toPositionedTextItems(paymentTextContent);
  const paymentWidgets = await getWidgetFields(paymentPage);

  const paymentLabel =
    detectedType === 'A'
      ? paymentTextItems
          .filter(
            (item) =>
              item.x < 140 &&
              item.y > 170 &&
              item.y < 260 &&
              item.text.toLowerCase().includes('na úhradu'),
          )
          .sort((a, b) => b.y - a.y)[0]
      : findLabel(paymentTextItems, 'Daň na úhradu');
  if (!paymentLabel) throw new Error('Unable to find Daň na úhradu label.');

  const paymentField = findNearestWidgetRightOfLabel(paymentWidgets, paymentLabel, 600, 35);
  if (!paymentField) throw new Error('Unable to find Daň na úhradu field.');

  const expectedPaymentFieldName = detectedType === 'A' ? '71' : '135';
  const paymentExpectedLabel = detectedType === 'A' ? 'D ň na úhradu' : 'Daň na úhradu';
  assertWidgetAndNeighborLabel({
    field: paymentField,
    expectedFieldName: expectedPaymentFieldName,
    pageTextItems: paymentTextItems,
    expectedLabelText: paymentExpectedLabel,
    context: 'Daň na úhradu',
  });

  const paymentDecimalsField = paymentWidgets.find(
    (widget) => widget.fieldName === `${expectedPaymentFieldName}d`,
  );

  return {
    meno: nameField.value || undefined,
    priezvisko: surnameField.value || undefined,
    identity: idField.value || undefined,
    zdanovaciePeriod: normalizeTaxPeriod(yearField.value),
    danNaUhradu: parseAmount(combineAmount(paymentField.value, paymentDecimalsField?.value ?? '')),
  };
}

export async function parsePdf(arrayBuffer: ArrayBuffer): Promise<TaxData> {
  const loadingTask = pdfjsLib.getDocument({ data: arrayBuffer });
  const pdf = await loadingTask.promise;
  const fieldObjects = (await pdf.getFieldObjects()) as PdfFieldMap | null;
  const fields: PdfFieldMap = fieldObjects ?? {};
  const text = await extractPdfText(pdf);

  const meta = detectFormMetaFromPdf(Object.keys(fields), text);
  if (!meta) {
    throw new Error(
      'Nepodarilo sa určiť typ alebo verziu DPFO formulára z PDF. Nahrajte DPFO A/B formulár.',
    );
  }
  const fieldMap = getFieldMap(meta);

  let placementExtracted:
    | {
        meno?: string;
        priezvisko?: string;
        identity?: string;
        zdanovaciePeriod?: string;
        danNaUhradu?: number;
      }
    | undefined;
  try {
    placementExtracted = await extractByPlacement(pdf, meta.type);
  } catch {
    // Fallback to existing extraction path when strict placement matching fails.
  }

  const menoFromFields = placementExtracted?.meno ?? findFieldValue(fields, ...fieldMap.meno);
  const priezviskoFromFields =
    placementExtracted?.priezvisko ?? findFieldValue(fields, ...fieldMap.priezvisko);
  const rokFromFields =
    placementExtracted?.zdanovaciePeriod ??
    normalizeTaxPeriod(findFieldValue(fields, ...fieldMap.rok));
  const identityFromFields =
    placementExtracted?.identity ?? findFieldValue(fields, ...fieldMap.identity);
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

  const danNaUhradu =
    placementExtracted?.danNaUhradu && placementExtracted.danNaUhradu > 0
      ? placementExtracted.danNaUhradu
      : taxDueFromFields && taxDueFromFields > 0
        ? taxDueFromFields
        : undefined;

  return finalizeTaxData(
    {
      identity: identityFromFields,
      dic: dicFromFields,
      rodneCislo: rcFromFields,
      meno: menoFromFields,
      priezvisko: priezviskoFromFields,
      danNaUhradu,
      zdanovaciePeriod: rokFromFields,
    },
    meta,
  );
}

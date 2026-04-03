export interface TaxData {
  dic?: string;
  rodneCislo?: string;
  meno?: string;
  priezvisko?: string;
  danNaUhradu?: number;
  zdanovaciePeriod?: string;
  druhDane?: string;
  rawXml?: string;
}

/** Helper: get first text content of element(s) matching tag names */
function getTextByTags(doc: Document, ...tags: string[]): string | undefined {
  for (const tag of tags) {
    // Try with any namespace
    const elements = doc.getElementsByTagNameNS('*', tag);
    if (elements.length > 0 && elements[0].textContent?.trim()) {
      return elements[0].textContent.trim();
    }
    // Also try without namespace (plain tagName match)
    const plain = doc.querySelectorAll(tag);
    if (plain.length > 0 && plain[0].textContent?.trim()) {
      return plain[0].textContent.trim();
    }
  }
  return undefined;
}

/** Find element whose localName (case-insensitive) matches any of the given names */
function getTextByLocalName(doc: Document, ...names: string[]): string | undefined {
  const lowerNames = names.map((n) => n.toLowerCase());
  const all = doc.getElementsByTagName('*');
  for (let i = 0; i < all.length; i++) {
    const el = all[i];
    if (lowerNames.includes(el.localName.toLowerCase())) {
      const text = el.textContent?.trim();
      if (text) return text;
    }
  }
  return undefined;
}

/** Try to find the largest numeric value among typical tax amount field names */
function findTaxAmount(doc: Document): number | undefined {
  // Slovak tax form field names for "daň na úhradu" (tax to pay) and "daň celkom" (total tax)
  // These vary by form type and year. We check a range of known names.
  const amountFields = [
    // Typ B annual return - daň na úhradu
    'r115', 'r_115', 'r114', 'r_114', 'r113', 'r_113',
    // Typ A annual return
    'r81', 'r_81', 'r080', 'r_080', 'r082', 'r_082',
    // Generic names used in some versions
    'DANPR', 'danpr', 'DANNAHRAD', 'dannahrad', 'DANZAPLATIT',
    'DANICELA', 'danicela', 'CELDANCELA',
    // Common section/field combos
    'r105', 'r106', 'r107', 'r108',
  ];

  let bestAmount: number | undefined = undefined;

  for (const field of amountFields) {
    const text = getTextByLocalName(doc, field);
    if (text) {
      const val = parseFloat(text.replace(/\s/g, '').replace(',', '.'));
      if (!isNaN(val) && val > 0) {
        // Prefer "na úhradu" fields (115, 81) over "celkom" fields
        if (
          field.includes('115') ||
          field.includes('81') ||
          field.toLowerCase().includes('nahrad') ||
          field.toLowerCase().includes('zaplatit')
        ) {
          return val;
        }
        if (bestAmount === undefined) bestAmount = val;
      }
    }
  }
  return bestAmount;
}

/** Try to detect the type of the Slovak tax form from the root element or namespaces */
function detectFormType(doc: Document): string {
  const root = doc.documentElement;
  const rootName = (root.localName || root.tagName || '').toLowerCase();
  const ns = root.namespaceURI?.toLowerCase() || '';

  if (rootName.includes('dpb') || ns.includes('_b_') || rootName.includes('typ_b')) {
    return 'DP FO Typ B';
  }
  if (rootName.includes('dpa') || ns.includes('_a_') || rootName.includes('typ_a')) {
    return 'DP FO Typ A';
  }
  // DPH
  if (rootName.includes('dph') || ns.includes('dph')) {
    return 'DPH';
  }
  return 'Daňové priznanie FO';
}

export function parseXml(xmlString: string): TaxData {
  const parser = new DOMParser();
  const doc = parser.parseFromString(xmlString, 'application/xml');

  const parseError = doc.querySelector('parsererror');
  if (parseError) {
    throw new Error('Neplatný XML súbor: ' + parseError.textContent);
  }

  const druhDane = detectFormType(doc);

  // DIČ: typically r002, DIC, DIC1, DICP
  const dic = getTextByLocalName(doc, 'r002', 'DIC', 'DIC1', 'DICP', 'dic');

  // Rodné číslo: typically r001, RC, RCU
  const rodneCislo = getTextByLocalName(doc, 'r001', 'RC', 'RCU', 'rc', 'RODNE_CISLO');

  // Meno (first name)
  const meno = getTextByLocalName(doc, 'r004', 'MENO', 'meno', 'KRSTNAME', 'FIRSTNAME');

  // Priezvisko (last name)
  const priezvisko = getTextByLocalName(doc, 'r003', 'PRIEZVISKO', 'priezvisko', 'LASTNAME', 'SURNAME');

  // Tax year
  const zdanovaciePeriod =
    getTextByLocalName(doc, 'ZDOB', 'zdob', 'ROK', 'rok', 'ZDAOB', 'PERIOD', 'YEAR') ||
    getTextByTags(doc, 'ZDOB', 'ROK');

  // Tax amount
  const danNaUhradu = findTaxAmount(doc);

  return {
    dic: dic || undefined,
    rodneCislo: rodneCislo || undefined,
    meno: meno || undefined,
    priezvisko: priezvisko || undefined,
    danNaUhradu,
    zdanovaciePeriod: zdanovaciePeriod || undefined,
    druhDane,
    rawXml: xmlString,
  };
}

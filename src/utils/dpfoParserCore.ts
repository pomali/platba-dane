export interface TaxData {
  dic?: string;
  rodneCislo?: string;
  meno?: string;
  priezvisko?: string;
  danNaUhradu?: number;
  zdanovaciePeriod?: string;
  druhDane?: string;
  formType?: 'A' | 'B';
  formVersion?: number;
  rawXml?: string;
}

export type DpfoFormType = 'A' | 'B';

export interface FormMeta {
  type: DpfoFormType;
  version: number;
}

export interface FormFieldMap {
  identity: string[];
  dic: string[];
  rodneCislo: string[];
  meno: string[];
  priezvisko: string[];
  rok: string[];
  danNaUhradu: string[];
}

const A_2025_FIELDS: FormFieldMap = {
  identity: ['cmbDic1', 'DICaleboRodneCislo', 'dicrc', 'r001', 'r002'],
  dic: ['cmbDic1', 'r002', 'DIC', 'dic'],
  rodneCislo: ['r001', 'RC', 'rc', 'rodneCislo'],
  meno: ['tbMeno4', 'meno', 'r004', 'FIRSTNAME'],
  priezvisko: ['tbPriezvisko3', 'priezvisko', 'r003', 'LASTNAME', 'SURNAME'],
  rok: ['cmbRok', 'rok', 'ZDOB', 'YEAR'],
  danNaUhradu: ['t71', 'r71', 'r_71', 'dannauhradu', 'taxdue'],
};

const B_2025_FIELDS: FormFieldMap = {
  identity: ['cmbDic1', 'DICaleboRodneCislo', 'dicrc', 'r001', 'r002'],
  dic: ['cmbDic1', 'r002', 'DIC', 'dic'],
  rodneCislo: ['r001', 'RC', 'rc', 'rodneCislo'],
  meno: ['tbMeno5', 'meno', 'r004', 'FIRSTNAME'],
  priezvisko: ['tbPriezvisko4', 'priezvisko', 'r003', 'LASTNAME', 'SURNAME'],
  rok: ['cmbRok', 'rok', 'ZDOB', 'YEAR'],
  danNaUhradu: ['r115', 't115', 'r_115', 'dannauhradu', 'taxdue', 'r71', 't71'],
};

const A_LEGACY_FIELDS: FormFieldMap = {
  identity: ['DICaleboRodneCislo', 'r001', 'r002', 'dic', 'rc'],
  dic: ['r002', 'DIC', 'dic'],
  rodneCislo: ['r001', 'RC', 'rc', 'RODNE_CISLO'],
  meno: ['r004', 'MENO', 'meno', 'FIRSTNAME'],
  priezvisko: ['r003', 'PRIEZVISKO', 'priezvisko', 'LASTNAME', 'SURNAME'],
  rok: ['ZDOB', 'ROK', 'rok', 'YEAR'],
  danNaUhradu: ['r71', 'r_71', 'dannauhradu', 'taxdue'],
};

const B_LEGACY_FIELDS: FormFieldMap = {
  identity: ['DICaleboRodneCislo', 'r001', 'r002', 'dic', 'rc'],
  dic: ['r002', 'DIC', 'dic'],
  rodneCislo: ['r001', 'RC', 'rc', 'RODNE_CISLO'],
  meno: ['r004', 'MENO', 'meno', 'FIRSTNAME'],
  priezvisko: ['r003', 'PRIEZVISKO', 'priezvisko', 'LASTNAME', 'SURNAME'],
  rok: ['ZDOB', 'ROK', 'rok', 'YEAR'],
  danNaUhradu: ['r115', 'r_115', 'dannauhradu', 'taxdue', 'r71'],
};

function detectTypeFromRootName(rootName: string): DpfoFormType | undefined {
  const upperRoot = rootName.toUpperCase();
  if (upperRoot.includes('DPFOA') || upperRoot.includes('TYP_A')) return 'A';
  if (upperRoot.includes('DPFOB') || upperRoot.includes('TYP_B')) return 'B';
  return undefined;
}

function getDirectChildByName(parent: Element, name: string): Element | null {
  for (let i = 0; i < parent.children.length; i++) {
    const child = parent.children.item(i);
    if (!child) continue;
    if (child.localName === name || child.tagName === name) return child;
  }
  return null;
}

function hasPath(doc: Document, path: string[]): boolean {
  let current: Element | null = doc.documentElement;
  for (const segment of path) {
    if (!current) return false;
    current = getDirectChildByName(current, segment);
  }
  return current !== null;
}

function hasElement(doc: Document, name: string): boolean {
  return doc.getElementsByTagNameNS('*', name).length > 0;
}

function validateDesignerXmlSignature(doc: Document, meta: FormMeta): boolean {
  // These signatures are derived from official form XSD/layout files.
  if (meta.type === 'A') {
    if (!hasElement(doc, 'cmbDic1') || !hasElement(doc, 'cmbRok')) return false;
    if (meta.version >= 2025) return hasElement(doc, 'tbPriezvisko3') && hasElement(doc, 'tbMeno4');
    return hasElement(doc, 'tbPriezvisko3');
  }

  if (!hasElement(doc, 'cmbDic1') || !hasElement(doc, 'cmbRok')) return false;
  if (meta.version >= 2025) return hasElement(doc, 'tbPriezvisko4') && hasElement(doc, 'tbMeno5');
  return hasElement(doc, 'tbPriezvisko4');
}

function detectDocumentXmlMetaFromXsdSignature(doc: Document): FormMeta | undefined {
  if (doc.documentElement.localName !== 'dokument' && doc.documentElement.tagName !== 'dokument') {
    return undefined;
  }

  // DPFO A: 2025 introduced hlavicka/DICaleboRodneCislo; 2024 uses hlavicka/rodneCislo.
  if (hasPath(doc, ['hlavicka', 'DICaleboRodneCislo'])) {
    return { type: 'A', version: 2025 };
  }
  if (hasPath(doc, ['hlavicka', 'rodneCislo'])) {
    return { type: 'A', version: 2024 };
  }

  // DPFO B uses hlavicka/dic in both versions; 2025 includes telo/r50a complex section.
  if (hasPath(doc, ['hlavicka', 'dic'])) {
    if (hasPath(doc, ['telo', 'r50a'])) {
      return { type: 'B', version: 2025 };
    }
    return { type: 'B', version: 2024 };
  }

  return undefined;
}

export function detectFormMetaFromXmlUsingXsd(doc: Document): FormMeta | undefined {
  const documentMeta = detectDocumentXmlMetaFromXsdSignature(doc);
  if (documentMeta) return documentMeta;

  const rootName = doc.documentElement.localName || doc.documentElement.tagName;
  const rootMeta = detectFormMetaFromXmlRoot(rootName);
  if (!rootMeta) return undefined;

  return validateDesignerXmlSignature(doc, rootMeta) ? rootMeta : undefined;
}

export function detectFormMetaFromXmlRoot(rootName: string): FormMeta | undefined {
  const type = detectTypeFromRootName(rootName);
  const yearMatch = rootName.match(/(20\d{2})/);
  if (!type || !yearMatch) return undefined;
  return { type, version: Number.parseInt(yearMatch[1], 10) };
}

export function detectFormMetaFromPdf(fields: string[], text: string): FormMeta | undefined {
  const normalizedFields = fields.map((f) => f.toLowerCase());
  const normalizedText = text.toLowerCase();

  const explicitTypeFromText = normalizedText.match(/dpfo\s*([ab])\s*(20\d{2})/i);
  if (explicitTypeFromText) {
    return {
      type: explicitTypeFromText[1].toUpperCase() as DpfoFormType,
      version: Number.parseInt(explicitTypeFromText[2], 10),
    };
  }

  const explicitTypeFromFields = normalizedFields.find((f) => /dpfo[ab]20\d{2}/.test(f));
  if (explicitTypeFromFields) {
    const match = explicitTypeFromFields.match(/dpfo([ab])(20\d{2})/);
    if (match) {
      return {
        type: match[1].toUpperCase() as DpfoFormType,
        version: Number.parseInt(match[2], 10),
      };
    }
  }

  const typeFromLabel = normalizedText.match(/typ\s*[:=]?\s*([ab])/i);
  if (typeFromLabel) {
    const explicitVersion = normalizedText.match(/(20\d{2})/);
    return {
      type: typeFromLabel[1].toUpperCase() as DpfoFormType,
      version: explicitVersion ? Number.parseInt(explicitVersion[1], 10) : 2025,
    };
  }

  const looksLikeA = normalizedFields.some((f) =>
    f.includes('tbpriezvisko3') || f.includes('tbmeno4') || f.includes('t71'),
  );
  const looksLikeB = normalizedFields.some((f) =>
    f.includes('tbpriezvisko4') || f.includes('tbmeno5') || f.includes('r115') || f.includes('t115'),
  );

  if (looksLikeA && !looksLikeB) return { type: 'A', version: 2025 };
  if (looksLikeB && !looksLikeA) return { type: 'B', version: 2025 };

  return undefined;
}

export function getFieldMap(meta: FormMeta): FormFieldMap {
  if (meta.version >= 2025) {
    return meta.type === 'A' ? A_2025_FIELDS : B_2025_FIELDS;
  }
  return meta.type === 'A' ? A_LEGACY_FIELDS : B_LEGACY_FIELDS;
}

function parseAmount(value?: string): number | undefined {
  if (!value) return undefined;
  const normalized = value.replace(/\s/g, '').replace(',', '.');
  if (!normalized) return undefined;
  const parsed = Number.parseFloat(normalized);
  if (!Number.isFinite(parsed) || parsed <= 0) return undefined;
  return parsed;
}

function validateName(value?: string): string | undefined {
  if (!value) return undefined;
  const normalized = value.replace(/\s+/g, ' ').trim();
  if (!normalized) return undefined;
  if (/\d/.test(normalized)) return undefined;
  if (!/^[\p{L}][\p{L}\s.'-]*$/u.test(normalized)) return undefined;
  return normalized;
}

function validateDic(value?: string): string | undefined {
  if (!value) return undefined;
  const digits = value.replace(/\D+/g, '');
  return digits.length === 10 ? digits : undefined;
}

function validateRodneCislo(value?: string): string | undefined {
  if (!value) return undefined;
  const compact = value.replace(/\s+/g, '').trim();
  if (/^\d{6}\/\d{3,4}$/.test(compact)) return compact;
  const digits = compact.replace(/\D+/g, '');
  if (digits.length === 9 || digits.length === 10) return digits;
  return undefined;
}

function validateYear(value?: string): string | undefined {
  if (!value) return undefined;
  const digits = value.replace(/\D+/g, '');
  if (digits.length !== 4) return undefined;
  const year = Number.parseInt(digits, 10);
  if (year < 2000 || year > 2100) return undefined;
  return String(year);
}

type RawTaxLike = {
  dic?: string;
  rodneCislo?: string;
  identity?: string;
  birthDate?: string;
  meno?: string;
  priezvisko?: string;
  zdanovaciePeriod?: string;
  danNaUhradu?: string | number;
  rawXml?: string;
};

export function finalizeTaxData(raw: RawTaxLike, meta: FormMeta): TaxData {
  let dicCandidate = raw.dic;
  let rcCandidate = raw.rodneCislo;
  const identityDigits = raw.identity?.replace(/\D+/g, '') ?? '';
  const birthDateMatch = raw.birthDate?.trim().match(/^(\d{2})\.(\d{2})\.(\d{4})$/);
  const birthPrefix = birthDateMatch
    ? `${birthDateMatch[3].slice(2)}${birthDateMatch[2]}${birthDateMatch[1]}`
    : undefined;

  if (!dicCandidate && !rcCandidate && raw.identity) {
    if (raw.identity.includes('/')) {
      rcCandidate = raw.identity;
    } else if (birthPrefix && identityDigits.startsWith(birthPrefix)) {
      rcCandidate = raw.identity;
    } else {
      dicCandidate = raw.identity;
    }
  }

  const dic = validateDic(dicCandidate);
  const rodneCislo = validateRodneCislo(rcCandidate);
  const meno = validateName(raw.meno);
  const priezvisko = validateName(raw.priezvisko);
  const zdanovaciePeriod = validateYear(raw.zdanovaciePeriod);
  const danNaUhradu =
    typeof raw.danNaUhradu === 'number'
      ? Number.isFinite(raw.danNaUhradu) && raw.danNaUhradu > 0
        ? raw.danNaUhradu
        : undefined
      : parseAmount(raw.danNaUhradu);

  return {
    dic,
    rodneCislo,
    meno,
    priezvisko,
    danNaUhradu,
    zdanovaciePeriod,
    druhDane: `Daňové priznanie FO typ ${meta.type}`,
    formType: meta.type,
    formVersion: meta.version,
    rawXml: raw.rawXml,
  };
}
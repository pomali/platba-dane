import {
  detectFormMetaFromXmlUsingXsd,
  finalizeTaxData,
  type TaxData,
} from './dpfoParserCore';

export type { TaxData } from './dpfoParserCore';

/** Find text by exact path where each segment is a direct child element. */
function getTextByPath(doc: Document, path: string[]): string | undefined {
  let current: Element | null = doc.documentElement;
  for (const segment of path) {
    if (!current) return undefined;
    let next: Element | null = null;
    for (let i = 0; i < current.children.length; i++) {
      const child = current.children.item(i);
      if (!child) continue;
      if (child.localName === segment || child.tagName === segment) {
        next = child;
        break;
      }
    }
    current = next;
  }
  const text = current?.textContent?.trim();
  return text || undefined;
}

function getTextByPaths(doc: Document, paths: string[][]): string | undefined {
  for (const path of paths) {
    const value = getTextByPath(doc, path);
    if (value) return value;
  }
  return undefined;
}

function normalizeIdentity(value?: string): string | undefined {
  return value?.replace(/\s+/g, '').trim() || undefined;
}

export function parseXml(xmlString: string): TaxData {
  const parser = new DOMParser();
  const doc = parser.parseFromString(xmlString, 'application/xml');

  const parseError = doc.querySelector('parsererror');
  if (parseError) {
    throw new Error('Neplatný XML súbor: ' + parseError.textContent);
  }

  const meta = detectFormMetaFromXmlUsingXsd(doc);
  if (!meta) {
    throw new Error(
      'XML subor nezodpoveda podporovanym DPFO XSD schemam (A/B, verzie 2024/2025).',
    );
  }

  const isDocumentSchema = (doc.documentElement.localName || doc.documentElement.tagName) === 'dokument';

  let identity: string | undefined;
  let dic: string | undefined;
  let rodneCislo: string | undefined;
  let meno: string | undefined;
  let priezvisko: string | undefined;
  let zdanovaciePeriod: string | undefined;
  let birthDate: string | undefined;
  let danNaUhradu: string | undefined;

  if (isDocumentSchema) {
    if (meta.type === 'A' && meta.version >= 2025) {
      identity = normalizeIdentity(getTextByPath(doc, ['hlavicka', 'DICaleboRodneCislo']));
    } else if (meta.type === 'A') {
      rodneCislo = normalizeIdentity(getTextByPath(doc, ['hlavicka', 'rodneCislo']));
    } else {
      dic = normalizeIdentity(getTextByPath(doc, ['hlavicka', 'dic']));
    }

    meno = getTextByPath(doc, ['hlavicka', 'meno']);
    priezvisko = getTextByPath(doc, ['hlavicka', 'priezvisko']);
    zdanovaciePeriod = getTextByPath(doc, ['hlavicka', 'zdanovacieObdobie', 'rok']);
    birthDate = getTextByPath(doc, ['hlavicka', 'datumNarodenia']);
    danNaUhradu = meta.type === 'A'
      ? getTextByPath(doc, ['telo', 'r71'])
      : getTextByPath(doc, ['telo', 'r115']);
  } else if (meta.type === 'A') {
    identity = normalizeIdentity(getTextByPath(doc, ['DPFOA_DicDatum', 'cmbDic1']));
    birthDate = getTextByPath(doc, ['DPFOA_DicDatum', 'dtpDatumNarodenia2']);
    zdanovaciePeriod = getTextByPath(doc, ['DPFOA_ZaRok', 'cmbRok']);
    meno = getTextByPath(doc, ['DPFOA_Oddiel1', 'UdajeODanovnikovi', 'UdajeODanovnikoviS', 'tbMeno4']);
    priezvisko = getTextByPath(doc, ['DPFOA_Oddiel1', 'UdajeODanovnikovi', 'UdajeODanovnikoviS', 'tbPriezvisko3']);
    danNaUhradu = getTextByPaths(doc, [
      ['Oddiel6', 'Riadok71', 't71'],
    ]);
  } else {
    identity = normalizeIdentity(getTextByPath(doc, ['DPFOB_DIC', 'cmbDic1']));
    birthDate = getTextByPath(doc, ['DPFOB_DIC', 'dtpDatumNarodenia2']);
    zdanovaciePeriod = getTextByPath(doc, ['DPFOB_zaRok', 'cmbRok']);
    meno = getTextByPath(doc, ['DPFOB_1oddiel', 'Odd1_PriezviskoMenoTitul', 'Odd1_Meno', 'tbMeno5']);
    priezvisko = getTextByPath(doc, ['DPFOB_1oddiel', 'Odd1_PriezviskoMenoTitul', 'Odd1_Meno', 'tbPriezvisko4']);
    danNaUhradu = getTextByPaths(doc, [
      ['DPFOB_9oddiel', 'Odd9_115', 't115'],
    ]);
  }

  return finalizeTaxData(
    {
      identity,
      dic,
      rodneCislo,
      birthDate,
      meno,
      priezvisko,
      zdanovaciePeriod,
      danNaUhradu,
      rawXml: xmlString,
    },
    meta,
  );
}

export interface PaymentDetails {
  iban: string;
  /** Formatted Slovak account number: prefix-account/bankCode */
  accountFormatted: string;
  variabilnySymbol: string;
  suma: number;
  bankCode: string;
  prefix: string;
  oud: string;
}

/** Tax type definitions for Slovak tax payment */
export interface TaxType {
  code: string;
  name: string;
  /** Bank account prefix at Štátna pokladnica */
  prefix: string;
  /** Variable symbol prefix (druh dane kód) */
  vsPrefix: string;
}

export const TAX_TYPES: TaxType[] = [
  {
    code: 'DP_FO',
    name: 'Daň z príjmov fyzickej osoby (Typ A / Typ B)',
    prefix: '500208',
    vsPrefix: '170099',
  },
];

export const PAYMENT_TYPES = [
  { code: '99', name: 'Daň na úhradu' },
];

/** Slovak IBAN check digit calculation (ISO 13616) */
function calculateIbanCheckDigits(bban: string): string {
  // Move first 4 chars to end, replace SK with 2820 (S=28, K=20), append "00"
  const rearranged = bban + '282000';
  // Calculate mod 97 using BigInt for large numbers
  const remainder = BigInt(rearranged) % 97n;
  const checkDigits = 98n - remainder;
  return checkDigits.toString().padStart(2, '0');
}

/**
 * Generate Slovak IBAN from bank code, prefix and account number (OÚD).
 * IBAN = SK + CC + BBBB + PPPPPP + AAAAAAAAAA
 * where BBBB = bank code (4), PPPPPP = prefix (6), AAAAAAAAAA = account (10)
 */
export function generateIBAN(bankCode: string, prefix: string, accountNumber: string): string {
  const bban =
    bankCode.padStart(4, '0') +
    prefix.padStart(6, '0') +
    accountNumber.padStart(10, '0');
  const checkDigits = calculateIbanCheckDigits(bban);
  return `SK${checkDigits}${bban}`;
}

/** Format IBAN with spaces every 4 characters (display format) */
export function formatIBAN(iban: string): string {
  return iban.replace(/(.{4})/g, '$1 ').trim();
}

/**
 * Generate variabilný symbol.
 * Format: [vsPrefix][rok] = 8 characters total
 * Example: vsPrefix "1700" + rok "2023" = "17002023"
 */
export function generateVariabilnySymbol(
  vsPrefix: string,
  rok: string,
): string {
  // Standard format: vsPrefix + year = e.g. "1700" + "2023" = "17002023"
  const yearStr = rok.length === 4 ? rok : rok.slice(-4).padStart(4, '0');
  return vsPrefix + yearStr;
}

/** Build full payment details */
export function buildPaymentDetails(
  oud: string,
  suma: number,
  taxTypeCode: string,
  rok: string,
): PaymentDetails {
  const taxType = TAX_TYPES.find((t) => t.code === taxTypeCode) || TAX_TYPES[0];
  const bankCode = '8180'; // Štátna pokladnica

  const iban = generateIBAN(bankCode, taxType.prefix, oud);
  const accountFormatted = `${taxType.prefix}-${oud}/${bankCode}`;
  const variabilnySymbol = generateVariabilnySymbol(taxType.vsPrefix, rok);

  return {
    iban,
    accountFormatted,
    variabilnySymbol,
    suma,
    bankCode,
    prefix: taxType.prefix,
    oud,
  };
}

/** Format account number in Slovak style: prefix-number/bankCode */
export function formatAccountNumber(prefix: string, account: string, bankCode: string): string {
  return `${prefix}-${account}/${bankCode}`;
}

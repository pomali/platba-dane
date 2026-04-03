import { useEffect, useState } from 'react';
import QRCode from 'qrcode';
import {
  buildPaymentDetails,
  formatIBAN,
  TAX_TYPES,
} from '../utils/paymentUtils';
import type { TaxData } from '../utils/xmlParser';

interface PaymentInstructionsProps {
  taxData: TaxData;
}

function CopyButton({ value }: { value: string }) {
  const [copied, setCopied] = useState(false);

  const handleCopy = () => {
    navigator.clipboard.writeText(value).then(() => {
      setCopied(true);
      setTimeout(() => setCopied(false), 2000);
    });
  };

  return (
    <button
      onClick={handleCopy}
      className="ml-2 text-xs text-blue-600 hover:text-blue-800 border border-blue-300 rounded px-2 py-0.5 transition-colors"
      title="Kopírovať"
    >
      {copied ? '✓ Skopírované' : 'Kopírovať'}
    </button>
  );
}

function InfoRow({
  label,
  value,
  note,
}: {
  label: string;
  value: string;
  note?: string;
}) {
  return (
    <div className="flex flex-col sm:flex-row sm:items-start gap-1 py-3 border-b border-gray-100 last:border-0">
      <dt className="sm:w-56 text-sm text-gray-500 flex-shrink-0">{label}</dt>
      <dd className="flex items-center gap-1 flex-wrap">
        <span className="font-mono text-gray-900 font-medium">{value}</span>
        <CopyButton value={value} />
        {note && <span className="text-xs text-gray-400 w-full mt-0.5">{note}</span>}
      </dd>
    </div>
  );
}

export function PaymentInstructions({ taxData }: PaymentInstructionsProps) {
  const [oud, setOud] = useState('');
  const taxTypeCode = 'DP_FO';
  const [qrDataUrl, setQrDataUrl] = useState<string>('');
  const [spaydQrDataUrl, setSpaydQrDataUrl] = useState<string>('');
  const [paymeUrl, setPaymeUrl] = useState('');
  const [paymeQrDataUrl, setPaymeQrDataUrl] = useState<string>('');

  const rok = taxData.zdanovaciePeriod ?? new Date().getFullYear().toString();
  const suma = taxData.danNaUhradu ?? 0;

  const selectedTaxType = TAX_TYPES.find((t) => t.code === taxTypeCode) || TAX_TYPES[0];

  const isReady = oud.trim().length >= 8 && suma > 0;

  const payment = isReady
    ? buildPaymentDetails(oud.trim(), suma, taxTypeCode, rok)
    : null;

  // Generate supported payment QR payloads from one source of truth.
  useEffect(() => {
    if (!payment) {
      setQrDataUrl('');
      setSpaydQrDataUrl('');
      setPaymeUrl('');
      setPaymeQrDataUrl('');
      return;
    }

    const iban = payment.iban.replace(/\s/g, '');

    // Slovak QR pay format (uprostenená verzia - bysquare nie je open standard,
    // preto použijeme SEPA credit transfer QR format)
    const sepaQr = [
      'BCD',         // Service Tag
      '002',         // Version
      '1',           // Encoding (UTF-8)
      'SCT',         // Identification
      '',    // BIC of Štátna pokladnica
      'Financna Sprava Slovenskej Republiky',            // Beneficiary name (optional)
      iban, // IBAN
      `EUR${suma.toFixed(2)}`,         // Amount
      'Platba Dane z Prijmov FO',            // Purpose code
      payment.variabilnySymbol,        // Remittance info (VS)
      '',            // Unstructured remittance info
      '',            // Beneficiary to originator info
    ].join('\n');

    QRCode.toDataURL(sepaQr, { width: 200, margin: 1 })
      .then((url) => setQrDataUrl(url))
      .catch(() => setQrDataUrl(''));

    // SPAYD (Short Payment Descriptor) – standard used in SK/CZ banking apps
    const spaydParts = [
      'SPD*1.0',
      `ACC:${iban}`,
      `AM:${suma.toFixed(2)}`,
      'CC:EUR',
      'RN:Financna Sprava Slovenskej Republiky',
      `X-VS:${payment.variabilnySymbol}`,
      'MSG:Platba Dane z Prijmov FO',
    ];
    const spaydQr = spaydParts.join('*');

    QRCode.toDataURL(spaydQr, { width: 200, margin: 1 })
      .then((url) => setSpaydQrDataUrl(url))
      .catch(() => setSpaydQrDataUrl(''));

    const paymeParams = new URLSearchParams({
      IBAN: iban,
      AM: suma.toFixed(2), // Amount
      CC: 'EUR', // Currency
      PI: `/VS${payment.variabilnySymbol}/SS/KS`, // Payment Identification
      MSG: 'Platba dane z prijmov FO',
      CN: 'Financna Sprava Slovenskej Republiky', // Creditor Name
    });
    const generatedPaymeUrl = `https://payme.sk/2/q/PME?${paymeParams.toString()}`;

    setPaymeUrl(generatedPaymeUrl);

    QRCode.toDataURL(generatedPaymeUrl, { width: 200, margin: 1 })
      .then((url) => setPaymeQrDataUrl(url))
      .catch(() => setPaymeQrDataUrl(''));
  }, [payment, suma]);


  return (
    <div className="bg-white rounded-xl shadow-sm border border-gray-200 p-6">
      <h2 className="text-lg font-semibold text-gray-800 mb-4 flex items-center gap-2">
        <span className="text-green-600">💳</span> Platobné inštrukcie
      </h2>

      {/* OÚD input */}
      <div className="bg-amber-50 border border-amber-200 rounded-lg p-4 mb-6">
        <label className="block text-sm font-semibold text-amber-800 mb-1">
          OÚD – Osobný účet daňovníka{' '}
          <span className="font-normal text-amber-700">(povinné)</span>
        </label>
        <p className="text-xs text-amber-700 mb-2">
          Nájdete ho v online zóne Finančnej správy (
          <a
            href="https://www.financnasprava.sk/sk/osobna-internetova-zona/osobny-ucet"
            target="_blank"
            rel="noopener noreferrer"
            className="underline"
          >
            financnasprava.sk
          </a>
          ), alebo Vám bude oznámený DÚ po podaní daňového priznania ak ste ho nemali pridelený. Od momentu oznámenia OÚD máte 8 dní na úhradu dane.
        </p>
        <input
          type="text"
          value={oud}
          onChange={(e) => setOud(e.target.value.replace(/\D/g, ''))}
          placeholder="Zadajte 10-ciferné číslo OÚD"
          maxLength={10}
          className="w-full sm:w-72 border border-amber-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-amber-500"
        />
      </div>

      <div className="mb-6 text-sm text-gray-700 space-y-1">
        <p>
          <span className="font-medium text-gray-800">Druh dane / Účel platby:</span>{' '}
          {taxData.druhDane ?? selectedTaxType.name}
        </p>
        <p>
          <span className="font-medium text-gray-800">Typ úhrady:</span> Daňové priznanie (kód 00)
        </p>
        <p className="text-xs text-gray-400">
          Číslo účtu (prefix): {selectedTaxType.prefix} / Kód dane: {selectedTaxType.vsPrefix}
        </p>
      </div>

      {/* Payment details */}
      {payment ? (
        <div>
          <dl className="bg-gray-50 rounded-lg px-4 py-2">
            <InfoRow
              label="IBAN"
              value={formatIBAN(payment.iban)}
              note={`Číslo účtu: ${payment.accountFormatted}`}
            />
            <InfoRow
              label="Číslo účtu (SK formát)"
              value={payment.accountFormatted}
              note={`Banka: Štátna pokladnica (${payment.bankCode})`}
            />
            <InfoRow
              label="Variabilný symbol"
              value={payment.variabilnySymbol}
              note={`Druh dane + Typ úhrady: ${selectedTaxType.vsPrefix} + Rok: ${rok}`}
            />
            <InfoRow
              label="Suma"
              value={`${payment.suma.toFixed(2)} €`}
            />
            <InfoRow
              label="Zdaňovacie obdobie"
              value={rok}
            />
            <InfoRow
              label="Správa pre príjemcu"
              value={`VS: ${payment.variabilnySymbol}`}
            />
          </dl>

          {(qrDataUrl || spaydQrDataUrl || paymeQrDataUrl) && (
            <div className="mt-6 flex flex-col sm:flex-row justify-center gap-8">
              {spaydQrDataUrl && (
                <div className="flex flex-col items-center gap-2">
                  <p className="text-sm font-medium text-gray-600">SPAYD QR kód</p>
                  <img
                    src={spaydQrDataUrl}
                    alt="SPAYD QR kód pre platbu"
                    className="border border-gray-200 rounded-lg p-2"
                    width={200}
                    height={200}
                  />
                  <p className="text-xs text-gray-400">Podporovaný SK/CZ bankovými appkami</p>
                </div>
              )}
              {paymeQrDataUrl && (
                <div className="flex flex-col items-center gap-2">
                  <p className="text-sm font-medium text-gray-600">Payme.sk QR kód</p>
                  <img
                    src={paymeQrDataUrl}
                    alt="Payme.sk QR kód pre platbu"
                    className="border border-gray-200 rounded-lg p-2"
                    width={200}
                    height={200}
                  />
                  {paymeUrl && (
                    <a
                      href={paymeUrl}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="block w-[13.75rem] h-[3.75rem] leading-[3.75rem] px-5 text-center text-lg font-bold text-white no-underline bg-[#0055ff] rounded-lg cursor-pointer"
                    >
                      Otvoriť payme.sk link
                    </a>
                  )}
                  <p className="text-xs text-gray-400">Rýchle otvorenie platby cez payme.sk</p>
                </div>
              )}
              {qrDataUrl && (
                <div className="flex flex-col items-center gap-2">
                  <p className="text-sm font-medium text-gray-600">EPC QR kód</p>
                  <img
                    src={qrDataUrl}
                    alt="EPC QR kód pre platbu"
                    className="border border-gray-200 rounded-lg p-2"
                    width={200}
                    height={200}
                  />
                  <p className="text-xs text-gray-400">SEPA Credit Transfer (európsky štandard)</p>
                </div>
              )}
            </div>
          )}

          <div className="mt-4 bg-blue-50 border border-blue-200 rounded-lg p-3 text-xs text-blue-700">
            <strong>Poznámka:</strong> Skontrolujte si všetky údaje pred odoslaním platby.
            Variabilný symbol a číslo účtu musia byť správne zadané. V prípade pochybností
            kontaktujte váš daňový úrad alebo využite{' '}
            <a
              href="https://www.financnasprava.sk/sk/osobna-internetova-zona/osobny-ucet/vytvorenie-platobnych-instrukc"
              target="_blank"
              rel="noopener noreferrer"
              className="underline"
            >
              oficiálny generátor platobných inštrukcií
            </a>{' '}
            na stránke Finančnej správy SR.
          </div>
        </div>
      ) : (
        <div className="text-center py-8 text-gray-400">
          <p className="text-sm">
            {oud.trim().length === 0
              ? 'Zadajte OÚD pre zobrazenie platobných inštrukcií'
              : oud.trim().length < 8
              ? 'OÚD musí mať aspoň 8 číslic'
              : suma <= 0
              ? 'Zadajte sumu dane pre zobrazenie platobných inštrukcií'
              : 'Vyplňte všetky povinné polia'}
          </p>
        </div>
      )}
    </div>
  );
}

import { useEffect, useRef, useState } from 'react';
import QRCode from 'qrcode';
import {
  buildPaymentDetails,
  formatIBAN,
  TAX_TYPES,
  PAYMENT_TYPES,
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
  const [paymentTypeCode, setPaymentTypeCode] = useState('00');
  const [taxTypeCode, setTaxTypeCode] = useState('DP_FO');
  const [qrDataUrl, setQrDataUrl] = useState<string>('');
  const canvasRef = useRef<HTMLCanvasElement>(null);

  const rok = taxData.zdanovaciePeriod ?? new Date().getFullYear().toString();
  const suma = taxData.danNaUhradu ?? 0;

  const selectedTaxType = TAX_TYPES.find((t) => t.code === taxTypeCode) || TAX_TYPES[0];
  const selectedPaymentType = PAYMENT_TYPES.find((p) => p.code === paymentTypeCode) || PAYMENT_TYPES[0];

  const isReady = oud.trim().length >= 8 && suma > 0;

  const payment = isReady
    ? buildPaymentDetails(oud.trim(), suma, taxTypeCode, rok)
    : null;

  // Generate QR pay code (Slovak "pay by square" standard, simplified)
  useEffect(() => {
    if (!payment) return;

    // Slovak QR pay format (uprostenená verzia - bysquare nie je open standard,
    // preto použijeme SEPA credit transfer QR format)
    const sepaQr = [
      'BCD',         // Service Tag
      '002',         // Version
      '1',           // Encoding (UTF-8)
      'SCT',         // Identification
      'SUBASKBX',    // BIC of Štátna pokladnica (approximate)
      '',            // Beneficiary name (optional)
      payment.iban.replace(/\s/g, ''), // IBAN
      `EUR${suma.toFixed(2)}`,         // Amount
      '',            // Purpose code
      payment.variabilnySymbol,        // Remittance info (VS)
      '',            // Unstructured remittance info
      '',            // Beneficiary to originator info
    ].join('\n');

    QRCode.toDataURL(sepaQr, { width: 200, margin: 1 })
      .then((url) => setQrDataUrl(url))
      .catch(() => setQrDataUrl(''));
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
          ) alebo na daňovom úrade.
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

      {/* Tax type and payment type selectors */}
      <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
        <div>
          <label className="block text-sm font-medium text-gray-600 mb-1">
            Druh dane / Účel platby
          </label>
          <select
            value={taxTypeCode}
            onChange={(e) => setTaxTypeCode(e.target.value)}
            className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
          >
            {TAX_TYPES.map((t) => (
              <option key={t.code} value={t.code}>
                {t.name}
              </option>
            ))}
          </select>
          <p className="text-xs text-gray-400 mt-1">
            Číslo účtu (prefix): {selectedTaxType.prefix} / Kód dane: {selectedTaxType.vsPrefix}
          </p>
        </div>

        <div>
          <label className="block text-sm font-medium text-gray-600 mb-1">Typ úhrady</label>
          <select
            value={paymentTypeCode}
            onChange={(e) => setPaymentTypeCode(e.target.value)}
            className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
          >
            {PAYMENT_TYPES.map((p) => (
              <option key={p.code} value={p.code}>
                {p.name}
              </option>
            ))}
          </select>
          <p className="text-xs text-gray-400 mt-1">
            Typ úhrady kód: {selectedPaymentType.code}
          </p>
        </div>
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
              note={`Druh dane: ${selectedTaxType.vsPrefix} + Rok: ${rok}`}
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

          {qrDataUrl && (
            <div className="mt-6 flex flex-col items-center gap-2">
              <p className="text-sm text-gray-500">QR kód pre platbu (SEPA formát)</p>
              <img
                src={qrDataUrl}
                alt="QR kód pre platbu"
                className="border border-gray-200 rounded-lg p-2"
                width={200}
                height={200}
              />
              <canvas ref={canvasRef} className="hidden" />
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

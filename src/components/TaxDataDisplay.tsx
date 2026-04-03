import type { TaxData } from '../utils/xmlParser';
import { TAX_TYPES } from '../utils/paymentUtils';

interface TaxDataDisplayProps {
  data: TaxData;
  onChange: (updated: TaxData) => void;
}

function Field({
  label,
  value,
  onChange,
  placeholder,
  type = 'text',
}: {
  label: string;
  value: string;
  onChange?: (v: string) => void;
  placeholder?: string;
  type?: string;
}) {
  return (
    <div className="flex flex-col gap-1">
      <label className="text-sm font-medium text-gray-600">{label}</label>
      {onChange ? (
        <input
          type={type}
          value={value}
          onChange={(e) => onChange(e.target.value)}
          placeholder={placeholder}
          className="border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
        />
      ) : (
        <div className="border border-gray-200 bg-gray-50 rounded-lg px-3 py-2 text-sm text-gray-700">
          {value || <span className="text-gray-400 italic">Nenájdené</span>}
        </div>
      )}
    </div>
  );
}

export function TaxDataDisplay({ data, onChange }: TaxDataDisplayProps) {
  const update = (key: keyof TaxData, value: string | number | undefined) =>
    onChange({ ...data, [key]: value });

  const identityValue = data.dic ?? data.rodneCislo ?? '';

  const parsedChecks = [
    { label: 'Druh dane', value: data.druhDane },
    { label: 'DIČ / Rodné číslo', value: identityValue },
    { label: 'Meno', value: data.meno },
    { label: 'Priezvisko', value: data.priezvisko },
  ];
  const missingChecks = parsedChecks.filter((item) => !item.value);
  const hasParsedIdentity = Boolean(identityValue) && Boolean(data.meno && data.priezvisko);

  return (
    <div className="bg-white rounded-xl shadow-sm border border-gray-200 p-6">
      <h2 className="text-lg font-semibold text-gray-800 mb-4 flex items-center gap-2">
        <span className="text-blue-600">📋</span> Údaje z daňového priznania
      </h2>

      <div
        className={`mb-4 rounded-lg border px-3 py-2 text-sm ${
          hasParsedIdentity
            ? 'border-green-200 bg-green-50 text-green-800'
            : 'border-amber-200 bg-amber-50 text-amber-800'
        }`}
      >
        {hasParsedIdentity
          ? 'Kontrolné údaje formulára boli načítané. Pole Druh dane, DIČ, Rodné číslo, Meno a Priezvisko sú iba na kontrolu.'
          : 'Niektoré kontrolné údaje formulára sa nepodarilo načítať. Overte, či ste nahrali správny DPFO formulár.'}
      </div>

      <div className="space-y-4">
        <section className="border border-blue-200 bg-blue-50 rounded-lg p-4">
          <h3 className="text-sm font-semibold text-blue-900 mb-3">
            Povinné údaje pre pokračovanie
          </h3>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <Field
              label="Zdaňovacie obdobie (rok)"
              value={data.zdanovaciePeriod ?? ''}
              onChange={(v) => update('zdanovaciePeriod', v)}
              placeholder="napr. 2023"
            />

            <div>
              <label className="text-sm font-medium text-gray-600">Daň na úhradu (€)</label>
              <input
                type="number"
                step="0.01"
                min="0"
                value={data.danNaUhradu ?? ''}
                onChange={(e) =>
                  update('danNaUhradu', e.target.value ? parseFloat(e.target.value) : undefined)
                }
                placeholder="napr. 250.00"
                className="mt-1 w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
            </div>
          </div>
        </section>

        <section className="border border-gray-200 rounded-lg p-4">
          <h3 className="text-sm font-semibold text-gray-800 mb-3">
            Kontrolné údaje formulára (iba na kontrolu)
          </h3>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <Field
              label="Druh dane / Účel platby"
              value={data.druhDane ?? TAX_TYPES[0].name}
            />

            <Field
              label="DIČ / Rodné číslo"
              value={identityValue}
            />

            <Field
              label="Meno"
              value={data.meno ?? ''}
            />

            <Field
              label="Priezvisko"
              value={data.priezvisko ?? ''}
            />
          </div>
        </section>
      </div>

      {!!missingChecks.length && (
        <p className="mt-3 text-xs text-amber-700">
          Chýbajúce kontrolné polia: {missingChecks.map((item) => item.label).join(', ')}.
        </p>
      )}
    </div>
  );
}

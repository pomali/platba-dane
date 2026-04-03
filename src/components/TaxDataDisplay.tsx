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

  return (
    <div className="bg-white rounded-xl shadow-sm border border-gray-200 p-6">
      <h2 className="text-lg font-semibold text-gray-800 mb-4 flex items-center gap-2">
        <span className="text-blue-600">📋</span> Údaje z daňového priznania
      </h2>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
        <div>
          <label className="text-sm font-medium text-gray-600">Druh dane / Účel platby</label>
          <select
            className="mt-1 w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
            value={
              data.druhDane
                ? (TAX_TYPES.find((t) => t.name.startsWith(data.druhDane?.split('(')[0].trim() ?? '') || t.name === data.druhDane)?.code ?? 'DP_FO')
                : 'DP_FO'
            }
            onChange={(e) => {
              const chosen = TAX_TYPES.find((t) => t.code === e.target.value);
              update('druhDane', chosen?.name ?? e.target.value);
            }}
          >
            {TAX_TYPES.map((t) => (
              <option key={t.code} value={t.code}>
                {t.name}
              </option>
            ))}
          </select>
        </div>

        <Field
          label="Zdaňovacie obdobie (rok)"
          value={data.zdanovaciePeriod ?? ''}
          onChange={(v) => update('zdanovaciePeriod', v)}
          placeholder="napr. 2023"
        />

        <Field
          label="DIČ"
          value={data.dic ?? ''}
          onChange={(v) => update('dic', v)}
          placeholder="Daňové identifikačné číslo"
        />

        <Field
          label="Rodné číslo"
          value={data.rodneCislo ?? ''}
          onChange={(v) => update('rodneCislo', v)}
          placeholder="napr. 801101/2345"
        />

        <Field
          label="Meno"
          value={data.meno ?? ''}
          onChange={(v) => update('meno', v)}
          placeholder="Krstné meno"
        />

        <Field
          label="Priezvisko"
          value={data.priezvisko ?? ''}
          onChange={(v) => update('priezvisko', v)}
          placeholder="Priezvisko"
        />

        <div className="md:col-span-2">
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
    </div>
  );
}

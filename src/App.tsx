import { useState } from 'react';
import { FileUpload } from './components/FileUpload';
import { TaxDataDisplay } from './components/TaxDataDisplay';
import { PaymentInstructions } from './components/PaymentInstructions';
import { parseXml } from './utils/xmlParser';
import { parsePdf } from './utils/pdfParser';
import type { TaxData } from './utils/xmlParser';

type Step = 'upload' | 'review' | 'payment';

export default function App() {
  const [step, setStep] = useState<Step>('upload');
  const [taxData, setTaxData] = useState<TaxData | null>(null);
  const [fileName, setFileName] = useState<string>('');
  const [error, setError] = useState<string>('');
  const [isLoading, setIsLoading] = useState(false);

  const handleFileSelect = async (file: File) => {
    setIsLoading(true);
    setError('');

    try {
      const ext = file.name.toLowerCase().split('.').pop();
      let data: TaxData;

      if (ext === 'xml') {
        const text = await file.text();
        data = parseXml(text);
      } else if (ext === 'pdf') {
        const buffer = await file.arrayBuffer();
        data = await parsePdf(buffer);
      } else {
        throw new Error('Nepodporovaný formát súboru. Prosím použite XML alebo PDF.');
      }

      setTaxData(data);
      setFileName(file.name);
      setStep('review');
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Chyba pri spracovaní súboru.');
    } finally {
      setIsLoading(false);
    }
  };

  const handleManualEntry = () => {
    setTaxData({
      druhDane: 'Daň z príjmov fyzickej osoby (Typ A / Typ B)',
    });
    setFileName('Manuálne zadanie');
    setStep('review');
  };

  const steps = ['upload', 'review', 'payment'] as const;
  const stepLabels = ['Nahratie súboru', 'Kontrola údajov', 'Platobné inštrukcie'];

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <header className="bg-white border-b border-gray-200 shadow-sm">
        <div className="max-w-3xl mx-auto px-4 py-4 flex items-center gap-3">
          <span className="text-2xl">🇸🇰</span>
          <div>
            <h1 className="text-xl font-bold text-gray-900">Platba dane</h1>
            <p className="text-xs text-gray-500">
              Pomoc s platbou slovenských daní
            </p>
          </div>
        </div>
      </header>

      <main className="max-w-3xl mx-auto px-4 py-8">
        {/* Step indicator */}
        <nav className="flex items-center justify-center mb-8">
          {steps.map((s, i) => (
            <div key={s} className="flex items-center">
              <div
                className={`flex items-center gap-2 ${
                  step === s
                    ? 'text-blue-600 font-semibold'
                    : steps.indexOf(step) > i
                    ? 'text-green-600'
                    : 'text-gray-400'
                }`}
              >
                <span
                  className={`w-7 h-7 rounded-full flex items-center justify-center text-sm font-bold border-2 ${
                    step === s
                      ? 'border-blue-600 bg-blue-600 text-white'
                      : steps.indexOf(step) > i
                      ? 'border-green-500 bg-green-500 text-white'
                      : 'border-gray-300 bg-white text-gray-400'
                  }`}
                >
                  {steps.indexOf(step) > i ? '✓' : i + 1}
                </span>
                <span className="hidden sm:inline text-sm">{stepLabels[i]}</span>
              </div>
              {i < steps.length - 1 && (
                <div
                  className={`w-12 sm:w-20 h-0.5 mx-2 ${
                    steps.indexOf(step) > i ? 'bg-green-400' : 'bg-gray-200'
                  }`}
                />
              )}
            </div>
          ))}
        </nav>

        {/* Step 1: Upload */}
        {step === 'upload' && (
          <div className="space-y-6">
            <div className="text-center">
              <h2 className="text-2xl font-bold text-gray-800 mb-2">
                Nahrajte daňové priznanie
              </h2>
              <p className="text-gray-500 text-sm">
                Nahrajte vyplnené daňové priznanie vo formáte <strong>XML</strong> alebo{' '}
                <strong>PDF</strong>. Súbor sa spracuje iba vo vašom prehliadači – nikam sa nenahrá.
              </p>
            </div>

            <FileUpload onFileSelect={handleFileSelect} isLoading={isLoading} />

            {error && (
              <div className="bg-red-50 border border-red-200 rounded-lg p-4 text-red-700 text-sm">
                <strong>Chyba:</strong> {error}
              </div>
            )}

            <div className="text-center">
              <p className="text-sm text-gray-500 mb-2">alebo</p>
              <button
                onClick={handleManualEntry}
                className="text-blue-600 hover:text-blue-800 text-sm underline"
              >
                Zadajte údaje manuálne
              </button>
            </div>

            <div className="bg-blue-50 border border-blue-200 rounded-lg p-4 text-sm text-blue-700">
              <strong>Ako to funguje:</strong>
              <ol className="list-decimal list-inside mt-2 space-y-1">
                <li>Nahrajte XML alebo PDF súbor s daňovým priznaním</li>
                <li>Aplikácia automaticky vyplní dostupné údaje</li>
                <li>Doplňte OÚD (Osobný účet daňovníka)</li>
                <li>Skopírujte platobné inštrukcie alebo naskenujte QR kód</li>
              </ol>
            </div>
          </div>
        )}

        {/* Step 2: Review */}
        {step === 'review' && taxData && (
          <div className="space-y-6">
            <div className="flex items-center justify-between">
              <div>
                <h2 className="text-xl font-bold text-gray-800">
                  Skontrolujte údaje
                </h2>
                {fileName && (
                  <p className="text-sm text-gray-500 mt-0.5">
                    Súbor: <span className="font-medium">{fileName}</span>
                  </p>
                )}
              </div>
              <button
                onClick={() => setStep('upload')}
                className="text-sm text-gray-500 hover:text-gray-700 flex items-center gap-1"
              >
                ← Späť
              </button>
            </div>

            <TaxDataDisplay data={taxData} onChange={setTaxData} />

            <div className="flex justify-end">
              <button
                onClick={() => setStep('payment')}
                disabled={!taxData.danNaUhradu || taxData.danNaUhradu <= 0}
                className="bg-blue-600 hover:bg-blue-700 disabled:bg-gray-300 disabled:cursor-not-allowed text-white font-semibold px-6 py-2.5 rounded-lg transition-colors"
              >
                Pokračovať →
              </button>
            </div>

            {(!taxData.danNaUhradu || taxData.danNaUhradu <= 0) && (
              <p className="text-sm text-amber-600 text-right">
                ⚠ Zadajte sumu dane na úhradu pre pokračovanie
              </p>
            )}
          </div>
        )}

        {/* Step 3: Payment instructions */}
        {step === 'payment' && taxData && (
          <div className="space-y-6">
            <div className="flex items-center justify-between">
              <h2 className="text-xl font-bold text-gray-800">Platobné inštrukcie</h2>
              <button
                onClick={() => setStep('review')}
                className="text-sm text-gray-500 hover:text-gray-700 flex items-center gap-1"
              >
                ← Späť
              </button>
            </div>

            <PaymentInstructions taxData={taxData} />
          </div>
        )}
      </main>

      <footer className="max-w-3xl mx-auto px-4 py-6 text-center text-xs text-gray-400 border-t border-gray-200 mt-8">
        Aplikácia spracováva údaje iba lokálne vo vašom prehliadači. Žiadne údaje sa nezdieľajú
        ani nenahrávajú na server.{' '}
        <a
          href="https://www.financnasprava.sk/sk/infoservis/platenie-dani"
          target="_blank"
          rel="noopener noreferrer"
          className="underline hover:text-gray-600"
        >
          Finančná správa SR – Platenie daní
        </a>
      </footer>
    </div>
  );
}

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
  const [manualYear, setManualYear] = useState('');
  const [manualAmount, setManualAmount] = useState('');

  const parsedManualAmount = Number.parseFloat(manualAmount.replace(',', '.'));
  const canContinueManual =
    /^\d{4}$/.test(manualYear.trim()) &&
    Number.isFinite(parsedManualAmount) &&
    parsedManualAmount > 0;

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
        throw new Error('Nepodporovaný formát. Nahrajte súbor XML alebo PDF.');
      }

      setTaxData(data);
      setFileName(file.name);
      setStep('review');
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Súbor sa nepodarilo spracovať. Skúste to znova.');
    } finally {
      setIsLoading(false);
    }
  };

  const handleManualEntry = () => {
    if (!canContinueManual) {
      setError('Pre manuálne zadanie vyplňte platný rok a sumu dane na úhradu.');
      return;
    }

    setError('');
    setTaxData({
      druhDane: 'Daň z príjmov fyzickej osoby (Typ A / Typ B)',
      zdanovaciePeriod: manualYear.trim(),
      danNaUhradu: parsedManualAmount,
    });
    setFileName('Manuálne zadanie (povinné údaje)');
    setStep('review');
  };

  const steps = ['upload', 'review', 'payment'] as const;
  const stepLabels = ['Nahratie alebo zadanie', 'Kontrola údajov', 'Platobné údaje'];
  const canContinueToPayment =
    Boolean(taxData?.zdanovaciePeriod?.trim()) &&
    Boolean(taxData?.danNaUhradu && taxData.danNaUhradu > 0);

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <header className="bg-white border-b border-gray-200 shadow-sm">
        <div className="max-w-3xl mx-auto px-4 py-4 flex items-center gap-3">
          <span className="text-2xl">🇸🇰</span>
          <div>
            <h1 className="text-xl font-bold text-gray-900">Platba dane</h1>
            <p className="text-xs text-gray-500">
              Rýchle vytvorenie platobných údajov k DPFO
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
                Nahrajte priznanie alebo zadajte údaje ručne
              </h2>
              <p className="text-gray-500 text-sm">
                Podporované súbory: <strong>XML</strong> a <strong>PDF</strong>. Ak súbor
                nemáte, môžete vyplniť iba povinné údaje.
              </p>
            </div>

            <div className="relative grid grid-cols-1 md:grid-cols-2 gap-20">
              <div className="bg-white rounded-xl border border-gray-200 p-4">
                <h3 className="text-sm font-semibold text-gray-800 mb-2">A&#41; Nahrať priznanie</h3>
                <p className="text-xs text-gray-500 mb-3">
                  Súbor sa spracuje iba lokálne vo vašom prehliadači.
                </p>
                <FileUpload onFileSelect={handleFileSelect} isLoading={isLoading} />

                <div className="mt-4 bg-blue-50 border border-blue-200 rounded-lg p-4 text-sm text-blue-700">
                  <strong>Postup:</strong>
                  <ol className="list-decimal list-inside mt-2 space-y-1">
                    <li>Nahrajte XML/PDF súbor s priznaním</li>
                    <li>Skontrolujte automaticky načítané údaje</li>
                    <li>Doplňte OÚD (osobný účet daňovníka)</li>
                    <li>Skopírujte údaje alebo použite QR kód</li>
                  </ol>
                </div>
              </div>

              <div className="flex items-center justify-center md:hidden -my-2">
                <div className="flex items-center gap-3 w-full max-w-xs">
                  <div className="h-px flex-1 bg-gray-200" />
                  <span className="text-xs font-semibold uppercase tracking-wide text-gray-400">alebo</span>
                  <div className="h-px flex-1 bg-gray-200" />
                </div>
              </div>

              <div className="hidden md:flex absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 pointer-events-none">
                <div className="px-3 py-1 rounded-full border border-gray-200 bg-white text-xs font-semibold uppercase tracking-wide text-gray-400 shadow-sm">
                  alebo
                </div>
              </div>

              <div className="bg-white rounded-xl border border-gray-200 p-4">
                <h3 className="text-sm font-semibold text-gray-800 mb-2">
                  B&#41; Zadať údaje ručne
                </h3>
                <p className="text-xs text-gray-500 mb-3">
                  Vhodné, ak ešte nemáte XML/PDF. Stačí rok a suma dane.
                </p>

                <div className="space-y-3">
                  <div>
                    <label className="block text-sm font-medium text-gray-600 mb-1">
                      Rok zdaňovacieho obdobia
                    </label>
                    <input
                      type="text"
                      inputMode="numeric"
                      maxLength={4}
                      value={manualYear}
                      onChange={(e) => setManualYear(e.target.value.replace(/\D/g, ''))}
                      placeholder="napr. 2025"
                      className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
                    />
                  </div>

                  <div>
                    <label className="block text-sm font-medium text-gray-600 mb-1">
                      Suma dane na úhradu (EUR)
                    </label>
                    <input
                      type="number"
                      step="0.01"
                      min="0"
                      value={manualAmount}
                      onChange={(e) => setManualAmount(e.target.value)}
                      placeholder="napr. 250.00"
                      className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
                    />
                  </div>

                  <button
                    onClick={handleManualEntry}
                    disabled={!canContinueManual}
                    className="w-full bg-blue-600 hover:bg-blue-700 disabled:bg-gray-300 disabled:cursor-not-allowed text-white font-semibold px-4 py-2.5 rounded-lg transition-colors"
                  >
                    Pokračovať s ručným zadaním
                  </button>
                </div>
              </div>
            </div>

            <div className="bg-gray-100 border border-gray-200 rounded-lg p-4 text-xs text-gray-600">
              <strong>Tip:</strong> Ak aplikácia niektoré údaje nenačíta, môžete ich v ďalšom kroku
              upraviť ručne pred vytvorením platobných údajov.
            </div>

            <div className="bg-amber-50 border border-amber-200 rounded-lg p-4 text-xs text-amber-700">
              <strong>Upozornenie:</strong> Táto aplikácia slúži len ako pomôcka. Autor nenesie
              žiadnu právnu zodpovednosť za správnosť zobrazených ani vypočítaných údajov. Pred
              odoslaním akejkoľvek platby si všetky údaje overte voči vášmu daňovému priznaniu a
              pokynov príslušného daňového úradu.
            </div>

            {error && (
              <div className="bg-red-50 border border-red-200 rounded-lg p-4 text-red-700 text-sm">
                <strong>Nepodarilo sa pokračovať:</strong> {error}
              </div>
            )}
          </div>
        )}

        {/* Step 2: Review */}
        {step === 'review' && taxData && (
          <div className="space-y-6">
            <div className="flex items-center justify-between">
              <div>
                <h2 className="text-xl font-bold text-gray-800">
                  Skontrolujte a prípadne upravte údaje
                </h2>
                {fileName && (
                  <p className="text-sm text-gray-500 mt-0.5">
                    Zdroj údajov: <span className="font-medium">{fileName}</span>
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
                disabled={!canContinueToPayment}
                className="bg-blue-600 hover:bg-blue-700 disabled:bg-gray-300 disabled:cursor-not-allowed text-white font-semibold px-6 py-2.5 rounded-lg transition-colors"
              >
                Vytvoriť platobné údaje →
              </button>
            </div>

            {!canContinueToPayment && (
              <p className="text-sm text-amber-600 text-right">
                ⚠ Pre pokračovanie zadajte rok a sumu dane na úhradu.
              </p>
            )}
          </div>
        )}

        {/* Step 3: Payment instructions */}
        {step === 'payment' && taxData && (
          <div className="space-y-6">
            <div className="flex items-center justify-between">
              <h2 className="text-xl font-bold text-gray-800">Platobné údaje</h2>
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

      <footer className="max-w-3xl mx-auto px-4 py-6 text-center text-xs text-gray-500 border-t border-gray-200 mt-8 space-y-2">
        <p>
          Údaje sa spracúvajú iba lokálne vo vašom prehliadači. Aplikácia ich neodosiela na server.{' '}
          <a
            href="https://www.financnasprava.sk/sk/infoservis/platenie-dani"
            target="_blank"
            rel="noopener noreferrer"
            className="underline hover:text-gray-700"
          >
            Oficiálne informácie Finančnej správy SR
          </a>
        </p>
        <p className="text-gray-400">
          Táto aplikácia je poskytovaná „tak ako je", bez akejkoľvek záruky. Autor nenesie žiadnu
          právnu zodpovednosť za správnosť vypočítaných ani zobrazených údajov. Všetky platobné
          údaje si pred odoslaním platby overte voči oficiálnym podkladom a pokynov daňového úradu.
        </p>
      </footer>
    </div>
  );
}

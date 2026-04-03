import { readFile } from "node:fs/promises";
import path from "node:path";
import process from "node:process";
import * as pdfjsLib from "pdfjs-dist/legacy/build/pdf.mjs";

function toPositionedTextItems(textItems) {
  const positionedItems = [];

  for (const item of textItems) {
    if (!("str" in item) || !("transform" in item)) continue;
    const text = String(item.str ?? "").trim();
    if (!text) continue;

    const transform = Array.isArray(item.transform) ? item.transform : null;
    if (!transform || transform.length < 6) continue;

    const x = Number(transform[4]);
    const y = Number(transform[5]);
    if (!Number.isFinite(x) || !Number.isFinite(y)) continue;

    positionedItems.push({ text, x, y });
  }

  return positionedItems;
}

function findTopLeftMarker(positionedItems) {

  if (positionedItems.length === 0) return null;

  const maxY = positionedItems.reduce(
    (highest, item) => Math.max(highest, item.y),
    Number.NEGATIVE_INFINITY,
  );
  const markerCandidates = positionedItems.filter((item) =>
    /^DPFO[AB]v25_1$/.test(item.text),
  );

  if (markerCandidates.length === 0) return null;

  // Prefer the marker closest to top-left if multiple exist.
  markerCandidates.sort((a, b) => {
    if (b.y !== a.y) return b.y - a.y;
    return a.x - b.x;
  });

  const selected = markerCandidates[0];
  const isTopLeft = selected.y >= maxY - 80 && selected.x <= 140;

  return {
    text: selected.text,
    x: selected.x,
    y: selected.y,
    isTopLeft,
  };
}

function findLabel(positionedItems, exactText) {
  return positionedItems.find((item) => item.text === exactText) ?? null;
}

function assertLabelAt(positionedItems, exactText, expectedX, expectedY, tolerance) {
  const label = findLabel(positionedItems, exactText);
  if (!label) {
    throw new Error(`Required label not found: ${exactText}`);
  }

  const dx = Math.abs(label.x - expectedX);
  const dy = Math.abs(label.y - expectedY);
  if (dx > tolerance || dy > tolerance) {
    throw new Error(
      `Label ${exactText} is not at expected position. Expected (${expectedX}, ${expectedY}), got (${label.x.toFixed(
        3,
      )}, ${label.y.toFixed(3)}).`,
    );
  }

  return label;
}

async function getWidgetFields(page) {
  const annotations = await page.getAnnotations();
  const widgets = [];

  for (const annotation of annotations) {
    if (annotation.subtype !== "Widget") continue;
    if (!Array.isArray(annotation.rect) || annotation.rect.length < 4) continue;

    const [x1, y1, x2, y2] = annotation.rect;
    const centerX = (Number(x1) + Number(x2)) / 2;
    const centerY = (Number(y1) + Number(y2)) / 2;
    if (!Number.isFinite(centerX) || !Number.isFinite(centerY)) continue;

    widgets.push({
      fieldName: String(annotation.fieldName ?? "").trim(),
      value: String(annotation.fieldValue ?? "").trim(),
      rect: [Number(x1), Number(y1), Number(x2), Number(y2)],
      centerX,
      centerY,
    });
  }

  return widgets;
}

function findNearestWidgetRightOfLabel(widgets, label, maxDx, maxDy) {
  const candidates = widgets
    .filter((widget) => {
      const dx = widget.centerX - label.x;
      const dy = Math.abs(widget.centerY - label.y);
      return dx >= 5 && dx <= maxDx && dy <= maxDy;
    })
    .sort((a, b) => {
      const scoreA = (a.centerX - label.x) + Math.abs(a.centerY - label.y) * 2;
      const scoreB = (b.centerX - label.x) + Math.abs(b.centerY - label.y) * 2;
      return scoreA - scoreB;
    });

  return candidates[0] ?? null;
}

function findNearestLabelLeftOfWidget(positionedItems, widget, maxDx, maxDy) {
  const candidates = positionedItems
    .filter((item) => {
      const dx = widget.centerX - item.x;
      const dy = Math.abs(widget.centerY - item.y);
      return dx >= 5 && dx <= maxDx && dy <= maxDy;
    })
    .sort((a, b) => {
      const scoreA = (widget.centerX - a.x) + Math.abs(widget.centerY - a.y) * 2;
      const scoreB = (widget.centerX - b.x) + Math.abs(widget.centerY - b.y) * 2;
      return scoreA - scoreB;
    });

  return candidates[0] ?? null;
}

function assertWidgetAndNeighborLabel({
  field,
  expectedFieldName,
  pageTextItems,
  expectedLabelText,
  context,
}) {
  if (field.fieldName !== expectedFieldName) {
    throw new Error(
      `${context}: expected field ${expectedFieldName}, got ${field.fieldName}.`,
    );
  }

  const exactNearbyLabel = pageTextItems.find((item) => {
    const dx = field.centerX - item.x;
    const dy = Math.abs(field.centerY - item.y);
    return item.text === expectedLabelText && dx >= 5 && dx <= 420 && dy <= 45;
  });

  if (exactNearbyLabel) {
    return exactNearbyLabel;
  }

  const nearestLabel = findNearestLabelLeftOfWidget(pageTextItems, field, 420, 45);
  if (!nearestLabel) {
    throw new Error(`${context}: unable to resolve neighboring left label.`);
  }

  if (nearestLabel.text !== expectedLabelText) {
    throw new Error(
      `${context}: expected neighboring label ${expectedLabelText}, got ${nearestLabel.text}.`,
    );
  }

  return nearestLabel;
}

function combineAmount(mainValue, decimalsValue) {
  const main = String(mainValue ?? "").trim();
  const decimals = String(decimalsValue ?? "").trim();
  if (!main && !decimals) return "";
  if (!decimals) return main;
  return `${main},${decimals.padStart(2, "0")}`;
}

function normalizeTaxPeriod(rawYearValue) {
  const raw = String(rawYearValue ?? "").trim();
  if (!raw) return "";

  if (/^\d{4}$/.test(raw)) return raw;

  if (/^\d{2}$/.test(raw)) {
    return `20${raw}`;
  }

  return raw;
}

function extractPaymentParamsFromPlacement({
  detectedType,
  page1TextItems,
  page1Widgets,
  paymentTextItems,
  paymentLabel,
  paymentWidgets,
}) {
  const headerLabel = assertLabelAt(
    page1TextItems,
    "DAŇOVÉ PRIZNANIE",
    208.1478,
    799.7766,
    2,
  );
  void headerLabel;

  const titleLabel = assertLabelAt(
    page1TextItems,
    "K DANI Z PRÍJMOV FYZICKEJ OSOBY",
    173.1949,
    783.2891,
    2,
  );
  void titleLabel;

  const yearLabelY = detectedType === "A" ? 685.0956 : 690.8556;
  const yearLabel = assertLabelAt(page1TextItems, "Za rok", 459.4882, yearLabelY, 2.5);
  const yearField = findNearestWidgetRightOfLabel(page1Widgets, yearLabel, 140, 30);
  if (!yearField) {
    throw new Error("Unable to find field for Zdaňovacie obdobie using label placement.");
  }

  const surnameLabelText = detectedType === "A" ? "03 - Priezvisko" : "04 - Priezvisko";
  const nameLabelText = detectedType === "A" ? "04 - Meno" : "05 - Meno";

  const surnameLabel = findLabel(page1TextItems, surnameLabelText);
  if (!surnameLabel) {
    throw new Error(`Unable to find surname label: ${surnameLabelText}`);
  }

  const nameLabel = findLabel(page1TextItems, nameLabelText);
  if (!nameLabel) {
    throw new Error(`Unable to find name label: ${nameLabelText}`);
  }

  const surnameField = findNearestWidgetRightOfLabel(page1Widgets, surnameLabel, 300, 35);
  if (!surnameField) {
    throw new Error("Unable to find field for Priezvisko using label placement.");
  }

  const nameField = findNearestWidgetRightOfLabel(page1Widgets, nameLabel, 300, 35);
  if (!nameField) {
    throw new Error("Unable to find field for Meno using label placement.");
  }

  const idLabel = findLabel(
    page1TextItems,
    "01 - DIČ (ak nie je pridelené, uvádza sa rodné číslo)",
  );
  if (!idLabel) {
    throw new Error("Unable to find DIČ/Rodné číslo label on page 1.");
  }

  const idField = findNearestWidgetRightOfLabel(page1Widgets, idLabel, 220, 40);
  if (!idField) {
    throw new Error("Unable to find field for Rodné číslo using label placement.");
  }

  if (!paymentLabel) {
    throw new Error("Unable to find Daň na úhradu label using placement rules.");
  }

  const paymentField = findNearestWidgetRightOfLabel(paymentWidgets, paymentLabel, 600, 35);
  if (!paymentField) {
    throw new Error("Unable to find Daň na úhradu field using label placement.");
  }

  const expectedYearFieldName = "rok";
  const expectedSurnameFieldName = detectedType === "A" ? "03" : "04";
  const expectedNameFieldName = detectedType === "A" ? "04" : "05";
  const expectedIdFieldName = detectedType === "A" ? "DIC" : "dic";
  const expectedPaymentFieldName = detectedType === "A" ? "71" : "135";

  const yearNeighbor = assertWidgetAndNeighborLabel({
    field: yearField,
    expectedFieldName: expectedYearFieldName,
    pageTextItems: page1TextItems,
    expectedLabelText: "Za rok",
    context: "Zdaňovacie obdobie",
  });

  const surnameNeighbor = assertWidgetAndNeighborLabel({
    field: surnameField,
    expectedFieldName: expectedSurnameFieldName,
    pageTextItems: page1TextItems,
    expectedLabelText: surnameLabelText,
    context: "Priezvisko",
  });

  const nameNeighbor = assertWidgetAndNeighborLabel({
    field: nameField,
    expectedFieldName: expectedNameFieldName,
    pageTextItems: page1TextItems,
    expectedLabelText: nameLabelText,
    context: "Meno",
  });

  const idNeighbor = assertWidgetAndNeighborLabel({
    field: idField,
    expectedFieldName: expectedIdFieldName,
    pageTextItems: page1TextItems,
    expectedLabelText: "01 - DIČ (ak nie je pridelené, uvádza sa rodné číslo)",
    context: "Rodné číslo",
  });

  const paymentExpectedLabel = detectedType === "A" ? "D ň na úhradu" : "Daň na úhradu";
  const paymentNeighbor = assertWidgetAndNeighborLabel({
    field: paymentField,
    expectedFieldName: expectedPaymentFieldName,
    pageTextItems: paymentTextItems,
    expectedLabelText: paymentExpectedLabel,
    context: "Daň na úhradu",
  });

  const decimalsField = paymentWidgets.find(
    (widget) => widget.fieldName === `${expectedPaymentFieldName}d`,
  );

  return {
    zdanovacieObdobie: normalizeTaxPeriod(yearField.value) || null,
    danNaUhradu: combineAmount(paymentField.value, decimalsField?.value ?? "") || null,
    meno: nameField.value || null,
    rodneCislo: idField.value || null,
    priezvisko: surnameField.value || null,
    debug: {
      yearField: yearField.fieldName,
      paymentField: paymentField.fieldName,
      nameField: nameField.fieldName,
      surnameField: surnameField.fieldName,
      idField: idField.fieldName,
      yearLabel: yearNeighbor.text,
      paymentLabel: paymentNeighbor.text,
      nameLabel: nameNeighbor.text,
      surnameLabel: surnameNeighbor.text,
      idLabel: idNeighbor.text,
    },
  };
}

function assertIsSupportedTaxForm(pageText, topLeftMarkerData) {
  const upperPageText = pageText.replace(/\s+/g, " ").trim().toUpperCase();

  if (!upperPageText.includes("DAŇOVÉ PRIZNANIE")) {
    throw new Error(
      "Not a supported Slovak DPFO tax form. Missing: DAŇOVÉ PRIZNANIE",
    );
  }

  if (!upperPageText.includes("K DANI Z PRÍJMOV FYZICKEJ OSOBY")) {
    throw new Error(
      "Not a supported Slovak DPFO tax form. Missing: K DANI Z PRÍJMOV FYZICKEJ OSOBY",
    );
  }

  const hasTypePhraseA = upperPageText.includes(
    "PRE DAŇOVNÍKA, KTORÝ MÁ PRÍJMY LEN ZO ZÁVISLEJ ČINNOSTI",
  );
  const hasTypePhraseB = upperPageText.includes(
    "PRE DAŇOVNÍKA, KTORÝ MÁ PRÍJMY PODĽA § 5 AŽ 8 ZÁKONA Č. 595/2003 Z. Z.",
  );

  if (hasTypePhraseA && hasTypePhraseB) {
    throw new Error(
      "Ambiguous form type. Both DPFO A and DPFO B type-specific phrases are present.",
    );
  }

  let detectedType = null;
  let expectedMarker = null;

  if (hasTypePhraseA) {
    detectedType = "A";
    expectedMarker = "DPFOAv25_1";
  } else if (hasTypePhraseB) {
    detectedType = "B";
    expectedMarker = "DPFOBv25_1";
  } else {
    throw new Error(
      "Not a supported DPFO form type. Missing type-specific phrase for DPFO A or DPFO B.",
    );
  }

  const hasMarkerA = pageText.includes("DPFOAv25_1");
  const hasMarkerB = pageText.includes("DPFOBv25_1");

  if (hasMarkerA && hasMarkerB) {
    throw new Error(
      "Ambiguous marker values. Both DPFOAv25_1 and DPFOBv25_1 are present.",
    );
  }

  if (detectedType === "A" && !hasMarkerA) {
    throw new Error("DPFO A phrase found, but marker DPFOAv25_1 is missing.");
  }

  if (detectedType === "B" && !hasMarkerB) {
    throw new Error("DPFO B phrase found, but marker DPFOBv25_1 is missing.");
  }

  if (!topLeftMarkerData) {
    throw new Error(
      `Unable to detect top-left marker on page 1. Expected ${expectedMarker}.`,
    );
  }

  if (topLeftMarkerData.text !== expectedMarker) {
    throw new Error(
      `Wrong top-left marker on page 1. Expected ${expectedMarker}, got ${topLeftMarkerData.text}.`,
    );
  }

  if (!topLeftMarkerData.isTopLeft) {
    throw new Error(
      `Marker ${expectedMarker} found, but not in strict top-left area (x=${topLeftMarkerData.x}, y=${topLeftMarkerData.y}).`,
    );
  }

  return detectedType;
}

async function extractPdfText(pdf) {
  const pages = [];

  for (let pageNumber = 1; pageNumber <= pdf.numPages; pageNumber += 1) {
    const page = await pdf.getPage(pageNumber);
    const textContent = await page.getTextContent();
    const pageText = textContent.items
      .map((item) => ("str" in item ? item.str : ""))
      .join(" ")
      .replace(/\s+/g, " ")
      .trim();

    pages.push(`--- Page ${pageNumber} ---\n${pageText}`);
  }

  return pages.join("\n\n");
}

function printUsage() {
  console.log(
    "Usage: node pdf-console-playground.mjs /absolute/or/relative/path/to/file.pdf",
  );
}

async function main() {
  const inputPath = process.argv[2];

  if (!inputPath) {
    printUsage();
    process.exitCode = 1;
    return;
  }

  const resolvedPath = path.resolve(process.cwd(), inputPath);

  try {
    const bytes = await readFile(resolvedPath);
    const loadingTask = pdfjsLib.getDocument({
      data: new Uint8Array(bytes),
      disableWorker: true,
    });
    const pdf = await loadingTask.promise;
    const page1 = await pdf.getPage(1);
    const textContent1 = await page1.getTextContent();
    const page1TextItems = toPositionedTextItems(textContent1.items);
    const page1Text = textContent1.items
      .map((item) => ("str" in item ? item.str : ""))
      .join(" ")
      .replace(/\s+/g, " ")
      .trim();

    const topLeftMarker = findTopLeftMarker(page1TextItems);
    const detectedType = assertIsSupportedTaxForm(page1Text, topLeftMarker);

    const page1Widgets = await getWidgetFields(page1);
    const paymentPageNumber = detectedType === "A" ? 4 : 11;
    const paymentPage = await pdf.getPage(paymentPageNumber);
    const paymentTextContent = await paymentPage.getTextContent();
    const paymentTextItems = toPositionedTextItems(paymentTextContent.items);
    const paymentWidgets = await getWidgetFields(paymentPage);

    const paymentLabel =
      detectedType === "A"
        ? paymentTextItems
            .filter(
              (item) =>
                item.x < 140 &&
                item.y > 170 &&
                item.y < 260 &&
                item.text.toLowerCase().includes("na úhradu"),
            )
            .sort((a, b) => b.y - a.y)[0] ?? null
        : findLabel(paymentTextItems, "Daň na úhradu");

    const paymentParams = extractPaymentParamsFromPlacement({
      detectedType,
      page1TextItems,
      page1Widgets,
      paymentTextItems,
      paymentLabel,
      paymentWidgets,
    });

    console.log(
      JSON.stringify(
        {
          file: resolvedPath,
          formType: `DPFO ${detectedType}`,
          topLeftMarker: topLeftMarker?.text ?? null,
          validated: true,
          paymentParams,
        },
        null,
        2,
      ),
    );

    // const extractedText = await extractPdfText(pdf);
    // console.log("\nExtracted text");
    // console.log(extractedText || "No text content found.");

    await loadingTask.destroy();
  } catch (error) {
    const message = error instanceof Error ? error.message : String(error);
    console.error(`Failed to load PDF: ${message}`);
    process.exitCode = 1;
  }
}

void main();

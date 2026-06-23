#!/usr/bin/env sh
set -eu

ROOT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
BASE_URL="${1:-http://127.0.0.1:8023/demo/index.html}"
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
NODE_BIN="${NODE_BIN:-node}"

if [ ! -x "$CHROME" ]; then
  echo "Chrome executable not found: $CHROME" >&2
  echo "Set CHROME=/path/to/chrome and retry." >&2
  exit 1
fi

export ROOT_DIR BASE_URL CHROME

"$NODE_BIN" <<'EOF'
const path = require("node:path");

let chromium;
try {
  ({ chromium } = require("playwright"));
} catch (error) {
  console.error("This script requires the Node package `playwright`.");
  console.error("Install it locally, or set NODE_PATH to a node_modules directory that contains playwright.");
  process.exit(1);
}

const rootDir = process.env.ROOT_DIR;
const baseUrl = process.env.BASE_URL;
const chrome = process.env.CHROME;
const themes = [
  "edge-note",
  "signal-lab",
  "paper-museum",
  "paper-garden",
  "paper-whisper",
];

(async () => {
  const browser = await chromium.launch({
    executablePath: chrome,
    headless: true,
  });

  for (const theme of themes) {
    const separator = baseUrl.includes("?") ? "&" : "?";
    const page = await browser.newPage({
      deviceScaleFactor: 1,
      viewport: { width: 420, height: 900 },
    });
    await page.goto(`${baseUrl}${separator}theme=${theme}&preview=1`, { waitUntil: "load" });
    await page.screenshot({
      fullPage: true,
      path: path.join(rootDir, "previews", `${theme}.png`),
      type: "png",
    });
    await page.close();
    console.log(`Rendered previews/${theme}.png`);
  }

  await browser.close();
})().catch((error) => {
  console.error(error);
  process.exit(1);
});
EOF

#!/usr/bin/env bash
# scripts/build-pdf.sh
#
# Build the Elite Kickboxing strategic roadmap PDF from Markdown.
# Pipeline: Pandoc (MD -> standalone HTML with embedded assets) -> Chrome
# headless --print-to-pdf (HTML -> PDF, A4 portrait, no headers/footers).
#
# Requirements (Windows + Git Bash):
#   - pandoc   (https://pandoc.org)
#   - Google Chrome or Microsoft Edge installed at standard path
#
# Usage:
#   bash scripts/build-pdf.sh
#
# Output:
#   docs/R&D/elite-strategic-roadmap.html  (build artifact, gitignored)
#   docs/R&D/elite-strategic-roadmap.pdf   (build artifact, gitignored)

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MD="$ROOT/docs/R&D/elite-strategic-roadmap.md"
HTML="$ROOT/docs/R&D/elite-strategic-roadmap.html"
PDF="$ROOT/docs/R&D/elite-strategic-roadmap.pdf"
CSS="$ROOT/scripts/roadmap-print.css"

# --- Prerequisites ---
command -v pandoc >/dev/null 2>&1 || {
  echo "ERROR: pandoc kurulu degil. Indir: https://pandoc.org/installing.html" >&2
  exit 1
}

# Locate Chrome/Edge (Chromium-based browser needed for CSS print)
CHROME=""
for c in \
  "/c/Program Files/Google/Chrome/Application/chrome.exe" \
  "/c/Program Files (x86)/Google/Chrome/Application/chrome.exe" \
  "/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe" \
  "/c/Program Files/Microsoft/Edge/Application/msedge.exe" \
; do
  if [ -f "$c" ]; then
    CHROME="$c"
    break
  fi
done
if [ -z "$CHROME" ]; then
  echo "ERROR: Chrome veya Edge bulunamadi. Standart kurulum yollarini kontrol edin." >&2
  exit 1
fi

[ -f "$MD" ]  || { echo "ERROR: Kaynak MD yok: $MD" >&2; exit 1; }
[ -f "$CSS" ] || { echo "ERROR: Print CSS yok: $CSS" >&2; exit 1; }

# --- Step 1: Markdown -> standalone HTML with embedded resources ---
echo "[1/2] Pandoc: $MD"
echo "      -> $HTML"
pandoc "$MD" \
  --from="markdown-markdown_in_html_blocks" \
  -o "$HTML" \
  --standalone \
  --metadata title="Elite Kickboxing — Stratejik Yol Haritasi" \
  --metadata lang=tr \
  --embed-resources \
  --resource-path="$ROOT/docs/R&D" \
  --css="$CSS"

# --- Step 2: HTML -> PDF via Chrome headless ---
# Convert MSYS path (/c/...) to Windows file:// URL (file:///c:/...)
HTML_URL="file:///$(echo "$HTML" | sed -E 's|^/([a-zA-Z])|\1:|')"

echo "[2/2] Chrome headless: -> $PDF"
"$CHROME" \
  --headless=new \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf="$PDF" \
  "$HTML_URL"

# --- Summary ---
SIZE=$(du -h "$PDF" | cut -f1)
PAGES=$(PDF_PATH="$PDF" python -c "import os, fitz; print(fitz.open(os.environ['PDF_PATH']).page_count)" 2>/dev/null || echo "?")
echo ""
echo "=================================="
echo "Done."
echo "  File:  $PDF"
echo "  Size:  $SIZE"
echo "  Pages: $PAGES"
echo "=================================="

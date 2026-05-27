#!/usr/bin/env bash
# scripts/build-pdf.sh
#
# Build the Elite Kickboxing strategic roadmap PDF from Markdown.
# Pipeline:
#   1) Pandoc: MD -> standalone HTML with embedded assets
#   2) WeasyPrint (preferred) or Chrome headless (fallback): HTML -> PDF
#
# WeasyPrint birinci tercih: gercek print engine, @page footer/page-break
# kurallarini eksiksiz uygular. Sistem bagimliliklari (Pango/Cairo) eksikse
# Chrome headless'a otomatik fallback yapilir.
#
# Requirements (Windows + Git Bash):
#   - pandoc                            (https://pandoc.org)
#   - python + pip install weasyprint   (opsiyonel; varsa kullanilir)
#   - Google Chrome veya Microsoft Edge (WeasyPrint yoksa zorunlu)
#
# Usage:
#   bash scripts/build-pdf.sh
#
# Output:
#   docs/R&D/elite-strategic-roadmap.html  (build artifact, gitignored)
#   docs/R&D/output/elite-strategic-roadmap.pdf

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MD="$ROOT/docs/R&D/elite-strategic-roadmap.md"
HTML="$ROOT/docs/R&D/elite-strategic-roadmap.html"
PDF="$ROOT/docs/R&D/output/elite-strategic-roadmap.pdf"
CSS="$ROOT/docs/R&D/assets/pdf-styles.css"

mkdir -p "$(dirname "$PDF")"

# --- Prerequisites ---
command -v pandoc >/dev/null 2>&1 || {
  echo "ERROR: pandoc kurulu degil. Indir: https://pandoc.org/installing.html" >&2
  exit 1
}
[ -f "$MD" ]  || { echo "ERROR: Kaynak MD yok: $MD" >&2; exit 1; }
[ -f "$CSS" ] || { echo "ERROR: Print CSS yok: $CSS" >&2; exit 1; }

# --- Step 1: Markdown -> standalone HTML with embedded resources ---
echo "[1/2] Pandoc: $MD"
echo "      -> $HTML"
pandoc "$MD" \
  --from="markdown-markdown_in_html_blocks" \
  -o "$HTML" \
  --standalone \
  --embed-resources \
  --resource-path="$ROOT/docs/R&D" \
  --css="$CSS" \
  --metadata title="Elite Strategic Roadmap" \
  --metadata lang=tr

# --- Step 2: HTML -> PDF ---
# Try WeasyPrint first (print-grade engine); fall back to Chrome headless.
echo "[2/2] HTML -> PDF"
if python -c "import weasyprint" 2>/dev/null; then
  echo "      Engine: WeasyPrint"
  python -c "
import weasyprint
weasyprint.HTML(filename=r'$HTML').write_pdf(r'$PDF')
"
else
  echo "      Engine: Chrome headless (WeasyPrint yok)"
  CHROME=""
  for c in \
    "/c/Program Files/Google/Chrome/Application/chrome.exe" \
    "/c/Program Files (x86)/Google/Chrome/Application/chrome.exe" \
    "/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe" \
    "/c/Program Files/Microsoft/Edge/Application/msedge.exe" \
  ; do
    if [ -f "$c" ]; then CHROME="$c"; break; fi
  done
  if [ -z "$CHROME" ]; then
    echo "ERROR: Ne WeasyPrint ne Chrome/Edge bulundu." >&2
    exit 1
  fi
  HTML_URL="file:///$(echo "$HTML" | sed -E 's|^/([a-zA-Z])|\1:|')"
  "$CHROME" \
    --headless=new \
    --disable-gpu \
    --no-pdf-header-footer \
    --virtual-time-budget=15000 \
    --hide-scrollbars \
    --print-to-pdf="$PDF" \
    "$HTML_URL"
fi

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

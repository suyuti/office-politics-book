#!/usr/bin/env bash
set -euo pipefail

mkdir -p build/pdf
mkdir -p output
bash tools/scripts/merge-chapters.sh

pandoc build/merged/book.md \
  --defaults tools/pandoc/book.yaml

echo "PDF created at build/pdf/book.pdf"

# Generate a versioned filename using date and short git SHA
BUILD_DATE=$(date +%Y-%m-%d)
GIT_SHA=$(git rev-parse --short HEAD 2>/dev/null || echo "local")
VERSION="${BUILD_DATE}-${GIT_SHA}"
VERSIONED_PDF="output/book-${VERSION}.pdf"

cp build/pdf/book.pdf "${VERSIONED_PDF}"
echo "Versioned PDF saved at ${VERSIONED_PDF}"

#!/usr/bin/env bash
set -euo pipefail

mkdir -p build/pdf
bash tools/scripts/merge-chapters.sh

pandoc build/merged/book.md \
  --defaults tools/pandoc/book.yaml

echo "PDF created at build/pdf/book.pdf"

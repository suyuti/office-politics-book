#!/usr/bin/env bash
set -euo pipefail

mkdir -p build/merged
OUTPUT="build/merged/book.md"

: > "$OUTPUT"

for file in $(ls chapters/*.md | sort); do
  cat "$file" >> "$OUTPUT"
  printf "\n\n" >> "$OUTPUT"
done

echo "Merged into $OUTPUT"

#!/usr/bin/env bash
set -euo pipefail

required=(
  "chapters"
  "figures"
  "notes"
  "resources"
  "templates"
  "prompts"
  "skills"
  "tools"
  "meta"
  ".github/workflows"
)

for path in "${required[@]}"; do
  if [ ! -e "$path" ]; then
    echo "Missing: $path"
    exit 1
  fi
done

echo "Structure looks good."

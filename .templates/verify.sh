#!/usr/bin/env bash
set -euo pipefail

echo "=== HRN verify ==="
echo "This is a template. Replace commands with your repo's real scripts."
echo

if [ -f package.json ]; then
  echo "Found package.json. Example flow:"
  echo "  npm run lint"
  echo "  npm run typecheck"
  echo "  npm test"
  echo "  npm run build"
else
  echo "No package.json. Fill this verify script for your stack."
fi

echo "✅ verify template complete (no-op)"

#!/usr/bin/env bash
set -euo pipefail
mkdir -p out
cp *.html *.svg out/ 2>/dev/null || true
cp -r images out/ 2>/dev/null || true
if [ -n "${PLAUSIBLE_LANDING_SRC:-}" ]; then
  sed -i'' -e "s#<!-- Analytics injected at deploy time via deploy.sh -->#<script async src=\"$PLAUSIBLE_LANDING_SRC\"></script>#" out/index.html
fi

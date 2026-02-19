#!/usr/bin/env bash
set -euo pipefail
mkdir -p out
cp *.html *.svg out/ 2>/dev/null || true
cp -r images out/ 2>/dev/null || true
if [ -n "${PLAUSIBLE_LANDING_SRC:-}" ]; then
  SNIPPET='<script async src="'"$PLAUSIBLE_LANDING_SRC"'"></script><script>window.plausible=window.plausible||function(){(plausible.q=plausible.q||[]).push(arguments)},plausible.init=plausible.init||function(i){plausible.o=i||{}};plausible.init()</script>'
  sed -i'' -e "s#<!-- Analytics injected at deploy time via deploy.sh -->#${SNIPPET}#" out/index.html
fi

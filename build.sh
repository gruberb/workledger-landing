#!/usr/bin/env bash
set -euo pipefail
mkdir -p out
cp index.html split-tool.html favicon.svg logo.svg styles.css out/
cp -R fonts out/
if [ -n "${PLAUSIBLE_LANDING_SRC:-}" ]; then
  SNIPPET='<script async src="'"$PLAUSIBLE_LANDING_SRC"'"></script><script>window.plausible=window.plausible||function(){(plausible.q=plausible.q||[]).push(arguments)},plausible.init=plausible.init||function(i){plausible.o=i||{}};plausible.init()</script>'
  sed -i'' -e "s#<!-- Analytics injected at deploy time via deploy.sh -->#${SNIPPET}#" out/index.html
fi

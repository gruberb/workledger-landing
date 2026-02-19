<p align="center">
  <img src="favicon.svg" alt="WorkLedger" width="64">
</p>

<h1 align="center">WorkLedger Landing Page</h1>

<p align="center">Marketing site for <a href="https://github.com/gruberb/workledger">WorkLedger</a> — deployed at <a href="https://about.workledger.org">about.workledger.org</a>.</p>

<p align="center">
  <img src="landing.png" alt="WorkLedger landing page" width="720">
</p>

## Overview

A static landing page with no build dependencies. Deployed on Vercel with analytics injected via environment variable.

## Development

Open `index.html` in a browser — no build step needed for local development.

## Deployment

Deployed automatically via Vercel on push to `main`. The `build.sh` script copies files to `out/` and optionally injects Plausible analytics.

### Environment variables

| Variable | Description |
|----------|-------------|
| `PLAUSIBLE_LANDING_SRC` | Plausible analytics script URL (injected into `index.html` at build time) |

## License

MIT

# Between the Rivers — Wildlife Records Explorer

A project that queries the UK National Biodiversity Network (NBN) Atlas
API to surface historical wildlife records by location and year, focused
on the Nene and Welland river corridor in the East Midlands.

Built deliberately in stages — from a bash script to a containerised
cloud application — as a way of learning cloud engineering through a
project with a real purpose.

## Why this exists

The NBN Atlas holds over a century of UK biodiversity records but its
interface is data-heavy and not built for casual exploration. This project
aims to make "what was recorded here, in this year" simple to ask —
starting with a defined local area and expanding from there. It is also
a learning project, documented in public, that others following a Linux
and cloud path are welcome to read and learn from.

## The roadmap

The project grows through stages. The repository always shows the current
stage; earlier stages are preserved as git tags. Phases 1 to 4 build
toward a complete, deployable application; beyond that is the direction
it can grow in afterwards.

- **Phase 1 — Bash CLI.** Query the NBN Atlas API with curl and jq,
  returning readable results in the terminal. Tag: `phase-1-bash`
- **Phase 2 — Python.** Rewrite in Python with proper error handling,
  command-line arguments, and CSV output. Tag: `phase-2-python`
- **Phase 3 — Flask + Hugo.** Wrap the logic in a Flask API with a
  simple web front end. Tag: `phase-3-web`
- **Phase 4 — Containerise and deploy.** Package with Podman and deploy
  to Azure as a live application. Tag: `phase-4-cloud`

### Beyond Phase 4

Once the application is live, the directions it can grow in include
UK-wide search, a database for saved records, user accounts, and
automated CI/CD deployment. These are larger pieces of work and sit
beyond the core build.

## Current phase

**Phase 1 — Bash CLI.** In progress.

## Requirements

- bash
- curl
- jq

## Usage

```bash
chmod +x wildlife.sh
./wildlife.sh
```

## Data source

Records come from the [NBN Atlas](https://nbnatlas.org), the UK's
national biodiversity data aggregator. Data is provided under a range
of open licences by hundreds of contributing organisations.

## Author

[fionnlinux](https://github.com/fionnlinux) — built while studying
toward a cloud engineering career and learning in public.
Corrections welcome.

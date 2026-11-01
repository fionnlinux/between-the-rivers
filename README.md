# Between the Rivers — Wildlife Records Explorer

A small Bash script that queries the UK National Biodiversity Network
(NBN) Atlas API for historical wildlife records, focused on the Nene
and Welland river corridor in the East Midlands.

This is a just-for-fun project, kept deliberately small. It is a place
to practise the Bash skills that cloud engineering leans on, using a
real API and a subject I enjoy.

## Why this exists

The NBN Atlas holds over a century of UK biodiversity records, but its
interface is data-heavy and not built for casual exploration. This
script makes "what was recorded here, in this year" a quick question to
ask for one small local area.

## What I'm practising

- Calling a REST API with `curl`
- Parsing and reshaping JSON with `jq`
- Passing arguments, with sensible defaults
- Handling errors and exit codes properly
- Writing readable, well-commented scripts that pass ShellCheck

These are the same habits that working with cloud command-line tools
calls for, where piping JSON through `jq` is an everyday job.

## Status

A work in progress, with no big plan attached. If it grows, it will
grow one small step at a time.

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

[fionnlinux](https://github.com/fionnlinux) — learning Bash and Linux
in public. Corrections welcome.

## Mirror

This repository is mirrored to
[Codeberg](https://codeberg.org/fionnlinux/between-the-rivers).

#!/usr/bin/env bash
set -euo pipefail

docker compose build
exec docker compose run --rm scry "$@"

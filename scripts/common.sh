#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ORIGINAL="${GA36_ORIGINAL_IMAGE:-$ROOT/test.img}"
[ -f "$ORIGINAL" ] || ORIGINAL="$ROOT/original/test.img"
EXTRACT="$ROOT/extract"
LOGS="$ROOT/logs"
WORK="$ROOT/work"
OUTPUT="$ROOT/output"
need_original() { [ -f "$ORIGINAL" ] || { echo "Missing $ORIGINAL" >&2; exit 2; }; }

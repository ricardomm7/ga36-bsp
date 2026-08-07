#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
source scripts/common.sh
rm -rf "$WORK" "$OUTPUT"
mkdir -p "$WORK" "$OUTPUT"
echo 'Removed generated build and package output; original and extraction were retained.'

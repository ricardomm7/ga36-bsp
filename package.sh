#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
source scripts/common.sh
src="$WORK/buildroot/output/images/ga36-custom.img"
[ -f "$src" ] || { echo 'Build image not found; run ./build.sh first.' >&2; exit 2; }
mkdir -p "$OUTPUT"
cp --reflink=auto "$src" "$OUTPUT/ga36-custom.img"
sha256sum "$OUTPUT/ga36-custom.img" > "$OUTPUT/ga36-custom.img.sha256"
echo "Packaged $OUTPUT/ga36-custom.img"

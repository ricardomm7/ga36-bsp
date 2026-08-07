#!/usr/bin/env bash
set -euo pipefail
target="$1"
# BR2_EXTERNAL_GA36_PATH points to buildroot/ directory, files are in parent
PROJECT_ROOT="$(dirname "$BR2_EXTERNAL_GA36_PATH")"
install -Dm0644 "$PROJECT_ROOT/board/ga36-mb-v1.2/extlinux.conf" "$target/boot/extlinux/extlinux.conf"
install -Dm0755 "$PROJECT_ROOT/board/ga36-mb-v1.2/ga36-firstboot" "$target/usr/sbin/ga36-firstboot"

#!/usr/bin/env bash
# Fetches comparison sources only; it never imports their board definitions.
set -euo pipefail
cd "$(dirname "$0")/.."
source scripts/common.sh
mkdir -p "$WORK/upstreams" "$ROOT/docs"
declare -A repos=(
  [arkos]=https://github.com/christianhaitian/arkos.git
  [rocknix]=https://github.com/ROCKNIX/distribution.git
  [jelos]=https://github.com/JustEnoughLinuxOS/distribution.git
  [batocera]=https://github.com/batocera-linux/batocera.linux.git
  [armbian]=https://github.com/armbian/build.git
  [buildroot]=https://git.buildroot.net/buildroot
  [linux]=https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
  [uboot]=https://source.denx.de/u-boot/u-boot.git
)
for name in "${!repos[@]}"; do
  dst="$WORK/upstreams/$name"
  [ -d "$dst/.git" ] || git clone --depth 1 "${repos[$name]}" "$dst"
done
{
  echo '# Upstream comparison'
  echo
  echo '| Project | Revision | RK3326 / GA36 references |'
  echo '|---|---|---|'
  for name in arkos rocknix jelos batocera armbian buildroot linux uboot; do
    dst="$WORK/upstreams/$name"
    rev="$(git -C "$dst" rev-parse --short HEAD)"
    hits="$(rg -l -i 'rk3326|r36s|ga36' "$dst" 2>/dev/null | wc -l)"
    echo "| $name | $rev | $hits matching files |"
  done
  echo
  echo 'This report is an inventory, not licence-compatible code import. GA36 changes remain confined to this BSP.'
} > docs/upstream-comparison.md
echo 'Wrote docs/upstream-comparison.md'

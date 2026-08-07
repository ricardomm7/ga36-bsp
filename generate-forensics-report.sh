#!/usr/bin/env bash
# Produces a factual report from reverse-engineer.sh outputs. No source image IO.
set -euo pipefail
cd "$(dirname "$0")"
source scripts/common.sh
BASE="$EXTRACT/forensics"
REPORT="$BASE/reports"
[ -d "$BASE" ] || { echo 'Run ./reverse-engineer.sh first.' >&2; exit 2; }
mkdir -p docs
fmt="$REPORT/partition-formats.txt"
{
  echo '# GA36-MB V1.2 vendor-image forensic report'
  echo
  echo 'This report is generated from independent copies under `extract/forensics`; the original acquisition is never mounted or modified.'
  echo
  echo '## Acquisition'
  echo
  echo '| Artifact | Sector range | Expected role | Format evidence |'
  echo '|---|---:|---|---|'
  while IFS=$'\t' read -r name start count role; do
    line="$(grep -F "$name.img:" "$fmt" 2>/dev/null || true)"
    echo "| $name | $start + $count | $role | ${line#*: } |"
  done <<'EOF'
rockchip-reserved	0	73728	BootROM-consumed reserved space; IDBlock / U-Boot candidates
boot-fat16	73728	65536	Boot filesystem
trust-or-key	139264	32768	Trust / key material candidate
android-boot	172032	65536	Android boot image (kernel + ramdisk)
system	237568	1048576	Vendor Linux SYSTEM filesystem
userdata	1286144	2097192	Vendor data filesystem
roms-fat32	3383336	26965975	User ROM/data filesystem
EOF
  echo
  echo '## Confirmed components'
  echo
  echo '- SoC class: Rockchip RK3326 (user-confirmed; verify against recovered DT compatible strings).'
  echo '- PMIC: RK817-1 (user-confirmed; verify against recovered DT regulator nodes).'
  echo '- Boot console from Android header: `ttyS2,115200`.'
  echo '- Original root: `mmcblk0p7`; vendor data: `mmcblk0p8`.'
  echo
  echo '## Recovered boot image metadata'
  echo
  echo '```text'
  cat "$REPORT/abootimg.txt" 2>/dev/null || echo 'Android boot metadata unavailable until extraction completes.'
  echo '```'
  echo
  echo '## Recovered Device Trees'
  echo
  find "$BASE/artifacts/dtb" -type f -name '*.dts' -printf '%f\n' 2>/dev/null | sort || true
  echo
  echo '## Replacement matrix'
  echo
  echo '| Component | Vendor status | Replacement path | Constraint |'
  echo '|---|---|---|---|'
  echo '| RK3326 BootROM | silicon ROM / non-replaceable | retain | first code executed; no firmware replacement exists |'
  echo '| DDR training blob / IDBlock | determine from reserved-region signatures | U-Boot SPL/TPL plus compatible DDR initialisation | exact DRAM topology and Rockchip boot format must be validated |'
  echo '| U-Boot | determine recovered version | upstream U-Boot board port | needs GA36 DTS, DRAM and boot offsets |'
  echo '| trust image (BL31/OP-TEE/key material) | determine from format/signatures | TF-A/OP-TEE or required vendor binary | boot ROM policy and binary licence may constrain replacement |'
  echo '| Android boot image | vendor-built but normally replaceable | mainline Linux `Image` + initramfs or extlinux | needs validated display, power, MMC and input DTS |'
  echo '| Vendor kernel | determine version/config | Linux 6.x LTS | hardware drivers and DT bindings must be upstream-compatible |'
  echo '| Ramdisk / init | vendor userspace | Buildroot rootfs | package/service configuration is fully replaceable |'
  echo '| SYSTEM filesystem | vendor userspace/assets | Buildroot rootfs | preserve only legally redistributable firmware blobs as needed |'
  echo '| ROM filesystem | user data | separate FAT/exFAT data partition | do not redistribute commercial ROMs |'
  echo '| Device Tree | vendor configuration | GA36-specific upstream-style DTS | GPIO wiring needs bench proof; no pin guessing |'
  echo '| GPU Mesa/Panfrost | replaceable userspace driver | Mesa + Panfrost | Mali firmware may need separately licensed blob |'
  echo '| Wi-Fi/BT/audio/panel firmware | identify after filesystem scan | upstream driver + redistributable firmware | licence and exact chip identification required |'
  echo
  echo '## Proprietary or licence-sensitive inventory'
  echo
  echo 'The following paths are candidates, not a licence conclusion. Inspect their hashes, headers and accompanying licences before redistribution.'
  echo
  echo '```text'
  find "$BASE/filesystems" "$BASE/artifacts" -type f \( -iname '*.ko' -o -iname '*.so' -o -iname '*.bin' -o -iname '*.fw' -o -iname '*mali*' -o -iname '*wifi*' -o -iname '*bt*' \) -printf '%p\n' 2>/dev/null | sort || true
  echo '```'
  echo
  echo '## Hardware-relevant source references'
  echo
  echo '```text'
  cat "$REPORT/hardware-reference-files.txt" 2>/dev/null || true
  echo '```'
  echo
  echo '## Open items'
  echo
  echo 'Static extraction cannot prove physical GPIO routing for FN, SD2 CD/WP, OTG VBUS/ID, LCD timings or audio codec wiring. Use UART plus electrical probing, then correlate the results with recovered DTS nodes.'
} > docs/FORENSIC_REPORT.md
echo 'Wrote docs/FORENSIC_REPORT.md'

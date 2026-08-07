#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
sudo apt-get update
sudo apt-get install -y build-essential bc bison flex cpio rsync unzip file wget git \
  device-tree-compiler u-boot-tools binwalk parted fdisk kpartx squashfs-tools p7zip-full

#!/usr/bin/env python3
"""Build an Android boot image (header v0) without the mkbootimg binary.

Emulates the invocation used by the GA36-MB v1.2 stock bootloader path
(see docs/GA36-MB-Linux/Dockerfile):
    mkbootimg --kernel zImage_with_dtb --ramdisk <rd> --base 0x40000000 \\
              --board sun8i --pagesize 2048 -o android_boot.img

Layout written (page_size = 2048):
    [header padded to page][kernel padded to page][ramdisk padded][second padded]
"""

import argparse
import hashlib
import os
import struct

BOOT_MAGIC = b"ANDROID!"


def pad(data: bytes, page_size: int) -> bytes:
    return data + b"\x00" * ((page_size - len(data) % page_size) % page_size)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--kernel", required=True, help="kernel image (zImage+dtb)")
    ap.add_argument("--ramdisk", help="ramdisk image (optional)")
    ap.add_argument("--second", help="second stage image (optional)")
    ap.add_argument("--output", "-o", required=True)
    ap.add_argument("--base", type=lambda s: int(s, 0), default=0x40000000)
    ap.add_argument("--board", default="sun8i", help="board name (16 bytes)")
    ap.add_argument("--pagesize", type=int, default=2048)
    ap.add_argument("--cmdline", default="")
    ap.add_argument("--kernel-addr", type=lambda s: int(s, 0), default=None)
    ap.add_argument("--ramdisk-addr", type=lambda s: int(s, 0), default=None)
    ap.add_argument("--second-addr", type=lambda s: int(s, 0), default=None)
    ap.add_argument("--tags-addr", type=lambda s: int(s, 0), default=None)
    args = ap.parse_args()

    with open(args.kernel, "rb") as f:
        kernel = f.read()
    ramdisk = open(args.ramdisk, "rb").read() if args.ramdisk else b""
    second = open(args.second, "rb").read() if args.second else b""

    base = args.base
    kernel_addr = args.kernel_addr if args.kernel_addr is not None else base + 0x8000
    ramdisk_addr = args.ramdisk_addr if args.ramdisk_addr is not None else base + 0x01000000
    second_addr = args.second_addr if args.second_addr is not None else base + 0x00F00000
    tags_addr = args.tags_addr if args.tags_addr is not None else base + 0x100

    page = args.pagesize
    cmdline = args.cmdline.encode()
    if len(cmdline) > 512:
        raise SystemExit("cmdline longer than 512 bytes")
    name = args.board.encode()[:16]

    # id = SHA1 over the concatenated kernel/ramdisk/second (as mkbootimg does)
    img_id = hashlib.sha1(kernel + ramdisk + second).digest()
    # id[] is 8 x u32; zero-pad the 20-byte digest.
    id_words = struct.unpack("<5I", img_id) + (0, 0, 0)

    hdr = struct.pack(
        "<8s8I2I16s512s8I1024s",
        BOOT_MAGIC,
        len(kernel), kernel_addr,
        len(ramdisk), ramdisk_addr,
        len(second), second_addr,
        tags_addr,
        page,
        0,          # unused (header_version)
        0,          # os_version
        name,
        cmdline.ljust(512, b"\x00"),
        *id_words,
        b"\x00" * 1024,
    )
    if len(hdr) != 1632:
        raise SystemExit(f"internal: header is {len(hdr)} bytes, expected 1632")

    out = pad(hdr, page) + pad(kernel, page) + pad(ramdisk, page) + pad(second, page)
    with open(args.output, "wb") as f:
        f.write(out)

    print(f"android_boot.img: {len(out)} bytes")
    print(f"  kernel   : {len(kernel):>8} bytes  -> 0x{kernel_addr:08x}")
    print(f"  ramdisk  : {len(ramdisk):>8} bytes  -> 0x{ramdisk_addr:08x}")
    print(f"  second   : {len(second):>8} bytes  -> 0x{second_addr:08x}")
    print(f"  tags     :                           0x{tags_addr:08x}")
    print(f"  page_size: {page}, board: {args.board!r}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

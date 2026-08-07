#!/usr/bin/env python3
"""Disassemble an ARM ELF's .text section (or a file offset range) with capstone.

Used to decode the vendor lcd.ko panel driver (LCD_panel_init, LCD_cfg_panel_info,
LCD_open_flow, ...) when no ARM binutils are installed. Requires:
    pip install capstone

Section symbols come from the ELF symbol table; pass a symbol name to jump to it.

Usage:
    disasm_elf.py <elf>                    # disassemble whole .text
    disasm_elf.py <elf> --sym LCD_panel_init --len 0x200
    disasm_elf.py <elf> --text 0x884 --len 0x190    # .text+0x884
    disasm_elf.py <elf> --file 0x8b8 --len 0x190    # raw file offset
"""

import argparse
import struct
import sys

try:
    from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM
except ImportError:
    sys.exit("capstone not installed (pip install capstone)")


def sections(data):
    eclass = data[4]
    if eclass == 1:
        e_shoff = struct.unpack_from("<I", data, 0x20)[0]
        e_shentsize = struct.unpack_from("<H", data, 0x2E)[0]
        e_shnum = struct.unpack_from("<H", data, 0x30)[0]
        e_shstrndx = struct.unpack_from("<H", data, 0x32)[0]
    else:
        e_shoff = struct.unpack_from("<Q", data, 0x28)[0]
        e_shentsize = struct.unpack_from("<H", data, 0x3A)[0]
        e_shnum = struct.unpack_from("<H", data, 0x3C)[0]
        e_shstrndx = struct.unpack_from("<H", data, 0x3E)[0]
    strt_off = struct.unpack_from("<I", data, e_shoff + e_shstrndx * e_shentsize + 0x10)[0]
    strt_size = struct.unpack_from("<I", data, e_shoff + e_shstrndx * e_shentsize + 0x14)[0]
    strtab = data[strt_off:strt_off + strt_size]
    out = {}
    for i in range(e_shnum):
        h = e_shoff + i * e_shentsize
        name_off = struct.unpack_from("<I", data, h)[0]
        end = strtab.find(b"\x00", name_off)
        name = strtab[name_off:end].decode("utf-8", "replace")
        if eclass == 1:
            sh_offset = struct.unpack_from("<I", data, h + 0x10)[0]
            sh_size = struct.unpack_from("<I", data, h + 0x14)[0]
            sh_addr = struct.unpack_from("<I", data, h + 0x0C)[0]
        else:
            sh_offset = struct.unpack_from("<Q", data, h + 0x18)[0]
            sh_size = struct.unpack_from("<Q", data, h + 0x20)[0]
            sh_addr = struct.unpack_from("<Q", data, h + 0x10)[0]
        out[name] = (sh_offset, sh_size, sh_addr, i)
    return out


def symtab(data):
    """Return (symbol-string-table bytes, [symbol tuples])."""
    eclass = data[4]
    if eclass == 1:
        e_shoff = struct.unpack_from("<I", data, 0x20)[0]
        e_shentsize = struct.unpack_from("<H", data, 0x2E)[0]
        e_shnum = struct.unpack_from("<H", data, 0x30)[0]
        sysoff = sysoff_size = strtab_link = None
        for i in range(e_shnum):
            h = e_shoff + i * e_shentsize
            if struct.unpack_from("<I", data, h + 4)[0] == 2:  # SHT_SYMTAB
                sysoff = struct.unpack_from("<I", data, h + 0x10)[0]
                sysoff_size = struct.unpack_from("<I", data, h + 0x14)[0]
                strtab_link = struct.unpack_from("<I", data, h + 0x18)[0]
        if sysoff is None:
            return None, []
        entsize = 16
        strt_off = struct.unpack_from("<I", data, e_shoff + strtab_link * e_shentsize + 0x10)[0]
        strt_size = struct.unpack_from("<I", data, e_shoff + strtab_link * e_shentsize + 0x14)[0]
        strtab = data[strt_off:strt_off + strt_size]
        out = []
        for n in range(sysoff_size // entsize):
            h = sysoff + n * entsize
            st_name, st_value, st_size, st_info, st_other, st_shndx = struct.unpack_from(
                "<IIIBBH", data, h)
            end = strtab.find(b"\x00", st_name)
            name = strtab[st_name:end].decode("utf-8", "replace")
            out.append((name, st_value, st_size, st_info, st_shndx))
        return strtab, out
    return None, []


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("elf")
    ap.add_argument("--sym")
    ap.add_argument("--text", type=lambda x: int(x, 0))
    ap.add_argument("--file", type=lambda x: int(x, 0))
    ap.add_argument("--len", type=lambda x: int(x, 0), default=0)
    a = ap.parse_args()

    data = open(a.elf, "rb").read()
    secs = sections(data)
    txt_off, txt_size, txt_addr, _ = secs.get(".text", (0, 0, 0, 0))

    if a.sym:
        strtab, syms = symtab(data)
        if strtab is None:
            sys.exit("no SHT_SYMTAB")
        matches = [s for s in syms if s[0] == a.sym]
        if not matches:
            sys.exit("symbol '%s' not found" % a.sym)
        if len(matches) > 1:
            print("note: %d matches for '%s', using first" % (len(matches), a.sym))
        _, value, size, _info, shndx = matches[0]
        secname = None
        for name, (o, s, ad, idx) in secs.items():
            if idx == shndx:
                secname = name
                break
        if secname is None:
            sys.exit("symbol section index %d not mapped" % shndx)
        sec_off, _sec_size, sec_addr, _ = secs[secname]
        off = sec_off + value - sec_addr
        length = a.len or size
    elif a.text is not None:
        off = txt_off + a.text
        length = a.len or (txt_size - a.text)
    elif a.file is not None:
        off = a.file
        length = a.len or (len(data) - a.file)
    else:
        off, length = txt_off, txt_size

    md = Cs(CS_ARCH_ARM, CS_MODE_ARM)
    md.skipdata = True
    code = data[off:off + length]
    for insn in md.disasm(code, off):
        print("0x%08x  %-12s %s" % (insn.address, insn.mnemonic, insn.op_str))


if __name__ == "__main__":
    main()

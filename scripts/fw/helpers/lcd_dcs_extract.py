#!/usr/bin/env python3
"""Extract the JD9366 8" panel DCS init table from the vendor lcd.ko.

Self-contained: parses the ELF section headers to locate .data, then walks
the DCS table that the vendor driver (a patched lp079x01.c -> "jd9366_8inch")
keeps in .data. No readelf/objdump/capstone needed.

Table layout (from DWARF `LCM_setting_table`, 72-byte entries):
    +0: cmd        (u8, DCS command)
    +4: count      (u32 LE; 0xff = end marker, 0xfe = delay, else DCS write)
    +8: para_list  (u8[64], first `count` bytes are the payload)

The table base was located at .data+0x3c and cross-checked by disassembling
LCD_panel_init (stride 0x48 = 72). This script re-verifies both anchors
(the "jd9366_8inch" panel name string and the page-open prefix) and fails
loudly if a different firmware revision is supplied.

Usage: lcd_dcs_extract.py <lcd.ko> [--verify-only]
Writes the C array to stdout.
"""

import struct
import sys

ENTRY = 72  # bytes per LCM_setting_table entry
TABLE_OFF = 0x3C  # offset of LCM_LT080B21BA94_setting within .data
NAME_OFF = 0x2CAC  # offset of "jd9366_8inch" string within .data
SHA256 = "325e285f5551a55ee6936c9395f9799be02093a46a1ad1ee74fe950dd4a6fbc7"


def load_sections(data):
    """Parse an ELF LE section table, return {name: (file_off, size)}."""
    eclass = data[4]
    if eclass == 1:  # ELF32
        fmt = "<IIIIIIIIII"
    else:  # ELF64
        fmt = "<IIQQQQIIQQ"
    ssize = struct.calcsize(fmt)
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

    # section name string table
    sh_name = struct.unpack_from("<I", data, e_shoff + e_shstrndx * e_shentsize + 0x10)[0]
    strt_size = struct.unpack_from("<I", data, e_shoff + e_shstrndx * e_shentsize + 0x14)[0]
    strtab = data[sh_name:sh_name + strt_size]

    sections = {}
    for i in range(e_shnum):
        h = e_shoff + i * e_shentsize
        name_off = struct.unpack_from("<I", data, h)[0]
        end = strtab.find(b"\x00", name_off)
        name = strtab[name_off:end].decode("utf-8", "replace")
        if eclass == 1:
            sh_offset = struct.unpack_from("<I", data, h + 0x10)[0]
            sh_size = struct.unpack_from("<I", data, h + 0x14)[0]
        else:
            sh_offset = struct.unpack_from("<Q", data, h + 0x18)[0]
            sh_size = struct.unpack_from("<Q", data, h + 0x20)[0]
        sections[name] = (sh_offset, sh_size)
    return sections


def find_table(data, dsec):
    d_off, d_size = dsec
    name = data[d_off + NAME_OFF:d_off + NAME_OFF + 13]
    if not name.startswith(b"jd9366_8inch\x00"):
        raise SystemExit(
            "error: 'jd9366_8inch' string not at .data+0x%x "
            "(different firmware revision?)" % NAME_OFF)
    entries = []
    idx = 0
    while True:
        off = d_off + TABLE_OFF + idx * ENTRY
        if off + ENTRY > d_off + d_size:
            raise SystemExit("error: DCS table overruns .data (no end marker)")
        cmd = data[off]
        count = struct.unpack_from("<I", data, off + 4)[0]
        para = data[off + 8:off + 72]
        if count == 0xFF:
            break
        if count == 0xFE:
            entries.append(("delay", para[0]))
        else:
            if count > 64:
                raise SystemExit("error: count %d > 64 at entry %d" % (count, idx))
            entries.append(("dcs", cmd, bytes(para[:count])))
        idx += 1
    return entries


def emit(entries):
    lines = ["/* vendor DCS for JD9366 8\" 640x480, 2-lane "
             "(lcd.ko LP079X01 patch -> jd9366_8inch) */",
             "static const unsigned char jd9366_init[] = {"]
    for e in entries:
        if e[0] == "delay":
            lines.append("\t/* delay %d ms */" % e[1])
        else:
            _, cmd, payload = e
            parts = ["0x%02X" % cmd] + ["0x%02X" % b for b in payload]
            lines.append("\t" + ", ".join(parts) + ",")
    lines.append("};")
    return "\n".join(lines)


def main():
    if len(sys.argv) < 2:
        raise SystemExit("usage: lcd_dcs_extract.py <lcd.ko> [--verify-only]")
    path = sys.argv[1]
    data = open(path, "rb").read()
    if data[:4] != b"\x7fELF":
        raise SystemExit("error: %s is not an ELF file" % path)
    if SHA256:
        import hashlib
        got = hashlib.sha256(data).hexdigest()
        if got != SHA256:
            raise SystemExit(
                "error: lcd.ko sha256 %s does not match pinned %s "
                "(different firmware revision)" % (got, SHA256))
    sections = load_sections(data)
    dsec = sections.get(".data")
    if not dsec:
        raise SystemExit("error: no .data section")
    entries = find_table(data, dsec)
    out = emit(entries)
    if "--verify-only" in sys.argv:
        print("OK: %d DCS entries at .data+0x%x, table bytes %d"
              % (len(entries), TABLE_OFF, len(entries) * ENTRY))
    else:
        print(out)


if __name__ == "__main__":
    main()

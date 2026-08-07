#!/usr/bin/env python3
import struct
import os
import sys

# Get paths relative to this script
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
ROOT_DIR = os.path.dirname(os.path.dirname(os.path.dirname(SCRIPT_DIR)))

SRC = os.path.join(ROOT_DIR, "extract", "boot", "fex-embedded.bin")
OUT_DIR = os.path.join(ROOT_DIR, "output")

if not os.path.exists(SRC):
    print(f"ERROR: Source file not found: {SRC}")
    print("Run extract.sh first to extract fex-embedded.bin")
    sys.exit(1)

os.makedirs(OUT_DIR, exist_ok=True)

data = open(SRC, "rb").read()

HEXA = ("dram_baseaddr", "dram_zq", "dram_tpr", "dram_emr",
        "g2d_size", "rtp_press_threshold", "rtp_sensitive_level",
        "ctp_twi_addr", "csi_twi_addr", "csi_twi_addr_b", "tkey_twi_addr",
        "lcd_gamma_tbl_", "gsensor_twi_addr")


def cstr_at(p, n):
    b = data[p:p + n]
    end = b.find(b"\x00")
    if end >= 0:
        b = b[:end]
    return b.decode("latin1")


def name_at(p, maxlen=32):
    end = data.find(b"\x00", p, p + maxlen)
    if end < 0:
        end = p + maxlen
    return data[p:end].decode("latin1")


def hexa(name):
    for h in HEXA:
        if name.startswith(h):
            return True
    return False


def render_gpio(p):
    port, port_num, mul_sel, pull, drv_level, d = struct.unpack_from("<6i", data, p)
    def f(x):
        return "default" if x == -1 else str(x)
    if port == 0xffff:
        return "port:power%d<%s><%s><%s><%s>" % (port_num, f(mul_sel), f(pull), f(drv_level), f(d))
    bank = chr(ord('A') + port - 1) if 1 <= port <= 26 else '?'
    return "port:P%s%02d<%s><%s><%s><%s>" % (bank, port_num, f(mul_sel), f(pull), f(drv_level), f(d))


sections, filesize, v0, v1 = struct.unpack_from("<IIII", data, 0)
print("# sections=%d filesize=%d version=%d.%d" % (sections, filesize, v0, v1))

secs = []
for i in range(sections):
    p = 0x10 + i * 40
    nm = name_at(p)
    ln = struct.unpack_from("<i", data, p + 32)[0]
    off = struct.unpack_from("<i", data, p + 36)[0]
    secs.append((nm, ln, off))

total_keys = sum(s[1] for s in secs)
print("# total section key count:", total_keys)

keys = []
for nm, ln, off in secs:
    p = off << 2
    for i in range(ln):
        kname = name_at(p)
        voff = struct.unpack_from("<i", data, p + 32)[0]
        pat = struct.unpack_from("<I", data, p + 36)[0]
        typ = (pat >> 16) & 0xffff
        words = pat & 0xffff
        keys.append((nm, kname, voff, typ, words))
        p += 40

last_end = secs[0][2] << 2
for nm, ln, off in secs:
    last_end = max(last_end, (off << 2) + ln * 40)
print("# entry tables: first@0x%04x contiguous-end 0x%04x" % (secs[0][2] << 2, last_end))

from collections import Counter
tcount = Counter()


def decode(nm, voff, typ, words):
    tcount[typ] += 1
    p = voff << 2
    if typ == 1:
        v = struct.unpack_from("<I", data, p)[0]
        if hexa(nm):
            return "0x%x" % v
        return str(v)
    if typ == 2:
        return '"%s"' % cstr_at(p, words << 2)
    if typ == 4:
        return render_gpio(p)
    if typ == 5:
        return ""
    return "; [type %d unsupported]" % typ


def cstr_at(p, n):
    b = data[p:p + n]
    end = b.find(b"\x00")
    if end >= 0:
        b = b[:end]
    return b.decode("latin1")


def name_at(p, maxlen=32):
    end = data.find(b"\x00", p, p + maxlen)
    if end < 0:
        end = p + maxlen
    return data[p:end].decode("latin1")


def hexa(name):
    for h in HEXA:
        if name.startswith(h):
            return True
    return False


def render_gpio(p):
    port, port_num, mul_sel, pull, drv_level, d = struct.unpack_from("<6i", data, p)
    def f(x):
        return "default" if x == -1 else str(x)
    if port == 0xffff:
        return "port:power%d<%s><%s><%s><%s>" % (port_num, f(mul_sel), f(pull), f(drv_level), f(d))
    bank = chr(ord('A') + port - 1) if 1 <= port <= 26 else '?'
    return "port:P%s%02d<%s><%s><%s><%s>" % (bank, port_num, f(mul_sel), f(pull), f(drv_level), f(d))


by_sec = {}
skipped = 0
for sn, kn, koff, ktyp, kw in keys:
    if not kn:
        skipped += 1
        continue
    by_sec.setdefault(sn, []).append((kn, koff, ktyp, kw))
print("# empty-name terminator entries skipped:", skipped)

lines = []
for nm, ln, off in secs:
    if lines:
        lines.append("")
    lines.append("[%s]" % nm)
    for kv, koff, ktyp, kw in by_sec.get(nm, []):
        val = decode(kv, koff, ktyp, kw)
        lines.append(("%s = %s" % (kv, val)).rstrip())
lines.append("")

fex_path = os.path.join(OUT_DIR, "sys_config.fex")
with open(fex_path, "w", newline="\n") as f:
    f.write("\n".join(lines) + "\n")
print("# wrote", fex_path, len(lines), "lines")

full_path = os.path.join(OUT_DIR, "fex-decode-full.txt")
with open(full_path, "w", newline="\n") as f:
    f.write("# sections=%d filesize=%d version=%d.%d\n" % (sections, filesize, v0, v1))
    f.write("# total section key count: %d\n" % total_keys)
    f.write("# type histogram: %s\n" % dict(tcount))
    for nm, ln, off in secs:
        f.write("\n[%s]  ; length=%d entries@0x%04x\n" % (nm, ln, off << 2))
        for kv, koff, ktyp, kw in by_sec.get(nm, []):
            val = decode(kv, koff, ktyp, kw)
            f.write("  %-32s = %s\n" % (kv, val))
        if ln != len(by_sec.get(nm, [])):
            f.write("  ; [%d empty-name terminator(s) omitted]\n" % (ln - len(by_sec.get(nm, []))))
print("# wrote", full_path)
import struct, sys

STAMP = 0x5f0a6c39

def egon_check(data, off):
    length = struct.unpack_from('<I', data, off + 0x10)[0]
    if length & 3 or length > len(data) - off:
        return None, length
    words = [struct.unpack_from('<I', data, off + 4*i)[0] for i in range(length//4)]
    words[3] = STAMP  # checksum field at offset 0x0c = word 3
    calc = sum(words) & 0xffffffff
    stored = struct.unpack_from('<I', data, off + 0x0c)[0]
    return stored, calc

# Read only the first 4 MiB (covers boot0/boot1/SPL headers); the source
# images can be tens of GB and must not be slurped into RAM.
with open(sys.argv[1], 'rb') as _f:
    img = _f.read(4 * 1024 * 1024)
for label, off in (('OUR SPL @LBA16', 16*512),
                   ('VENDOR boot0 @LBA16', 16*512)):
    stored, calc = egon_check(img, off)
    if stored is None:
        print(f'{label}: length field {calc:#x} (bad/out of range)')
        continue
    ok = 'VALID' if stored == calc else 'INVALID <<<<<<'
    length = struct.unpack_from('<I', img, off + 0x10)[0]
    print(f'{label}: length=0x{length:x} checksum stored=0x{stored:08x} computed=0x{calc:08x} -> {ok}')

import struct, sys

def dump(f, off, n=32):
    d = open(f, 'rb').read(0x10000)
    print(f)
    for i in range(0, n, 4):
        v = struct.unpack_from('<I', d, off + i)[0]
        print(f'  +0x{i:02x}: {v:#010x}')

dump('/mnt/c/Users/ricar/Downloads/r36s-files/my-image/output/firmware/ga36-mb-v1.2.img', 0x2000)
dump('/mnt/c/Users/ricar/Downloads/r36s-files/my-image/extract/boot/sector-0-16MiB.bin', 0x2000)

import sys
import gzip
import struct

filename = 'bootloader/ga36-stock-bootchain-128m.bin.gz'
with gzip.open(filename, 'rb') as f:
    data = bytearray(f.read())

print("Restoring corrupted word at offset 34420...")
data[34420:34424] = struct.pack('<I', 0xFFFFFFFF)

with gzip.open(filename, 'wb') as f:
    f.write(data)
print("Restored successfully!")

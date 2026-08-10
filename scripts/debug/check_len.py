import sys
import gzip
import struct

filename = sys.argv[1]
with gzip.open(filename, 'rb') as f:
    data = f.read()

print(f"Uncompressed length: {len(data)}")

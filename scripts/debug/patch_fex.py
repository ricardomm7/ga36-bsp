import sys
import gzip
import struct

filename = sys.argv[1]
with gzip.open(filename, 'rb') as f:
    data = bytearray(f.read())

idx = data.find(b'pmu_batdeten\x00')
if idx == -1:
    print("pmu_batdeten not found!")
    sys.exit(1)

print(f"Found pmu_batdeten at offset {idx}")
entry = data[idx:idx+40]
name, offset_words, pattern = struct.unpack('<32sII', entry)
val_offset = offset_words * 4
val = struct.unpack('<I', data[val_offset:val_offset+4])[0]

if val != 0:
    print("Patching pmu_batdeten to 0...")
    data[val_offset:val_offset+4] = struct.pack('<I', 0)
    
    print("Saving modified bootchain...")
    with gzip.open(filename, 'wb') as f:
        f.write(data)
    print("Done!")
else:
    print("Already 0!")

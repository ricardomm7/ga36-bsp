import gzip
import struct

filename = 'bootloader/ga36-stock-bootchain-128m.bin.gz'
with gzip.open(filename, 'rb') as f:
    data = f.read()

idx = 0
found = 0
while True:
    idx = data.find(b'BM', idx)
    if idx == -1:
        break
    
    if idx + 54 > len(data):
        break
        
    header = data[idx:idx+14]
    magic, size, res1, res2, offset = struct.unpack('<2sIHHI', header)
    
    # check for reasonable size (e.g. between 10KB and 5MB)
    if 10000 < size < 5000000 and res1 == 0 and res2 == 0:
        # Check DIB header (starts at idx+14)
        dib_size = struct.unpack('<I', data[idx+14:idx+18])[0]
        if dib_size in (40, 108, 124): # common DIB sizes
            width, height = struct.unpack('<ii', data[idx+18:idx+26])
            print(f"Found BMP at {idx} (size: {size} bytes, {width}x{height})")
            found += 1
            
            # extract it to verify
            with open(f'found_bmp_{found}.bmp', 'wb') as out:
                out.write(data[idx:idx+size])
    
    idx += 1

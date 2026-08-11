try:
    from PIL import Image
except ImportError:
    print("Skipping splash injection: python3-PIL (pillow) not installed.")
    sys.exit(0)
import gzip
import io
import sys
import os

offset = 38733824
size = 921654

if len(sys.argv) < 3:
    print("Usage: python3 inject_splash.py <bootchain.bin.gz> <logo.bmp>")
    sys.exit(1)

bootchain_path = sys.argv[1]
logo_path = sys.argv[2]

if not os.path.exists(logo_path):
    print(f"Skipping splash injection: {logo_path} not found.")
    sys.exit(0)

print(f"Reading user logo from {logo_path}...")
img = Image.open(logo_path)
img = img.convert("RGB")

if img.size != (640, 480):
    print(f"Resizing logo from {img.size} to 640x480...")
    img = img.resize((640, 480), Image.Resampling.LANCZOS)

# Save as 24-bit BMP
bmp_io = io.BytesIO()
img.save(bmp_io, format="BMP")
bmp_bytes = bmp_io.getvalue()

if len(bmp_bytes) != size:
    print(f"Warning: Generated BMP size is {len(bmp_bytes)}, expected {size}.")
    if len(bmp_bytes) < size:
        bmp_bytes += b'\x00' * (size - len(bmp_bytes))
    else:
        bmp_bytes = bmp_bytes[:size]

print(f"Final BMP size for injection: {len(bmp_bytes)} bytes")

print("Reading bootchain...")
with gzip.open(bootchain_path, 'rb') as f:
    data = bytearray(f.read())

print(f"Injecting user logo at offset {offset}...")
data[offset:offset+size] = bmp_bytes

print("Saving modified bootchain...")
with gzip.open(bootchain_path, 'wb') as f:
    f.write(data)

print("Done! User bootlogo successfully injected into Route A.")

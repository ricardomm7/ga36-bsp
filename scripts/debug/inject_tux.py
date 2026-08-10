import urllib.request
from PIL import Image
import gzip
import struct
import io
import sys

offset = 38733824
size = 921654
filename = 'bootloader/ga36-stock-bootchain-128m.bin.gz'

print("Downloading Tux image...")
# Linux Tux URL
url = "https://upload.wikimedia.org/wikipedia/commons/3/35/Tux.svg"
url = "https://upload.wikimedia.org/wikipedia/commons/a/af/Tux.png"

try:
    req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
    response = urllib.request.urlopen(req)
    img_data = response.read()
except Exception as e:
    print(f"Failed to download Tux: {e}")
    sys.exit(1)

print("Processing image...")
img = Image.open(io.BytesIO(img_data))
img = img.convert("RGBA")

# Create a black 640x480 background
bg = Image.new("RGB", (640, 480), (0, 0, 0))

# Resize Tux to fit inside 480x480 keeping aspect ratio
tux_ratio = img.width / img.height
new_h = 400
new_w = int(new_h * tux_ratio)
img = img.resize((new_w, new_h), Image.Resampling.LANCZOS)

# Paste Tux in the center
offset_x = (640 - new_w) // 2
offset_y = (480 - new_h) // 2
# Paste using alpha channel as mask
bg.paste(img, (offset_x, offset_y), img)

# Rotate 90 degrees if the display is portrait? 
# The R36S screen is typically portrait natively (480x640), but the BMPs extracted were 640x480.
# The user can tell if it's sideways later.

# Save as 24-bit BMP
bmp_io = io.BytesIO()
bg.save(bmp_io, format="BMP")
bmp_bytes = bmp_io.getvalue()

if len(bmp_bytes) != size:
    print(f"Error: Generated BMP size {len(bmp_bytes)} does not match expected size {size}!")
    # Pad or truncate if needed, though PIL should generate exactly 921654 bytes
    if len(bmp_bytes) < size:
        bmp_bytes += b'\x00' * (size - len(bmp_bytes))
    else:
        bmp_bytes = bmp_bytes[:size]

print(f"Generated BMP size: {len(bmp_bytes)}")

print("Reading bootchain...")
with gzip.open(filename, 'rb') as f:
    data = bytearray(f.read())

print(f"Injecting Tux at offset {offset}...")
data[offset:offset+size] = bmp_bytes

print("Saving modified bootchain...")
with gzip.open(filename, 'wb') as f:
    f.write(data)

print("Done! Tux successfully injected into Route A.")

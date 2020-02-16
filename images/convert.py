#!/usr/bin/env python
from pathlib import Path
import argparse
import binascii

parser = argparse.ArgumentParser(
    description="Convert 4 colors bitmap in header file for eink screen."
)
parser.add_argument("file", type=str, help="Path to the BMP file to convert")
args = parser.parse_args()
file_name = Path(args.file).stem
print(f"Converting {args.file}\n")


with open(args.file, "rb") as image_bmp:
    # Read header
    bmp_type = image_bmp.read(2)
    bmp_size = int.from_bytes(image_bmp.read(4), "little")
    _ = image_bmp.read(4)
    bmp_data_offset = int.from_bytes(image_bmp.read(4), "little")
    # print("bmp_type", bmp_type, binascii.hexlify(bmp_type))
    # print(f"bmp_size: {bmp_size} bytes")
    # print(f"data_offset: {bmp_data_offset} bytes")
    if bmp_type != b"BM":
        raise ValueError(f"BMP type {bmp_type} is not supported")

    # Read DIB
    dib_size = int.from_bytes(image_bmp.read(4), "little")
    bmp_width = int.from_bytes(image_bmp.read(4), "little")
    bmp_height = int.from_bytes(image_bmp.read(4), "little")
    _ = int.from_bytes(image_bmp.read(2), "little")
    bmp_bits_per_pixel = int.from_bytes(image_bmp.read(2), "little")
    bmp_compression_method = int.from_bytes(image_bmp.read(4), "little")
    _ = int.from_bytes(image_bmp.read(4), "little")  # 0x22
    _ = int.from_bytes(image_bmp.read(4), "little")  # 0x26
    _ = int.from_bytes(image_bmp.read(4), "little")  # 0x2A
    color_table_size = int.from_bytes(image_bmp.read(4), "little")  # 0x2E
    _ = int.from_bytes(image_bmp.read(4), "little")  # 0x32
    # print(f"dib_size: {dib_size} bytes")
    print(f"Image width: {bmp_width} px\t\theight: {bmp_height} px")
    print(f"bmp_bits_per_pixel: {bmp_bits_per_pixel}")
    # print(f"bmp_compression_method: {bmp_compression_method}")
    print(f"color_table_size: {color_table_size}\n")
    # TODO - 122 is empirical...
    image_bmp.seek(122)
    table_color_10 = {}
    table_color_13 = {}

    know_color_10 = {
        255: 1,  # WHITE
        160: 1,  # GREY 1
        78: 0,  # GREY 2
        0: 0,  # BLACK
    }

    know_color_13 = {
        255: 1,  # WHITE
        160: 0,  # GREY 1
        78: 1,  # GREY 2
        0: 0,  # BLACK
    }

    for i in range(color_table_size):
        red = int.from_bytes(image_bmp.read(1), "little")
        green = int.from_bytes(image_bmp.read(1), "little")
        blue = int.from_bytes(image_bmp.read(1), "little")
        _ = int.from_bytes(image_bmp.read(1), "little")
        table_color_10[i] = know_color_10[red]
        table_color_13[i] = know_color_13[red]

    if bmp_compression_method != 0:
        raise ValueError(
            f"BMP compression method '{bmp_compression_method}' is not supported"
        )

    # Read data
    image_bmp.seek(bmp_data_offset)

    image_10 = f"uint8_t {file_name}10[] = {{"
    image_13 = f"uint8_t {file_name}13[] = {{"
    for i in range(
        int(bmp_width * bmp_height * bmp_bits_per_pixel / 8 / bmp_bits_per_pixel)
    ):
        # width * pixels per bytes / 2 bit per pixel
        if i % int(bmp_width * bmp_bits_per_pixel / 8 / bmp_bits_per_pixel) == 0:
            # Insert new line at each end of row
            image_10 += "\n\t"
            image_13 += "\n\t"

        pixels = int.from_bytes(image_bmp.read(4), "big")
        # Iterate on bits
        byte_10 = byte_13 = 0
        for i in range(4 * 8 - bmp_bits_per_pixel, -1, -bmp_bits_per_pixel):
            pixel = (pixels >> i) & 0x0F
            byte_10 = (byte_10 << 1) | table_color_10[pixel]
            byte_13 = (byte_13 << 1) | table_color_13[pixel]
        image_10 += f"0x{byte_10:02X}, "
        image_13 += f"0x{byte_13:02X}, "
        byte_10 = byte_13 = 0

    # End of file
    image_10 += "\n};"
    image_13 += "\n};"

    with open(args.file.replace(".bmp", ".h"), "w") as file_out:
        file_out.write("#include <stdint.h>\n\n")
        file_out.write(image_10)
        file_out.write("\n\n\n")
        file_out.write(image_13)

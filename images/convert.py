import binascii
# import PythonMagick



source_folder = "/home/oliv/Documents/"
image_file_in = f"{source_folder}/images/noe_pecor2.bmp"

# PythonMagic is not used for for now, dithering is better from Gimp
# http://www.imagemagick.org/Magick++/Image++.html
"""
image = PythonMagick.Image()
image.read(image_file_in)
image.magick("BMP")
image.resize("152")
image.quantizeColorSpace(PythonMagick.ColorspaceType.GRAYColorspace)
image.quantizeColors(4)
image.quantizeDither(True)
image.quantize()
image.write(f"{source_folder}/images/useless.bmp")
"""

with open(image_file_in, "rb") as image_bmp:
# with open("/home/oliv/Downloads/4032-3024-max.bmp", "rb") as image_bmp:
    # Read header
    bmp_type = image_bmp.read(2)
    bmp_size = int.from_bytes(image_bmp.read(4), "little")
    _ = image_bmp.read(4)
    bmp_data_offset = int.from_bytes(image_bmp.read(4), "little")
    print("bmp_type", bmp_type, binascii.hexlify(bmp_type))
    print(f"bmp_size: {bmp_size} bytes")
    print(f"data_offset: {bmp_data_offset} bytes")
    if bmp_type != b"BM":
        raise ValueError(f"BMP type {bmp_type} is not supported")

    # Read DIB
    dib_size = int.from_bytes(image_bmp.read(4), "little")
    bmp_width = int.from_bytes(image_bmp.read(4), "little")
    bmp_height = int.from_bytes(image_bmp.read(4), "little")
    _ = int.from_bytes(image_bmp.read(2), "little")
    bmp_bits_per_pixel = int.from_bytes(image_bmp.read(2), "little")
    bmp_compression_method = int.from_bytes(image_bmp.read(4), "little")
    _ = int.from_bytes(image_bmp.read(4), "little") # 0x22
    _ = int.from_bytes(image_bmp.read(4), "little") # 0x26
    _ = int.from_bytes(image_bmp.read(4), "little") # 0x2A
    color_table_size = int.from_bytes(image_bmp.read(4), "little") # 0x2E
    _ = int.from_bytes(image_bmp.read(4), "little") # 0x32
    print(f"dib_size: {dib_size} bytes")
    print(f"Image width: {bmp_width} px\t\theight: {bmp_height} px")
    print(f"bmp_bits_per_pixel: {bmp_bits_per_pixel}")
    print(f"bmp_compression_method: {bmp_compression_method}")
    print(f"color_table_size: {color_table_size}")
    # TODO - 122 is empirical...
    image_bmp.seek(122)
    table_color_10 = {}
    table_color_13 = {}

    know_color_10 = {
        255: 1, # WHITE
        160: 1, # GREY 1
        78: 0,  # GREY 2
        0: 0,   # BLACK
    }
    
    know_color_13 = {
        255: 1, # WHITE
        160: 0, # GREY 1
        78: 1,  # GREY 2
        0: 0,   # BLACK
    }

    for i in range(color_table_size):
        red = int.from_bytes(image_bmp.read(1), "little")
        green = int.from_bytes(image_bmp.read(1), "little")
        blue = int.from_bytes(image_bmp.read(1), "little")
        _ = int.from_bytes(image_bmp.read(1), "little")
        table_color_10[i] = know_color_10[red]
        table_color_13[i] = know_color_13[red]
    print("table_color_10", table_color_10)
    print("table_color_13", table_color_13)


    if bmp_compression_method != 0:
        raise ValueError(
            f"BMP compression method '{bmp_compression_method}' is not supported"
        )

    # Read data
    image_bmp.seek(bmp_data_offset)

    image_10 = "uint8_t image10[] = {"
    image_13 = "uint8_t image13[] = {"
    for i in range(int(bmp_width * bmp_height * bmp_bits_per_pixel / 8 / bmp_bits_per_pixel)):
        # width * pixels per bytes / 2 bit per pixel
        if (i % int(bmp_width * bmp_bits_per_pixel / 8 / bmp_bits_per_pixel) == 0):
            # Insert new line at each end of row
            image_10 += "\n\t"
            image_13 += "\n\t"

        pixels = int.from_bytes(image_bmp.read(4), "big")
        # Iterate on bits
        byte_10 = byte_13 = 0
        for i in range (4*8-bmp_bits_per_pixel, -1, -bmp_bits_per_pixel):
            pixel = (pixels >> i) & 0x0F
            byte_10 = (byte_10 << 1) | table_color_10[pixel]
            byte_13 = (byte_13 << 1) | table_color_13[pixel]
        image_10 += f"0x{byte_10:02X}, "
        image_13 += f"0x{byte_13:02X}, "
        byte_10 = byte_13 = 0

    # End of file
    image_10 += "\n};"
    image_13 += "\n};"

    with open(image_file_in.replace(".bmp", ".h"), "w") as file_out:
        file_out.write("#include <stdint.h>\n\n")
        file_out.write(image_10)
        file_out.write("\n\n\n")
        file_out.write(image_13)

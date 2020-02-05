import binascii
import PythonMagick

# http://www.imagemagick.org/Magick++/Image++.html


image_file_in = "~/Downloads/temp.bmp"

image = PythonMagick.Image()
image.read(image_file_in)

print(f"Input\nWidth: {image.columns()}\tHeight: {image.rows()}")

image.magick("BMP")
image.resize("152")
image.quantizeColorSpace(PythonMagick.ColorspaceType.GRAYColorspace)
image.quantizeColors(4)
image.quantizeDither(True)
image.quantize()

image.write("~/Downloads/4032-3024-max.bmp")

print(f"\nOutput\nWidth: {image.columns()}\tHeight: {image.rows()}")

with open("~/Downloads/4032-3024-max.bmp", "rb") as image_bmp:
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
    table_color = {}
    know_color = {
        255: 0, # WHITE
        160: 1, # GREY 1
        78: 2,  # GREY 2
        0: 3,   # BLACK
    }

    for i in range(color_table_size):
        red = int.from_bytes(image_bmp.read(1), "little")
        green = int.from_bytes(image_bmp.read(1), "little")
        blue = int.from_bytes(image_bmp.read(1), "little")
        _ = int.from_bytes(image_bmp.read(1), "little")
        table_color[i] = know_color[red]
    print("table_color", table_color)


    if bmp_compression_method != 0:
        raise ValueError(
            f"BMP compression method '{bmp_compression_method}' is not supported"
        )

    # Read data
    print("Cursor", image_bmp.tell())
    image_bmp.seek(bmp_data_offset)
    with open("/home/oliv/Downloads/test.h", "w") as file_out:
        file_out.write(f"uint8_t image[] = {{")

        table = {}

        for i in range(int(bmp_width * bmp_height * bmp_bits_per_pixel / 8 / 2)):
            # width * pixels per bytes / 2 bit per pixel
            if (i % int(bmp_width * bmp_bits_per_pixel / 8 / 2) == 0):
                # Insert new line at each end of row
                file_out.write("\n")

            pixels = int.from_bytes(image_bmp.read(2), "big")
            pixel1 = (pixels >> 12) & 0x0F
            pixel1 = table_color[pixel1]
            pixel2 = (pixels >> 8) & 0x0F
            pixel2 = table_color[pixel2]
            pixel3 = (pixels >> 4) & 0x0F
            pixel3 = table_color[pixel3]
            pixel4 = (pixels >> 0) & 0x0F
            pixel4 = table_color[pixel4]
            byte_out = (pixel1 << 6) | (pixel2 << 4) | (pixel3 << 2) | pixel4
            file_out.write(f"0x{byte_out:02X}, ")
            
            

            table[f"{pixel1:02X}"] = table.get(f"{pixel1:02X}", 0) + 1
            table[f"{pixel2:02X}"] = table.get(f"{pixel2:02X}", 0) + 1
            table[f"{pixel3:02X}"] = table.get(f"{pixel3:02X}", 0) + 1
            table[f"{pixel4:02X}"] = table.get(f"{pixel4:02X}", 0) + 1

        # End of file
        file_out.write("\n};")

        print(table)
        print(f"Table size: {len(table)}")
        sum_pixels = table["00"]+table["01"]+table["02"]+table["03"]
        print(f"Pixels: {sum_pixels}")


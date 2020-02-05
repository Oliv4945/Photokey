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
    _ = int.from_bytes(image_bmp.read(4), "little")
    _ = int.from_bytes(image_bmp.read(4), "little")
    _ = int.from_bytes(image_bmp.read(4), "little")
    _ = int.from_bytes(image_bmp.read(4), "little")
    _ = int.from_bytes(image_bmp.read(4), "little")
    print(f"dib_size: {dib_size} bytes")
    print(f"Image width: {bmp_width} px\t\theight: {bmp_height} px")
    print(f"bmp_bits_per_pixel: {bmp_bits_per_pixel}")
    print(f"bmp_compression_method: {bmp_compression_method}")
    if bmp_compression_method != 0:
        raise ValueError(
            f"BMP compression method '{bmp_compression_method}' is not supported"
        )

    # Read data
    image_bmp.seek(bmp_data_offset)
    with open("~/Downloads/test.h", "w") as file_out:
        file_out.write(f"uint8_t image[] = {{\n")

        table = {}
        line = []
        image = []

        for i in range(int(bmp_width * bmp_height * bmp_bits_per_pixel / 8 / 2)):
            # width * pixels per bytes / 2 bit per pixel
            if (i % int(bmp_width * bmp_bits_per_pixel / 8 / 2) == 0):
                if i != 0:
                    image.append(line)
                    print(line)
                    print(len(image), len(line), i, int(bmp_width * bmp_bits_per_pixel / 8 / 2))
                    line = []

            pixels = int.from_bytes(image_bmp.read(2), "big")
            pixel1 = (pixels >> 12) & 0x0F
            pixel2 = (pixels >> 8) & 0x0F
            pixel3 = (pixels >> 4) & 0x0F
            pixel4 = (pixels >> 0) & 0x0F
            byte_out = (pixel1 << 6) | (pixel2 << 4) | (pixel3 << 2) | pixel4
            line.append(byte_out)
            
            

            table[f"{pixel1:02X}"] = table.get(f"{pixel1:02X}", 0) + 1
            table[f"{pixel2:02X}"] = table.get(f"{pixel2:02X}", 0) + 1
            table[f"{pixel3:02X}"] = table.get(f"{pixel3:02X}", 0) + 1
            table[f"{pixel4:02X}"] = table.get(f"{pixel4:02X}", 0) + 1
        
        print(table)
        print(f"Table size: {len(table)}")

        image.append(line)

        print(len(image))
        for line in image:
            for byte in line:
                file_out.write(f"0x{byte:02X}, ")
            file_out.write("\n")

        file_out.write("\n};")


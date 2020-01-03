import binascii
import PythonMagick

# http://www.imagemagick.org/Magick++/Image++.html


image_file_in = "/home/oliv/Downloads/20190807_173505.jpg"

image = PythonMagick.Image()
image.read(image_file_in)

print(f"Input\nWidth: {image.columns()}\tHeight: {image.rows()}")

image.magick("BMP")
image.resize("150")
image.quantizeColorSpace(PythonMagick.ColorspaceType.GRAYColorspace)
image.quantizeColors(4)
image.quantizeDither(True)
image.quantize()

image.write("/home/oliv/Downloads/4032-3024-max.bmp")

print(f"\nOutput\nWidth: {image.columns()}\tHeight: {image.rows()}")

with open("/home/oliv/Downloads/4032-3024-max.bmp", "rb") as image_bmp:
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
    bmp_witdh = int.from_bytes(image_bmp.read(4), "little")
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
    print(f"Image width: {bmp_witdh} px\t\theight: {bmp_height} px")
    print(f"bmp_bits_per_pixel: {bmp_bits_per_pixel}")
    print(f"bmp_compression_method: {bmp_compression_method}")
    if bmp_compression_method != 0:
        raise ValueError(
            f"BMP compression method '{bmp_compression_method}' is not supported"
        )

    # Read data
    image_bmp.seek(bmp_data_offset)
    with open("/home/oliv/Downloads/4032-3024-max.h", "w") as file_out:
        file_out.write(f"uint8_t image[] = {{")
        for i in range(int(bmp_witdh * bmp_height * bmp_bits_per_pixel / 8 / 2)):
            if i % 10 == 0:
                file_out.write("\n")
            pixels = int.from_bytes(image_bmp.read(2), "big")
            pixel1 = (pixels >> 12) & 0x0F
            pixel2 = (pixels >> 8) & 0x0F
            pixel3 = (pixels >> 4) & 0x0F
            pixel4 = (pixels >> 0) & 0x0F
            byte_out = (pixel1 << 6) | (pixel2 << 4) | (pixel3 << 2) | pixel4
            file_out.write(f"0x{byte_out:02X}, ")
        file_out.write("\n};")


#ifndef __epd_H
#define __epd_H
#ifdef __cplusplus
 extern "C" {
#endif

#include <stdint.h>

typedef uint32_t u32;
typedef uint8_t u8;

//EPD--OTP
void EPD_init(void);
void PIC_display (const unsigned char* picData);
void EPD_display_Clean(void);
void EPD_sleep(void);
void EPD_refresh(void);
void lcd_chkstatus(void);

//4 Gray

void EPD_init_4Gray(void);//EPD init 4 Gray
void full_display(void pic_display(void)); //full  display
void pic_display_4bit(void);
void pic_4bit(void);
void lut(void);

void driver_delay_xms(unsigned long xms);
void driver_delay_us(unsigned int xus);

#ifdef __cplusplus
}
#endif
#endif /*__ epd_H */
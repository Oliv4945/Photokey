
#ifndef _DISPLAY_EPD_W21_H_
#define _DISPLAY_EPD_W21_H_

#define EPD_W21_WRITE_DATA 1
#define EPD_W21_WRITE_CMD  0

extern void driver_delay_us(unsigned int xus);
extern void driver_delay_xms(unsigned long xms);

extern void EPD_W21_WriteCMD(unsigned char command);
// OGZ static void EPD_W21_Update(void);
// OGZ static void EPD_W21_EnableChargepump(void);
// OGZ static void EPD_W21_DisableChargepump(void);
// OGZ static void EPD_W21_WirteLUT(unsigned char *LUTvalue);
// OGZ static void EPD_W21_SetRamPointer(unsigned char addrX,unsigned char addrY,unsigned char addrY1);
// OGZ static void EPD_W21_SetRamArea(unsigned char Xstart,unsigned char Xend,
//						unsigned char Ystart,unsigned char Ystart1,unsigned char Yend,unsigned char Yend1);
// OGZ static void EPD_W21_Write(unsigned char *value, unsigned char datalen);
// OGZ static void EPD_W21_PowerOnSelfTest(void);
// OGZ static void EPD_W21_PowerOnInit(void);

extern void EPD_W21_Init(void);
extern void EPD_W21_Test_Graphics(unsigned char PicNum);
extern void EPD_W21_UpdataDisplay(unsigned char *imgbuff);

#endif
/***********************************************************
						end file
***********************************************************/



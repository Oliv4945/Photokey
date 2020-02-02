#ifndef __EPAPER_H
#define __EPAPER_H
#include "main.h"
//250*122///////////////////////////////////////

#define MONOMSB_MODE 1
#define MONOLSB_MODE 2 
#define RED_MODE     3

#define MAX_LINE_BYTES 25// =200/8
#define MAX_COLUMN_BYTES  200

#define ALLSCREEN_GRAGHBYTES	5000

///////////////////////////GPIO Settings//////////////////////////////////////////////////////


#define EPD_W21_MOSI_0	HAL_GPIO_WritePin(SPI_SDI_GPIO_Port, SPI_SDI_Pin, GPIO_PIN_RESET)
#define EPD_W21_MOSI_1	HAL_GPIO_WritePin(SPI_SDI_GPIO_Port, SPI_SDI_Pin, GPIO_PIN_SET)

#define EPD_W21_CLK_0	HAL_GPIO_WritePin(SPI_SCK_GPIO_Port, SPI_SCK_Pin, GPIO_PIN_RESET)
#define EPD_W21_CLK_1	HAL_GPIO_WritePin(SPI_SCK_GPIO_Port, SPI_SCK_Pin, GPIO_PIN_SET)

#define EPD_W21_CS_0	HAL_GPIO_WritePin(EINK_CS_GPIO_Port, EINK_CS_Pin, GPIO_PIN_RESET)
#define EPD_W21_CS_1	HAL_GPIO_WritePin(EINK_CS_GPIO_Port, EINK_CS_Pin, GPIO_PIN_SET)

#define EPD_W21_DC_0	HAL_GPIO_WritePin(EINK_DC_GPIO_Port, EINK_DC_Pin, GPIO_PIN_RESET)
#define EPD_W21_DC_1	HAL_GPIO_WritePin(EINK_DC_GPIO_Port, EINK_DC_Pin, GPIO_PIN_SET)

#define EPD_W21_RST_0	HAL_GPIO_WritePin(EINK_RESET_GPIO_Port, EINK_RESET_Pin, GPIO_PIN_RESET)
#define EPD_W21_RST_1	HAL_GPIO_WritePin(EINK_RESET_GPIO_Port, EINK_RESET_Pin, GPIO_PIN_SET)

#define EPD_W21_BUSY_LEVEL 0
#define isEPD_W21_BUSY HAL_GPIO_ReadPin(EINK_BUSY_GPIO_Port, EINK_BUSY_Pin)


void driver_delay_xms(unsigned long xms);			
void Epaper_READBUSY(void);
void Epaper_Spi_WriteByte(unsigned char TxData);
void Epaper_Write_Command(unsigned char cmd);
void Epaper_Write_Data(unsigned char data);

void EPD_HW_Init(void); //Electronic paper initialization
void EPD_Update(void);

void EPD_Part_Init(void);//Local refresh initialization
void EPD_Part_Update(void); 

void EPD_WhiteScreen_White(void);
void EPD_DeepSleep(void);
//Display 
void EPD_WhiteScreen_ALL(const unsigned char *datas);
void EPD_SetRAMValue_BaseMap(const unsigned char * datas);
void EPD_Dis_Part(unsigned int x_start,unsigned int y_start,const unsigned char * datas,unsigned int PART_COLUMN,unsigned int PART_LINE);
void EPD_Dis_Part_myself(unsigned int x_startA,unsigned int y_startA,const unsigned char * datasA,
	                       unsigned int x_startB,unsigned int y_startB,const unsigned char * datasB,
												 unsigned int x_startC,unsigned int y_startC,const unsigned char * datasC,
												 unsigned int x_startD,unsigned int y_startD,const unsigned char * datasD,
											   unsigned int x_startE,unsigned int y_startE,const unsigned char * datasE,
												 unsigned int PART_COLUMN,unsigned int PART_LINE
	                      );
#endif



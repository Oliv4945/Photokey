
#include "Display_EPD_W21_spi.h"

void SPI_Delay(unsigned char xrate)
{
	HAL_Delay(1);
}


void SPI_Write(unsigned char value)                                    
{                                                           
	if (HAL_SPI_Transmit(&hspi1, &value, 1, 1000) != HAL_OK) {
        Error_Handler();
  	}
}

void EPD_W21_WriteCMD(unsigned char command)
{
    EPD_W21_CS_0;                   
	EPD_W21_DC_0;		// command write
	SPI_Write(command);
	EPD_W21_CS_1;
}
void EPD_W21_WriteDATA(unsigned char command)
{
    EPD_W21_CS_0;                   
	EPD_W21_DC_1;		// command write
	SPI_Write(command);
	EPD_W21_CS_1;
}
/*
unsigned char EPD_W21_ReadDATA(void)
{
;
}	 */


/***********************************************************
						end file
***********************************************************/

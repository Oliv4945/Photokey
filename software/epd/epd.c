#include "epd.h"
#include "Display_EPD_W21_spi.h"
#include "Display_EPD_W21.h"
#include "Ap_29demo.h"
#include "terre.h"

#include <stdint.h>
typedef uint32_t u32;
typedef uint8_t u8;

ErrorStatus HSEStartUpStatus;
unsigned char HRES,VRES_byte1,VRES_byte2;


/********Color display description
      white  gray1  gray2  black
0x10|  ff     ff     00     00
0x13|  ff     00     ff     00
****************/

void pic_earth(void) {
	EPD_W21_WriteCMD(0x10);
	for (uint16_t i = 0; i<152*152/8; i++) {
		EPD_W21_WriteDATA(image10[i]);
	}

	EPD_W21_WriteCMD(0x13);
	for (uint16_t i = 0; i<152*152/8; i++) {
		EPD_W21_WriteDATA(image13[i]);
	}
}



/*************************EPD display init function******************************************************/
void EPD_init_4Gray(void)
{
		HRES=0x98;					  	//152
	  VRES_byte1=0x00;				//152
	  VRES_byte2=0x98;
		EPD_W21_Init();
		EPD_W21_WriteCMD(0x01);			//POWER SETTING
		EPD_W21_WriteDATA (0x03);
		EPD_W21_WriteDATA (0x00);      
		EPD_W21_WriteDATA (0x2b);																	 
		EPD_W21_WriteDATA (0x2b);		
		EPD_W21_WriteDATA (0x13);

		EPD_W21_WriteCMD(0x06);         //booster soft start
		EPD_W21_WriteDATA (0x17);		//A
		EPD_W21_WriteDATA (0x17);		//B
		EPD_W21_WriteDATA (0x17);		//C 
		
		EPD_W21_WriteCMD(0x04);
		lcd_chkstatus();
		
		EPD_W21_WriteCMD(0x00);			//panel setting
		EPD_W21_WriteDATA(0x37);		//KW-3f   KWR-2F	BWROTP 0f	BWOTP 1f
		
		EPD_W21_WriteCMD(0x30);			//PLL setting
		EPD_W21_WriteDATA (0x3c);      	//100hz 
		
		EPD_W21_WriteCMD(0x61);			//resolution setting
		EPD_W21_WriteDATA (HRES);        	 
		EPD_W21_WriteDATA (VRES_byte1);		
		EPD_W21_WriteDATA (VRES_byte2);

		EPD_W21_WriteCMD(0x82);			//vcom_DC setting
	  EPD_W21_WriteDATA (0x12);

		EPD_W21_WriteCMD(0X50);			//VCOM AND DATA INTERVAL SETTING			
		EPD_W21_WriteDATA(0x97);


	}
/***************************full display function*************************************/
void full_display(void pic_display(void))
{

		
		pic_display(); //picture
		lut(); //Power settings
		EPD_W21_WriteCMD(0x12);			//DISPLAY REFRESH 	
		driver_delay_xms(100);	    //!!!The delay here is necessary, 200uS at least!!!     
		lcd_chkstatus();
}


/////////////////////////////Enter deep sleep mode////////////////////////
void EPD_sleep(void) //Enter deep sleep mode
{
		EPD_W21_WriteCMD(0X50);
		EPD_W21_WriteDATA(0xf7);	
		EPD_W21_WriteCMD(0X02);  	//power off
	  lcd_chkstatus();
		EPD_W21_WriteCMD(0X07);  	//deep sleep
		EPD_W21_WriteDATA(0xA5);
}

//LUT download
void lut(void)
{
	unsigned int count;	 
	{
		EPD_W21_WriteCMD(0x20);							//vcom
		// OGZ 44=>42 for(count=0;count<44;count++)
		for(count=0;count<42;count++)
			{EPD_W21_WriteDATA(lut_vcom[count]);}
		
	EPD_W21_WriteCMD(0x21);							//red not use
	for(count=0;count<42;count++)
		{EPD_W21_WriteDATA(lut_ww[count]);}

		EPD_W21_WriteCMD(0x22);							//bw r
		for(count=0;count<42;count++)
			{EPD_W21_WriteDATA(lut_bw[count]);}

		EPD_W21_WriteCMD(0x23);							//wb w
		for(count=0;count<42;count++)
			{EPD_W21_WriteDATA(lut_wb[count]);}

		EPD_W21_WriteCMD(0x24);							//bb b
		for(count=0;count<42;count++)
			{EPD_W21_WriteDATA(lut_bb[count]);}

		EPD_W21_WriteCMD(0x25);							//vcom
		for(count=0;count<42;count++)
			{EPD_W21_WriteDATA(lut_ww[count]);}
	}	         
}






///////////////////OTP/////////////////////////////////////////////////////////////////
void EPD_init(void)
{
		HRES=0x98;					  	//152
	  VRES_byte1=0x00;				//152
	  VRES_byte2=0x98;
	
		EPD_W21_Init();
	
		EPD_W21_WriteCMD(0x06);         //boost soft start
		EPD_W21_WriteDATA (0x17);		//A
		EPD_W21_WriteDATA (0x17);		//B
		EPD_W21_WriteDATA (0x17);		//C       

		EPD_W21_WriteCMD(0x04);  
		lcd_chkstatus();

		EPD_W21_WriteCMD(0x00);			//panel setting
		EPD_W21_WriteDATA(0x1f);		//LUT from OTP£¬128x296
	  EPD_W21_WriteCMD(0x0d);     //VCOM to 0V

		EPD_W21_WriteCMD(0x61);			//resolution setting
		EPD_W21_WriteDATA (HRES);        	 
		EPD_W21_WriteDATA (VRES_byte1);		
		EPD_W21_WriteDATA (VRES_byte2);

		EPD_W21_WriteCMD(0X50);			//VCOM AND DATA INTERVAL SETTING			
		EPD_W21_WriteDATA(0x97);		//WBmode:VBDF 17|D7 VBDW 97 VBDB 57		WBRmode:VBDF F7 VBDW 77 VBDB 37  VBDR B7
}
void PIC_display(const unsigned char* picData)
{
    unsigned int i;
		EPD_W21_WriteCMD(0x10);	       //Transfer old data
	  for(i=0;i<2888;i++)	     
	  EPD_W21_WriteDATA(0xff); 
	
		EPD_W21_WriteCMD(0x13);		     //Transfer new data
	  for(i=0;i<2888;i++)	     
	{
	  EPD_W21_WriteDATA(*picData);
	  picData++;
	}

}

/***************** full screen display picture*************************/
void EPD_display_Clean(void)
{
	unsigned int i;
		EPD_W21_WriteCMD(0x10);
		for(i=0;i<2888;i++)	     
		{
				EPD_W21_WriteDATA(0xff);  
		}  
		driver_delay_xms(2);	

		EPD_W21_WriteCMD(0x13);
		for(i=0;i<2888;i++)	     
		{
				EPD_W21_WriteDATA(0xff);  
		}  
		driver_delay_xms(2);		 
}

void EPD_refresh(void)
{
		EPD_W21_WriteCMD(0x12);			//DISPLAY REFRESH 	
		driver_delay_xms(100);	        //!!!The delay here is necessary, 200uS at least!!!     
		lcd_chkstatus();
}

//Detection busy
void lcd_chkstatus(void)
{
	unsigned char busy;
	do
	{
		EPD_W21_WriteCMD(0x71);
		busy = isEPD_W21_BUSY;
		busy =!(busy & 0x01);        
	}
	while(busy);   
	driver_delay_xms(200);                       
}



void driver_delay_xms(unsigned long xms) {
	HAL_Delay(xms);
}

void driver_delay_us(unsigned int xus) {
	// TODO: Real implementation with a timer
	driver_delay_xms(1);
}
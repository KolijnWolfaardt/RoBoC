#include <xc.h>
#include "gpio.h"

void setup_gpio();
void led_write(int num);

void setup_gpio()
{
    //LED output pins
    TRISBbits.TRISB13   = 0;        //LED0
    TRISBbits.TRISB14   = 0;        //LED1
    TRISFbits.TRISF6    = 0;        //LED2
    TRISFbits.TRISF4    = 0;        //LED3
    TRISFbits.TRISF5    = 0;        //LED4
    TRISBbits.TRISB7    = 0;        //LED5
    
    //Remove Analog input
    //ADPCFG = 0b1111 1110 1010 0010;
    ADPCFG = 0xFeA2;
    
    //Button input pins
    TRISDbits.TRISD11 = 1;
    TRISDbits.TRISD10 = 1;
     
    //VSync is an input
    TRISDbits.TRISD9 = 1;
    //HRef is an input
    TRISGbits.TRISG9 = 1;
    //PCLK is named OE in the datasheet
    TRISDbits.TRISD8 = 1;
    //XCLK is named RCK in the datasheet 
    TRISEbits.TRISE4 = 1; 
    //Camera Data
    TRISD = TRISD | 0xFF;
    //Reset is an output
    PORTBbits.RB10 = 0;
    //PWDN is an output
    PORTBbits.RB11 = 0;    
}

void led_write(int num)
{
    LED5 = (num&0x01);
    LED4 = ((num>>1)&0x01);
    LED3 = ((num>>2)&0x01);
    LED2 = ((num>>3)&0x01);
    LED1 = ((num>>4)&0x01);
    LED0 = 0;
}
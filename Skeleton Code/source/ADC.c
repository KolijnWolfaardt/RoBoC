/* 
 * File:   ADC.c
 * Author: Kolijn
 *
 * Created on July 27, 2015, 2:54 PM
 */

#include <xc.h>
#include "adc.h"

void setup_adc();

void setup_adc();
void adc_enable();
void adc_disable();
void adc_sample();

/**
 * ADC Connection
 * 
 *      AN0 is connected to AN0/RB0
 *      AN1 is connected to AN2/RB2
 *      AN2 is connected to AN4/RB4
 *      AN3 is connected to AN6/RB6
 *      AN4 is connected to AN8/RB8
 *      AN5 is connected to AN3/RB3
 *
 * These connections are made so that each channel has its own S/H connected. 
 * AN5 (AN3 in the datasheet) is connected to a different SAR core 
 */

void ConvPairHandler0(void);
void ConvPairHandler1(void);

int AD0 = 0;
int AD1 = 0;
int AD2 = 0;
int AD3 = 0;
int AD4 = 0;
int AD5 = 0;
int ADstatus = 0;

void setup_adc()
{    
    //Before this function is called the auxiliary clock must be configured
    
    ADCONbits.ADSIDL    = 0;    //Continue in Idle mode
    ADCONbits.SLOWCLK   = 1;    //ADC is clocked by the auxiliary PLL.
    ADCONbits.FORM      = 0;    //Set the output to integer. (0000 00dd dddd dddd)
    ADCONbits.ADCS      = 7;    //Clock divider is 8 (15 MHz)
    //ADCONbits.SEQSAMP   = 1;    //Sequential sampling;
    //ADCONbits.ASYNCSAMP = 1;    //Asynchronous sampling
    ADCONbits.EIE       = 0;    //Disable early interrupt
    
    ADSTAT              = 0;
    
    //ADC Channel 0
    ADCPC0bits.TRGSRC0   = 1; //Global individual trigger
    ADCPC0bits.IRQEN0    = 1; //Enable IRQ
    
    //ADC Channel 2
    ADCPC1bits.TRGSRC2   = 1; //Global individual trigger
    ADCPC1bits.IRQEN2    = 1; //Enable IRQ
    
    //ADC Channel 4
    ADCPC2bits.TRGSRC4   = 1; //Global individual trigger
    ADCPC2bits.IRQEN4    = 1; //Enable IRQ
    
    //ADC Channel 6
    ADCPC3bits.TRGSRC6   = 1; //Global individual trigger
    ADCPC3bits.IRQEN6    = 1; //Enable IRQ
    
    //ADC Channel 8
    //ADCPC4bits.TRGSRC8   = 1; //Global individual trigger
    //ADCPC4bits.IRQEN8    = 1; //Enable IRQ
    
    //*(&ADCPC3 +2) = ADCPC3;  //Magic
    /*
     * For some reason MPLABX doesn't think the dsPIC33FJ32GS606 has a ADCPC4 
     * register. The register should be located at 0x312, but doesn't show in 
     * the debugger, or in the include file. So take ADCPC3 (0x0310) add two to
     * the address, and assign it the same value as ADCPC3
     */
    
    //ADC Channel 3
    ADCPC1bits.TRGSRC3   = 1; //Global individual trigger
    ADCPC1bits.IRQEN3    = 1; //Enable IRQ
        
    IPC3bits.ADIP = 0x02; //Priority
    IFS0bits.ADIF = 0; //Clear the interrupt flag
    IEC0bits.ADIE = 1; //Enable the interrupt
}

/*
 * Enable the ADC conversion
 */
void adc_enable()
{
    //Enable the ADC channel
    ADCONbits.ADON = 1;    //Turn the ADC on
}


/*
 * Disable the ADC conversion
 */
void adc_disable()
{
    ADCONbits.ADON = 0;    //Turn the ADC on
}

void adc_sample()
{
    //Clear the flag
    ADstatus = 0;
    
    //Set the global sampling command
//    ADCPC0bits.SWTRG0 = 1;  //Start AN0 and AN1
    ADCPC0bits.SWTRG1 = 1;  //Start AN2 and AN3
//    ADCPC1bits.SWTRG2 = 1;  //Start AN4 and AN5
//    ADCPC1bits.SWTRG3 = 1;  //Start AN6 and AN7
//    ADCPC2bits.SWTRG4 = 1;  //Start AN8 and AN9
}


/*
 * To check when the AD is done, check if ADstatus == 15
 * 
 */
void __attribute__((interrupt(auto_psv))) _ADCInterrupt(void)
{
    //Check which bit it
    if (ADSTATbits.P0RDY == 1)
    {
        AD0 = ADCBUF0;
        ADstatus = ADstatus | AD_channel0;
        ADSTATbits.P0RDY = 0;
    }
    if (ADSTATbits.P1RDY == 1)
    {
        AD1 = ADCBUF2;
        AD5 = ADCBUF3;
        ADstatus = ADstatus | AD_channel1;
        ADSTATbits.P1RDY = 0;
    }
    if (ADSTATbits.P2RDY == 1)
    {
        AD2 = ADCBUF4;
        ADstatus = ADstatus | AD_channel2;
        ADSTATbits.P2RDY = 0;
    }
    if (ADSTATbits.P3RDY == 1)
    {
        AD3 = ADCBUF6;
        ADstatus = ADstatus | AD_channel3;
        ADSTATbits.P3RDY = 0;
    }
    if (ADSTATbits.P4RDY == 1)
    {
        AD4 = ADCBUF8;
        ADstatus = ADstatus | AD_channel4;
        ADSTATbits.P4RDY = 0;
    }
    
    
    IFS0bits.ADIF = 0; //Clear the flag
}
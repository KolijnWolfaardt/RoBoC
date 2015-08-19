/* 
 * File:   adc.h
 * Author: Kolijn
 *
 * Created on July 27, 2015, 3:14 PM
 */

#ifndef ADC_H
#define	ADC_H

extern int AD0;
extern int AD1;
extern int AD2;
extern int AD3;
extern int AD4;
extern int AD5;
extern int ADstatus;

void setup_adc();
void adc_enable();
void adc_disable();
void adc_sample();

#define AD_channel0 1
#define AD_channel1 2
#define AD_channel2 4
#define AD_channel3 6
#define AD_channel4 8
#define AD_channel5 16

#endif	/* ADC_H */


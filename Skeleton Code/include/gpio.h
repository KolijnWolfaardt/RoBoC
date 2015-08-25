/* 
 * File:   gpio.h
 * Author: Kolijn
 *
 * Created on May 31, 2015, 7:58 AM
 */

#ifndef GPIO_H
#define	GPIO_H


#define LED0 LATBbits.LATB13
#define LED1 LATBbits.LATB14
#define LED2 LATFbits.LATF6
#define LED3 LATFbits.LATF4
#define LED4 LATFbits.LATF5
#define LED5 LATBbits.LATB7

#define BUT0 PORTDbits.RD11
#define BUT1 PORTDbits.RD10

#define SERVO_1 PORTEbits.RE5
#define SERVO_2 PORTEbits.RE7



#define SIO_C       PORTGbits.RG2
#define SIO_D       PORTGbits.RG3
//VSyn is an input
#define VSYNC       PORTDbits.RD9
//HRef is an input
///Href and PCLK (Previously OE) are swapped
#define HREF        PORTDbits.RD8
//PCLK is named OE in the spreadsheet
//PCLK (previously OE) and Href are swapped
#define PCLK        PORTGbits.RG9
//XCLK is named RCK in the spreadsheet 
#define XCLK        LATEbits.LATE4 
#define CAM_DATA    PORTD
#define RESET       LATBbits.LATB10
#define PWDN        LATBbits.LATB11

#define MOT1_D1 PORTEbits.RE0
#define MOT1_D2 PORTEbits.RE1
#define MOT1_ENC PORTBbits.RB1
#define MOT2_D1 PORTEbits.RE2
#define MOT2_D2 PORTEbits.RE3
#define MOT2_ENC PORTBbits.RB5

#define SPISS PORTEbits.RE6

void setup_gpio();
void led_write(int num);

#endif


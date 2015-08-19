/* 
 * File:   hardware_config.h
 * Author: Kolijn
 *
 * Created on May 28, 2015, 5:49 PM
 */

#ifndef HARDWARE_CONFIG_H
#define	HARDWARE_CONFIG_H


// DSPIC33FJ32GS606 Configuration Bit Settings

// 'C' source line config statements

// DSPIC33FJ32GS606 Configuration Bit Settings

// 'C' source line config statements

// FBS
#pragma config BWRP = WRPROTECT_OFF     // Boot Segment Write Protect (Boot Segment may be written)
#pragma config BSS = NO_FLASH           // Boot Segment Program Flash Code Protection (No Boot program Flash segment)

// FGS
#pragma config GWRP = OFF               // General Code Segment Write Protect (General Segment may be written)
#pragma config GSS = OFF                // General Segment Code Protection (General Segment Code protect is disabled)

// FOSCSEL
#pragma config FNOSC = PRIPLL           // Oscillator Source Selection (Primary Oscillator (XT, HS, EC) with PLL)
#pragma config IESO = ON                // Internal External Switch Over Mode (Start up device with FRC, then switch to user-selected oscillator source)

// FOSC
#pragma config POSCMD = HS              // Primary Oscillator Source (HS Crystal Oscillator Mode)
#pragma config OSCIOFNC = ON            // OSC2 Pin Function (OSC2 is general purpose digital I/O pin)
#pragma config FCKSM = CSECMD           // Clock Switching Mode bits (Clock switching is enabled,Fail-safe Clock Monitor is disabled)

// FWDT
#pragma config WDTPOST = PS32768        // Watchdog Timer Postscaler (1:32,768)
#pragma config WDTPRE = PR128           // WDT Prescaler (1:128)
#pragma config WINDIS = OFF             // Watchdog Timer Window (Watchdog Timer in Non-Window mode)
#pragma config FWDTEN = OFF             // Watchdog Timer Enable (Watchdog timer enabled/disabled by user software)

// FPOR
#pragma config FPWRT = PWR1             // POR Timer Value (Disabled)
#pragma config ALTSS1 = ON              // Enable Alternate SS1 pin bit (SS1A is selected as the I/O pin for SPI1)
#pragma config ALTQIO = ON              // Enable Alternate QEI1 pin bit (AQEA1, AQEB1, and AINDX1 are selected as inputs to QEI1)

// FICD
#pragma config ICS = PGD2               // Comm Channel Select (Communicate on PGC2/EMUC2 and PGD2/EMUD2)
#pragma config JTAGEN = OFF             // JTAG Port Enable (JTAG is disabled)

// FCMP
#pragma config HYST0 = HYST45           // Even Comparator Hysteresis Select (45 mV Hysteresis)
#pragma config CMPPOL0 = POL_FALL       // Comparator Hysteresis Polarity (for even numbered comparators) (Hysteresis is applied to falling edge)
#pragma config HYST1 = HYST45           // Odd Comparator Hysteresis Select (45 mV Hysteresis)
#pragma config CMPPOL1 = POL_FALL       // Comparator Hysteresis Polarity (for odd numbered comparators) (Hysteresis is applied to falling edge)

#endif	/* HARDWARE_CONFIG_H */


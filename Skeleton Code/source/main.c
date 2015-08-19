#include <stdlib.h>
#include <xc.h>

#include "hardware_config.h"
#include "adc.h"
#include "camera.h"
#include "gpio.h"
#include "servo.h"
#include "timer.h"
#include "uart.h"





/* =========================================================
 *              Function Prototypes
 * ====================================================== */
void configure_oscillator();
void delay();

/* =========================================================
 *              Global Variables
 * ====================================================== */


/* =========================================================
 *              Interrupt Service Routines
 * ====================================================== */
void __attribute__((interrupt(auto_psv))) _T1Interrupt(void)
{
    IFS0bits.T1IF       = 0;        //Clear flag
}


/* =========================================================
 *              Main function
 * ====================================================== */
int main(int argc, char** argv)
{
    configure_oscillator();
    setup_gpio(); 
    setup_uart();
    setup_pwm();
    setup_adc();
    
    // Uncomment to enable the ADC
    //adc_enable();
    
    
    //Timer1 controls the camera clock for now
    //setup_timer1();
    
    //Set the reset and power down pin on the camera
    RESET = 1;
    PWDN = 0;

    int stillDown = 0;
    
    //Use the SPI_SS pin as an output
    TRISEbits.TRISE6 = 0; //output
    
    //Use the SPI_miso pin as an ouput
    TRISGbits.TRISG7 = 0;
    
    int i=0;
    for (i=0;i<30000;i++);

    ledWrite(6);

    setup_camera();  
    
    ledWrite(8);
    
    int num =0;
    
    while(1)
    {
        if (stillDown == 0)
        {
            if (BUT0 == 0)
            {
                delay();
                LED1 = !LED1;
                stillDown = 1;

            }
            if (BUT1 == 0)
            {
                delay();
                LED1 = !LED1;
                stillDown = 1;
                U1TXREG = num;
                num--;
            }
        }
        else    //One of the buttons is still down
        {
            if (BUT0 == 1 && BUT1 == 1)
            {
                stillDown = 0;
            }
        }
        
        while(rx_flag==0);
        capture_camera();
        rx_flag=0;
    }
    
}

/*
 * This function configures the oscillator. The main oscillator is driven by an 
 * on-board 10 MHz crystal oscillator. This is first divided by 2, then 
 * multiplied by 40 up to 200 MHz. This clock is divided by 4 down to 50 MHz, 
 * providing the internal Clock.
 * 
 * The secondary oscillator is driven by an internal 7.5 MHz RC oscillator. This
 * is multiplied by 16 up to 120 MHz, and then divided by 64. This clock 
 * provides the clock for the PWM and the ADC.
 */
void configure_oscillator()
{
    //Set up the primary oscillator to 50 MIPS
    CLKDIVbits.PLLPRE=0;        // PLLPRE (N2) 0=/2
    PLLFBD=40;                  // pll multiplier (M) = +2
    CLKDIVbits.PLLPOST=0;       // PLLPOST (N1) 0=/2
    while(!OSCCONbits.LOCK);    // wait for PLL ready
    
    //Set up the auxiliary clock for the PWM and ADC
    ACLKCONbits.FRCSEL      = 1;    //Input clock determined by FRCCLK
    ACLKCONbits.SELACLK     = 1;    //Primary PLL provides the source clock for 
    
    ACLKCONbits.APSTSCLR    = 0b001;    //Divide by 64
    ACLKCONbits.ENAPLL      = 1;    //Enable the PLL (force re-lock))
    
    while (ACLKCONbits.APLLCK == 0); //Will be in lock
}

void delay()
{
    int i;
    for (i=0; i< 1000; i++);
}


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

/* =========================================================
 *              Global Variables
 * ====================================================== */
int but0_down = 0;
int but1_down = 0;
int led_number = 0;

/* =========================================================
 *              Interrupt Service Routines
 * ====================================================== */



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
    setup_timer_1();
    setup_camera(); 
    
    // Uncomment to enable the ADC
    //adc_enable();
    
    //THis is for camera debugging
    //Use the SPI_SS pin as an output
    TRISEbits.TRISE6 = 0; 
    //Use the SPI_miso pin as an ouput
    TRISGbits.TRISG7 = 0;
   
    while(1)
    {
        //Check for button 0
        if (but0_down == 0)
        {
            if (BUT0 == 0)
            {
                led_number++;
                led_write(led_number);
                
                but0_down = 1;
            }
        }
        else
        {
            if (BUT0 == 1)
            {
                but0_down = 0;
            }
        }
        
        //Check for button 1
        if (but1_down == 0)
        {
            if (BUT1 == 0)
            {
                led_number--;
                led_write(led_number);
                
                but1_down = 1;
            }
        }
        else
        {
            if (BUT1 == 1)
            {
                but1_down = 0;
            }
        }
        
        //Check the milliseconds
        if (millis()>10)
            LED0 = 0;
        else
            LED0 =1;

        
        if(rx_flag==1)
        {
            capture_camera();
            rx_flag=0;
        }
    }
    
}



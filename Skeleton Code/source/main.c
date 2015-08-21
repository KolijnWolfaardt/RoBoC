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
void delay();

/* =========================================================
 *              Global Variables
 * ====================================================== */


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
    

    /*
    This wil turn the alternating LEDs on and off
    */
    ledWrite(0x15);

    while(1);    
}

void delay()
{
    int i;
    for (i=0; i< 1000; i++);
}


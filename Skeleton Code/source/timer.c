#include <xc.h>

void setup_timer1();

void setup_timer1()
{
    T1CONbits.TON       = 0;        //Turn the timer off
    T1CONbits.TSIDL     = 0;        //Continue in idle mode
    T1CONbits.TGATE     = 0;        //Gated time accumulation is disabled
    T1CONbits.TCKPS     = 0b1;      //1 pre scaler
    T1CONbits.TSYNC     = 0;        //This bit is ignored
    T1CONbits.TCS       = 0;        //Use the internal clock    
    PR1                 = 10000;
    
    IFS0bits.T1IF       = 0;        //Clear flag
    IEC0bits.T1IE       = 1;        //Enable the interrupt
    
    T1CONbits.TON       = 1;        //Turn the timer on
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

/* 
 * File:   servo.c
 * Author: Kolijn
 *
 * Created on July 20, 2015, 11:13 PM
 */

#include <xc.h>
#include "servo.h"


void setup_pwm();
void set_servo_1(int value);
void set_servo_2(int value);
void set_motor_1(int direction, int speed);
void set_motor_2(int direction, int speed);

/*
 *  Regarding the hardware and the connections
 *
 *      PWM1 is connected to PWM3H/RE5
 *      PWM2 is connected to PWM4H/RE7
 * 
 *      Motor 1 is connected to pins PWM1L and PWM1H
 *      Motor 2 is connected to pins PWM2L and PWM2H
 * 
 * 
 * To run the PWM or the ADC modules the auxiliary clock needs to be configured
 * This clock is derived from the internal RC oscillator. The on-board 10MHz 
 * oscillator as well as the post-pll clock are too fast to use. The internal 
 * RC runs at 7.5 MHZ, and is multiplied by 16 up to 120MHz. In order to run the
 * ADC at max speed the clock is not divided. It is up to the PWM module to 
 * divide the clock further.
 * 
 * 
 *      Servo control
 * 
 * To control a servo, a PWM signal of 20ms (50Hz) has to be sent. A duty cycle
 * of 1ms is the minimum position, and 2ms is the maximum position.
 * 
 * The PWMCON2 divider is set to 64. With the aux clock division of 2 this gives
 * a speed of 1.875 MHz. The Servo must count to 37500. This is still in the 
 * range of the unsigned 16 bit counter.  The min and max values are 1875 and
 * 3750. For a 180 degree servo this should be equal to 0.096 degrees per step. 
 * 
 *      Motor Control
 * The motors are driven at 25 KHz, in order to avoid the audible spectrum. The
 * Motor driver LV8405 supports a maximum of 200KHz. The motor driver has two 
 * inputs, IN1 and IN2 per motor. To drive the motor forwards IN1 needs to be 
 * high with the other input a PWM input. To drive the motor in revers, the 
 * other pin needs to be high with the first pin must be the PWM pin.
 * 
 * To achieve this the override control of the PWM module is used. A single 
 * function sets the the direction and the speed. The ownership of the pins 
 * cannot be set after the PWM is enabled.
 * 
 * The motor uses the same clock as the servo, but with a different period. To
 * drive the motor as 25KHz, the count is set to 75. 
 * 
 *      Errata
 * If the PTCON2 register is not zero, the PWM module may or may not initialize 
 * from an override state. To circumvent this, set the IO Control register 
 * IOCONx via word mode, ie IOCONx = IOCONx & 0xFCFF;
 * This error affects all silicon versions.
 * 
 */



/*
 * Initialize the PWM module for both the Servos and the motors. The motors are 
 * initialized to 25KHz
 */
void setup_pwm()
{     
    PTPER   = 37500;
    
    //Motor1
    IOCON1bits.PENH         = 1;    // PWM controls High pin
    IOCON1bits.PENL         = 1;    // PWM controls Low pin
    IOCON1bits.PMOD         = 0b00;   // Complementary
    IOCON1bits.SWAP         = 0;    // Don't swap pins
    PWMCON1bits.ITB         = 1;    // Use PHASE1 and STPER1 for the timing
    PWMCON1bits.MDCS        = 0;    // PDC1 provides duty cycle
    PHASE1                  = 75;
    
    //Motor2
    IOCON2bits.PENH         = 1;    //PWM controls High pin
    IOCON2bits.PENL         = 1;    //PWM controls Low pin
    IOCON2bits.PMOD         = 0b00; // Complementary
    IOCON2bits.SWAP         = 0;    // Don't swap pins
    PWMCON2bits.ITB         = 1;    //Use PHASE2 and STPER2 for the timing
    PWMCON2bits.MDCS        = 0;    //PDC2 provides the duty cycle.
    PHASE2                  = 75;
    
    //Servo 1
    IOCON3bits.PENH         = 1;    //PWM controls High pin
    IOCON3bits.PMOD         = 0b11; //Independent
    PWMCON3bits.ITB         = 1;    //Use PHASE3 and STPER3 for the timing
    PWMCON3bits.MDCS        = 0;    //PDC3 provides the duty cycle.
    PHASE3 = 37500;
    
    //Servo 2
    IOCON4bits.PENH         = 1;    //PWM controls High pin
    IOCON4bits.PENL         = 0;    //TRIS controls low pin
    IOCON4bits.PMOD         = 0b11; //Independent
    
    
    //Timer output
    IOCON3bits.PENL         = 0;    //PWM controls Low pin
    
    PTCONbits.PTEN          = 1;    //Enable the module
    
    PTCON2bits.PCLKDIV      = 0b011;

    int halfPoint = (MAX_PWM_VALUE-MIN_PWM_VALUE)/2 + MIN_PWM_VALUE;
    set_servo_1(halfPoint);
    set_servo_2(halfPoint);
    set_motor_1(MOT_BRAKE,0);
    set_motor_2(MOT_BRAKE,0);
}


/**
 * Set servo 1 to the specified value. The value has to be between 0 and 1800.
 * If value exceeds this range the maximum or minimum will be set instead. 
 * Servo 2 is connected to PWM3H/RE5
 */
void set_servo_1(int value)
{
    int angle = value + MIN_PWM_VALUE;
    
    //Check that the value is in the acceptable limits
    if (angle < MIN_PWM_VALUE)
    {
        PDC3 = MIN_PWM_VALUE;
        return;
    }    
    
    if (angle > MAX_PWM_VALUE)
    {
        PDC3 = MAX_PWM_VALUE;
        return;
    }
    
    PDC3 = angle;
    return;
}

/**
 * Set servo 2 to the specified value. The value has to be between 0 and 1800.
 * If value exceeds this range the maximum or minimum will be set instead.
 * Servo 2 is connected to PWM4H/RE7
 */
void set_servo_2(int value)
{
    int angle = value + MIN_PWM_VALUE;
    
    //Check that the value is in the acceptable limits
    if (angle < MIN_PWM_VALUE)
    {
        PDC4 = MIN_PWM_VALUE;
        return;
    }    
    
    if (angle > MAX_PWM_VALUE)
    {
        PDC4 = MAX_PWM_VALUE;
        return;
    }
    
    PDC4 = angle;
    return;
}

/*
 * Set the speed and direction of motor 1. Motor 1 is connected to pins PWM1L 
 * and PWM1H. When this function is used the init_motors() function should 
 * already be called. The speed value can be between 0 and 1000
 */
void set_motor_1(int direction, int speed)
{    
    //Take the direction to figure out which 
    int newSpeed = ((speed * 75) / 100);
    
    if (direction == MOT_FORWARDS)
    {
        //This can't be used due to silicon fault
        //IOCON1bits.OVRENH = 1;  //Set the output of the high pin
        //IOCON1bits.OVRENL = 0;  //Pwm on low pin
        //IOCON1bits.OVRDAT = 0b11;
        IOCON1 = (IOCON1 & 0xfc3f)| 0b1011<<6;
        PDC1 = newSpeed;
    }
    if (direction == MOT_REVERSE)
    {
        //This can't be used due to silicon fault
        //IOCON1bits.OVRENH = 0; //PWM on high pin
        //IOCON1bits.OVRENL = 1; //Set the output of the low pin
        //IOCON1bits.OVRDAT = 1;
        IOCON1 = (IOCON1 & 0xfc3f)| 0b0111<<6;
        PDC1 = 75 - newSpeed;
    }
    if (direction == MOT_BRAKE)
    {
        //This can't be used due to silicon fault
        //IOCON1bits.OVRENH = 1;  //Set output for both pins
        //IOCON1bits.OVRENL = 1;
        //IOCON1bits.OVRDAT = 0; //Output should be low
        IOCON1 = (IOCON1 & 0xfc3f)| 0b1100<<6;
        PDC1 =0;
    }
}

/*
 * Set the speed and direction of motor 1. Motor 1 is connected to pins PWM2L 
 * and PWM2H. When this function is used the init_motors() function should 
 * already be called. The speed value can be between 0 and 100
 */
void set_motor_2(int direction, int speed)
{    
    //Take the direction to figure out which 
    int newSpeed = ((speed * 75) / 100);
    if (direction == MOT_FORWARDS)
    {
        //This can't be used due to silicon fault
        //IOCON1bits.OVRENH = 1;  //Set the output of the high pin
        //IOCON1bits.OVRENL = 0;  //Pwm on low pin
        //IOCON1bits.OVRDAT = 0b11;
              
        IOCON2 = (IOCON2 & 0xfc3f)| 0b1011<<6;
        PDC2 = newSpeed;
    }
    if (direction == MOT_REVERSE)
    {
        //This can't be used due to silicon fault
        //IOCON1bits.OVRENH = 0; //PWM on high pin
        //IOCON1bits.OVRENL = 1; //Set the output of the low pin
        //IOCON1bits.OVRDAT = 0b11;
        
        IOCON2 = (IOCON2 & 0xfc3f)| 0b0111<<6;
        PDC2 = 75 - newSpeed;
    }
    if (direction == MOT_BRAKE)
    {
        //This can't be used due to silicon fault
        //IOCON1bits.OVRENH = 1;  //Set output for both pins
        //IOCON1bits.OVRENL = 1;
        //IOCON1bits.OVRDAT = 0; //Output should be low
        
        IOCON2 = (IOCON2 & 0xfc3f)| 0b1100<<6;
        PDC2 =0;
    }
}

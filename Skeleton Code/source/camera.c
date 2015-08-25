#include <xc.h>
#include "gpio.h"
#include "uart.h"
#include "camera.h"
#include "timer.h"
#define indicate0 LATGbits.LATG7 = 0
#define indicate1  LATGbits.LATG7 = 1

void setup_camera();
void capture_camera();
char read_camera_register(char addr);
void write_camera_register(char address, char data);

int cam_href_counter = 0;
int cam_pixel_counter = 0;

int i2c_flag = 0;

char zeros[] = {0,0,0,0,0};

void setup_camera()
{
    //Enable the camera module.
    RESET = 1;
    PWDN = 0;
    
    //The camera requires a delay before it can be communicated with.
    int i=0;
    for (i=0;i<30000;i++);
    
    //Setup Timer5 to count th pClk inputs
    T5CONbits.TSIDL         = 0;        //Continue in Idle mode;
    T5CONbits.TGATE         = 0;        //Gated mode disabled, but this bit is ignored
    T5CONbits.TCKPS         = 0;        //1:1 prescaler
    T5CONbits.TCS           = 1;        //Count external clock signal
    PR5                     = 3;      //Interrupt after 100 counts
 
    IFS1bits.T5IF           = 0;        //Clear flag
    IEC1bits.T5IE           = 1;        //Enable the interrupt
    IPC7bits.T5IP           = 0x7;      //High priority
    
    //Setup Interrupt 1 to detect VSync interrupts
    //Do not enable the interrupt yet. This will be done by capture_camera
    IFS1bits.INT1IF         = 0;        //Clear the flag
    IPC5bits.INT1IP         = 7;        //Highest priority
    INTCON2bits.INT1EP      = 0;        //Interrupt on positive edge
    
    //Setup Interrupt 2 to detect the hRef interrupts
    IFS1bits.INT2IF         = 0;
    INTCON2bits.INT2EP      = 1;        //Interrupt on negative edge
    
    //Set the baud rate
    I2C1BRG                 = 200;      //Set the baud rate to work at 100KHz
    
    //Setup the I2C lines to communicate with the camera
    I2C1CONbits.I2CSIDL     = 0;        //Continue in Idle mode
    I2C1CONbits.SCLREL      = 1;        //Release SLCx clock in slave mode
    I2C1CONbits.IPMIEN      = 0;        //IPMI enable
    I2C1CONbits.A10M        = 0;        //7 bit slave address
    I2C1CONbits.DISSLW      = 0;        //Slew Rate control disabled
    I2C1CONbits.IPMIEN      = 0;        //Disable intelligent peripheral mode
    I2C1CONbits.I2CEN       = 1;        //Enable the I2C module
    
    IFS1bits.MI2C1IF        = 0;        //Clear the flag
    IEC1bits.MI2C1IE        = 1;        //Enable the interrupts
    
    //Setup very small resolution, very small screen
    write_camera_register(COM3,COM3_ENABLE_SCALING);
    write_camera_register(COM7, COM7_SELECT_QCIF | COM7_YUV); // Select QVGA and RGB mode
    write_camera_register(COM10,COM10_PCLK_STILL); // Disable the PCLK during horizontal blank
    write_camera_register(COM8, COM8_AGC_ENABLE | COM8_AEC_ENABLE | COM8_AWB_ENABLE); //Disable AGC, AWB, and AEC
    //write_camera_register(COM8, 0x00); //Disable AGC, AWB, and AEC
    write_camera_register(0x1B,0x0);    //NoDelay
    write_camera_register(0x2A,0x5C);
    write_camera_register(0x2B,0x55);
    write_camera_register(COM9,0b000); //AGC limit to 2x
    write_camera_register(DBLV,DBLV_PLL_x8); //Set the PLL to 4x, up to 40MHz
    //write_camera_register(SCALING_PCLK_DIV,SCALING_PCLK_DIV_ENABLE | SCALING_PCLK_DIV_DIV4);
    write_camera_register(CLKRC,0x01);
}

char read_camera_register(char addr)
{
    int i =0;
    //Start bit
    i2c_flag = 0;               //Clear the flag
    I2C1CONbits.SEN  = 1;       //Initiate a start condition.
    while (i2c_flag == 0);      //Wait for it to be done   
    for (i=0;i<50;i++);

    //Transmit the DEvice ID
    I2C1TRN = CAM_DEVICE_ID << 1;         
    while(I2C1STATbits.TRSTAT == 1); 

    //Transmit the Data Address
    I2C1TRN = addr; 
    while(I2C1STATbits.TRSTAT == 1);

    //Stop bit
    i2c_flag = 0;
    I2C1CONbits.PEN = 1; //Generate a stop condition
    while (i2c_flag == 0);

    //Wait a little
    for (i=0;i<100;i++);

    //Start bit
    i2c_flag = 0;               //Clear the flag
    I2C1CONbits.SEN  = 1;       //Initiate a start condition.
    while (i2c_flag == 0);      //Wait for it to be done    
    for (i=0;i<50;i++);

    //Transmit the DEvice ID
    I2C1TRN = CAM_DEVICE_ID <<1 | 0x1;         
    while(I2C1STATbits.TRSTAT == 1); 

    //Read the data
    I2C1CONbits.RCEN    =1;//Wait for data
    while(I2C1CONbits.RCEN == 1);

    //Stop bit
    i2c_flag = 0;
    I2C1CONbits.PEN = 1; //Generate a stop condition
    while (i2c_flag == 0);
    
    return I2C1RCV;
}

/*
 * This function writes a single value to the camera register specified.
 */
void write_camera_register(char address, char data)
{
    int i =0;
    //Start bit
    i2c_flag = 0;               //Clear the flag
    I2C1CONbits.SEN  = 1;       //Initiate a start condition.
    while (i2c_flag == 0);      //Wait for it to be done   
    for (i=0;i<50;i++);

    //Transmit the Device ID
    I2C1TRN = CAM_DEVICE_ID << 1;         
    while(I2C1STATbits.TRSTAT == 1); 

    //Transmit the Data Address
    I2C1TRN = address; 
    while(I2C1STATbits.TRSTAT == 1);
    
    //Transmit the data
    I2C1TRN = data; 
    while(I2C1STATbits.TRSTAT == 1);

    //Stop bit
    i2c_flag = 0;
    I2C1CONbits.PEN = 1; //Generate a stop condition
    while (i2c_flag == 0);
}


/*
 * Call this function to capture and send one frame of the camera. This
 * function writes data directly to the tx_buffer, so make sure transmission was
 * finished before calling this function.
 */
void capture_camera()
{
    //Reset the number of horizontal lines that have passed.
    cam_href_counter = 0;
    
    //Wait for a vertical sync
    IFS1bits.INT2IF     = 0;    //Clear the flag
    IEC1bits.INT2IE     = 1;    //Enable the interrupt
    int prevmillis = millis();
    while (prevmillis == millis()); //wait for them to be different

    //The counter is incremented by the interrupt functions.
    //This while should probably have a reset, waiting for a certain time or 
    //until another v_sync pulse is detected.
    while (cam_href_counter<140 && prevmillis != millis()); //wait. Interrupts do the rest
    
    //disable both
    IEC1bits.INT1IE     = 0;
    T5CONbits.TON       = 0;
    
    //Read some value from the camera, and write them back
    
    
    cam_href_counter = 0;
    
    TMR5 = 0; //Clear the timer counter, for next time.
}

//These interrupt routines are used for the camera
void __attribute__((interrupt(auto_psv))) _INT2Interrupt(void)
{
    IFS1bits.INT1IF = 0;    //Clear the other flag
    IEC1bits.INT1IE = 1;    //Enable the HRef interrupt
    IFS1bits.INT2IF = 0;    //Clear the flag
    IEC1bits.INT2IE = 0;    //Disable the interrupt
    
    send_array(zeros,5);
}

//HREF interrupt
//This will fire when href goes from low to high.
void __attribute__((interrupt(auto_psv))) _INT1Interrupt(void)
{
    indicate1;
    
    IFS1bits.INT1IF = 0; //Clear the flag
    //IEC1bits.INT1IE = 0; //Disable the interrupt

    indicate0;
    
    if (cam_href_counter%2 == 0)
    {
        //This is required to delay until the second byte,
//        while (PCLK == 1);
//        while (PCLK == 0);
        cam_pixel_counter  = 0;
        TMR5 = 0;   //Clear the timer
        IFS1bits.T5IF = 0;  //Clear the flag
        IEC1bits.T5IE = 1;  //Enable the timer interrupt
        T5CONbits.TON = 1; //Turn the timer on
    }
    cam_href_counter++;
    
}

void __attribute__((interrupt(auto_psv))) _T5Interrupt(void)
{   
    
    LATEbits.LATE6  = 1;
    tx_buffer[cam_pixel_counter]=PORTD;
    IFS1bits.T5IF       = 0;        //Clear flag 
    
    cam_pixel_counter++;
    
    if (cam_pixel_counter >= 88)
    {
        IEC1bits.T5IE = 0;  //Disable the Timer5 interrupt
        send_special(88);
    }
    LATEbits.LATE6  = 0;

}

void __attribute__((interrupt(auto_psv))) _MI2C1Interrupt(void)
{
    i2c_flag = 1;
    IFS1bits.MI2C1IF = 0;
}
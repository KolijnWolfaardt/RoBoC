/* 
 * File:   UART.c
 * Author: Kolijn
 *
 * Created on May 31, 2015, 7:56 AM
 */
#include <xc.h>
#include "uart.h"

void setup_uart();
void send_value(int txValue);
void send_array(char* data,int length);
void send_number(int number);

char rx_value = 0;
char rx_flag  = 0;

char tx_buffer[405];

char tx_flag  = 0;
int  tx_read  = 0;
int  tx_write = 0;

void setup_uart()
{
    U1MODEbits.UARTEN   = 0;        //Turn the UART off
    U1MODEbits.USIDL    = 0;        //Continue in idle mode
    U1MODEbits.IREN     = 0;        //Infrared decoder disabled
    U1MODEbits.RTSMD    = 1;        //U1RTS pin is in simplex mode
    U1MODEbits.UEN      = 0b00;     //Only U1TX and U1RX pins are used, control flow pins are used by port registers
    U1MODEbits.WAKE     = 0;        //No wake-up
    U1MODEbits.LPBACK   = 0;        //Loopback disabled
    U1MODEbits.ABAUD    = 0;        //Auto-baud disabled
    U1MODEbits.URXINV   = 0;        //Idle state is '1'
    U1MODEbits.BRGH     = 1;        //BRG generates 4 clocks per period
    U1MODEbits.PDSEL    = 0b00;     // 8 bit, no parity
    U1MODEbits.STSEL    = 1;        //One stop bit
    
    U1STAbits.UTXISEL1  = 0;       //Interrupt when one character is transferred to the TSR
    U1STAbits.UTXISEL0  = 0;
    U1STAbits.UTXINV    = 0;        //Idle state is 1
    U1STAbits.UTXBRK    = 0;        //Sync Break is disabled
    U1STAbits.UTXEN     = 1;        //Transmit is enabled
    U1STAbits.URXISEL   = 0b00;     //Interrupt when buffer has a character
    U1STAbits.ADDEN     = 0;        //Address detection mode is disabled
    
    //Baud rate is 1562000
    U1BRG               = 7;       // 25000000/(4 * 1562500) -1, and some manual adjustments
    
    
    IFS0bits.U1RXIF     = 0;        //Clear the flags
    IFS0bits.U1TXIF     = 0;
    
    IEC0bits.U1RXIE     = 1;        //Enable interrupts
    IEC0bits.U1TXIE     = 1;
    
    U1MODEbits.UARTEN   = 1;        //Turn the UART on
    U1STAbits.UTXEN     = 1;        // Enable UART TX
    
}

/*This function copies a given array to the transmit buffer. If a transmission 
 * was ongoing, it should continue. If it wasn't, this function should start it.
 * 
 */
void send_array(char data[],int length)
{
    int j=0;
    int prevWrite = tx_write;

    
    //Assume the UART is not busy
    //Load the rest of the data
    for (j=0; j<length; j++)
    {
        tx_buffer[tx_write] = data[j];
        tx_write++;
        if (tx_write >= BUF_SIZE)
            tx_write = 0;
    }
    
    //If the old tx_write was equal to the tx_read, the UART was idling
    if (prevWrite == tx_read)
    {
        U1TXREG = tx_buffer[tx_read];
        tx_read++;
        if (tx_read >= BUF_SIZE)
            tx_read = 0;
    }
}

void send_special(int number)
{
    tx_read=1;
    tx_write=number;
    
    U1TXREG = tx_buffer[0];
}

void send_number(int number)
{
    char hexArr[4];
    int hexByte;
    int temp=number;
    int i;
    
    for (i=0; i<4 ;i++)
    {
        hexByte = (temp%16);
        temp = temp/16;
        
        if (hexByte>9)
            hexArr[i] = hexByte + 55; // This is 65(A) - 10
        else
            hexArr[i] = hexByte + 0x30;
    }
    
    temp = hexArr[0];
    hexArr[0] = hexArr[3];
    hexArr[3] = temp;
    
    temp = hexArr[1];
    hexArr[1] = hexArr[2];
    hexArr[2] = temp;
    
    send_array(hexArr,4);
}

void send_value(int txValue)
{
    U1TXREG = txValue;// & 0xff;
}


void __attribute__((interrupt(auto_psv))) _U1RXInterrupt(void)
{   
    rx_value = U1RXREG;
    rx_flag = 1;
    IFS0bits.U1RXIF = 0; //Clear the flag
}

void __attribute__((interrupt(auto_psv))) _U1TXInterrupt(void)
{
    if (!(tx_write == tx_read))
    {
        //Load the next value
        U1TXREG = tx_buffer[tx_read];
        tx_read++;
        if (tx_read >= BUF_SIZE)
            tx_read = 0;
    }
    
    IFS0bits.U1TXIF = 0; //Clear the flag
}

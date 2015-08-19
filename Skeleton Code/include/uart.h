/* 
 * File:   UART.h
 * Author: Kolijn
 *
 * Created on May 31, 2015, 7:56 AM
 */

#ifndef UART_H
#define	UART_H


#define BUF_SIZE 405

extern char rx_value;
extern char rx_flag;
extern char tx_buffer[BUF_SIZE];

void setup_uart();
void send_value(int txValue);
void send_array(char* data,int length);
void send_number(int number);
void send_special(int number);
#endif


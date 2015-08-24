---
layout: page
title:  "Skeleton Code"
date:   2015-08-01 12:00:00
categories: Tutorial
---

We provide some code to get you started programming the RoBoC board, without having to take too long to set up all the configurations yourself. This page describes the code, what it can do, and how to extend it. You will have to know a little bit about [PIC Programming](pic_programming.html) to extend the code.

The idea of the code is not to be comprehensive library, but rather serves as a starting point for your own code.

Structure
---------
The skeleton code is a series of c files, with their associated header files. Each c file is responsible for a different part of the micro. Some peripherals are grouped together, such as the timer and the clock configuration

Hardware Configuration
======================
The hardware configuration does a bunch of defines so that output pins are easier to access. This also allows you to change the output pin without having to change it everywhere in the code


GPIO
====
The GPIO configures the LED pins as outputs and the buttons as inputs. It also configures them as digital pins. When the PIC resets all possible analog pins are configured as analog, so that the PIC does not get damaged. 

The ledWrite function is used to quickly output a value to the LEDs

{% highlight c lineos=table %}
void setup_gpio();
void ledWrite(int num);
{% endhighlight %}

UART
====
The UART is used to communicate data to the computer, using the MCP2200 chip on the board. The UART peripheral has a small buffer, usually 4 bytes long. The UART c file defines an additional 64 byte buffer. Data is loaded into the buffer, and transmitted as soon as the UART is ready. The send_value function can be used to send a singular value. send_number is used to convert an integer to an ascii number.

{% highlight c lineos=table %}
void setup_uart();
void send_value(int txValue);
void send_array(char* data,int length);
void send_number(int number);
{% endhighlight %}



Timers
======
The timer sets up timer 1 as an example of how to setup the timer. The other function is used to configure the oscillator when the PIC starts. It only needs to be called once.

{% highlight c lineos=table %}
void setup_timer1()
void configure_oscillator()
{% endhighlight %}

PWM and Motor Control
=====================
The skeleton code sets up two outputs for servos and two outputs for motors. The servos run at 20Hz, and the motors at 25kHz.

{% highlight c lineos=table %}
void setup_pwm();
void set_servo_1(int value);
void set_servo_2(int value);
void set_motor_1(int direction, int speed);
void set_motor_2(int direction, int speed)
{% endhighlight %}

ADC
===
The ADC available in the dsPIC is a bit complex. Under idea circumstances all analog inputs should be sampled simultaneousl. In the dsPIC this is not directly possible, so individual pins can be sampled. There is an error in one of the registers of the PIC. This means that one pin cannot be used.

Camera
======
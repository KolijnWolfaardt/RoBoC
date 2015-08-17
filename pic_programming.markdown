---
layout: page
title:  "Pic Programming"
date:   2015-08-01 12:00:00
categories: Tutorial
---

This page explains some of the basics of PIC programming, how to configure the device, and how to configure the available peripherals. Many references will be made to the [PIC Datasheet and Family Reference Manuals](datasheets.html). This section assumes you have some basic programming knowledge, as well as an understanding of hex and binary numbering systems. 
Note that the explanation in this section focusses on the dsPIC33F, but many of the concepts are applicable in other PICs and indeed other microcontrollers.

Configuration Bits
==================
When the PIC boots there are some configuration bits that tells it how to boot. These bit specify things such as which programming pins are used and which clock source to use. The configuration bits can also be used to protect the firmware of the PIC, to stop you from reading the memory.




Memory organization
===================
PICs use a modified Havard architecture, meaning program and data memory spaces are sperate, and are written and read from in different ways. The memory oranization is described in section 4 of the datasheet.

Program Space
-------------
The dsPIC uses a 24-bit address for the program memory, meaning is can access addresses from 0x000000 (2^ 0 to 0xFFFFFF (2^23 -1). However only certain small sections of this address space is used. The rest of the memory isn't writable, and when read will read 0.

The program memory starts with space for a single instruction. This instruction is the first instruction that is executed, and is always a GOTO instruction. It causes the PIC to jump to a different memory position, and starts executing from there. 

Next in memory are the Interrupt Vector table and Alternate Interrupt Vector Table. When an interrupt occurs the PIC halts execution and branches to the correct interrupt address. The tables also store GOTO instructions, one for each interrupt vector.

The main program memory of the PIC starts at memory address 0x00200, and continues on to 0x5800. The bootloader is stored at the end of the program memory.

To read and write to program memory special instructions are used.

Data Space
----------
The data for the PIC is addressed using a 16-bit number.

The data space is divided into 4 different sections. The Special Function Registers, used to configure the peripherals are stored first. The rest of the memory is general purpose memory, which is divided into blocks called the X Data block, Y Data Block and DMA Ram. The X and Y data blocks are unique to dsPICs, and are used to perform special signal processing functions. The DMA Ram bock is used for Direct Memory Access. This allows peripherals to interface directly with memory without the CPU having to transfer the data.

Clock base
==========
The PIC can obtain its clock in several different ways. We are using a 10MHz external crystal. A crystal requires additional analog circuitry to produce a clock signal. The PIc has to be set up to enable the analog circuitry. Once a clock signal is obtained, it can be sent through a [Phase Lock Loop]() (PLL). The PLL multiplies the clock signal up to a higher frequency. After this the signal may be divided back down again to obtain a lower frequency

In the PIC we are using the clock is multiplied up to 200MHz, and then divided down to 50MHz. This provides the base clock for most of the peripherals.

The PIC can also obtain a clock from an oscillator. An oscillator requires a power input, and provides a square wave of a pre-determined frequency. The PIC also has an internal RC oscillator. This oscillator is not guaranteed to be accurate, but requires no external components.

Setting up peripherals
======================
A peripheral is anything that is not part of the main microcontroller core. This includes the timers, ADC, PWM and so on. Each peripheral has its own set of [Special Function Registers]() (SFR) used to configure the peripheral. The details of what to write in the register can be found in the Family Reference Manual for that peripheral. Each SFR has a dedicated position in memory. This means to write to a register you simply have to assign a value to that memory location.

	T1CON = 0x4F;

The names for the registers are defined by files provided by the compiler. The compiler allows you to set individual bits of the register as well. For example, turning Timer 1 on is achieved by setting bit 15 of the T1CON register to high (Page 218 of the datasheet). This bit has the mnemonic TON in the datasheet.

	T1CONbits.TON = 1;

By appending 'bits' to the register name the individual bits can be accessed. The compiler defines T1CONbits as a struct, allowing you to access the individual components inside the struct.

Example: Setting up Timer 1
---------------------------
This example will show you how to set up Timer 1. Suppose we want to use this timer to count milli-seconds, with a PIC running at 50MHZ. On page 217 of the [datasheet](datasheets.html) a block diagram for the timer is provided. Two possible inputs are shown: The timer can count using the external T1CK pin, or from the Fcy signal (Fcy denotes the internal clock signal of the PIC). We want to use the internal clock signal. This signal is routed through a prescaler, which divides the signal (/n). The signal follows two paths. It is routed through an and gate, to sync up with the external signal. The signal is also sent directly to a multiplexer, controlled by TGATE and TCS. We want to set the multiplexer to use the signal directly.
After the multiplexer the signal arrives ar TMR1, which is a counter. The counter is fed to a comparator, and compared with PR1. Is they are equal, the counter is reset, and the T1IF flag is set, depending on TGATE. 

We now have an idea of how to configure the Timer. Reading through the Family Reference manual gives us some more insights, and a code example. On page 11 (Example 11-1) the timer is set up to count using the internal clock. We need to adjust the values to count to milliseconds.

{% highlight c lineos=table %}
T1CONbits.TON = 0; // Disable Timer
T1CONbits.TCS = 0; // Select internal instruction cycle clock
T1CONbits.TGATE = 0; // Disable Gated Timer mode
T1CONbits.TCKPS = 0b00; // Select 1:1 Prescaler
TMR1 = 0x00;  // Clear timer register
PR1 = 9;  // Load the period value
IPC0bits.T1IP = 0x01; // Set Timer1 Interrupt Priority Level
IFS0bits.T1IF = 0; // Clear Timer1 Interrupt Flag
IEC0bits.T1IE = 1; // Enable Timer1 interrupt
T1CONbits.TON = 1; // Start Timer

/* Example code for Timer1 ISR */
void __attribute__((__interrupt__, no_auto_psv)) _T1Interrupt(void)
{
	/* Interrupt Service Routine code goes here */
	IFS0bits.T1IF = 0;  // Clear Timer1 Interrupt Flag
}
{% endhighlight %}

Interrupts
==========
Interrupts are used by peripherals to communicate back with the main program. When a specified event occurs in a peripheral a flag is set in a Special Function Register. If the specified interrupt is enabled, the program will jump to the interrupt function. 

Example: UART interrupt
-----------------------
The UART module can interrupt as soon as a byte is received in the buffer. To set up this interrupt three things need to be done. The interrupt must be enabled, the flag must be cleared, and an interrupt functions needs to be defined.

	IFS0bits.U1RXIF = 0;

This will clear the interrupt flag. If the flag is not cleared before the interrupt is enabled, there is a chance that the interrupt will happen as soon as it is enabled, causing unwanted effects.

	IEC0bits.U1RXIF = 1;

This enables the interrupt. There are various different interrupt enable registers, each containing bits for different interrupts.

{% highlight c lineos=table %}

int rx_value

void __attribute__((interrupt(auto_psv))) _U1RXInterrupt(void)
{   
    rx_value = U1RXREG;
    IFS0bits.U1RXIF = 0;
}
{% endhighlight %}

This code is executed every time and interrupt occurs. It looks like a normal c function, but it has an extra attribute set, to tell the compiler this is an interrupt. Additionally, the function has a very specific name.
The code copies the received value from U1RXREG to rx_value, and then clears the flag.


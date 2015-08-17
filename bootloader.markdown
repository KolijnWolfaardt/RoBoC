---
layout: page
title:  "Bootloader"
date:   2015-08-02 12:00:00
categories: 
---

We didn't want to supply everyone with their own programmers, since this would be too expensive. This meant that the boards had to be programmable by a bootloader. Most bootloaders work via usb to serial converters, something that had to be present on the board anyway.

One of the team members suggested using a camera for line following rather than infra red diodes. So we settled for a powerfull [dsPIC33F]("http://www.microchip.com/wwwproducts/Devices.aspx?product=dsPIC33FJ32GS606") chip. I have some previous experience with the dsPIC30F range, and they were much nicer to work with than normal pics. Two of the features I like from them are the multiple A/D conversion channels, and [bit-reversed memory addressing]("http://en.wikipedia.org/wiki/Bit-reversal_permutation#Applications").

The board had to feature a motor driver capable of driving at least two motors of about 0.6A each. Quick experiments with the motors suggested that the stall current is about 0.7A. A motor driver that we used previously is the L298 range. These are very easy to use, however, they require 5v, and use BJTs to switch the motors. The LV8405v that we found uses FETs to switch the motors. This makes it much more efficient. The IC is available in a 16 pin SSOP package. I was a bit suspicious of the small package switching that much current.



The Bootloader
-------------
The bootloader used for the board is an adapted version of the ds30 Bootloader. The bootloader starts when the PIC is reset, and waits for a command over the uart. If it receives a command it starts programming the PIC. Otherwise it continues on to the user application

The changs that were made from the original code is small. The configuration bits are changed and additional code that waits for the oscillator startup is added. Additionally an LED is turned on when the bootloader code is active, and another when the bootlaoder has finished programming the new user software.

Other Changes
=============
The bootloader code is written in assembly, and needs to be compiled using Microchips ASM30 compiler. I used the MPLAB IDE for this, which is MPLAB's older IDE.

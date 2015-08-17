---
layout: page
title:  "About the Board"
date:   2015-08-02 12:00:00
categories: 
---

The RoBoC board was developed for the Stellenbosch Robotics Club for use as the main controller board for robots. The board features a dsPic33F microcontroller, motor drivers and several expansion headers.


The Main IC on the board is a dsPIC33F. It operates as the brain of the robot, reading sensors and driving the robot based on their input. 

The serial connection to the computer is provided by a MCP2200 IC, microchip's equivalent to the FTDI chip. This IC converts serial messages to USB. We selected this chip because it worked out slightly cheaper than the FTDI chip. drivers are available for Windows, Linux and Mac.

The motor driver is a LV8405V-D. It is capable of driving 2 motors, with a maximum of 1.4 A. This should be adequate, since we measured the stall current of the motors to be around 0.7A.

The board has a series of expansion headers to the side, for you to connect our own devices to. There are headers for the ADC, UART and PWM. The board also features some LEDs and 2 input buttons.

The header on the bottom is intended for a camera, used for line following. You are free to connect your own devices there

---
layout: page
title:  "Camera"
date:   2015-08-01 12:00:00
categories: Tutorial
---

The board is designed with a header for a camera. The camera is an Omnivision OV7670. The camera IC is available on a small board, with all the optics, passive components and headers fitted. 

The camera provides data using 3 control lines and an 8-bit data bus. The control lines are V_ref, H_Sync and pclk. This closely mirrors a VGA output. The V-ref signal indicates a vertical jump, back to the top of the next frame. The H_sync signal is simmilar to H_ref but inverted. It will provide a low pulse when a horizontal jump is made. The pClk signal is the pixel clock signal, and provides a rising edge when data is available on the bus.

The camera can output data in two modes: RGB and YUV. Both of these store every pixel as a 16-bit value. To output this on the 8-bit bus, the higher and lower bytes are output one after the other.

One of the available versions of the board has a framebuffer IC on it. The framebuffer acts as a storage for slower devices, storing one frame until the device can read it out. The RoBoC board was desinged with the frame buffer in mind.


Adaptor board
-------------
We ordered a few of the camera boards for use, expecting one with a frame buffer. The cameras we received did not have frame buffers, but instead connected the camera IC directly to the output pins, using a slightly different pinout. Rather than reorder the cameras we designed a small adaptor board to remap the pins as well as add a few missing components.

 * Some of the pins were swapped around, to make interfacing with the camera easier

 * The camera required a clock signal input on the pClk input. The PIC can output a clock signal, but the pin is already in use. We added a 10MHz oscillator on the board.

 * The SCCD communication lines require pull-up resistors simmilar to an I2C communication bus.



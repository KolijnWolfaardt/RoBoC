---
layout: page
title:  "Camera"
date:   2015-08-01 12:00:00
categories: Tutorial
---

The board is designed with a header for a camera. The goal of the camera is to assist in line following making more advanced control possible. 

![The OV7670 Camera](./images/camera.png)

The camera we selected is an Omnivision OV7670. It is available on a small development board with all the optics, passive components and headers fitted. An additional version of the adapter board has a framebuffer IC on it. The framebuffer acts as a storage for slower devices, storing one frame until the device can read it out. The RoBoC board was desinged with the frame buffer in mind.

The camera provides data using 3 control lines and an 8-bit data bus. The control lines are *Vertical Sync* (vsync), *Horizontal Referece* (href) and *pixel clock* (pclk). This closely mirrors a VGA output. The vsync signal indicates a vertical jump, back to the top of the next frame. The H_sync signal is simmilar to H_ref but inverted. It will provide a low pulse when a horizontal jump is made. The pClk signal is the pixel clock signal, and provides a rising edge when data is available on the bus.

The camera is configured using the SCCD protocol. The protocol uses two lines: a clock line and a bi-directional data line. The SCCD communication is very simmillar to the I2C. It is used to configure the resolution and data format of the camera, as well as other settings such as Auto White balance and various image corrections.

The camera can output data in two modes: RGB and YUV. Both of these store every pixel as a 16-bit value. To output this on the 8-bit bus, the higher and lower bytes are output one after the other.



Adaptor board
-------------
We ordered a few of the camera boards for use, expecting one with a frame buffer. The cameras we received did not have frame buffers, but instead connected the camera IC directly to the output pins, using a slightly different pinout. Rather than reorder the cameras we designed a small adaptor board to remap the pins as well as add a few missing components.

 * Some of the pins were swapped around, to make interfacing with the camera easier

 * The camera required a clock signal input on the pClk input. The PIC can output a clock signal, but the pin is already in use. We added a 10MHz oscillator on the board.

 * The SCCD communication lines require pull-up resistors simmilar to an I2C communication bus.

Camera Output
-------------

Interfacing with the PIC
------------------------
The PIC is not fast enough to sample a full frame from the camera. Instead only the intensity of every pixel is sampled. If the data is sent to the computer this limits the mcu to every third line as well.

When the command is received to sample a frame, external interrupt is enabled. This will cause an interrupt as soon as the vsync line indicates a new frame. The interrupt in turn enables the href interrupt, which will cause an interrupt for every href pulse. This interrupt enables timer 5. Timer 5 counts from the external pin which is connected to the pixel clock line. When this interrupt is triggered the PIC samples a value.


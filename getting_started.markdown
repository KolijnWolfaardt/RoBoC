---
layout: page
title:  "Getting Started"
date:   2015-08-01 12:00:00
categories: Tutorial
---

This example will show you how to write a simple program, and flash it to the bootloader. You will need to install MPLABX and the C16 compiler. Both are availalble for free from Microchip's website.

A quick note about the bootloader
---------------------------------

Normally, microcontrollers are programmed using a dedicated programmer, such as the PICkit for Microchip, or the AVR usb-blaster for the AVR range. Buying a programmer can be expensive, so we opted to use a bootloader.

A bootloader is a special piece of code that runs before the main code on the IC. The bootloader listens for commands on the serial port. These commands are usually programming commands, but can also be used to erase or read the memory. If the bootloader received a command, it executes the command. If it does not receive a command, it continues on to the user's program.

The bootloader allows anyone to program the IC without dedicated hardware, using the right software. The bootloader we are using is the ds30 Loader. The specification for the protocol is open source, however, the computer software is closed source, and currently only works on Windows. 	

For more information about the bootloader see [here](bootloader.html)



Setting up a project
--------------------
The software we use to program the IC is MPLABX. It is Microchip's new version of their IDE. It is available for Windows, Linux and OS X. Note that you need to download a compiler seperately, as each family of devices use their own compiler. The compiler we are using is the C16x compiler.

* Download and install MPLABX
* Download and install the XC16 compiler. The free version does not offer any optimization.
* Open the IDE, go to File - New Project

![Screeshot pf MPLABX, showing new Project Screen](./images/tutorial/1_new_project.png)

* For the project type, select Standalone Project and click next
* Select the correct Device. You can use the Family drop-down menu to select the correct family (16-bit DSCs dsPIC33), and then select the correct device (dsPIC33FJ32GS606).

![Screeshot showing device Name](./images/tutorial/2_device_name.png)

* You do not need to select any dedicated hardware, just click next.
* Make sure that the XC16 compiler is shown and selected. Click next

![Screeshot: Selecting the correct Compiler](./images/tutorial/3_compiler.png)

* Give the project a name, and make sure you know where the project is stored.

Next we are going to create folders for the .c and .h files. The IDE likes placing these files in the main directory.

* Open the directory where the projects is stored. In the directory, create two new folders, _source_ and _include_
* Copy the skeleton code into the folder
* In MPLABX you should see the project navigator to the left. If the project is minimized, open it. Right-click on the _Header Files_ option, and select _Add Existing item_. In your project folder, open the include folder and select all the files.
* Do the same for the _Source Files_ option, this time selecting files from the source folder.
* The project requires a main file. There is one included with the skeleton code. This will be the starting point for all your code.


You should now have an empty project, ready for your code. 


Compiling and Programming the device
---------------------------------------
To compile the project, click the compile button at the top of MPLABX

![Screenshot: Compile Buttons](./images/tutorial/5_compile.png)

If everything is configured correctly, this should compile the project, and output a hex file. The location of the hex file will be shown in the console output at the bottom.

Now open the ds30 bootloader program. There is a terminal and a gui version. You will be presented with a screen like this:

![Screeshot: ds30 Bootloader](./images/tutorial/6_ds30.png)

Configure all the settings:
 
 * Set the path for the hex file.
 * Set the device, dsPIC33FJ32GS606
 * The baud rate is set to 57600.
 * Tick the write flash checkbox

 To program the RoBoC board, hold the board in reset by pressing the reset button next to the USB connection. Click write on the ds30 program, and release the board from reset.

 The board should now be programmed with your code. To get started with the skeleton code, see [here](skeleton_code.html)
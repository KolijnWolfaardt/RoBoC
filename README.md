# RoBoC
The RoBoC is a robotics controller board designed for the Robotics club of Stellenbosch. It features a dsPIC33 microcontroller, a motor river and plenty of IO pins. This was designed to be cheaper than off the shelf development boards with the necessary extras.

# About the PCB Design
The PCB is designed in [Kicad](www.kicad-pcb.org/). All the project files can be found in *./PCB Design*, and the extra component footprints created are in *./PCB Design/lib*. Some of these components are adapted from the libraries supplied with KiCad. 

The board was originally designed as a 4 layer board, with power and some signals on the inner copper layers. This proved to be too expensive, so the board was redesigned as a 2-layer board.

# Bootloader
## ds30 Bootloader
The ds30 Bootloader code supplied here is a modified version of the [ds30 Loader](http://picbootloader.com/). The following changes were made:

 - The initialization includes configuring the oscillator and PLL
 - The UART initialization was simplified.
 - An LED on the board is turne on and off to indicate when the bootloader is waiting for commands.
 - The memory footprint of the bootloader was reduces by commenting out some of the original (unused) code.

### Compiling the Bootloader
To compile the bootloader the MPLAB IDE v8.92 and the ASM30 compiler were used, on a pc running Windows. The resulting hex file can be written to the board using a PicKit2 or PicKit3.

### Using the Bootloader
To use the bootloader, use the program supplied on the ds30 Loader website.

# Technical Details
 - The Microcontroller is a [dsPic33FJ32GS606](http://www.microchip.com/wwwproducts/Devices.aspx?dDocName=en546851)
 - USB to UART IC is a [MCP2200](http://www.microchip.com/wwwproducts/devices.aspx?dDocName=en546923)
 - The Motor driver is a ON Semiconductor [LV8405V](http://www.onsemi.com/PowerSolutions/product.do?id=LV8405V)
 - The PCB is a 2-layer 5cm by 10cm board

# License
 - The Hardware is licensed under the [CERN OSH License ](http://www.ohwr.org/attachments/2388/cern_ohl_v_1_2.txt)
 - The ds30 Bootloader is licensed under the [GNU GPLv2 Licens](http://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)
 - Software written for the board is licensed under the [CC Attribution-NonCommerical License ](https://creativecommons.org/licenses/by-nc/2.0/legalcode)


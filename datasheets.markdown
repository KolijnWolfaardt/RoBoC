---
layout: page
title:  "Datasheets and Links"
date:   2015-08-02 12:00:00
categories: 
---

This page provides links to datasheets for all relative components, as well as links to the software used

PIC Datasheets
==============

The PIC has a main datasheet, and a set of family reference manuals. The main datasheet only gives a quick overview of each section of the PIC. The family reference manuals give a more in-detailed description of the section, as well as code examples.The Family Reference manual are intended for a wide range of microcontrollers, so you need to double-check with the main datasheet if the PIC supports it

* [Main dsPIC33FJ32GS606 Datasheet](http://ww1.microchip.com/downloads/en/DeviceDoc/70000591f.pdf)
* [Family Reference Manuals](https://www.microchip.com/TechDoc.aspx?type=ReferenceManuals) Search for dsPIC33F
* [PIC Product Page](http://www.microchip.com/wwwproducts/Devices.aspx?product=dsPIC33FJ32GS606)

The PIC also has an errata, which documents all the errors in the PIC. In some cases it offers solutions to the problems.

* [PIC Errata](http://ww1.microchip.com/downloads/en/DeviceDoc/80000489m.pdf)

Board Schematic
===============
The board datasheet is generated directly from KiCad. Take note of the [camera adaptor board](camera.html) which is required based on which camera you have.

 * [RoBoC Board Schematic](https://github.com/KolijnWolfaardt/RoBoC/blob/master/PCB%20Design/RoboticsMKII.pdf)
 * [Camera Adaptor Schematic]()

Other Components
================
 * [MCP2200 USB To Serial Converter](http://ww1.microchip.com/downloads/en/DeviceDoc/22228B.pdf)
 * [MCP2200 Product page](http://www.microchip.com/wwwproducts/devices.aspx?dDocName=en546923)
 	The product page features links for drivers and the configuration tool.
 * [LV8405s Dual channel FET Motor driver](http://www.onsemi.com/pub/Collateral/LV8405V-D.PDF)
 * [Low dropout 3.3v regulator](http://www.mantech.co.za/datasheets/products/LD1117XX_STM.pdf)
 * [Omnivision OV7670 Camera](https://www.openimpulse.com/blog/document-viewer/?pdf_file=OV7670-CMOS-VGA-Camera-Datasheet.pdf)
 * [Camera board ](http://www.wvshare.com/product/OV7670-Camera-Board.htm)
 
Software
--------
We use the MPLABX IDE, along with the XC16 compiler. The two are downloaded seperately.

 * [MPLABX IDE Downloads](http://www.microchip.com/pagehandler/en-us/family/mplabx/home.html)
 * [XC16 Compiler](http://www.microchip.com/pagehandler/en-us/devtools/mplabxc/home.html)

 The bootloader is the ds30 bootloader. The software is available free of charge, however you will have to register on the Forum.

 * [ds30 Bootloader](http://picbootloader.com/)
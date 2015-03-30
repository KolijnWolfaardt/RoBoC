EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:pic18f46k60
LIBS:dspic33fj32gs606
LIBS:l293
LIBS:mcp2200
LIBS:lv8405v
LIBS:33vReg
LIBS:RoboticsMKII-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +3V3 #PWR044
U 1 1 551026A6
P 1800 1200
F 0 "#PWR044" H 1800 1050 60  0001 C CNN
F 1 "+3V3" H 1800 1340 60  0000 C CNN
F 2 "" H 1800 1200 60  0000 C CNN
F 3 "" H 1800 1200 60  0000 C CNN
	1    1800 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 551026AC
P 1800 1350
F 0 "#PWR045" H 1800 1100 60  0001 C CNN
F 1 "GND" H 1800 1200 60  0000 C CNN
F 2 "" H 1800 1350 60  0000 C CNN
F 3 "" H 1800 1350 60  0000 C CNN
	1    1800 1350
	1    0    0    -1  
$EndComp
Text GLabel 1550 1200 0    60   Input ~ 0
V3.3
Text GLabel 1550 1350 0    60   Input ~ 0
GND
$Comp
L MCP2200 U3
U 1 1 551026B8
P 5550 3200
F 0 "U3" H 5550 2600 60  0000 C CNN
F 1 "MCP2200" H 5550 3800 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-20_7.5x12.8mm_Pitch1.27mm" H 5600 3200 60  0001 C CNN
F 3 "" H 5600 3200 60  0000 C CNN
	1    5550 3200
	1    0    0    -1  
$EndComp
Text Label 4350 2850 0    60   ~ 0
USB_OSC1
Text Label 4350 2950 0    60   ~ 0
USB_OSC2
Text Label 4350 3150 0    60   ~ 0
TX_LED
Text Label 4350 3250 0    60   ~ 0
RX_LED
Text Label 4350 3650 0    60   ~ 0
MCU_RX
$Comp
L +3V3 #PWR046
U 1 1 55102790
P 4200 2550
F 0 "#PWR046" H 4200 2400 60  0001 C CNN
F 1 "+3V3" H 4200 2690 60  0000 C CNN
F 2 "" H 4200 2550 60  0000 C CNN
F 3 "" H 4200 2550 60  0000 C CNN
	1    4200 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 551027AA
P 6900 2850
F 0 "#PWR047" H 6900 2600 60  0001 C CNN
F 1 "GND" H 6900 2700 60  0000 C CNN
F 2 "" H 6900 2850 60  0000 C CNN
F 3 "" H 6900 2850 60  0000 C CNN
	1    6900 2850
	1    0    0    -1  
$EndComp
Text Label 6300 2850 0    60   ~ 0
USB_D+
Text Label 6300 2950 0    60   ~ 0
USB_D-
Text Label 6300 3550 0    60   ~ 0
MCU_TX
NoConn ~ 4850 3550
NoConn ~ 4850 3450
NoConn ~ 4850 3350
NoConn ~ 6250 3350
NoConn ~ 6250 3450
NoConn ~ 6250 3650
NoConn ~ 6250 3150
NoConn ~ 6250 3250
Wire Wire Line
	1800 1350 1550 1350
Wire Wire Line
	1550 1200 1800 1200
Wire Wire Line
	4300 2850 4850 2850
Wire Wire Line
	4300 2950 4850 2950
Wire Wire Line
	4850 3150 4300 3150
Wire Wire Line
	4300 3250 4850 3250
Wire Wire Line
	4850 3650 4300 3650
Wire Wire Line
	4200 3050 4850 3050
Wire Wire Line
	4200 2550 4200 3050
Wire Wire Line
	4850 2750 4200 2750
Connection ~ 4200 2750
Wire Wire Line
	6250 2750 6900 2750
Wire Wire Line
	6900 2750 6900 2850
Wire Wire Line
	6250 2850 6750 2850
Wire Wire Line
	6250 2950 6750 2950
Wire Wire Line
	6250 3550 6750 3550
Wire Wire Line
	6250 3050 7150 3050
$Comp
L USB-MICRO-B CON1
U 1 1 55102938
P 5800 5400
F 0 "CON1" H 5500 5750 50  0000 C CNN
F 1 "USB-MICRO-B" H 5650 5050 50  0000 C CNN
F 2 "" H 5800 5300 50  0001 C CNN
F 3 "" H 5800 5300 50  0000 C CNN
	1    5800 5400
	1    0    0    -1  
$EndComp
Text Label 4850 5400 0    60   ~ 0
USB_D+
Text Label 4850 5300 0    60   ~ 0
USB_D-
Wire Wire Line
	4800 5400 5300 5400
Wire Wire Line
	4800 5300 5300 5300
$Comp
L R R11
U 1 1 55102A2E
P 9500 1700
F 0 "R11" V 9580 1700 50  0000 C CNN
F 1 "220" V 9507 1701 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9430 1700 30  0001 C CNN
F 3 "" H 9500 1700 30  0000 C CNN
	1    9500 1700
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 55102AAB
P 9900 1700
F 0 "R12" V 9980 1700 50  0000 C CNN
F 1 "220" V 9907 1701 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9830 1700 30  0001 C CNN
F 3 "" H 9900 1700 30  0000 C CNN
	1    9900 1700
	1    0    0    -1  
$EndComp
$Comp
L LED D7
U 1 1 55102AE3
P 9500 2250
F 0 "D7" H 9500 2350 50  0000 C CNN
F 1 "LED" H 9500 2150 50  0000 C CNN
F 2 "LEDs:LED-1206" H 9500 2250 60  0001 C CNN
F 3 "" H 9500 2250 60  0000 C CNN
	1    9500 2250
	0    1    1    0   
$EndComp
$Comp
L LED D8
U 1 1 55102B1C
P 9900 2250
F 0 "D8" H 9900 2350 50  0000 C CNN
F 1 "LED" H 9900 2150 50  0000 C CNN
F 2 "LEDs:LED-1206" H 9900 2250 60  0001 C CNN
F 3 "" H 9900 2250 60  0000 C CNN
	1    9900 2250
	0    1    1    0   
$EndComp
Text Label 8900 2550 0    60   ~ 0
TX_LED
Text Label 8900 2650 0    60   ~ 0
RX_LED
Wire Wire Line
	8850 2550 9500 2550
Wire Wire Line
	8850 2650 9900 2650
Wire Wire Line
	9500 2550 9500 2450
Wire Wire Line
	9900 2650 9900 2450
Wire Wire Line
	9500 1850 9500 2050
Wire Wire Line
	9900 1850 9900 2050
$Comp
L +3V3 #PWR048
U 1 1 55102C97
P 9700 1350
F 0 "#PWR048" H 9700 1200 60  0001 C CNN
F 1 "+3V3" H 9700 1490 60  0000 C CNN
F 2 "" H 9700 1350 60  0000 C CNN
F 3 "" H 9700 1350 60  0000 C CNN
	1    9700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1350 9500 1550
Wire Wire Line
	9500 1350 9900 1350
Wire Wire Line
	9900 1350 9900 1550
Connection ~ 9700 1350
$Comp
L CRYSTAL X1
U 1 1 55102DA2
P 2250 3200
F 0 "X1" H 2250 3350 50  0000 C CNN
F 1 "12MHz" H 2250 3050 50  0000 C CNN
F 2 "" H 2250 3200 60  0001 C CNN
F 3 "" H 2250 3200 60  0000 C CNN
	1    2250 3200
	0    1    1    0   
$EndComp
$Comp
L C C15
U 1 1 55102E6B
P 1950 2800
F 0 "C15" H 2000 2900 50  0000 L CNN
F 1 "22pF" H 2000 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1988 2650 30  0001 C CNN
F 3 "" H 1950 2800 60  0000 C CNN
	1    1950 2800
	0    1    1    0   
$EndComp
$Comp
L C C16
U 1 1 55102F06
P 1950 3600
F 0 "C16" H 2000 3700 50  0000 L CNN
F 1 "22pF" H 2000 3500 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1988 3450 30  0001 C CNN
F 3 "" H 1950 3600 60  0000 C CNN
	1    1950 3600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR049
U 1 1 55102FBE
P 1650 3700
F 0 "#PWR049" H 1650 3450 60  0001 C CNN
F 1 "GND" H 1650 3550 60  0000 C CNN
F 2 "" H 1650 3700 60  0000 C CNN
F 3 "" H 1650 3700 60  0000 C CNN
	1    1650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2800 1650 3700
Wire Wire Line
	1650 3600 1800 3600
Wire Wire Line
	1650 2800 1800 2800
Connection ~ 1650 3600
Wire Wire Line
	2100 2800 2800 2800
Wire Wire Line
	2100 3600 2800 3600
Text Label 2300 2800 0    60   ~ 0
USB_OSC1
Text Label 2300 3600 0    60   ~ 0
USB_OSC2
$Comp
L GND #PWR050
U 1 1 551032EF
P 5200 5700
F 0 "#PWR050" H 5200 5450 60  0001 C CNN
F 1 "GND" H 5200 5550 60  0000 C CNN
F 2 "" H 5200 5700 60  0000 C CNN
F 3 "" H 5200 5700 60  0000 C CNN
	1    5200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5700 5200 5600
Wire Wire Line
	5200 5600 5300 5600
Wire Wire Line
	5300 5200 4800 5200
$Comp
L GND #PWR051
U 1 1 551035D3
P 6400 6400
F 0 "#PWR051" H 6400 6150 60  0001 C CNN
F 1 "GND" H 6400 6250 60  0000 C CNN
F 2 "" H 6400 6400 60  0000 C CNN
F 3 "" H 6400 6400 60  0000 C CNN
	1    6400 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5200 6400 5900
Wire Wire Line
	6400 5600 6300 5600
Wire Wire Line
	6400 5500 6300 5500
Connection ~ 6400 5600
Wire Wire Line
	6400 5300 6300 5300
Connection ~ 6400 5500
Wire Wire Line
	6400 5200 6300 5200
Connection ~ 6400 5300
$Comp
L +3V3 #PWR052
U 1 1 55103924
P 7150 2950
F 0 "#PWR052" H 7150 2800 60  0001 C CNN
F 1 "+3V3" H 7150 3090 60  0000 C CNN
F 2 "" H 7150 2950 60  0000 C CNN
F 3 "" H 7150 2950 60  0000 C CNN
	1    7150 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3050 7150 2950
Text HLabel 6750 3550 2    60   Input ~ 0
MCU_TX
Text HLabel 4300 3650 0    60   Output ~ 0
MCU_RX
Text HLabel 4800 5200 0    60   Input ~ 0
V_USB
$Comp
L R R10
U 1 1 55103BBB
P 6400 6050
F 0 "R10" V 6480 6050 50  0000 C CNN
F 1 "18k" V 6407 6051 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6330 6050 30  0001 C CNN
F 3 "" H 6400 6050 30  0000 C CNN
	1    6400 6050
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 55103BF4
P 6700 6050
F 0 "C17" H 6750 6150 50  0000 L CNN
F 1 "100nF" H 6750 5950 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6738 5900 30  0001 C CNN
F 3 "" H 6700 6050 60  0000 C CNN
	1    6700 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 6200 6400 6400
Wire Wire Line
	6700 6300 6400 6300
Wire Wire Line
	6700 6200 6700 6300
Wire Wire Line
	6700 5750 6700 5900
Wire Wire Line
	6700 5750 6400 5750
Connection ~ 6400 5750
Connection ~ 6400 6300
Wire Wire Line
	2250 3600 2250 3500
Connection ~ 2250 3600
Wire Wire Line
	2250 2900 2250 2800
Connection ~ 2250 2800
NoConn ~ 5300 5500
$EndSCHEMATC

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
Sheet 4 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1700 1000 0    60   Output ~ 0
AN0
Text HLabel 1700 1100 0    60   Output ~ 0
AN1
Text HLabel 1700 1200 0    60   Output ~ 0
AN2
Text HLabel 1700 1300 0    60   Output ~ 0
AN3
Text HLabel 1700 1400 0    60   Output ~ 0
AN4
Text HLabel 1700 1500 0    60   Output ~ 0
AN5
Text HLabel 1450 2700 0    60   Input ~ 0
LED0
Text HLabel 1450 2800 0    60   Input ~ 0
LED1
Text HLabel 1450 2900 0    60   Input ~ 0
LED2
Text HLabel 1450 3000 0    60   Input ~ 0
LED3
Text HLabel 1450 3100 0    60   Input ~ 0
LED4
$Comp
L LED D2
U 1 1 55107D2B
P 1950 3500
F 0 "D2" H 1950 3600 50  0000 C CNN
F 1 "LED4" H 1950 3400 50  0000 C CNN
F 2 "LEDs:LED-1206" H 1950 3500 60  0001 C CNN
F 3 "" H 1950 3500 60  0000 C CNN
	1    1950 3500
	0    1    1    0   
$EndComp
$Comp
L LED D3
U 1 1 55107DAE
P 2250 3500
F 0 "D3" H 2250 3600 50  0000 C CNN
F 1 "LED3" H 2250 3400 50  0000 C CNN
F 2 "LEDs:LED-1206" H 2250 3500 60  0001 C CNN
F 3 "" H 2250 3500 60  0000 C CNN
	1    2250 3500
	0    1    1    0   
$EndComp
$Comp
L LED D4
U 1 1 55107DCD
P 2550 3500
F 0 "D4" H 2550 3600 50  0000 C CNN
F 1 "LED2" H 2550 3400 50  0000 C CNN
F 2 "LEDs:LED-1206" H 2550 3500 60  0001 C CNN
F 3 "" H 2550 3500 60  0000 C CNN
	1    2550 3500
	0    1    1    0   
$EndComp
$Comp
L LED D5
U 1 1 55107E0F
P 2850 3500
F 0 "D5" H 2850 3600 50  0000 C CNN
F 1 "LED1" H 2850 3400 50  0000 C CNN
F 2 "LEDs:LED-1206" H 2850 3500 60  0001 C CNN
F 3 "" H 2850 3500 60  0000 C CNN
	1    2850 3500
	0    1    1    0   
$EndComp
$Comp
L LED D6
U 1 1 55107E30
P 3150 3500
F 0 "D6" H 3150 3600 50  0000 C CNN
F 1 "LED0" H 3150 3400 50  0000 C CNN
F 2 "LEDs:LED-1206" H 3150 3500 60  0001 C CNN
F 3 "" H 3150 3500 60  0000 C CNN
	1    3150 3500
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 55107E72
P 1950 4050
F 0 "R3" V 2030 4050 50  0000 C CNN
F 1 "220" V 1957 4051 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1880 4050 30  0001 C CNN
F 3 "" H 1950 4050 30  0000 C CNN
	1    1950 4050
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR025
U 1 1 5510863A
P 3800 1100
F 0 "#PWR025" H 3800 950 60  0001 C CNN
F 1 "+3V3" H 3800 1240 60  0000 C CNN
F 2 "" H 3800 1100 60  0000 C CNN
F 3 "" H 3800 1100 60  0000 C CNN
	1    3800 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 55108640
P 3800 1250
F 0 "#PWR026" H 3800 1000 60  0001 C CNN
F 1 "GND" H 3800 1100 60  0000 C CNN
F 2 "" H 3800 1250 60  0000 C CNN
F 3 "" H 3800 1250 60  0000 C CNN
	1    3800 1250
	1    0    0    -1  
$EndComp
Text GLabel 3550 1100 0    60   Input ~ 0
V3.3
Text GLabel 3550 1250 0    60   Input ~ 0
GND
$Comp
L GND #PWR027
U 1 1 5510866B
P 2550 4450
F 0 "#PWR027" H 2550 4200 60  0001 C CNN
F 1 "GND" H 2550 4300 60  0000 C CNN
F 2 "" H 2550 4450 60  0000 C CNN
F 3 "" H 2550 4450 60  0000 C CNN
	1    2550 4450
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 55108A67
P 2250 4050
F 0 "R4" V 2330 4050 50  0000 C CNN
F 1 "220" V 2257 4051 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2180 4050 30  0001 C CNN
F 3 "" H 2250 4050 30  0000 C CNN
	1    2250 4050
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 55108A93
P 2550 4050
F 0 "R5" V 2630 4050 50  0000 C CNN
F 1 "220" V 2557 4051 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2480 4050 30  0001 C CNN
F 3 "" H 2550 4050 30  0000 C CNN
	1    2550 4050
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 55108AD7
P 2850 4050
F 0 "R6" V 2930 4050 50  0000 C CNN
F 1 "220" V 2857 4051 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2780 4050 30  0001 C CNN
F 3 "" H 2850 4050 30  0000 C CNN
	1    2850 4050
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 55108AFD
P 3150 4050
F 0 "R8" V 3230 4050 50  0000 C CNN
F 1 "220" V 3157 4051 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3080 4050 30  0001 C CNN
F 3 "" H 3150 4050 30  0000 C CNN
	1    3150 4050
	1    0    0    -1  
$EndComp
$Comp
L DPST SW0
U 1 1 5510AA84
P 1850 6550
F 0 "SW0" H 2150 6600 50  0000 C CNN
F 1 "But 0" H 2150 6500 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 1850 6550 60  0001 C CNN
F 3 "" H 1850 6550 60  0000 C CNN
	1    1850 6550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR028
U 1 1 5510AC8C
P 1850 7150
F 0 "#PWR028" H 1850 6900 60  0001 C CNN
F 1 "GND" H 1850 7000 60  0000 C CNN
F 2 "" H 1850 7150 60  0000 C CNN
F 3 "" H 1850 7150 60  0000 C CNN
	1    1850 7150
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5510AE77
P 1650 5650
F 0 "R2" V 1730 5650 50  0000 C CNN
F 1 "4.7k" V 1657 5651 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1580 5650 30  0001 C CNN
F 3 "" H 1650 5650 30  0000 C CNN
	1    1650 5650
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR029
U 1 1 5510AFD1
P 1650 5300
F 0 "#PWR029" H 1650 5150 60  0001 C CNN
F 1 "+3V3" H 1650 5440 60  0000 C CNN
F 2 "" H 1650 5300 60  0000 C CNN
F 3 "" H 1650 5300 60  0000 C CNN
	1    1650 5300
	1    0    0    -1  
$EndComp
$Comp
L DPST SW1
U 1 1 5510B4BE
P 3300 6550
F 0 "SW1" H 3600 6600 50  0000 C CNN
F 1 "But 1" H 3600 6500 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 3300 6550 60  0001 C CNN
F 3 "" H 3300 6550 60  0000 C CNN
	1    3300 6550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR030
U 1 1 5510B4C4
P 3300 7150
F 0 "#PWR030" H 3300 6900 60  0001 C CNN
F 1 "GND" H 3300 7000 60  0000 C CNN
F 2 "" H 3300 7150 60  0000 C CNN
F 3 "" H 3300 7150 60  0000 C CNN
	1    3300 7150
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5510B4CA
P 3100 5650
F 0 "R7" V 3180 5650 50  0000 C CNN
F 1 "4.7k" V 3107 5651 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3030 5650 30  0001 C CNN
F 3 "" H 3100 5650 30  0000 C CNN
	1    3100 5650
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR031
U 1 1 5510B4D0
P 3100 5300
F 0 "#PWR031" H 3100 5150 60  0001 C CNN
F 1 "+3V3" H 3100 5440 60  0000 C CNN
F 2 "" H 3100 5300 60  0000 C CNN
F 3 "" H 3100 5300 60  0000 C CNN
	1    3100 5300
	1    0    0    -1  
$EndComp
Text HLabel 2650 5950 0    60   Output ~ 0
BUT_1
Text HLabel 1200 5950 0    60   Output ~ 0
BUT_0
Text HLabel 5150 3100 0    60   Input ~ 0
SIO_C
Text HLabel 5850 3100 2    60   BiDi ~ 0
SIO_D
Text HLabel 5150 3200 0    60   Output ~ 0
vSync
Text HLabel 5850 3200 2    60   Output ~ 0
Href
Text HLabel 5150 3300 0    60   Output ~ 0
DATA_7
Text HLabel 5150 3400 0    60   Output ~ 0
DATA_5
Text HLabel 5150 3500 0    60   Output ~ 0
DATA_3
Text HLabel 5150 3600 0    60   Output ~ 0
DATA_1
Text HLabel 5850 3300 2    60   Output ~ 0
DATA_6
Text HLabel 5850 3400 2    60   Output ~ 0
DATA_4
Text HLabel 5850 3500 2    60   Output ~ 0
DATA_2
Text HLabel 5850 3600 2    60   Output ~ 0
DATA_0
Text HLabel 5850 3800 2    60   Input ~ 0
RCK
Text HLabel 5150 3900 0    60   Input ~ 0
~WR
Text HLabel 5850 3900 2    60   Input ~ 0
~OE
Text HLabel 5150 4000 0    60   Input ~ 0
~WRST
Text HLabel 5850 4000 2    60   Input ~ 0
~RRST
$Comp
L CONN_02X11 P10
U 1 1 55110EFC
P 5500 3500
F 0 "P10" H 5500 4100 50  0000 C CNN
F 1 "Camera" V 5500 3500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x11" H 5500 2300 60  0001 C CNN
F 3 "" H 5500 2300 60  0000 C CNN
	1    5500 3500
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR032
U 1 1 5511109F
P 4950 3000
F 0 "#PWR032" H 4950 2850 60  0001 C CNN
F 1 "+3V3" H 4950 3140 60  0000 C CNN
F 2 "" H 4950 3000 60  0000 C CNN
F 3 "" H 4950 3000 60  0000 C CNN
	1    4950 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 551110A5
P 6450 3050
F 0 "#PWR033" H 6450 2800 60  0001 C CNN
F 1 "GND" H 6450 2900 60  0000 C CNN
F 2 "" H 6450 3050 60  0000 C CNN
F 3 "" H 6450 3050 60  0000 C CNN
	1    6450 3050
	1    0    0    -1  
$EndComp
Text HLabel 9050 3400 0    60   Input ~ 0
SPI_CLK
Text HLabel 9050 3500 0    60   Input ~ 0
SPI_MOSI
Text HLabel 9050 3600 0    60   Output ~ 0
SPI_MISO
Text HLabel 9050 3700 0    60   Input ~ 0
SPI_SS
$Comp
L +3V3 #PWR034
U 1 1 5511AF73
P 8950 3200
F 0 "#PWR034" H 8950 3050 60  0001 C CNN
F 1 "+3V3" H 8950 3340 60  0000 C CNN
F 2 "" H 8950 3200 60  0000 C CNN
F 3 "" H 8950 3200 60  0000 C CNN
	1    8950 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 5511AF79
P 8950 3850
F 0 "#PWR035" H 8950 3600 60  0001 C CNN
F 1 "GND" H 8950 3700 60  0000 C CNN
F 2 "" H 8950 3850 60  0000 C CNN
F 3 "" H 8950 3850 60  0000 C CNN
	1    8950 3850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P13
U 1 1 5511B047
P 9400 3550
F 0 "P13" H 9400 3900 50  0000 C CNN
F 1 "SPI" V 9500 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 9400 3550 60  0001 C CNN
F 3 "" H 9400 3550 60  0000 C CNN
	1    9400 3550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P11
U 1 1 5511E1D2
P 6100 5600
F 0 "P11" H 6100 5800 50  0000 C CNN
F 1 "DAC" V 6200 5600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6100 5600 60  0001 C CNN
F 3 "" H 6100 5600 60  0000 C CNN
	1    6100 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 5511E511
P 5800 5800
F 0 "#PWR036" H 5800 5550 60  0001 C CNN
F 1 "GND" H 5800 5650 60  0000 C CNN
F 2 "" H 5800 5800 60  0000 C CNN
F 3 "" H 5800 5800 60  0000 C CNN
	1    5800 5800
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR037
U 1 1 5511E6AC
P 5800 5400
F 0 "#PWR037" H 5800 5250 60  0001 C CNN
F 1 "+3V3" H 5800 5540 60  0000 C CNN
F 2 "" H 5800 5400 60  0000 C CNN
F 3 "" H 5800 5400 60  0000 C CNN
	1    5800 5400
	1    0    0    -1  
$EndComp
Text HLabel 5800 5600 0    60   Input ~ 0
DACOUT
$Comp
L GND #PWR038
U 1 1 5511FB12
P 8350 6050
F 0 "#PWR038" H 8350 5800 60  0001 C CNN
F 1 "GND" H 8350 5900 60  0000 C CNN
F 2 "" H 8350 6050 60  0000 C CNN
F 3 "" H 8350 6050 60  0000 C CNN
	1    8350 6050
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR039
U 1 1 5511FB18
P 8300 4950
F 0 "#PWR039" H 8300 4800 60  0001 C CNN
F 1 "+3V3" H 8300 5090 60  0000 C CNN
F 2 "" H 8300 4950 60  0000 C CNN
F 3 "" H 8300 4950 60  0000 C CNN
	1    8300 4950
	1    0    0    -1  
$EndComp
Text HLabel 7650 5600 0    60   Input ~ 0
Reed
Text HLabel 1450 3200 0    60   Input ~ 0
LED5
$Comp
L LED D1
U 1 1 55118C0D
P 1650 3500
F 0 "D1" H 1650 3600 50  0000 C CNN
F 1 "LED5" H 1650 3400 50  0000 C CNN
F 2 "LEDs:LED-1206" H 1650 3500 60  0001 C CNN
F 3 "" H 1650 3500 60  0000 C CNN
	1    1650 3500
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 55118C13
P 1650 4050
F 0 "R1" V 1730 4050 50  0000 C CNN
F 1 "220" V 1657 4051 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1580 4050 30  0001 C CNN
F 3 "" H 1650 4050 30  0000 C CNN
	1    1650 4050
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR040
U 1 1 55118FCE
P 1700 900
F 0 "#PWR040" H 1700 750 60  0001 C CNN
F 1 "+3V3" H 1700 1040 60  0000 C CNN
F 2 "" H 1700 900 60  0000 C CNN
F 3 "" H 1700 900 60  0000 C CNN
	1    1700 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 55118FD4
P 1700 1650
F 0 "#PWR041" H 1700 1400 60  0001 C CNN
F 1 "GND" H 1700 1500 60  0000 C CNN
F 2 "" H 1700 1650 60  0000 C CNN
F 3 "" H 1700 1650 60  0000 C CNN
	1    1700 1650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P9
U 1 1 55119261
P 2050 1250
F 0 "P9" H 2050 1700 50  0000 C CNN
F 1 "Analog" V 2150 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 2050 1250 60  0001 C CNN
F 3 "" H 2050 1250 60  0000 C CNN
	1    2050 1250
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 5511941F
P 1400 6550
F 0 "C12" H 1450 6650 50  0000 L CNN
F 1 "10nF" H 1450 6450 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1438 6400 30  0001 C CNN
F 3 "" H 1400 6550 60  0000 C CNN
	1    1400 6550
	1    0    0    1   
$EndComp
$Comp
L C C13
U 1 1 5511947D
P 2850 6550
F 0 "C13" H 2900 6650 50  0000 L CNN
F 1 "10nF" H 2900 6450 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2888 6400 30  0001 C CNN
F 3 "" H 2850 6550 60  0000 C CNN
	1    2850 6550
	1    0    0    1   
$EndComp
$Comp
L CONN_01X02 P12
U 1 1 551196C9
P 8650 5650
F 0 "P12" H 8650 5800 50  0000 C CNN
F 1 "Reed" V 8750 5650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 8650 5650 60  0001 C CNN
F 3 "" H 8650 5650 60  0000 C CNN
	1    8650 5650
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 551197D3
P 8300 5300
F 0 "R9" V 8380 5300 50  0000 C CNN
F 1 "4.7k" V 8307 5301 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8230 5300 30  0001 C CNN
F 3 "" H 8300 5300 30  0000 C CNN
	1    8300 5300
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 55119D63
P 7950 5800
F 0 "C14" H 8000 5900 50  0000 L CNN
F 1 "10nF" H 8000 5700 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7988 5650 30  0001 C CNN
F 3 "" H 7950 5800 60  0000 C CNN
	1    7950 5800
	1    0    0    1   
$EndComp
Text Label 4850 3700 0    60   ~ 0
Reset
Text Label 5850 3700 0    60   ~ 0
Powerdown
Text Label 4850 3800 0    60   ~ 0
Strobe
$Comp
L +3V3 #PWR042
U 1 1 551391B0
P 4600 3650
F 0 "#PWR042" H 4600 3500 60  0001 C CNN
F 1 "+3V3" H 4600 3790 60  0000 C CNN
F 2 "" H 4600 3650 60  0000 C CNN
F 3 "" H 4600 3650 60  0000 C CNN
	1    4600 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 55139944
P 6400 3800
F 0 "#PWR043" H 6400 3550 60  0001 C CNN
F 1 "GND" H 6400 3650 60  0000 C CNN
F 2 "" H 6400 3800 60  0000 C CNN
F 3 "" H 6400 3800 60  0000 C CNN
	1    6400 3800
	1    0    0    -1  
$EndComp
NoConn ~ 4800 3800
$Comp
L CONN_01X05 P?
U 1 1 551D10AE
P 7600 1400
F 0 "P?" H 7600 1700 50  0000 C CNN
F 1 "3.3v" V 7700 1400 50  0000 C CNN
F 2 "" H 7600 1400 60  0000 C CNN
F 3 "" H 7600 1400 60  0000 C CNN
	1    7600 1400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P?
U 1 1 551D1127
P 8400 1400
F 0 "P?" H 8400 1700 50  0000 C CNN
F 1 "Gnd" V 8500 1400 50  0000 C CNN
F 2 "" H 8400 1400 60  0000 C CNN
F 3 "" H 8400 1400 60  0000 C CNN
	1    8400 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 551D1320
P 8100 1700
F 0 "#PWR?" H 8100 1450 60  0001 C CNN
F 1 "GND" H 8100 1550 60  0000 C CNN
F 2 "" H 8100 1700 60  0000 C CNN
F 3 "" H 8100 1700 60  0000 C CNN
	1    8100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1000 1700 1000
Wire Wire Line
	1700 1100 1850 1100
Wire Wire Line
	1850 1200 1700 1200
Wire Wire Line
	1700 1300 1850 1300
Wire Wire Line
	1850 1400 1700 1400
Wire Wire Line
	1700 1500 1850 1500
Wire Wire Line
	3800 1250 3550 1250
Wire Wire Line
	3550 1100 3800 1100
Wire Wire Line
	2550 4200 2550 4450
Wire Wire Line
	3150 4400 3150 4200
Wire Wire Line
	2850 4400 2850 4200
Connection ~ 2850 4400
Connection ~ 2550 4400
Wire Wire Line
	2250 4400 2250 4200
Wire Wire Line
	1950 4200 1950 4400
Connection ~ 2250 4400
Wire Wire Line
	1950 3700 1950 3900
Wire Wire Line
	2250 3700 2250 3900
Wire Wire Line
	2550 3700 2550 3900
Wire Wire Line
	2850 3700 2850 3900
Wire Wire Line
	3150 3700 3150 3900
Wire Wire Line
	1950 3300 1950 3100
Wire Wire Line
	1950 3100 1450 3100
Wire Wire Line
	1450 3000 2250 3000
Wire Wire Line
	2250 3000 2250 3300
Wire Wire Line
	2550 3300 2550 2900
Wire Wire Line
	2550 2900 1450 2900
Wire Wire Line
	1450 2800 2850 2800
Wire Wire Line
	2850 2800 2850 3300
Wire Wire Line
	3150 3300 3150 2700
Wire Wire Line
	3150 2700 1450 2700
Wire Wire Line
	1650 5800 1650 6050
Wire Wire Line
	1200 5950 2050 5950
Wire Wire Line
	2050 5950 2050 6050
Connection ~ 1650 5950
Wire Wire Line
	1650 5300 1650 5500
Wire Wire Line
	1850 7100 1850 7150
Wire Wire Line
	1400 7100 2050 7100
Wire Wire Line
	1650 7100 1650 7050
Wire Wire Line
	2050 7100 2050 7050
Connection ~ 1850 7100
Wire Wire Line
	3100 5800 3100 6050
Wire Wire Line
	2650 5950 3500 5950
Wire Wire Line
	3500 5950 3500 6050
Connection ~ 3100 5950
Wire Wire Line
	3100 5300 3100 5500
Wire Wire Line
	3300 7100 3300 7150
Wire Wire Line
	2850 7100 3500 7100
Wire Wire Line
	3100 7100 3100 7050
Wire Wire Line
	3500 7100 3500 7050
Connection ~ 3300 7100
Wire Wire Line
	5750 3000 6450 3000
Wire Wire Line
	5150 3100 5250 3100
Wire Wire Line
	5150 3200 5250 3200
Wire Wire Line
	5150 3300 5250 3300
Wire Wire Line
	5150 3400 5250 3400
Wire Wire Line
	5150 3500 5250 3500
Wire Wire Line
	5150 3600 5250 3600
Wire Wire Line
	4600 3700 5250 3700
Wire Wire Line
	4800 3800 5250 3800
Wire Wire Line
	5150 3900 5250 3900
Wire Wire Line
	5850 3900 5750 3900
Wire Wire Line
	5850 3800 5750 3800
Wire Wire Line
	5750 3700 6400 3700
Wire Wire Line
	5850 3600 5750 3600
Wire Wire Line
	5850 3500 5750 3500
Wire Wire Line
	5850 3100 5750 3100
Wire Wire Line
	5850 3200 5750 3200
Wire Wire Line
	5850 3300 5750 3300
Wire Wire Line
	5850 3400 5750 3400
Wire Wire Line
	5850 4000 5750 4000
Wire Wire Line
	5150 4000 5250 4000
Wire Wire Line
	4950 3000 5250 3000
Wire Wire Line
	6450 3000 6450 3050
Wire Wire Line
	9200 3300 8950 3300
Wire Wire Line
	9200 3500 9050 3500
Wire Wire Line
	9050 3600 9200 3600
Wire Wire Line
	9200 3700 9050 3700
Wire Wire Line
	9200 3400 9050 3400
Wire Wire Line
	9200 3800 8950 3800
Wire Wire Line
	8950 3800 8950 3850
Wire Wire Line
	5800 5800 5800 5700
Wire Wire Line
	5800 5700 5900 5700
Wire Wire Line
	5800 5600 5900 5600
Wire Wire Line
	5900 5500 5800 5500
Wire Wire Line
	5800 5500 5800 5400
Wire Wire Line
	8350 5700 8350 6050
Wire Wire Line
	8350 5700 8450 5700
Wire Wire Line
	7650 5600 8450 5600
Wire Wire Line
	1650 4200 1650 4400
Wire Wire Line
	1650 3700 1650 3900
Wire Wire Line
	1650 3300 1650 3200
Wire Wire Line
	1650 3200 1450 3200
Wire Wire Line
	1700 900  1850 900 
Wire Wire Line
	1850 1600 1700 1600
Wire Wire Line
	1700 1600 1700 1650
Wire Wire Line
	8300 5450 8300 5600
Wire Wire Line
	8300 4950 8300 5150
Connection ~ 8300 5600
Wire Wire Line
	8350 6000 7950 6000
Connection ~ 8350 6000
Wire Wire Line
	1650 4400 3150 4400
Connection ~ 1950 4400
Wire Wire Line
	1400 7100 1400 6700
Connection ~ 1650 7100
Wire Wire Line
	1400 5950 1400 6400
Connection ~ 1400 5950
Wire Wire Line
	2850 7100 2850 6700
Connection ~ 3100 7100
Wire Wire Line
	2850 6400 2850 5950
Connection ~ 2850 5950
Wire Wire Line
	7950 5600 7950 5650
Connection ~ 7950 5600
Wire Wire Line
	7950 6000 7950 5950
Wire Wire Line
	4600 3700 4600 3650
Wire Wire Line
	6400 3700 6400 3800
Wire Wire Line
	8950 3300 8950 3200
Wire Wire Line
	8100 1700 8100 1200
Wire Wire Line
	8100 1200 8200 1200
Wire Wire Line
	8200 1300 8100 1300
Connection ~ 8100 1300
Wire Wire Line
	8100 1400 8200 1400
Connection ~ 8100 1400
Wire Wire Line
	8200 1500 8100 1500
Connection ~ 8100 1500
Wire Wire Line
	8200 1600 8100 1600
Connection ~ 8100 1600
$Comp
L +3V3 #PWR?
U 1 1 551D19F0
P 7300 1100
F 0 "#PWR?" H 7300 950 60  0001 C CNN
F 1 "+3V3" H 7300 1240 60  0000 C CNN
F 2 "" H 7300 1100 60  0000 C CNN
F 3 "" H 7300 1100 60  0000 C CNN
	1    7300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1200 7300 1200
Wire Wire Line
	7300 1100 7300 1600
Wire Wire Line
	7300 1300 7400 1300
Connection ~ 7300 1200
Wire Wire Line
	7300 1400 7400 1400
Connection ~ 7300 1300
Wire Wire Line
	7300 1500 7400 1500
Connection ~ 7300 1400
Wire Wire Line
	7300 1600 7400 1600
Connection ~ 7300 1500
$EndSCHEMATC

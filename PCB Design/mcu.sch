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
Sheet 6 6
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
L dsPIC33FJ32GS606 U4
U 1 1 550F449E
P 5200 2400
F 0 "U4" H 5200 3650 60  0000 C CNN
F 1 "dsPIC33FJ32GS606" H 5150 150 60  0000 C CNN
F 2 "Housings_QFP:TQFP-64_10x10mm_Pitch0.5mm" H 5200 2400 60  0001 C CNN
F 3 "" H 5200 2400 60  0000 C CNN
	1    5200 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P14
U 1 1 550F44A5
P 1600 6400
F 0 "P14" H 1600 6750 50  0000 C CNN
F 1 "CONN_01X06" V 1700 6400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 1600 6400 60  0001 C CNN
F 3 "" H 1600 6400 60  0000 C CNN
	1    1600 6400
	-1   0    0    -1  
$EndComp
$Comp
L +3V3 #PWR053
U 1 1 550F44AC
P 2400 6150
F 0 "#PWR053" H 2400 6000 60  0001 C CNN
F 1 "+3V3" H 2400 6290 60  0000 C CNN
F 2 "" H 2400 6150 60  0000 C CNN
F 3 "" H 2400 6150 60  0000 C CNN
	1    2400 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR054
U 1 1 550F44B3
P 2400 6450
F 0 "#PWR054" H 2400 6200 60  0001 C CNN
F 1 "GND" H 2400 6300 60  0000 C CNN
F 2 "" H 2400 6450 60  0000 C CNN
F 3 "" H 2400 6450 60  0000 C CNN
	1    2400 6450
	1    0    0    -1  
$EndComp
Text Label 1850 6450 0    60   ~ 0
PGD
Text Label 1850 6550 0    60   ~ 0
PGC
Text Label 1850 6150 0    60   ~ 0
MCLR_in
$Comp
L +3V3 #PWR055
U 1 1 550F44C2
P 2250 3700
F 0 "#PWR055" H 2250 3550 60  0001 C CNN
F 1 "+3V3" H 2250 3840 60  0000 C CNN
F 2 "" H 2250 3700 60  0000 C CNN
F 3 "" H 2250 3700 60  0000 C CNN
	1    2250 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR056
U 1 1 550F44C8
P 2000 4350
F 0 "#PWR056" H 2000 4100 60  0001 C CNN
F 1 "GND" H 2000 4200 60  0000 C CNN
F 2 "" H 2000 4350 60  0000 C CNN
F 3 "" H 2000 4350 60  0000 C CNN
	1    2000 4350
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR057
U 1 1 550F44D2
P 2200 2000
F 0 "#PWR057" H 2200 1850 60  0001 C CNN
F 1 "+3V3" H 2200 2140 60  0000 C CNN
F 2 "" H 2200 2000 60  0000 C CNN
F 3 "" H 2200 2000 60  0000 C CNN
	1    2200 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR058
U 1 1 550F44D8
P 2000 2650
F 0 "#PWR058" H 2000 2400 60  0001 C CNN
F 1 "GND" H 2000 2500 60  0000 C CNN
F 2 "" H 2000 2650 60  0000 C CNN
F 3 "" H 2000 2650 60  0000 C CNN
	1    2000 2650
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR059
U 1 1 550F44E2
P 8000 3950
F 0 "#PWR059" H 8000 3800 60  0001 C CNN
F 1 "+3V3" H 8000 4090 60  0000 C CNN
F 2 "" H 8000 3950 60  0000 C CNN
F 3 "" H 8000 3950 60  0000 C CNN
	1    8000 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR060
U 1 1 550F44E8
P 7800 3700
F 0 "#PWR060" H 7800 3450 60  0001 C CNN
F 1 "GND" H 7800 3550 60  0000 C CNN
F 2 "" H 7800 3700 60  0000 C CNN
F 3 "" H 7800 3700 60  0000 C CNN
	1    7800 3700
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR061
U 1 1 550F44F1
P 7850 1900
F 0 "#PWR061" H 7850 1750 60  0001 C CNN
F 1 "+3V3" H 7850 2040 60  0000 C CNN
F 2 "" H 7850 1900 60  0000 C CNN
F 3 "" H 7850 1900 60  0000 C CNN
	1    7850 1900
	1    0    0    -1  
$EndComp
Text Label 6750 3100 0    60   ~ 0
PGD
Text Label 6750 3000 0    60   ~ 0
PGC
$Comp
L +3V3 #PWR062
U 1 1 550F450D
P 2100 3100
F 0 "#PWR062" H 2100 2950 60  0001 C CNN
F 1 "+3V3" H 2100 3240 60  0000 C CNN
F 2 "" H 2100 3100 60  0000 C CNN
F 3 "" H 2100 3100 60  0000 C CNN
	1    2100 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR063
U 1 1 550F4513
P 2100 3350
F 0 "#PWR063" H 2100 3100 60  0001 C CNN
F 1 "GND" H 2100 3200 60  0000 C CNN
F 2 "" H 2100 3350 60  0000 C CNN
F 3 "" H 2100 3350 60  0000 C CNN
	1    2100 3350
	1    0    0    -1  
$EndComp
Text Label 3000 1900 0    60   ~ 0
MCLR
$Comp
L CRYSTAL_SMD X2
U 1 1 550F4526
P 3950 6200
F 0 "X2" H 3950 6290 50  0000 C CNN
F 1 "10MHz" H 3980 6090 50  0000 L CNN
F 2 "" H 3950 6200 60  0001 C CNN
F 3 "" H 3950 6200 60  0000 C CNN
	1    3950 6200
	0    1    1    0   
$EndComp
$Comp
L C C18
U 1 1 550F452D
P 4250 5900
F 0 "C18" H 4300 6000 50  0000 L CNN
F 1 "22pF" H 4300 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4288 5750 30  0001 C CNN
F 3 "" H 4250 5900 60  0000 C CNN
	1    4250 5900
	0    1    1    0   
$EndComp
$Comp
L C C19
U 1 1 550F4534
P 4250 6500
F 0 "C19" H 4300 6600 50  0000 L CNN
F 1 "22pF" H 4300 6400 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4288 6350 30  0001 C CNN
F 3 "" H 4250 6500 60  0000 C CNN
	1    4250 6500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR064
U 1 1 550F453B
P 4550 6600
F 0 "#PWR064" H 4550 6350 60  0001 C CNN
F 1 "GND" H 4550 6450 60  0000 C CNN
F 2 "" H 4550 6600 60  0000 C CNN
F 3 "" H 4550 6600 60  0000 C CNN
	1    4550 6600
	1    0    0    -1  
$EndComp
Text Label 3400 5900 0    60   ~ 0
OSC1
Text Label 3400 6500 0    60   ~ 0
OSC2
Text Label 6750 3800 0    60   ~ 0
OSC1
Text Label 6750 3900 0    60   ~ 0
OSC2
$Comp
L C C20
U 1 1 550F4551
P 6100 6400
F 0 "C20" H 6150 6500 50  0000 L CNN
F 1 "10uF" H 6150 6300 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6138 6250 30  0001 C CNN
F 3 "" H 6100 6400 60  0000 C CNN
	1    6100 6400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR065
U 1 1 550F4558
P 6100 6700
F 0 "#PWR065" H 6100 6450 60  0001 C CNN
F 1 "GND" H 6100 6550 60  0000 C CNN
F 2 "" H 6100 6700 60  0000 C CNN
F 3 "" H 6100 6700 60  0000 C CNN
	1    6100 6700
	1    0    0    -1  
$EndComp
Text Label 5650 6050 0    60   ~ 0
Vcap
Text Label 6750 2100 0    60   ~ 0
Vcap
$Comp
L +3V3 #PWR066
U 1 1 550F4674
P 9100 5650
F 0 "#PWR066" H 9100 5500 60  0001 C CNN
F 1 "+3V3" H 9100 5790 60  0000 C CNN
F 2 "" H 9100 5650 60  0000 C CNN
F 3 "" H 9100 5650 60  0000 C CNN
	1    9100 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR067
U 1 1 550F46C2
P 9100 5800
F 0 "#PWR067" H 9100 5550 60  0001 C CNN
F 1 "GND" H 9100 5650 60  0000 C CNN
F 2 "" H 9100 5800 60  0000 C CNN
F 3 "" H 9100 5800 60  0000 C CNN
	1    9100 5800
	1    0    0    -1  
$EndComp
Text GLabel 8850 5650 0    60   Input ~ 0
V3.3
Text GLabel 8850 5800 0    60   Input ~ 0
GND
Text HLabel 2950 1300 0    60   Output ~ 0
SERVO_1
Text HLabel 2950 1400 0    60   Output ~ 0
SPI_SS
Text HLabel 2950 1500 0    60   Output ~ 0
SERVO_2
Text HLabel 2950 1600 0    60   Output ~ 0
SPI_CLK
Text HLabel 2950 1700 0    60   Input ~ 0
SPI_MISO
Text HLabel 2950 1800 0    60   Output ~ 0
SPI_MOSI
Text HLabel 2950 2000 0    60   Input ~ 0
Href
Text HLabel 7200 3500 2    60   Input ~ 0
vSync
Text HLabel 2950 2400 0    60   Input ~ 0
AN2
Text HLabel 2950 2500 0    60   Input ~ 0
AN5
Text HLabel 2950 2600 0    60   Input ~ 0
AN1
Text HLabel 7200 3600 2    60   Output ~ 0
~OE
Text HLabel 2950 2800 0    60   Input ~ 0
AN0
Text HLabel 2950 3000 0    60   Input ~ 0
AN3
Text HLabel 2950 3400 0    60   Input ~ 0
AN4
Text HLabel 2950 3500 0    60   Output ~ 0
DACOUT
Text HLabel 2950 3600 0    60   Output ~ 0
~WRST
Text HLabel 2950 3700 0    60   Output ~ 0
~RRST
Text HLabel 2950 4000 0    60   Output ~ 0
~WR
Text HLabel 2950 4100 0    60   Output ~ 0
LED0
Text HLabel 2950 4200 0    60   Output ~ 0
LED1
Text HLabel 7200 4300 2    60   Output ~ 0
LED2
Text HLabel 2950 4400 0    60   Output ~ 0
LED3
Text HLabel 2950 4500 0    60   Output ~ 0
LED4
Text HLabel 2950 4300 0    60   Input ~ 0
Reed
Text HLabel 7150 1400 2    60   Output ~ 0
MOT2_D2
Text HLabel 7150 1500 2    60   Output ~ 0
MOT2_D1
Text HLabel 7150 1600 2    60   Output ~ 0
MOT1_D2
Text HLabel 7150 1700 2    60   Output ~ 0
MOT1_D1
Text HLabel 7150 1800 2    60   Output ~ 0
MOT1_E
Text HLabel 7150 1900 2    60   Output ~ 0
MOT2_E
Text HLabel 7200 2200 2    60   Input ~ 0
Data_7
Text HLabel 7200 2300 2    60   Input ~ 0
Data_6
Text HLabel 7200 2400 2    60   Input ~ 0
Data_5
Text HLabel 7200 2500 2    60   Input ~ 0
Data_4
Text HLabel 7200 2600 2    60   Input ~ 0
Data_3
Text HLabel 7200 2700 2    60   Input ~ 0
Data_2
Text HLabel 7200 2800 2    60   Input ~ 0
Data_1
Text HLabel 7200 3200 2    60   Input ~ 0
Data_0
Text HLabel 7200 3300 2    60   Input ~ 0
BUT_0
Text HLabel 7200 3400 2    60   Input ~ 0
BUT_1
Text HLabel 2950 2300 0    60   Input ~ 0
MOT2_ENC
Text HLabel 2950 2700 0    60   Input ~ 0
MOT1_ENC
Text HLabel 7200 4100 2    60   Output ~ 0
SIO_C
Text HLabel 7200 4200 2    60   BiDi ~ 0
SIO_D
Text HLabel 7200 4400 2    60   Input ~ 0
U1RX
Text HLabel 7200 4500 2    60   Output ~ 0
U1TX
$Comp
L DPST RESET1
U 1 1 5510500A
P 9900 3050
F 0 "RESET1" H 10200 3100 50  0000 C CNN
F 1 "DPST" H 10200 3000 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 9900 3050 60  0001 C CNN
F 3 "" H 9900 3050 60  0000 C CNN
	1    9900 3050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR068
U 1 1 551050BF
P 9900 3650
F 0 "#PWR068" H 9900 3400 60  0001 C CNN
F 1 "GND" H 9900 3500 60  0000 C CNN
F 2 "" H 9900 3650 60  0000 C CNN
F 3 "" H 9900 3650 60  0000 C CNN
	1    9900 3650
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 55105247
P 8950 2450
F 0 "R13" V 9030 2450 50  0000 C CNN
F 1 "220" V 8957 2451 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8880 2450 30  0001 C CNN
F 3 "" H 8950 2450 30  0000 C CNN
	1    8950 2450
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 551052E6
P 9700 2100
F 0 "R14" V 9780 2100 50  0000 C CNN
F 1 "4.7k" V 9707 2101 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9630 2100 30  0001 C CNN
F 3 "" H 9700 2100 30  0000 C CNN
	1    9700 2100
	-1   0    0    1   
$EndComp
Text Label 10200 2450 0    60   ~ 0
MCLR_in
$Comp
L +3V3 #PWR069
U 1 1 5510573C
P 9700 1750
F 0 "#PWR069" H 9700 1600 60  0001 C CNN
F 1 "+3V3" H 9700 1890 60  0000 C CNN
F 2 "" H 9700 1750 60  0000 C CNN
F 3 "" H 9700 1750 60  0000 C CNN
	1    9700 1750
	1    0    0    -1  
$EndComp
Text Label 8300 2450 0    60   ~ 0
MCLR
$Comp
L C C21
U 1 1 551059AA
P 9350 2750
F 0 "C21" H 9400 2850 50  0000 L CNN
F 1 "100nF" H 9400 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 9388 2600 30  0001 C CNN
F 3 "" H 9350 2750 60  0000 C CNN
	1    9350 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR070
U 1 1 55105A71
P 9350 3050
F 0 "#PWR070" H 9350 2800 60  0001 C CNN
F 1 "GND" H 9350 2900 60  0000 C CNN
F 2 "" H 9350 3050 60  0000 C CNN
F 3 "" H 9350 3050 60  0000 C CNN
	1    9350 3050
	1    0    0    -1  
$EndComp
Text HLabel 7150 1300 2    60   Output ~ 0
RCK
Text HLabel 2950 3100 0    60   Output ~ 0
LED5
Wire Wire Line
	1800 6150 2250 6150
Wire Wire Line
	2400 6450 2400 6350
Wire Wire Line
	2400 6350 1800 6350
Wire Wire Line
	1800 6250 2400 6250
Wire Wire Line
	2400 6250 2400 6150
Wire Wire Line
	1800 6450 2250 6450
Wire Wire Line
	2250 6550 1800 6550
Wire Wire Line
	2000 3800 2000 4350
Wire Wire Line
	2000 3800 3400 3800
Wire Wire Line
	2250 3900 3400 3900
Wire Wire Line
	2250 3900 2250 3700
Wire Wire Line
	2000 2100 2000 2650
Wire Wire Line
	2000 2100 3400 2100
Wire Wire Line
	2200 2200 3400 2200
Wire Wire Line
	2200 2200 2200 2000
Wire Wire Line
	7800 3700 6700 3700
Wire Wire Line
	6700 4000 8000 4000
Wire Wire Line
	8000 4000 8000 3950
Wire Wire Line
	6700 2000 7850 2000
Wire Wire Line
	7850 2000 7850 1900
Wire Wire Line
	6700 4400 7200 4400
Wire Wire Line
	7200 4500 6700 4500
Wire Wire Line
	6700 3100 7200 3100
Wire Wire Line
	6700 3000 7200 3000
Wire Wire Line
	3400 2800 2950 2800
Wire Wire Line
	3400 2600 2950 2600
Wire Wire Line
	2950 2400 3400 2400
Wire Wire Line
	2950 3000 3400 3000
Wire Wire Line
	2950 3400 3400 3400
Wire Wire Line
	2100 3350 2100 3300
Wire Wire Line
	2100 3300 3400 3300
Wire Wire Line
	3400 3200 2100 3200
Wire Wire Line
	2100 3200 2100 3100
Wire Wire Line
	6700 1600 7150 1600
Wire Wire Line
	6700 1500 7150 1500
Wire Wire Line
	6700 1700 7150 1700
Wire Wire Line
	6700 4100 7200 4100
Wire Wire Line
	6700 4200 7200 4200
Wire Wire Line
	2950 1900 3400 1900
Wire Wire Line
	4550 5900 4550 6600
Wire Wire Line
	4400 5900 4550 5900
Wire Wire Line
	4400 6500 4550 6500
Connection ~ 4550 6500
Wire Wire Line
	3950 6400 3950 6500
Wire Wire Line
	3350 6500 4100 6500
Connection ~ 3950 6500
Wire Wire Line
	3350 5900 4100 5900
Wire Wire Line
	3950 6000 3950 5900
Connection ~ 3950 5900
Wire Wire Line
	6700 3800 7200 3800
Wire Wire Line
	6700 3900 7200 3900
Wire Wire Line
	6100 6550 6100 6700
Wire Wire Line
	6100 6050 6100 6250
Wire Wire Line
	5600 6050 6100 6050
Wire Wire Line
	6700 2100 7200 2100
Wire Wire Line
	6700 1400 7150 1400
Wire Wire Line
	3400 1500 2950 1500
Wire Wire Line
	3400 2000 2950 2000
Wire Wire Line
	2950 2300 3400 2300
Wire Wire Line
	6700 3500 7200 3500
Wire Wire Line
	6700 3600 7200 3600
Wire Wire Line
	6700 2800 7200 2800
Wire Wire Line
	6700 2700 7200 2700
Wire Wire Line
	7200 2600 6700 2600
Wire Wire Line
	6700 2500 7200 2500
Wire Wire Line
	7200 2400 6700 2400
Wire Wire Line
	6700 2300 7200 2300
Wire Wire Line
	7200 2200 6700 2200
Wire Wire Line
	6700 3200 7200 3200
Wire Wire Line
	6700 3300 7200 3300
Wire Wire Line
	6700 3400 7200 3400
Wire Wire Line
	2950 4000 3400 4000
Wire Wire Line
	2950 3600 3400 3600
Wire Wire Line
	2950 3700 3400 3700
Wire Wire Line
	2950 4100 3400 4100
Wire Wire Line
	2950 4300 3400 4300
Wire Wire Line
	2950 4400 3400 4400
Wire Wire Line
	2950 4500 3400 4500
Wire Wire Line
	6700 1300 7150 1300
Wire Wire Line
	3400 3500 2950 3500
Wire Wire Line
	3400 1600 2950 1600
Wire Wire Line
	2950 1700 3400 1700
Wire Wire Line
	3400 1800 2950 1800
Wire Wire Line
	3400 1300 2950 1300
Wire Wire Line
	2950 1400 3400 1400
Wire Wire Line
	2950 2700 3400 2700
Wire Wire Line
	9100 5800 8850 5800
Wire Wire Line
	8850 5650 9100 5650
Wire Wire Line
	2950 4200 3400 4200
Wire Wire Line
	2950 2500 3400 2500
Wire Wire Line
	9700 3550 9700 3650
Wire Wire Line
	9700 3650 10100 3650
Wire Wire Line
	10100 3650 10100 3550
Connection ~ 9900 3650
Wire Wire Line
	9100 2450 10600 2450
Wire Wire Line
	9700 2250 9700 2550
Connection ~ 9700 2450
Wire Wire Line
	10100 2550 10100 2450
Connection ~ 10100 2450
Wire Wire Line
	9700 1750 9700 1950
Wire Wire Line
	8250 2450 8800 2450
Wire Wire Line
	9350 2900 9350 3050
Wire Wire Line
	9350 2450 9350 2600
Connection ~ 9350 2450
Wire Wire Line
	6700 4300 7200 4300
Wire Wire Line
	2950 3100 3400 3100
Wire Wire Line
	3850 6200 3550 6200
Wire Wire Line
	3550 6200 3550 6250
$Comp
L GND #PWR071
U 1 1 5513A6E9
P 3550 6250
F 0 "#PWR071" H 3550 6000 60  0001 C CNN
F 1 "GND" H 3550 6100 60  0000 C CNN
F 2 "" H 3550 6250 60  0000 C CNN
F 3 "" H 3550 6250 60  0000 C CNN
	1    3550 6250
	1    0    0    -1  
$EndComp
NoConn ~ 1800 6650
Wire Wire Line
	7150 1800 6700 1800
Wire Wire Line
	6700 1900 7150 1900
NoConn ~ 7150 1800
NoConn ~ 7150 1900
$EndSCHEMATC

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
Sheet 2 6
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
L +3V3 #PWR01
U 1 1 551253EA
P 6600 2250
F 0 "#PWR01" H 6600 2100 60  0001 C CNN
F 1 "+3V3" H 6600 2390 60  0000 C CNN
F 2 "" H 6600 2250 60  0000 C CNN
F 3 "" H 6600 2250 60  0000 C CNN
	1    6600 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 551253F0
P 6600 2400
F 0 "#PWR02" H 6600 2150 60  0001 C CNN
F 1 "GND" H 6600 2250 60  0000 C CNN
F 2 "" H 6600 2400 60  0000 C CNN
F 3 "" H 6600 2400 60  0000 C CNN
	1    6600 2400
	1    0    0    -1  
$EndComp
Text GLabel 6350 2250 0    60   Input ~ 0
V3.3
Text GLabel 6350 2400 0    60   Input ~ 0
GND
Wire Wire Line
	6600 2400 6350 2400
Wire Wire Line
	6350 2250 6600 2250
Text HLabel 3000 2200 0    60   Input ~ 0
V_USB
$Comp
L CONN_01X03 P1
U 1 1 551253FD
P 2850 3900
F 0 "P1" H 2850 4100 50  0000 C CNN
F 1 "CONN_01X03" V 2950 3900 50  0000 C CNN
F 2 "" H 2850 3900 60  0000 C CNN
F 3 "" H 2850 3900 60  0000 C CNN
	1    2850 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3150 3800 3050 3800
Wire Wire Line
	3050 3900 3950 3900
$Comp
L 3.3VREG U1
U 1 1 551257AE
P 4300 3900
F 0 "U1" H 4450 3650 60  0000 C CNN
F 1 "3.3VREG" H 4250 4000 60  0000 C CNN
F 2 "" H 4300 3900 60  0000 C CNN
F 3 "" H 4300 3900 60  0000 C CNN
	1    4300 3900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR03
U 1 1 551258E1
P 4750 3800
F 0 "#PWR03" H 4750 3650 60  0001 C CNN
F 1 "+3V3" H 4750 3940 60  0000 C CNN
F 2 "" H 4750 3800 60  0000 C CNN
F 3 "" H 4750 3800 60  0000 C CNN
	1    4750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3900 6850 3900
Wire Wire Line
	4750 3800 4750 3950
$Comp
L GND #PWR04
U 1 1 55125915
P 4300 4450
F 0 "#PWR04" H 4300 4200 60  0001 C CNN
F 1 "GND" H 4300 4300 60  0000 C CNN
F 2 "" H 4300 4450 60  0000 C CNN
F 3 "" H 4300 4450 60  0000 C CNN
	1    4300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4450 4300 4200
$Comp
L C C1
U 1 1 55125943
P 3100 2450
F 0 "C1" H 3150 2550 50  0000 L CNN
F 1 "1uF" H 3150 2350 50  0000 L CNN
F 2 "" H 3138 2300 30  0000 C CNN
F 3 "" H 3100 2450 60  0000 C CNN
	1    3100 2450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 55125991
P 3350 2450
F 0 "C2" H 3400 2550 50  0000 L CNN
F 1 "100nF" H 3400 2350 50  0000 L CNN
F 2 "" H 3388 2300 30  0000 C CNN
F 3 "" H 3350 2450 60  0000 C CNN
	1    3350 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 55125A29
P 3100 2750
F 0 "#PWR05" H 3100 2500 60  0001 C CNN
F 1 "GND" H 3100 2600 60  0000 C CNN
F 2 "" H 3100 2750 60  0000 C CNN
F 3 "" H 3100 2750 60  0000 C CNN
	1    3100 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2600 3100 2750
Wire Wire Line
	3350 2700 3100 2700
Wire Wire Line
	3350 2600 3350 2700
Connection ~ 3100 2700
Wire Wire Line
	3000 2200 3750 2200
Wire Wire Line
	3100 2200 3100 2300
Connection ~ 3100 2200
Wire Wire Line
	3350 2200 3350 2300
Connection ~ 3350 2200
$Comp
L C C3
U 1 1 55125C19
P 4750 4100
F 0 "C3" H 4800 4200 50  0000 L CNN
F 1 "1uF" H 4800 4000 50  0000 L CNN
F 2 "" H 4788 3950 30  0000 C CNN
F 3 "" H 4750 4100 60  0000 C CNN
	1    4750 4100
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 55125C1F
P 5400 4100
F 0 "C5" H 5450 4200 50  0000 L CNN
F 1 "100nF" H 5450 4000 50  0000 L CNN
F 2 "" H 5438 3950 30  0000 C CNN
F 3 "" H 5400 4100 60  0000 C CNN
	1    5400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4400 4300 4400
Wire Wire Line
	4750 4250 4750 4400
Connection ~ 4300 4400
Wire Wire Line
	5000 4250 5000 4400
Connection ~ 4750 4400
Connection ~ 4750 3900
$Comp
L C C6
U 1 1 55125CE1
P 5800 4100
F 0 "C6" H 5850 4200 50  0000 L CNN
F 1 "100nF" H 5850 4000 50  0000 L CNN
F 2 "" H 5838 3950 30  0000 C CNN
F 3 "" H 5800 4100 60  0000 C CNN
	1    5800 4100
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 55125D10
P 6150 4100
F 0 "C7" H 6200 4200 50  0000 L CNN
F 1 "100nF" H 6200 4000 50  0000 L CNN
F 2 "" H 6188 3950 30  0000 C CNN
F 3 "" H 6150 4100 60  0000 C CNN
	1    6150 4100
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 55125D3E
P 6500 4100
F 0 "C8" H 6550 4200 50  0000 L CNN
F 1 "100nF" H 6550 4000 50  0000 L CNN
F 2 "" H 6538 3950 30  0000 C CNN
F 3 "" H 6500 4100 60  0000 C CNN
	1    6500 4100
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 55125D89
P 6850 4100
F 0 "C9" H 6900 4200 50  0000 L CNN
F 1 "100nF" H 6900 4000 50  0000 L CNN
F 2 "" H 6888 3950 30  0000 C CNN
F 3 "" H 6850 4100 60  0000 C CNN
	1    6850 4100
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 55125E15
P 5000 4100
F 0 "C4" H 5050 4200 50  0000 L CNN
F 1 "1uF" H 5050 4000 50  0000 L CNN
F 2 "" H 5038 3950 30  0000 C CNN
F 3 "" H 5000 4100 60  0000 C CNN
	1    5000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4250 5400 4400
Connection ~ 5000 4400
Connection ~ 5000 3900
Wire Wire Line
	5800 4250 5800 4400
Connection ~ 5400 4400
Connection ~ 5400 3900
Connection ~ 5800 3900
Connection ~ 6150 3900
Wire Wire Line
	6150 4250 6150 4400
Connection ~ 5800 4400
Wire Wire Line
	6500 4250 6500 4400
Connection ~ 6150 4400
Wire Wire Line
	6850 4250 6850 4400
Connection ~ 6500 4400
Connection ~ 6500 3900
$Comp
L CONN_01X02 P2
U 1 1 551263E1
P 3200 1100
F 0 "P2" H 3200 1250 50  0000 C CNN
F 1 "CONN_01X02" V 3300 1100 50  0000 C CNN
F 2 "" H 3200 1100 60  0000 C CNN
F 3 "" H 3200 1100 60  0000 C CNN
	1    3200 1100
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 551264A9
P 3550 1300
F 0 "#PWR06" H 3550 1050 60  0001 C CNN
F 1 "GND" H 3550 1150 60  0000 C CNN
F 2 "" H 3550 1300 60  0000 C CNN
F 3 "" H 3550 1300 60  0000 C CNN
	1    3550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1150 3550 1150
Wire Wire Line
	3550 1150 3550 1300
Text HLabel 4850 1050 2    60   Input ~ 0
V_Battery
$Comp
L FUSE F1
U 1 1 551265E8
P 4000 1050
F 0 "F1" H 4100 1100 50  0000 C CNN
F 1 "FUSE" H 3900 1000 50  0000 C CNN
F 2 "" H 4000 1050 60  0000 C CNN
F 3 "" H 4000 1050 60  0000 C CNN
	1    4000 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1050 3750 1050
Wire Wire Line
	5000 3900 5000 3950
Wire Wire Line
	5400 3950 5400 3900
Wire Wire Line
	5800 3950 5800 3900
Wire Wire Line
	6150 3950 6150 3900
Wire Wire Line
	6500 3950 6500 3900
Wire Wire Line
	6850 3900 6850 3950
Text HLabel 3150 3800 2    60   Input ~ 0
V_Battery
Wire Wire Line
	3150 4000 3050 4000
Text HLabel 3150 4000 2    60   Input ~ 0
V_USB
Wire Wire Line
	4250 1050 4850 1050
$Comp
L C C22
U 1 1 5513C923
P 4400 1250
F 0 "C22" H 4450 1350 50  0000 L CNN
F 1 "10uF" H 4450 1150 50  0000 L CNN
F 2 "" H 4438 1100 30  0000 C CNN
F 3 "" H 4400 1250 60  0000 C CNN
	1    4400 1250
	1    0    0    -1  
$EndComp
$Comp
L C C23
U 1 1 5513C9DF
P 4700 1250
F 0 "C23" H 4750 1350 50  0000 L CNN
F 1 "1uF" H 4750 1150 50  0000 L CNN
F 2 "" H 4738 1100 30  0000 C CNN
F 3 "" H 4700 1250 60  0000 C CNN
	1    4700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1100 4700 1050
Connection ~ 4700 1050
Wire Wire Line
	4400 1100 4400 1050
Connection ~ 4400 1050
$Comp
L GND #PWR07
U 1 1 5513CAE7
P 4550 1500
F 0 "#PWR07" H 4550 1250 60  0001 C CNN
F 1 "GND" H 4550 1350 60  0000 C CNN
F 2 "" H 4550 1500 60  0000 C CNN
F 3 "" H 4550 1500 60  0000 C CNN
	1    4550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1500 4700 1500
Wire Wire Line
	4700 1500 4700 1400
Wire Wire Line
	4400 1500 4400 1400
Connection ~ 4550 1500
$EndSCHEMATC

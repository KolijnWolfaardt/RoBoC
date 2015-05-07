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
Sheet 3 6
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
L LV8405V U2
U 1 1 5511E05F
P 5600 3700
F 0 "U2" H 5600 3200 60  0000 C CNN
F 1 "LV8405V" H 5600 4200 60  0000 C CNN
F 2 "RoBoC:SSOP-16_4.4x5.2mm_Pitch0.65mm_Handsoldering" H 5800 3250 60  0001 C CNN
F 3 "" H 5800 3250 60  0000 C CNN
	1    5600 3700
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR9
U 1 1 5511E545
P 1950 1250
F 0 "#PWR9" H 1950 1100 60  0001 C CNN
F 1 "+3V3" H 1950 1390 60  0000 C CNN
F 2 "" H 1950 1250 60  0000 C CNN
F 3 "" H 1950 1250 60  0000 C CNN
	1    1950 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 5511E54B
P 1950 1450
F 0 "#PWR10" H 1950 1200 60  0001 C CNN
F 1 "GND" H 1950 1300 60  0000 C CNN
F 2 "" H 1950 1450 60  0000 C CNN
F 3 "" H 1950 1450 60  0000 C CNN
	1    1950 1450
	1    0    0    -1  
$EndComp
Text GLabel 1700 1250 0    60   Input ~ 0
V3.3
Text GLabel 1700 1400 0    60   Input ~ 0
GND
$Comp
L CONN_01X03 P7
U 1 1 5511E558
P 4950 1750
F 0 "P7" H 4950 1950 50  0000 C CNN
F 1 "PWM 1" V 5050 1750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4950 1750 60  0001 C CNN
F 3 "" H 4950 1750 60  0000 C CNN
	1    4950 1750
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR13
U 1 1 5511E5F6
P 4200 1700
F 0 "#PWR13" H 4200 1550 60  0001 C CNN
F 1 "+3V3" H 4200 1840 60  0000 C CNN
F 2 "" H 4200 1700 60  0000 C CNN
F 3 "" H 4200 1700 60  0000 C CNN
	1    4200 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR14
U 1 1 5511E627
P 4200 1900
F 0 "#PWR14" H 4200 1650 60  0001 C CNN
F 1 "GND" H 4200 1750 60  0000 C CNN
F 2 "" H 4200 1900 60  0000 C CNN
F 3 "" H 4200 1900 60  0000 C CNN
	1    4200 1900
	1    0    0    -1  
$EndComp
Text HLabel 4650 1650 0    60   Input ~ 0
PWM1
$Comp
L CONN_01X03 P8
U 1 1 5511E6D4
P 6450 1750
F 0 "P8" H 6450 1950 50  0000 C CNN
F 1 "PWM 2" V 6550 1750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6450 1750 60  0001 C CNN
F 3 "" H 6450 1750 60  0000 C CNN
	1    6450 1750
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR16
U 1 1 5511E6DC
P 5700 1700
F 0 "#PWR16" H 5700 1550 60  0001 C CNN
F 1 "+3V3" H 5700 1840 60  0000 C CNN
F 2 "" H 5700 1700 60  0000 C CNN
F 3 "" H 5700 1700 60  0000 C CNN
	1    5700 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR17
U 1 1 5511E6E3
P 5700 1900
F 0 "#PWR17" H 5700 1650 60  0001 C CNN
F 1 "GND" H 5700 1750 60  0000 C CNN
F 2 "" H 5700 1900 60  0000 C CNN
F 3 "" H 5700 1900 60  0000 C CNN
	1    5700 1900
	1    0    0    -1  
$EndComp
Text HLabel 6150 1650 0    60   Input ~ 0
PWM2
$Comp
L CONN_01X03 P5
U 1 1 5511E7B0
P 1750 4950
F 0 "P5" H 1750 5150 50  0000 C CNN
F 1 "Motor 2" V 1850 4950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 1750 4950 60  0001 C CNN
F 3 "" H 1750 4950 60  0000 C CNN
	1    1750 4950
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 P4
U 1 1 5511E833
P 1700 3300
F 0 "P4" H 1700 3500 50  0000 C CNN
F 1 "Motor 1" V 1800 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 1700 3300 60  0001 C CNN
F 3 "" H 1700 3300 60  0000 C CNN
	1    1700 3300
	-1   0    0    -1  
$EndComp
Text HLabel 6250 3650 2    60   Input ~ 0
MOT1_D1
Text HLabel 6250 3750 2    60   Input ~ 0
MOT1_D2
Text HLabel 6250 3950 2    60   Input ~ 0
MOT2_D1
Text HLabel 6250 4050 2    60   Input ~ 0
MOT2_D2
$Comp
L C C10
U 1 1 5511EAB7
P 8200 3700
F 0 "C10" H 8250 3800 50  0000 L CNN
F 1 "10nF" H 8250 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8238 3550 30  0001 C CNN
F 3 "" H 8200 3700 60  0000 C CNN
	1    8200 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR20
U 1 1 5511EBD6
P 6850 3600
F 0 "#PWR20" H 6850 3350 60  0001 C CNN
F 1 "GND" H 6850 3450 60  0000 C CNN
F 2 "" H 6850 3600 60  0000 C CNN
F 3 "" H 6850 3600 60  0000 C CNN
	1    6850 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 5511EC3D
P 4400 4200
F 0 "#PWR15" H 4400 3950 60  0001 C CNN
F 1 "GND" H 4400 4050 60  0000 C CNN
F 2 "" H 4400 4200 60  0000 C CNN
F 3 "" H 4400 4200 60  0000 C CNN
	1    4400 4200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR21
U 1 1 5511ECB8
P 7050 3850
F 0 "#PWR21" H 7050 3700 60  0001 C CNN
F 1 "+3V3" H 7050 3990 60  0000 C CNN
F 2 "" H 7050 3850 60  0000 C CNN
F 3 "" H 7050 3850 60  0000 C CNN
	1    7050 3850
	1    0    0    -1  
$EndComp
Text Label 4700 3550 0    60   ~ 0
MOT1_1
Text Label 4700 3650 0    60   ~ 0
MOT1_2
Text Label 2000 4850 0    60   ~ 0
MOT2_1
Text Label 4700 3950 0    60   ~ 0
MOT2_2
Text Label 1950 3200 0    60   ~ 0
MOT1_1
Text Label 1950 3400 0    60   ~ 0
MOT1_2
Text Label 4700 3850 0    60   ~ 0
MOT2_1
Text Label 2000 5050 0    60   ~ 0
MOT2_2
Text Label 6150 3350 0    60   ~ 0
C1H
Text Label 6150 3450 0    60   ~ 0
C1L
Text Label 7900 3400 0    60   ~ 0
C1H
Text Label 7900 4000 0    60   ~ 0
C1L
Text Label 4750 3350 0    60   ~ 0
VG
Text Label 9250 3350 0    60   ~ 0
VG
$Comp
L C C11
U 1 1 5511F549
P 9600 3650
F 0 "C11" H 9650 3750 50  0000 L CNN
F 1 "100nF" H 9650 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 9638 3500 30  0001 C CNN
F 3 "" H 9600 3650 60  0000 C CNN
	1    9600 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR24
U 1 1 5511F5A6
P 9600 4000
F 0 "#PWR24" H 9600 3750 60  0001 C CNN
F 1 "GND" H 9600 3850 60  0000 C CNN
F 2 "" H 9600 4000 60  0000 C CNN
F 3 "" H 9600 4000 60  0000 C CNN
	1    9600 4000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P3
U 1 1 5511F6F8
P 5450 5600
F 0 "P3" H 5450 5800 50  0000 C CNN
F 1 "Encoder 1" V 5550 5600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5450 5600 60  0001 C CNN
F 3 "" H 5450 5600 60  0000 C CNN
	1    5450 5600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR19
U 1 1 5511F8CF
P 5750 5800
F 0 "#PWR19" H 5750 5550 60  0001 C CNN
F 1 "GND" H 5750 5650 60  0000 C CNN
F 2 "" H 5750 5800 60  0000 C CNN
F 3 "" H 5750 5800 60  0000 C CNN
	1    5750 5800
	1    0    0    -1  
$EndComp
Text HLabel 6150 5600 2    60   Output ~ 0
MOT1_ENC
$Comp
L CONN_01X03 P6
U 1 1 5511FCD2
P 7250 5550
F 0 "P6" H 7250 5750 50  0000 C CNN
F 1 "Encoder 2" V 7350 5550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 7250 5550 60  0001 C CNN
F 3 "" H 7250 5550 60  0000 C CNN
	1    7250 5550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR23
U 1 1 5511FCDE
P 7550 5750
F 0 "#PWR23" H 7550 5500 60  0001 C CNN
F 1 "GND" H 7550 5600 60  0000 C CNN
F 2 "" H 7550 5750 60  0000 C CNN
F 3 "" H 7550 5750 60  0000 C CNN
	1    7550 5750
	1    0    0    -1  
$EndComp
Text HLabel 7950 5550 2    60   Output ~ 0
MOT2_ENC
Text HLabel 4700 3450 0    60   Input ~ 0
V_Bat
NoConn ~ 1900 3300
NoConn ~ 1950 4950
$Comp
L +3V3 #PWR18
U 1 1 551360E1
P 5750 5400
F 0 "#PWR18" H 5750 5250 60  0001 C CNN
F 1 "+3V3" H 5750 5540 60  0000 C CNN
F 2 "" H 5750 5400 60  0000 C CNN
F 3 "" H 5750 5400 60  0000 C CNN
	1    5750 5400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR22
U 1 1 55136185
P 7550 5350
F 0 "#PWR22" H 7550 5200 60  0001 C CNN
F 1 "+3V3" H 7550 5490 60  0000 C CNN
F 2 "" H 7550 5350 60  0000 C CNN
F 3 "" H 7550 5350 60  0000 C CNN
	1    7550 5350
	1    0    0    -1  
$EndComp
Text HLabel 5000 4050 0    60   Input ~ 0
V_Bat
$Comp
L D D12
U 1 1 551816B5
P 2800 4650
F 0 "D12" H 2800 4750 50  0000 C CNN
F 1 "D" H 2800 4550 50  0000 C CNN
F 2 "RoBoC:SOD-323" H 2800 4650 60  0001 C CNN
F 3 "" H 2800 4650 60  0000 C CNN
	1    2800 4650
	0    -1   -1   0   
$EndComp
$Comp
L D D16
U 1 1 55181742
P 3100 4650
F 0 "D16" H 3100 4750 50  0000 C CNN
F 1 "D" H 3100 4550 50  0000 C CNN
F 2 "RoBoC:SOD-323" H 3100 4650 60  0001 C CNN
F 3 "" H 3100 4650 60  0000 C CNN
	1    3100 4650
	0    -1   -1   0   
$EndComp
$Comp
L D D13
U 1 1 5518177A
P 2800 5250
F 0 "D13" H 2800 5350 50  0000 C CNN
F 1 "D" H 2800 5150 50  0000 C CNN
F 2 "RoBoC:SOD-323" H 2800 5250 60  0001 C CNN
F 3 "" H 2800 5250 60  0000 C CNN
	1    2800 5250
	0    -1   -1   0   
$EndComp
$Comp
L D D17
U 1 1 551817DE
P 3100 5250
F 0 "D17" H 3100 5350 50  0000 C CNN
F 1 "D" H 3100 5150 50  0000 C CNN
F 2 "RoBoC:SOD-323" H 3100 5250 60  0001 C CNN
F 3 "" H 3100 5250 60  0000 C CNN
	1    3100 5250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR12
U 1 1 551818E7
P 2950 5500
F 0 "#PWR12" H 2950 5250 60  0001 C CNN
F 1 "GND" H 2950 5350 60  0000 C CNN
F 2 "" H 2950 5500 60  0000 C CNN
F 3 "" H 2950 5500 60  0000 C CNN
	1    2950 5500
	1    0    0    -1  
$EndComp
Text HLabel 2700 4450 0    60   Input ~ 0
V_Bat
$Comp
L D D10
U 1 1 55182139
P 2750 3000
F 0 "D10" H 2750 3100 50  0000 C CNN
F 1 "D" H 2750 2900 50  0000 C CNN
F 2 "RoBoC:SOD-323" H 2750 3000 60  0001 C CNN
F 3 "" H 2750 3000 60  0000 C CNN
	1    2750 3000
	0    -1   -1   0   
$EndComp
$Comp
L D D14
U 1 1 5518213F
P 3050 3000
F 0 "D14" H 3050 3100 50  0000 C CNN
F 1 "D" H 3050 2900 50  0000 C CNN
F 2 "RoBoC:SOD-323" H 3050 3000 60  0001 C CNN
F 3 "" H 3050 3000 60  0000 C CNN
	1    3050 3000
	0    -1   -1   0   
$EndComp
$Comp
L D D11
U 1 1 55182145
P 2750 3600
F 0 "D11" H 2750 3700 50  0000 C CNN
F 1 "D" H 2750 3500 50  0000 C CNN
F 2 "RoBoC:SOD-323" H 2750 3600 60  0001 C CNN
F 3 "" H 2750 3600 60  0000 C CNN
	1    2750 3600
	0    -1   -1   0   
$EndComp
$Comp
L D D15
U 1 1 5518214B
P 3050 3600
F 0 "D15" H 3050 3700 50  0000 C CNN
F 1 "D" H 3050 3500 50  0000 C CNN
F 2 "RoBoC:SOD-323" H 3050 3600 60  0001 C CNN
F 3 "" H 3050 3600 60  0000 C CNN
	1    3050 3600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR11
U 1 1 55182151
P 2900 3850
F 0 "#PWR11" H 2900 3600 60  0001 C CNN
F 1 "GND" H 2900 3700 60  0000 C CNN
F 2 "" H 2900 3850 60  0000 C CNN
F 3 "" H 2900 3850 60  0000 C CNN
	1    2900 3850
	1    0    0    -1  
$EndComp
Text HLabel 2650 2800 0    60   Input ~ 0
V_Bat
Wire Wire Line
	1950 1400 1700 1400
Wire Wire Line
	1700 1250 1950 1250
Wire Wire Line
	4750 1750 4200 1750
Wire Wire Line
	4750 1850 4200 1850
Wire Wire Line
	4200 1750 4200 1700
Wire Wire Line
	4200 1850 4200 1900
Wire Wire Line
	4650 1650 4750 1650
Wire Wire Line
	6250 1750 5700 1750
Wire Wire Line
	6250 1850 5700 1850
Wire Wire Line
	5700 1750 5700 1700
Wire Wire Line
	5700 1850 5700 1900
Wire Wire Line
	6150 1650 6250 1650
Wire Wire Line
	1950 4850 3100 4850
Wire Wire Line
	6100 3650 6250 3650
Wire Wire Line
	6100 3550 6850 3550
Wire Wire Line
	6850 3550 6850 3600
Wire Wire Line
	5100 3750 4400 3750
Wire Wire Line
	4400 3750 4400 4200
Wire Wire Line
	6100 3850 7050 3850
Wire Wire Line
	4700 3450 5100 3450
Wire Wire Line
	1950 5050 2800 5050
Wire Wire Line
	5100 3550 4700 3550
Wire Wire Line
	5100 3650 4700 3650
Wire Wire Line
	5100 3850 4700 3850
Wire Wire Line
	5100 3950 4700 3950
Wire Wire Line
	6100 3350 6450 3350
Wire Wire Line
	6450 3450 6100 3450
Wire Wire Line
	7850 3400 8200 3400
Wire Wire Line
	8200 3400 8200 3550
Wire Wire Line
	8200 3850 8200 4000
Wire Wire Line
	8200 4000 7850 4000
Wire Wire Line
	4700 3350 5100 3350
Wire Wire Line
	9200 3350 9600 3350
Wire Wire Line
	9600 3800 9600 4000
Wire Wire Line
	9600 3350 9600 3500
Wire Wire Line
	5750 5800 5750 5700
Wire Wire Line
	5750 5700 5650 5700
Wire Wire Line
	5650 5500 5750 5500
Wire Wire Line
	5650 5600 6150 5600
Wire Wire Line
	7550 5750 7550 5650
Wire Wire Line
	7550 5650 7450 5650
Wire Wire Line
	7450 5450 7550 5450
Wire Wire Line
	7450 5550 7950 5550
Wire Wire Line
	6100 3750 6250 3750
Wire Wire Line
	7550 5450 7550 5350
Wire Wire Line
	5750 5500 5750 5400
Wire Wire Line
	6100 3950 6250 3950
Wire Wire Line
	6100 4050 6250 4050
Wire Wire Line
	5100 4050 5000 4050
Wire Wire Line
	1950 1450 1950 1400
Wire Wire Line
	3100 4800 3100 5100
Wire Wire Line
	2800 4800 2800 5100
Connection ~ 2800 5050
Connection ~ 3100 4850
Wire Wire Line
	2700 4450 3400 4450
Wire Wire Line
	3100 4450 3100 4500
Wire Wire Line
	2800 4500 2800 4450
Connection ~ 2800 4450
Wire Wire Line
	2800 5400 2800 5450
Wire Wire Line
	2800 5450 3400 5450
Wire Wire Line
	2950 5450 2950 5500
Wire Wire Line
	3100 5450 3100 5400
Connection ~ 2950 5450
Wire Wire Line
	1900 3200 3050 3200
Wire Wire Line
	1900 3400 2750 3400
Wire Wire Line
	3050 3150 3050 3450
Wire Wire Line
	2750 3150 2750 3450
Connection ~ 2750 3400
Connection ~ 3050 3200
Wire Wire Line
	2650 2800 3350 2800
Wire Wire Line
	3050 2800 3050 2850
Wire Wire Line
	2750 2850 2750 2800
Connection ~ 2750 2800
Wire Wire Line
	2750 3750 2750 3800
Wire Wire Line
	2750 3800 3350 3800
Wire Wire Line
	2900 3800 2900 3850
Wire Wire Line
	3050 3800 3050 3750
Connection ~ 2900 3800
$Comp
L C C26
U 1 1 5538C790
P 3400 4950
F 0 "C26" H 3425 5050 50  0000 L CNN
F 1 "100nF" H 3425 4850 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3438 4800 30  0001 C CNN
F 3 "" H 3400 4950 60  0000 C CNN
	1    3400 4950
	1    0    0    -1  
$EndComp
$Comp
L C C25
U 1 1 5538C861
P 3350 3300
F 0 "C25" H 3375 3400 50  0000 L CNN
F 1 "100nF" H 3375 3200 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3388 3150 30  0001 C CNN
F 3 "" H 3350 3300 60  0000 C CNN
	1    3350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2800 3350 3150
Connection ~ 3050 2800
Wire Wire Line
	3350 3800 3350 3450
Connection ~ 3050 3800
Wire Wire Line
	3400 4450 3400 4800
Connection ~ 3100 4450
Wire Wire Line
	3400 5450 3400 5100
Connection ~ 3100 5450
$EndSCHEMATC

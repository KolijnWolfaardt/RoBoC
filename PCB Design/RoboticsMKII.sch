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
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4800 5500 2400 500 
U 550F3C71
F0 "power" 60
F1 "power.sch" 60
F2 "V_USB" I L 4800 5600 60 
F3 "V_Battery" O L 4800 5700 60 
$EndSheet
$Sheet
S 1100 3150 2400 1950
U 550F3C8C
F0 "motors" 60
F1 "motors.sch" 60
F2 "PWM1" I R 3500 3250 60 
F3 "PWM2" I R 3500 3350 60 
F4 "MOT1_D1" I R 3500 3650 60 
F5 "MOT1_D2" I R 3500 3750 60 
F6 "MOT2_D1" I R 3500 4050 60 
F7 "MOT2_D2" I R 3500 4150 60 
F8 "MOT1_ENC" O R 3500 3850 60 
F9 "MOT2_ENC" O R 3500 4250 60 
F10 "V_Bat" I R 3500 4450 60 
$EndSheet
$Sheet
S 8400 950  2400 4200
U 550F3CBF
F0 "gpio" 60
F1 "gpio.sch" 60
F2 "AN0" O L 8400 1050 60 
F3 "AN1" O L 8400 1150 60 
F4 "AN2" O L 8400 1250 60 
F5 "AN3" O L 8400 1350 60 
F6 "AN4" O L 8400 1450 60 
F7 "AN5" O L 8400 1550 60 
F8 "LED0" I L 8400 1750 60 
F9 "LED1" I L 8400 1850 60 
F10 "LED2" I L 8400 1950 60 
F11 "LED3" I L 8400 2050 60 
F12 "LED4" I L 8400 2150 60 
F13 "BUT_1" O L 8400 2450 60 
F14 "BUT_0" O L 8400 2350 60 
F15 "SIO_C" I L 8400 2650 60 
F16 "SIO_D" B L 8400 2750 60 
F17 "vSync" O L 8400 2850 60 
F18 "Href" O L 8400 2950 60 
F19 "DATA_7" O L 8400 3050 60 
F20 "DATA_3" O L 8400 3450 60 
F21 "DATA_1" O L 8400 3650 60 
F22 "DATA_6" O L 8400 3150 60 
F23 "DATA_2" O L 8400 3550 60 
F24 "DATA_0" O L 8400 3750 60 
F25 "RCK" I L 8400 3850 60 
F26 "~WR" I L 8400 3950 60 
F27 "~OE" I L 8400 4050 60 
F28 "~WRST" I L 8400 4150 60 
F29 "~RRST" I L 8400 4250 60 
F30 "SPI_CLK" I L 8400 4450 60 
F31 "SPI_MOSI" I L 8400 4550 60 
F32 "SPI_MISO" O L 8400 4650 60 
F33 "SPI_SS" I L 8400 4750 60 
F34 "DACOUT" I L 8400 4950 60 
F35 "Reed" I L 8400 5050 60 
F36 "LED5" I L 8400 2250 60 
F37 "DATA_5" O L 8400 3250 60 
F38 "DATA_4" O L 8400 3350 60 
$EndSheet
$Sheet
S 1100 950  2400 650 
U 550F45E9
F0 "usb" 60
F1 "usb.sch" 60
F2 "MCU_TX" I R 3500 1150 60 
F3 "MCU_RX" O R 3500 1050 60 
F4 "V_USB" I R 3500 1350 60 
$EndSheet
$Sheet
S 4800 950  2400 4200
U 550F3CEC
F0 "mcu" 60
F1 "mcu.sch" 60
F2 "SPI_SS" O R 7200 4750 60 
F3 "SERVO_2" O L 4800 3350 60 
F4 "SPI_CLK" O R 7200 4450 60 
F5 "SPI_MISO" I R 7200 4650 60 
F6 "SPI_MOSI" O R 7200 4550 60 
F7 "Href" I R 7200 2950 60 
F8 "vSync" I R 7200 2850 60 
F9 "AN2" I R 7200 1250 60 
F10 "AN5" I R 7200 1550 60 
F11 "AN1" I R 7200 1150 60 
F12 "AN0" I R 7200 1050 60 
F13 "AN3" I R 7200 1350 60 
F14 "AN4" I R 7200 1450 60 
F15 "DACOUT" O R 7200 4950 60 
F16 "~WRST" O R 7200 4150 60 
F17 "~RRST" O R 7200 4250 60 
F18 "~WR" O R 7200 3950 60 
F19 "LED0" O R 7200 1750 60 
F20 "LED1" O R 7200 1850 60 
F21 "LED2" O R 7200 1950 60 
F22 "LED3" O R 7200 2050 60 
F23 "LED4" O R 7200 2150 60 
F24 "Reed" I R 7200 5050 60 
F25 "MOT2_D2" O L 4800 4150 60 
F26 "MOT2_D1" O L 4800 4050 60 
F27 "MOT1_D2" O L 4800 3750 60 
F28 "MOT1_E" O L 4800 3550 60 
F29 "MOT2_E" O L 4800 3950 60 
F30 "Data_7" I R 7200 3050 60 
F31 "Data_6" I R 7200 3150 60 
F32 "Data_3" I R 7200 3450 60 
F33 "Data_2" I R 7200 3550 60 
F34 "Data_1" I R 7200 3650 60 
F35 "Data_0" I R 7200 3750 60 
F36 "BUT_0" I R 7200 2350 60 
F37 "BUT_1" I R 7200 2450 60 
F38 "MOT2_ENC" I L 4800 4250 60 
F39 "MOT1_ENC" I L 4800 3850 60 
F40 "SIO_C" O R 7200 2650 60 
F41 "U1RX" I L 4800 1050 60 
F42 "U1TX" O L 4800 1150 60 
F43 "SERVO_1" O L 4800 3250 60 
F44 "SIO_D" B R 7200 2750 60 
F45 "~OE" O R 7200 4050 60 
F46 "RCK" O R 7200 3850 60 
F47 "LED5" O R 7200 2250 60 
F48 "MOT1_D1" O L 4800 3650 60 
F49 "Data_4" I R 7200 3350 60 
F50 "Data_5" I R 7200 3250 60 
$EndSheet
Wire Wire Line
	3500 1050 4800 1050
Wire Wire Line
	3500 1150 4800 1150
Wire Wire Line
	7200 1750 8400 1750
Wire Wire Line
	8400 1850 7200 1850
Wire Wire Line
	7200 1950 8400 1950
Wire Wire Line
	8400 2050 7200 2050
Wire Wire Line
	7200 2150 8400 2150
Wire Wire Line
	7200 1050 8400 1050
Wire Wire Line
	8400 1150 7200 1150
Wire Wire Line
	7200 1250 8400 1250
Wire Wire Line
	8400 1350 7200 1350
Wire Wire Line
	7200 1450 8400 1450
Wire Wire Line
	7200 1550 8400 1550
Wire Wire Line
	8400 2350 7200 2350
Wire Wire Line
	7200 2450 8400 2450
Wire Wire Line
	7200 2650 8400 2650
Wire Wire Line
	8400 2750 7200 2750
Wire Wire Line
	7200 2850 8400 2850
Wire Wire Line
	8400 2950 7200 2950
Wire Wire Line
	7200 3050 8400 3050
Wire Wire Line
	8400 3150 7200 3150
Wire Wire Line
	8400 3450 7200 3450
Wire Wire Line
	7200 3550 8400 3550
Wire Wire Line
	8400 3650 7200 3650
Wire Wire Line
	7200 3750 8400 3750
Wire Wire Line
	8400 3850 7200 3850
Wire Wire Line
	7200 3950 8400 3950
Wire Wire Line
	8400 4050 7200 4050
Wire Wire Line
	7200 4150 8400 4150
Wire Wire Line
	8400 4250 7200 4250
Wire Wire Line
	8400 4450 7200 4450
Wire Wire Line
	7200 4550 8400 4550
Wire Wire Line
	8400 4650 7200 4650
Wire Wire Line
	7200 4750 8400 4750
Wire Wire Line
	7200 4950 8400 4950
Wire Wire Line
	8400 5050 7200 5050
Wire Wire Line
	7200 2250 8400 2250
Wire Wire Line
	3500 3250 4800 3250
Wire Wire Line
	4800 3350 3500 3350
Wire Wire Line
	3500 3650 4800 3650
Wire Wire Line
	4800 3750 3500 3750
Wire Wire Line
	3500 3850 4800 3850
Wire Wire Line
	4800 4050 3500 4050
Wire Wire Line
	3500 4150 4800 4150
Wire Wire Line
	4800 4250 3500 4250
Wire Wire Line
	3500 1350 4200 1350
Wire Wire Line
	4200 1350 4200 5600
Wire Wire Line
	4200 5600 4800 5600
Wire Wire Line
	4800 5700 4100 5700
Wire Wire Line
	4100 5700 4100 4450
Wire Wire Line
	4100 4450 3500 4450
$Comp
L CONN_01X01 P99
U 1 1 551B0034
P 2000 6350
F 0 "P99" H 2000 6450 50  0000 C CNN
F 1 "CONN_01X01" V 2100 6350 50  0000 C CNN
F 2 "RoBoC:MountingHole3mm" H 2000 6350 60  0001 C CNN
F 3 "" H 2000 6350 60  0000 C CNN
	1    2000 6350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P98
U 1 1 551B0790
P 2500 6350
F 0 "P98" H 2500 6450 50  0000 C CNN
F 1 "CONN_01X01" V 2600 6350 50  0000 C CNN
F 2 "RoBoC:MountingHole3mm" H 2500 6350 60  0001 C CNN
F 3 "" H 2500 6350 60  0000 C CNN
	1    2500 6350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P96
U 1 1 551B08EA
P 2500 6900
F 0 "P96" H 2500 7000 50  0000 C CNN
F 1 "CONN_01X01" V 2600 6900 50  0000 C CNN
F 2 "RoBoC:MountingHole3mm" H 2500 6900 60  0001 C CNN
F 3 "" H 2500 6900 60  0000 C CNN
	1    2500 6900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P97
U 1 1 551B0A44
P 2000 6900
F 0 "P97" H 2000 7000 50  0000 C CNN
F 1 "CONN_01X01" V 2100 6900 50  0000 C CNN
F 2 "RoBoC:MountingHole3mm" H 2000 6900 60  0001 C CNN
F 3 "" H 2000 6900 60  0000 C CNN
	1    2000 6900
	1    0    0    -1  
$EndComp
NoConn ~ 2300 6350
NoConn ~ 1800 6350
NoConn ~ 1800 6900
NoConn ~ 2300 6900
Text Notes 1850 6050 0    60   ~ 0
Mounting Holes
Wire Wire Line
	8400 3250 7200 3250
Wire Wire Line
	7200 3350 8400 3350
$EndSCHEMATC

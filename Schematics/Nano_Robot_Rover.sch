EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:modules
LIBS:l298
LIBS:L298N
LIBS:HC-SR04
LIBS:Nano_Robot_Rover-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 8350 7000 0    60   ~ 0
KTC Robot Rover (Arduino Nano)\nDesigned and Programmed by:\nAidan Lawrence\nwww.aidanlawrence.com\n
Text Notes 7450 7500 0    60   ~ 0
KTC Robot Rover (Arduino Nano)\n
Text Notes 8200 7650 0    60   ~ 0
Sunday, January 21st 2018
$Comp
L Arduino_Nano_v3.x A1
U 1 1 5A64DE55
P 5400 4200
F 0 "A1" H 5200 5225 50  0000 R CNN
F 1 "Arduino_Nano_v3.x" H 5200 5150 50  0000 R CNN
F 2 "Modules:Arduino_Nano" H 5550 3250 50  0001 L CNN
F 3 "" H 5400 3200 50  0001 C CNN
	1    5400 4200
	1    0    0    -1  
$EndComp
$Comp
L L298N IC1
U 1 1 5A64E008
P 7250 4000
F 0 "IC1" H 6749 4752 50  0000 L BNN
F 1 "L298N" H 6749 3398 50  0000 L BNN
F 2 "MULTIWATT-15" H 7250 4000 50  0001 L BNN
F 3 "IC BRIDGE DRIVER PAR 15MULTIWATT" H 7250 4000 50  0001 L BNN
F 4 "STMicroelectronics" H 7250 4000 50  0001 L BNN "Field4"
F 5 "Unavailable" H 7250 4000 50  0001 L BNN "Field5"
F 6 "Multiwatt-15 STMicroelectronics" H 7250 4000 50  0001 L BNN "Field6"
F 7 "None" H 7250 4000 50  0001 L BNN "Field7"
F 8 "L298N" H 7250 4000 50  0001 L BNN "Field8"
	1    7250 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A64E074
P 6650 4400
F 0 "#PWR?" H 6650 4150 50  0001 C CNN
F 1 "GND" H 6650 4250 50  0000 C CNN
F 2 "" H 6650 4400 50  0001 C CNN
F 3 "" H 6650 4400 50  0001 C CNN
	1    6650 4400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5A64E08C
P 6650 3400
F 0 "#PWR?" H 6650 3250 50  0001 C CNN
F 1 "VCC" H 6650 3550 50  0000 C CNN
F 2 "" H 6650 3400 50  0001 C CNN
F 3 "" H 6650 3400 50  0001 C CNN
	1    6650 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A64E0A4
P 5450 5300
F 0 "#PWR?" H 5450 5050 50  0001 C CNN
F 1 "GND" H 5450 5150 50  0000 C CNN
F 2 "" H 5450 5300 50  0001 C CNN
F 3 "" H 5450 5300 50  0001 C CNN
	1    5450 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5200 5500 5200
Wire Wire Line
	5450 5200 5450 5300
$Comp
L HC-SR04 U1
U 1 1 5A64E10A
P 4000 3800
F 0 "U1" H 4000 4000 50  0000 L BNN
F 1 "HC-SR04" H 4000 3400 50  0000 L BNN
F 2 "XCVR_HC-SR04" H 4000 3800 50  0001 L BNN
F 3 "Unavailable" H 4000 3800 50  0001 L BNN
F 4 "Ultrasonic Sensor Module" H 4000 3800 50  0001 L BNN "Field4"
F 5 "OSEPP" H 4000 3800 50  0001 L BNN "Field5"
F 6 "5.95 USD" H 4000 3800 50  0001 L BNN "Field6"
F 7 "None" H 4000 3800 50  0001 L BNN "Field7"
F 8 "HC-SR04" H 4000 3800 50  0001 L BNN "Field8"
	1    4000 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 4200 6650 4200
Wire Wire Line
	5900 4300 6550 4300
Wire Wire Line
	6550 4300 6550 4100
Wire Wire Line
	6550 4100 6650 4100
Wire Wire Line
	5900 4400 6500 4400
Wire Wire Line
	6500 4400 6500 4000
Wire Wire Line
	6500 4000 6650 4000
Wire Wire Line
	5900 4500 6450 4500
Wire Wire Line
	6450 4500 6450 3900
Wire Wire Line
	6450 3900 6650 3900
Wire Wire Line
	6650 3700 6650 3400
$Comp
L D D1
U 1 1 5A64E42C
P 4450 2700
F 0 "D1" H 4450 2800 50  0000 C CNN
F 1 "D" H 4450 2600 50  0000 C CNN
F 2 "" H 4450 2700 50  0001 C CNN
F 3 "" H 4450 2700 50  0001 C CNN
	1    4450 2700
	-1   0    0    1   
$EndComp
$Comp
L CP1_Small C1
U 1 1 5A64E487
P 4800 2700
F 0 "C1" H 4810 2770 50  0000 L CNN
F 1 "1000uF" H 4810 2620 50  0000 L CNN
F 2 "" H 4800 2700 50  0001 C CNN
F 3 "" H 4800 2700 50  0001 C CNN
	1    4800 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 2700 4700 2700
Wire Wire Line
	4650 2500 4650 2900
Wire Wire Line
	4650 2900 5300 2900
Wire Wire Line
	5300 2900 5300 3200
Connection ~ 4650 2700
$Comp
L VCC #PWR?
U 1 1 5A64E5CB
P 4300 2700
F 0 "#PWR?" H 4300 2550 50  0001 C CNN
F 1 "VCC" H 4300 2850 50  0000 C CNN
F 2 "" H 4300 2700 50  0001 C CNN
F 3 "" H 4300 2700 50  0001 C CNN
	1    4300 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2500 3550 2500
Wire Wire Line
	3550 2500 3550 4100
Wire Wire Line
	3550 4100 4200 4100
Wire Wire Line
	4200 4100 4200 3900
Wire Wire Line
	4200 3600 4700 3600
$Comp
L GND #PWR?
U 1 1 5A64E6D0
P 4700 3600
F 0 "#PWR?" H 4700 3350 50  0001 C CNN
F 1 "GND" H 4700 3450 50  0000 C CNN
F 2 "" H 4700 3600 50  0001 C CNN
F 3 "" H 4700 3600 50  0001 C CNN
	1    4700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3800 4300 3800
Wire Wire Line
	4300 3800 4300 4100
Wire Wire Line
	4300 4100 4900 4100
Wire Wire Line
	4900 4200 4350 4200
Wire Wire Line
	4350 4200 4350 3700
Wire Wire Line
	4350 3700 4200 3700
$Comp
L SW_Push_Dual SW1
U 1 1 5A64E8FC
P 3950 4550
F 0 "SW1" H 4000 4650 50  0000 L CNN
F 1 "Button" H 3950 4280 50  0000 C CNN
F 2 "" H 3950 4750 50  0001 C CNN
F 3 "" H 3950 4750 50  0001 C CNN
	1    3950 4550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5A64E96B
P 4150 4650
F 0 "C2" H 4160 4720 50  0000 L CNN
F 1 "1uF" H 4160 4570 50  0000 L CNN
F 2 "" H 4150 4650 50  0001 C CNN
F 3 "" H 4150 4650 50  0001 C CNN
	1    4150 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A64EADC
P 3750 4750
F 0 "#PWR?" H 3750 4500 50  0001 C CNN
F 1 "GND" H 3750 4600 50  0000 C CNN
F 2 "" H 3750 4750 50  0001 C CNN
F 3 "" H 3750 4750 50  0001 C CNN
	1    3750 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4550 3750 4300
Wire Wire Line
	3750 4300 4850 4300
Wire Wire Line
	4850 4300 4850 3800
Wire Wire Line
	4850 3800 4900 3800
$Comp
L Motor_DC M1
U 1 1 5A64EB26
P 8500 3300
F 0 "M1" H 8600 3400 50  0000 L CNN
F 1 "Motor_Right" H 8600 3100 50  0000 L TNN
F 2 "" H 8500 3210 50  0001 C CNN
F 3 "" H 8500 3210 50  0001 C CNN
	1    8500 3300
	1    0    0    -1  
$EndComp
$Comp
L Motor_DC M2
U 1 1 5A64EB7B
P 8500 4600
F 0 "M2" H 8600 4700 50  0000 L CNN
F 1 "Motor_Left" H 8600 4400 50  0000 L TNN
F 2 "" H 8500 4510 50  0001 C CNN
F 3 "" H 8500 4510 50  0001 C CNN
	1    8500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3600 8500 3900
Wire Wire Line
	8500 3900 7850 3900
Wire Wire Line
	7850 4000 8350 4000
Wire Wire Line
	8350 4000 8350 3100
Wire Wire Line
	8350 3100 8500 3100
Wire Wire Line
	8500 4400 8500 4100
Wire Wire Line
	8500 4100 7850 4100
Wire Wire Line
	8500 4900 8000 4900
Wire Wire Line
	8000 4900 8000 4200
Wire Wire Line
	8000 4200 7850 4200
$Comp
L GND #PWR?
U 1 1 5A64EDC6
P 4900 2700
F 0 "#PWR?" H 4900 2450 50  0001 C CNN
F 1 "GND" H 4900 2550 50  0000 C CNN
F 2 "" H 4900 2700 50  0001 C CNN
F 3 "" H 4900 2700 50  0001 C CNN
	1    4900 2700
	1    0    0    -1  
$EndComp
$EndSCHEMATC

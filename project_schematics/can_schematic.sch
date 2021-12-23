EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L MCU_ST_STM32F1:STM32F103C8Tx U?
U 1 1 61B4E596
P 3400 4650
F 0 "U?" H 3550 5350 50  0000 C CNN
F 1 "STM32F103C8Tx" H 3550 5500 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 2800 3250 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 3400 4650 50  0001 C CNN
	1    3400 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 61B4E597
P 3550 1650
F 0 "J?" H 3630 1642 50  0000 L CNN
F 1 "Conn_01x04" H 3630 1551 50  0000 L CNN
F 2 "" H 3550 1650 50  0001 C CNN
F 3 "~" H 3550 1650 50  0001 C CNN
	1    3550 1650
	1    0    0    -1  
$EndComp
Text Notes 2700 1150 0    79   ~ 0
Programming Header
Text Notes 7050 7100 0    79   ~ 0
NOTE: Abbreviated Schematic. \nDoes not show filtering or connectors. \nThis is only functional layout. \nAssume STM chip is the full Blue Pill Board
$Comp
L power:+3.3V #PWR?
U 1 1 61B4E598
P 3400 2900
F 0 "#PWR?" H 3400 2750 50  0001 C CNN
F 1 "+3.3V" H 3415 3073 50  0000 C CNN
F 2 "" H 3400 2900 50  0001 C CNN
F 3 "" H 3400 2900 50  0001 C CNN
	1    3400 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61B4E599
P 3350 6350
F 0 "#PWR?" H 3350 6100 50  0001 C CNN
F 1 "GND" H 3355 6177 50  0000 C CNN
F 2 "" H 3350 6350 50  0001 C CNN
F 3 "" H 3350 6350 50  0001 C CNN
	1    3350 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6150 3200 6350
Wire Wire Line
	3200 6350 3300 6350
Wire Wire Line
	3350 6350 3400 6350
Wire Wire Line
	3500 6350 3500 6150
Connection ~ 3350 6350
Wire Wire Line
	3300 6150 3300 6350
Connection ~ 3300 6350
Wire Wire Line
	3300 6350 3350 6350
Wire Wire Line
	3400 6150 3400 6350
Connection ~ 3400 6350
Wire Wire Line
	3400 6350 3500 6350
Wire Wire Line
	3400 2900 3300 2900
Wire Wire Line
	3200 2900 3200 3150
Wire Wire Line
	3400 2900 3500 2900
Wire Wire Line
	3600 2900 3600 3150
Connection ~ 3400 2900
Wire Wire Line
	3500 3150 3500 2900
Connection ~ 3500 2900
Wire Wire Line
	3500 2900 3600 2900
Wire Wire Line
	3400 3150 3400 2900
Wire Wire Line
	3300 3150 3300 2900
Connection ~ 3300 2900
Wire Wire Line
	3300 2900 3200 2900
$Comp
L power:GND #PWR?
U 1 1 61B4E59A
P 2850 1850
F 0 "#PWR?" H 2850 1600 50  0001 C CNN
F 1 "GND" H 2855 1677 50  0000 C CNN
F 2 "" H 2850 1850 50  0001 C CNN
F 3 "" H 2850 1850 50  0001 C CNN
	1    2850 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1850 3350 1850
Text Label 2850 1750 0    50   ~ 0
SWCLK
Wire Wire Line
	2850 1750 3350 1750
Text Label 2850 1650 0    50   ~ 0
SWDIO
Wire Wire Line
	2850 1650 3350 1650
$Comp
L power:+3.3V #PWR?
U 1 1 61B3E02E
P 2850 1550
F 0 "#PWR?" H 2850 1400 50  0001 C CNN
F 1 "+3.3V" H 2865 1723 50  0000 C CNN
F 2 "" H 2850 1550 50  0001 C CNN
F 3 "" H 2850 1550 50  0001 C CNN
	1    2850 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1550 3350 1550
Text Label 4550 5750 2    50   ~ 0
SWDIO
Wire Wire Line
	4550 5750 4000 5750
Text Label 4550 5850 2    50   ~ 0
SWCLK
Wire Wire Line
	4550 5850 4000 5850
Text Label 2150 4050 0    50   ~ 0
Built_In_LED
Wire Wire Line
	2150 4050 2700 4050
Text Label 2150 4750 0    50   ~ 0
SWO_Trace
Wire Wire Line
	2150 4750 2700 4750
$Comp
L Interface_CAN_LIN:MCP2551-I-P U?
U 1 1 61B4032A
P 5650 4800
F 0 "U?" H 6000 5400 50  0000 C CNN
F 1 "MCP2551-I-P" H 6050 5250 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5650 4300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 5650 4800 50  0001 C CNN
	1    5650 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61B40A02
P 6400 4800
F 0 "R?" H 6470 4846 50  0000 L CNN
F 1 "120" H 6470 4755 50  0000 L CNN
F 2 "" V 6330 4800 50  0001 C CNN
F 3 "~" H 6400 4800 50  0001 C CNN
	1    6400 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61B43B2E
P 5650 4250
F 0 "#PWR?" H 5650 4100 50  0001 C CNN
F 1 "+3.3V" H 5665 4423 50  0000 C CNN
F 2 "" H 5650 4250 50  0001 C CNN
F 3 "" H 5650 4250 50  0001 C CNN
	1    5650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4250 5650 4400
$Comp
L power:GND #PWR?
U 1 1 61B4596B
P 5650 5450
F 0 "#PWR?" H 5650 5200 50  0001 C CNN
F 1 "GND" H 5655 5277 50  0000 C CNN
F 2 "" H 5650 5450 50  0001 C CNN
F 3 "" H 5650 5450 50  0001 C CNN
	1    5650 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61B473AA
P 5000 5250
F 0 "R?" H 5070 5296 50  0000 L CNN
F 1 "1k" H 5070 5205 50  0000 L CNN
F 2 "" V 4930 5250 50  0001 C CNN
F 3 "~" H 5000 5250 50  0001 C CNN
	1    5000 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5100 5000 5000
Wire Wire Line
	5000 5000 5150 5000
Wire Wire Line
	5650 5450 5000 5450
Wire Wire Line
	5000 5450 5000 5400
Wire Wire Line
	5650 5200 5650 5450
Connection ~ 5650 5450
Wire Wire Line
	5150 4600 4300 4600
Wire Wire Line
	4300 5550 4000 5550
Wire Wire Line
	4300 4600 4300 5550
Wire Wire Line
	4000 5650 4400 5650
Wire Wire Line
	4400 5650 4400 4700
Wire Wire Line
	4400 4700 5150 4700
Wire Wire Line
	6150 4700 6250 4700
Wire Wire Line
	6250 4700 6250 4650
Wire Wire Line
	6250 4650 6400 4650
Wire Wire Line
	6150 4900 6250 4900
Wire Wire Line
	6250 4900 6250 4950
Wire Wire Line
	6250 4950 6400 4950
$EndSCHEMATC

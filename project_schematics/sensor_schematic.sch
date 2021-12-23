EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
U 1 1 61A60959
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
U 1 1 61A6095A
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
U 1 1 61A6095B
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
U 1 1 61A6095C
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
U 1 1 61B3F6E8
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
U 1 1 61B41435
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
L Device:LED D?
U 1 1 61B4F115
P 2100 5450
F 0 "D?" H 1650 5500 50  0000 C CNN
F 1 "LED2" H 1800 5500 50  0000 C CNN
F 2 "" H 2100 5450 50  0001 C CNN
F 3 "~" H 2100 5450 50  0001 C CNN
	1    2100 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61B4F7E8
P 2400 5450
F 0 "R?" V 2400 5300 50  0000 C CNN
F 1 "220" V 2400 5450 50  0000 C CNN
F 2 "" V 2330 5450 50  0001 C CNN
F 3 "~" H 2400 5450 50  0001 C CNN
	1    2400 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 5450 2700 5450
$Comp
L Device:LED D?
U 1 1 61B51E72
P 2100 5550
F 0 "D?" H 1650 5600 50  0000 C CNN
F 1 "LED1" H 1800 5600 50  0000 C CNN
F 2 "" H 2100 5550 50  0001 C CNN
F 3 "~" H 2100 5550 50  0001 C CNN
	1    2100 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61B51E7C
P 2400 5550
F 0 "R?" V 2400 5400 50  0000 C CNN
F 1 "220" V 2400 5550 50  0000 C CNN
F 2 "" V 2330 5550 50  0001 C CNN
F 3 "~" H 2400 5550 50  0001 C CNN
	1    2400 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 5550 2700 5550
$Comp
L Device:LED D?
U 1 1 61B58020
P 2100 4450
F 0 "D?" H 1650 4500 50  0000 C CNN
F 1 "LED4" H 1800 4500 50  0000 C CNN
F 2 "" H 2100 4450 50  0001 C CNN
F 3 "~" H 2100 4450 50  0001 C CNN
	1    2100 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61B580E8
P 2400 4450
F 0 "R?" V 2400 4300 50  0000 C CNN
F 1 "220" V 2400 4450 50  0000 C CNN
F 2 "" V 2330 4450 50  0001 C CNN
F 3 "~" H 2400 4450 50  0001 C CNN
	1    2400 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 4450 2700 4450
$Comp
L Device:LED D?
U 1 1 61B580F3
P 2100 4550
F 0 "D?" H 1650 4600 50  0000 C CNN
F 1 "LED3" H 1800 4600 50  0000 C CNN
F 2 "" H 2100 4550 50  0001 C CNN
F 3 "~" H 2100 4550 50  0001 C CNN
	1    2100 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61B580FD
P 2400 4550
F 0 "R?" V 2400 4400 50  0000 C CNN
F 1 "220" V 2400 4550 50  0000 C CNN
F 2 "" V 2330 4550 50  0001 C CNN
F 3 "~" H 2400 4550 50  0001 C CNN
	1    2400 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 4550 2700 4550
$Comp
L Device:R_POT RV?
U 1 1 61B60830
P 4650 4600
F 0 "RV?" V 4535 4600 50  0000 C CNN
F 1 "R_POT" V 4444 4600 50  0000 C CNN
F 2 "" H 4650 4600 50  0001 C CNN
F 3 "~" H 4650 4600 50  0001 C CNN
	1    4650 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 4450 4650 4450
$Comp
L power:GND #PWR?
U 1 1 61B621C2
P 4350 4700
F 0 "#PWR?" H 4350 4450 50  0001 C CNN
F 1 "GND" H 4355 4527 50  0000 C CNN
F 2 "" H 4350 4700 50  0001 C CNN
F 3 "" H 4350 4700 50  0001 C CNN
	1    4350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4600 4800 4600
$Comp
L power:+3.3V #PWR?
U 1 1 61B62D44
P 5000 4500
F 0 "#PWR?" H 5000 4350 50  0001 C CNN
F 1 "+3.3V" H 5015 4673 50  0000 C CNN
F 2 "" H 5000 4500 50  0001 C CNN
F 3 "" H 5000 4500 50  0001 C CNN
	1    5000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4700 4350 4600
Wire Wire Line
	4350 4600 4500 4600
Wire Wire Line
	5000 4500 5000 4600
$EndSCHEMATC
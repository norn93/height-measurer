EESchema Schematic File Version 4
EELAYER 30 0
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
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U?
U 1 1 5E0F4909
P 5550 3800
F 0 "U?" H 4906 3846 50  0000 R CNN
F 1 "ATmega328P-PU" H 4906 3755 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5550 3800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5550 3800 50  0001 C CNN
	1    5550 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0F5896
P 5550 5350
F 0 "#PWR?" H 5550 5100 50  0001 C CNN
F 1 "GND" H 5555 5177 50  0000 C CNN
F 2 "" H 5550 5350 50  0001 C CNN
F 3 "" H 5550 5350 50  0001 C CNN
	1    5550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5300 5550 5350
$Comp
L Device:Crystal_Small Y?
U 1 1 5E0F7ABA
P 6300 3250
F 0 "Y?" V 6254 3338 50  0000 L CNN
F 1 "16M" V 6345 3338 50  0000 L CNN
F 2 "" H 6300 3250 50  0001 C CNN
F 3 "~" H 6300 3250 50  0001 C CNN
	1    6300 3250
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E0FA25C
P 6500 3150
F 0 "C?" V 6271 3150 50  0000 C CNN
F 1 "22p" V 6362 3150 50  0000 C CNN
F 2 "" H 6500 3150 50  0001 C CNN
F 3 "~" H 6500 3150 50  0001 C CNN
	1    6500 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 3200 6200 3200
Wire Wire Line
	6200 3200 6200 3150
Wire Wire Line
	6200 3150 6300 3150
Wire Wire Line
	6150 3300 6200 3300
Wire Wire Line
	6200 3300 6200 3350
Wire Wire Line
	6200 3350 6300 3350
$Comp
L Device:C_Small C?
U 1 1 5E0F98BF
P 6500 3350
F 0 "C?" V 6729 3350 50  0000 C CNN
F 1 "22p" V 6638 3350 50  0000 C CNN
F 2 "" H 6500 3350 50  0001 C CNN
F 3 "~" H 6500 3350 50  0001 C CNN
	1    6500 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 3150 6300 3150
Connection ~ 6300 3150
Wire Wire Line
	6300 3350 6400 3350
Connection ~ 6300 3350
Wire Wire Line
	6600 3150 6650 3150
Wire Wire Line
	6650 3150 6650 3350
Wire Wire Line
	6650 3350 6600 3350
$Comp
L power:GND #PWR?
U 1 1 5E1049B8
P 6750 3250
F 0 "#PWR?" H 6750 3000 50  0001 C CNN
F 1 "GND" H 6755 3077 50  0000 C CNN
F 2 "" H 6750 3250 50  0001 C CNN
F 3 "" H 6750 3250 50  0001 C CNN
	1    6750 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3150 6750 3150
Wire Wire Line
	6750 3150 6750 3250
Connection ~ 6650 3150
$Comp
L Device:R_Small R?
U 1 1 5E10573D
P 6500 3950
F 0 "R?" H 6559 3996 50  0000 L CNN
F 1 "10k" H 6559 3905 50  0000 L CNN
F 2 "" H 6500 3950 50  0001 C CNN
F 3 "~" H 6500 3950 50  0001 C CNN
	1    6500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4100 6500 4100
Wire Wire Line
	6500 4100 6500 4050
$Comp
L Device:R_Small R?
U 1 1 5E10C8E1
P 6450 2950
F 0 "R?" V 6646 2950 50  0000 C CNN
F 1 "220R" V 6555 2950 50  0000 C CNN
F 2 "" H 6450 2950 50  0001 C CNN
F 3 "~" H 6450 2950 50  0001 C CNN
	1    6450 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 3100 6300 3100
Wire Wire Line
	6300 2950 6350 2950
$Comp
L Device:LED_Small D?
U 1 1 5E10F548
P 6700 2950
F 0 "D?" H 6700 2745 50  0000 C CNN
F 1 "RED" H 6700 2836 50  0000 C CNN
F 2 "" V 6700 2950 50  0001 C CNN
F 3 "~" V 6700 2950 50  0001 C CNN
	1    6700 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 2950 6600 2950
Wire Wire Line
	6750 3150 6850 3150
Wire Wire Line
	6850 2950 6800 2950
Connection ~ 6750 3150
Wire Wire Line
	6850 3150 6850 2950
Wire Wire Line
	6300 3100 6300 2950
$Comp
L Switch:SW_SPST SW?
U 1 1 5E11BE38
P 6750 4100
F 0 "SW?" H 6750 4335 50  0000 C CNN
F 1 "SW_SPST" H 6750 4244 50  0000 C CNN
F 2 "" H 6750 4100 50  0001 C CNN
F 3 "~" H 6750 4100 50  0001 C CNN
	1    6750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4100 6500 4100
Connection ~ 6500 4100
$Comp
L power:GND #PWR?
U 1 1 5E11DBA1
P 7000 4150
F 0 "#PWR?" H 7000 3900 50  0001 C CNN
F 1 "GND" H 7005 3977 50  0000 C CNN
F 2 "" H 7000 4150 50  0001 C CNN
F 3 "" H 7000 4150 50  0001 C CNN
	1    7000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4100 7000 4100
Wire Wire Line
	7000 4100 7000 4150
Wire Wire Line
	5650 2300 5650 2250
Wire Wire Line
	5650 2250 5550 2250
Connection ~ 5550 2250
Wire Wire Line
	5550 2250 5550 2300
Wire Wire Line
	4950 2600 4900 2600
Wire Wire Line
	4900 2600 4900 2250
Wire Wire Line
	4900 2250 5550 2250
NoConn ~ 6150 3800
NoConn ~ 6150 3700
NoConn ~ 6150 3600
NoConn ~ 6150 3500
NoConn ~ 6150 4300
NoConn ~ 6150 4400
$Comp
L Switch:SW_SPST SW?
U 1 1 5E12B9BA
P 6750 4500
F 0 "SW?" H 6750 4735 50  0000 C CNN
F 1 "SW_SPST" H 6750 4644 50  0000 C CNN
F 2 "" H 6750 4500 50  0001 C CNN
F 3 "~" H 6750 4500 50  0001 C CNN
	1    6750 4500
	1    0    0    -1  
$EndComp
Text Label 6200 3900 0    50   ~ 0
SDA
Text Label 6200 4000 0    50   ~ 0
SCL
Wire Wire Line
	6200 3900 6150 3900
Wire Wire Line
	6150 4000 6200 4000
Text Label 6200 4500 0    50   ~ 0
INTERUPT
Wire Wire Line
	6150 4500 6500 4500
$Comp
L Device:R_Small R?
U 1 1 5E141C45
P 6500 4650
F 0 "R?" H 6559 4696 50  0000 L CNN
F 1 "10k" H 6559 4605 50  0000 L CNN
F 2 "" H 6500 4650 50  0001 C CNN
F 3 "~" H 6500 4650 50  0001 C CNN
	1    6500 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4550 6500 4500
Connection ~ 6500 4500
Wire Wire Line
	6500 4500 6550 4500
$Comp
L power:GND #PWR?
U 1 1 5E1428E1
P 6500 4800
F 0 "#PWR?" H 6500 4550 50  0001 C CNN
F 1 "GND" H 6505 4627 50  0000 C CNN
F 2 "" H 6500 4800 50  0001 C CNN
F 3 "" H 6500 4800 50  0001 C CNN
	1    6500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4750 6500 4800
Wire Wire Line
	6950 4500 7150 4500
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5E1549B6
P 8150 3400
F 0 "J?" H 8230 3392 50  0000 L CNN
F 1 "BMP180 Breakout" H 8230 3301 50  0000 L CNN
F 2 "" H 8150 3400 50  0001 C CNN
F 3 "~" H 8150 3400 50  0001 C CNN
	1    8150 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5E155607
P 8150 4000
F 0 "J?" H 8230 3992 50  0000 L CNN
F 1 "OLED SCREEN" H 8230 3901 50  0000 L CNN
F 2 "" H 8150 4000 50  0001 C CNN
F 3 "~" H 8150 4000 50  0001 C CNN
	1    8150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1100 5400 1150
$Comp
L power:GND #PWR?
U 1 1 5E1595C6
P 5400 1150
F 0 "#PWR?" H 5400 900 50  0001 C CNN
F 1 "GND" H 5405 977 50  0000 C CNN
F 2 "" H 5400 1150 50  0001 C CNN
F 3 "" H 5400 1150 50  0001 C CNN
	1    5400 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 950  5400 1000
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5E167974
P 5650 1000
F 0 "J?" H 5730 992 50  0000 L CNN
F 1 "9V BATTERY" H 5730 901 50  0000 L CNN
F 2 "" H 5650 1000 50  0001 C CNN
F 3 "~" H 5650 1000 50  0001 C CNN
	1    5650 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1000 5450 1000
Wire Wire Line
	5400 1100 5450 1100
$Comp
L Regulator_Linear:MCP1700-3302E_SOT23 U?
U 1 1 5E16F7A8
P 7550 1650
F 0 "U?" H 7550 1892 50  0000 C CNN
F 1 "MCP1700-3302E_SOT23" H 7550 1801 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7550 1875 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001826D.pdf" H 7550 1650 50  0001 C CNN
	1    7550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5E1707CD
P 5400 950
F 0 "#PWR?" H 5400 800 50  0001 C CNN
F 1 "+BATT" H 5415 1123 50  0000 C CNN
F 2 "" H 5400 950 50  0001 C CNN
F 3 "" H 5400 950 50  0001 C CNN
	1    5400 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5E170ED3
P 6950 1500
F 0 "#PWR?" H 6950 1350 50  0001 C CNN
F 1 "+BATT" H 6965 1673 50  0000 C CNN
F 2 "" H 6950 1500 50  0001 C CNN
F 3 "" H 6950 1500 50  0001 C CNN
	1    6950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1650 7100 1650
Wire Wire Line
	6950 1650 6950 1500
Wire Wire Line
	7550 1950 7550 2000
$Comp
L power:GND #PWR?
U 1 1 5E173740
P 7550 2050
F 0 "#PWR?" H 7550 1800 50  0001 C CNN
F 1 "GND" H 7555 1877 50  0000 C CNN
F 2 "" H 7550 2050 50  0001 C CNN
F 3 "" H 7550 2050 50  0001 C CNN
	1    7550 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E173DC6
P 8100 1500
F 0 "#PWR?" H 8100 1350 50  0001 C CNN
F 1 "+3V3" H 8115 1673 50  0000 C CNN
F 2 "" H 8100 1500 50  0001 C CNN
F 3 "" H 8100 1500 50  0001 C CNN
	1    8100 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1500 8100 1650
$Comp
L Regulator_Linear:LM7805_TO220 U?
U 1 1 5E160A7A
P 9000 1650
F 0 "U?" H 9000 1892 50  0000 C CNN
F 1 "LM7805_TO220" H 9000 1801 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9000 1875 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 9000 1600 50  0001 C CNN
	1    9000 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5E164FF7
P 8400 1500
F 0 "#PWR?" H 8400 1350 50  0001 C CNN
F 1 "+BATT" H 8415 1673 50  0000 C CNN
F 2 "" H 8400 1500 50  0001 C CNN
F 3 "" H 8400 1500 50  0001 C CNN
	1    8400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1650 8700 1650
$Comp
L power:+5V #PWR?
U 1 1 5E1676B1
P 9450 1500
F 0 "#PWR?" H 9450 1350 50  0001 C CNN
F 1 "+5V" H 9465 1673 50  0000 C CNN
F 2 "" H 9450 1500 50  0001 C CNN
F 3 "" H 9450 1500 50  0001 C CNN
	1    9450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1500 9450 1650
Wire Wire Line
	9450 1650 9350 1650
$Comp
L power:GND #PWR?
U 1 1 5E168CB5
P 9000 2050
F 0 "#PWR?" H 9000 1800 50  0001 C CNN
F 1 "GND" H 9005 1877 50  0000 C CNN
F 2 "" H 9000 2050 50  0001 C CNN
F 3 "" H 9000 2050 50  0001 C CNN
	1    9000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2050 9000 2000
$Comp
L power:+5V #PWR?
U 1 1 5E16C523
P 5550 2000
F 0 "#PWR?" H 5550 1850 50  0001 C CNN
F 1 "+5V" H 5565 2173 50  0000 C CNN
F 2 "" H 5550 2000 50  0001 C CNN
F 3 "" H 5550 2000 50  0001 C CNN
	1    5550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2000 5550 2250
$Comp
L power:+5V #PWR?
U 1 1 5E170341
P 6500 3750
F 0 "#PWR?" H 6500 3600 50  0001 C CNN
F 1 "+5V" H 6515 3923 50  0000 C CNN
F 2 "" H 6500 3750 50  0001 C CNN
F 3 "" H 6500 3750 50  0001 C CNN
	1    6500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3750 6500 3850
$Comp
L power:+5V #PWR?
U 1 1 5E17200C
P 7150 4300
F 0 "#PWR?" H 7150 4150 50  0001 C CNN
F 1 "+5V" H 7165 4473 50  0000 C CNN
F 2 "" H 7150 4300 50  0001 C CNN
F 3 "" H 7150 4300 50  0001 C CNN
	1    7150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4300 7150 4500
$Comp
L Device:C_Small C?
U 1 1 5E1764FD
P 7100 1800
F 0 "C?" V 6871 1800 50  0000 C CNN
F 1 "220n" V 6962 1800 50  0000 C CNN
F 2 "" H 7100 1800 50  0001 C CNN
F 3 "~" H 7100 1800 50  0001 C CNN
	1    7100 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E178FCC
P 8550 1800
F 0 "C?" V 8321 1800 50  0000 C CNN
F 1 "220n" V 8412 1800 50  0000 C CNN
F 2 "" H 8550 1800 50  0001 C CNN
F 3 "~" H 8550 1800 50  0001 C CNN
	1    8550 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 1650 8550 1700
Connection ~ 8550 1650
Wire Wire Line
	7100 1650 7100 1700
Connection ~ 7100 1650
Wire Wire Line
	7100 1650 6950 1650
Wire Wire Line
	7100 1900 7100 2000
Wire Wire Line
	7100 2000 7550 2000
Connection ~ 7550 2000
Wire Wire Line
	7550 2000 7550 2050
Wire Wire Line
	8550 2000 9000 2000
Wire Wire Line
	8550 1900 8550 2000
Connection ~ 9000 2000
Wire Wire Line
	9000 2000 9000 1950
Wire Wire Line
	8100 1650 7900 1650
$Comp
L Device:C_Small C?
U 1 1 5E183154
P 7900 1800
F 0 "C?" V 7671 1800 50  0000 C CNN
F 1 "100n" V 7762 1800 50  0000 C CNN
F 2 "" H 7900 1800 50  0001 C CNN
F 3 "~" H 7900 1800 50  0001 C CNN
	1    7900 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	7900 1700 7900 1650
Connection ~ 7900 1650
Wire Wire Line
	7900 1650 7850 1650
Wire Wire Line
	7900 1900 7900 2000
Wire Wire Line
	7900 2000 7550 2000
$Comp
L Device:C_Small C?
U 1 1 5E185DDB
P 9350 1800
F 0 "C?" V 9121 1800 50  0000 C CNN
F 1 "100n" V 9212 1800 50  0000 C CNN
F 2 "" H 9350 1800 50  0001 C CNN
F 3 "~" H 9350 1800 50  0001 C CNN
	1    9350 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9350 1650 9350 1700
Connection ~ 9350 1650
Wire Wire Line
	9350 1650 9300 1650
Wire Wire Line
	9350 1900 9350 2000
Wire Wire Line
	9350 2000 9000 2000
Wire Wire Line
	8550 1650 8400 1650
Wire Wire Line
	8400 1650 8400 1500
$EndSCHEMATC

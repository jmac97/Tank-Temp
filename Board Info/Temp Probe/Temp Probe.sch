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
L Device:R R1
U 1 1 5F98B893
P 1650 1650
F 0 "R1" H 1720 1696 50  0000 L CNN
F 1 "10k" H 1720 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1580 1650 50  0001 C CNN
F 3 "~" H 1650 1650 50  0001 C CNN
	1    1650 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor TH1
U 1 1 5F98C49E
P 1650 2200
F 0 "TH1" H 1755 2246 50  0000 L CNN
F 1 "Thermistor" H 1755 2155 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-2-2.54_1x02_P2.54mm_Horizontal" H 1650 2200 50  0001 C CNN
F 3 "~" H 1650 2200 50  0001 C CNN
	1    1650 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F98C9D7
P 1650 2400
F 0 "#PWR0101" H 1650 2150 50  0001 C CNN
F 1 "GND" H 1655 2227 50  0000 C CNN
F 2 "" H 1650 2400 50  0001 C CNN
F 3 "" H 1650 2400 50  0001 C CNN
	1    1650 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5F98DFCA
P 1650 1500
F 0 "#PWR0102" H 1650 1350 50  0001 C CNN
F 1 "+3.3V" H 1665 1673 50  0000 C CNN
F 2 "" H 1650 1500 50  0001 C CNN
F 3 "" H 1650 1500 50  0001 C CNN
	1    1650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2600 4000 2600
Wire Wire Line
	4000 2000 3550 2000
Connection ~ 1650 1900
Wire Wire Line
	1650 1900 1650 2000
Wire Wire Line
	1650 1800 1650 1900
$Comp
L power:GND #PWR0103
U 1 1 5F991A60
P 3150 2300
F 0 "#PWR0103" H 3150 2050 50  0001 C CNN
F 1 "GND" H 3155 2127 50  0000 C CNN
F 2 "" H 3150 2300 50  0001 C CNN
F 3 "" H 3150 2300 50  0001 C CNN
	1    3150 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2100 2950 2600
Wire Wire Line
	4000 2000 4000 2600
$Comp
L power:+3.3V #PWR0104
U 1 1 5F992049
P 3150 1050
F 0 "#PWR0104" H 3150 900 50  0001 C CNN
F 1 "+3.3V" H 3165 1223 50  0000 C CNN
F 2 "" H 3150 1050 50  0001 C CNN
F 3 "" H 3150 1050 50  0001 C CNN
	1    3150 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F9927A6
P 3500 1350
F 0 "C2" H 3615 1396 50  0000 L CNN
F 1 ".1uF" H 3615 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3538 1200 50  0001 C CNN
F 3 "~" H 3500 1350 50  0001 C CNN
	1    3500 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F99704A
P 3500 1500
F 0 "#PWR0105" H 3500 1250 50  0001 C CNN
F 1 "GND" H 3505 1327 50  0000 C CNN
F 2 "" H 3500 1500 50  0001 C CNN
F 3 "" H 3500 1500 50  0001 C CNN
	1    3500 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1200 3150 1200
Wire Wire Line
	3150 1050 3150 1200
Connection ~ 3150 1200
Wire Wire Line
	3150 1200 3150 1700
Wire Wire Line
	1650 1900 2450 1900
$Comp
L Device:C C1
U 1 1 5F9999B6
P 2450 2150
F 0 "C1" H 2565 2196 50  0000 L CNN
F 1 ".1uF" H 2565 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2488 2000 50  0001 C CNN
F 3 "~" H 2450 2150 50  0001 C CNN
	1    2450 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1900 2450 2000
Connection ~ 2450 1900
Wire Wire Line
	2450 1900 2950 1900
$Comp
L power:GND #PWR0106
U 1 1 5F99A1F0
P 2450 2300
F 0 "#PWR0106" H 2450 2050 50  0001 C CNN
F 1 "GND" H 2455 2127 50  0000 C CNN
F 2 "" H 2450 2300 50  0001 C CNN
F 3 "" H 2450 2300 50  0001 C CNN
	1    2450 2300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual_x2 SW3
U 1 1 5F9AFFBA
P 1700 3750
F 0 "SW3" H 1700 4035 50  0000 C CNN
F 1 "SW_Push_Dual_x2" H 1700 3944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1700 3950 50  0001 C CNN
F 3 "~" H 1700 3950 50  0001 C CNN
	1    1700 3750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual_x2 SW2
U 1 1 5F9B06D8
P 1700 4550
F 0 "SW2" H 1700 4835 50  0000 C CNN
F 1 "SW_Push_Dual_x2" H 1700 4744 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1700 4750 50  0001 C CNN
F 3 "~" H 1700 4750 50  0001 C CNN
	1    1700 4550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual_x2 SW1
U 1 1 5F9B0E5F
P 1700 5350
F 0 "SW1" H 1700 5635 50  0000 C CNN
F 1 "SW_Push_Dual_x2" H 1700 5544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1700 5550 50  0001 C CNN
F 3 "~" H 1700 5550 50  0001 C CNN
	1    1700 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F9B27D2
P 1500 3750
F 0 "#PWR0107" H 1500 3500 50  0001 C CNN
F 1 "GND" H 1505 3577 50  0000 C CNN
F 2 "" H 1500 3750 50  0001 C CNN
F 3 "" H 1500 3750 50  0001 C CNN
	1    1500 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F9B2C60
P 1500 4550
F 0 "#PWR0108" H 1500 4300 50  0001 C CNN
F 1 "GND" H 1505 4377 50  0000 C CNN
F 2 "" H 1500 4550 50  0001 C CNN
F 3 "" H 1500 4550 50  0001 C CNN
	1    1500 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F9B3438
P 1500 5350
F 0 "#PWR0109" H 1500 5100 50  0001 C CNN
F 1 "GND" H 1505 5177 50  0000 C CNN
F 2 "" H 1500 5350 50  0001 C CNN
F 3 "" H 1500 5350 50  0001 C CNN
	1    1500 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5F9C243E
P 4950 2100
F 0 "J1" H 5058 2481 50  0000 C CNN
F 1 "Conn_01x06_Male" H 5058 2390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4950 2100 50  0001 C CNN
F 3 "~" H 4950 2100 50  0001 C CNN
	1    4950 2100
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x08_Male J3
U 1 1 5F9FBCF5
P 5700 1350
F 0 "J3" H 5808 1831 50  0000 C CNN
F 1 "Conn_01x08_Male" H 5808 1740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 5700 1350 50  0001 C CNN
F 3 "~" H 5700 1350 50  0001 C CNN
	1    5700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2000 4750 2000
Connection ~ 4000 2000
Text Label 3100 4500 2    50   ~ 0
D4
Text Label 3100 4600 2    50   ~ 0
D5
$Comp
L Connector:Conn_01x08_Male J2
U 1 1 5F9FDD23
P 3300 4500
F 0 "J2" H 3408 4981 50  0000 C CNN
F 1 "Conn_01x08_Male" H 3408 4890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3300 4500 50  0001 C CNN
F 3 "~" H 3300 4500 50  0001 C CNN
	1    3300 4500
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0113
U 1 1 5FA21A3D
P 6250 1350
F 0 "#PWR0113" H 6250 1200 50  0001 C CNN
F 1 "+3.3V" H 6265 1523 50  0000 C CNN
F 2 "" H 6250 1350 50  0001 C CNN
F 3 "" H 6250 1350 50  0001 C CNN
	1    6250 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5FA220C1
P 6250 1650
F 0 "#PWR0114" H 6250 1400 50  0001 C CNN
F 1 "GND" H 6255 1477 50  0000 C CNN
F 2 "" H 6250 1650 50  0001 C CNN
F 3 "" H 6250 1650 50  0001 C CNN
	1    6250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1350 6250 1350
Wire Wire Line
	5900 1650 6250 1650
Text Label 3100 4800 2    50   ~ 0
D7
Wire Wire Line
	1900 3750 2750 3750
Wire Wire Line
	2750 3750 2750 4500
Wire Wire Line
	2750 4500 3100 4500
Wire Wire Line
	1900 4550 2750 4550
Wire Wire Line
	2750 4550 2750 4600
Wire Wire Line
	2750 4600 3100 4600
Wire Wire Line
	1900 5350 2600 5350
Wire Wire Line
	2600 5350 2600 4800
Wire Wire Line
	2600 4800 3100 4800
Wire Wire Line
	4200 4050 4300 4050
Wire Wire Line
	4200 3900 4300 3900
$Comp
L power:GND #PWR0115
U 1 1 5FA3183D
P 4200 4050
F 0 "#PWR0115" H 4200 3800 50  0001 C CNN
F 1 "GND" H 4205 3877 50  0000 C CNN
F 2 "" H 4200 4050 50  0001 C CNN
F 3 "" H 4200 4050 50  0001 C CNN
	1    4200 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0116
U 1 1 5FA30E06
P 4200 3900
F 0 "#PWR0116" H 4200 3750 50  0001 C CNN
F 1 "+3.3V" H 4215 4073 50  0000 C CNN
F 2 "" H 4200 3900 50  0001 C CNN
F 3 "" H 4200 3900 50  0001 C CNN
	1    4200 3900
	1    0    0    -1  
$EndComp
$Comp
L ProbeLib:SSD1306_OLED U3
U 1 1 5F9BBE98
P 4650 3700
F 0 "U3" H 4750 3815 50  0000 C CNN
F 1 "SSD1306_OLED" H 4750 3724 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4800 3800 50  0001 C CNN
F 3 "" H 4800 3800 50  0001 C CNN
	1    4650 3700
	1    0    0    -1  
$EndComp
Text Label 7450 5050 2    50   ~ 0
D12
Text Label 7450 5450 2    50   ~ 0
SDA
Text Label 7450 5550 2    50   ~ 0
SCL
$Comp
L Connector:Conn_01x10_Male J4
U 1 1 5F9FED14
P 7650 5150
F 0 "J4" H 7758 5731 50  0000 C CNN
F 1 "Conn_01x10_Male" H 7758 5640 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 7650 5150 50  0001 C CNN
F 3 "~" H 7650 5150 50  0001 C CNN
	1    7650 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 4100 6550 4100
Wire Wire Line
	5900 4100 6150 4100
$Comp
L power:GND #PWR0110
U 1 1 5F9B9B6C
P 5900 4100
F 0 "#PWR0110" H 5900 3850 50  0001 C CNN
F 1 "GND" H 5905 3927 50  0000 C CNN
F 2 "" H 5900 4100 50  0001 C CNN
F 3 "" H 5900 4100 50  0001 C CNN
	1    5900 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F9B2052
P 6700 4100
F 0 "R2" V 6493 4100 50  0000 C CNN
F 1 "100" V 6584 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6630 4100 50  0001 C CNN
F 3 "~" H 6700 4100 50  0001 C CNN
	1    6700 4100
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5F9B1795
P 6300 4100
F 0 "D1" H 6293 4317 50  0000 C CNN
F 1 "LED" H 6293 4226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6300 4100 50  0001 C CNN
F 3 "~" H 6300 4100 50  0001 C CNN
	1    6300 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FA02178
P 6400 5100
F 0 "R4" H 6330 5054 50  0000 R CNN
F 1 "4.7k" H 6330 5145 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6330 5100 50  0001 C CNN
F 3 "~" H 6400 5100 50  0001 C CNN
	1    6400 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5F9F39C7
P 6000 5100
F 0 "R3" H 5930 5054 50  0000 R CNN
F 1 "4.7k" H 5930 5145 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5930 5100 50  0001 C CNN
F 3 "~" H 6000 5100 50  0001 C CNN
	1    6000 5100
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0111
U 1 1 5F9B6278
P 4200 5050
F 0 "#PWR0111" H 4200 4900 50  0001 C CNN
F 1 "+3.3V" H 4215 5223 50  0000 C CNN
F 2 "" H 4200 5050 50  0001 C CNN
F 3 "" H 4200 5050 50  0001 C CNN
	1    4200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4100 7200 4100
Wire Wire Line
	5200 4050 5500 4050
Wire Wire Line
	5500 5450 6000 5450
Wire Wire Line
	5200 3900 5650 3900
Wire Wire Line
	5650 5550 6400 5550
Wire Wire Line
	6000 5250 6000 5450
Connection ~ 6000 5450
Wire Wire Line
	6000 5450 7450 5450
Wire Wire Line
	6400 5250 6400 5550
Connection ~ 6400 5550
Wire Wire Line
	6400 5550 7450 5550
$Comp
L power:+3.3V #PWR0117
U 1 1 5FA63351
P 6000 4950
F 0 "#PWR0117" H 6000 4800 50  0001 C CNN
F 1 "+3.3V" H 6015 5123 50  0000 C CNN
F 2 "" H 6000 4950 50  0001 C CNN
F 3 "" H 6000 4950 50  0001 C CNN
	1    6000 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0118
U 1 1 5FA63D3B
P 6400 4950
F 0 "#PWR0118" H 6400 4800 50  0001 C CNN
F 1 "+3.3V" H 6415 5123 50  0000 C CNN
F 2 "" H 6400 4950 50  0001 C CNN
F 3 "" H 6400 4950 50  0001 C CNN
	1    6400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4100 7200 5050
Wire Wire Line
	7200 5050 7450 5050
$Comp
L Device:C C3
U 1 1 5FA3451F
P 4200 5200
F 0 "C3" H 4315 5246 50  0000 L CNN
F 1 ".1uF" H 4315 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4238 5050 50  0001 C CNN
F 3 "~" H 4200 5200 50  0001 C CNN
	1    4200 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5FA35155
P 4500 5550
F 0 "#PWR0119" H 4500 5300 50  0001 C CNN
F 1 "GND" H 4505 5377 50  0000 C CNN
F 2 "" H 4500 5550 50  0001 C CNN
F 3 "" H 4500 5550 50  0001 C CNN
	1    4500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4050 5500 5450
Wire Wire Line
	5650 3900 5650 5550
$Comp
L power:GND #PWR0120
U 1 1 5FAAE30A
P 6850 5100
F 0 "#PWR0120" H 6850 4850 50  0001 C CNN
F 1 "GND" H 6855 4927 50  0000 C CNN
F 2 "" H 6850 5100 50  0001 C CNN
F 3 "" H 6850 5100 50  0001 C CNN
	1    6850 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5100 7100 5100
Wire Wire Line
	7100 5100 7100 5250
Wire Wire Line
	7100 5250 7450 5250
$Comp
L Amplifier_Operational:OPA340NA U2
U 1 1 5FAD456F
P 3250 2000
F 0 "U2" H 3594 2046 50  0000 L CNN
F 1 "OPA340NA" H 3594 1955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3150 1800 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa340.pdf" H 3250 2200 50  0001 C CNN
	1    3250 2000
	1    0    0    -1  
$EndComp
Connection ~ 5650 5550
Connection ~ 5500 5450
Wire Wire Line
	5200 5550 5650 5550
Wire Wire Line
	5200 5450 5500 5450
$Comp
L ProbeLib:24LC01B U1
U 1 1 5FB074F4
P 4850 5300
F 0 "U1" H 4850 5475 50  0000 C CNN
F 1 "24LC01B" H 4850 5384 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4850 5300 50  0001 C CNN
F 3 "" H 4850 5300 50  0001 C CNN
	1    4850 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5450 5200 5350
Wire Wire Line
	4500 5450 4500 5550
Connection ~ 4500 5550
Wire Wire Line
	4500 5350 4200 5350
$EndSCHEMATC

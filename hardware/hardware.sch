EESchema Schematic File Version 4
LIBS:hardware-cache
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
L MCU_ST_STM32L0:STM32L031F6Px U1
U 1 1 5DE82E06
P 2250 2050
F 0 "U1" H 1900 2700 50  0000 C CNN
F 1 "STM32L031F6Px" H 1850 1250 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 1850 1350 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00140359.pdf" H 2250 2050 50  0001 C CNN
F 4 "C115208" H 2250 2050 50  0001 C CNN "LCSC"
	1    2250 2050
	1    0    0    -1  
$EndComp
Connection ~ 5050 2300
Wire Wire Line
	5200 2300 5200 2250
Wire Wire Line
	5050 2300 5200 2300
Wire Wire Line
	4900 2300 5050 2300
Wire Wire Line
	4900 2250 4900 2300
$Comp
L power:GND #PWR0102
U 1 1 5DE89FE4
P 5050 2300
F 0 "#PWR0102" H 5050 2050 50  0001 C CNN
F 1 "GND" H 5055 2127 50  0000 C CNN
F 2 "" H 5050 2300 50  0001 C CNN
F 3 "" H 5050 2300 50  0001 C CNN
	1    5050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1950 5200 1900
Wire Wire Line
	4900 1950 4900 1700
$Comp
L Device:R R5
U 1 1 5DE898D4
P 4900 2100
F 0 "R5" H 4970 2146 50  0000 L CNN
F 1 "10K" H 4970 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4830 2100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF1002TCE_C25744.pdf" H 4900 2100 50  0001 C CNN
F 4 "C25744" H 4900 2100 50  0001 C CNN "LCSC"
	1    4900 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5DE890F6
P 5200 2100
F 0 "R7" H 5270 2146 50  0000 L CNN
F 1 " 0.47 Ohm" H 5270 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5130 2100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAF470LT5E_C23411.pdf" H 5200 2100 50  0001 C CNN
F 4 "C23411" H 5200 2100 50  0001 C CNN "LCSC"
	1    5200 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1250 4450 1250
Wire Wire Line
	5200 1500 5200 1450
Wire Wire Line
	4150 1300 4150 1250
Wire Wire Line
	4150 1600 4150 1700
$Comp
L power:GND #PWR0101
U 1 1 5DE850E7
P 4150 1700
F 0 "#PWR0101" H 4150 1450 50  0001 C CNN
F 1 "GND" H 4155 1527 50  0000 C CNN
F 2 "" H 4150 1700 50  0001 C CNN
F 3 "" H 4150 1700 50  0001 C CNN
	1    4150 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5DE84B00
P 4150 1450
F 0 "C1" H 4265 1496 50  0000 L CNN
F 1 "4.7uF" H 4265 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4188 1300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Guangdong-Fenghua-Advanced-Tech-1206B475K500NT_C29823.pdf" H 4150 1450 50  0001 C CNN
F 4 "C29823" H 4150 1450 50  0001 C CNN "LCSC"
	1    4150 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5DE83E4B
P 4300 1250
F 0 "L1" V 4490 1250 50  0000 C CNN
F 1 "10 uH" V 4399 1250 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 4300 1250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Murata-Electronics-LQH32CN100K33L_C86069.pdf" H 4300 1250 50  0001 C CNN
F 4 "C86069" V 4300 1250 50  0001 C CNN "LCSC"
	1    4300 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 5DE8F631
P 5200 1050
F 0 "C4" H 5315 1096 50  0000 L CNN
F 1 "4.7uF" H 5315 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5238 900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Guangdong-Fenghua-Advanced-Tech-1206B475K500NT_C29823.pdf" H 5200 1050 50  0001 C CNN
F 4 "C29823" H 5200 1050 50  0001 C CNN "LCSC"
	1    5200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1200 5200 1250
Connection ~ 5200 1250
$Comp
L Diode:MBR0530 D4
U 1 1 5DE900EE
P 6100 700
F 0 "D4" H 6100 916 50  0000 C CNN
F 1 "MBR0530" H 6100 825 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 6100 525 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/ON-Semicon-ON-MBR0530_C232832.pdf" H 6100 700 50  0001 C CNN
F 4 "C232832" H 6100 700 50  0001 C CNN "LCSC"
	1    6100 700 
	1    0    0    -1  
$EndComp
$Comp
L Diode:MBR0530 D5
U 1 1 5DE90AAE
P 6100 1050
F 0 "D5" H 6100 834 50  0000 C CNN
F 1 "MBR0530" H 6100 925 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 6100 875 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/ON-Semicon-ON-MBR0530_C232832.pdf" H 6100 1050 50  0001 C CNN
F 4 "C232832" H 6100 1050 50  0001 C CNN "LCSC"
	1    6100 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 700  5750 700 
Wire Wire Line
	5200 700  5200 900 
Wire Wire Line
	5950 1050 5750 1050
Wire Wire Line
	5750 1050 5750 700 
Connection ~ 5750 700 
Wire Wire Line
	5750 700  5200 700 
Wire Wire Line
	5950 1450 5200 1450
Connection ~ 5200 1450
Wire Wire Line
	5200 1450 5200 1250
$Comp
L Device:C C6
U 1 1 5DE94F26
P 6500 1800
F 0 "C6" H 6615 1846 50  0000 L CNN
F 1 "1uF" H 6615 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6538 1650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 6500 1800 50  0001 C CNN
F 4 "C15849" H 6500 1800 50  0001 C CNN "LCSC"
	1    6500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1650 6500 1450
Wire Wire Line
	6500 1450 6250 1450
$Comp
L power:GND #PWR0103
U 1 1 5DE958A6
P 6500 2300
F 0 "#PWR0103" H 6500 2050 50  0001 C CNN
F 1 "GND" H 6505 2127 50  0000 C CNN
F 2 "" H 6500 2300 50  0001 C CNN
F 3 "" H 6500 2300 50  0001 C CNN
	1    6500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2300 6500 1950
$Comp
L power:GND #PWR0104
U 1 1 5DE962EF
P 6350 1050
F 0 "#PWR0104" H 6350 800 50  0001 C CNN
F 1 "GND" V 6355 922 50  0000 R CNN
F 2 "" H 6350 1050 50  0001 C CNN
F 3 "" H 6350 1050 50  0001 C CNN
	1    6350 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 1050 6250 1050
Wire Wire Line
	6250 700  6850 700 
Text Label 6400 700  0    50   ~ 0
PREVGL
Connection ~ 6500 1450
Wire Wire Line
	6500 1450 6800 1450
Text Label 6550 1450 0    50   ~ 0
PREVGH
NoConn ~ 9150 700 
Text Label 4900 1900 1    50   ~ 0
GDR
Wire Wire Line
	9150 800  9650 800 
Text Label 9200 900  0    50   ~ 0
RESE
$Comp
L Device:C_Small C11
U 1 1 5DEA4BA1
P 9950 1000
F 0 "C11" V 9900 850 50  0000 C CNN
F 1 "1uF" V 10000 850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9950 1000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 9950 1000 50  0001 C CNN
F 4 "C15849" V 9950 1000 50  0001 C CNN "LCSC"
	1    9950 1000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5DEA5771
P 10400 1050
F 0 "#PWR0105" H 10400 800 50  0001 C CNN
F 1 "GND" V 10405 922 50  0000 R CNN
F 2 "" H 10400 1050 50  0001 C CNN
F 3 "" H 10400 1050 50  0001 C CNN
	1    10400 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9150 1000 9850 1000
Wire Wire Line
	10050 1000 10400 1000
Wire Wire Line
	10400 1000 10400 1050
Wire Wire Line
	9150 900  9650 900 
Text Label 9200 800  0    50   ~ 0
GDR
Text Label 5200 1950 0    50   ~ 0
RESE
$Comp
L Device:C_Small C14
U 1 1 5DEAE1C3
P 10200 1100
F 0 "C14" V 10150 1200 50  0000 C CNN
F 1 "1uF" V 10250 1200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10200 1100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 10200 1100 50  0001 C CNN
F 4 "C15849" V 10200 1100 50  0001 C CNN "LCSC"
	1    10200 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 1100 9150 1100
Wire Wire Line
	10300 1100 10400 1100
Wire Wire Line
	10400 1100 10400 1050
Connection ~ 10400 1050
NoConn ~ 9150 1200
NoConn ~ 9150 1300
Wire Wire Line
	9150 1400 10400 1400
Wire Wire Line
	10400 1400 10400 1100
Connection ~ 10400 1100
Text Label 9200 1400 0    50   ~ 0
BS
Wire Wire Line
	9150 1500 9650 1500
Text Label 9200 1500 0    50   ~ 0
EINK_BUSY
Wire Wire Line
	9150 1600 9650 1600
Wire Wire Line
	9150 1700 9650 1700
Wire Wire Line
	9150 1800 9650 1800
Text Label 9200 1600 0    50   ~ 0
EINK_RESET
Text Label 9200 1800 0    50   ~ 0
EINK_CS
Wire Wire Line
	9150 1900 9650 1900
Wire Wire Line
	9150 2000 9650 2000
Text Label 9200 1900 0    50   ~ 0
SPI_SCK
Text Label 9200 2000 0    50   ~ 0
SPI_SDI
Wire Wire Line
	9150 2200 9650 2200
Wire Wire Line
	9650 2100 9650 2200
Wire Wire Line
	9150 2100 9650 2100
Connection ~ 9650 2200
$Comp
L power:+3.3V #PWR0106
U 1 1 5DE91176
P 10000 2200
F 0 "#PWR0106" H 10000 2050 50  0001 C CNN
F 1 "+3.3V" H 10015 2373 50  0000 C CNN
F 2 "" H 10000 2200 50  0001 C CNN
F 3 "" H 10000 2200 50  0001 C CNN
	1    10000 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5DE9262A
P 10300 2200
F 0 "C16" V 10250 2100 50  0000 C CNN
F 1 "1uF" V 10350 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10300 2200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 10300 2200 50  0001 C CNN
F 4 "C15849" V 10300 2200 50  0001 C CNN "LCSC"
	1    10300 2200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5DE92E60
P 10400 2550
F 0 "#PWR0107" H 10400 2300 50  0001 C CNN
F 1 "GND" V 10405 2422 50  0000 R CNN
F 2 "" H 10400 2550 50  0001 C CNN
F 3 "" H 10400 2550 50  0001 C CNN
	1    10400 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 2200 10000 2200
Wire Wire Line
	10000 2200 10200 2200
Connection ~ 10000 2200
Wire Wire Line
	10400 2200 10400 2300
Wire Wire Line
	9150 2300 10400 2300
Connection ~ 10400 2300
Wire Wire Line
	10400 2300 10400 2400
$Comp
L Device:C_Small C9
U 1 1 5DE958BC
P 9800 2400
F 0 "C9" V 9750 2500 50  0000 C CNN
F 1 "1uF" V 9850 2500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9800 2400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 9800 2400 50  0001 C CNN
F 4 "C15849" V 9800 2400 50  0001 C CNN "LCSC"
	1    9800 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 2400 9700 2400
Wire Wire Line
	9900 2400 10400 2400
Connection ~ 10400 2400
Wire Wire Line
	10400 2400 10400 2500
$Comp
L Device:C_Small C8
U 1 1 5DE9767B
P 9600 2500
F 0 "C8" V 9550 2400 50  0000 C CNN
F 1 "1uF" V 9650 2400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9600 2500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 9600 2500 50  0001 C CNN
F 4 "C15849" V 9600 2500 50  0001 C CNN "LCSC"
	1    9600 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 2500 9500 2500
Connection ~ 10400 2500
Wire Wire Line
	10400 2500 10400 2550
Wire Wire Line
	9700 2500 10400 2500
$Comp
L Device:C_Small C12
U 1 1 5DE99F7A
P 10050 2600
F 0 "C12" V 10000 2500 50  0000 C CNN
F 1 "1uF" V 10100 2500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10050 2600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 10050 2600 50  0001 C CNN
F 4 "C15849" V 10050 2600 50  0001 C CNN "LCSC"
	1    10050 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	10400 2600 10400 2550
Connection ~ 10400 2550
Wire Wire Line
	9150 2700 9650 2700
Wire Wire Line
	9950 2600 9150 2600
Wire Wire Line
	10150 2600 10400 2600
Text Label 9200 2700 0    50   ~ 0
PREVGH
$Comp
L Device:C_Small C13
U 1 1 5DEA3888
P 10050 2800
F 0 "C13" V 10000 2900 50  0000 C CNN
F 1 "1uF" V 10100 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10050 2800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 10050 2800 50  0001 C CNN
F 4 "C15849" V 10050 2800 50  0001 C CNN "LCSC"
	1    10050 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 2800 9950 2800
Wire Wire Line
	10150 2800 10400 2800
Wire Wire Line
	10400 2800 10400 2600
Connection ~ 10400 2600
$Comp
L Device:C_Small C10
U 1 1 5DEA5C4C
P 9850 2900
F 0 "C10" V 9800 2800 50  0000 C CNN
F 1 "1uF" V 9900 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9850 2900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 9850 2900 50  0001 C CNN
F 4 "C15849" V 9850 2900 50  0001 C CNN "LCSC"
	1    9850 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 2900 9750 2900
Wire Wire Line
	9950 2900 10400 2900
Wire Wire Line
	10400 2900 10400 2800
Connection ~ 10400 2800
$Comp
L Device:C_Small C15
U 1 1 5DEA81D2
P 10250 3000
F 0 "C15" V 10200 2900 50  0000 C CNN
F 1 "1uF" V 10300 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10250 3000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 10250 3000 50  0001 C CNN
F 4 "C15849" V 10250 3000 50  0001 C CNN "LCSC"
	1    10250 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 3000 9150 3000
Wire Wire Line
	10350 3000 10400 3000
Wire Wire Line
	10400 3000 10400 2900
Connection ~ 10400 2900
Text Label 9200 2900 0    50   ~ 0
PREVGL
Text Label 9200 3000 0    50   ~ 0
VCOM
$Comp
L power:+3.3V #PWR0108
U 1 1 5DEB8597
P 4150 1100
F 0 "#PWR0108" H 4150 950 50  0001 C CNN
F 1 "+3.3V" H 4165 1273 50  0000 C CNN
F 2 "" H 4150 1100 50  0001 C CNN
F 3 "" H 4150 1100 50  0001 C CNN
	1    4150 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1100 4150 1250
Connection ~ 4150 1250
$Comp
L TP4056:TP4056 IC1
U 1 1 5DEBCBEF
P 2400 4000
F 0 "IC1" H 2400 4567 50  0000 C CNN
F 1 "TP4056" H 2400 4476 50  0000 C CNN
F 2 "TP4056:SOP-8" H 2400 4000 50  0001 L BNN
F 3 "https://datasheet.lcsc.com/szlcsc/1906261508_Nanjing-Extension-Microelectronics-TP4056-42-ESOP8_C16581.pdf" H 2400 4000 50  0001 L BNN
F 4 "NanJing Top Power ASIC Corp." H 2400 4000 50  0001 L BNN "Field4"
F 5 "None" H 2400 4000 50  0001 L BNN "Field5"
F 6 "TP4056" H 2400 4000 50  0001 L BNN "Field6"
F 7 "" H 2400 4000 50  0001 L BNN "Field7"
F 8 "Unavailable" H 2400 4000 50  0001 L BNN "Field8"
F 9 "C16581" H 2400 4000 50  0001 C CNN "LCSC"
	1    2400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3700 1800 3800
Connection ~ 1800 3700
$Comp
L Device:LED_Small D2
U 1 1 5DEC3843
P 1600 4000
F 0 "D2" H 1550 3950 50  0000 R CNN
F 1 "RED" H 1550 4050 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" V 1600 4000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Hubei-KENTO-Elec-KT-0603R_C2286.pdf" V 1600 4000 50  0001 C CNN
F 4 "C2286" V 1600 4000 50  0001 C CNN "LCSC"
	1    1600 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5DEC54FA
P 1400 3800
F 0 "R2" H 1300 3850 50  0000 C CNN
F 1 "2k" H 1300 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1400 3800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF2001TCE_C4109.pdf" H 1400 3800 50  0001 C CNN
F 4 "C4109" V 1400 3800 50  0001 C CNN "LCSC"
	1    1400 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 5DECE3AB
P 1450 4200
F 0 "D1" H 1400 4150 50  0000 R CNN
F 1 "GREEN" H 1400 4250 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" V 1450 4200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-19-217-GHC-YR1S2-3T_C72043.pdf" V 1450 4200 50  0001 C CNN
F 4 "C72043" V 1450 4200 50  0001 C CNN "LCSC"
	1    1450 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 3900 1000 3700
Connection ~ 1000 3700
$Comp
L Device:R_Small R1
U 1 1 5DED5C57
P 1000 4000
F 0 "R1" H 900 4050 50  0000 C CNN
F 1 "2k" H 900 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1000 4000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF2001TCE_C4109.pdf" H 1000 4000 50  0001 C CNN
F 4 "C4109" V 1000 4000 50  0001 C CNN "LCSC"
	1    1000 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 4200 1800 4200
Wire Wire Line
	1800 4200 1800 4100
Wire Wire Line
	1350 4200 1000 4200
Wire Wire Line
	1000 4200 1000 4100
$Comp
L Device:C_Small C2
U 1 1 5DEDC0BE
P 550 3950
F 0 "C2" H 642 3996 50  0000 L CNN
F 1 "10uF" H 642 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 550 3950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21A106KAYNNNE_C15850.pdf" H 550 3950 50  0001 C CNN
F 4 "C15850" H 550 3950 50  0001 C CNN "LCSC"
	1    550  3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	550  3850 550  3700
Wire Wire Line
	550  3700 1000 3700
$Comp
L power:GND #PWR0109
U 1 1 5DEE3EE9
P 2400 4750
F 0 "#PWR0109" H 2400 4500 50  0001 C CNN
F 1 "GND" H 2405 4577 50  0000 C CNN
F 2 "" H 2400 4750 50  0001 C CNN
F 3 "" H 2400 4750 50  0001 C CNN
	1    2400 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5DEE4563
P 550 4050
F 0 "#PWR0110" H 550 3800 50  0001 C CNN
F 1 "GND" H 555 3877 50  0000 C CNN
F 2 "" H 550 4050 50  0001 C CNN
F 3 "" H 550 4050 50  0001 C CNN
	1    550  4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5DEE4BA9
P 3550 3800
F 0 "C3" H 3642 3846 50  0000 L CNN
F 1 "10uF" H 3642 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3550 3800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21A106KAYNNNE_C15850.pdf" H 3550 3800 50  0001 C CNN
F 4 "C15850" H 3550 3800 50  0001 C CNN "LCSC"
	1    3550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3700 3550 3700
$Comp
L Device:R R4
U 1 1 5DEF4272
P 3000 4550
F 0 "R4" H 3070 4596 50  0000 L CNN
F 1 "10K" H 3070 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2930 4550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF1002TCE_C25744.pdf" H 3000 4550 50  0001 C CNN
F 4 "C25744" H 3000 4550 50  0001 C CNN "LCSC"
	1    3000 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DEF490B
P 3000 4250
F 0 "R3" H 3070 4296 50  0000 L CNN
F 1 "10K" H 3070 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2930 4250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF1002TCE_C25744.pdf" H 3000 4250 50  0001 C CNN
F 4 "C25744" H 3000 4250 50  0001 C CNN "LCSC"
	1    3000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4700 2400 4700
Wire Wire Line
	2400 4600 2400 4700
Wire Wire Line
	2400 4750 2400 4700
Connection ~ 2400 4700
$Comp
L power:GND #PWR0111
U 1 1 5DEFDB64
P 3550 4000
F 0 "#PWR0111" H 3550 3750 50  0001 C CNN
F 1 "GND" H 3555 3827 50  0000 C CNN
F 2 "" H 3550 4000 50  0001 C CNN
F 3 "" H 3550 4000 50  0001 C CNN
	1    3550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4000 3550 4000
Wire Wire Line
	3550 3900 3550 4000
Connection ~ 3550 4000
$Comp
L Diode:MBR0530 D6
U 1 1 5DF07A9B
P 6100 1450
F 0 "D6" H 6100 1234 50  0000 C CNN
F 1 "MBR0530" H 6100 1325 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 6100 1275 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/ON-Semicon-ON-MBR0530_C232832.pdf" H 6100 1450 50  0001 C CNN
F 4 "C232832" H 6100 1450 50  0001 C CNN "LCSC"
	1    6100 1450
	-1   0    0    1   
$EndComp
$Comp
L Diode:MBR0530 D3
U 1 1 5DF0861C
P 5600 4000
F 0 "D3" H 5600 3784 50  0000 C CNN
F 1 "MBR0530" H 5600 3875 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 5600 3825 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/ON-Semicon-ON-MBR0530_C232832.pdf" H 5600 4000 50  0001 C CNN
F 4 "C232832" H 5600 4000 50  0001 C CNN "LCSC"
	1    5600 4000
	-1   0    0    1   
$EndComp
$Comp
L power:VBUS #PWR0112
U 1 1 5DF0B7B0
P 550 3700
F 0 "#PWR0112" H 550 3550 50  0001 C CNN
F 1 "VBUS" H 565 3873 50  0000 C CNN
F 2 "" H 550 3700 50  0001 C CNN
F 3 "" H 550 3700 50  0001 C CNN
	1    550  3700
	1    0    0    -1  
$EndComp
Connection ~ 550  3700
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 5DF12DD6
P 5050 3800
F 0 "Q1" V 5393 3800 50  0000 C CNN
F 1 "AO3401A" V 5302 3800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5250 3900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3401A_C15127.pdf" H 5050 3800 50  0001 C CNN
F 4 "C15127" V 5050 3800 50  0001 C CNN "LCSC"
	1    5050 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5DF2287C
P 800 5750
F 0 "BT1" H 918 5846 50  0000 L CNN
F 1 "Battery_Cell" H 918 5755 50  0000 L CNN
F 2 "BatteryHolder:2450" V 800 5810 50  0001 C CNN
F 3 "~" V 800 5810 50  0001 C CNN
	1    800  5750
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0113
U 1 1 5DF24177
P 800 5450
F 0 "#PWR0113" H 800 5300 50  0001 C CNN
F 1 "+BATT" H 815 5623 50  0000 C CNN
F 2 "" H 800 5450 50  0001 C CNN
F 3 "" H 800 5450 50  0001 C CNN
	1    800  5450
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0114
U 1 1 5DF25DDC
P 3550 3700
F 0 "#PWR0114" H 3550 3550 50  0001 C CNN
F 1 "+BATT" H 3565 3873 50  0000 C CNN
F 2 "" H 3550 3700 50  0001 C CNN
F 3 "" H 3550 3700 50  0001 C CNN
	1    3550 3700
	1    0    0    -1  
$EndComp
Connection ~ 3550 3700
$Comp
L power:+BATT #PWR0115
U 1 1 5DF26487
P 4450 3700
F 0 "#PWR0115" H 4450 3550 50  0001 C CNN
F 1 "+BATT" H 4465 3873 50  0000 C CNN
F 2 "" H 4450 3700 50  0001 C CNN
F 3 "" H 4450 3700 50  0001 C CNN
	1    4450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3700 4850 3700
Wire Wire Line
	5050 4000 5450 4000
Wire Wire Line
	5750 4000 5800 4000
Wire Wire Line
	5050 4000 4450 4000
Connection ~ 5050 4000
$Comp
L power:VBUS #PWR0116
U 1 1 5DF37466
P 4450 4000
F 0 "#PWR0116" H 4450 3850 50  0001 C CNN
F 1 "VBUS" H 4465 4173 50  0000 C CNN
F 2 "" H 4450 4000 50  0001 C CNN
F 3 "" H 4450 4000 50  0001 C CNN
	1    4450 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5DF389B8
P 5050 4150
F 0 "R6" H 5120 4196 50  0000 L CNN
F 1 "10K" H 5120 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4980 4150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0402WGF1002TCE_C25744.pdf" H 5050 4150 50  0001 C CNN
F 4 "C25744" H 5050 4150 50  0001 C CNN "LCSC"
	1    5050 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5DF3911C
P 5050 4300
F 0 "#PWR0117" H 5050 4050 50  0001 C CNN
F 1 "GND" H 5055 4127 50  0000 C CNN
F 2 "" H 5050 4300 50  0001 C CNN
F 3 "" H 5050 4300 50  0001 C CNN
	1    5050 4300
	1    0    0    -1  
$EndComp
$Comp
L PMIC-LDO-XC6206P332MR-G_SOT23_:PMIC-LDO-XC6206P332MR-G(SOT23) U2
U 1 1 5DF3CB24
P 6950 3700
F 0 "U2" H 6950 4015 50  0000 C CNN
F 1 "XC6206P332MR-G" H 6950 3924 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6950 3700 50  0001 L BNN
F 3 "https://datasheet.lcsc.com/szlcsc/Torex-Semicon-XC6206P332MR_C5446.pdf" H 6950 3700 50  0001 L BNN
F 4 "Torex" H 6950 3700 50  0001 L BNN "Field4"
F 5 "None" H 6950 3700 50  0001 L BNN "Field5"
F 6 "XC6206P332MR-G" H 6950 3700 50  0001 L BNN "Field6"
F 7 "SMD PMIC; LDO; Vin 6V; 3.3V; 200mA; Without En; 1-Ch" H 6950 3700 50  0001 L BNN "Field7"
F 8 "Unavailable" H 6950 3700 50  0001 L BNN "Field8"
F 9 "C5446" H 6950 3700 50  0001 C CNN "LCSC"
	1    6950 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5DF5E663
P 6950 4050
F 0 "#PWR0118" H 6950 3800 50  0001 C CNN
F 1 "GND" H 6955 3877 50  0000 C CNN
F 2 "" H 6950 4050 50  0001 C CNN
F 3 "" H 6950 4050 50  0001 C CNN
	1    6950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4000 6950 4050
Wire Wire Line
	6950 4000 7650 4000
Wire Wire Line
	7650 4000 7650 3900
Connection ~ 6950 4000
Wire Wire Line
	6950 4000 6250 4000
Wire Wire Line
	6250 4000 6250 3900
$Comp
L power:+3.3V #PWR0119
U 1 1 5DF6BF42
P 8050 3700
F 0 "#PWR0119" H 8050 3550 50  0001 C CNN
F 1 "+3.3V" H 8065 3873 50  0000 C CNN
F 2 "" H 8050 3700 50  0001 C CNN
F 3 "" H 8050 3700 50  0001 C CNN
	1    8050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3700 7650 3700
$Comp
L Device:C_Small C5
U 1 1 5DF6CB7E
P 6250 3800
F 0 "C5" H 6150 3750 50  0000 C CNN
F 1 "1uF" H 6150 3900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6250 3800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 6250 3800 50  0001 C CNN
F 4 "C15849" V 6250 3800 50  0001 C CNN "LCSC"
	1    6250 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 3700 6450 3700
$Comp
L Device:C_Small C7
U 1 1 5DF6D74B
P 7650 3800
F 0 "C7" H 7550 3750 50  0000 C CNN
F 1 "1uF" H 7550 3900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7650 3800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 7650 3800 50  0001 C CNN
F 4 "C15849" V 7650 3800 50  0001 C CNN "LCSC"
	1    7650 3800
	-1   0    0    1   
$EndComp
Connection ~ 7650 3700
Wire Wire Line
	7650 3700 8050 3700
$Comp
L power:GND #PWR0120
U 1 1 5DF7959D
P 800 5850
F 0 "#PWR0120" H 800 5600 50  0001 C CNN
F 1 "GND" H 805 5677 50  0000 C CNN
F 2 "" H 800 5850 50  0001 C CNN
F 3 "" H 800 5850 50  0001 C CNN
	1    800  5850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x24_Female J1
U 1 1 5DF7FAFB
P 8950 1800
F 0 "J1" H 8842 3085 50  0000 C CNN
F 1 "eink" H 8842 2994 50  0000 C CNN
F 2 "Dianwei:FPC_24" H 8950 1800 50  0001 C CNN
F 3 "../documentation/24 Pins 0.5mm Pitch ZIF Connector Drawing.pdf" H 8950 1800 50  0001 C CNN
	1    8950 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2750 2250 3450 2250
Text Label 2850 2250 0    50   ~ 0
SPI_SDI
Wire Wire Line
	3450 2050 2750 2050
Text Label 2850 2050 0    50   ~ 0
SPI_SCK
Wire Wire Line
	2750 2150 3450 2150
Text Label 2850 2150 0    50   ~ 0
EINK_BUSY
Wire Wire Line
	2750 2450 3450 2450
Text Label 2850 2450 0    50   ~ 0
I2C_SDA
Text Label 2850 2350 0    50   ~ 0
I2C_SCL
Wire Wire Line
	2750 2350 3450 2350
Wire Wire Line
	2750 1950 3450 1950
Text Label 2850 1950 0    50   ~ 0
EINK_DC
Wire Wire Line
	2750 1850 3450 1850
Text Label 2850 1650 0    50   ~ 0
EINK_RESET
Text Label 9200 1700 0    50   ~ 0
EINK_DC
Wire Wire Line
	2750 1750 3450 1750
Text Label 2850 1550 0    50   ~ 0
EINK_CS
Wire Wire Line
	5800 4000 5800 3700
Wire Wire Line
	5800 3700 5250 3700
$Comp
L Device:R_Small R8
U 1 1 5DFFE8EB
P 6000 3700
F 0 "R8" V 5804 3700 50  0000 C CNN
F 1 "0 Ohm" V 5895 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6000 3700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAF0000T5E_C21189.pdf" H 6000 3700 50  0001 C CNN
F 4 "C21189" V 6000 3700 50  0001 C CNN "LCSC"
	1    6000 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 3700 5900 3700
Connection ~ 5800 3700
Wire Wire Line
	6100 3700 6250 3700
Connection ~ 6250 3700
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 5DE87139
P 5100 1700
F 0 "Q2" H 5306 1746 50  0000 L CNN
F 1 "AO3400A" H 5306 1655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5300 1800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 5100 1700 50  0001 C CNN
F 4 "C20917" H 5100 1700 50  0001 C CNN "LCSC"
	1    5100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2550 3450 2550
Wire Wire Line
	3450 2650 2750 2650
Text Label 2850 2550 0    50   ~ 0
SWDIO
Text Label 2850 2650 0    50   ~ 0
SWCLK
Wire Wire Line
	2750 1550 3450 1550
Wire Wire Line
	3450 1650 2750 1650
Text Label 2850 1750 0    50   ~ 0
TX
Text Label 2850 1850 0    50   ~ 0
RX
Wire Wire Line
	1750 2650 1200 2650
Text Label 1250 2650 0    50   ~ 0
VBAT
$Comp
L power:GND #PWR0121
U 1 1 5E0A3278
P 2250 2850
F 0 "#PWR0121" H 2250 2600 50  0001 C CNN
F 1 "GND" H 2255 2677 50  0000 C CNN
F 2 "" H 2250 2850 50  0001 C CNN
F 3 "" H 2250 2850 50  0001 C CNN
	1    2250 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5E0A3D22
P 1600 5500
F 0 "R9" V 1404 5500 50  0000 C CNN
F 1 "15k" V 1495 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1600 5500 50  0001 C CNN
F 3 "" H 1600 5500 50  0001 C CNN
F 4 "C25756" V 1600 5500 50  0001 C CNN "LCSC"
	1    1600 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5E0A9583
P 1950 5650
F 0 "R10" H 2009 5696 50  0000 L CNN
F 1 "39k" H 2009 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1950 5650 50  0001 C CNN
F 3 "" H 1950 5650 50  0001 C CNN
F 4 "C25783" H 1950 5650 50  0001 C CNN "LCSC"
	1    1950 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  5450 800  5500
Wire Wire Line
	800  5500 1500 5500
Connection ~ 800  5500
Wire Wire Line
	800  5500 800  5550
Wire Wire Line
	1700 5500 1950 5500
Wire Wire Line
	1950 5500 1950 5550
$Comp
L Memory_EEPROM:CAT24C256 U3
U 1 1 5E0D44E3
P 4800 6000
F 0 "U3" H 4650 6300 50  0000 C CNN
F 1 "CAT24C256" H 5100 6300 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4800 6000 50  0001 C CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/CAT24C256-D.PDF" H 4800 6000 50  0001 C CNN
F 4 "C6482" H 4800 6000 50  0001 C CNN "LCSC"
	1    4800 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5900 5800 5900
Wire Wire Line
	5200 6000 5800 6000
Wire Wire Line
	4400 5900 4400 6000
Wire Wire Line
	4400 6100 4400 6000
Connection ~ 4400 6000
Wire Wire Line
	4400 6100 4400 6300
Wire Wire Line
	4400 6300 4800 6300
Connection ~ 4400 6100
$Comp
L power:GND #PWR0122
U 1 1 5E0FD8EB
P 4800 6300
F 0 "#PWR0122" H 4800 6050 50  0001 C CNN
F 1 "GND" H 4805 6127 50  0000 C CNN
F 2 "" H 4800 6300 50  0001 C CNN
F 3 "" H 4800 6300 50  0001 C CNN
	1    4800 6300
	1    0    0    -1  
$EndComp
Connection ~ 4800 6300
$Comp
L power:+3.3V #PWR0123
U 1 1 5E0FFC88
P 4800 5700
F 0 "#PWR0123" H 4800 5550 50  0001 C CNN
F 1 "+3.3V" H 4815 5873 50  0000 C CNN
F 2 "" H 4800 5700 50  0001 C CNN
F 3 "" H 4800 5700 50  0001 C CNN
	1    4800 5700
	1    0    0    -1  
$EndComp
Text Label 5250 6000 0    50   ~ 0
I2C_SCL
Text Label 5250 5900 0    50   ~ 0
I2C_SDA
Wire Wire Line
	5200 6100 5200 6300
Wire Wire Line
	5200 6300 4800 6300
$Comp
L power:GND #PWR0124
U 1 1 5E142932
P 8600 5200
F 0 "#PWR0124" H 8600 4950 50  0001 C CNN
F 1 "GND" H 8605 5027 50  0000 C CNN
F 2 "" H 8600 5200 50  0001 C CNN
F 3 "" H 8600 5200 50  0001 C CNN
	1    8600 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0125
U 1 1 5E142ADC
P 8600 5000
F 0 "#PWR0125" H 8600 4850 50  0001 C CNN
F 1 "+3.3V" H 8615 5173 50  0000 C CNN
F 2 "" H 8600 5000 50  0001 C CNN
F 3 "" H 8600 5000 50  0001 C CNN
	1    8600 5000
	1    0    0    -1  
$EndComp
Text Label 9450 5000 0    50   ~ 0
SWDIO
Text Label 9450 5100 0    50   ~ 0
SWCLK
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J2
U 1 1 5E158E17
P 9050 5100
F 0 "J2" H 9100 5417 50  0000 C CNN
F 1 "TC2030-IDV-NL" H 9100 5326 50  0000 C CNN
F 2 "Tag-Connect:TC2030-MCP-NL" H 9050 5100 50  0001 C CNN
F 3 "http://www.tag-connect.com/Materials/TC2030-CTX.pdf" H 9050 5100 50  0001 C CNN
	1    9050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5000 10050 5000
Wire Wire Line
	9350 5100 10050 5100
Wire Wire Line
	9350 5200 10050 5200
Wire Wire Line
	8850 5100 8400 5100
Text Label 7600 5000 0    50   ~ 0
nRESET
Text Label 9450 5200 0    50   ~ 0
RX
$Comp
L Device:R_Small R11
U 1 1 5E191E3E
P 8200 5000
F 0 "R11" V 8004 5000 50  0000 C CNN
F 1 "0 Ohm" V 8095 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8200 5000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAF0000T5E_C21189.pdf" H 8200 5000 50  0001 C CNN
F 4 "C21189" V 8200 5000 50  0001 C CNN "LCSC"
	1    8200 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5E1925D5
P 8200 5200
F 0 "R12" V 8300 5100 50  0000 C CNN
F 1 "0 Ohm" V 8400 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8200 5200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAF0000T5E_C21189.pdf" H 8200 5200 50  0001 C CNN
F 4 "C21189" V 8200 5200 50  0001 C CNN "LCSC"
	1    8200 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 5200 8850 5200
Wire Wire Line
	8850 5000 8600 5000
Wire Wire Line
	8400 5100 8400 5000
Wire Wire Line
	8400 5000 8300 5000
Wire Wire Line
	8400 5100 8400 5200
Wire Wire Line
	8400 5200 8300 5200
Connection ~ 8400 5100
Wire Wire Line
	7550 5000 8100 5000
Wire Wire Line
	7550 5200 8100 5200
Text Label 7600 5200 0    50   ~ 0
TX
Wire Wire Line
	1950 5750 1950 5850
$Comp
L Device:C_Small C19
U 1 1 5DF00F88
P 1100 1550
F 0 "C19" V 871 1550 50  0000 C CNN
F 1 "100nF" V 962 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1100 1550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL05B104KO5NNNC_C1525.pdf" H 1100 1550 50  0001 C CNN
F 4 "C1525" V 1100 1550 50  0001 C CNN "LCSC"
	1    1100 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	800  1550 1000 1550
$Comp
L power:GND #PWR0127
U 1 1 5DF39F10
P 1750 1750
F 0 "#PWR0127" H 1750 1500 50  0001 C CNN
F 1 "GND" H 1755 1577 50  0000 C CNN
F 2 "" H 1750 1750 50  0001 C CNN
F 3 "" H 1750 1750 50  0001 C CNN
	1    1750 1750
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C20
U 1 1 5DF3A8CC
P 1550 800
F 0 "C20" H 1650 850 50  0000 C CNN
F 1 "100nF" H 1700 750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1550 800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL05B104KO5NNNC_C1525.pdf" H 1550 800 50  0001 C CNN
F 4 "C1525" V 1550 800 50  0001 C CNN "LCSC"
	1    1550 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 5DF3B85B
P 1150 800
F 0 "C18" H 1250 850 50  0000 C CNN
F 1 "100nF" H 1300 750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1150 800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL05B104KO5NNNC_C1525.pdf" H 1150 800 50  0001 C CNN
F 4 "C1525" V 1150 800 50  0001 C CNN "LCSC"
	1    1150 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1350 2250 1250
Wire Wire Line
	2250 1250 2300 1250
Wire Wire Line
	2350 1250 2350 1350
$Comp
L power:+3.3V #PWR0128
U 1 1 5DF4679A
P 2300 1250
F 0 "#PWR0128" H 2300 1100 50  0001 C CNN
F 1 "+3.3V" H 2315 1423 50  0000 C CNN
F 2 "" H 2300 1250 50  0001 C CNN
F 3 "" H 2300 1250 50  0001 C CNN
	1    2300 1250
	1    0    0    -1  
$EndComp
Connection ~ 2300 1250
Wire Wire Line
	2300 1250 2350 1250
$Comp
L Device:C_Small C21
U 1 1 5DF4A9E2
P 1900 800
F 0 "C21" H 2015 846 50  0000 L CNN
F 1 "1uF" H 2015 755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1938 650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10A105KB8NNNC_C15849.pdf" H 1900 800 50  0001 C CNN
F 4 "C15849" H 1900 800 50  0001 C CNN "LCSC"
	1    1900 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5DF4EBC1
P 550 800
F 0 "C17" H 642 846 50  0000 L CNN
F 1 "10uF" H 642 755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 550 800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21A106KAYNNNE_C15850.pdf" H 550 800 50  0001 C CNN
F 4 "C15850" H 550 800 50  0001 C CNN "LCSC"
	1    550  800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 700  1250 700 
Connection ~ 1550 700 
Wire Wire Line
	1150 700  550  700 
Connection ~ 1150 700 
Wire Wire Line
	550  900  1150 900 
Wire Wire Line
	1150 900  1250 900 
Connection ~ 1150 900 
Connection ~ 1550 900 
$Comp
L power:+3.3V #PWR0129
U 1 1 5DFA5215
P 1250 700
F 0 "#PWR0129" H 1250 550 50  0001 C CNN
F 1 "+3.3V" H 1265 873 50  0000 C CNN
F 2 "" H 1250 700 50  0001 C CNN
F 3 "" H 1250 700 50  0001 C CNN
	1    1250 700 
	1    0    0    -1  
$EndComp
Connection ~ 1250 700 
Wire Wire Line
	1250 700  1150 700 
$Comp
L power:GND #PWR0130
U 1 1 5DFA7821
P 1250 900
F 0 "#PWR0130" H 1250 650 50  0001 C CNN
F 1 "GND" H 1255 727 50  0000 C CNN
F 2 "" H 1250 900 50  0001 C CNN
F 3 "" H 1250 900 50  0001 C CNN
	1    1250 900 
	1    0    0    -1  
$EndComp
Connection ~ 1250 900 
Wire Wire Line
	1250 900  1550 900 
Wire Wire Line
	1550 700  1900 700 
Wire Wire Line
	1550 900  1900 900 
NoConn ~ 1750 2350
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5DFDB34E
P 800 6550
F 0 "J3" H 772 6432 50  0000 R CNN
F 1 "Vin" H 772 6523 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 800 6550 50  0001 C CNN
F 3 "~" H 800 6550 50  0001 C CNN
	1    800  6550
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 5DFF676A
P 1000 6550
F 0 "#PWR0131" H 1000 6300 50  0001 C CNN
F 1 "GND" H 1005 6377 50  0000 C CNN
F 2 "" H 1000 6550 50  0001 C CNN
F 3 "" H 1000 6550 50  0001 C CNN
	1    1000 6550
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0132
U 1 1 5DFF7BE6
P 1000 6450
F 0 "#PWR0132" H 1000 6300 50  0001 C CNN
F 1 "VBUS" H 1015 6623 50  0000 C CNN
F 2 "" H 1000 6450 50  0001 C CNN
F 3 "" H 1000 6450 50  0001 C CNN
	1    1000 6450
	1    0    0    -1  
$EndComp
Text Label 1400 1550 0    50   ~ 0
nRESET
$Comp
L power:GND #PWR0126
U 1 1 5DF013F8
P 800 1550
F 0 "#PWR0126" H 800 1300 50  0001 C CNN
F 1 "GND" H 805 1377 50  0000 C CNN
F 2 "" H 800 1550 50  0001 C CNN
F 3 "" H 800 1550 50  0001 C CNN
	1    800  1550
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 1550 1750 1550
$Comp
L Connector:TestPoint_Alt TP2
U 1 1 5E028B0D
P 8300 3700
F 0 "TP2" H 8358 3818 50  0000 L CNN
F 1 "TP_3V3" H 8358 3727 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 8500 3700 50  0001 C CNN
F 3 "~" H 8500 3700 50  0001 C CNN
	1    8300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3700 8050 3700
Connection ~ 8050 3700
Wire Wire Line
	1000 3700 1400 3700
Connection ~ 1400 3700
Wire Wire Line
	1400 3700 1800 3700
Wire Wire Line
	1800 4000 1700 4000
Wire Wire Line
	1500 4000 1400 4000
Wire Wire Line
	1400 4000 1400 3900
Connection ~ 1950 5500
Wire Wire Line
	1950 5500 2450 5500
Text Label 2200 5500 0    50   ~ 0
VBAT
Wire Wire Line
	1750 2450 1200 2450
Text Label 1250 2450 0    50   ~ 0
VBAT_ON
Wire Wire Line
	1950 5850 2450 5850
Text Label 2050 5850 0    50   ~ 0
VBAT_ON
$EndSCHEMATC

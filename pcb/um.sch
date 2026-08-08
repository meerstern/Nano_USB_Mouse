EESchema Schematic File Version 4
LIBS:um-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Nano USB Mouse"
Date "2026-07-27"
Rev "v1.0"
Comp "Crescent"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L conn:USB_A J1
U 1 1 6A67607B
P 1025 1175
F 0 "J1" V 600 1097 50  0000 C CNN
F 1 "USB_A" V 691 1097 50  0000 C CNN
F 2 "usbpcb:usbpcb" V 975 1075 50  0001 C CNN
F 3 "" V 975 1075 50  0000 C CNN
	1    1025 1175
	0    -1   1    0   
$EndComp
$Comp
L CH55X:CH554E U1
U 1 1 6A677A69
P 2425 2550
F 0 "U1" H 2750 2715 50  0000 C CNN
F 1 "CH554E" H 2750 2624 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 2425 2550 50  0001 C CNN
F 3 "" H 2425 2550 50  0001 C CNN
	1    2425 2550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS165 U2
U 1 1 6A677EEA
P 6725 3900
F 0 "U2" H 6950 4825 50  0000 C CNN
F 1 "74HC165" H 6950 4675 50  0000 C CNN
F 2 "Package_SO:SSOP-16_4.4x5.2mm_P0.65mm" H 6725 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS165" H 6725 3900 50  0001 C CNN
	1    6725 3900
	1    0    0    -1  
$EndComp
$Comp
L joystick_SKRHAAE010:SKRHAAE010 SW1
U 1 1 6A6788BD
P 6725 2225
F 0 "SW1" H 6725 2662 60  0000 C CNN
F 1 "SKRHAAE010" H 6725 2556 60  0000 C CNN
F 2 "Joystick:SKRHAAE010" H 6725 2225 60  0001 C CNN
F 3 "" H 6725 2225 60  0000 C CNN
	1    6725 2225
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 6A678ED6
P 8400 2000
F 0 "SW2" H 8400 2285 50  0000 C CNN
F 1 "SW_Push" H 8400 2194 50  0000 C CNN
F 2 "SMD_PUSHSWITCH:SKRPACE010" H 8400 2200 50  0001 C CNN
F 3 "~" H 8400 2200 50  0001 C CNN
	1    8400 2000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 6A67996D
P 8400 2725
F 0 "SW3" H 8400 3010 50  0000 C CNN
F 1 "SW_Push" H 8400 2919 50  0000 C CNN
F 2 "SMD_PUSHSWITCH:SKRPACE010" H 8400 2925 50  0001 C CNN
F 3 "~" H 8400 2925 50  0001 C CNN
	1    8400 2725
	1    0    0    -1  
$EndComp
$Comp
L conn:CONN_01X02 J2
U 1 1 6A67A06B
P 3600 1650
F 0 "J2" H 3678 1691 50  0000 L CNN
F 1 "BOOT" H 3678 1600 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x01_P1.27mm_Vertical" H 3600 1650 50  0001 C CNN
F 3 "" H 3600 1650 50  0000 C CNN
	1    3600 1650
	1    0    0    -1  
$EndComp
Text Label 6125 2075 2    50   ~ 0
SW_D
Text Label 7325 2375 0    50   ~ 0
SW_E
Text Label 6125 2375 2    50   ~ 0
SW_F
Text Label 7325 2075 0    50   ~ 0
SW_G
Text Label 6125 2225 2    50   ~ 0
SW_C
Text Label 7325 2225 0    50   ~ 0
GND
$Comp
L Device:Fuse_Small F1
U 1 1 6A67B50D
P 1600 975
F 0 "F1" H 1600 1160 50  0000 C CNN
F 1 "300mA" H 1600 1069 50  0000 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" H 1600 975 50  0001 C CNN
F 3 "~" H 1600 975 50  0001 C CNN
	1    1600 975 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 6A67B8A6
P 1900 875
F 0 "#PWR04" H 1900 725 50  0001 C CNN
F 1 "+5V" H 1915 1048 50  0000 C CNN
F 2 "" H 1900 875 50  0001 C CNN
F 3 "" H 1900 875 50  0001 C CNN
	1    1900 875 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6A67BB34
P 1575 1600
F 0 "#PWR03" H 1575 1350 50  0001 C CNN
F 1 "GND" H 1580 1427 50  0000 C CNN
F 2 "" H 1575 1600 50  0001 C CNN
F 3 "" H 1575 1600 50  0001 C CNN
	1    1575 1600
	1    0    0    -1  
$EndComp
Text Label 1500 1075 0    50   ~ 0
DM
Text Label 1500 1175 0    50   ~ 0
DP
Wire Wire Line
	1325 975  1500 975 
Wire Wire Line
	1700 975  1900 975 
Wire Wire Line
	1900 975  1900 875 
Wire Wire Line
	1325 1075 1500 1075
Wire Wire Line
	1325 1175 1500 1175
Wire Wire Line
	1325 1275 1575 1275
Wire Wire Line
	1575 1275 1575 1525
Wire Wire Line
	925  1475 925  1525
Wire Wire Line
	925  1525 1575 1525
Connection ~ 1575 1525
Wire Wire Line
	1575 1525 1575 1600
$Comp
L Device:C C2
U 1 1 6A67CFDA
P 2650 1675
F 0 "C2" H 2765 1721 50  0000 L CNN
F 1 "0.1u" H 2765 1630 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2688 1525 50  0001 C CNN
F 3 "~" H 2650 1675 50  0001 C CNN
	1    2650 1675
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 6A67D9AD
P 3450 2425
F 0 "#PWR09" H 3450 2275 50  0001 C CNN
F 1 "+3.3V" H 3465 2598 50  0000 C CNN
F 2 "" H 3450 2425 50  0001 C CNN
F 3 "" H 3450 2425 50  0001 C CNN
	1    3450 2425
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 6A67DCDC
P 3675 2425
F 0 "#PWR010" H 3675 2275 50  0001 C CNN
F 1 "+5V" H 3690 2598 50  0000 C CNN
F 2 "" H 3675 2425 50  0001 C CNN
F 3 "" H 3675 2425 50  0001 C CNN
	1    3675 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2650 3450 2425
Wire Wire Line
	3175 2650 3450 2650
Wire Wire Line
	3175 2750 3675 2750
Wire Wire Line
	3675 2750 3675 2425
Text Label 1225 1525 0    50   ~ 0
GND
$Comp
L power:GND #PWR011
U 1 1 6A68096A
P 3675 2875
F 0 "#PWR011" H 3675 2625 50  0001 C CNN
F 1 "GND" H 3680 2702 50  0000 C CNN
F 2 "" H 3675 2875 50  0001 C CNN
F 3 "" H 3675 2875 50  0001 C CNN
	1    3675 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 2850 3675 2850
Wire Wire Line
	3675 2850 3675 2875
$Comp
L power:GND #PWR07
U 1 1 6A68B295
P 2650 1925
F 0 "#PWR07" H 2650 1675 50  0001 C CNN
F 1 "GND" H 2655 1752 50  0000 C CNN
F 2 "" H 2650 1925 50  0001 C CNN
F 3 "" H 2650 1925 50  0001 C CNN
	1    2650 1925
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6A68C069
P 2275 1675
F 0 "C1" H 2390 1721 50  0000 L CNN
F 1 "0.1u" H 2390 1630 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2313 1525 50  0001 C CNN
F 3 "~" H 2275 1675 50  0001 C CNN
	1    2275 1675
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 6A68C1FB
P 2275 1425
F 0 "#PWR05" H 2275 1275 50  0001 C CNN
F 1 "+5V" H 2290 1598 50  0000 C CNN
F 2 "" H 2275 1425 50  0001 C CNN
F 3 "" H 2275 1425 50  0001 C CNN
	1    2275 1425
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 6A68C75E
P 2650 1425
F 0 "#PWR06" H 2650 1275 50  0001 C CNN
F 1 "+3.3V" H 2665 1598 50  0000 C CNN
F 2 "" H 2650 1425 50  0001 C CNN
F 3 "" H 2650 1425 50  0001 C CNN
	1    2650 1425
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1825 2650 1875
Wire Wire Line
	2650 1875 2275 1875
Wire Wire Line
	2275 1875 2275 1825
Connection ~ 2650 1875
Wire Wire Line
	2650 1875 2650 1925
Wire Wire Line
	2275 1525 2275 1425
Wire Wire Line
	2650 1425 2650 1525
Text Label 3175 2950 0    50   ~ 0
DM
Text Label 3175 3050 0    50   ~ 0
DP
$Comp
L Device:R R2
U 1 1 6A6913B0
P 3175 1325
F 0 "R2" H 3245 1371 50  0000 L CNN
F 1 "2.2k" H 3245 1280 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3105 1325 50  0001 C CNN
F 3 "~" H 3175 1325 50  0001 C CNN
	1    3175 1325
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 6A69204E
P 3175 1100
F 0 "#PWR08" H 3175 950 50  0001 C CNN
F 1 "+3.3V" H 3190 1273 50  0000 C CNN
F 2 "" H 3175 1100 50  0001 C CNN
F 3 "" H 3175 1100 50  0001 C CNN
	1    3175 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 1100 3175 1175
Wire Wire Line
	3175 1475 3175 1600
Wire Wire Line
	3175 1600 3400 1600
Wire Wire Line
	3400 1700 3175 1700
Text Label 3175 1700 0    50   ~ 0
DP
$Comp
L Device:R R3
U 1 1 6A6949D4
P 4050 1300
F 0 "R3" H 4120 1346 50  0000 L CNN
F 1 "2.2k" H 4120 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3980 1300 50  0001 C CNN
F 3 "~" H 4050 1300 50  0001 C CNN
	1    4050 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 6A69505E
P 4050 1625
F 0 "#PWR012" H 4050 1375 50  0001 C CNN
F 1 "GND" H 4055 1452 50  0000 C CNN
F 2 "" H 4050 1625 50  0001 C CNN
F 3 "" H 4050 1625 50  0001 C CNN
	1    4050 1625
	1    0    0    -1  
$EndComp
Text Label 4050 1025 0    50   ~ 0
RST
Wire Wire Line
	4050 1450 4050 1625
Wire Wire Line
	4050 1025 4050 1150
Text Label 2325 3050 2    50   ~ 0
RST
$Comp
L power:+5V #PWR014
U 1 1 6A69DED5
P 6725 2900
F 0 "#PWR014" H 6725 2750 50  0001 C CNN
F 1 "+5V" H 6740 3073 50  0000 C CNN
F 2 "" H 6725 2900 50  0001 C CNN
F 3 "" H 6725 2900 50  0001 C CNN
	1    6725 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6A69F3E3
P 7250 4075
F 0 "C3" H 7365 4121 50  0000 L CNN
F 1 "0.1u" H 7365 4030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7288 3925 50  0001 C CNN
F 3 "~" H 7250 4075 50  0001 C CNN
	1    7250 4075
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 6A6A0207
P 7250 3850
F 0 "#PWR016" H 7250 3700 50  0001 C CNN
F 1 "+5V" H 7265 4023 50  0000 C CNN
F 2 "" H 7250 3850 50  0001 C CNN
F 3 "" H 7250 3850 50  0001 C CNN
	1    7250 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6A6A0875
P 6725 4975
F 0 "#PWR015" H 6725 4725 50  0001 C CNN
F 1 "GND" H 6730 4802 50  0000 C CNN
F 2 "" H 6725 4975 50  0001 C CNN
F 3 "" H 6725 4975 50  0001 C CNN
	1    6725 4975
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6A6A192E
P 7250 4275
F 0 "#PWR017" H 7250 4025 50  0001 C CNN
F 1 "GND" H 7255 4102 50  0000 C CNN
F 2 "" H 7250 4275 50  0001 C CNN
F 3 "" H 7250 4275 50  0001 C CNN
	1    7250 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3850 7250 3925
Wire Wire Line
	7250 4225 7250 4275
Wire Wire Line
	6725 2900 6725 3000
Wire Wire Line
	6725 4900 6725 4950
$Comp
L Device:R R10
U 1 1 6A6A4D2F
P 7250 975
F 0 "R10" H 7320 1021 50  0000 L CNN
F 1 "10k" H 7320 930 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7180 975 50  0001 C CNN
F 3 "~" H 7250 975 50  0001 C CNN
	1    7250 975 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 6A6A631D
P 5600 750
F 0 "#PWR013" H 5600 600 50  0001 C CNN
F 1 "+5V" H 5615 923 50  0000 C CNN
F 2 "" H 5600 750 50  0001 C CNN
F 3 "" H 5600 750 50  0001 C CNN
	1    5600 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 6A6A7213
P 6975 975
F 0 "R9" H 7045 1021 50  0000 L CNN
F 1 "10k" H 7045 930 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6905 975 50  0001 C CNN
F 3 "~" H 6975 975 50  0001 C CNN
	1    6975 975 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 6A6A905F
P 6700 975
F 0 "R8" H 6770 1021 50  0000 L CNN
F 1 "10k" H 6770 930 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6630 975 50  0001 C CNN
F 3 "~" H 6700 975 50  0001 C CNN
	1    6700 975 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 6A6A9065
P 6425 975
F 0 "R7" H 6495 1021 50  0000 L CNN
F 1 "10k" H 6495 930 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6355 975 50  0001 C CNN
F 3 "~" H 6425 975 50  0001 C CNN
	1    6425 975 
	1    0    0    -1  
$EndComp
Text Label 8600 2000 0    50   ~ 0
GND
Text Label 8600 2725 0    50   ~ 0
GND
Text Label 8200 2000 2    50   ~ 0
SW_A
Text Label 8200 2725 2    50   ~ 0
SW_B
$Comp
L Device:R R6
U 1 1 6A6ABD44
P 6150 975
F 0 "R6" H 6220 1021 50  0000 L CNN
F 1 "10k" H 6220 930 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6080 975 50  0001 C CNN
F 3 "~" H 6150 975 50  0001 C CNN
	1    6150 975 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6A6ABD4A
P 5875 975
F 0 "R5" H 5945 1021 50  0000 L CNN
F 1 "10k" H 5945 930 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5805 975 50  0001 C CNN
F 3 "~" H 5875 975 50  0001 C CNN
	1    5875 975 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6A6ABD50
P 5600 975
F 0 "R4" H 5670 1021 50  0000 L CNN
F 1 "10k" H 5670 930 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5530 975 50  0001 C CNN
F 3 "~" H 5600 975 50  0001 C CNN
	1    5600 975 
	1    0    0    -1  
$EndComp
Text Label 5600 1125 3    50   ~ 0
SW_D
Text Label 5875 1125 3    50   ~ 0
SW_E
Text Label 6150 1125 3    50   ~ 0
SW_F
Text Label 6425 1125 3    50   ~ 0
SW_G
Text Label 6700 1125 3    50   ~ 0
SW_C
Text Label 6975 1125 3    50   ~ 0
SW_A
Text Label 7250 1125 3    50   ~ 0
SW_B
Wire Wire Line
	5600 750  5600 775 
Wire Wire Line
	5600 775  5875 775 
Wire Wire Line
	6700 775  6700 825 
Connection ~ 5600 775 
Wire Wire Line
	5600 775  5600 825 
Wire Wire Line
	6425 825  6425 775 
Connection ~ 6425 775 
Wire Wire Line
	6425 775  6700 775 
Wire Wire Line
	6150 825  6150 775 
Connection ~ 6150 775 
Wire Wire Line
	6150 775  6425 775 
Wire Wire Line
	5875 825  5875 775 
Connection ~ 5875 775 
Wire Wire Line
	5875 775  6150 775 
Wire Wire Line
	6700 775  6975 775 
Wire Wire Line
	7250 775  7250 825 
Connection ~ 6700 775 
Wire Wire Line
	6975 825  6975 775 
Connection ~ 6975 775 
Wire Wire Line
	6975 775  7250 775 
Text Label 6225 3400 2    50   ~ 0
SW_A
Text Label 6225 3500 2    50   ~ 0
SW_B
Text Label 6225 3600 2    50   ~ 0
SW_C
Text Label 6225 3700 2    50   ~ 0
SW_D
Text Label 6225 3800 2    50   ~ 0
SW_E
Text Label 6225 3900 2    50   ~ 0
SW_F
Text Label 6225 4000 2    50   ~ 0
SW_G
Text Label 6225 4100 2    50   ~ 0
GND
Text Label 6225 4500 2    50   ~ 0
SCLK
Text Label 6225 4300 2    50   ~ 0
SCTR
Text Label 7225 3300 0    50   ~ 0
SOUT
Wire Wire Line
	6225 4600 6075 4600
Wire Wire Line
	6075 4600 6075 4950
Wire Wire Line
	6075 4950 6725 4950
Connection ~ 6725 4950
Wire Wire Line
	6725 4950 6725 4975
NoConn ~ 7225 3400
Text Label 6225 3300 2    50   ~ 0
GND
Text Label 2325 2650 2    50   ~ 0
SCLK
Text Label 2325 2750 2    50   ~ 0
SOUT
Text Label 2325 2850 2    50   ~ 0
SCTR
$Comp
L Device:LED_ALT D1
U 1 1 6A6DBE3E
P 950 2125
F 0 "D1" V 989 2007 50  0000 R CNN
F 1 "GREEN" V 898 2007 50  0000 R CNN
F 2 "LED_SMD:LED_0402_1005Metric" H 950 2125 50  0001 C CNN
F 3 "~" H 950 2125 50  0001 C CNN
	1    950  2125
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 6A6DD893
P 950 1900
F 0 "#PWR01" H 950 1750 50  0001 C CNN
F 1 "+5V" H 965 2073 50  0000 C CNN
F 2 "" H 950 1900 50  0001 C CNN
F 3 "" H 950 1900 50  0001 C CNN
	1    950  1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6A6DE034
P 950 2525
F 0 "R1" H 1020 2571 50  0000 L CNN
F 1 "2.2k" H 1020 2480 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 880 2525 50  0001 C CNN
F 3 "~" H 950 2525 50  0001 C CNN
	1    950  2525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6A6DED91
P 950 2750
F 0 "#PWR02" H 950 2500 50  0001 C CNN
F 1 "GND" H 955 2577 50  0000 C CNN
F 2 "" H 950 2750 50  0001 C CNN
F 3 "" H 950 2750 50  0001 C CNN
	1    950  2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1900 950  1975
Wire Wire Line
	950  2275 950  2375
Wire Wire Line
	950  2675 950  2750
$Comp
L conn:TEST_1P T1
U 1 1 6A6EC3A6
P 1600 2700
F 0 "T1" H 1658 2818 50  0000 L CNN
F 1 "TEST" H 1658 2727 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 1800 2700 50  0001 C CNN
F 3 "" H 1800 2700 50  0000 C CNN
	1    1600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2325 2950 1600 2950
Wire Wire Line
	1600 2950 1600 2700
$EndSCHEMATC

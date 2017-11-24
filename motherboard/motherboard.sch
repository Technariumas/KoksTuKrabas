EESchema Schematic File Version 4
LIBS:motherboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "jeu. 02 avril 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8700 1100 0    60   ~ 0
1(Tx)
Text Label 8700 1200 0    60   ~ 0
0(Rx)
Text Label 8700 1300 0    60   ~ 0
Reset
Text Label 8700 1500 0    60   ~ 0
2
Text Label 8700 1600 0    60   ~ 0
3(**)
Text Label 8700 1700 0    60   ~ 0
4
Text Label 8700 1800 0    60   ~ 0
5(**)
Text Label 8700 1900 0    60   ~ 0
6(**)
Text Label 8700 2000 0    60   ~ 0
7
Text Label 8700 2100 0    60   ~ 0
8
Text Label 8700 2200 0    60   ~ 0
9(**)
Text Label 8700 2300 0    60   ~ 0
10(**/SS)
Text Label 8700 2400 0    60   ~ 0
11(**/MOSI)
Text Label 8700 2500 0    60   ~ 0
12(MISO)
Text Label 10550 2500 0    60   ~ 0
13(SCK)
Text Label 10550 2200 0    60   ~ 0
A0
Text Label 10550 2100 0    60   ~ 0
A1
Text Label 10550 2000 0    60   ~ 0
A2
Text Label 10550 1900 0    60   ~ 0
A3
Text Label 10550 1800 0    60   ~ 0
A4
Text Label 10550 1700 0    60   ~ 0
A5
Text Label 10550 1600 0    60   ~ 0
A6
Text Label 10550 1500 0    60   ~ 0
A7
Text Label 10550 2300 0    60   ~ 0
AREF
Text Label 10550 1300 0    60   ~ 0
Reset
Text Notes 8500 575  0    60   ~ 0
Shield for Arduino Nano
Text Label 10250 950  1    60   ~ 0
Vin
$Comp
L Connector:Conn_01x15 P1
U 1 1 56D73FAC
P 9550 1800
F 0 "P1" H 9550 2600 50  0000 C CNN
F 1 "Digital" V 9650 1800 50  0000 C CNN
F 2 "Socket_Arduino_Nano:Socket_Strip_Arduino_1x15" H 9550 1800 50  0001 C CNN
F 3 "" H 9550 1800 50  0000 C CNN
F 4 "?" H 9550 1800 60  0001 C CNN "PartNo"
F 5 "?" H 9550 1800 60  0001 C CNN "Manufacturer"
F 6 "?" H 9550 1800 60  0001 C CNN "Distributor"
	1    9550 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15 P2
U 1 1 56D740C7
P 9950 1800
F 0 "P2" H 9950 2600 50  0000 C CNN
F 1 "Analog" V 10050 1800 50  0000 C CNN
F 2 "Socket_Arduino_Nano:Socket_Strip_Arduino_1x15" H 9950 1800 50  0001 C CNN
F 3 "" H 9950 1800 50  0000 C CNN
F 4 "?" H 9950 1800 60  0001 C CNN "PartNo"
F 5 "?" H 9950 1800 60  0001 C CNN "Manufacturer"
F 6 "?" H 9950 1800 60  0001 C CNN "Distributor"
	1    9950 1800
	-1   0    0    -1  
$EndComp
$Comp
L power1:GND #PWR01
U 1 1 56D7422C
P 9250 2600
F 0 "#PWR01" H 9250 2350 50  0001 C CNN
F 1 "GND" H 9250 2450 50  0000 C CNN
F 2 "" H 9250 2600 50  0000 C CNN
F 3 "" H 9250 2600 50  0000 C CNN
	1    9250 2600
	1    0    0    -1  
$EndComp
$Comp
L power1:GND #PWR02
U 1 1 56D746ED
P 10250 2600
F 0 "#PWR02" H 10250 2350 50  0001 C CNN
F 1 "GND" H 10250 2450 50  0000 C CNN
F 2 "" H 10250 2600 50  0000 C CNN
F 3 "" H 10250 2600 50  0000 C CNN
	1    10250 2600
	1    0    0    -1  
$EndComp
$Comp
L power1:+5V #PWR03
U 1 1 56D747E8
P 10350 950
F 0 "#PWR03" H 10350 800 50  0001 C CNN
F 1 "+5V" H 10350 1090 28  0000 C CNN
F 2 "" H 10350 950 50  0000 C CNN
F 3 "" H 10350 950 50  0000 C CNN
	1    10350 950 
	1    0    0    -1  
$EndComp
$Comp
L power1:+3.3V #PWR04
U 1 1 56D74854
P 10450 950
F 0 "#PWR04" H 10450 800 50  0001 C CNN
F 1 "+3.3V" H 10450 1090 28  0000 C CNN
F 2 "" H 10450 950 50  0000 C CNN
F 3 "" H 10450 950 50  0000 C CNN
	1    10450 950 
	1    0    0    -1  
$EndComp
Text Notes 9650 1100 0    60   ~ 0
1
$Comp
L Connector:Conn_01x06 J1
U 1 1 5A169FBE
P 4200 2850
F 0 "J1" H 4280 2842 50  0000 L CNN
F 1 "Conn_01x06" H 4280 2751 50  0000 L CNN
F 2 "Connectors_IDC:IDC-Header_2x03_Pitch2.54mm_Straight" H 4200 2850 50  0001 C CNN
F 3 "~" H 4200 2850 50  0001 C CNN
F 4 "?" H 4200 2850 60  0001 C CNN "PartNo"
F 5 "?" H 4200 2850 60  0001 C CNN "Manufacturer"
F 6 "?" H 4200 2850 60  0001 C CNN "Distributor"
	1    4200 2850
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5A11CA63
P 1700 6050
F 0 "#PWR05" H 1700 5900 50  0001 C CNN
F 1 "VCC" H 1717 6223 50  0000 C CNN
F 2 "" H 1700 6050 50  0001 C CNN
F 3 "" H 1700 6050 50  0001 C CNN
	1    1700 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10 J7
U 1 1 5A11DDC3
P 1150 6750
F 0 "J7" H 1150 7250 50  0000 L CNN
F 1 "DATA_IN" H 1050 6100 50  0000 L CNN
F 2 "Connectors_IDC:IDC-Header_2x05_Pitch2.54mm_Straight" H 1150 6750 50  0001 C CNN
F 3 "~" H 1150 6750 50  0001 C CNN
F 4 "?" H 1150 6750 60  0001 C CNN "PartNo"
F 5 "?" H 1150 6750 60  0001 C CNN "Manufacturer"
F 6 "?" H 1150 6750 60  0001 C CNN "Distributor"
	1    1150 6750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5A11EF4E
P 1900 7300
F 0 "#PWR06" H 1900 7050 50  0001 C CNN
F 1 "GND" H 1905 7127 50  0000 C CNN
F 2 "" H 1900 7300 50  0001 C CNN
F 3 "" H 1900 7300 50  0001 C CNN
	1    1900 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5A1266BA
P 1900 6050
F 0 "#PWR07" H 1900 5900 50  0001 C CNN
F 1 "+5V" H 1915 6223 50  0000 C CNN
F 2 "" H 1900 6050 50  0001 C CNN
F 3 "" H 1900 6050 50  0001 C CNN
	1    1900 6050
	1    0    0    -1  
$EndComp
Text Label 1650 6850 2    60   ~ 0
SRCK
Text Label 1650 7050 2    60   ~ 0
RCK
Text Label 1650 6450 2    60   ~ 0
SER_IN
Text Label 1650 6650 2    60   ~ 0
~G
$Comp
L device:C C1
U 1 1 5A164C6D
P 3250 6650
F 0 "C1" H 3365 6696 50  0000 L CNN
F 1 "C" H 3365 6605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3288 6500 50  0001 C CNN
F 3 "" H 3250 6650 50  0001 C CNN
F 4 "?" H 3250 6650 60  0001 C CNN "PartNo"
F 5 "?" H 3250 6650 60  0001 C CNN "Manufacturer"
F 6 "?" H 3250 6650 60  0001 C CNN "Distributor"
	1    3250 6650
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06 J2
U 1 1 5A16B5A7
P 4200 3550
F 0 "J2" H 4280 3542 50  0000 L CNN
F 1 "Conn_01x06" H 4280 3451 50  0000 L CNN
F 2 "Connectors_IDC:IDC-Header_2x03_Pitch2.54mm_Straight" H 4200 3550 50  0001 C CNN
F 3 "~" H 4200 3550 50  0001 C CNN
F 4 "?" H 4200 3550 60  0001 C CNN "PartNo"
F 5 "?" H 4200 3550 60  0001 C CNN "Manufacturer"
F 6 "?" H 4200 3550 60  0001 C CNN "Distributor"
	1    4200 3550
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06 J3
U 1 1 5A16B6B5
P 4200 4250
F 0 "J3" H 4280 4242 50  0000 L CNN
F 1 "Conn_01x06" H 4280 4151 50  0000 L CNN
F 2 "Connectors_IDC:IDC-Header_2x03_Pitch2.54mm_Straight" H 4200 4250 50  0001 C CNN
F 3 "~" H 4200 4250 50  0001 C CNN
F 4 "?" H 4200 4250 60  0001 C CNN "PartNo"
F 5 "?" H 4200 4250 60  0001 C CNN "Manufacturer"
F 6 "?" H 4200 4250 60  0001 C CNN "Distributor"
	1    4200 4250
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06 J4
U 1 1 5A16B6BE
P 4200 4950
F 0 "J4" H 4280 4942 50  0000 L CNN
F 1 "Conn_01x06" H 4280 4851 50  0000 L CNN
F 2 "Connectors_IDC:IDC-Header_2x03_Pitch2.54mm_Straight" H 4200 4950 50  0001 C CNN
F 3 "~" H 4200 4950 50  0001 C CNN
F 4 "?" H 4200 4950 60  0001 C CNN "PartNo"
F 5 "?" H 4200 4950 60  0001 C CNN "Manufacturer"
F 6 "?" H 4200 4950 60  0001 C CNN "Distributor"
	1    4200 4950
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06 J5
U 1 1 5A16B737
P 4200 5650
F 0 "J5" H 4280 5642 50  0000 L CNN
F 1 "Conn_01x06" H 4280 5551 50  0000 L CNN
F 2 "Connectors_IDC:IDC-Header_2x03_Pitch2.54mm_Straight" H 4200 5650 50  0001 C CNN
F 3 "~" H 4200 5650 50  0001 C CNN
F 4 "?" H 4200 5650 60  0001 C CNN "PartNo"
F 5 "?" H 4200 5650 60  0001 C CNN "Manufacturer"
F 6 "?" H 4200 5650 60  0001 C CNN "Distributor"
	1    4200 5650
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06 J6
U 1 1 5A16B740
P 4200 6350
F 0 "J6" H 4280 6342 50  0000 L CNN
F 1 "Conn_01x06" H 4280 6251 50  0000 L CNN
F 2 "Connectors_IDC:IDC-Header_2x03_Pitch2.54mm_Straight" H 4200 6350 50  0001 C CNN
F 3 "~" H 4200 6350 50  0001 C CNN
F 4 "?" H 4200 6350 60  0001 C CNN "PartNo"
F 5 "?" H 4200 6350 60  0001 C CNN "Manufacturer"
F 6 "?" H 4200 6350 60  0001 C CNN "Distributor"
	1    4200 6350
	-1   0    0    -1  
$EndComp
Text Label 2250 6850 0    60   ~ 0
13(SCK)
Text Label 2250 6450 0    60   ~ 0
11(**/MOSI)
Text Label 2250 6650 0    60   ~ 0
10(**/SS)
Text Label 2250 7050 0    60   ~ 0
6(**)
$Comp
L power:GND #PWR08
U 1 1 5A179A63
P 4850 7000
F 0 "#PWR08" H 4850 6750 50  0001 C CNN
F 1 "GND" H 4855 6827 50  0000 C CNN
F 2 "" H 4850 7000 50  0001 C CNN
F 3 "" H 4850 7000 50  0001 C CNN
	1    4850 7000
	1    0    0    -1  
$EndComp
Wire Notes Line
	8475 650  9675 650 
Wire Notes Line
	9675 650  9675 475 
Wire Wire Line
	9350 1400 9250 1400
Wire Wire Line
	9250 1400 9250 2600
Wire Wire Line
	9350 1100 8700 1100
Wire Wire Line
	8700 1200 9350 1200
Wire Wire Line
	9350 1300 8700 1300
Wire Wire Line
	8700 1500 9350 1500
Wire Wire Line
	9350 1600 8700 1600
Wire Wire Line
	8700 1700 9350 1700
Wire Wire Line
	9350 1800 8700 1800
Wire Wire Line
	8700 1900 9350 1900
Wire Wire Line
	9350 2000 8700 2000
Wire Wire Line
	8700 2100 9350 2100
Wire Wire Line
	9350 2200 8700 2200
Wire Wire Line
	8700 2300 9350 2300
Wire Wire Line
	9350 2400 8700 2400
Wire Wire Line
	8700 2500 9350 2500
Wire Wire Line
	10250 2600 10250 1200
Wire Wire Line
	10250 1200 10150 1200
Wire Wire Line
	10150 1100 10250 1100
Wire Wire Line
	10250 1100 10250 950 
Wire Wire Line
	10350 950  10350 1400
Wire Wire Line
	10350 1400 10150 1400
Wire Wire Line
	10450 950  10450 2400
Wire Wire Line
	10450 2400 10150 2400
Wire Wire Line
	10550 1300 10150 1300
Wire Wire Line
	10150 1500 10550 1500
Wire Wire Line
	10550 1600 10150 1600
Wire Wire Line
	10550 1700 10150 1700
Wire Wire Line
	10150 1800 10550 1800
Wire Wire Line
	10550 1900 10150 1900
Wire Wire Line
	10550 2000 10150 2000
Wire Wire Line
	10150 2100 10550 2100
Wire Wire Line
	10550 2200 10150 2200
Wire Wire Line
	10550 2300 10150 2300
Wire Wire Line
	10150 2500 10550 2500
Wire Notes Line
	11200 2850 8450 2850
Wire Notes Line
	8450 2850 8450 500 
Wire Wire Line
	1350 6750 1900 6750
Wire Wire Line
	1350 6550 1900 6550
Connection ~ 1900 6750
Wire Wire Line
	1350 6650 2250 6650
Wire Wire Line
	1350 6450 2250 6450
Wire Wire Line
	1900 6550 1900 7300
Wire Wire Line
	1350 6350 1900 6350
Wire Wire Line
	1900 6350 1900 6050
Wire Wire Line
	1700 6050 1700 7250
Wire Wire Line
	1350 7150 1700 7150
Wire Wire Line
	1350 7250 1700 7250
Connection ~ 1700 7150
Wire Wire Line
	1350 6950 1900 6950
Connection ~ 1900 6950
Wire Wire Line
	1350 7050 2250 7050
Wire Wire Line
	1350 6850 2250 6850
Wire Wire Line
	1900 7300 3250 7300
Wire Wire Line
	1700 6250 3250 6250
Wire Wire Line
	3250 6250 3250 6500
Wire Wire Line
	3250 6800 3250 7300
Connection ~ 1700 6250
Wire Wire Line
	4400 5450 7200 5450
Wire Wire Line
	4400 5650 7350 5650
Wire Wire Line
	4400 2750 4850 2750
Wire Wire Line
	4850 2750 4850 7000
Wire Wire Line
	4400 6650 4850 6650
Connection ~ 4850 6650
Wire Wire Line
	4850 6550 4400 6550
Connection ~ 4850 6550
Wire Wire Line
	4400 6450 4850 6450
Connection ~ 4850 6450
Wire Wire Line
	4850 6250 4400 6250
Connection ~ 4850 6250
Wire Wire Line
	4400 2950 4850 2950
Connection ~ 4850 2950
Wire Wire Line
	4400 3050 4850 3050
Connection ~ 4850 3050
Wire Wire Line
	4400 3150 4850 3150
Connection ~ 4850 3150
Wire Wire Line
	4400 3450 4850 3450
Connection ~ 4850 3450
Wire Wire Line
	4400 3650 4850 3650
Connection ~ 4850 3650
Wire Wire Line
	4400 3750 4850 3750
Connection ~ 4850 3750
Wire Wire Line
	4400 3850 4850 3850
Connection ~ 4850 3850
Wire Wire Line
	4400 4150 4850 4150
Connection ~ 4850 4150
Wire Wire Line
	4400 4350 4850 4350
Connection ~ 4850 4350
Wire Wire Line
	4400 4450 4850 4450
Connection ~ 4850 4450
Wire Wire Line
	4400 4550 4850 4550
Connection ~ 4850 4550
Wire Wire Line
	4850 4850 4400 4850
Connection ~ 4850 4850
Wire Wire Line
	4400 5050 4850 5050
Connection ~ 4850 5050
Wire Wire Line
	4850 5150 4400 5150
Connection ~ 4850 5150
Wire Wire Line
	4400 5250 4850 5250
Connection ~ 4850 5250
Wire Wire Line
	4850 5550 4400 5550
Connection ~ 4850 5550
Wire Wire Line
	4400 5750 4850 5750
Connection ~ 4850 5750
Wire Wire Line
	4850 5850 4400 5850
Connection ~ 4850 5850
Wire Wire Line
	4400 5950 4850 5950
Connection ~ 4850 5950
Wire Wire Line
	4400 6150 7500 6150
Wire Wire Line
	4400 6350 7650 6350
Wire Wire Line
	4400 2650 5650 2650
Wire Wire Line
	4400 2850 5850 2850
Wire Wire Line
	4400 3350 6050 3350
Wire Wire Line
	4400 3550 6250 3550
Wire Wire Line
	4400 4050 6450 4050
Wire Wire Line
	4400 4250 6650 4250
Wire Wire Line
	4400 4750 6850 4750
Wire Wire Line
	4400 4950 7050 4950
Text Label 5350 4750 0    60   ~ 0
A5
Text Label 5350 4950 0    60   ~ 0
A4
Text Label 5350 5450 0    60   ~ 0
A3
Text Label 5350 5650 0    60   ~ 0
A2
Text Label 5350 6150 0    60   ~ 0
A1
Text Label 5350 6350 0    60   ~ 0
A0
Text Label 5350 4250 0    60   ~ 0
9(**)
Text Label 5350 4050 0    60   ~ 0
8
$Comp
L Connector:Conn_01x02 J8
U 1 1 5A1C4890
P 1050 4600
F 0 "J8" H 1130 4592 50  0000 L CNN
F 1 "Conn_01x02" H 1130 4501 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS1.5-2pol" H 1050 4600 50  0001 C CNN
F 3 "~" H 1050 4600 50  0001 C CNN
F 4 "?" H 1050 4600 60  0001 C CNN "PartNo"
F 5 "?" H 1050 4600 60  0001 C CNN "Manufacturer"
F 6 "?" H 1050 4600 60  0001 C CNN "Distributor"
	1    1050 4600
	-1   0    0    -1  
$EndComp
$Comp
L dc-dc:R-78E5.0-0.5 U1
U 1 1 5A1C4A15
P 2500 4600
F 0 "U1" H 2500 4842 50  0000 C CNN
F 1 "R-78E5.0-0.5" H 2500 4751 50  0000 C CNN
F 2 "Converters_DCDC_ACDC:DCDC-Conv_RECOM_R-78E-0.5" H 2550 4350 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-0.5.pdf" H 2500 4600 50  0001 C CNN
	1    2500 4600
	1    0    0    -1  
$EndComp
$Comp
L device:CP C2
U 1 1 5A1C4B78
P 1800 4750
F 0 "C2" H 1918 4796 50  0000 L CNN
F 1 "CP" H 1918 4705 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D13.0mm_P7.50mm" H 1838 4600 50  0001 C CNN
F 3 "" H 1800 4750 50  0001 C CNN
F 4 "?" H 1800 4750 60  0001 C CNN "PartNo"
F 5 "?" H 1800 4750 60  0001 C CNN "Manufacturer"
F 6 "?" H 1800 4750 60  0001 C CNN "Distributor"
	1    1800 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4600 2200 4600
Connection ~ 1800 4600
$Comp
L power:GND #PWR09
U 1 1 5A1CC93C
P 2500 4900
F 0 "#PWR09" H 2500 4650 50  0001 C CNN
F 1 "GND" H 2505 4727 50  0000 C CNN
F 2 "" H 2500 4900 50  0001 C CNN
F 3 "" H 2500 4900 50  0001 C CNN
	1    2500 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5A1CC970
P 1800 4900
F 0 "#PWR010" H 1800 4650 50  0001 C CNN
F 1 "GND" H 1805 4727 50  0000 C CNN
F 2 "" H 1800 4900 50  0001 C CNN
F 3 "" H 1800 4900 50  0001 C CNN
	1    1800 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5A1CC99D
P 1250 4700
F 0 "#PWR011" H 1250 4450 50  0001 C CNN
F 1 "GND" H 1255 4527 50  0000 C CNN
F 2 "" H 1250 4700 50  0001 C CNN
F 3 "" H 1250 4700 50  0001 C CNN
	1    1250 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5A1CCB0B
P 2900 4600
F 0 "#PWR012" H 2900 4450 50  0001 C CNN
F 1 "+5V" H 2915 4773 50  0000 C CNN
F 2 "" H 2900 4600 50  0001 C CNN
F 3 "" H 2900 4600 50  0001 C CNN
	1    2900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4600 2800 4600
$Comp
L Mechanical:Mounting_Hole MK1
U 1 1 5A16F97F
P 9350 4200
F 0 "MK1" H 9450 4246 50  0000 L CNN
F 1 "Mounting_Hole" H 9450 4155 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 9350 4200 50  0001 C CNN
F 3 "" H 9350 4200 50  0001 C CNN
F 4 "?" H 9350 4200 60  0001 C CNN "PartNo"
F 5 "?" H 9350 4200 60  0001 C CNN "Manufacturer"
F 6 "?" H 9350 4200 60  0001 C CNN "Distributor"
	1    9350 4200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK2
U 1 1 5A16FBBD
P 9350 4450
F 0 "MK2" H 9450 4496 50  0000 L CNN
F 1 "Mounting_Hole" H 9450 4405 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 9350 4450 50  0001 C CNN
F 3 "" H 9350 4450 50  0001 C CNN
F 4 "?" H 9350 4450 60  0001 C CNN "PartNo"
F 5 "?" H 9350 4450 60  0001 C CNN "Manufacturer"
F 6 "?" H 9350 4450 60  0001 C CNN "Distributor"
	1    9350 4450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK3
U 1 1 5A16FBF7
P 9350 4650
F 0 "MK3" H 9450 4696 50  0000 L CNN
F 1 "Mounting_Hole" H 9450 4605 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 9350 4650 50  0001 C CNN
F 3 "" H 9350 4650 50  0001 C CNN
F 4 "?" H 9350 4650 60  0001 C CNN "PartNo"
F 5 "?" H 9350 4650 60  0001 C CNN "Manufacturer"
F 6 "?" H 9350 4650 60  0001 C CNN "Distributor"
	1    9350 4650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK4
U 1 1 5A16FC31
P 9350 4850
F 0 "MK4" H 9450 4896 50  0000 L CNN
F 1 "Mounting_Hole" H 9450 4805 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 9350 4850 50  0001 C CNN
F 3 "" H 9350 4850 50  0001 C CNN
F 4 "?" H 9350 4850 60  0001 C CNN "PartNo"
F 5 "?" H 9350 4850 60  0001 C CNN "Manufacturer"
F 6 "?" H 9350 4850 60  0001 C CNN "Distributor"
	1    9350 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK5
U 1 1 5A173C73
P 9350 5050
F 0 "MK5" H 9450 5096 50  0000 L CNN
F 1 "Mounting_Hole" H 9450 5005 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 9350 5050 50  0001 C CNN
F 3 "" H 9350 5050 50  0001 C CNN
F 4 "?" H 9350 5050 60  0001 C CNN "PartNo"
F 5 "?" H 9350 5050 60  0001 C CNN "Manufacturer"
F 6 "?" H 9350 5050 60  0001 C CNN "Distributor"
	1    9350 5050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK6
U 1 1 5A173CB1
P 9350 5250
F 0 "MK6" H 9450 5296 50  0000 L CNN
F 1 "Mounting_Hole" H 9450 5205 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 9350 5250 50  0001 C CNN
F 3 "" H 9350 5250 50  0001 C CNN
F 4 "?" H 9350 5250 60  0001 C CNN "PartNo"
F 5 "?" H 9350 5250 60  0001 C CNN "Manufacturer"
F 6 "?" H 9350 5250 60  0001 C CNN "Distributor"
	1    9350 5250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR013
U 1 1 5A177BF6
P 1800 4600
F 0 "#PWR013" H 1800 4450 50  0001 C CNN
F 1 "VCC" H 1817 4773 50  0000 C CNN
F 2 "" H 1800 4600 50  0001 C CNN
F 3 "" H 1800 4600 50  0001 C CNN
	1    1800 4600
	1    0    0    -1  
$EndComp
Text Label 5350 2650 0    60   ~ 0
3(**)
Text Label 5350 2850 0    60   ~ 0
4
Text Label 5350 3350 0    60   ~ 0
5(**)
Text Label 5350 3550 0    60   ~ 0
7
$Comp
L device:R R1
U 1 1 5A17C36D
P 5650 2350
F 0 "R1" H 5720 2396 50  0000 L CNN
F 1 "R" H 5720 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5580 2350 50  0001 C CNN
F 3 "" H 5650 2350 50  0001 C CNN
F 4 "?" H 5650 2350 60  0001 C CNN "PartNo"
F 5 "?" H 5650 2350 60  0001 C CNN "Manufacturer"
F 6 "?" H 5650 2350 60  0001 C CNN "Distributor"
	1    5650 2350
	1    0    0    -1  
$EndComp
$Comp
L device:R R2
U 1 1 5A17C903
P 5850 2350
F 0 "R2" H 5920 2396 50  0000 L CNN
F 1 "R" H 5920 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5780 2350 50  0001 C CNN
F 3 "" H 5850 2350 50  0001 C CNN
F 4 "?" H 5850 2350 60  0001 C CNN "PartNo"
F 5 "?" H 5850 2350 60  0001 C CNN "Manufacturer"
F 6 "?" H 5850 2350 60  0001 C CNN "Distributor"
	1    5850 2350
	1    0    0    -1  
$EndComp
$Comp
L device:R R3
U 1 1 5A17C94F
P 6050 2350
F 0 "R3" H 6120 2396 50  0000 L CNN
F 1 "R" H 6120 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5980 2350 50  0001 C CNN
F 3 "" H 6050 2350 50  0001 C CNN
F 4 "?" H 6050 2350 60  0001 C CNN "PartNo"
F 5 "?" H 6050 2350 60  0001 C CNN "Manufacturer"
F 6 "?" H 6050 2350 60  0001 C CNN "Distributor"
	1    6050 2350
	1    0    0    -1  
$EndComp
$Comp
L device:R R4
U 1 1 5A17CA49
P 6250 2350
F 0 "R4" H 6320 2396 50  0000 L CNN
F 1 "R" H 6320 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6180 2350 50  0001 C CNN
F 3 "" H 6250 2350 50  0001 C CNN
F 4 "?" H 6250 2350 60  0001 C CNN "PartNo"
F 5 "?" H 6250 2350 60  0001 C CNN "Manufacturer"
F 6 "?" H 6250 2350 60  0001 C CNN "Distributor"
	1    6250 2350
	1    0    0    -1  
$EndComp
$Comp
L device:R R5
U 1 1 5A17CA95
P 6450 2350
F 0 "R5" H 6520 2396 50  0000 L CNN
F 1 "R" H 6520 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6380 2350 50  0001 C CNN
F 3 "" H 6450 2350 50  0001 C CNN
F 4 "?" H 6450 2350 60  0001 C CNN "PartNo"
F 5 "?" H 6450 2350 60  0001 C CNN "Manufacturer"
F 6 "?" H 6450 2350 60  0001 C CNN "Distributor"
	1    6450 2350
	1    0    0    -1  
$EndComp
$Comp
L device:R R6
U 1 1 5A17CADF
P 6650 2350
F 0 "R6" H 6720 2396 50  0000 L CNN
F 1 "R" H 6720 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6580 2350 50  0001 C CNN
F 3 "" H 6650 2350 50  0001 C CNN
F 4 "?" H 6650 2350 60  0001 C CNN "PartNo"
F 5 "?" H 6650 2350 60  0001 C CNN "Manufacturer"
F 6 "?" H 6650 2350 60  0001 C CNN "Distributor"
	1    6650 2350
	1    0    0    -1  
$EndComp
$Comp
L device:R R7
U 1 1 5A17CB3B
P 6850 2350
F 0 "R7" H 6920 2396 50  0000 L CNN
F 1 "R" H 6920 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6780 2350 50  0001 C CNN
F 3 "" H 6850 2350 50  0001 C CNN
F 4 "?" H 6850 2350 60  0001 C CNN "PartNo"
F 5 "?" H 6850 2350 60  0001 C CNN "Manufacturer"
F 6 "?" H 6850 2350 60  0001 C CNN "Distributor"
	1    6850 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2500 5650 2650
Wire Wire Line
	5850 2500 5850 2850
Wire Wire Line
	6050 2500 6050 3350
Wire Wire Line
	6250 2500 6250 3550
Wire Wire Line
	6450 2500 6450 4050
Wire Wire Line
	6650 2500 6650 4250
Wire Wire Line
	6850 2500 6850 4750
$Comp
L device:R R8
U 1 1 5A1A32A1
P 7050 2350
F 0 "R8" H 7120 2396 50  0000 L CNN
F 1 "R" H 7120 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6980 2350 50  0001 C CNN
F 3 "" H 7050 2350 50  0001 C CNN
F 4 "?" H 7050 2350 60  0001 C CNN "PartNo"
F 5 "?" H 7050 2350 60  0001 C CNN "Manufacturer"
F 6 "?" H 7050 2350 60  0001 C CNN "Distributor"
	1    7050 2350
	1    0    0    -1  
$EndComp
$Comp
L device:R R9
U 1 1 5A1A32F9
P 7200 2350
F 0 "R9" H 7270 2396 50  0000 L CNN
F 1 "R" H 7270 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7130 2350 50  0001 C CNN
F 3 "" H 7200 2350 50  0001 C CNN
F 4 "?" H 7200 2350 60  0001 C CNN "PartNo"
F 5 "?" H 7200 2350 60  0001 C CNN "Manufacturer"
F 6 "?" H 7200 2350 60  0001 C CNN "Distributor"
	1    7200 2350
	1    0    0    -1  
$EndComp
$Comp
L device:R R10
U 1 1 5A1A3349
P 7350 2350
F 0 "R10" H 7420 2396 50  0000 L CNN
F 1 "R" H 7420 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7280 2350 50  0001 C CNN
F 3 "" H 7350 2350 50  0001 C CNN
F 4 "?" H 7350 2350 60  0001 C CNN "PartNo"
F 5 "?" H 7350 2350 60  0001 C CNN "Manufacturer"
F 6 "?" H 7350 2350 60  0001 C CNN "Distributor"
	1    7350 2350
	1    0    0    -1  
$EndComp
$Comp
L device:R R11
U 1 1 5A1A339F
P 7500 2350
F 0 "R11" H 7570 2396 50  0000 L CNN
F 1 "R" H 7570 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7430 2350 50  0001 C CNN
F 3 "" H 7500 2350 50  0001 C CNN
F 4 "?" H 7500 2350 60  0001 C CNN "PartNo"
F 5 "?" H 7500 2350 60  0001 C CNN "Manufacturer"
F 6 "?" H 7500 2350 60  0001 C CNN "Distributor"
	1    7500 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2500 7050 4950
Wire Wire Line
	7200 2500 7200 5450
Wire Wire Line
	7350 2500 7350 5650
Wire Wire Line
	7500 2500 7500 6150
$Comp
L device:R R12
U 1 1 5A1B98FA
P 7650 2350
F 0 "R12" H 7720 2396 50  0000 L CNN
F 1 "R" H 7720 2305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7580 2350 50  0001 C CNN
F 3 "" H 7650 2350 50  0001 C CNN
F 4 "?" H 7650 2350 60  0001 C CNN "PartNo"
F 5 "?" H 7650 2350 60  0001 C CNN "Manufacturer"
F 6 "?" H 7650 2350 60  0001 C CNN "Distributor"
	1    7650 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2500 7650 6350
$Comp
L power1:+5V #PWR014
U 1 1 5A1BF878
P 6750 2000
F 0 "#PWR014" H 6750 1850 50  0001 C CNN
F 1 "+5V" H 6750 2140 28  0000 C CNN
F 2 "" H 6750 2000 50  0000 C CNN
F 3 "" H 6750 2000 50  0000 C CNN
	1    6750 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2200 7650 2200
Connection ~ 5850 2200
Connection ~ 6050 2200
Connection ~ 6250 2200
Connection ~ 6450 2200
Connection ~ 6650 2200
Connection ~ 6850 2200
Connection ~ 7050 2200
Connection ~ 7200 2200
Connection ~ 7350 2200
Connection ~ 7500 2200
Wire Wire Line
	6750 2000 6750 2200
Connection ~ 6750 2200
$EndSCHEMATC

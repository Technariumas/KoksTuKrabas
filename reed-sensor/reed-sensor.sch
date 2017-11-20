EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:linear
LIBS:regul
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
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:reed-sensor-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp "Albertas Mickėnas"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Switch:SW_Reed SW1
U 1 1 5A18F052
P 6200 3750
F 0 "SW1" V 6154 3835 50  0000 L CNN
F 1 "SW_Reed" V 6245 3835 50  0000 L CNN
F 2 "MK15-B-2-OE:SOP100P1950X375-2N" H 6200 3750 50  0001 C CNN
F 3 "" H 6200 3750 50  0001 C CNN
F 4 "?" H 6200 3750 60  0001 C CNN "PartNo"
F 5 "?" H 6200 3750 60  0001 C CNN "Manufacturer"
F 6 "?" H 6200 3750 60  0001 C CNN "Distributor"
	1    6200 3750
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Reed SW2
U 1 1 5A18F0E5
P 6800 3750
F 0 "SW2" V 6754 3835 50  0000 L CNN
F 1 "SW_Reed" V 6845 3835 50  0000 L CNN
F 2 "MK15-B-2-OE:SOP100P1950X375-2N" H 6800 3750 50  0001 C CNN
F 3 "" H 6800 3750 50  0001 C CNN
F 4 "?" H 6800 3750 60  0001 C CNN "PartNo"
F 5 "?" H 6800 3750 60  0001 C CNN "Manufacturer"
F 6 "?" H 6800 3750 60  0001 C CNN "Distributor"
	1    6800 3750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5A18F154
P 6500 3950
F 0 "#PWR01" H 6500 3700 50  0001 C CNN
F 1 "GND" H 6505 3777 50  0000 C CNN
F 2 "" H 6500 3950 50  0001 C CNN
F 3 "" H 6500 3950 50  0001 C CNN
	1    6500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3950 7450 3950
Connection ~ 6500 3950
$Comp
L Connector:Conn_01x06 J1
U 1 1 5A18F272
P 7650 3200
F 0 "J1" H 7730 3192 50  0000 L CNN
F 1 "Conn_01x06" H 7730 3101 50  0000 L CNN
F 2 "Connectors_IDC:IDC-Header_2x03_Pitch2.54mm_Straight" H 7650 3200 50  0001 C CNN
F 3 "~" H 7650 3200 50  0001 C CNN
F 4 "?" H 7650 3200 60  0001 C CNN "PartNo"
F 5 "?" H 7650 3200 60  0001 C CNN "Manufacturer"
F 6 "?" H 7650 3200 60  0001 C CNN "Distributor"
	1    7650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3950 7450 3500
Connection ~ 6800 3950
Wire Wire Line
	6800 3550 6800 3400
Wire Wire Line
	6800 3400 7450 3400
Wire Wire Line
	6200 3550 6200 3200
Wire Wire Line
	6200 3200 7450 3200
Wire Wire Line
	7450 3300 7350 3300
Wire Wire Line
	7350 3000 7350 3950
Connection ~ 7350 3950
Wire Wire Line
	7450 3100 7350 3100
Connection ~ 7350 3300
Wire Wire Line
	7450 3000 7350 3000
Connection ~ 7350 3100
$Comp
L Mechanical:Mounting_Hole MK1
U 1 1 5A18F99D
P 8650 3850
F 0 "MK1" H 8750 3896 50  0000 L CNN
F 1 "Mounting_Hole" H 8750 3805 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 8650 3850 50  0001 C CNN
F 3 "" H 8650 3850 50  0001 C CNN
F 4 "?" H 8650 3850 60  0001 C CNN "PartNo"
F 5 "?" H 8650 3850 60  0001 C CNN "Manufacturer"
F 6 "?" H 8650 3850 60  0001 C CNN "Distributor"
	1    8650 3850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK2
U 1 1 5A18F9F1
P 8650 4050
F 0 "MK2" H 8750 4096 50  0000 L CNN
F 1 "Mounting_Hole" H 8750 4005 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 8650 4050 50  0001 C CNN
F 3 "" H 8650 4050 50  0001 C CNN
F 4 "?" H 8650 4050 60  0001 C CNN "PartNo"
F 5 "?" H 8650 4050 60  0001 C CNN "Manufacturer"
F 6 "?" H 8650 4050 60  0001 C CNN "Distributor"
	1    8650 4050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK3
U 1 1 5A18FA15
P 8650 4250
F 0 "MK3" H 8750 4296 50  0000 L CNN
F 1 "Mounting_Hole" H 8750 4205 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 8650 4250 50  0001 C CNN
F 3 "" H 8650 4250 50  0001 C CNN
F 4 "?" H 8650 4250 60  0001 C CNN "PartNo"
F 5 "?" H 8650 4250 60  0001 C CNN "Manufacturer"
F 6 "?" H 8650 4250 60  0001 C CNN "Distributor"
	1    8650 4250
	1    0    0    -1  
$EndComp
$EndSCHEMATC

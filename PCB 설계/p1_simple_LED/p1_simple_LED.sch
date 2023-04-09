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
L 74xx:CD74HC4067SM U4
U 1 1 6110E922
P 6000 3950
F 0 "U4" H 6000 5131 50  0000 C CNN
F 1 "CD74HC4067SM" H 6000 5040 50  0000 C CNN
F 2 "Package_SO:SSOP-24_5.3x8.2mm_P0.65mm" H 7050 2950 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 5650 4800 50  0001 C CNN
	1    6000 3950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:CD74HC4067SM U1
U 1 1 61113ECA
P 3000 3950
F 0 "U1" H 3000 5131 50  0000 C CNN
F 1 "CD74HC4067SM" H 3000 5040 50  0000 C CNN
F 2 "Package_SO:SSOP-24_5.3x8.2mm_P0.65mm" H 4050 2950 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 2650 4800 50  0001 C CNN
	1    3000 3950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:CD74HC4067SM U2
U 1 1 61114C67
P 4550 3950
F 0 "U2" H 4550 5131 50  0000 C CNN
F 1 "CD74HC4067SM" H 4550 5040 50  0000 C CNN
F 2 "Package_SO:SSOP-24_5.3x8.2mm_P0.65mm" H 5600 2950 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 4200 4800 50  0001 C CNN
	1    4550 3950
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_UNO_R2 A1
U 1 1 61117073
P 9500 3950
F 0 "A1" H 9500 5131 50  0000 C CNN
F 1 "Arduino_UNO_R2" H 9500 5040 50  0000 C CNN
F 2 "Module:Arduino_UNO_R2" H 9500 3950 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 9500 3950 50  0001 C CNN
	1    9500 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 61118E0F
P 2250 7200
F 0 "#PWR01" H 2250 6950 50  0001 C CNN
F 1 "GND" H 2255 7027 50  0000 C CNN
F 2 "" H 2250 7200 50  0001 C CNN
F 3 "" H 2250 7200 50  0001 C CNN
	1    2250 7200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:CD74HC4067SM U3
U 1 1 6113F1F7
P 7500 3950
F 0 "U3" H 7500 5131 50  0000 C CNN
F 1 "CD74HC4067SM" H 7500 5040 50  0000 C CNN
F 2 "Package_SO:SSOP-24_5.3x8.2mm_P0.65mm" H 8550 2950 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 7150 4800 50  0001 C CNN
	1    7500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3250 5050 3250
Wire Wire Line
	5050 3250 6500 3250
Connection ~ 5050 3250
Wire Wire Line
	6500 3250 8000 3250
Connection ~ 6500 3250
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 61157F9A
P 800 3200
F 0 "H?" V 1037 3203 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 3203 50  0000 C CNN
F 2 "" H 800 3200 50  0001 C CNN
F 3 "~" H 800 3200 50  0001 C CNN
	1    800  3200
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115AA55
P 800 3400
F 0 "H?" V 1037 3403 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 3403 50  0000 C CNN
F 2 "" H 800 3400 50  0001 C CNN
F 3 "~" H 800 3400 50  0001 C CNN
	1    800  3400
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115AB14
P 800 3600
F 0 "H?" V 1037 3603 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 3603 50  0000 C CNN
F 2 "" H 800 3600 50  0001 C CNN
F 3 "~" H 800 3600 50  0001 C CNN
	1    800  3600
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115AC7E
P 800 3800
F 0 "H?" V 1037 3803 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 3803 50  0000 C CNN
F 2 "" H 800 3800 50  0001 C CNN
F 3 "~" H 800 3800 50  0001 C CNN
	1    800  3800
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115ADBE
P 800 4000
F 0 "H?" V 1037 4003 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 4003 50  0000 C CNN
F 2 "" H 800 4000 50  0001 C CNN
F 3 "~" H 800 4000 50  0001 C CNN
	1    800  4000
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115AE52
P 800 4200
F 0 "H?" V 1037 4203 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 4203 50  0000 C CNN
F 2 "" H 800 4200 50  0001 C CNN
F 3 "~" H 800 4200 50  0001 C CNN
	1    800  4200
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115AF71
P 800 4400
F 0 "H?" V 1037 4403 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 4403 50  0000 C CNN
F 2 "" H 800 4400 50  0001 C CNN
F 3 "~" H 800 4400 50  0001 C CNN
	1    800  4400
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115B3CB
P 800 4600
F 0 "H?" V 1037 4603 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 4603 50  0000 C CNN
F 2 "" H 800 4600 50  0001 C CNN
F 3 "~" H 800 4600 50  0001 C CNN
	1    800  4600
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115B624
P 800 3000
F 0 "H?" V 1037 3003 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 3003 50  0000 C CNN
F 2 "" H 800 3000 50  0001 C CNN
F 3 "~" H 800 3000 50  0001 C CNN
	1    800  3000
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115B964
P 800 2800
F 0 "H?" V 1037 2803 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 2803 50  0000 C CNN
F 2 "" H 800 2800 50  0001 C CNN
F 3 "~" H 800 2800 50  0001 C CNN
	1    800  2800
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115BA83
P 800 2600
F 0 "H?" V 1037 2603 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 2603 50  0000 C CNN
F 2 "" H 800 2600 50  0001 C CNN
F 3 "~" H 800 2600 50  0001 C CNN
	1    800  2600
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115BC8D
P 800 2400
F 0 "H?" V 1037 2403 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 2403 50  0000 C CNN
F 2 "" H 800 2400 50  0001 C CNN
F 3 "~" H 800 2400 50  0001 C CNN
	1    800  2400
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115BF48
P 800 4800
F 0 "H?" V 1037 4803 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 4803 50  0000 C CNN
F 2 "" H 800 4800 50  0001 C CNN
F 3 "~" H 800 4800 50  0001 C CNN
	1    800  4800
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115BFA3
P 800 5000
F 0 "H?" V 1037 5003 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 5003 50  0000 C CNN
F 2 "" H 800 5000 50  0001 C CNN
F 3 "~" H 800 5000 50  0001 C CNN
	1    800  5000
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115C071
P 800 5200
F 0 "H?" V 1037 5203 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 5203 50  0000 C CNN
F 2 "" H 800 5200 50  0001 C CNN
F 3 "~" H 800 5200 50  0001 C CNN
	1    800  5200
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 6115C130
P 800 5400
F 0 "H?" V 1037 5403 50  0000 C CNN
F 1 "MountingHole_Pad" V 946 5403 50  0000 C CNN
F 2 "" H 800 5400 50  0001 C CNN
F 3 "~" H 800 5400 50  0001 C CNN
	1    800  5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 3250 2300 3250
Wire Wire Line
	2300 3250 2300 2400
Wire Wire Line
	2300 2400 900  2400
Connection ~ 3500 3250
Wire Wire Line
	3500 3350 2250 3350
Wire Wire Line
	2250 3350 2250 2600
Wire Wire Line
	2250 2600 900  2600
Wire Wire Line
	900  2800 2200 2800
Wire Wire Line
	2200 2800 2200 3500
Wire Wire Line
	2200 3500 3500 3500
Wire Wire Line
	3500 3500 3500 3450
Connection ~ 3500 3350
Wire Wire Line
	3500 3350 5050 3350
Connection ~ 5050 3350
Wire Wire Line
	5050 3350 6500 3350
Wire Wire Line
	8000 3350 6500 3350
Connection ~ 6500 3350
Wire Wire Line
	8000 3450 8000 3400
Wire Wire Line
	8000 3400 6500 3400
Wire Wire Line
	6500 3400 6500 3450
Wire Wire Line
	6500 3400 5050 3400
Wire Wire Line
	5050 3400 5050 3450
Connection ~ 6500 3400
Wire Wire Line
	5050 3400 3500 3400
Wire Wire Line
	3500 3400 3500 3450
Connection ~ 5050 3400
Connection ~ 3500 3450
Wire Wire Line
	5050 3550 3500 3550
Wire Wire Line
	6500 3550 5050 3550
Connection ~ 5050 3550
Wire Wire Line
	6500 3550 8000 3550
Connection ~ 6500 3550
Wire Wire Line
	8000 3650 6500 3650
Wire Wire Line
	5050 3650 6500 3650
Connection ~ 6500 3650
Wire Wire Line
	3500 3650 5050 3650
Connection ~ 5050 3650
Wire Wire Line
	3500 3750 5050 3750
Connection ~ 5050 3750
Wire Wire Line
	5050 3750 6500 3750
Connection ~ 6500 3750
Wire Wire Line
	6500 3750 8000 3750
Wire Wire Line
	3500 4250 5050 4250
Connection ~ 5050 4250
Wire Wire Line
	5050 4250 6500 4250
Connection ~ 6500 4250
Wire Wire Line
	6500 4250 8000 4250
Wire Wire Line
	8000 4350 6500 4350
Connection ~ 5050 4350
Wire Wire Line
	5050 4350 3500 4350
Connection ~ 6500 4350
Wire Wire Line
	6500 4350 5050 4350
Wire Wire Line
	3500 4450 5050 4450
Connection ~ 5050 4450
Wire Wire Line
	5050 4450 6500 4450
Connection ~ 6500 4450
Wire Wire Line
	6500 4450 8000 4450
Wire Wire Line
	8000 4750 6500 4750
Connection ~ 5050 4750
Wire Wire Line
	5050 4750 3500 4750
Connection ~ 6500 4750
Wire Wire Line
	6500 4750 5050 4750
Wire Wire Line
	3500 4650 5050 4650
Connection ~ 5050 4650
Wire Wire Line
	5050 4650 6500 4650
Connection ~ 6500 4650
Wire Wire Line
	6500 4650 8000 4650
Wire Wire Line
	8000 4550 8000 4600
Wire Wire Line
	8000 4600 6500 4600
Wire Wire Line
	3500 4600 3500 4550
Wire Wire Line
	5050 4550 5050 4600
Connection ~ 5050 4600
Wire Wire Line
	5050 4600 3500 4600
Wire Wire Line
	6500 4550 6500 4600
Connection ~ 6500 4600
Wire Wire Line
	6500 4600 5050 4600
Wire Wire Line
	3000 2950 4550 2950
Connection ~ 4550 2950
Wire Wire Line
	4550 2950 6000 2950
Connection ~ 6000 2950
Wire Wire Line
	6000 2950 7500 2950
$Comp
L power:GND #PWR?
U 1 1 6116B070
P 3000 5050
F 0 "#PWR?" H 3000 4800 50  0001 C CNN
F 1 "GND" H 3005 4877 50  0000 C CNN
F 2 "" H 3000 5050 50  0001 C CNN
F 3 "" H 3000 5050 50  0001 C CNN
	1    3000 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6116C626
P 4550 5050
F 0 "#PWR?" H 4550 4800 50  0001 C CNN
F 1 "GND" H 4555 4877 50  0000 C CNN
F 2 "" H 4550 5050 50  0001 C CNN
F 3 "" H 4550 5050 50  0001 C CNN
	1    4550 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6116D853
P 6000 5050
F 0 "#PWR?" H 6000 4800 50  0001 C CNN
F 1 "GND" H 6005 4877 50  0000 C CNN
F 2 "" H 6000 5050 50  0001 C CNN
F 3 "" H 6000 5050 50  0001 C CNN
	1    6000 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6116EAD4
P 7500 5050
F 0 "#PWR?" H 7500 4800 50  0001 C CNN
F 1 "GND" H 7505 4877 50  0000 C CNN
F 2 "" H 7500 5050 50  0001 C CNN
F 3 "" H 7500 5050 50  0001 C CNN
	1    7500 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3850 8000 3800
Wire Wire Line
	8000 3800 6500 3800
Wire Wire Line
	3500 3800 3500 3850
Wire Wire Line
	3500 3950 3500 3900
Wire Wire Line
	3500 3900 5050 3900
Wire Wire Line
	8000 3900 8000 3950
Wire Wire Line
	8000 4050 8000 4000
Wire Wire Line
	8000 4000 6500 4000
Wire Wire Line
	3500 4000 3500 4050
Wire Wire Line
	3500 4150 3500 4100
Wire Wire Line
	3500 4100 5050 4100
Wire Wire Line
	8000 4100 8000 4150
Wire Wire Line
	6500 4150 6500 4100
Connection ~ 6500 4100
Wire Wire Line
	6500 4100 8000 4100
Wire Wire Line
	5050 4150 5050 4100
Connection ~ 5050 4100
Wire Wire Line
	5050 4100 6500 4100
Wire Wire Line
	5050 4050 5050 4000
Connection ~ 5050 4000
Wire Wire Line
	5050 4000 3500 4000
Wire Wire Line
	5050 3950 5050 3900
Connection ~ 5050 3900
Wire Wire Line
	5050 3900 6500 3900
Wire Wire Line
	5050 3850 5050 3800
Connection ~ 5050 3800
Wire Wire Line
	5050 3800 3500 3800
Wire Wire Line
	6500 3850 6500 3800
Connection ~ 6500 3800
Wire Wire Line
	6500 3800 5050 3800
Wire Wire Line
	6500 3950 6500 3900
Connection ~ 6500 3900
Wire Wire Line
	6500 3900 8000 3900
Wire Wire Line
	6500 4050 6500 4000
Connection ~ 6500 4000
Wire Wire Line
	6500 4000 5050 4000
Wire Wire Line
	3500 3550 2150 3550
Wire Wire Line
	2150 3550 2150 3000
Wire Wire Line
	2150 3000 900  3000
Connection ~ 3500 3550
Wire Wire Line
	900  3200 2100 3200
Wire Wire Line
	2100 3200 2100 3650
Wire Wire Line
	2100 3650 3500 3650
Connection ~ 3500 3650
Wire Wire Line
	3500 3750 2050 3750
Wire Wire Line
	2050 3750 2050 3400
Wire Wire Line
	2050 3400 900  3400
Connection ~ 3500 3750
Wire Wire Line
	900  3600 2000 3600
Wire Wire Line
	2000 3600 2000 3800
Wire Wire Line
	2000 3800 3500 3800
Connection ~ 3500 3800
Wire Wire Line
	3500 3900 1950 3900
Wire Wire Line
	1950 3900 1950 3800
Wire Wire Line
	1950 3800 900  3800
Connection ~ 3500 3900
Wire Wire Line
	3500 4000 900  4000
Connection ~ 3500 4000
Wire Wire Line
	3500 4100 900  4100
Wire Wire Line
	900  4100 900  4200
Connection ~ 3500 4100
Wire Wire Line
	3500 4250 900  4250
Wire Wire Line
	900  4250 900  4400
Connection ~ 3500 4250
Wire Wire Line
	3500 4350 950  4350
Wire Wire Line
	950  4350 950  4600
Wire Wire Line
	950  4600 900  4600
Connection ~ 3500 4350
Wire Wire Line
	3500 4450 1000 4450
Wire Wire Line
	1000 4450 1000 4800
Wire Wire Line
	1000 4800 900  4800
Connection ~ 3500 4450
Wire Wire Line
	3500 4600 1050 4600
Wire Wire Line
	1050 4600 1050 5000
Wire Wire Line
	1050 5000 900  5000
Connection ~ 3500 4600
Wire Wire Line
	3500 4650 1100 4650
Wire Wire Line
	1100 4650 1100 5200
Wire Wire Line
	1100 5200 900  5200
Connection ~ 3500 4650
Wire Wire Line
	900  5400 1150 5400
Wire Wire Line
	1150 5400 1150 4750
Wire Wire Line
	1150 4750 3500 4750
Connection ~ 3500 4750
$Comp
L power:GND #PWR?
U 1 1 611B927F
P 2500 4550
F 0 "#PWR?" H 2500 4300 50  0001 C CNN
F 1 "GND" H 2505 4377 50  0000 C CNN
F 2 "" H 2500 4550 50  0001 C CNN
F 3 "" H 2500 4550 50  0001 C CNN
	1    2500 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 611BDF13
P 4050 4550
F 0 "#PWR?" H 4050 4300 50  0001 C CNN
F 1 "GND" H 4055 4377 50  0000 C CNN
F 2 "" H 4050 4550 50  0001 C CNN
F 3 "" H 4050 4550 50  0001 C CNN
	1    4050 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 611C2C05
P 5500 4550
F 0 "#PWR?" H 5500 4300 50  0001 C CNN
F 1 "GND" H 5505 4377 50  0000 C CNN
F 2 "" H 5500 4550 50  0001 C CNN
F 3 "" H 5500 4550 50  0001 C CNN
	1    5500 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 611C795D
P 7000 4550
F 0 "#PWR?" H 7000 4300 50  0001 C CNN
F 1 "GND" H 7005 4377 50  0000 C CNN
F 2 "" H 7000 4550 50  0001 C CNN
F 3 "" H 7000 4550 50  0001 C CNN
	1    7000 4550
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Buffer:BUF602xD U?
U 1 1 611D9B2C
P 5900 2000
F 0 "U?" H 6244 2046 50  0000 L CNN
F 1 "BUF602xD" H 6244 1955 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5900 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/buf602.pdf" H 5900 2000 50  0001 C CNN
	1    5900 2000
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Buffer:BUF602xD U?
U 1 1 611DBC8B
P 7400 2000
F 0 "U?" H 7744 2046 50  0000 L CNN
F 1 "BUF602xD" H 7744 1955 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7400 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/buf602.pdf" H 7400 2000 50  0001 C CNN
	1    7400 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3350 9000 2700
Wire Wire Line
	9000 2700 4300 2700
Wire Wire Line
	4300 2700 4300 3850
Wire Wire Line
	4300 3850 4050 3850
Wire Wire Line
	4050 3950 4350 3950
Wire Wire Line
	4350 2750 8950 2750
Wire Wire Line
	8950 2750 8950 3450
Wire Wire Line
	8950 3450 9000 3450
Wire Wire Line
	4350 3950 4350 2750
Wire Wire Line
	9000 3550 8900 3550
Wire Wire Line
	8900 3550 8900 2800
Wire Wire Line
	8900 2800 4400 2800
Wire Wire Line
	4400 2800 4400 4050
Wire Wire Line
	4400 4050 4050 4050
Wire Wire Line
	4050 4150 4450 4150
Wire Wire Line
	4450 4150 4450 2850
Wire Wire Line
	4450 2850 8850 2850
Wire Wire Line
	8850 2850 8850 3650
Wire Wire Line
	8850 3650 9000 3650
$EndSCHEMATC

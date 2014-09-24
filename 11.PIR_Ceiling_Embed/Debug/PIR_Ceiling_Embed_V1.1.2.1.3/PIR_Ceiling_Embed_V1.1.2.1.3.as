opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 58300"

opt pagewidth 120

	opt lm

	processor	16F723A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTC equ 07h ;# 
# 343 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PORTE equ 09h ;# 
# 363 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCLATH equ 0Ah ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
INTCON equ 0Bh ;# 
# 458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR1 equ 0Ch ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIR2 equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1 equ 0Eh ;# 
# 544 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1L equ 0Eh ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR1H equ 0Fh ;# 
# 556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1CON equ 010h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TMR2 equ 011h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T2CON equ 012h ;# 
# 719 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPBUF equ 013h ;# 
# 725 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPCON equ 014h ;# 
# 794 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1 equ 015h ;# 
# 800 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1L equ 015h ;# 
# 806 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR1H equ 016h ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP1CON equ 017h ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCSTA equ 018h ;# 
# 984 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXREG equ 019h ;# 
# 990 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
RCREG equ 01Ah ;# 
# 996 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2 equ 01Bh ;# 
# 1002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2L equ 01Bh ;# 
# 1008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCPR2H equ 01Ch ;# 
# 1014 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CCP2CON equ 01Dh ;# 
# 1092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADRES equ 01Eh ;# 
# 1098 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON0 equ 01Fh ;# 
# 1180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OPTION_REG equ 081h ;# 
# 1249 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISA equ 085h ;# 
# 1310 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISB equ 086h ;# 
# 1371 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISC equ 087h ;# 
# 1432 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TRISE equ 089h ;# 
# 1452 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE1 equ 08Ch ;# 
# 1513 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PIE2 equ 08Dh ;# 
# 1532 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PCON equ 08Eh ;# 
# 1565 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
T1GCON equ 08Fh ;# 
# 1659 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCCON equ 090h ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
OSCTUNE equ 091h ;# 
# 1763 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PR2 equ 092h ;# 
# 1769 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPADD equ 093h ;# 
# 1775 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPMSK equ 093h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SSPSTAT equ 094h ;# 
# 1949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPUB equ 095h ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
WPU equ 095h ;# 
# 2186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOCB equ 096h ;# 
# 2191 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
IOC equ 096h ;# 
# 2423 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
TXSTA equ 098h ;# 
# 2503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
SPBRG equ 099h ;# 
# 2564 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
APFCON equ 09Ch ;# 
# 2589 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
FVRCON equ 09Dh ;# 
# 2636 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ADCON1 equ 09Fh ;# 
# 2695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON0 equ 0108h ;# 
# 2748 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
CPSCON1 equ 0109h ;# 
# 2793 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATL equ 010Ch ;# 
# 2798 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATA equ 010Ch ;# 
# 2804 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRL equ 010Dh ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADR equ 010Dh ;# 
# 2815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMDATH equ 010Eh ;# 
# 2821 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMADRH equ 010Fh ;# 
# 2827 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELA equ 0185h ;# 
# 2884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
ANSELB equ 0186h ;# 
# 2941 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f723a.h"
PMCON1 equ 018Ch ;# 
	FNCALL	_main,_Buzzer_Initialization
	FNCALL	_main,_Buzzer_Main
	FNCALL	_main,_CDS_Initialization
	FNCALL	_main,_CDS_Main
	FNCALL	_main,_LED_Initialization
	FNCALL	_main,_LED_Main
	FNCALL	_main,_Lights_Initialization
	FNCALL	_main,_Lights_Main
	FNCALL	_main,_MainT
	FNCALL	_main,_MainT_Initialization
	FNCALL	_main,_Mcu_Initialization
	FNCALL	_main,_getCDS_AD
	FNCALL	_getCDS_AD,_getAD
	FNCALL	_Mcu_Initialization,_ADC_Set
	FNCALL	_Mcu_Initialization,_IO_Set
	FNCALL	_Mcu_Initialization,_TMR0_Set
	FNCALL	_MainT,_setBuz
	FNCALL	_MainT,_setLights_Switch
	FNCALL	_MainT,_setLights_Trigger
	FNCALL	_setBuz,___wmul
	FNCALL	_Lights_Main,_Lights_Control
	FNCALL	_Lights_Main,_setLights_Main
	FNCALL	_setLights_Main,_LightsPointSelect
	FNCALL	_setLights_Main,_setLights
	FNCALL	_setLights,_LightsPointSelect
	FNCALL	_Lights_Control,_LightsPointSelect
	FNCALL	_Lights_Initialization,_setLights_Initialization
	FNCALL	_setLights_Initialization,_LightsPointSelect
	FNCALL	_LED_Main,_setLED_Main
	FNCALL	_setLED_Main,_LedPointSelect
	FNCALL	_LED_Initialization,_setLED_Initialization
	FNCALL	_setLED_Initialization,_LedPointSelect
	FNCALL	_setLED_Initialization,_setLED
	FNCALL	_CDS_Main,_setLights_Switch
	FNCALL	_CDS_Main,_setLights_Trigger
	FNCALL	_setLights_Trigger,_LightsPointSelect
	FNCALL	_setLights_Switch,_LightsPointSelect
	FNCALL	_CDS_Initialization,_setLED
	FNCALL	_setLED,_LedPointSelect
	FNROOT	_main
	FNCALL	_ISR,_TMR0_ISR
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_Buz
	global	_CDS
	global	_LED
	global	_Lights
	global	_VarTMain
	global	_Buz1
	global	_Lights1
	global	_VarTimer0
	global	__CDS1
	global	_VarErrLED
	global	_VarLED1
	global	_VarLED2
	global	_Timer0
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_Timer0:
       ds      1

	global	_TMain
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_TMain:
       ds      1

	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRES
_ADRES	set	0x1E
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_TMR0
_TMR0	set	0x1
	global	_GIE
_GIE	set	0x5F
	global	_GO_nDONE
_GO_nDONE	set	0xF9
	global	_RA4
_RA4	set	0x2C
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RB3
_RB3	set	0x33
	global	_RB4
_RB4	set	0x34
	global	_RB5
_RB5	set	0x35
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_FVRCON
_FVRCON	set	0x9D
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_OSCCON
_OSCCON	set	0x90
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_ANSELA
_ANSELA	set	0x185
	global	_ANSELB
_ANSELB	set	0x186
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_FOSC$INTOSCIO
__CFG_FOSC$INTOSCIO equ 0x0
	file	"PIR_Ceiling_Embed_V1.1.2.1.3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_Buz:
       ds      1

_CDS:
       ds      1

_LED:
       ds      1

_Lights:
       ds      1

_VarTMain:
       ds      16

_Buz1:
       ds      12

_Lights1:
       ds      10

_VarTimer0:
       ds      7

__CDS1:
       ds      5

_VarErrLED:
       ds      4

_VarLED1:
       ds      4

_VarLED2:
       ds      4

	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+042h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_setLED_Initialization:	; 0 bytes @ 0x0
?_setLED_Main:	; 0 bytes @ 0x0
?_MainT_Initialization:	; 0 bytes @ 0x0
?_Mcu_Initialization:	; 0 bytes @ 0x0
?_Lights_Initialization:	; 0 bytes @ 0x0
?_MainT:	; 0 bytes @ 0x0
?_Lights_Main:	; 0 bytes @ 0x0
?_setLights_Initialization:	; 0 bytes @ 0x0
?_setLights_Main:	; 0 bytes @ 0x0
?_Lights_Control:	; 0 bytes @ 0x0
?_IO_Set:	; 0 bytes @ 0x0
?_TMR0_Set:	; 0 bytes @ 0x0
?_ADC_Set:	; 0 bytes @ 0x0
?_TMR0_ISR:	; 0 bytes @ 0x0
??_TMR0_ISR:	; 0 bytes @ 0x0
?_Buzzer_Initialization:	; 0 bytes @ 0x0
?_Buzzer_Main:	; 0 bytes @ 0x0
?_CDS_Initialization:	; 0 bytes @ 0x0
?_CDS_Main:	; 0 bytes @ 0x0
?_LedPointSelect:	; 0 bytes @ 0x0
?_LED_Initialization:	; 0 bytes @ 0x0
?_LED_Main:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_LightsPointSelect:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
getCDS_AD@cds:	; 1 bytes @ 0x0
	ds	2
??_ISR:	; 0 bytes @ 0x2
	ds	4
??_MainT_Initialization:	; 0 bytes @ 0x6
??_IO_Set:	; 0 bytes @ 0x6
??_TMR0_Set:	; 0 bytes @ 0x6
??_ADC_Set:	; 0 bytes @ 0x6
??_Buzzer_Initialization:	; 0 bytes @ 0x6
??_setBuz:	; 0 bytes @ 0x6
??_LedPointSelect:	; 0 bytes @ 0x6
??_LightsPointSelect:	; 0 bytes @ 0x6
??___wmul:	; 0 bytes @ 0x6
?_getAD:	; 1 bytes @ 0x6
	global	getAD@adcon1
getAD@adcon1:	; 1 bytes @ 0x6
	ds	1
??_setLED:	; 0 bytes @ 0x7
??_setLights_Trigger:	; 0 bytes @ 0x7
??_setLights_Switch:	; 0 bytes @ 0x7
??_getAD:	; 0 bytes @ 0x7
??_setLED_Initialization:	; 0 bytes @ 0x7
??_Mcu_Initialization:	; 0 bytes @ 0x7
??_Lights_Initialization:	; 0 bytes @ 0x7
??_Lights_Main:	; 0 bytes @ 0x7
??_setLights_Initialization:	; 0 bytes @ 0x7
??_setLights_Main:	; 0 bytes @ 0x7
??_LED_Initialization:	; 0 bytes @ 0x7
??_LED_Main:	; 0 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Buzzer_Main:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	LedPointSelect@led
LedPointSelect@led:	; 1 bytes @ 0x0
	global	LightsPointSelect@lights
LightsPointSelect@lights:	; 1 bytes @ 0x0
	global	getAD@adcon0
getAD@adcon0:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	1
?_setLED:	; 0 bytes @ 0x1
?_setLights_Trigger:	; 0 bytes @ 0x1
?_setLights_Switch:	; 0 bytes @ 0x1
??_setLED_Main:	; 0 bytes @ 0x1
??_Lights_Control:	; 0 bytes @ 0x1
?_setLights:	; 0 bytes @ 0x1
?_getCDS_AD:	; 0 bytes @ 0x1
	global	getCDS_AD@channel1
getCDS_AD@channel1:	; 1 bytes @ 0x1
	global	setLED@command
setLED@command:	; 1 bytes @ 0x1
	global	setLights_Initialization@lights
setLights_Initialization@lights:	; 1 bytes @ 0x1
	global	setLights_Trigger@command
setLights_Trigger@command:	; 1 bytes @ 0x1
	global	setLights_Switch@command
setLights_Switch@command:	; 1 bytes @ 0x1
	global	setLights@command
setLights@command:	; 1 bytes @ 0x1
	ds	1
??_setLights:	; 0 bytes @ 0x2
	global	getCDS_AD@channel2
getCDS_AD@channel2:	; 1 bytes @ 0x2
	global	setLED@led
setLED@led:	; 1 bytes @ 0x2
	global	setLights_Trigger@lights
setLights_Trigger@lights:	; 1 bytes @ 0x2
	global	setLights_Switch@lights
setLights_Switch@lights:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
??_CDS_Initialization:	; 0 bytes @ 0x3
??_CDS_Main:	; 0 bytes @ 0x3
??_getCDS_AD:	; 0 bytes @ 0x3
	global	setLED_Initialization@led
setLED_Initialization@led:	; 1 bytes @ 0x3
	global	setLED_Main@led
setLED_Main@led:	; 1 bytes @ 0x3
	global	setLights@lights
setLights@lights:	; 1 bytes @ 0x3
	global	Lights_Control@lights
Lights_Control@lights:	; 1 bytes @ 0x3
	ds	1
	global	setLights_Main@clear
setLights_Main@clear:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	getCDS_AD@i
getCDS_AD@i:	; 1 bytes @ 0x5
	global	setLights_Main@lights
setLights_Main@lights:	; 1 bytes @ 0x5
	ds	1
?_setBuz:	; 0 bytes @ 0x6
	global	getCDS_AD@j
getCDS_AD@j:	; 1 bytes @ 0x6
	global	setBuz@time
setBuz@time:	; 2 bytes @ 0x6
	ds	2
	global	setBuz@count
setBuz@count:	; 1 bytes @ 0x8
	ds	1
??_MainT:	; 0 bytes @ 0x9
	ds	2
??_main:	; 0 bytes @ 0xB
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         66
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7       8
;!    BANK0            80     13      80
;!    BANK1            80      0       0
;!    BANK2            16      0       0

;!
;!Pointer List with Targets:
;!
;!    Timer0	PTR struct Timer0 size(1) Largest target is 7
;!		 -> NULL(NULL[0]), VarTimer0(BANK0[7]), 
;!
;!    Lights	PTR struct Lights size(1) Largest target is 10
;!		 -> NULL(NULL[0]), Lights1(BANK0[10]), 
;!
;!    TMain	PTR struct TMain size(1) Largest target is 16
;!		 -> NULL(NULL[0]), VarTMain(BANK0[16]), 
;!
;!    LED	PTR struct LED size(1) Largest target is 4
;!		 -> NULL(NULL[0]), VarErrLED(BANK0[4]), VarLED2(BANK0[4]), VarLED1(BANK0[4]), 
;!
;!    CDS	PTR struct CDS size(1) Largest target is 5
;!		 -> NULL(NULL[0]), _CDS1(BANK0[5]), 
;!
;!    Buz	PTR struct Buzzer size(1) Largest target is 12
;!		 -> NULL(NULL[0]), Buz1(BANK0[12]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_Buzzer_Initialization
;!    _main->_MainT_Initialization
;!    _getCDS_AD->_getAD
;!    _Mcu_Initialization->_TMR0_Set
;!    _MainT->_setBuz
;!    _setLights_Main->_LightsPointSelect
;!    _setLights->_LightsPointSelect
;!    _Lights_Control->_LightsPointSelect
;!    _setLights_Initialization->_LightsPointSelect
;!    _setLED_Main->_LedPointSelect
;!    _setLED_Initialization->_LedPointSelect
;!    _setLights_Trigger->_LightsPointSelect
;!    _setLights_Switch->_LightsPointSelect
;!    _setLED->_LedPointSelect
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->_TMR0_ISR
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_MainT
;!    _getCDS_AD->_getAD
;!    _MainT->_setBuz
;!    _setBuz->___wmul
;!    _Lights_Main->_setLights_Main
;!    _setLights_Main->_setLights
;!    _setLights->_LightsPointSelect
;!    _Lights_Control->_LightsPointSelect
;!    _Lights_Initialization->_setLights_Initialization
;!    _setLights_Initialization->_LightsPointSelect
;!    _LED_Main->_setLED_Main
;!    _setLED_Main->_LedPointSelect
;!    _LED_Initialization->_setLED_Initialization
;!    _setLED_Initialization->_setLED
;!    _CDS_Main->_setLights_Switch
;!    _CDS_Main->_setLights_Trigger
;!    _setLights_Trigger->_LightsPointSelect
;!    _setLights_Switch->_LightsPointSelect
;!    _CDS_Initialization->_setLED
;!    _setLED->_LedPointSelect
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0    4798
;!                                             11 BANK0      2     2      0
;!              _Buzzer_Initialization
;!                        _Buzzer_Main
;!                 _CDS_Initialization
;!                           _CDS_Main
;!                 _LED_Initialization
;!                           _LED_Main
;!              _Lights_Initialization
;!                        _Lights_Main
;!                              _MainT
;!               _MainT_Initialization
;!                 _Mcu_Initialization
;!                          _getCDS_AD
;! ---------------------------------------------------------------------------------
;! (1) _getCDS_AD                                            7     5      2     390
;!                                              1 BANK0      6     4      2
;!                              _getAD
;! ---------------------------------------------------------------------------------
;! (2) _getAD                                                2     1      1     192
;!                                              6 COMMON     1     0      1
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Mcu_Initialization                                   0     0      0       0
;!                            _ADC_Set
;!                             _IO_Set
;!                           _TMR0_Set
;! ---------------------------------------------------------------------------------
;! (2) _TMR0_Set                                             1     1      0       0
;!                                              6 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _IO_Set                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Set                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _MainT_Initialization                                 1     1      0       0
;!                                              6 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _MainT                                                2     2      0    1257
;!                                              9 BANK0      2     2      0
;!                             _setBuz
;!                   _setLights_Switch
;!                  _setLights_Trigger
;! ---------------------------------------------------------------------------------
;! (2) _setBuz                                               4     2      2     551
;!                                              6 COMMON     1     1      0
;!                                              6 BANK0      3     1      2
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4     266
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _Lights_Main                                          0     0      0     567
;!                     _Lights_Control
;!                     _setLights_Main
;! ---------------------------------------------------------------------------------
;! (2) _setLights_Main                                       2     2      0     443
;!                                              4 BANK0      2     2      0
;!                  _LightsPointSelect
;!                          _setLights
;! ---------------------------------------------------------------------------------
;! (3) _setLights                                            3     2      1     285
;!                                              1 BANK0      3     2      1
;!                  _LightsPointSelect
;! ---------------------------------------------------------------------------------
;! (2) _Lights_Control                                       3     3      0     124
;!                                              1 BANK0      3     3      0
;!                  _LightsPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _Lights_Initialization                                0     0      0      62
;!           _setLights_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setLights_Initialization                             1     1      0      62
;!                                              1 BANK0      1     1      0
;!                  _LightsPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _LED_Main                                             0     0      0     217
;!                        _setLED_Main
;! ---------------------------------------------------------------------------------
;! (2) _setLED_Main                                          3     3      0     217
;!                                              1 BANK0      3     3      0
;!                     _LedPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _LED_Initialization                                   0     0      0     877
;!              _setLED_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setLED_Initialization                                1     1      0     877
;!                                              3 BANK0      1     1      0
;!                     _LedPointSelect
;!                             _setLED
;! ---------------------------------------------------------------------------------
;! (1) _CDS_Main                                             3     3      0     706
;!                                              3 BANK0      3     3      0
;!                   _setLights_Switch
;!                  _setLights_Trigger
;! ---------------------------------------------------------------------------------
;! (2) _setLights_Trigger                                    2     1      1     353
;!                                              1 BANK0      2     1      1
;!                  _LightsPointSelect
;! ---------------------------------------------------------------------------------
;! (2) _setLights_Switch                                     2     1      1     353
;!                                              1 BANK0      2     1      1
;!                  _LightsPointSelect
;! ---------------------------------------------------------------------------------
;! (3) _LightsPointSelect                                    2     2      0      31
;!                                              6 COMMON     1     1      0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _CDS_Initialization                                   1     1      0     722
;!                                              3 BANK0      1     1      0
;!                             _setLED
;! ---------------------------------------------------------------------------------
;! (3) _setLED                                               2     1      1     722
;!                                              1 BANK0      2     1      1
;!                     _LedPointSelect
;! ---------------------------------------------------------------------------------
;! (3) _LedPointSelect                                       2     2      0      93
;!                                              6 COMMON     1     1      0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Buzzer_Main                                          4     4      0       0
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _Buzzer_Initialization                                1     1      0       0
;!                                              6 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  4     4      0       0
;!                                              2 COMMON     4     4      0
;!                           _TMR0_ISR
;! ---------------------------------------------------------------------------------
;! (6) _TMR0_ISR                                             2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Buzzer_Initialization
;!   _Buzzer_Main
;!   _CDS_Initialization
;!     _setLED
;!       _LedPointSelect
;!   _CDS_Main
;!     _setLights_Switch
;!       _LightsPointSelect
;!     _setLights_Trigger
;!       _LightsPointSelect
;!   _LED_Initialization
;!     _setLED_Initialization
;!       _LedPointSelect
;!       _setLED
;!         _LedPointSelect
;!   _LED_Main
;!     _setLED_Main
;!       _LedPointSelect
;!   _Lights_Initialization
;!     _setLights_Initialization
;!       _LightsPointSelect
;!   _Lights_Main
;!     _Lights_Control
;!       _LightsPointSelect
;!     _setLights_Main
;!       _LightsPointSelect
;!       _setLights
;!         _LightsPointSelect
;!   _MainT
;!     _setBuz
;!       ___wmul
;!     _setLights_Switch
;!       _LightsPointSelect
;!     _setLights_Trigger
;!       _LightsPointSelect
;!   _MainT_Initialization
;!   _Mcu_Initialization
;!     _ADC_Set
;!     _IO_Set
;!     _TMR0_Set
;!   _getCDS_AD
;!     _getAD
;!
;! _ISR (ROOT)
;!   _TMR0_ISR
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       8       1       57.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      58       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      D      50       5      100.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK2            10      0       0       8        0.0%
;!BANK2               10      0       0       9        0.0%
;!DATA                 0      0      58      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 7 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Buzzer_Initialization
;;		_Buzzer_Main
;;		_CDS_Initialization
;;		_CDS_Main
;;		_LED_Initialization
;;		_LED_Main
;;		_Lights_Initialization
;;		_Lights_Main
;;		_MainT
;;		_MainT_Initialization
;;		_Mcu_Initialization
;;		_getCDS_AD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	7
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	9
	
l2372:	
;main.c: 9: MainT_Initialization();
	fcall	_MainT_Initialization
	line	10
;main.c: 10: Mcu_Initialization();
	fcall	_Mcu_Initialization
	line	12
	
l2374:	
;main.c: 11: ;;
;main.c: 12: LED_Initialization();
	fcall	_LED_Initialization
	line	13
	
l2376:	
;main.c: 13: Buzzer_Initialization();
	fcall	_Buzzer_Initialization
	line	22
	
l2378:	
;main.c: 15: ;;
;main.c: 16: ;;
;main.c: 17: ;;
;main.c: 18: ;;
;main.c: 19: ;;
;main.c: 21: ;;
;main.c: 22: Lights_Initialization();
	fcall	_Lights_Initialization
	line	23
	
l2380:	
;main.c: 23: CDS_Initialization();
	fcall	_CDS_Initialization
	line	28
	
l2382:	
;main.c: 24: ;;
;main.c: 26: ;;
;main.c: 27: ;;
;main.c: 28: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	goto	l2384
	line	30
;main.c: 30: while(1)
	
l354:	
	line	32
	
l2384:	
;main.c: 31: {
;main.c: 32: if(TMain->PowerON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u2001
	goto	u2000
u2001:
	goto	l2388
u2000:
	line	51
	
l2386:	
;main.c: 33: {
;main.c: 35: ;;
;main.c: 43: ;;
;main.c: 51: getCDS_AD(1,0x09,0x31);
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(getCDS_AD@channel1)
	movlw	(031h)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(getCDS_AD@channel2)
	movlw	(01h)
	fcall	_getCDS_AD
	line	59
;main.c: 55: ;;
;main.c: 59: Buzzer_Main();
	fcall	_Buzzer_Main
	goto	l2388
	line	61
	
l355:	
	line	63
	
l2388:	
;main.c: 61: }
;main.c: 63: if(TMain->T0_Timerout)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	goto	u2011
	goto	u2010
u2011:
	goto	l2384
u2010:
	line	65
	
l2390:	
;main.c: 64: {
;main.c: 65: TMain->T0_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr0
	bcf	indf,1
	line	66
	
l2392:	
;main.c: 66: MainT();
	fcall	_MainT
	line	67
	
l2394:	
;main.c: 67: if(TMain->PowerON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u2021
	goto	u2020
u2021:
	goto	l2384
u2020:
	line	71
	
l2396:	
;main.c: 68: {
;main.c: 69: ;;
;main.c: 71: LED_Main();
	fcall	_LED_Main
	line	78
;main.c: 73: ;;
;main.c: 74: ;;
;main.c: 75: ;;
;main.c: 76: ;;
;main.c: 78: Lights_Main();
	fcall	_Lights_Main
	line	81
;main.c: 79: ;;
;main.c: 80: ;;
;main.c: 81: CDS_Main();
	fcall	_CDS_Main
	goto	l2384
	line	86
;main.c: 82: ;;
;main.c: 84: ;;
;main.c: 85: ;;
	
l357:	
	goto	l2384
	line	87
	
l356:	
	goto	l2384
	line	88
	
l358:	
	line	30
	goto	l2384
	
l359:	
	line	89
	
l360:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_getCDS_AD

;; *************** function _getCDS_AD *****************
;; Defined at:
;;		line 67 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CDS_B1.c"
;; Parameters:    Size  Location     Type
;;  cds             1    wreg     unsigned char 
;;  channel1        1    1[BANK0 ] unsigned char 
;;  channel2        1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  cds             1    0[COMMON] unsigned char 
;;  j               1    6[BANK0 ] unsigned char 
;;  i               1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CDS_B1.c"
	line	67
global __ptext1
__ptext1:	;psect for function _getCDS_AD
psect	text1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CDS_B1.c"
	line	67
	global	__size_of_getCDS_AD
	__size_of_getCDS_AD	equ	__end_of_getCDS_AD-_getCDS_AD
	
_getCDS_AD:	
;incstack = 0
	opt	stack 4
; Regs used in _getCDS_AD: [wreg-fsr0h+status,2+pclath+cstack]
	line	69
	
l2318:	
;CDS_B1.c: 69: char i=0,j=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getCDS_AD@i)
	clrf	(getCDS_AD@j)
	line	71
	
l2320:	
;CDS_B1.c: 71: if(CDS->ADtoGO)
	movf	(_CDS),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,3
	goto	u1951
	goto	u1950
u1951:
	goto	l143
u1950:
	line	73
	
l2322:	
;CDS_B1.c: 72: {
;CDS_B1.c: 73: CDS->ADtoGO=0;
	movf	(_CDS),w
	movwf	fsr0
	bcf	indf,3
	line	74
;CDS_B1.c: 74: CDS->GO=1;
	movf	(_CDS),w
	movwf	fsr0
	bsf	indf,1
	line	75
	
l2324:	
;CDS_B1.c: 75: CDS->ADRES=getAD(channel1,0x70);
	movlw	(070h)
	movwf	(??_getCDS_AD+0)+0
	movf	(??_getCDS_AD+0)+0,w
	movwf	(getAD@adcon1)
	movf	(getCDS_AD@channel1),w
	fcall	_getAD
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getCDS_AD+1)+0
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	(??_getCDS_AD+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	76
	
l2326:	
;CDS_B1.c: 76: CDS->VRAD=CDS->ADRES;
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	movwf	(??_getCDS_AD+0)+0
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	movf	(??_getCDS_AD+0)+0,w
	movwf	indf
	line	77
;CDS_B1.c: 77: CDS->ADRES=getAD(channel2,0x70);
	movlw	(070h)
	movwf	(??_getCDS_AD+0)+0
	movf	(??_getCDS_AD+0)+0,w
	movwf	(getAD@adcon1)
	movf	(getCDS_AD@channel2),w
	fcall	_getAD
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_getCDS_AD+1)+0
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	(??_getCDS_AD+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	78
	
l2328:	
;CDS_B1.c: 78: CDS->SignalAD=CDS->ADRES;
	movf	(_CDS),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	movwf	(??_getCDS_AD+0)+0
	movf	(_CDS),w
	addlw	03h
	movwf	fsr0
	movf	(??_getCDS_AD+0)+0,w
	movwf	indf
	goto	l143
	line	79
	
l142:	
	line	80
	
l143:	
	return
	opt stack 0
GLOBAL	__end_of_getCDS_AD
	__end_of_getCDS_AD:
	signat	_getCDS_AD,12408
	global	_getAD

;; *************** function _getAD *****************
;; Defined at:
;;		line 379 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;  adcon0          1    wreg     unsigned char 
;;  adcon1          1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adcon0          1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       1       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getCDS_AD
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	379
global __ptext2
__ptext2:	;psect for function _getAD
psect	text2
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	379
	global	__size_of_getAD
	__size_of_getAD	equ	__end_of_getAD-_getAD
	
_getAD:	
;incstack = 0
	opt	stack 4
; Regs used in _getAD: [wreg]
;getAD@adcon0 stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getAD@adcon0)
	line	381
	
l2188:	
;MCU_B1.c: 381: ADCON0=adcon0;
	movf	(getAD@adcon0),w
	movwf	(31)	;volatile
	line	382
;MCU_B1.c: 382: ADCON1=adcon1;
	movf	(getAD@adcon1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	383
	
l2190:	
;MCU_B1.c: 383: GO_nDONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	384
;MCU_B1.c: 384: while(GO_nDONE);
	goto	l772
	
l773:	
	
l772:	
	btfsc	(249/8),(249)&7	;volatile
	goto	u1711
	goto	u1710
u1711:
	goto	l772
u1710:
	goto	l2192
	
l774:	
	line	385
	
l2192:	
;MCU_B1.c: 385: return ADRES;
	movf	(30),w	;volatile
	goto	l775
	
l2194:	
	line	386
	
l775:	
	return
	opt stack 0
GLOBAL	__end_of_getAD
	__end_of_getAD:
	signat	_getAD,8313
	global	_Mcu_Initialization

;; *************** function _Mcu_Initialization *****************
;; Defined at:
;;		line 24 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Set
;;		_IO_Set
;;		_TMR0_Set
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	24
global __ptext3
__ptext3:	;psect for function _Mcu_Initialization
psect	text3
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	24
	global	__size_of_Mcu_Initialization
	__size_of_Mcu_Initialization	equ	__end_of_Mcu_Initialization-_Mcu_Initialization
	
_Mcu_Initialization:	
;incstack = 0
	opt	stack 4
; Regs used in _Mcu_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	27
	
l1946:	
;MCU_B1.c: 27: OSCCON=0x3c; ;;
	movlw	(03Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(144)^080h	;volatile
	line	29
	
l1948:	
;MCU_B1.c: 29: IO_Set();
	fcall	_IO_Set
	line	31
	
l1950:	
;MCU_B1.c: 31: TMR0_Set();
	fcall	_TMR0_Set
	line	35
	
l1952:	
;MCU_B1.c: 33: ;;
;MCU_B1.c: 35: ADC_Set();
	fcall	_ADC_Set
	line	48
	
l748:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initialization
	__end_of_Mcu_Initialization:
	signat	_Mcu_Initialization,88
	global	_TMR0_Set

;; *************** function _TMR0_Set *****************
;; Defined at:
;;		line 114 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	114
global __ptext4
__ptext4:	;psect for function _TMR0_Set
psect	text4
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	114
	global	__size_of_TMR0_Set
	__size_of_TMR0_Set	equ	__end_of_TMR0_Set-_TMR0_Set
	
_TMR0_Set:	
;incstack = 0
	opt	stack 4
; Regs used in _TMR0_Set: [wreg+status,2]
	line	116
	
l1834:	
;MCU_B1.c: 116: Timer0=&VarTimer0;
	movlw	(_VarTimer0)&0ffh
	movwf	(??_TMR0_Set+0)+0
	movf	(??_TMR0_Set+0)+0,w
	movwf	(_Timer0)
	line	117
	
l1836:	
;MCU_B1.c: 117: OPTION_REG=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	118
	
l1838:	
;MCU_B1.c: 118: TMR0=(256-90);
	movlw	(0A6h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	119
	
l1840:	
;MCU_B1.c: 119: TMR0IE=1;
	bsf	(93/8),(93)&7	;volatile
	line	120
	
l1842:	
;MCU_B1.c: 120: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	121
	
l757:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_Set
	__end_of_TMR0_Set:
	signat	_TMR0_Set,88
	global	_IO_Set

;; *************** function _IO_Set *****************
;; Defined at:
;;		line 50 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	50
global __ptext5
__ptext5:	;psect for function _IO_Set
psect	text5
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	50
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
;incstack = 0
	opt	stack 4
; Regs used in _IO_Set: [wreg+status,2]
	line	53
	
l1820:	
;MCU_B1.c: 53: TRISA=0b00101111;;
	movlw	(02Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	54
;MCU_B1.c: 54: TRISB=0b00000001;;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	55
	
l1822:	
;MCU_B1.c: 55: TRISC=0b00000000;;
	clrf	(135)^080h	;volatile
	line	56
	
l1824:	
;MCU_B1.c: 56: ANSELA=0b00000111;;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(389)^0180h	;volatile
	line	57
	
l1826:	
;MCU_B1.c: 57: ANSELB=0b00000001;;
	movlw	(01h)
	movwf	(390)^0180h	;volatile
	line	58
	
l1828:	
;MCU_B1.c: 58: PORTA=0b10101111;;
	movlw	(0AFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	59
	
l1830:	
;MCU_B1.c: 59: PORTB=0b00000001;;
	movlw	(01h)
	movwf	(6)	;volatile
	line	60
	
l1832:	
;MCU_B1.c: 60: PORTC=0b00000000;;
	clrf	(7)	;volatile
	line	92
	
l751:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
	signat	_IO_Set,88
	global	_ADC_Set

;; *************** function _ADC_Set *****************
;; Defined at:
;;		line 373 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	373
global __ptext6
__ptext6:	;psect for function _ADC_Set
psect	text6
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	373
	global	__size_of_ADC_Set
	__size_of_ADC_Set	equ	__end_of_ADC_Set-_ADC_Set
	
_ADC_Set:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Set: [wreg]
	line	375
	
l1844:	
;MCU_B1.c: 375: ADCON1=0x72;
	movlw	(072h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	376
;MCU_B1.c: 376: FVRCON=0xc1;
	movlw	(0C1h)
	movwf	(157)^080h	;volatile
	line	377
	
l769:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Set
	__end_of_ADC_Set:
	signat	_ADC_Set,88
	global	_MainT_Initialization

;; *************** function _MainT_Initialization *****************
;; Defined at:
;;		line 92 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	92
global __ptext7
__ptext7:	;psect for function _MainT_Initialization
psect	text7
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	92
	global	__size_of_MainT_Initialization
	__size_of_MainT_Initialization	equ	__end_of_MainT_Initialization-_MainT_Initialization
	
_MainT_Initialization:	
;incstack = 0
	opt	stack 5
; Regs used in _MainT_Initialization: [wreg]
	line	99
	
l1944:	
;main.c: 99: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_TMain)
	line	102
	
l363:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initialization
	__end_of_MainT_Initialization:
	signat	_MainT_Initialization,88
	global	_MainT

;; *************** function _MainT *****************
;; Defined at:
;;		line 104 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setBuz
;;		_setLights_Switch
;;		_setLights_Trigger
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	104
global __ptext8
__ptext8:	;psect for function _MainT
psect	text8
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	104
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
;incstack = 0
	opt	stack 3
; Regs used in _MainT: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	107
	
l2336:	
;main.c: 107: if(!TMain->PowerON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfsc	indf,0
	goto	u1961
	goto	u1960
u1961:
	goto	l2350
u1960:
	line	109
	
l2338:	
;main.c: 108: {
;main.c: 109: TMain->PowerCount++;
	incf	(_TMain),w
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	110
	
l2340:	
;main.c: 110: if(TMain->PowerCount == 150)
	incf	(_TMain),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_MainT+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_MainT+0)+0+1
	movlw	096h
	xorwf	0+(??_MainT+0)+0,w
	iorwf	1+(??_MainT+0)+0,w
	skipz
	goto	u1971
	goto	u1970
u1971:
	goto	l372
u1970:
	line	112
	
l2342:	
;main.c: 111: {
;main.c: 112: TMain->PowerCount=0;
	incf	(_TMain),w
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	113
	
l2344:	
;main.c: 113: TMain->PowerON=1;
	movf	(_TMain),w
	movwf	fsr0
	bsf	indf,0
	line	126
	
l2346:	
;main.c: 116: ;;
;main.c: 126: setBuz(3,50);
	movlw	low(032h)
	movwf	(setBuz@time)
	movlw	high(032h)
	movwf	((setBuz@time))+1
	movlw	(03h)
	fcall	_setBuz
	line	127
	
l2348:	
;main.c: 127: TMain->SelfTest=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TMain),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	goto	l372
	line	136
;main.c: 129: ;;
	
l367:	
	line	137
;main.c: 136: }
;main.c: 137: }
	goto	l372
	line	138
	
l366:	
	line	147
	
l2350:	
;main.c: 138: else
;main.c: 139: {
;main.c: 147: TMain->Count1++;
	movf	(_TMain),w
	addlw	06h
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	148
	
l2352:	
;main.c: 148: if(TMain->Count1 == 100)
	movf	(_TMain),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	movwf	(??_MainT+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_MainT+0)+0+1
	movlw	064h
	xorwf	0+(??_MainT+0)+0,w
	iorwf	1+(??_MainT+0)+0,w
	skipz
	goto	u1981
	goto	u1980
u1981:
	goto	l372
u1980:
	line	150
	
l2354:	
;main.c: 149: {
;main.c: 150: TMain->Count1=0;
	movf	(_TMain),w
	addlw	06h
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	163
	
l2356:	
;main.c: 163: if(TMain->Flag)
	movf	(_TMain),w
	movwf	fsr0
	btfss	indf,3
	goto	u1991
	goto	u1990
u1991:
	goto	l2364
u1990:
	line	165
	
l2358:	
;main.c: 164: {
;main.c: 165: TMain->Flag=0;
	movf	(_TMain),w
	movwf	fsr0
	bcf	indf,3
	line	167
	
l2360:	
;main.c: 167: setLights_Trigger(1,1);
	clrf	(setLights_Trigger@command)
	incf	(setLights_Trigger@command),f
	movlw	(01h)
	fcall	_setLights_Trigger
	line	168
	
l2362:	
;main.c: 168: setLights_Switch(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setLights_Switch@command)
	incf	(setLights_Switch@command),f
	movlw	(01h)
	fcall	_setLights_Switch
	line	174
;main.c: 174: }
	goto	l372
	line	175
	
l370:	
	line	177
	
l2364:	
;main.c: 175: else
;main.c: 176: {
;main.c: 177: TMain->Flag=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TMain),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,3
	line	179
	
l2366:	
;main.c: 179: setLights_Trigger(1,1);
	clrf	(setLights_Trigger@command)
	incf	(setLights_Trigger@command),f
	movlw	(01h)
	fcall	_setLights_Trigger
	line	180
	
l2368:	
;main.c: 180: setLights_Switch(1,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setLights_Switch@command)
	movlw	(01h)
	fcall	_setLights_Switch
	goto	l372
	line	186
	
l371:	
	goto	l372
	line	187
	
l369:	
	goto	l372
	line	189
	
l368:	
	line	190
	
l372:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
	signat	_MainT,88
	global	_setBuz

;; *************** function _setBuz *****************
;; Defined at:
;;		line 22 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  count           1    wreg     unsigned char 
;;  time            2    6[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  count           1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       1       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       3       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	22
global __ptext9
__ptext9:	;psect for function _setBuz
psect	text9
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	22
	global	__size_of_setBuz
	__size_of_setBuz	equ	__end_of_setBuz-_setBuz
	
_setBuz:	
;incstack = 0
	opt	stack 3
; Regs used in _setBuz: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setBuz@count stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setBuz@count)
	line	24
	
l2162:	
;Buzzer_B1.c: 24: time*=20;
	movlw	low(014h)
	movwf	(___wmul@multiplier)
	movlw	high(014h)
	movwf	((___wmul@multiplier))+1
	movf	(setBuz@time+1),w
	clrf	(___wmul@multiplicand+1)
	addwf	(___wmul@multiplicand+1)
	movf	(setBuz@time),w
	clrf	(___wmul@multiplicand)
	addwf	(___wmul@multiplicand)

	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	clrf	(setBuz@time+1)
	addwf	(setBuz@time+1)
	movf	(0+(?___wmul)),w
	clrf	(setBuz@time)
	addwf	(setBuz@time)

	line	25
	
l2164:	
;Buzzer_B1.c: 25: if(Buz->Enable)
	movf	(_Buz),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u1671
	goto	u1670
u1671:
	goto	l45
u1670:
	line	27
	
l2166:	
;Buzzer_B1.c: 26: {
;Buzzer_B1.c: 27: if(!Buz->GO)
	movf	(_Buz),w
	movwf	fsr0
	btfsc	indf,1
	goto	u1681
	goto	u1680
u1681:
	goto	l2172
u1680:
	line	29
	
l2168:	
;Buzzer_B1.c: 28: {
;Buzzer_B1.c: 29: Buz->GO=1;
	movf	(_Buz),w
	movwf	fsr0
	bsf	indf,1
	line	30
;Buzzer_B1.c: 30: Buz->Count=count;
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movf	(_Buz),w
	addlw	03h
	movwf	fsr0
	movf	(??_setBuz+0)+0,w
	movwf	indf
	line	31
;Buzzer_B1.c: 31: Buz->TimeValue=time;
	movf	(_Buz),w
	addlw	06h
	movwf	fsr0
	movf	(setBuz@time),w
	movwf	indf
	incf	fsr0,f
	movf	(setBuz@time+1),w
	movwf	indf
	line	33
	
l2170:	
;Buzzer_B1.c: 33: RB1=1;
	bsf	(49/8),(49)&7	;volatile
	line	34
;Buzzer_B1.c: 34: }
	goto	l45
	line	35
	
l40:	
	line	37
	
l2172:	
;Buzzer_B1.c: 35: else
;Buzzer_B1.c: 36: {
;Buzzer_B1.c: 37: if(!Buz->BufferStatus1)
	movf	(_Buz),w
	movwf	fsr0
	btfsc	indf,3
	goto	u1691
	goto	u1690
u1691:
	goto	l2176
u1690:
	line	39
	
l2174:	
;Buzzer_B1.c: 38: {
;Buzzer_B1.c: 39: Buz->BufferStatus1=1;
	movf	(_Buz),w
	movwf	fsr0
	bsf	indf,3
	line	40
;Buzzer_B1.c: 40: Buz->CountBuffer1=count;
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movf	(_Buz),w
	addlw	04h
	movwf	fsr0
	movf	(??_setBuz+0)+0,w
	movwf	indf
	line	41
;Buzzer_B1.c: 41: Buz->TimeValueBuffer1=time;
	movf	(_Buz),w
	addlw	08h
	movwf	fsr0
	movf	(setBuz@time),w
	movwf	indf
	incf	fsr0,f
	movf	(setBuz@time+1),w
	movwf	indf
	line	42
;Buzzer_B1.c: 42: }
	goto	l45
	line	43
	
l42:	
	
l2176:	
;Buzzer_B1.c: 43: else if(!Buz->BufferStatus2)
	movf	(_Buz),w
	movwf	fsr0
	btfsc	indf,4
	goto	u1701
	goto	u1700
u1701:
	goto	l45
u1700:
	line	45
	
l2178:	
;Buzzer_B1.c: 44: {
;Buzzer_B1.c: 45: Buz->BufferStatus2=1;
	movf	(_Buz),w
	movwf	fsr0
	bsf	indf,4
	line	46
;Buzzer_B1.c: 46: Buz->CountBuffer2=count;
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movf	(_Buz),w
	addlw	05h
	movwf	fsr0
	movf	(??_setBuz+0)+0,w
	movwf	indf
	line	47
;Buzzer_B1.c: 47: Buz->TimeValueBuffer2=time;
	movf	(_Buz),w
	addlw	0Ah
	movwf	fsr0
	movf	(setBuz@time),w
	movwf	indf
	incf	fsr0,f
	movf	(setBuz@time+1),w
	movwf	indf
	goto	l45
	line	48
	
l44:	
	goto	l45
	line	49
	
l43:	
	goto	l45
	
l41:	
	goto	l45
	line	50
	
l39:	
	line	51
	
l45:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz
	__end_of_setBuz:
	signat	_setBuz,8312
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setBuz
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul16.c"
	line	15
global __ptext10
__ptext10:	;psect for function ___wmul
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2150:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2152
	line	44
	
l778:	
	line	45
	
l2152:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1631
	goto	u1630
u1631:
	goto	l779
u1630:
	line	46
	
l2154:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l779:	
	line	47
	movlw	01h
	
u1645:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u1645
	line	48
	
l2156:	
	movlw	01h
	
u1655:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u1655
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1661
	goto	u1660
u1661:
	goto	l2152
u1660:
	goto	l2158
	
l780:	
	line	52
	
l2158:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l781
	
l2160:	
	line	53
	
l781:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_Lights_Main

;; *************** function _Lights_Main *****************
;; Defined at:
;;		line 52 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Lights_Control
;;		_setLights_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
	line	52
global __ptext11
__ptext11:	;psect for function _Lights_Main
psect	text11
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
	line	52
	global	__size_of_Lights_Main
	__size_of_Lights_Main	equ	__end_of_Lights_Main-_Lights_Main
	
_Lights_Main:	
;incstack = 0
	opt	stack 2
; Regs used in _Lights_Main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	55
	
l2370:	
;TriacRelay_B1.c: 55: setLights_Main(1);
	movlw	(01h)
	fcall	_setLights_Main
	line	67
;TriacRelay_B1.c: 67: Lights_Control(1);
	movlw	(01h)
	fcall	_Lights_Control
	line	77
	
l621:	
	return
	opt stack 0
GLOBAL	__end_of_Lights_Main
	__end_of_Lights_Main:
	signat	_Lights_Main,88
	global	_setLights_Main

;; *************** function _setLights_Main *****************
;; Defined at:
;;		line 78 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    5[BANK0 ] unsigned char 
;;  clear           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LightsPointSelect
;;		_setLights
;; This function is called by:
;;		_Lights_Main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	78
global __ptext12
__ptext12:	;psect for function _setLights_Main
psect	text12
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
	line	78
	global	__size_of_setLights_Main
	__size_of_setLights_Main	equ	__end_of_setLights_Main-_setLights_Main
	
_setLights_Main:	
;incstack = 0
	opt	stack 2
; Regs used in _setLights_Main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLights_Main@lights stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLights_Main@lights)
	line	80
	
l2230:	
;TriacRelay_B1.c: 80: char clear=1;
	clrf	(setLights_Main@clear)
	incf	(setLights_Main@clear),f
	line	81
	
l2232:	
;TriacRelay_B1.c: 81: LightsPointSelect(lights);
	movf	(setLights_Main@lights),w
	fcall	_LightsPointSelect
	line	109
	
l2234:	
;TriacRelay_B1.c: 109: if(Lights->Trigger)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,5
	goto	u1771
	goto	u1770
u1771:
	goto	l628
u1770:
	line	111
	
l2236:	
;TriacRelay_B1.c: 110: {
;TriacRelay_B1.c: 111: if(clear)
	movf	(setLights_Main@clear),w
	skipz
	goto	u1780
	goto	l628
u1780:
	line	113
	
l2238:	
;TriacRelay_B1.c: 112: {
;TriacRelay_B1.c: 113: if(Lights->Switch)
	movf	(_Lights),w
	movwf	fsr0
	btfss	indf,6
	goto	u1791
	goto	u1790
u1791:
	goto	l2244
u1790:
	line	115
	
l2240:	
;TriacRelay_B1.c: 114: {
;TriacRelay_B1.c: 115: Lights->Trigger=0;
	movf	(_Lights),w
	movwf	fsr0
	bcf	indf,5
	line	116
	
l2242:	
;TriacRelay_B1.c: 116: setLights(lights,1);
	clrf	(setLights@command)
	incf	(setLights@command),f
	movf	(setLights_Main@lights),w
	fcall	_setLights
	line	121
;TriacRelay_B1.c: 121: }
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l628
	line	122
	
l626:	
	line	124
	
l2244:	
;TriacRelay_B1.c: 122: else
;TriacRelay_B1.c: 123: {
;TriacRelay_B1.c: 124: Lights->Trigger=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bcf	indf,5
	line	125
	
l2246:	
;TriacRelay_B1.c: 125: setLights(lights,0);
	clrf	(setLights@command)
	movf	(setLights_Main@lights),w
	fcall	_setLights
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l628
	line	130
	
l627:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l628
	line	131
	
l625:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l628
	line	132
	
l624:	
	line	133
	
l628:	
	return
	opt stack 0
GLOBAL	__end_of_setLights_Main
	__end_of_setLights_Main:
	signat	_setLights_Main,4216
	global	_setLights

;; *************** function _setLights *****************
;; Defined at:
;;		line 170 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LightsPointSelect
;; This function is called by:
;;		_setLights_Main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	170
global __ptext13
__ptext13:	;psect for function _setLights
psect	text13
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
	line	170
	global	__size_of_setLights
	__size_of_setLights	equ	__end_of_setLights-_setLights
	
_setLights:	
;incstack = 0
	opt	stack 2
; Regs used in _setLights: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLights@lights stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLights@lights)
	line	172
	
l2130:	
;TriacRelay_B1.c: 172: LightsPointSelect(lights);
	movf	(setLights@lights),w
	fcall	_LightsPointSelect
	line	174
	
l2132:	
;TriacRelay_B1.c: 174: Lights->GO=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,1
	line	175
	
l2134:	
;TriacRelay_B1.c: 175: Lights->RelaySet=0;
	movf	(_Lights),w
	addlw	07h
	movwf	fsr0
	bcf	indf,0
	line	176
	
l2136:	
;TriacRelay_B1.c: 176: if(command)
	movf	(setLights@command),w
	skipz
	goto	u1600
	goto	l2144
u1600:
	line	178
	
l2138:	
;TriacRelay_B1.c: 177: {
;TriacRelay_B1.c: 178: Lights->Status=1;
	movf	(_Lights),w
	movwf	fsr0
	bsf	indf,2
	line	179
;TriacRelay_B1.c: 179: Lights->TriacValue=13;
	movlw	(0Dh)
	movwf	(??_setLights+0)+0
	movf	(_Lights),w
	addlw	04h
	movwf	fsr0
	movf	(??_setLights+0)+0,w
	movwf	indf
	line	180
;TriacRelay_B1.c: 180: Lights->RelayValue=10;
	movlw	(0Ah)
	movwf	(??_setLights+0)+0
	movf	(_Lights),w
	addlw	06h
	movwf	fsr0
	movf	(??_setLights+0)+0,w
	movwf	indf
	line	183
	
l2140:	
;TriacRelay_B1.c: 183: if(lights == 1)
	movf	(setLights@lights),w
	xorlw	01h
	skipz
	goto	u1611
	goto	u1610
u1611:
	goto	l656
u1610:
	line	185
	
l2142:	
;TriacRelay_B1.c: 184: {
;TriacRelay_B1.c: 185: RB2=1;
	bsf	(50/8),(50)&7	;volatile
	goto	l656
	line	186
	
l653:	
	line	202
;TriacRelay_B1.c: 186: }
;TriacRelay_B1.c: 202: }
	goto	l656
	line	203
	
l652:	
	line	205
	
l2144:	
;TriacRelay_B1.c: 203: else
;TriacRelay_B1.c: 204: {
;TriacRelay_B1.c: 205: Lights->Status=0;
	movf	(_Lights),w
	movwf	fsr0
	bcf	indf,2
	line	206
;TriacRelay_B1.c: 206: Lights->TriacValue=5;
	movlw	(05h)
	movwf	(??_setLights+0)+0
	movf	(_Lights),w
	addlw	04h
	movwf	fsr0
	movf	(??_setLights+0)+0,w
	movwf	indf
	line	207
;TriacRelay_B1.c: 207: Lights->RelayValue=2;
	movlw	(02h)
	movwf	(??_setLights+0)+0
	movf	(_Lights),w
	addlw	06h
	movwf	fsr0
	movf	(??_setLights+0)+0,w
	movwf	indf
	line	209
	
l2146:	
;TriacRelay_B1.c: 209: if(lights == 1)
	movf	(setLights@lights),w
	xorlw	01h
	skipz
	goto	u1621
	goto	u1620
u1621:
	goto	l656
u1620:
	line	211
	
l2148:	
;TriacRelay_B1.c: 210: {
;TriacRelay_B1.c: 211: RB2=1;
	bsf	(50/8),(50)&7	;volatile
	goto	l656
	line	212
	
l655:	
	goto	l656
	line	228
	
l654:	
	line	238
	
l656:	
	return
	opt stack 0
GLOBAL	__end_of_setLights
	__end_of_setLights:
	signat	_setLights,8312
	global	_Lights_Control

;; *************** function _Lights_Control *****************
;; Defined at:
;;		line 239 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LightsPointSelect
;; This function is called by:
;;		_Lights_Main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	239
global __ptext14
__ptext14:	;psect for function _Lights_Control
psect	text14
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
	line	239
	global	__size_of_Lights_Control
	__size_of_Lights_Control	equ	__end_of_Lights_Control-_Lights_Control
	
_Lights_Control:	
;incstack = 0
	opt	stack 3
; Regs used in _Lights_Control: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lights_Control@lights stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lights_Control@lights)
	line	241
	
l2248:	
;TriacRelay_B1.c: 241: LightsPointSelect(lights);
	movf	(Lights_Control@lights),w
	fcall	_LightsPointSelect
	line	242
	
l2250:	
;TriacRelay_B1.c: 242: if(Lights->GO)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	goto	u1801
	goto	u1800
u1801:
	goto	l665
u1800:
	line	244
	
l2252:	
;TriacRelay_B1.c: 243: {
;TriacRelay_B1.c: 244: Lights->Time++;
	movlw	(01h)
	movwf	(??_Lights_Control+0)+0
	movf	(_Lights),w
	addlw	02h
	movwf	fsr0
	movf	(??_Lights_Control+0)+0,w
	addwf	indf,f
	line	245
	
l2254:	
;TriacRelay_B1.c: 245: if(Lights->Time >= Lights->RelayValue && !Lights->RelaySet)
	movf	(_Lights),w
	addlw	06h
	movwf	fsr
	movf	indf,w
	movwf	(??_Lights_Control+0)+0
	movf	(_Lights),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Lights_Control+1)+0
	movf	(??_Lights_Control+0)+0,w
	subwf	(??_Lights_Control+1)+0,w
	skipc
	goto	u1811
	goto	u1810
u1811:
	goto	l2264
u1810:
	
l2256:	
	movf	(_Lights),w
	addlw	07h
	movwf	fsr0
	btfsc	indf,0
	goto	u1821
	goto	u1820
u1821:
	goto	l2264
u1820:
	line	247
	
l2258:	
;TriacRelay_B1.c: 246: {
;TriacRelay_B1.c: 247: Lights->RelaySet=1;
	movf	(_Lights),w
	addlw	07h
	movwf	fsr0
	bsf	indf,0
	line	249
	
l2260:	
;TriacRelay_B1.c: 249: if(lights == 1)
	movf	(Lights_Control@lights),w
	xorlw	01h
	skipz
	goto	u1831
	goto	u1830
u1831:
	goto	l665
u1830:
	line	251
	
l2262:	
;TriacRelay_B1.c: 250: {
;TriacRelay_B1.c: 251: RA4=Lights->Status?1:0;
	movf	(_Lights),w
	movwf	fsr0
	btfsc	indf,2
	goto	u1841
	goto	u1840
	
u1841:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(44/8),(44)&7	;volatile
	goto	u1854
u1840:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7	;volatile
u1854:
	goto	l665
	line	252
	
l661:	
	line	268
;TriacRelay_B1.c: 252: }
;TriacRelay_B1.c: 268: }
	goto	l665
	line	269
	
l660:	
	
l2264:	
;TriacRelay_B1.c: 269: else if(Lights->Time >= Lights->TriacValue)
	movf	(_Lights),w
	addlw	04h
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_Lights_Control+0)+0
	movf	(_Lights),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Lights_Control+1)+0
	movf	(??_Lights_Control+0)+0,w
	subwf	(??_Lights_Control+1)+0,w
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l665
u1860:
	line	271
	
l2266:	
;TriacRelay_B1.c: 270: {
;TriacRelay_B1.c: 271: Lights->Time=0;
	movf	(_Lights),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	line	272
	
l2268:	
;TriacRelay_B1.c: 272: Lights->GO=0;
	movf	(_Lights),w
	movwf	fsr0
	bcf	indf,1
	line	275
	
l2270:	
;TriacRelay_B1.c: 275: if(lights == 1)
	movf	(Lights_Control@lights),w
	xorlw	01h
	skipz
	goto	u1871
	goto	u1870
u1871:
	goto	l665
u1870:
	line	277
	
l2272:	
;TriacRelay_B1.c: 276: {
;TriacRelay_B1.c: 277: RB2=0;
	bcf	(50/8),(50)&7	;volatile
	goto	l665
	line	278
	
l664:	
	goto	l665
	line	294
	
l663:	
	goto	l665
	line	295
	
l662:	
	goto	l665
	
l659:	
	line	296
	
l665:	
	return
	opt stack 0
GLOBAL	__end_of_Lights_Control
	__end_of_Lights_Control:
	signat	_Lights_Control,4216
	global	_Lights_Initialization

;; *************** function _Lights_Initialization *****************
;; Defined at:
;;		line 32 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setLights_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	32
global __ptext15
__ptext15:	;psect for function _Lights_Initialization
psect	text15
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
	line	32
	global	__size_of_Lights_Initialization
	__size_of_Lights_Initialization	equ	__end_of_Lights_Initialization-_Lights_Initialization
	
_Lights_Initialization:	
;incstack = 0
	opt	stack 3
; Regs used in _Lights_Initialization: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	35
	
l2334:	
;TriacRelay_B1.c: 35: setLights_Initialization(1);
	movlw	(01h)
	fcall	_setLights_Initialization
	line	45
	
l615:	
	return
	opt stack 0
GLOBAL	__end_of_Lights_Initialization
	__end_of_Lights_Initialization:
	signat	_Lights_Initialization,88
	global	_setLights_Initialization

;; *************** function _setLights_Initialization *****************
;; Defined at:
;;		line 46 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LightsPointSelect
;; This function is called by:
;;		_Lights_Initialization
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	46
global __ptext16
__ptext16:	;psect for function _setLights_Initialization
psect	text16
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
	line	46
	global	__size_of_setLights_Initialization
	__size_of_setLights_Initialization	equ	__end_of_setLights_Initialization-_setLights_Initialization
	
_setLights_Initialization:	
;incstack = 0
	opt	stack 3
; Regs used in _setLights_Initialization: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLights_Initialization@lights stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLights_Initialization@lights)
	line	48
	
l2224:	
;TriacRelay_B1.c: 48: LightsPointSelect(lights);
	movf	(setLights_Initialization@lights),w
	fcall	_LightsPointSelect
	line	49
	
l2226:	
;TriacRelay_B1.c: 49: Lights->Open=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,3
	line	50
	
l2228:	
;TriacRelay_B1.c: 50: Lights->Close=1;
	movf	(_Lights),w
	movwf	fsr0
	bsf	indf,4
	line	51
	
l618:	
	return
	opt stack 0
GLOBAL	__end_of_setLights_Initialization
	__end_of_setLights_Initialization:
	signat	_setLights_Initialization,4216
	global	_LED_Main

;; *************** function _LED_Main *****************
;; Defined at:
;;		line 51 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setLED_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	51
global __ptext17
__ptext17:	;psect for function _LED_Main
psect	text17
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	51
	global	__size_of_LED_Main
	__size_of_LED_Main	equ	__end_of_LED_Main-_LED_Main
	
_LED_Main:	
;incstack = 0
	opt	stack 3
; Regs used in _LED_Main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	54
	
l2332:	
;LED_B1.c: 54: setLED_Main(1);
	movlw	(01h)
	fcall	_setLED_Main
	line	57
;LED_B1.c: 57: setLED_Main(2);
	movlw	(02h)
	fcall	_setLED_Main
	line	63
;LED_B1.c: 63: setLED_Main(99);
	movlw	(063h)
	fcall	_setLED_Main
	line	65
	
l253:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Main
	__end_of_LED_Main:
	signat	_LED_Main,88
	global	_setLED_Main

;; *************** function _setLED_Main *****************
;; Defined at:
;;		line 214 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LedPointSelect
;; This function is called by:
;;		_LED_Main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	214
global __ptext18
__ptext18:	;psect for function _setLED_Main
psect	text18
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	214
	global	__size_of_setLED_Main
	__size_of_setLED_Main	equ	__end_of_setLED_Main-_setLED_Main
	
_setLED_Main:	
;incstack = 0
	opt	stack 3
; Regs used in _setLED_Main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLED_Main@led stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLED_Main@led)
	line	216
	
l2202:	
;LED_B1.c: 216: LedPointSelect(led);
	movf	(setLED_Main@led),w
	fcall	_LedPointSelect
	line	217
	
l2204:	
;LED_B1.c: 217: if(LED->GO)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	goto	u1721
	goto	u1720
u1721:
	goto	l291
u1720:
	line	219
	
l2206:	
;LED_B1.c: 218: {
;LED_B1.c: 219: LED->Time++;
	incf	(_LED),w
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	220
	
l2208:	
;LED_B1.c: 220: if(LED->Time >= 500/10)
	incf	(_LED),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_setLED_Main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_setLED_Main+0)+0+1
	movlw	high(032h)
	subwf	1+(??_setLED_Main+0)+0,w
	movlw	low(032h)
	skipnz
	subwf	0+(??_setLED_Main+0)+0,w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l291
u1730:
	line	222
	
l2210:	
;LED_B1.c: 221: {
;LED_B1.c: 222: LED->Time=0;
	incf	(_LED),w
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	224
	
l2212:	
;LED_B1.c: 224: if(led == 1)
	movf	(setLED_Main@led),w
	xorlw	01h
	skipz
	goto	u1741
	goto	u1740
u1741:
	goto	l2216
u1740:
	line	226
	
l2214:	
;LED_B1.c: 225: {
;LED_B1.c: 226: RB4=~RB4;
	movlw	1<<((52)&7)
	xorwf	((52)/8),f
	line	227
;LED_B1.c: 227: }
	goto	l291
	line	230
	
l286:	
	
l2216:	
;LED_B1.c: 230: else if(led == 2)
	movf	(setLED_Main@led),w
	xorlw	02h
	skipz
	goto	u1751
	goto	u1750
u1751:
	goto	l2220
u1750:
	line	232
	
l2218:	
;LED_B1.c: 231: {
;LED_B1.c: 232: RB5=~RB5;
	movlw	1<<((53)&7)
	xorwf	((53)/8),f
	line	233
;LED_B1.c: 233: }
	goto	l291
	line	242
	
l288:	
	
l2220:	
;LED_B1.c: 242: else if(led == 99)
	movf	(setLED_Main@led),w
	xorlw	063h
	skipz
	goto	u1761
	goto	u1760
u1761:
	goto	l291
u1760:
	line	244
	
l2222:	
;LED_B1.c: 243: {
;LED_B1.c: 244: RB3=~RB3;
	movlw	1<<((51)&7)
	xorwf	((51)/8),f
	goto	l291
	line	245
	
l290:	
	goto	l291
	line	247
	
l289:	
	goto	l291
	
l287:	
	goto	l291
	
l285:	
	goto	l291
	line	248
	
l284:	
	line	249
	
l291:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Main
	__end_of_setLED_Main:
	signat	_setLED_Main,4216
	global	_LED_Initialization

;; *************** function _LED_Initialization *****************
;; Defined at:
;;		line 35 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setLED_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	35
global __ptext19
__ptext19:	;psect for function _LED_Initialization
psect	text19
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	35
	global	__size_of_LED_Initialization
	__size_of_LED_Initialization	equ	__end_of_LED_Initialization-_LED_Initialization
	
_LED_Initialization:	
;incstack = 0
	opt	stack 2
; Regs used in _LED_Initialization: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	38
	
l2330:	
;LED_B1.c: 38: setLED_Initialization(1);
	movlw	(01h)
	fcall	_setLED_Initialization
	line	41
;LED_B1.c: 41: setLED_Initialization(2);
	movlw	(02h)
	fcall	_setLED_Initialization
	line	47
;LED_B1.c: 47: setLED_Initialization(99);
	movlw	(063h)
	fcall	_setLED_Initialization
	line	49
	
l250:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Initialization
	__end_of_LED_Initialization:
	signat	_LED_Initialization,88
	global	_setLED_Initialization

;; *************** function _setLED_Initialization *****************
;; Defined at:
;;		line 67 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LedPointSelect
;;		_setLED
;; This function is called by:
;;		_LED_Initialization
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	67
global __ptext20
__ptext20:	;psect for function _setLED_Initialization
psect	text20
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	67
	global	__size_of_setLED_Initialization
	__size_of_setLED_Initialization	equ	__end_of_setLED_Initialization-_setLED_Initialization
	
_setLED_Initialization:	
;incstack = 0
	opt	stack 2
; Regs used in _setLED_Initialization: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLED_Initialization@led stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLED_Initialization@led)
	line	69
	
l2196:	
;LED_B1.c: 69: LedPointSelect(led);
	movf	(setLED_Initialization@led),w
	fcall	_LedPointSelect
	line	70
	
l2198:	
;LED_B1.c: 70: LED->Enable=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	line	71
	
l2200:	
;LED_B1.c: 71: setLED(led,0);
	clrf	(setLED@command)
	movf	(setLED_Initialization@led),w
	fcall	_setLED
	line	72
	
l256:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Initialization
	__end_of_setLED_Initialization:
	signat	_setLED_Initialization,4216
	global	_CDS_Main

;; *************** function _CDS_Main *****************
;; Defined at:
;;		line 24 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CDS_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setLights_Switch
;;		_setLights_Trigger
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CDS_B1.c"
	line	24
global __ptext21
__ptext21:	;psect for function _CDS_Main
psect	text21
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CDS_B1.c"
	line	24
	global	__size_of_CDS_Main
	__size_of_CDS_Main	equ	__end_of_CDS_Main-_CDS_Main
	
_CDS_Main:	
;incstack = 0
	opt	stack 3
; Regs used in _CDS_Main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	27
	
l2282:	
;CDS_B1.c: 27: if(CDS->Enable)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CDS),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u1881
	goto	u1880
u1881:
	goto	l139
u1880:
	line	29
	
l2284:	
;CDS_B1.c: 28: {
;CDS_B1.c: 29: if(!CDS->GO)
	movf	(_CDS),w
	movwf	fsr0
	btfsc	indf,1
	goto	u1891
	goto	u1890
u1891:
	goto	l2296
u1890:
	line	31
	
l2286:	
;CDS_B1.c: 30: {
;CDS_B1.c: 31: if(!CDS->ADtoGO)
	movf	(_CDS),w
	movwf	fsr0
	btfsc	indf,3
	goto	u1901
	goto	u1900
u1901:
	goto	l139
u1900:
	line	33
	
l2288:	
;CDS_B1.c: 32: {
;CDS_B1.c: 33: CDS->Time++;
	movlw	(01h)
	movwf	(??_CDS_Main+0)+0
	incf	(_CDS),w
	movwf	fsr0
	movf	(??_CDS_Main+0)+0,w
	addwf	indf,f
	line	34
	
l2290:	
;CDS_B1.c: 34: if(CDS->Time >= 100)
	incf	(_CDS),w
	movwf	fsr0
	movlw	(064h)
	subwf	indf,w
	skipc
	goto	u1911
	goto	u1910
u1911:
	goto	l139
u1910:
	line	36
	
l2292:	
;CDS_B1.c: 35: {
;CDS_B1.c: 36: CDS->Time=0;
	incf	(_CDS),w
	movwf	fsr0
	clrf	indf
	line	37
	
l2294:	
;CDS_B1.c: 37: CDS->ADtoGO=1;
	movf	(_CDS),w
	movwf	fsr0
	bsf	indf,3
	goto	l139
	line	38
	
l133:	
	goto	l139
	line	39
	
l132:	
	line	40
;CDS_B1.c: 38: }
;CDS_B1.c: 39: }
;CDS_B1.c: 40: }
	goto	l139
	line	41
	
l131:	
	line	43
	
l2296:	
;CDS_B1.c: 41: else
;CDS_B1.c: 42: {
;CDS_B1.c: 43: CDS->GO=0;
	movf	(_CDS),w
	movwf	fsr0
	bcf	indf,1
	line	44
;CDS_B1.c: 44: if(CDS->High)
	movf	(_CDS),w
	movwf	fsr0
	btfss	indf,4
	goto	u1921
	goto	u1920
u1921:
	goto	l2308
u1920:
	line	46
	
l2298:	
;CDS_B1.c: 45: {
;CDS_B1.c: 46: if(CDS->SignalAD >= CDS->VRAD)
	movf	(_CDS),w
	addlw	02h
	movwf	fsr
	movf	indf,w
	movwf	(??_CDS_Main+0)+0
	movf	(_CDS),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_CDS_Main+1)+0
	movf	(??_CDS_Main+0)+0,w
	subwf	(??_CDS_Main+1)+0,w
	skipc
	goto	u1931
	goto	u1930
u1931:
	goto	l139
u1930:
	line	48
	
l2300:	
;CDS_B1.c: 47: {
;CDS_B1.c: 48: CDS->High=0;
	movf	(_CDS),w
	movwf	fsr0
	bcf	indf,4
	line	49
	
l2302:	
;CDS_B1.c: 49: RB3=0;
	bcf	(51/8),(51)&7	;volatile
	line	50
	
l2304:	
;CDS_B1.c: 50: setLights_Trigger(1,1);
	clrf	(setLights_Trigger@command)
	incf	(setLights_Trigger@command),f
	movlw	(01h)
	fcall	_setLights_Trigger
	line	51
	
l2306:	
;CDS_B1.c: 51: setLights_Switch(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setLights_Switch@command)
	incf	(setLights_Switch@command),f
	movlw	(01h)
	fcall	_setLights_Switch
	goto	l139
	line	52
	
l136:	
	line	53
;CDS_B1.c: 52: }
;CDS_B1.c: 53: }
	goto	l139
	line	54
	
l135:	
	line	56
	
l2308:	
;CDS_B1.c: 54: else
;CDS_B1.c: 55: {
;CDS_B1.c: 56: if(CDS->SignalAD <= (CDS->VRAD-100))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CDS),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	low(-100)
	movwf	(??_CDS_Main+0)+0
	movlw	high(-100)
	skipnc
	movlw	(high(-100)+1)&0ffh
	movwf	((??_CDS_Main+0)+0)+1
	movf	(_CDS),w
	addlw	03h
	movwf	fsr0
	movf	1+(??_CDS_Main+0)+0,w
	xorlw	80h
	movwf	(??_CDS_Main+2)+0
	movlw	80h
	subwf	(??_CDS_Main+2)+0,w
	skipz
	goto	u1945
	movf	indf,w
	subwf	0+(??_CDS_Main+0)+0,w
u1945:

	skipc
	goto	u1941
	goto	u1940
u1941:
	goto	l139
u1940:
	line	58
	
l2310:	
;CDS_B1.c: 57: {
;CDS_B1.c: 58: CDS->High=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CDS),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,4
	line	59
	
l2312:	
;CDS_B1.c: 59: RB3=1;
	bsf	(51/8),(51)&7	;volatile
	line	60
	
l2314:	
;CDS_B1.c: 60: setLights_Trigger(1,1);
	clrf	(setLights_Trigger@command)
	incf	(setLights_Trigger@command),f
	movlw	(01h)
	fcall	_setLights_Trigger
	line	61
	
l2316:	
;CDS_B1.c: 61: setLights_Switch(1,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setLights_Switch@command)
	movlw	(01h)
	fcall	_setLights_Switch
	goto	l139
	line	62
	
l138:	
	goto	l139
	line	63
	
l137:	
	goto	l139
	line	64
	
l134:	
	goto	l139
	line	65
	
l130:	
	line	66
	
l139:	
	return
	opt stack 0
GLOBAL	__end_of_CDS_Main
	__end_of_CDS_Main:
	signat	_CDS_Main,88
	global	_setLights_Trigger

;; *************** function _setLights_Trigger *****************
;; Defined at:
;;		line 139 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LightsPointSelect
;; This function is called by:
;;		_CDS_Main
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
	line	139
global __ptext22
__ptext22:	;psect for function _setLights_Trigger
psect	text22
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
	line	139
	global	__size_of_setLights_Trigger
	__size_of_setLights_Trigger	equ	__end_of_setLights_Trigger-_setLights_Trigger
	
_setLights_Trigger:	
;incstack = 0
	opt	stack 3
; Regs used in _setLights_Trigger: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLights_Trigger@lights stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLights_Trigger@lights)
	line	141
	
l2180:	
;TriacRelay_B1.c: 141: LightsPointSelect(lights);
	movf	(setLights_Trigger@lights),w
	fcall	_LightsPointSelect
	line	142
	
l2182:	
;TriacRelay_B1.c: 142: Lights->Trigger=command;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	movf	(setLights_Trigger@command),w
	bcf	status, 7	;select IRP bank0
	bcf	indf,5
	skipz
	bsf	indf,5
	line	143
	
l634:	
	return
	opt stack 0
GLOBAL	__end_of_setLights_Trigger
	__end_of_setLights_Trigger:
	signat	_setLights_Trigger,8312
	global	_setLights_Switch

;; *************** function _setLights_Switch *****************
;; Defined at:
;;		line 144 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LightsPointSelect
;; This function is called by:
;;		_CDS_Main
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	line	144
global __ptext23
__ptext23:	;psect for function _setLights_Switch
psect	text23
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
	line	144
	global	__size_of_setLights_Switch
	__size_of_setLights_Switch	equ	__end_of_setLights_Switch-_setLights_Switch
	
_setLights_Switch:	
;incstack = 0
	opt	stack 3
; Regs used in _setLights_Switch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLights_Switch@lights stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLights_Switch@lights)
	line	146
	
l2184:	
;TriacRelay_B1.c: 146: LightsPointSelect(lights);
	movf	(setLights_Switch@lights),w
	fcall	_LightsPointSelect
	line	147
	
l2186:	
;TriacRelay_B1.c: 147: Lights->Switch=command;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Lights),w
	movwf	fsr0
	movf	(setLights_Switch@command),w
	bcf	status, 7	;select IRP bank0
	bcf	indf,6
	skipz
	bsf	indf,6
	line	148
	
l637:	
	return
	opt stack 0
GLOBAL	__end_of_setLights_Switch
	__end_of_setLights_Switch:
	signat	_setLights_Switch,8312
	global	_LightsPointSelect

;; *************** function _LightsPointSelect *****************
;; Defined at:
;;		line 9 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       1       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setLights_Initialization
;;		_setLights_Main
;;		_setLights_Trigger
;;		_setLights_Switch
;;		_setLights
;;		_Lights_Control
;;		_setLights_Clear
;;		_setLights_Open
;;		_getLights_Open
;;		_setLights_Close
;;		_getLights_Close
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	9
global __ptext24
__ptext24:	;psect for function _LightsPointSelect
psect	text24
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\TriacRelay_B1.c"
	line	9
	global	__size_of_LightsPointSelect
	__size_of_LightsPointSelect	equ	__end_of_LightsPointSelect-_LightsPointSelect
	
_LightsPointSelect:	
;incstack = 0
	opt	stack 3
; Regs used in _LightsPointSelect: [wreg]
;LightsPointSelect@lights stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LightsPointSelect@lights)
	line	12
	
l2074:	
;TriacRelay_B1.c: 12: if(lights == 1)
	movf	(LightsPointSelect@lights),w
	xorlw	01h
	skipz
	goto	u1461
	goto	u1460
u1461:
	goto	l612
u1460:
	line	14
	
l2076:	
;TriacRelay_B1.c: 13: {
;TriacRelay_B1.c: 14: Lights=&Lights1;
	movlw	(_Lights1)&0ffh
	movwf	(??_LightsPointSelect+0)+0
	movf	(??_LightsPointSelect+0)+0,w
	movwf	(_Lights)
	goto	l612
	line	15
	
l611:	
	line	31
	
l612:	
	return
	opt stack 0
GLOBAL	__end_of_LightsPointSelect
	__end_of_LightsPointSelect:
	signat	_LightsPointSelect,4216
	global	_CDS_Initialization

;; *************** function _CDS_Initialization *****************
;; Defined at:
;;		line 17 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CDS_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setLED
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CDS_B1.c"
	line	17
global __ptext25
__ptext25:	;psect for function _CDS_Initialization
psect	text25
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CDS_B1.c"
	line	17
	global	__size_of_CDS_Initialization
	__size_of_CDS_Initialization	equ	__end_of_CDS_Initialization-_CDS_Initialization
	
_CDS_Initialization:	
;incstack = 0
	opt	stack 3
; Regs used in _CDS_Initialization: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	19
	
l2274:	
;CDS_B1.c: 19: CDS=&_CDS1;
	movlw	(__CDS1)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_CDS_Initialization+0)+0
	movf	(??_CDS_Initialization+0)+0,w
	movwf	(_CDS)
	line	20
	
l2276:	
;CDS_B1.c: 20: CDS->Enable=1;
	movf	(_CDS),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	line	21
	
l2278:	
;CDS_B1.c: 21: setLED(1,1);
	clrf	(setLED@command)
	incf	(setLED@command),f
	movlw	(01h)
	fcall	_setLED
	line	22
	
l2280:	
;CDS_B1.c: 22: setLED(2,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setLED@command)
	movlw	(02h)
	fcall	_setLED
	line	23
	
l127:	
	return
	opt stack 0
GLOBAL	__end_of_CDS_Initialization
	__end_of_CDS_Initialization:
	signat	_CDS_Initialization,88
	global	_setLED

;; *************** function _setLED *****************
;; Defined at:
;;		line 74 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;;  command         1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LedPointSelect
;; This function is called by:
;;		_CDS_Initialization
;;		_setLED_Initialization
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	74
global __ptext26
__ptext26:	;psect for function _setLED
psect	text26
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	74
	global	__size_of_setLED
	__size_of_setLED	equ	__end_of_setLED-_setLED
	
_setLED:	
;incstack = 0
	opt	stack 2
; Regs used in _setLED: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setLED@led stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setLED@led)
	line	76
	
l2078:	
;LED_B1.c: 76: LedPointSelect(led);
	movf	(setLED@led),w
	fcall	_LedPointSelect
	line	77
	
l2080:	
;LED_B1.c: 77: if(command == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setLED@command),f
	skipz
	goto	u1471
	goto	u1470
u1471:
	goto	l2094
u1470:
	line	80
	
l2082:	
;LED_B1.c: 78: {
;LED_B1.c: 80: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h
	skipz
	goto	u1481
	goto	u1480
u1481:
	goto	l2086
u1480:
	line	85
	
l2084:	
;LED_B1.c: 81: {
;LED_B1.c: 85: RB4=1;
	bsf	(52/8),(52)&7	;volatile
	line	87
;LED_B1.c: 87: }
	goto	l281
	line	90
	
l260:	
	
l2086:	
;LED_B1.c: 90: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h
	skipz
	goto	u1491
	goto	u1490
u1491:
	goto	l2090
u1490:
	line	95
	
l2088:	
;LED_B1.c: 91: {
;LED_B1.c: 95: RB5=1;
	bsf	(53/8),(53)&7	;volatile
	line	97
;LED_B1.c: 97: }
	goto	l281
	line	110
	
l262:	
	
l2090:	
;LED_B1.c: 110: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h
	skipz
	goto	u1501
	goto	u1500
u1501:
	goto	l281
u1500:
	line	115
	
l2092:	
;LED_B1.c: 111: {
;LED_B1.c: 115: RB3=1;
	bsf	(51/8),(51)&7	;volatile
	goto	l281
	line	117
	
l264:	
	goto	l281
	line	119
	
l263:	
	goto	l281
	
l261:	
;LED_B1.c: 117: }
;LED_B1.c: 119: }
	goto	l281
	line	120
	
l259:	
	
l2094:	
;LED_B1.c: 120: else if(command == 1)
	movf	(setLED@command),w
	xorlw	01h
	skipz
	goto	u1511
	goto	u1510
u1511:
	goto	l2108
u1510:
	line	123
	
l2096:	
;LED_B1.c: 121: {
;LED_B1.c: 123: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h
	skipz
	goto	u1521
	goto	u1520
u1521:
	goto	l2100
u1520:
	line	128
	
l2098:	
;LED_B1.c: 124: {
;LED_B1.c: 128: RB4=0;
	bcf	(52/8),(52)&7	;volatile
	line	130
;LED_B1.c: 130: }
	goto	l281
	line	133
	
l267:	
	
l2100:	
;LED_B1.c: 133: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h
	skipz
	goto	u1531
	goto	u1530
u1531:
	goto	l2104
u1530:
	line	138
	
l2102:	
;LED_B1.c: 134: {
;LED_B1.c: 138: RB5=0;
	bcf	(53/8),(53)&7	;volatile
	line	140
;LED_B1.c: 140: }
	goto	l281
	line	153
	
l269:	
	
l2104:	
;LED_B1.c: 153: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h
	skipz
	goto	u1541
	goto	u1540
u1541:
	goto	l281
u1540:
	line	158
	
l2106:	
;LED_B1.c: 154: {
;LED_B1.c: 158: RB3=0;
	bcf	(51/8),(51)&7	;volatile
	goto	l281
	line	160
	
l271:	
	goto	l281
	line	162
	
l270:	
	goto	l281
	
l268:	
;LED_B1.c: 160: }
;LED_B1.c: 162: }
	goto	l281
	line	163
	
l266:	
	
l2108:	
;LED_B1.c: 163: else if(command == 10)
	movf	(setLED@command),w
	xorlw	0Ah
	skipz
	goto	u1551
	goto	u1550
u1551:
	goto	l2126
u1550:
	line	165
	
l2110:	
;LED_B1.c: 164: {
;LED_B1.c: 165: LED->GO=0;
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bcf	indf,1
	line	166
	
l2112:	
;LED_B1.c: 166: LED->Time=0;
	incf	(_LED),w
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	168
	
l2114:	
;LED_B1.c: 168: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h
	skipz
	goto	u1561
	goto	u1560
u1561:
	goto	l2118
u1560:
	line	173
	
l2116:	
;LED_B1.c: 169: {
;LED_B1.c: 173: RB4=1;
	bsf	(52/8),(52)&7	;volatile
	line	175
;LED_B1.c: 175: }
	goto	l281
	line	178
	
l274:	
	
l2118:	
;LED_B1.c: 178: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h
	skipz
	goto	u1571
	goto	u1570
u1571:
	goto	l2122
u1570:
	line	183
	
l2120:	
;LED_B1.c: 179: {
;LED_B1.c: 183: RB5=1;
	bsf	(53/8),(53)&7	;volatile
	line	185
;LED_B1.c: 185: }
	goto	l281
	line	198
	
l276:	
	
l2122:	
;LED_B1.c: 198: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h
	skipz
	goto	u1581
	goto	u1580
u1581:
	goto	l281
u1580:
	line	203
	
l2124:	
;LED_B1.c: 199: {
;LED_B1.c: 203: RB3=1;
	bsf	(51/8),(51)&7	;volatile
	goto	l281
	line	205
	
l278:	
	goto	l281
	line	207
	
l277:	
	goto	l281
	
l275:	
;LED_B1.c: 205: }
;LED_B1.c: 207: }
	goto	l281
	line	208
	
l273:	
	
l2126:	
;LED_B1.c: 208: else if(command == 11)
	movf	(setLED@command),w
	xorlw	0Bh
	skipz
	goto	u1591
	goto	u1590
u1591:
	goto	l281
u1590:
	line	210
	
l2128:	
;LED_B1.c: 209: {
;LED_B1.c: 210: LED->GO=1;
	movf	(_LED),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,1
	goto	l281
	line	211
	
l280:	
	goto	l281
	line	212
	
l279:	
	goto	l281
	
l272:	
	goto	l281
	
l265:	
	
l281:	
	return
	opt stack 0
GLOBAL	__end_of_setLED
	__end_of_setLED:
	signat	_setLED,8312
	global	_LedPointSelect

;; *************** function _LedPointSelect *****************
;; Defined at:
;;		line 7 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       1       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setLED_Initialization
;;		_setLED
;;		_setLED_Main
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	line	7
global __ptext27
__ptext27:	;psect for function _LedPointSelect
psect	text27
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	7
	global	__size_of_LedPointSelect
	__size_of_LedPointSelect	equ	__end_of_LedPointSelect-_LedPointSelect
	
_LedPointSelect:	
;incstack = 0
	opt	stack 3
; Regs used in _LedPointSelect: [wreg]
;LedPointSelect@led stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LedPointSelect@led)
	line	10
	
l2062:	
;LED_B1.c: 10: if(led == 1)
	movf	(LedPointSelect@led),w
	xorlw	01h
	skipz
	goto	u1431
	goto	u1430
u1431:
	goto	l2066
u1430:
	line	12
	
l2064:	
;LED_B1.c: 11: {
;LED_B1.c: 12: LED=&VarLED1;
	movlw	(_VarLED1)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movwf	(_LED)
	line	13
;LED_B1.c: 13: }
	goto	l247
	line	16
	
l242:	
	
l2066:	
;LED_B1.c: 16: else if(led == 2)
	movf	(LedPointSelect@led),w
	xorlw	02h
	skipz
	goto	u1441
	goto	u1440
u1441:
	goto	l2070
u1440:
	line	18
	
l2068:	
;LED_B1.c: 17: {
;LED_B1.c: 18: LED=&VarLED2;
	movlw	(_VarLED2)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movwf	(_LED)
	line	19
;LED_B1.c: 19: }
	goto	l247
	line	28
	
l244:	
	
l2070:	
;LED_B1.c: 28: else if(led == 99)
	movf	(LedPointSelect@led),w
	xorlw	063h
	skipz
	goto	u1451
	goto	u1450
u1451:
	goto	l247
u1450:
	line	30
	
l2072:	
;LED_B1.c: 29: {
;LED_B1.c: 30: LED=&VarErrLED;
	movlw	(_VarErrLED)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movwf	(_LED)
	goto	l247
	line	31
	
l246:	
	goto	l247
	line	33
	
l245:	
	goto	l247
	
l243:	
	
l247:	
	return
	opt stack 0
GLOBAL	__end_of_LedPointSelect
	__end_of_LedPointSelect:
	signat	_LedPointSelect,4216
	global	_Buzzer_Main

;; *************** function _Buzzer_Main *****************
;; Defined at:
;;		line 53 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	53
global __ptext28
__ptext28:	;psect for function _Buzzer_Main
psect	text28
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	53
	global	__size_of_Buzzer_Main
	__size_of_Buzzer_Main	equ	__end_of_Buzzer_Main-_Buzzer_Main
	
_Buzzer_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _Buzzer_Main: [wreg-fsr0h+status,2+status,0]
	line	55
	
l1850:	
;Buzzer_B1.c: 55: Buz->Switch=(RB1)?1:0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Buz),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bcf	indf,5
	btfss	(49/8),(49)&7	;volatile
	goto	u1175
	bsf	indf,5
u1175:

	line	57
;Buzzer_B1.c: 57: if(Buz->GO)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Buz),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	goto	u1181
	goto	u1180
u1181:
	goto	l58
u1180:
	line	60
	
l1852:	
;Buzzer_B1.c: 58: {
;Buzzer_B1.c: 60: if(Buz->Time >= Buz->TimeValue)
	movf	(_Buz),w
	addlw	06h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Buzzer_Main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_Buzzer_Main+0)+0+1
	incf	(_Buz),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_Buzzer_Main+2)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_Buzzer_Main+2)+0+1
	movf	1+(??_Buzzer_Main+0)+0,w
	subwf	1+(??_Buzzer_Main+2)+0,w
	skipz
	goto	u1195
	movf	0+(??_Buzzer_Main+0)+0,w
	subwf	0+(??_Buzzer_Main+2)+0,w
u1195:
	skipc
	goto	u1191
	goto	u1190
u1191:
	goto	l58
u1190:
	line	62
	
l1854:	
;Buzzer_B1.c: 61: {
;Buzzer_B1.c: 62: Buz->Time=0;
	incf	(_Buz),w
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	63
	
l1856:	
;Buzzer_B1.c: 63: if(!Buz->Switch)
	movf	(_Buz),w
	movwf	fsr0
	btfsc	indf,5
	goto	u1201
	goto	u1200
u1201:
	goto	l1878
u1200:
	line	65
	
l1858:	
;Buzzer_B1.c: 64: {
;Buzzer_B1.c: 65: if(Buz->Count == 0)
	movf	(_Buz),w
	addlw	03h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u1211
	goto	u1210
u1211:
	goto	l1874
u1210:
	line	67
	
l1860:	
;Buzzer_B1.c: 66: {
;Buzzer_B1.c: 67: if(Buz->BufferStatus1)
	movf	(_Buz),w
	movwf	fsr0
	btfss	indf,3
	goto	u1221
	goto	u1220
u1221:
	goto	l1866
u1220:
	line	69
	
l1862:	
;Buzzer_B1.c: 68: {
;Buzzer_B1.c: 69: Buz->BufferStatus1=0;
	movf	(_Buz),w
	movwf	fsr0
	bcf	indf,3
	line	70
;Buzzer_B1.c: 70: Buz->Count=Buz->CountBuffer1;
	movf	(_Buz),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Buzzer_Main+0)+0
	movf	(_Buz),w
	addlw	03h
	movwf	fsr0
	movf	(??_Buzzer_Main+0)+0,w
	movwf	indf
	line	71
	
l1864:	
;Buzzer_B1.c: 71: Buz->TimeValue=Buz->TimeValueBuffer1;
	movf	(_Buz),w
	addlw	08h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Buzzer_Main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_Buzzer_Main+0)+0+1
	movf	(_Buz),w
	addlw	06h
	movwf	fsr0
	movf	0+(??_Buzzer_Main+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_Buzzer_Main+0)+0,w
	movwf	indf
	line	72
;Buzzer_B1.c: 72: }
	goto	l58
	line	73
	
l52:	
	
l1866:	
;Buzzer_B1.c: 73: else if(Buz->BufferStatus2)
	movf	(_Buz),w
	movwf	fsr0
	btfss	indf,4
	goto	u1231
	goto	u1230
u1231:
	goto	l1872
u1230:
	line	75
	
l1868:	
;Buzzer_B1.c: 74: {
;Buzzer_B1.c: 75: Buz->BufferStatus2=0;
	movf	(_Buz),w
	movwf	fsr0
	bcf	indf,4
	line	76
;Buzzer_B1.c: 76: Buz->Count=Buz->CountBuffer2;
	movf	(_Buz),w
	addlw	05h
	movwf	fsr0
	movf	indf,w
	movwf	(??_Buzzer_Main+0)+0
	movf	(_Buz),w
	addlw	03h
	movwf	fsr0
	movf	(??_Buzzer_Main+0)+0,w
	movwf	indf
	line	77
	
l1870:	
;Buzzer_B1.c: 77: Buz->TimeValue=Buz->TimeValueBuffer2;
	movf	(_Buz),w
	addlw	0Ah
	movwf	fsr0
	movf	indf,w
	movwf	(??_Buzzer_Main+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_Buzzer_Main+0)+0+1
	movf	(_Buz),w
	addlw	06h
	movwf	fsr0
	movf	0+(??_Buzzer_Main+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_Buzzer_Main+0)+0,w
	movwf	indf
	line	78
;Buzzer_B1.c: 78: }
	goto	l58
	line	79
	
l54:	
	line	81
	
l1872:	
;Buzzer_B1.c: 79: else
;Buzzer_B1.c: 80: {
;Buzzer_B1.c: 81: Buz->GO=0;
	movf	(_Buz),w
	movwf	fsr0
	bcf	indf,1
	goto	l58
	line	82
	
l55:	
	goto	l58
	
l53:	
	line	83
;Buzzer_B1.c: 82: }
;Buzzer_B1.c: 83: }
	goto	l58
	line	84
	
l51:	
	line	86
	
l1874:	
;Buzzer_B1.c: 84: else
;Buzzer_B1.c: 85: {
;Buzzer_B1.c: 86: Buz->Switch=1;
	movf	(_Buz),w
	movwf	fsr0
	bsf	indf,5
	line	88
	
l1876:	
;Buzzer_B1.c: 88: RB1=1;
	bsf	(49/8),(49)&7	;volatile
	goto	l58
	line	89
	
l56:	
	line	90
;Buzzer_B1.c: 89: }
;Buzzer_B1.c: 90: }
	goto	l58
	line	91
	
l50:	
	line	93
	
l1878:	
;Buzzer_B1.c: 91: else
;Buzzer_B1.c: 92: {
;Buzzer_B1.c: 93: Buz->Switch=0;
	movf	(_Buz),w
	movwf	fsr0
	bcf	indf,5
	line	95
	
l1880:	
;Buzzer_B1.c: 95: RB1=0;
	bcf	(49/8),(49)&7	;volatile
	line	97
	
l1882:	
;Buzzer_B1.c: 97: Buz->Count--;
	movf	(_Buz),w
	addlw	03h
	movwf	fsr0
	movlw	low(01h)
	subwf	indf,f
	goto	l58
	line	98
	
l57:	
	goto	l58
	line	99
	
l49:	
	goto	l58
	line	100
	
l48:	
	line	101
	
l58:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Main
	__end_of_Buzzer_Main:
	signat	_Buzzer_Main,88
	global	_Buzzer_Initialization

;; *************** function _Buzzer_Initialization *****************
;; Defined at:
;;		line 10 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	line	10
global __ptext29
__ptext29:	;psect for function _Buzzer_Initialization
psect	text29
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	10
	global	__size_of_Buzzer_Initialization
	__size_of_Buzzer_Initialization	equ	__end_of_Buzzer_Initialization-_Buzzer_Initialization
	
_Buzzer_Initialization:	
;incstack = 0
	opt	stack 5
; Regs used in _Buzzer_Initialization: [wregfsr0]
	line	12
	
l1846:	
;Buzzer_B1.c: 12: Buz=&Buz1;
	movlw	(_Buz1)&0ffh
	movwf	(??_Buzzer_Initialization+0)+0
	movf	(??_Buzzer_Initialization+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_Buz)
	line	13
	
l1848:	
;Buzzer_B1.c: 13: Buz->Enable=1;
	movf	(_Buz),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	line	14
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Initialization
	__end_of_Buzzer_Initialization:
	signat	_Buzzer_Initialization,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 97 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_TMR0_ISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	97
global __ptext30
__ptext30:	;psect for function _ISR
psect	text30
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	97
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text30
	line	101
	
i1l2060:	
;MCU_B1.c: 99: ;;
;MCU_B1.c: 101: TMR0_ISR();
	fcall	_TMR0_ISR
	line	110
	
i1l754:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_TMR0_ISR

;; *************** function _TMR0_ISR *****************
;; Defined at:
;;		line 123 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	line	123
global __ptext31
__ptext31:	;psect for function _TMR0_ISR
psect	text31
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	123
	global	__size_of_TMR0_ISR
	__size_of_TMR0_ISR	equ	__end_of_TMR0_ISR-_TMR0_ISR
	
_TMR0_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _TMR0_ISR: [wreg-fsr0h+status,2+status,0]
	line	125
	
i1l1992:	
;MCU_B1.c: 125: if(TMR0IE && TMR0IF)
	btfss	(93/8),(93)&7	;volatile
	goto	u136_21
	goto	u136_20
u136_21:
	goto	i1l763
u136_20:
	
i1l1994:	
	btfss	(90/8),(90)&7	;volatile
	goto	u137_21
	goto	u137_20
u137_21:
	goto	i1l763
u137_20:
	line	127
	
i1l1996:	
;MCU_B1.c: 126: {
;MCU_B1.c: 127: TMR0=(256-90);
	movlw	(0A6h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	128
	
i1l1998:	
;MCU_B1.c: 128: TMR0IF=0;
	bcf	(90/8),(90)&7	;volatile
	line	146
	
i1l2000:	
;MCU_B1.c: 146: Timer0->Count++;
	incf	(_Timer0),w
	movwf	fsr0
	movlw	01h
	bcf	status, 7	;select IRP bank0
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	line	147
	
i1l2002:	
;MCU_B1.c: 147: if(Timer0->Count == 200)
	incf	(_Timer0),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_TMR0_ISR+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_TMR0_ISR+0)+0+1
	movlw	0C8h
	xorwf	0+(??_TMR0_ISR+0)+0,w
	iorwf	1+(??_TMR0_ISR+0)+0,w
	skipz
	goto	u138_21
	goto	u138_20
u138_21:
	goto	i1l2008
u138_20:
	line	149
	
i1l2004:	
;MCU_B1.c: 148: {
;MCU_B1.c: 149: Timer0->Count=0;
	incf	(_Timer0),w
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	150
	
i1l2006:	
;MCU_B1.c: 150: TMain->T0_Timerout=1;
	movf	(_TMain),w
	movwf	fsr0
	bsf	indf,1
	goto	i1l2008
	line	151
	
i1l761:	
	line	154
	
i1l2008:	
;MCU_B1.c: 151: }
;MCU_B1.c: 154: if(Buz->GO)
	movf	(_Buz),w
	movwf	fsr0
	btfss	indf,1
	goto	u139_21
	goto	u139_20
u139_21:
	goto	i1l763
u139_20:
	line	156
	
i1l2010:	
;MCU_B1.c: 155: {
;MCU_B1.c: 156: Buz->Time++;
	incf	(_Buz),w
	movwf	fsr0
	movlw	01h
	addwf	indf,f
	incf	fsr0,f
	skipnc
	incf	indf,f
	goto	i1l763
	line	157
	
i1l762:	
	goto	i1l763
	line	159
	
i1l760:	
	line	160
	
i1l763:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_ISR
	__end_of_TMR0_ISR:
	signat	_TMR0_ISR,88
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end

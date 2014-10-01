opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 58300"

opt pagewidth 120

	opt lm

	processor	16F1518
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
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f1518.h"
TOSH equ 0FEFh ;# 
	FNCALL	_main,_Buzzer_Initialization
	FNCALL	_main,_Buzzer_Main
	FNCALL	_main,_CC2500_PowerOnInitial
	FNCALL	_main,_DelayOff_Initialization
	FNCALL	_main,_DelayOff_Main
	FNCALL	_main,_DimmerLights_Initialization
	FNCALL	_main,_DimmerLights_Main
	FNCALL	_main,_Flash_Memory_Initialization
	FNCALL	_main,_Flash_Memory_Main
	FNCALL	_main,_LED_Initialization
	FNCALL	_main,_LED_Main
	FNCALL	_main,_Load_Initialization
	FNCALL	_main,_Load_Main
	FNCALL	_main,_MainT
	FNCALL	_main,_MainT_Initialization
	FNCALL	_main,_Mcu_Initialization
	FNCALL	_main,_PowerFault_Initialization
	FNCALL	_main,_PowerFault_Main
	FNCALL	_main,_RF_Initialization
	FNCALL	_main,_RF_Main
	FNCALL	_main,_Switch_Initialization
	FNCALL	_main,_Switch_Main
	FNCALL	_main,_Temp_Initialization
	FNCALL	_main,_Temp_Main
	FNCALL	_main,_WDT_Main
	FNCALL	_main,_getLoad_AD
	FNCALL	_main,_getPowerFault_AD
	FNCALL	_main,_getTemp_AD
	FNCALL	_getTemp_AD,_getAD
	FNCALL	_getPowerFault_AD,_getAD
	FNCALL	_getLoad_AD,_getAD
	FNCALL	_WDT_Main,_WDT_Clearing
	FNCALL	_Temp_Main,_setTemp_Main
	FNCALL	_setTemp_Main,_getLoad_Safe
	FNCALL	_setTemp_Main,_getPF_Safe
	FNCALL	_setTemp_Main,_setOverTemp_Exceptions
	FNCALL	_setOverTemp_Exceptions,_DimmerLights_Exceptions
	FNCALL	_setOverTemp_Exceptions,_setBuz
	FNCALL	_setOverTemp_Exceptions,_setLED
	FNCALL	_setOverTemp_Exceptions,_setRF_Enable
	FNCALL	_setOverTemp_Exceptions,_setSw_Enable
	FNCALL	_Temp_Initialization,_setTemp_Initialization
	FNCALL	_Switch_Main,_setSw_Main
	FNCALL	_setSw_Main,_SwPointSelect
	FNCALL	_setSw_Main,_Sw_DimmerAdjFunc
	FNCALL	_setSw_Main,_Sw_DimmerOffFunc
	FNCALL	_setSw_Main,_Sw_DimmerOnFunc
	FNCALL	_setSw_Main,_setBuz
	FNCALL	_setSw_Main,_setRF_Learn
	FNCALL	_setRF_Learn,_RfPointSelect
	FNCALL	_Sw_DimmerOnFunc,_setBuz
	FNCALL	_Sw_DimmerOnFunc,_setDimmerLights_Switch
	FNCALL	_Sw_DimmerOnFunc,_setDimmerLights_Trigger
	FNCALL	_Sw_DimmerOnFunc,_setRFSW_Status
	FNCALL	_Sw_DimmerOnFunc,_setRF_DimmerLights
	FNCALL	_Sw_DimmerOnFunc,_setTxData
	FNCALL	_Sw_DimmerOffFunc,_setDelayOff_GO
	FNCALL	_Sw_DimmerOffFunc,_setDimmerLights_AdjGo
	FNCALL	_Sw_DimmerOffFunc,_setDimmerLights_Switch
	FNCALL	_Sw_DimmerOffFunc,_setDimmerLights_Trigger
	FNCALL	_Sw_DimmerOffFunc,_setDimmerLights_TriggerAdj
	FNCALL	_Sw_DimmerOffFunc,_setRF_DimmerLights
	FNCALL	_Sw_DimmerOffFunc,_setTxData
	FNCALL	_Sw_DimmerAdjFunc,_setDimmerLights_AdjGo
	FNCALL	_Sw_DimmerAdjFunc,_setDimmerLights_TriggerAdj
	FNCALL	_Sw_DimmerAdjFunc,_setRFSW_Status
	FNCALL	_setDimmerLights_TriggerAdj,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_AdjGo,_DimmerLightsPointSelect
	FNCALL	_Switch_Initialization,_TouchPower
	FNCALL	_Switch_Initialization,_setSw_Initialization
	FNCALL	_setSw_Initialization,_setLED
	FNCALL	_RF_Main,_setRF_Main
	FNCALL	_setRF_Main,_CC2500_RxData
	FNCALL	_setRF_Main,_CC2500_TxData
	FNCALL	_setRF_Main,_CC2500_WriteCommand
	FNCALL	_setRF_Main,_RF_RxDisable
	FNCALL	_setRF_Main,_RfPointSelect
	FNCALL	_setRF_Main,_getRxData
	FNCALL	_setRF_Main,_setINT_GO
	FNCALL	_getRxData,_RfPointSelect
	FNCALL	_getRxData,_setControl_Lights_Table
	FNCALL	_getRxData,_setLog_Code
	FNCALL	_setLog_Code,_RfPointSelect
	FNCALL	_setLog_Code,_setBuz
	FNCALL	_setControl_Lights_Table,_RfPointSelect
	FNCALL	_setControl_Lights_Table,_setBuz
	FNCALL	_setControl_Lights_Table,_setDimmerLights
	FNCALL	_setControl_Lights_Table,_setRFSW_AdjControl
	FNCALL	_setControl_Lights_Table,_setRFSW_Control
	FNCALL	_setControl_Lights_Table,_setRFSW_Status
	FNCALL	_setControl_Lights_Table,_setSw_Status
	FNCALL	_setControl_Lights_Table,_setTxData
	FNCALL	_setRFSW_Control,_RfSWPointSelect
	FNCALL	_setRFSW_Control,_setBuz
	FNCALL	_setRFSW_Control,_setDelayOff_GO
	FNCALL	_setRFSW_Control,_setDimmerLights_Switch
	FNCALL	_setRFSW_Control,_setDimmerLights_Trigger
	FNCALL	_setRFSW_Control,_setRF_DimmerLights
	FNCALL	_setRFSW_Control,_setSw_Status
	FNCALL	_setRFSW_Control,_setTxData
	FNCALL	_setDelayOff_GO,_DelayOffPointSelect
	FNCALL	_setDelayOff_GO,_DelayTimejudge
	FNCALL	_setRFSW_AdjControl,_RfSWPointSelect
	FNCALL	_setRFSW_AdjControl,_setRF_DimmerValue
	FNCALL	_setRFSW_AdjControl,_setTxData
	FNCALL	_setRF_DimmerValue,_setDimmerLights_AdjRF
	FNCALL	_setDimmerLights_AdjRF,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_AdjRF,_getPercentValue
	FNCALL	_getPercentValue,___awtoft
	FNCALL	_getPercentValue,___ftadd
	FNCALL	_getPercentValue,___ftdiv
	FNCALL	_getPercentValue,___ftmul
	FNCALL	_getPercentValue,___fttol
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_RF_RxDisable,_CC2500_WriteCommand
	FNCALL	_RF_RxDisable,_RfPointSelect
	FNCALL	_RF_RxDisable,_setINT_GO
	FNCALL	_CC2500_TxData,_CC2500_WriteByte
	FNCALL	_CC2500_TxData,_CC2500_WriteCommand
	FNCALL	_CC2500_RxData,_CC2500_ReadByte
	FNCALL	_CC2500_RxData,_CC2500_ReadStatus
	FNCALL	_CC2500_RxData,_CC2500_WriteByte
	FNCALL	_CC2500_RxData,_CC2500_WriteCommand
	FNCALL	_CC2500_RxData,_setRF_RxStatus
	FNCALL	_setRF_RxStatus,_RfPointSelect
	FNCALL	_CC2500_ReadStatus,_CC2500_ReadByte
	FNCALL	_CC2500_ReadStatus,_CC2500_WriteByte
	FNCALL	_RF_Initialization,_setRF_Initialization
	FNCALL	_PowerFault_Main,_setPowerFault_Main
	FNCALL	_setPowerFault_Main,_getLoad_Safe
	FNCALL	_setPowerFault_Main,_getTemp_Safe
	FNCALL	_setPowerFault_Main,_setPowerFault_Exceptions
	FNCALL	_setPowerFault_Exceptions,_DimmerLights_Exceptions
	FNCALL	_setPowerFault_Exceptions,_setLED
	FNCALL	_setPowerFault_Exceptions,_setRF_Enable
	FNCALL	_setPowerFault_Exceptions,_setSw_Enable
	FNCALL	_PowerFault_Initialization,_setPowerFault_Initialization
	FNCALL	_Mcu_Initialization,_ADC_Set
	FNCALL	_Mcu_Initialization,_INT_Set
	FNCALL	_Mcu_Initialization,_IOC_Set
	FNCALL	_Mcu_Initialization,_IO_Set
	FNCALL	_Mcu_Initialization,_TMR0_Set
	FNCALL	_Mcu_Initialization,_WDT_Set
	FNCALL	_MainT,_setBuz
	FNCALL	_MainT,_setLoad_Enable
	FNCALL	_MainT,_setRF_Enable
	FNCALL	_MainT,_setSw_Enable
	FNCALL	_MainT,_setTemp_Enable
	FNCALL	_Load_Main,___lwdiv
	FNCALL	_Load_Main,___wmul
	FNCALL	_Load_Main,_getPF_Safe
	FNCALL	_Load_Main,_getTemp_Safe
	FNCALL	_Load_Main,_setDimmerLights_Clear
	FNCALL	_Load_Main,_setLoad_AH_AL_Restore
	FNCALL	_Load_Main,_setLoad_Exceptions
	FNCALL	_setLoad_Exceptions,_DimmerLights_Exceptions
	FNCALL	_setLoad_Exceptions,_setLED
	FNCALL	_setLoad_Exceptions,_setRF_Enable
	FNCALL	_setLoad_Exceptions,_setSw_Enable
	FNCALL	_setSw_Enable,_SwPointSelect
	FNCALL	_setRF_Enable,_RfPointSelect
	FNCALL	_setRF_Enable,_setINT_GO
	FNCALL	_DimmerLights_Exceptions,_getDimmerLights_StatusFlag
	FNCALL	_DimmerLights_Exceptions,_setBuz
	FNCALL	_DimmerLights_Exceptions,_setDimmerLights_ERROR
	FNCALL	_DimmerLights_Exceptions,_setDimmerLights_TriggerERROR
	FNCALL	_setDimmerLights_TriggerERROR,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_ERROR,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_ERROR,_setLED
	FNCALL	_setDimmerLights_ERROR,_setLoad_StatusOff
	FNCALL	_setDimmerLights_ERROR,_setRFSW_Status
	FNCALL	_setDimmerLights_ERROR,_setSw_Status
	FNCALL	_setDimmerLights_Clear,_DimmerLightsPointSelect
	FNCALL	_Load_Initialization,_setLoad_AH_AL_Restore
	FNCALL	_LED_Main,_setLED_Main
	FNCALL	_setLED_Main,_LedPointSelect
	FNCALL	_LED_Initialization,_setLED_Initialization
	FNCALL	_setLED_Initialization,_LedPointSelect
	FNCALL	_setLED_Initialization,_setLED
	FNCALL	_Flash_Memory_Main,_Flash_Memory_Modify
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Erasing
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Read
	FNCALL	_Flash_Memory_Modify,_Flash_Memory_Write
	FNCALL	_Flash_Memory_Erasing,_Flash_Memory_Unlock
	FNCALL	_Flash_Memory_Initialization,_Flash_Memory_Read
	FNCALL	_Flash_Memory_Initialization,_Flash_Memory_Write
	FNCALL	_Flash_Memory_Initialization,_setPercentValue
	FNCALL	_Flash_Memory_Write,_Flash_Memory_Unlock
	FNCALL	_DimmerLights_Main,_DimmerLights_Close
	FNCALL	_DimmerLights_Main,_setDimmerLights_Main
	FNCALL	_setDimmerLights_Main,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_Main,_setBuz
	FNCALL	_setDimmerLights_Main,_setDimmerLights
	FNCALL	_setDimmerLights_Main,_setDimmerLights_Adj
	FNCALL	_setDimmerLights_Adj,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_Adj,_setLoad_StatusOff
	FNCALL	_setDimmerLights_Adj,_setRF_DimmerLights
	FNCALL	_setDimmerLights_Adj,_setTxData
	FNCALL	_setDimmerLights,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights,_setLED
	FNCALL	_setDimmerLights,_setLoad_Count
	FNCALL	_setDimmerLights,_setLoad_StatusOn
	FNCALL	_setLED,_LedPointSelect
	FNCALL	_DimmerLights_Close,_getDimmerLights_StatusFlag
	FNCALL	_DimmerLights_Close,_setLoad_GO
	FNCALL	_DimmerLights_Initialization,_Dimmer_Initialization
	FNCALL	_DimmerLights_Initialization,_setDimmerLights_Initialization
	FNCALL	_setDimmerLights_Initialization,_DimmerLightsPointSelect
	FNCALL	_DelayOff_Main,_DlyOff_Main
	FNCALL	_DlyOff_Main,_DelayOffPointSelect
	FNCALL	_DlyOff_Main,_setBuz
	FNCALL	_DlyOff_Main,_setDimmerLights_Switch
	FNCALL	_DlyOff_Main,_setDimmerLights_Trigger
	FNCALL	_DlyOff_Main,_setRFSW_Status
	FNCALL	_DlyOff_Main,_setRF_DimmerLights
	FNCALL	_DlyOff_Main,_setSw_Status
	FNCALL	_DlyOff_Main,_setTxData
	FNCALL	_setTxData,_RfPointSelect
	FNCALL	_setSw_Status,_SwPointSelect
	FNCALL	_setRF_DimmerLights,_setPercentValue
	FNCALL	_setPercentValue,___awtoft
	FNCALL	_setPercentValue,___ftdiv
	FNCALL	_setPercentValue,___fttol
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	_setRFSW_Status,_RfSWPointSelect
	FNCALL	_setDimmerLights_Trigger,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_Switch,_DimmerLightsPointSelect
	FNCALL	_setBuz,___wmul
	FNCALL	_DelayOff_Initialization,_DlyOff_Initialization
	FNCALL	_DlyOff_Initialization,_DelayOffPointSelect
	FNCALL	_CC2500_PowerOnInitial,_CC2500_ClearRXFIFO
	FNCALL	_CC2500_PowerOnInitial,_CC2500_ClearTXFIFO
	FNCALL	_CC2500_PowerOnInitial,_CC2500_FrequencyCabr
	FNCALL	_CC2500_PowerOnInitial,_CC2500_InitPATable
	FNCALL	_CC2500_PowerOnInitial,_CC2500_InitSetREG
	FNCALL	_CC2500_PowerOnInitial,_CC2500_PowerRST
	FNCALL	_CC2500_PowerOnInitial,_CC2500_SIDLEMode
	FNCALL	_CC2500_SIDLEMode,_CC2500_WriteCommand
	FNCALL	_CC2500_PowerRST,_CC2500_WriteByte
	FNCALL	_CC2500_PowerRST,_DelayTime_1us
	FNCALL	_CC2500_InitSetREG,_CC2500_WriteREG
	FNCALL	_CC2500_InitPATable,_CC2500_WriteREG
	FNCALL	_CC2500_WriteREG,_CC2500_WriteByte
	FNCALL	_CC2500_FrequencyCabr,_CC2500_WriteCommand
	FNCALL	_CC2500_FrequencyCabr,_DelayTime_1us
	FNCALL	_CC2500_ClearTXFIFO,_CC2500_WriteCommand
	FNCALL	_CC2500_ClearRXFIFO,_CC2500_WriteCommand
	FNCALL	_CC2500_WriteCommand,_CC2500_WriteByte
	FNROOT	_main
	FNCALL	_ISR,_INT_ISR
	FNCALL	_ISR,_IOC_ISR
	FNCALL	_ISR,_TMR0_ISR
	FNCALL	_TMR0_ISR,i1_setLoad_StatusOff
	FNCALL	_IOC_ISR,_setDimmerReClock
	FNCALL	_INT_ISR,_setRF_ReceiveGO
	FNCALL	_setRF_ReceiveGO,i1_RfPointSelect
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarProduct
psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Header_File\Main_B1.h"
	line	14

;initializer for _VarProduct
	retlw	063h
	retlw	02h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_CC2500_registers_address
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Header_File\CC2500_B1.h"
	line	218
_CC2500_registers_address:
	retlw	03h
	retlw	016h
	retlw	017h
	retlw	01Eh
	retlw	01Fh
	retlw	020h
	retlw	02Ah
	retlw	02Bh
	retlw	0Bh
	retlw	0Ch
	retlw	0Dh
	retlw	0Eh
	retlw	0Fh
	retlw	010h
	retlw	011h
	retlw	012h
	retlw	013h
	retlw	014h
	retlw	0Ah
	retlw	015h
	retlw	021h
	retlw	022h
	retlw	018h
	retlw	019h
	retlw	01Ah
	retlw	01Bh
	retlw	01Ch
	retlw	01Dh
	retlw	023h
	retlw	024h
	retlw	025h
	retlw	026h
	retlw	029h
	retlw	02Ch
	retlw	02Dh
	retlw	02Eh
	retlw	0
	retlw	01h
	retlw	02h
	retlw	07h
	retlw	08h
	retlw	09h
	retlw	06h
	retlw	04h
	retlw	05h
	retlw	027h
	retlw	028h
	global __end_of_CC2500_registers_address
__end_of_CC2500_registers_address:
	global	_CC2500_rfSettings
psect	stringtext
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Header_File\CC2500_B1.h"
	line	161
_CC2500_rfSettings:
	retlw	07h
	retlw	07h
	retlw	030h
	retlw	087h
	retlw	06Bh
	retlw	0F8h
	retlw	07Fh
	retlw	03Fh
	retlw	09h
	retlw	0
	retlw	05Ch
	retlw	0A7h
	retlw	062h
	retlw	086h
	retlw	083h
	retlw	03h
	retlw	022h
	retlw	0F8h
	retlw	0
	retlw	044h
	retlw	0B6h
	retlw	010h
	retlw	018h
	retlw	01Dh
	retlw	01Ch
	retlw	0C7h
	retlw	0
	retlw	0B2h
	retlw	0EAh
	retlw	0Ah
	retlw	0
	retlw	011h
	retlw	059h
	retlw	088h
	retlw	031h
	retlw	0Bh
	retlw	02Fh
	retlw	02Eh
	retlw	06h
	retlw	04h
	retlw	05h
	retlw	0
	retlw	030h
	retlw	0D3h
	retlw	091h
	retlw	041h
	retlw	0
	global __end_of_CC2500_rfSettings
__end_of_CC2500_rfSettings:
	global	_CC2500_patable_vaule
psect	stringtext
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Header_File\CC2500_B1.h"
	line	292
_CC2500_patable_vaule:
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	retlw	0FEh
	global __end_of_CC2500_patable_vaule
__end_of_CC2500_patable_vaule:
	global	_CC2500_registers_address
	global	_CC2500_rfSettings
	global	_CC2500_patable_vaule
	global	_Buz
	global	_DimmerLights11
	global	_PF
	global	_RF
	global	_Temp
	global	_CC2500_Enable
	global	_Receive_GO
	global	_Receive_OK
	global	_RxStatus
	global	_Transceive_GO
	global	_Transceive_OK
	global	_TxStatus
	global	_DimmerLights
	global	_Sw
	global	_Load
	global	_RF_Data
	global	_RF_Count
	global	_CRC
	global	_DelayOff
	global	_Dimmer
	global	_DimmerLightsIntr
	global	_LED
	global	_RFSW
	global	_RSSI
	global	_Rx_Length
	global	_SPI0Buffer
	global	_Tx_Length
	global	_r_address
	global	_r_data
	global	_s_data
	global	_VarTimer0
	global	_DlySw1
	global	_VarErrLED
	global	_VarLED1
	global	_VarLED2
	global	_Dimmer1
	global	_RF1
	global	__WDT
	global	_RFSW1
	global	_VarTMain
	global	_DimmerLights1
	global	_Temp1
	global	_Buz1
	global	_Sw1
	global	_PF1
	global	_VarMemory
	global	_Load1
	global	_TMain
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_TMain:
       ds      1

	global	_Product
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_Product:
       ds      1

	global	_Memory
psect	nvBANK1,class=BANK1,space=1,noexec
global __pnvBANK1
__pnvBANK1:
_Memory:
       ds      1

	global	_Timer0
_Timer0:
       ds      1

	global	_WDT
_WDT:
       ds      1

	global	_PORTA
_PORTA	set	0xC
	global	_PORTB
_PORTB	set	0xD
	global	_PORTC
_PORTC	set	0xE
	global	_TMR0
_TMR0	set	0x15
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_IOCIE
_IOCIE	set	0x5B
	global	_IOCIF
_IOCIF	set	0x58
	global	_PEIE
_PEIE	set	0x5E
	global	_RA0
_RA0	set	0x60
	global	_RA3
_RA3	set	0x63
	global	_RA4
_RA4	set	0x64
	global	_RA6
_RA6	set	0x66
	global	_RA7
_RA7	set	0x67
	global	_RB0
_RB0	set	0x68
	global	_RB1
_RB1	set	0x69
	global	_RB2
_RB2	set	0x6A
	global	_RB3
_RB3	set	0x6B
	global	_RB4
_RB4	set	0x6C
	global	_RB5
_RB5	set	0x6D
	global	_RC0
_RC0	set	0x70
	global	_RC1
_RC1	set	0x71
	global	_RC2
_RC2	set	0x72
	global	_RC4
_RC4	set	0x74
	global	_RC5
_RC5	set	0x75
	global	_RC7
_RC7	set	0x77
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_ADCON0
_ADCON0	set	0x9D
	global	_ADCON1
_ADCON1	set	0x9E
	global	_ADRESH
_ADRESH	set	0x9C
	global	_ADRESL
_ADRESL	set	0x9B
	global	_OPTION_REG
_OPTION_REG	set	0x95
	global	_OSCCON
_OSCCON	set	0x99
	global	_TRISA
_TRISA	set	0x8C
	global	_TRISB
_TRISB	set	0x8D
	global	_TRISC
_TRISC	set	0x8E
	global	_WDTCON
_WDTCON	set	0x97
	global	_GO_nDONE
_GO_nDONE	set	0x4E9
	global	_FVRCON
_FVRCON	set	0x117
	global	_LATA
_LATA	set	0x10C
	global	_LATB
_LATB	set	0x10D
	global	_LATC
_LATC	set	0x10E
	global	_ANSELA
_ANSELA	set	0x18C
	global	_ANSELB
_ANSELB	set	0x18D
	global	_ANSELC
_ANSELC	set	0x18E
	global	_PMADRH
_PMADRH	set	0x192
	global	_PMADRL
_PMADRL	set	0x191
	global	_PMCON2
_PMCON2	set	0x196
	global	_PMDATH
_PMDATH	set	0x194
	global	_PMDATL
_PMDATL	set	0x193
	global	_CFGS
_CFGS	set	0xCAE
	global	_FREE
_FREE	set	0xCAC
	global	_LWLO
_LWLO	set	0xCAD
	global	_RD
_RD	set	0xCA8
	global	_WR
_WR	set	0xCA9
	global	_WREN
_WREN	set	0xCAA
	global	_WPUB0
_WPUB0	set	0x1068
	global	_WPUB1
_WPUB1	set	0x1069
	global	_WPUB2
_WPUB2	set	0x106A
	global	_IOCBF
_IOCBF	set	0x396
	global	_IOCBN
_IOCBN	set	0x395
	global	_IOCBP
_IOCBP	set	0x394
	global	_IOCBF2
_IOCBF2	set	0x1CB2
; #config settings
global __CFG_WDTE$SWDTEN
__CFG_WDTE$SWDTEN equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_WRT$HALF
__CFG_WRT$HALF equ 0x0
	file	"Switch_1Key_Dimmer_V1.3.1.1.1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_CC2500_Enable:
       ds      1

_Receive_GO:
       ds      1

_Receive_OK:
       ds      1

_RxStatus:
       ds      1

_Transceive_GO:
       ds      1

_Transceive_OK:
       ds      1

_TxStatus:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_Buz:
       ds      1

_DimmerLights11:
       ds      1

_PF:
       ds      1

_RF:
       ds      1

_Temp:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_DimmerLights:
       ds      1

_Sw:
       ds      1

_Load:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_RF_Data:
       ds      21

_RF_Count:
       ds      2

_CRC:
       ds      1

_DelayOff:
       ds      1

_Dimmer:
       ds      1

_DimmerLightsIntr:
       ds      1

_LED:
       ds      1

_RFSW:
       ds      1

_RSSI:
       ds      1

_Rx_Length:
       ds      1

_SPI0Buffer:
       ds      1

_Tx_Length:
       ds      1

_r_address:
       ds      1

_r_data:
       ds      1

_s_data:
       ds      1

_VarTimer0:
       ds      9

_DlySw1:
       ds      5

_VarErrLED:
       ds      4

_VarLED1:
       ds      4

_VarLED2:
       ds      4

_Dimmer1:
       ds      3

_RF1:
       ds      3

__WDT:
       ds      2

_RFSW1:
       ds      1

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_VarTMain:
       ds      17

_DimmerLights1:
       ds      14

_Temp1:
       ds      14

_Buz1:
       ds      12

_Sw1:
       ds      9

_PF1:
       ds      8

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_VarMemory:
       ds      37

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Header_File\Main_B1.h"
	line	14
_VarProduct:
       ds      32

psect	bssBANK4,class=BANK4,space=1,noexec
global __pbssBANK4
__pbssBANK4:
_Load1:
       ds      71

	file	"Switch_1Key_Dimmer_V1.3.1.1.1.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbitbssCOMMON
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	047h
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	04Ah
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK3
	movlw	low(__pbssBANK3)
	movwf	fsr0l
	movlw	high(__pbssBANK3)
	movwf	fsr0h
	movlw	025h
	fcall	clear_ram0
; Clear objects allocated to BANK4
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK4
	movlw	low(__pbssBANK4)
	movwf	fsr0l
	movlw	high(__pbssBANK4)
	movwf	fsr0h
	movlw	047h
	fcall	clear_ram0
	line	#
psect inittext,class=CODE,delta=2
global init_ram,btemp
init_ram:
	movwf btemp,f
initloop:
	moviw fsr0++
	movwi fsr1++
	decfsz btemp
	goto initloop
	retlw 0
; Initialize objects allocated to BANK3
	global __pidataBANK3,__pdataBANK3
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK3)
	movwf fsr0l
	movlw high(__pidataBANK3)|80h
	movwf fsr0h
	movlw low(__pdataBANK3)
	movwf fsr1l
	movlw high(__pdataBANK3)
	movwf fsr1h
	movlw 020h
	fcall init_ram
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	bcf	pic14e$flags,0 ;clear compiler interrupt flag
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_CC2500_WriteByte:	; 0 bytes @ 0x0
?_CC2500_WriteCommand:	; 0 bytes @ 0x0
?_CC2500_ReadStatus:	; 0 bytes @ 0x0
?_CC2500_ReadByte:	; 0 bytes @ 0x0
?_CC2500_PowerRST:	; 0 bytes @ 0x0
?_CC2500_InitSetREG:	; 0 bytes @ 0x0
?_CC2500_InitPATable:	; 0 bytes @ 0x0
?_CC2500_ClearTXFIFO:	; 0 bytes @ 0x0
?_CC2500_ClearRXFIFO:	; 0 bytes @ 0x0
?_CC2500_FrequencyCabr:	; 0 bytes @ 0x0
?_CC2500_SIDLEMode:	; 0 bytes @ 0x0
?_DlyOff_Initialization:	; 0 bytes @ 0x0
?_DlyOff_Main:	; 0 bytes @ 0x0
?_setTxData:	; 0 bytes @ 0x0
?_setDimmerLights_Initialization:	; 0 bytes @ 0x0
?_Dimmer_Initialization:	; 0 bytes @ 0x0
?_setLoad_GO:	; 0 bytes @ 0x0
?_setDimmerLights_Main:	; 0 bytes @ 0x0
?_setDimmerLights_ERROR:	; 0 bytes @ 0x0
?_setLoad_Count:	; 0 bytes @ 0x0
?_setLED_Initialization:	; 0 bytes @ 0x0
?_setLED_Main:	; 0 bytes @ 0x0
?_MainT_Initialization:	; 0 bytes @ 0x0
?_Mcu_Initialization:	; 0 bytes @ 0x0
?_Flash_Memory_Initialization:	; 0 bytes @ 0x0
?_Temp_Initialization:	; 0 bytes @ 0x0
?_Load_Initialization:	; 0 bytes @ 0x0
?_PowerFault_Initialization:	; 0 bytes @ 0x0
?_Switch_Initialization:	; 0 bytes @ 0x0
?_RF_Initialization:	; 0 bytes @ 0x0
?_getLoad_AD:	; 0 bytes @ 0x0
?_getTemp_AD:	; 0 bytes @ 0x0
?_getPowerFault_AD:	; 0 bytes @ 0x0
?_MainT:	; 0 bytes @ 0x0
?_WDT_Main:	; 0 bytes @ 0x0
?_Flash_Memory_Main:	; 0 bytes @ 0x0
?_Temp_Main:	; 0 bytes @ 0x0
?_Load_Main:	; 0 bytes @ 0x0
?_PowerFault_Main:	; 0 bytes @ 0x0
?_Switch_Main:	; 0 bytes @ 0x0
?_RF_Main:	; 0 bytes @ 0x0
?_setTemp_Enable:	; 0 bytes @ 0x0
?_setLoad_Enable:	; 0 bytes @ 0x0
?_setSw_Enable:	; 0 bytes @ 0x0
?_IO_Set:	; 0 bytes @ 0x0
?_TMR0_Set:	; 0 bytes @ 0x0
?_ADC_Set:	; 0 bytes @ 0x0
?_INT_Set:	; 0 bytes @ 0x0
?_IOC_Set:	; 0 bytes @ 0x0
?_WDT_Set:	; 0 bytes @ 0x0
?_IOC_ISR:	; 0 bytes @ 0x0
??_IOC_ISR:	; 0 bytes @ 0x0
?_TMR0_ISR:	; 0 bytes @ 0x0
?_INT_ISR:	; 0 bytes @ 0x0
?_Flash_Memory_Write:	; 0 bytes @ 0x0
?_Flash_Memory_Modify:	; 0 bytes @ 0x0
?_WDT_Clearing:	; 0 bytes @ 0x0
?_setLoad_AH_AL_Restore:	; 0 bytes @ 0x0
?_setLoad_Exceptions:	; 0 bytes @ 0x0
?_setTemp_Initialization:	; 0 bytes @ 0x0
?_setTemp_Main:	; 0 bytes @ 0x0
?_setOverTemp_Exceptions:	; 0 bytes @ 0x0
?_setPowerFault_Initialization:	; 0 bytes @ 0x0
?_setPowerFault_Main:	; 0 bytes @ 0x0
?_setPowerFault_Exceptions:	; 0 bytes @ 0x0
?_setRF_Initialization:	; 0 bytes @ 0x0
?_setRF_Main:	; 0 bytes @ 0x0
?_getRxData:	; 0 bytes @ 0x0
?_RF_RxDisable:	; 0 bytes @ 0x0
?_setLog_Code:	; 0 bytes @ 0x0
?_setControl_Lights_Table:	; 0 bytes @ 0x0
?_setRFSW_Control:	; 0 bytes @ 0x0
?_setRFSW_AdjControl:	; 0 bytes @ 0x0
?_setRF_DimmerValue:	; 0 bytes @ 0x0
?_setSw_Initialization:	; 0 bytes @ 0x0
?_setSw_Main:	; 0 bytes @ 0x0
?_Sw_DimmerOnFunc:	; 0 bytes @ 0x0
?_Sw_DimmerAdjFunc:	; 0 bytes @ 0x0
?_Sw_DimmerOffFunc:	; 0 bytes @ 0x0
?_Buzzer_Initialization:	; 0 bytes @ 0x0
?_Buzzer_Main:	; 0 bytes @ 0x0
?_CC2500_TxData:	; 0 bytes @ 0x0
?_CC2500_RxData:	; 0 bytes @ 0x0
?_CC2500_PowerOnInitial:	; 0 bytes @ 0x0
?_DelayOffPointSelect:	; 0 bytes @ 0x0
?_DelayOff_Initialization:	; 0 bytes @ 0x0
?_DelayOff_Main:	; 0 bytes @ 0x0
?_DimmerLightsPointSelect:	; 0 bytes @ 0x0
?_DimmerLights_Initialization:	; 0 bytes @ 0x0
?_DimmerLights_Close:	; 0 bytes @ 0x0
?_DimmerLights_Main:	; 0 bytes @ 0x0
?_DimmerLights_Exceptions:	; 0 bytes @ 0x0
?_setDimmerLights_AdjRF:	; 0 bytes @ 0x0
?_LedPointSelect:	; 0 bytes @ 0x0
?_LED_Initialization:	; 0 bytes @ 0x0
?_LED_Main:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_setDimmerReClock:	; 0 bytes @ 0x0
??_setDimmerReClock:	; 0 bytes @ 0x0
?_setINT_GO:	; 0 bytes @ 0x0
?_Flash_Memory_Unlock:	; 0 bytes @ 0x0
?_Flash_Memory_Erasing:	; 0 bytes @ 0x0
?_RfPointSelect:	; 0 bytes @ 0x0
?_RfSWPointSelect:	; 0 bytes @ 0x0
?_TouchPower:	; 0 bytes @ 0x0
?_SwPointSelect:	; 0 bytes @ 0x0
?i1_setLoad_StatusOff:	; 0 bytes @ 0x0
?i1_RfPointSelect:	; 0 bytes @ 0x0
??i1_RfPointSelect:	; 0 bytes @ 0x0
?_DelayTimejudge:	; 1 bytes @ 0x0
?_getDimmerLights_StatusFlag:	; 1 bytes @ 0x0
?_getPercentValue:	; 1 bytes @ 0x0
?_Flash_Memory_Read:	; 1 bytes @ 0x0
?_getTemp_Safe:	; 1 bytes @ 0x0
?_getPF_Safe:	; 1 bytes @ 0x0
?_setPercentValue:	; 1 bytes @ 0x0
?_getLoad_Safe:	; 1 bytes @ 0x0
setRF_Initialization@rf:	; 1 bytes @ 0x0
	global	i1setLoad_StatusOff@command
i1setLoad_StatusOff@command:	; 1 bytes @ 0x0
	ds	1
??i1_setLoad_StatusOff:	; 0 bytes @ 0x1
	global	i1setLoad_StatusOff@lights
i1setLoad_StatusOff@lights:	; 1 bytes @ 0x1
	global	i1RfPointSelect@rf
i1RfPointSelect@rf:	; 1 bytes @ 0x1
	ds	1
??_TMR0_ISR:	; 0 bytes @ 0x2
?_setRF_ReceiveGO:	; 0 bytes @ 0x2
	global	setRF_ReceiveGO@command
setRF_ReceiveGO@command:	; 1 bytes @ 0x2
	ds	1
??_setRF_ReceiveGO:	; 0 bytes @ 0x3
	global	setRF_ReceiveGO@rf
setRF_ReceiveGO@rf:	; 1 bytes @ 0x3
	ds	1
??_INT_ISR:	; 0 bytes @ 0x4
	ds	2
??_ISR:	; 0 bytes @ 0x6
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_CC2500_WriteByte:	; 0 bytes @ 0x0
??_CC2500_ReadByte:	; 0 bytes @ 0x0
?_DelayTime_1us:	; 0 bytes @ 0x0
??_DelayTimejudge:	; 0 bytes @ 0x0
??_Dimmer_Initialization:	; 0 bytes @ 0x0
??_getDimmerLights_StatusFlag:	; 0 bytes @ 0x0
??_setLoad_GO:	; 0 bytes @ 0x0
?_setLoad_StatusOff:	; 0 bytes @ 0x0
??_setLoad_Count:	; 0 bytes @ 0x0
?_setLoad_StatusOn:	; 0 bytes @ 0x0
??_MainT_Initialization:	; 0 bytes @ 0x0
??_WDT_Main:	; 0 bytes @ 0x0
??_setTemp_Enable:	; 0 bytes @ 0x0
??_setLoad_Enable:	; 0 bytes @ 0x0
??_IO_Set:	; 0 bytes @ 0x0
??_TMR0_Set:	; 0 bytes @ 0x0
??_ADC_Set:	; 0 bytes @ 0x0
??_INT_Set:	; 0 bytes @ 0x0
??_IOC_Set:	; 0 bytes @ 0x0
??_WDT_Set:	; 0 bytes @ 0x0
??_Flash_Memory_Read:	; 0 bytes @ 0x0
??_Flash_Memory_Write:	; 0 bytes @ 0x0
??_WDT_Clearing:	; 0 bytes @ 0x0
??_setLoad_AH_AL_Restore:	; 0 bytes @ 0x0
??_getTemp_Safe:	; 0 bytes @ 0x0
??_getPF_Safe:	; 0 bytes @ 0x0
??_setTemp_Initialization:	; 0 bytes @ 0x0
??_setPowerFault_Initialization:	; 0 bytes @ 0x0
??_setRF_Initialization:	; 0 bytes @ 0x0
??_Buzzer_Initialization:	; 0 bytes @ 0x0
??_Buzzer_Main:	; 0 bytes @ 0x0
??_DelayOffPointSelect:	; 0 bytes @ 0x0
??_DimmerLightsPointSelect:	; 0 bytes @ 0x0
??_LedPointSelect:	; 0 bytes @ 0x0
??_setINT_GO:	; 0 bytes @ 0x0
??_Flash_Memory_Unlock:	; 0 bytes @ 0x0
??_Flash_Memory_Erasing:	; 0 bytes @ 0x0
??_getLoad_Safe:	; 0 bytes @ 0x0
??_RfPointSelect:	; 0 bytes @ 0x0
??_RfSWPointSelect:	; 0 bytes @ 0x0
??_TouchPower:	; 0 bytes @ 0x0
??_SwPointSelect:	; 0 bytes @ 0x0
	global	?_getAD
?_getAD:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	getDimmerLights_StatusFlag@Status
getDimmerLights_StatusFlag@Status:	; 1 bytes @ 0x0
	global	setINT_GO@command
setINT_GO@command:	; 1 bytes @ 0x0
	global	getAD@adcon1
getAD@adcon1:	; 1 bytes @ 0x0
	global	setLoad_Enable@command
setLoad_Enable@command:	; 1 bytes @ 0x0
	global	setLoad_GO@command
setLoad_GO@command:	; 1 bytes @ 0x0
	global	setLoad_StatusOn@command
setLoad_StatusOn@command:	; 1 bytes @ 0x0
	global	setLoad_StatusOff@command
setLoad_StatusOff@command:	; 1 bytes @ 0x0
	global	setTemp_Enable@command
setTemp_Enable@command:	; 1 bytes @ 0x0
	global	DelayTime_1us@count
DelayTime_1us@count:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
??_setLoad_StatusOff:	; 0 bytes @ 0x1
??_setLoad_StatusOn:	; 0 bytes @ 0x1
??_Mcu_Initialization:	; 0 bytes @ 0x1
??_Temp_Initialization:	; 0 bytes @ 0x1
??_PowerFault_Initialization:	; 0 bytes @ 0x1
??_RF_Initialization:	; 0 bytes @ 0x1
??_DimmerLights_Close:	; 0 bytes @ 0x1
	global	CC2500_WriteByte@loop_a
CC2500_WriteByte@loop_a:	; 1 bytes @ 0x1
	global	CC2500_ReadByte@loop_b
CC2500_ReadByte@loop_b:	; 1 bytes @ 0x1
	global	DelayOffPointSelect@sw
DelayOffPointSelect@sw:	; 1 bytes @ 0x1
	global	DelayTimejudge@i
DelayTimejudge@i:	; 1 bytes @ 0x1
	global	DimmerLightsPointSelect@lights
DimmerLightsPointSelect@lights:	; 1 bytes @ 0x1
	global	LedPointSelect@led
LedPointSelect@led:	; 1 bytes @ 0x1
	global	Flash_Memory_Read@i
Flash_Memory_Read@i:	; 1 bytes @ 0x1
	global	Flash_Memory_Write@i
Flash_Memory_Write@i:	; 1 bytes @ 0x1
	global	setLoad_Count@command
setLoad_Count@command:	; 1 bytes @ 0x1
	global	setLoad_StatusOn@lights
setLoad_StatusOn@lights:	; 1 bytes @ 0x1
	global	setLoad_StatusOff@lights
setLoad_StatusOff@lights:	; 1 bytes @ 0x1
	global	setLoad_AH_AL_Restore@i
setLoad_AH_AL_Restore@i:	; 1 bytes @ 0x1
	global	RfPointSelect@rf
RfPointSelect@rf:	; 1 bytes @ 0x1
	global	RfSWPointSelect@sw
RfSWPointSelect@sw:	; 1 bytes @ 0x1
	global	SwPointSelect@sw
SwPointSelect@sw:	; 1 bytes @ 0x1
	ds	1
??_CC2500_WriteCommand:	; 0 bytes @ 0x2
??_CC2500_ReadStatus:	; 0 bytes @ 0x2
?_setRF_RxStatus:	; 0 bytes @ 0x2
??_DelayTime_1us:	; 0 bytes @ 0x2
?_CC2500_WriteREG:	; 0 bytes @ 0x2
??_DlyOff_Initialization:	; 0 bytes @ 0x2
?_setSw_Status:	; 0 bytes @ 0x2
?_setRFSW_Status:	; 0 bytes @ 0x2
?_setDimmerLights_Trigger:	; 0 bytes @ 0x2
?_setDimmerLights_Switch:	; 0 bytes @ 0x2
??_setTxData:	; 0 bytes @ 0x2
??_setDimmerLights_Initialization:	; 0 bytes @ 0x2
?_setDimmerLights_TriggerERROR:	; 0 bytes @ 0x2
?_setLED:	; 0 bytes @ 0x2
??_setLED_Main:	; 0 bytes @ 0x2
??_Load_Initialization:	; 0 bytes @ 0x2
??_setSw_Enable:	; 0 bytes @ 0x2
?_setRF_Enable:	; 0 bytes @ 0x2
?_setDimmerLights_AdjGo:	; 0 bytes @ 0x2
?_setDimmerLights_TriggerAdj:	; 0 bytes @ 0x2
?_setDimmerLights_Clear:	; 0 bytes @ 0x2
?_setRF_Learn:	; 0 bytes @ 0x2
	global	CC2500_WriteREG@value
CC2500_WriteREG@value:	; 1 bytes @ 0x2
	global	DlyOff_Initialization@sw
DlyOff_Initialization@sw:	; 1 bytes @ 0x2
	global	DelayTimejudge@value
DelayTimejudge@value:	; 1 bytes @ 0x2
	global	setDimmerLights_TriggerERROR@command
setDimmerLights_TriggerERROR@command:	; 1 bytes @ 0x2
	global	setDimmerLights_Switch@command
setDimmerLights_Switch@command:	; 1 bytes @ 0x2
	global	setDimmerLights_AdjGo@command
setDimmerLights_AdjGo@command:	; 1 bytes @ 0x2
	global	setDimmerLights_Trigger@command
setDimmerLights_Trigger@command:	; 1 bytes @ 0x2
	global	setDimmerLights_TriggerAdj@command
setDimmerLights_TriggerAdj@command:	; 1 bytes @ 0x2
	global	setDimmerLights_Clear@command
setDimmerLights_Clear@command:	; 1 bytes @ 0x2
	global	setLED@command
setLED@command:	; 1 bytes @ 0x2
	global	Flash_Memory_Read@address
Flash_Memory_Read@address:	; 1 bytes @ 0x2
	global	setRF_Learn@command
setRF_Learn@command:	; 1 bytes @ 0x2
	global	setRF_RxStatus@command
setRF_RxStatus@command:	; 1 bytes @ 0x2
	global	setRF_Enable@command
setRF_Enable@command:	; 1 bytes @ 0x2
	global	setRFSW_Status@command
setRFSW_Status@command:	; 1 bytes @ 0x2
	global	setSw_Enable@command
setSw_Enable@command:	; 1 bytes @ 0x2
	global	setSw_Status@command
setSw_Status@command:	; 1 bytes @ 0x2
	global	DelayTime_1us@i
DelayTime_1us@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??_setRF_RxStatus:	; 0 bytes @ 0x3
??_CC2500_WriteREG:	; 0 bytes @ 0x3
??_setSw_Status:	; 0 bytes @ 0x3
??_setRFSW_Status:	; 0 bytes @ 0x3
??_setDimmerLights_Trigger:	; 0 bytes @ 0x3
??_setDimmerLights_Switch:	; 0 bytes @ 0x3
??_setDimmerLights_TriggerERROR:	; 0 bytes @ 0x3
??_setLED:	; 0 bytes @ 0x3
??_setRF_Enable:	; 0 bytes @ 0x3
??_DelayOff_Initialization:	; 0 bytes @ 0x3
?_setDelayOff_GO:	; 0 bytes @ 0x3
??_setDimmerLights_AdjGo:	; 0 bytes @ 0x3
??_setDimmerLights_TriggerAdj:	; 0 bytes @ 0x3
??_setDimmerLights_Clear:	; 0 bytes @ 0x3
??_getAD:	; 0 bytes @ 0x3
??_setRF_Learn:	; 0 bytes @ 0x3
	global	CC2500_WriteCommand@command
CC2500_WriteCommand@command:	; 1 bytes @ 0x3
	global	CC2500_ReadStatus@status_addr
CC2500_ReadStatus@status_addr:	; 1 bytes @ 0x3
	global	setDelayOff_GO@command
setDelayOff_GO@command:	; 1 bytes @ 0x3
	global	setDimmerLights_Initialization@lights
setDimmerLights_Initialization@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_TriggerERROR@lights
setDimmerLights_TriggerERROR@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_Switch@lights
setDimmerLights_Switch@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_AdjGo@lights
setDimmerLights_AdjGo@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_Trigger@lights
setDimmerLights_Trigger@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_TriggerAdj@lights
setDimmerLights_TriggerAdj@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_Clear@lights
setDimmerLights_Clear@lights:	; 1 bytes @ 0x3
	global	setLED@led
setLED@led:	; 1 bytes @ 0x3
	global	getAD@adcon0
getAD@adcon0:	; 1 bytes @ 0x3
	global	Flash_Memory_Read@ret
Flash_Memory_Read@ret:	; 1 bytes @ 0x3
	global	setRF_Learn@rf
setRF_Learn@rf:	; 1 bytes @ 0x3
	global	setRF_RxStatus@rf
setRF_RxStatus@rf:	; 1 bytes @ 0x3
	global	setTxData@rf
setTxData@rf:	; 1 bytes @ 0x3
	global	setRF_Enable@rf
setRF_Enable@rf:	; 1 bytes @ 0x3
	global	setRFSW_Status@sw
setRFSW_Status@sw:	; 1 bytes @ 0x3
	global	setSw_Status@sw
setSw_Status@sw:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
??_CC2500_ClearTXFIFO:	; 0 bytes @ 0x4
??_CC2500_ClearRXFIFO:	; 0 bytes @ 0x4
??_CC2500_SIDLEMode:	; 0 bytes @ 0x4
?_setDimmerLights:	; 0 bytes @ 0x4
??_setDimmerLights_ERROR:	; 0 bytes @ 0x4
??_setLED_Initialization:	; 0 bytes @ 0x4
??_getLoad_AD:	; 0 bytes @ 0x4
??_getTemp_AD:	; 0 bytes @ 0x4
??_getPowerFault_AD:	; 0 bytes @ 0x4
??_Flash_Memory_Modify:	; 0 bytes @ 0x4
??_RF_RxDisable:	; 0 bytes @ 0x4
??_setSw_Initialization:	; 0 bytes @ 0x4
??_Sw_DimmerAdjFunc:	; 0 bytes @ 0x4
??_CC2500_TxData:	; 0 bytes @ 0x4
??_CC2500_RxData:	; 0 bytes @ 0x4
??_DimmerLights_Initialization:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	CC2500_WriteREG@w_addr
CC2500_WriteREG@w_addr:	; 1 bytes @ 0x4
	global	setDelayOff_GO@value
setDelayOff_GO@value:	; 1 bytes @ 0x4
	global	setDimmerLights@status
setDimmerLights@status:	; 1 bytes @ 0x4
	global	setLED_Initialization@led
setLED_Initialization@led:	; 1 bytes @ 0x4
	global	setLED_Main@led
setLED_Main@led:	; 1 bytes @ 0x4
	global	RF_RxDisable@rf
RF_RxDisable@rf:	; 1 bytes @ 0x4
	global	setSw_Initialization@sw
setSw_Initialization@sw:	; 1 bytes @ 0x4
	global	Sw_DimmerAdjFunc@Idle
Sw_DimmerAdjFunc@Idle:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	DelayTime_1us@j
DelayTime_1us@j:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
??_CC2500_InitSetREG:	; 0 bytes @ 0x5
??_CC2500_InitPATable:	; 0 bytes @ 0x5
??_setDimmerLights:	; 0 bytes @ 0x5
??_Switch_Initialization:	; 0 bytes @ 0x5
??___ftpack:	; 0 bytes @ 0x5
??_setDelayOff_GO:	; 0 bytes @ 0x5
??_LED_Initialization:	; 0 bytes @ 0x5
??_LED_Main:	; 0 bytes @ 0x5
	global	CC2500_TxData@loop_e
CC2500_TxData@loop_e:	; 1 bytes @ 0x5
	global	CC2500_RxData@loop_f
CC2500_RxData@loop_f:	; 1 bytes @ 0x5
	global	setDimmerLights_ERROR@lights
setDimmerLights_ERROR@lights:	; 1 bytes @ 0x5
	global	Sw_DimmerAdjFunc@sw
Sw_DimmerAdjFunc@sw:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??_CC2500_PowerRST:	; 0 bytes @ 0x6
??_CC2500_FrequencyCabr:	; 0 bytes @ 0x6
?_setBuz:	; 0 bytes @ 0x6
	global	CC2500_InitSetREG@temp1
CC2500_InitSetREG@temp1:	; 1 bytes @ 0x6
	global	CC2500_InitPATable@temp
CC2500_InitPATable@temp:	; 1 bytes @ 0x6
	global	setDimmerLights@lights
setDimmerLights@lights:	; 1 bytes @ 0x6
	global	Flash_Memory_Modify@i
Flash_Memory_Modify@i:	; 1 bytes @ 0x6
	global	setBuz@time
setBuz@time:	; 2 bytes @ 0x6
	ds	1
??_Flash_Memory_Main:	; 0 bytes @ 0x7
	global	CC2500_InitSetREG@temp2
CC2500_InitSetREG@temp2:	; 1 bytes @ 0x7
	global	CC2500_InitPATable@loop_d
CC2500_InitPATable@loop_d:	; 1 bytes @ 0x7
	global	setDelayOff_GO@sw
setDelayOff_GO@sw:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
??_setBuz:	; 0 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	CC2500_InitSetREG@loop_c
CC2500_InitSetREG@loop_c:	; 1 bytes @ 0x8
	global	getTemp_AD@channel
getTemp_AD@channel:	; 1 bytes @ 0x8
	global	getPowerFault_AD@channel
getPowerFault_AD@channel:	; 1 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	ds	1
??_CC2500_PowerOnInitial:	; 0 bytes @ 0x9
	global	setBuz@count
setBuz@count:	; 1 bytes @ 0x9
	global	getLoad_AD@channel
getLoad_AD@channel:	; 1 bytes @ 0x9
	ds	1
??_MainT:	; 0 bytes @ 0xA
??_setLog_Code:	; 0 bytes @ 0xA
??_DimmerLights_Exceptions:	; 0 bytes @ 0xA
	global	DimmerLights_Exceptions@status
DimmerLights_Exceptions@status:	; 1 bytes @ 0xA
	global	getLoad_AD@j
getLoad_AD@j:	; 1 bytes @ 0xA
	ds	1
??_setLoad_Exceptions:	; 0 bytes @ 0xB
??_setOverTemp_Exceptions:	; 0 bytes @ 0xB
??_setPowerFault_Exceptions:	; 0 bytes @ 0xB
??___awtoft:	; 0 bytes @ 0xB
	global	getLoad_AD@i
getLoad_AD@i:	; 1 bytes @ 0xB
	global	setLog_Code@rf
setLog_Code@rf:	; 1 bytes @ 0xB
	ds	1
	global	setLoad_Exceptions@command
setLoad_Exceptions@command:	; 1 bytes @ 0xC
	global	setOverTemp_Exceptions@command
setOverTemp_Exceptions@command:	; 1 bytes @ 0xC
	global	setPowerFault_Exceptions@command
setPowerFault_Exceptions@command:	; 1 bytes @ 0xC
	ds	1
??_Load_Main:	; 0 bytes @ 0xD
??_setTemp_Main:	; 0 bytes @ 0xD
??_setPowerFault_Main:	; 0 bytes @ 0xD
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xE
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xE
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xE
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xE
	ds	1
??_PowerFault_Main:	; 0 bytes @ 0xF
	ds	1
??_Temp_Main:	; 0 bytes @ 0x10
	ds	1
	global	Load_Main@i
Load_Main@i:	; 1 bytes @ 0x11
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x11
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x11
	ds	3
??___ftdiv:	; 0 bytes @ 0x14
??___ftmul:	; 0 bytes @ 0x14
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x18
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x18
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x19
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x19
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x1C
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1C
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x1D
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1D
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x1E
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x1E
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x21
	ds	3
??___ftadd:	; 0 bytes @ 0x24
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x28
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x29
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2A
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x2B
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x2B
	ds	4
??___fttol:	; 0 bytes @ 0x2F
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x33
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x34
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x38
	ds	1
??_getPercentValue:	; 0 bytes @ 0x39
??_setPercentValue:	; 0 bytes @ 0x39
	global	setPercentValue@value
setPercentValue@value:	; 1 bytes @ 0x39
	ds	1
	global	setPercentValue@i
setPercentValue@i:	; 3 bytes @ 0x3A
	ds	1
	global	getPercentValue@value
getPercentValue@value:	; 1 bytes @ 0x3B
	ds	1
	global	getPercentValue@i
getPercentValue@i:	; 3 bytes @ 0x3C
	ds	1
?_setRF_DimmerLights:	; 0 bytes @ 0x3D
??_Flash_Memory_Initialization:	; 0 bytes @ 0x3D
	global	setRF_DimmerLights@on
setRF_DimmerLights@on:	; 1 bytes @ 0x3D
	ds	1
??_setRF_DimmerLights:	; 0 bytes @ 0x3E
	global	Flash_Memory_Initialization@i
Flash_Memory_Initialization@i:	; 1 bytes @ 0x3E
	ds	1
??_setDimmerLights_AdjRF:	; 0 bytes @ 0x3F
	ds	1
	global	setDimmerLights_AdjRF@lights
setDimmerLights_AdjRF@lights:	; 1 bytes @ 0x40
	global	setRF_DimmerLights@status
setRF_DimmerLights@status:	; 1 bytes @ 0x40
	ds	1
??_setRF_DimmerValue:	; 0 bytes @ 0x41
	global	setRF_DimmerLights@lights
setRF_DimmerLights@lights:	; 1 bytes @ 0x41
	ds	1
??_DlyOff_Main:	; 0 bytes @ 0x42
?_setDimmerLights_Adj:	; 0 bytes @ 0x42
??_setRFSW_Control:	; 0 bytes @ 0x42
??_Sw_DimmerOnFunc:	; 0 bytes @ 0x42
??_Sw_DimmerOffFunc:	; 0 bytes @ 0x42
	global	setDimmerLights_Adj@status
setDimmerLights_Adj@status:	; 1 bytes @ 0x42
	global	Sw_DimmerOnFunc@Idle
Sw_DimmerOnFunc@Idle:	; 1 bytes @ 0x42
	ds	1
??_setDimmerLights_Adj:	; 0 bytes @ 0x43
	global	setRFSW_Control@sw
setRFSW_Control@sw:	; 1 bytes @ 0x43
	global	setRF_DimmerValue@lights
setRF_DimmerValue@lights:	; 1 bytes @ 0x43
	global	Sw_DimmerOnFunc@sw
Sw_DimmerOnFunc@sw:	; 1 bytes @ 0x43
	ds	1
??_setRFSW_AdjControl:	; 0 bytes @ 0x44
	global	DlyOff_Main@sw
DlyOff_Main@sw:	; 1 bytes @ 0x44
	global	setDimmerLights_Adj@lights
setDimmerLights_Adj@lights:	; 1 bytes @ 0x44
	global	Sw_DimmerOffFunc@sw
Sw_DimmerOffFunc@sw:	; 1 bytes @ 0x44
	ds	1
??_setDimmerLights_Main:	; 0 bytes @ 0x45
??_setSw_Main:	; 0 bytes @ 0x45
??_DelayOff_Main:	; 0 bytes @ 0x45
	global	setDimmerLights_Main@clear
setDimmerLights_Main@clear:	; 1 bytes @ 0x45
	ds	1
	global	setDimmerLights_Main@lights
setDimmerLights_Main@lights:	; 1 bytes @ 0x46
	global	setRFSW_AdjControl@sw
setRFSW_AdjControl@sw:	; 1 bytes @ 0x46
	ds	1
??_setControl_Lights_Table:	; 0 bytes @ 0x47
??_DimmerLights_Main:	; 0 bytes @ 0x47
	global	setControl_Lights_Table@rf
setControl_Lights_Table@rf:	; 1 bytes @ 0x47
	global	_setSw_Main$4748
_setSw_Main$4748:	; 1 bytes @ 0x47
	ds	1
??_getRxData:	; 0 bytes @ 0x48
	global	getRxData@rf
getRxData@rf:	; 1 bytes @ 0x48
	global	setSw_Main@sw
setSw_Main@sw:	; 1 bytes @ 0x48
	ds	1
??_Switch_Main:	; 0 bytes @ 0x49
??_setRF_Main:	; 0 bytes @ 0x49
	ds	1
	global	setRF_Main@rf
setRF_Main@rf:	; 1 bytes @ 0x4A
	ds	1
	global	_setRF_Main$4391
_setRF_Main$4391:	; 1 bytes @ 0x4B
	ds	1
??_RF_Main:	; 0 bytes @ 0x4C
??_main:	; 0 bytes @ 0x4C
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    102
;!    Data        32
;!    BSS         261
;!    Persistent  5
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      14
;!    BANK0            80     76      80
;!    BANK1            80      0      74
;!    BANK2            80      0      74
;!    BANK3            80      0      69
;!    BANK4            80      0      71
;!    BANK5            80      0       0
;!    BANK6            80      0       0
;!    BANK7            80      0       0
;!    BANK8            80      0       0
;!    BANK9            80      0       0
;!    BANK10           80      0       0
;!    BANK11           80      0       0
;!    BANK12           48      0       0

;!
;!Pointer List with Targets:
;!
;!    DimmerLightsIntr	PTR struct DimmerLights size(1) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    Sw	PTR struct Switch size(1) Largest target is 9
;!		 -> NULL(NULL[0]), Sw1(BANK2[9]), 
;!
;!    RFSW	PTR struct RFSW size(1) Largest target is 1
;!		 -> NULL(NULL[0]), RFSW1(BANK1[1]), 
;!
;!    RF	PTR struct RF size(1) Largest target is 3
;!		 -> NULL(NULL[0]), RF1(BANK1[3]), 
;!
;!    PF	PTR struct PF size(1) Largest target is 8
;!		 -> NULL(NULL[0]), PF1(BANK2[8]), 
;!
;!    Temp	PTR struct OverTemp size(1) Largest target is 14
;!		 -> NULL(NULL[0]), Temp1(BANK2[14]), 
;!
;!    Load	PTR struct OverLoad size(1) Largest target is 71
;!		 -> NULL(NULL[0]), Load1(BANK4[71]), 
;!
;!    WDT	PTR struct WDT size(1) Largest target is 2
;!		 -> NULL(NULL[0]), _WDT(BANK1[2]), 
;!
;!    Timer0	PTR struct Timer0 size(1) Largest target is 9
;!		 -> NULL(NULL[0]), VarTimer0(BANK1[9]), 
;!
;!    LED	PTR struct LED size(1) Largest target is 4
;!		 -> NULL(NULL[0]), VarErrLED(BANK1[4]), VarLED2(BANK1[4]), VarLED1(BANK1[4]), 
;!
;!    TMain	PTR struct TMain size(1) Largest target is 17
;!		 -> NULL(NULL[0]), VarTMain(BANK2[17]), 
;!
;!    Memory	PTR struct FlashMemory size(1) Largest target is 37
;!		 -> NULL(NULL[0]), VarMemory(BANK3[37]), 
;!
;!    Dimmer	PTR struct Dimmer size(1) Largest target is 3
;!		 -> NULL(NULL[0]), Dimmer1(BANK1[3]), 
;!
;!    DimmerLights11	PTR struct DimmerLights size(1) Largest target is 14
;!		 -> NULL(NULL[0]), DimmerLights1(BANK2[14]), 
;!
;!    DimmerLights	PTR struct DimmerLights size(1) Largest target is 14
;!		 -> NULL(NULL[0]), DimmerLights1(BANK2[14]), 
;!
;!    Product	PTR struct Product size(1) Largest target is 32
;!		 -> NULL(NULL[0]), VarProduct(BANK3[32]), 
;!
;!    DelayOff	PTR struct DelayOff size(1) Largest target is 5
;!		 -> NULL(NULL[0]), DlySw1(BANK1[5]), 
;!
;!    Buz	PTR struct Buzzer size(1) Largest target is 12
;!		 -> NULL(NULL[0]), Buz1(BANK2[12]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->_TMR0_ISR
;!    _TMR0_ISR->i1_setLoad_StatusOff
;!    _INT_ISR->_setRF_ReceiveGO
;!    _setRF_ReceiveGO->i1_RfPointSelect
;!
;!Critical Paths under _main in BANK0
;!
;!    _getTemp_AD->_getAD
;!    _getPowerFault_AD->_getAD
;!    _getLoad_AD->_getAD
;!    _Temp_Main->_setTemp_Main
;!    _setTemp_Main->_setOverTemp_Exceptions
;!    _setOverTemp_Exceptions->_DimmerLights_Exceptions
;!    _Temp_Initialization->_setTemp_Initialization
;!    _Switch_Main->_setSw_Main
;!    _setSw_Main->_Sw_DimmerOffFunc
;!    _setRF_Learn->_RfPointSelect
;!    _Sw_DimmerOnFunc->_setRF_DimmerLights
;!    _Sw_DimmerOffFunc->_setRF_DimmerLights
;!    _Sw_DimmerAdjFunc->_setDimmerLights_AdjGo
;!    _Sw_DimmerAdjFunc->_setDimmerLights_TriggerAdj
;!    _Sw_DimmerAdjFunc->_setRFSW_Status
;!    _setDimmerLights_TriggerAdj->_DimmerLightsPointSelect
;!    _setDimmerLights_AdjGo->_DimmerLightsPointSelect
;!    _Switch_Initialization->_setSw_Initialization
;!    _setSw_Initialization->_setLED
;!    _RF_Main->_setRF_Main
;!    _setRF_Main->_getRxData
;!    _getRxData->_setControl_Lights_Table
;!    _setLog_Code->_setBuz
;!    _setControl_Lights_Table->_setRFSW_AdjControl
;!    _setRFSW_Control->_setRF_DimmerLights
;!    _setDelayOff_GO->_DelayTimejudge
;!    _setRFSW_AdjControl->_setRF_DimmerValue
;!    _setRF_DimmerValue->_setDimmerLights_AdjRF
;!    _setDimmerLights_AdjRF->_getPercentValue
;!    _getPercentValue->___fttol
;!    ___ftmul->___awtoft
;!    ___ftadd->___ftmul
;!    _RF_RxDisable->_CC2500_WriteCommand
;!    _CC2500_TxData->_CC2500_WriteCommand
;!    _CC2500_RxData->_CC2500_ReadStatus
;!    _CC2500_RxData->_CC2500_WriteCommand
;!    _CC2500_RxData->_setRF_RxStatus
;!    _setRF_RxStatus->_RfPointSelect
;!    _CC2500_ReadStatus->_CC2500_ReadByte
;!    _CC2500_ReadStatus->_CC2500_WriteByte
;!    _RF_Initialization->_setRF_Initialization
;!    _PowerFault_Main->_setPowerFault_Main
;!    _setPowerFault_Main->_setPowerFault_Exceptions
;!    _setPowerFault_Exceptions->_DimmerLights_Exceptions
;!    _PowerFault_Initialization->_setPowerFault_Initialization
;!    _Mcu_Initialization->_TMR0_Set
;!    _Mcu_Initialization->_WDT_Set
;!    _MainT->_setBuz
;!    _Load_Main->_setLoad_Exceptions
;!    _setLoad_Exceptions->_DimmerLights_Exceptions
;!    _setSw_Enable->_SwPointSelect
;!    _setRF_Enable->_RfPointSelect
;!    _DimmerLights_Exceptions->_setBuz
;!    _setDimmerLights_TriggerERROR->_DimmerLightsPointSelect
;!    _setDimmerLights_ERROR->_setLED
;!    _setDimmerLights_ERROR->_setRFSW_Status
;!    _setDimmerLights_ERROR->_setSw_Status
;!    _setDimmerLights_Clear->_DimmerLightsPointSelect
;!    _Load_Initialization->_setLoad_AH_AL_Restore
;!    _LED_Main->_setLED_Main
;!    _setLED_Main->_LedPointSelect
;!    _LED_Initialization->_setLED_Initialization
;!    _setLED_Initialization->_setLED
;!    _Flash_Memory_Main->_Flash_Memory_Modify
;!    _Flash_Memory_Modify->_Flash_Memory_Read
;!    _Flash_Memory_Initialization->_setPercentValue
;!    _DimmerLights_Main->_setDimmerLights_Main
;!    _setDimmerLights_Main->_setDimmerLights_Adj
;!    _setDimmerLights_Adj->_setRF_DimmerLights
;!    _setDimmerLights->_setLED
;!    _setLED->_LedPointSelect
;!    _DimmerLights_Close->_getDimmerLights_StatusFlag
;!    _DimmerLights_Close->_setLoad_GO
;!    _DimmerLights_Initialization->_setDimmerLights_Initialization
;!    _setDimmerLights_Initialization->_DimmerLightsPointSelect
;!    _DelayOff_Main->_DlyOff_Main
;!    _DlyOff_Main->_setRF_DimmerLights
;!    _setTxData->_RfPointSelect
;!    _setSw_Status->_SwPointSelect
;!    _setRF_DimmerLights->_setPercentValue
;!    _setPercentValue->___fttol
;!    ___fttol->___ftadd
;!    ___ftdiv->___awtoft
;!    ___awtoft->___ftpack
;!    _setRFSW_Status->_RfSWPointSelect
;!    _setDimmerLights_Trigger->_DimmerLightsPointSelect
;!    _setDimmerLights_Switch->_DimmerLightsPointSelect
;!    _setBuz->___wmul
;!    _DelayOff_Initialization->_DlyOff_Initialization
;!    _DlyOff_Initialization->_DelayOffPointSelect
;!    _CC2500_PowerOnInitial->_CC2500_InitSetREG
;!    _CC2500_SIDLEMode->_CC2500_WriteCommand
;!    _CC2500_PowerRST->_DelayTime_1us
;!    _CC2500_InitSetREG->_CC2500_WriteREG
;!    _CC2500_InitPATable->_CC2500_WriteREG
;!    _CC2500_WriteREG->_CC2500_WriteByte
;!    _CC2500_FrequencyCabr->_DelayTime_1us
;!    _CC2500_ClearTXFIFO->_CC2500_WriteCommand
;!    _CC2500_ClearRXFIFO->_CC2500_WriteCommand
;!    _CC2500_WriteCommand->_CC2500_WriteByte
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
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK12
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0  109493
;!              _Buzzer_Initialization
;!                        _Buzzer_Main
;!              _CC2500_PowerOnInitial
;!            _DelayOff_Initialization
;!                      _DelayOff_Main
;!        _DimmerLights_Initialization
;!                  _DimmerLights_Main
;!        _Flash_Memory_Initialization
;!                  _Flash_Memory_Main
;!                 _LED_Initialization
;!                           _LED_Main
;!                _Load_Initialization
;!                          _Load_Main
;!                              _MainT
;!               _MainT_Initialization
;!                 _Mcu_Initialization
;!          _PowerFault_Initialization
;!                    _PowerFault_Main
;!                  _RF_Initialization
;!                            _RF_Main
;!              _Switch_Initialization
;!                        _Switch_Main
;!                _Temp_Initialization
;!                          _Temp_Main
;!                           _WDT_Main
;!                         _getLoad_AD
;!                   _getPowerFault_AD
;!                         _getTemp_AD
;! ---------------------------------------------------------------------------------
;! (1) _getTemp_AD                                           5     5      0     324
;!                                              4 BANK0      5     5      0
;!                              _getAD
;! ---------------------------------------------------------------------------------
;! (1) _getPowerFault_AD                                     5     5      0     324
;!                                              4 BANK0      5     5      0
;!                              _getAD
;! ---------------------------------------------------------------------------------
;! (1) _getLoad_AD                                           8     8      0     624
;!                                              4 BANK0      8     8      0
;!                              _getAD
;! ---------------------------------------------------------------------------------
;! (2) _getAD                                                4     1      3     293
;!                                              0 BANK0      4     1      3
;! ---------------------------------------------------------------------------------
;! (1) _WDT_Main                                             1     1      0       0
;!                                              0 BANK0      1     1      0
;!                       _WDT_Clearing
;! ---------------------------------------------------------------------------------
;! (2) _WDT_Clearing                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Temp_Main                                            0     0      0    8274
;!                       _setTemp_Main
;! ---------------------------------------------------------------------------------
;! (2) _setTemp_Main                                         3     3      0    8274
;!                                             13 BANK0      3     3      0
;!                       _getLoad_Safe
;!                         _getPF_Safe
;!             _setOverTemp_Exceptions
;! ---------------------------------------------------------------------------------
;! (3) _setOverTemp_Exceptions                               2     2      0    8274
;!                                             11 BANK0      2     2      0
;!            _DimmerLights_Exceptions
;!                             _setBuz
;!                             _setLED
;!                       _setRF_Enable
;!                       _setSw_Enable
;! ---------------------------------------------------------------------------------
;! (1) _Temp_Initialization                                  0     0      0       0
;!             _setTemp_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setTemp_Initialization                               1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Switch_Main                                          0     0      0   21707
;!                         _setSw_Main
;! ---------------------------------------------------------------------------------
;! (2) _setSw_Main                                           4     4      0   21707
;!                                             69 BANK0      4     4      0
;!                      _SwPointSelect
;!                   _Sw_DimmerAdjFunc
;!                   _Sw_DimmerOffFunc
;!                    _Sw_DimmerOnFunc
;!                             _setBuz
;!                        _setRF_Learn
;! ---------------------------------------------------------------------------------
;! (3) _setRF_Learn                                          2     1      1     315
;!                                              2 BANK0      2     1      1
;!                      _RfPointSelect
;! ---------------------------------------------------------------------------------
;! (3) _Sw_DimmerOnFunc                                      2     2      0    9556
;!                                             66 BANK0      2     2      0
;!                             _setBuz
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!                     _setRFSW_Status
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (3) _Sw_DimmerOffFunc                                     3     3      0    8993
;!                                             66 BANK0      3     3      0
;!                     _setDelayOff_GO
;!              _setDimmerLights_AdjGo
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!         _setDimmerLights_TriggerAdj
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (3) _Sw_DimmerAdjFunc                                     2     2      0    1149
;!                                              4 BANK0      2     2      0
;!              _setDimmerLights_AdjGo
;!         _setDimmerLights_TriggerAdj
;!                     _setRFSW_Status
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_TriggerAdj                           2     1      1     238
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_AdjGo                                2     1      1     238
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _Switch_Initialization                                0     0      0    1409
;!                         _TouchPower
;!               _setSw_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setSw_Initialization                                 1     1      0    1409
;!                                              4 BANK0      1     1      0
;!                             _setLED
;! ---------------------------------------------------------------------------------
;! (2) _TouchPower                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _RF_Main                                              0     0      0   29229
;!                         _setRF_Main
;! ---------------------------------------------------------------------------------
;! (2) _setRF_Main                                           3     3      0   29229
;!                                             73 BANK0      3     3      0
;!                      _CC2500_RxData
;!                      _CC2500_TxData
;!                _CC2500_WriteCommand
;!                       _RF_RxDisable
;!                      _RfPointSelect
;!                          _getRxData
;!                          _setINT_GO
;! ---------------------------------------------------------------------------------
;! (3) _getRxData                                            2     2      0   28225
;!                                             72 BANK0      1     1      0
;!                      _RfPointSelect
;!            _setControl_Lights_Table
;!                        _setLog_Code
;! ---------------------------------------------------------------------------------
;! (4) _setLog_Code                                          2     2      0    1564
;!                                             10 BANK0      2     2      0
;!                      _RfPointSelect
;!                             _setBuz
;! ---------------------------------------------------------------------------------
;! (4) _setControl_Lights_Table                              1     1      0   26608
;!                                             71 BANK0      1     1      0
;!                      _RfPointSelect
;!                             _setBuz
;!                    _setDimmerLights
;!                 _setRFSW_AdjControl
;!                    _setRFSW_Control
;!                     _setRFSW_Status
;!                       _setSw_Status
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (5) _setRFSW_Control                                      2     2      0   10674
;!                                             66 BANK0      2     2      0
;!                    _RfSWPointSelect
;!                             _setBuz
;!                     _setDelayOff_GO
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!                 _setRF_DimmerLights
;!                       _setSw_Status
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (4) _setDelayOff_GO                                       5     3      2     959
;!                                              3 BANK0      5     3      2
;!                _DelayOffPointSelect
;!                     _DelayTimejudge
;! ---------------------------------------------------------------------------------
;! (5) _DelayTimejudge                                       3     3      0     161
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (5) _setRFSW_AdjControl                                   3     3      0   11311
;!                                             68 BANK0      3     3      0
;!                    _RfSWPointSelect
;!                  _setRF_DimmerValue
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (6) _setRF_DimmerValue                                    3     3      0   11157
;!                                             65 BANK0      3     3      0
;!              _setDimmerLights_AdjRF
;! ---------------------------------------------------------------------------------
;! (7) _setDimmerLights_AdjRF                                2     2      0   11091
;!                                             63 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;!                    _getPercentValue
;! ---------------------------------------------------------------------------------
;! (8) _getPercentValue                                      6     6      0   11047
;!                                             57 BANK0      6     6      0
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (9) ___ftmul                                             16    10      6    2502
;!                                             14 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (9) ___ftadd                                             13     7      6    3118
;!                                             30 BANK0     13     7      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) _RF_RxDisable                                         1     1      0     152
;!                                              4 BANK0      1     1      0
;!                _CC2500_WriteCommand
;!                      _RfPointSelect
;!                          _setINT_GO
;! ---------------------------------------------------------------------------------
;! (3) _CC2500_TxData                                        2     2      0     160
;!                                              4 BANK0      2     2      0
;!                   _CC2500_WriteByte
;!                _CC2500_WriteCommand
;! ---------------------------------------------------------------------------------
;! (3) _CC2500_RxData                                        2     2      0     503
;!                                              4 BANK0      2     2      0
;!                    _CC2500_ReadByte
;!                  _CC2500_ReadStatus
;!                   _CC2500_WriteByte
;!                _CC2500_WriteCommand
;!                     _setRF_RxStatus
;! ---------------------------------------------------------------------------------
;! (4) _setRF_RxStatus                                       2     1      1     161
;!                                              2 BANK0      2     1      1
;!                      _RfPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _CC2500_ReadStatus                                    2     2      0     114
;!                                              2 BANK0      2     2      0
;!                    _CC2500_ReadByte
;!                   _CC2500_WriteByte
;! ---------------------------------------------------------------------------------
;! (5) _CC2500_ReadByte                                      2     2      0      46
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _RF_Initialization                                    0     0      0       0
;!               _setRF_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setRF_Initialization                                 2     2      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _PowerFault_Main                                      0     0      0    6763
;!                 _setPowerFault_Main
;! ---------------------------------------------------------------------------------
;! (2) _setPowerFault_Main                                   2     2      0    6763
;!                                             13 BANK0      2     2      0
;!                       _getLoad_Safe
;!                       _getTemp_Safe
;!           _setPowerFault_Exceptions
;! ---------------------------------------------------------------------------------
;! (3) _setPowerFault_Exceptions                             2     2      0    6763
;!                                             11 BANK0      2     2      0
;!            _DimmerLights_Exceptions
;!                             _setLED
;!                       _setRF_Enable
;!                       _setSw_Enable
;! ---------------------------------------------------------------------------------
;! (3) _getLoad_Safe                                         1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _PowerFault_Initialization                            0     0      0       0
;!       _setPowerFault_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setPowerFault_Initialization                         1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Mcu_Initialization                                   1     1      0       0
;!                                              1 BANK0      1     1      0
;!                            _ADC_Set
;!                            _INT_Set
;!                            _IOC_Set
;!                             _IO_Set
;!                           _TMR0_Set
;!                            _WDT_Set
;! ---------------------------------------------------------------------------------
;! (2) _WDT_Set                                              1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _TMR0_Set                                             1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _IO_Set                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _IOC_Set                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _INT_Set                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Set                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _MainT_Initialization                                 1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _MainT                                                0     0      0    2049
;!                             _setBuz
;!                     _setLoad_Enable
;!                       _setRF_Enable
;!                       _setSw_Enable
;!                     _setTemp_Enable
;! ---------------------------------------------------------------------------------
;! (2) _setTemp_Enable                                       1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _setLoad_Enable                                       1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Load_Main                                            5     5      0    8114
;!                                             13 BANK0      5     5      0
;!                            ___lwdiv
;!                             ___wmul
;!                         _getPF_Safe
;!                       _getTemp_Safe
;!              _setDimmerLights_Clear
;!              _setLoad_AH_AL_Restore
;!                 _setLoad_Exceptions
;! ---------------------------------------------------------------------------------
;! (2) _setLoad_Exceptions                                   2     2      0    6794
;!                                             11 BANK0      2     2      0
;!            _DimmerLights_Exceptions
;!                             _setLED
;!                       _setRF_Enable
;!                       _setSw_Enable
;! ---------------------------------------------------------------------------------
;! (4) _setSw_Enable                                         1     1      0      53
;!                                              2 BANK0      1     1      0
;!                      _SwPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _setRF_Enable                                         2     1      1     423
;!                                              2 BANK0      2     1      1
;!                      _RfPointSelect
;!                          _setINT_GO
;! ---------------------------------------------------------------------------------
;! (5) _setINT_GO                                            1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _DimmerLights_Exceptions                              1     1      0    4754
;!                                             10 BANK0      1     1      0
;!         _getDimmerLights_StatusFlag
;!                             _setBuz
;!              _setDimmerLights_ERROR
;!       _setDimmerLights_TriggerERROR
;! ---------------------------------------------------------------------------------
;! (5) _setDimmerLights_TriggerERROR                         2     1      1     254
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _setDimmerLights_ERROR                                2     2      0    2859
;!                                              4 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;!                             _setLED
;!                  _setLoad_StatusOff
;!                     _setRFSW_Status
;!                       _setSw_Status
;! ---------------------------------------------------------------------------------
;! (2) _setDimmerLights_Clear                                2     1      1     238
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (3) _getTemp_Safe                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _getPF_Safe                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     418
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _Load_Initialization                                  1     1      0      90
;!                                              2 BANK0      1     1      0
;!              _setLoad_AH_AL_Restore
;! ---------------------------------------------------------------------------------
;! (2) _setLoad_AH_AL_Restore                                2     2      0      90
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _LED_Main                                             0     0      0     154
;!                        _setLED_Main
;! ---------------------------------------------------------------------------------
;! (2) _setLED_Main                                          3     3      0     154
;!                                              2 BANK0      3     3      0
;!                     _LedPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _LED_Initialization                                   0     0      0    1475
;!              _setLED_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setLED_Initialization                                1     1      0    1475
;!                                              4 BANK0      1     1      0
;!                     _LedPointSelect
;!                             _setLED
;! ---------------------------------------------------------------------------------
;! (1) _Flash_Memory_Main                                    0     0      0     307
;!                _Flash_Memory_Modify
;! ---------------------------------------------------------------------------------
;! (2) _Flash_Memory_Modify                                  3     3      0     307
;!                                              4 BANK0      3     3      0
;!               _Flash_Memory_Erasing
;!                  _Flash_Memory_Read
;!                 _Flash_Memory_Write
;! ---------------------------------------------------------------------------------
;! (3) _Flash_Memory_Erasing                                 0     0      0       0
;!                _Flash_Memory_Unlock
;! ---------------------------------------------------------------------------------
;! (1) _Flash_Memory_Initialization                          2     2      0    5827
;!                                             61 BANK0      2     2      0
;!                  _Flash_Memory_Read
;!                 _Flash_Memory_Write
;!                    _setPercentValue
;! ---------------------------------------------------------------------------------
;! (3) _Flash_Memory_Write                                   2     2      0     130
;!                                              0 BANK0      2     2      0
;!                _Flash_Memory_Unlock
;! ---------------------------------------------------------------------------------
;! (4) _Flash_Memory_Unlock                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _Flash_Memory_Read                                    4     4      0      47
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _DimmerLights_Main                                    0     0      0   10813
;!                 _DimmerLights_Close
;!               _setDimmerLights_Main
;! ---------------------------------------------------------------------------------
;! (2) _setDimmerLights_Main                                 2     2      0   10745
;!                                             69 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;!                             _setBuz
;!                    _setDimmerLights
;!                _setDimmerLights_Adj
;! ---------------------------------------------------------------------------------
;! (3) _setDimmerLights_Adj                                  3     2      1    6961
;!                                             66 BANK0      3     2      1
;!            _DimmerLightsPointSelect
;!                  _setLoad_StatusOff
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (6) _setLoad_StatusOff                                    2     1      1     320
;!                                              0 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (5) _setDimmerLights                                      3     2      1    2000
;!                                              4 BANK0      3     2      1
;!            _DimmerLightsPointSelect
;!                             _setLED
;!                      _setLoad_Count
;!                   _setLoad_StatusOn
;! ---------------------------------------------------------------------------------
;! (6) _setLoad_StatusOn                                     2     1      1     201
;!                                              0 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (6) _setLoad_Count                                        2     2      0      44
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _setLED                                               2     1      1    1347
;!                                              2 BANK0      2     1      1
;!                     _LedPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _LedPointSelect                                       2     2      0      66
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _DimmerLights_Close                                   0     0      0      68
;!         _getDimmerLights_StatusFlag
;!                         _setLoad_GO
;! ---------------------------------------------------------------------------------
;! (3) _setLoad_GO                                           1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (5) _getDimmerLights_StatusFlag                           1     1      0      37
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _DimmerLights_Initialization                          1     1      0      44
;!                                              4 BANK0      1     1      0
;!              _Dimmer_Initialization
;!     _setDimmerLights_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setDimmerLights_Initialization                       2     2      0      44
;!                                              2 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (2) _Dimmer_Initialization                                1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _DelayOff_Main                                        0     0      0   10044
;!                        _DlyOff_Main
;! ---------------------------------------------------------------------------------
;! (2) _DlyOff_Main                                          3     3      0   10044
;!                                             66 BANK0      3     3      0
;!                _DelayOffPointSelect
;!                             _setBuz
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!                     _setRFSW_Status
;!                 _setRF_DimmerLights
;!                       _setSw_Status
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (4) _setTxData                                            3     3      0      44
;!                                              2 BANK0      2     2      0
;!                      _RfPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _RfPointSelect                                        2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (6) _setSw_Status                                         2     1      1     469
;!                                              2 BANK0      2     1      1
;!                      _SwPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _SwPointSelect                                        2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _setRF_DimmerLights                                   5     4      1    6328
;!                                             61 BANK0      5     4      1
;!                    _setPercentValue
;! ---------------------------------------------------------------------------------
;! (5) _setPercentValue                                      4     4      0    5458
;!                                             57 BANK0      4     4      0
;!                           ___awtoft
;!                            ___ftdiv
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (6) ___fttol                                             14    10      4     380
;!                                             43 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___ftdiv                                             16    10      6    2712
;!                                             14 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (6) ___awtoft                                             6     3      3    2267
;!                                              8 BANK0      6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (7) ___ftpack                                             8     3      5    2048
;!                                              0 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! (6) _setRFSW_Status                                       2     1      1     546
;!                                              2 BANK0      2     1      1
;!                    _RfSWPointSelect
;! ---------------------------------------------------------------------------------
;! (7) _RfSWPointSelect                                      2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_Trigger                              2     1      1     469
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_Switch                               2     1      1     469
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (6) _DimmerLightsPointSelect                              2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _setBuz                                               4     2      2    1511
;!                                              6 BANK0      4     2      2
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (5) ___wmul                                               6     2      4     444
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _DelayOff_Initialization                              0     0      0      53
;!              _DlyOff_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _DlyOff_Initialization                                1     1      0      53
;!                                              2 BANK0      1     1      0
;!                _DelayOffPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _DelayOffPointSelect                                  2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _CC2500_PowerOnInitial                                0     0      0    1869
;!                 _CC2500_ClearRXFIFO
;!                 _CC2500_ClearTXFIFO
;!               _CC2500_FrequencyCabr
;!                 _CC2500_InitPATable
;!                  _CC2500_InitSetREG
;!                    _CC2500_PowerRST
;!                   _CC2500_SIDLEMode
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_SIDLEMode                                     0     0      0      68
;!                _CC2500_WriteCommand
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_PowerRST                                      1     1      0     490
;!                                              6 BANK0      1     1      0
;!                   _CC2500_WriteByte
;!                      _DelayTime_1us
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_InitSetREG                                    4     4      0     354
;!                                              5 BANK0      4     4      0
;!                    _CC2500_WriteREG
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_InitPATable                                   3     3      0     309
;!                                              5 BANK0      3     3      0
;!                    _CC2500_WriteREG
;! ---------------------------------------------------------------------------------
;! (3) _CC2500_WriteREG                                      3     2      1     218
;!                                              2 BANK0      3     2      1
;!                   _CC2500_WriteByte
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_FrequencyCabr                                 0     0      0     512
;!                _CC2500_WriteCommand
;!                      _DelayTime_1us
;! ---------------------------------------------------------------------------------
;! (3) _DelayTime_1us                                        6     4      2     444
;!                                              0 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_ClearTXFIFO                                   0     0      0      68
;!                _CC2500_WriteCommand
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_ClearRXFIFO                                   0     0      0      68
;!                _CC2500_WriteCommand
;! ---------------------------------------------------------------------------------
;! (4) _CC2500_WriteCommand                                  2     2      0      68
;!                                              2 BANK0      2     2      0
;!                   _CC2500_WriteByte
;! ---------------------------------------------------------------------------------
;! (5) _CC2500_WriteByte                                     2     2      0      46
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _Buzzer_Main                                          4     4      0       0
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _Buzzer_Initialization                                1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 9
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (11) _ISR                                                 1     1      0     244
;!                                              6 COMMON     1     1      0
;!                            _INT_ISR
;!                            _IOC_ISR
;!                           _TMR0_ISR
;! ---------------------------------------------------------------------------------
;! (12) _TMR0_ISR                                            4     4      0     114
;!                                              2 COMMON     4     4      0
;!                i1_setLoad_StatusOff
;! ---------------------------------------------------------------------------------
;! (13) i1_setLoad_StatusOff                                 2     1      1     114
;!                                              0 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (12) _IOC_ISR                                             1     1      0       0
;!                                              0 COMMON     1     1      0
;!                   _setDimmerReClock
;! ---------------------------------------------------------------------------------
;! (13) _setDimmerReClock                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (12) _INT_ISR                                             0     0      0     130
;!                    _setRF_ReceiveGO
;! ---------------------------------------------------------------------------------
;! (13) _setRF_ReceiveGO                                     2     1      1     130
;!                                              2 COMMON     2     1      1
;!                    i1_RfPointSelect
;! ---------------------------------------------------------------------------------
;! (14) i1_RfPointSelect                                     2     2      0      22
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 14
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Buzzer_Initialization
;!   _Buzzer_Main
;!   _CC2500_PowerOnInitial
;!     _CC2500_ClearRXFIFO
;!       _CC2500_WriteCommand
;!         _CC2500_WriteByte
;!     _CC2500_ClearTXFIFO
;!       _CC2500_WriteCommand
;!         _CC2500_WriteByte
;!     _CC2500_FrequencyCabr
;!       _CC2500_WriteCommand
;!         _CC2500_WriteByte
;!       _DelayTime_1us
;!     _CC2500_InitPATable
;!       _CC2500_WriteREG
;!         _CC2500_WriteByte
;!     _CC2500_InitSetREG
;!       _CC2500_WriteREG
;!         _CC2500_WriteByte
;!     _CC2500_PowerRST
;!       _CC2500_WriteByte
;!       _DelayTime_1us
;!     _CC2500_SIDLEMode
;!       _CC2500_WriteCommand
;!         _CC2500_WriteByte
;!   _DelayOff_Initialization
;!     _DlyOff_Initialization
;!       _DelayOffPointSelect
;!   _DelayOff_Main
;!     _DlyOff_Main
;!       _DelayOffPointSelect
;!       _setBuz
;!         ___wmul
;!       _setDimmerLights_Switch
;!         _DimmerLightsPointSelect
;!       _setDimmerLights_Trigger
;!         _DimmerLightsPointSelect
;!       _setRFSW_Status
;!         _RfSWPointSelect
;!       _setRF_DimmerLights
;!         _setPercentValue
;!           ___awtoft
;!             ___ftpack
;!           ___ftdiv
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___fttol
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!       _setSw_Status
;!         _SwPointSelect
;!       _setTxData
;!         _RfPointSelect
;!   _DimmerLights_Initialization
;!     _Dimmer_Initialization
;!     _setDimmerLights_Initialization
;!       _DimmerLightsPointSelect
;!   _DimmerLights_Main
;!     _DimmerLights_Close
;!       _getDimmerLights_StatusFlag
;!       _setLoad_GO
;!     _setDimmerLights_Main
;!       _DimmerLightsPointSelect
;!       _setBuz
;!         ___wmul
;!       _setDimmerLights
;!         _DimmerLightsPointSelect
;!         _setLED
;!           _LedPointSelect
;!         _setLoad_Count
;!         _setLoad_StatusOn
;!       _setDimmerLights_Adj
;!         _DimmerLightsPointSelect
;!         _setLoad_StatusOff
;!         _setRF_DimmerLights
;!           _setPercentValue
;!             ___awtoft
;!               ___ftpack
;!             ___ftdiv
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___fttol
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!         _setTxData
;!           _RfPointSelect
;!   _Flash_Memory_Initialization
;!     _Flash_Memory_Read
;!     _Flash_Memory_Write
;!       _Flash_Memory_Unlock
;!     _setPercentValue
;!       ___awtoft
;!         ___ftpack
;!       ___ftdiv
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___fttol
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!   _Flash_Memory_Main
;!     _Flash_Memory_Modify
;!       _Flash_Memory_Erasing
;!         _Flash_Memory_Unlock
;!       _Flash_Memory_Read
;!       _Flash_Memory_Write
;!         _Flash_Memory_Unlock
;!   _LED_Initialization
;!     _setLED_Initialization
;!       _LedPointSelect
;!       _setLED
;!         _LedPointSelect
;!   _LED_Main
;!     _setLED_Main
;!       _LedPointSelect
;!   _Load_Initialization
;!     _setLoad_AH_AL_Restore
;!   _Load_Main
;!     ___lwdiv
;!     ___wmul
;!     _getPF_Safe
;!     _getTemp_Safe
;!     _setDimmerLights_Clear
;!       _DimmerLightsPointSelect
;!     _setLoad_AH_AL_Restore
;!     _setLoad_Exceptions
;!       _DimmerLights_Exceptions
;!         _getDimmerLights_StatusFlag
;!         _setBuz
;!           ___wmul
;!         _setDimmerLights_ERROR
;!           _DimmerLightsPointSelect
;!           _setLED
;!             _LedPointSelect
;!           _setLoad_StatusOff
;!           _setRFSW_Status
;!             _RfSWPointSelect
;!           _setSw_Status
;!             _SwPointSelect
;!         _setDimmerLights_TriggerERROR
;!           _DimmerLightsPointSelect
;!       _setLED
;!         _LedPointSelect
;!       _setRF_Enable
;!         _RfPointSelect
;!         _setINT_GO
;!       _setSw_Enable
;!         _SwPointSelect
;!   _MainT
;!     _setBuz
;!       ___wmul
;!     _setLoad_Enable
;!     _setRF_Enable
;!       _RfPointSelect
;!       _setINT_GO
;!     _setSw_Enable
;!       _SwPointSelect
;!     _setTemp_Enable
;!   _MainT_Initialization
;!   _Mcu_Initialization
;!     _ADC_Set
;!     _INT_Set
;!     _IOC_Set
;!     _IO_Set
;!     _TMR0_Set
;!     _WDT_Set
;!   _PowerFault_Initialization
;!     _setPowerFault_Initialization
;!   _PowerFault_Main
;!     _setPowerFault_Main
;!       _getLoad_Safe
;!       _getTemp_Safe
;!       _setPowerFault_Exceptions
;!         _DimmerLights_Exceptions
;!           _getDimmerLights_StatusFlag
;!           _setBuz
;!             ___wmul
;!           _setDimmerLights_ERROR
;!             _DimmerLightsPointSelect
;!             _setLED
;!               _LedPointSelect
;!             _setLoad_StatusOff
;!             _setRFSW_Status
;!               _RfSWPointSelect
;!             _setSw_Status
;!               _SwPointSelect
;!           _setDimmerLights_TriggerERROR
;!             _DimmerLightsPointSelect
;!         _setLED
;!           _LedPointSelect
;!         _setRF_Enable
;!           _RfPointSelect
;!           _setINT_GO
;!         _setSw_Enable
;!           _SwPointSelect
;!   _RF_Initialization
;!     _setRF_Initialization
;!   _RF_Main
;!     _setRF_Main
;!       _CC2500_RxData
;!         _CC2500_ReadByte
;!         _CC2500_ReadStatus
;!           _CC2500_ReadByte
;!           _CC2500_WriteByte
;!         _CC2500_WriteByte
;!         _CC2500_WriteCommand
;!           _CC2500_WriteByte
;!         _setRF_RxStatus
;!           _RfPointSelect
;!       _CC2500_TxData
;!         _CC2500_WriteByte
;!         _CC2500_WriteCommand
;!           _CC2500_WriteByte
;!       _CC2500_WriteCommand
;!         _CC2500_WriteByte
;!       _RF_RxDisable
;!         _CC2500_WriteCommand
;!           _CC2500_WriteByte
;!         _RfPointSelect
;!         _setINT_GO
;!       _RfPointSelect
;!       _getRxData
;!         _RfPointSelect
;!         _setControl_Lights_Table
;!           _RfPointSelect
;!           _setBuz
;!             ___wmul
;!           _setDimmerLights
;!             _DimmerLightsPointSelect
;!             _setLED
;!               _LedPointSelect
;!             _setLoad_Count
;!             _setLoad_StatusOn
;!           _setRFSW_AdjControl
;!             _RfSWPointSelect
;!             _setRF_DimmerValue
;!               _setDimmerLights_AdjRF
;!                 _DimmerLightsPointSelect
;!                 _getPercentValue
;!                   ___awtoft
;!                     ___ftpack
;!                   ___ftadd
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftdiv
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                   ___ftmul
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                   ___fttol
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftadd (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftmul (ARG)
;!                         ___awtoft (ARG)
;!                           ___ftpack
;!                         ___ftpack (ARG)
;!                       ___ftpack (ARG)
;!                     ___ftdiv (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!             _setTxData
;!               _RfPointSelect
;!           _setRFSW_Control
;!             _RfSWPointSelect
;!             _setBuz
;!               ___wmul
;!             _setDelayOff_GO
;!               _DelayOffPointSelect
;!               _DelayTimejudge
;!             _setDimmerLights_Switch
;!               _DimmerLightsPointSelect
;!             _setDimmerLights_Trigger
;!               _DimmerLightsPointSelect
;!             _setRF_DimmerLights
;!               _setPercentValue
;!                 ___awtoft
;!                   ___ftpack
;!                 ___ftdiv
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___fttol
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftadd (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftdiv (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!             _setSw_Status
;!               _SwPointSelect
;!             _setTxData
;!               _RfPointSelect
;!           _setRFSW_Status
;!             _RfSWPointSelect
;!           _setSw_Status
;!             _SwPointSelect
;!           _setTxData
;!             _RfPointSelect
;!         _setLog_Code
;!           _RfPointSelect
;!           _setBuz
;!             ___wmul
;!       _setINT_GO
;!   _Switch_Initialization
;!     _TouchPower
;!     _setSw_Initialization
;!       _setLED
;!         _LedPointSelect
;!   _Switch_Main
;!     _setSw_Main
;!       _SwPointSelect
;!       _Sw_DimmerAdjFunc
;!         _setDimmerLights_AdjGo
;!           _DimmerLightsPointSelect
;!         _setDimmerLights_TriggerAdj
;!           _DimmerLightsPointSelect
;!         _setRFSW_Status
;!           _RfSWPointSelect
;!       _Sw_DimmerOffFunc
;!         _setDelayOff_GO
;!           _DelayOffPointSelect
;!           _DelayTimejudge
;!         _setDimmerLights_AdjGo
;!           _DimmerLightsPointSelect
;!         _setDimmerLights_Switch
;!           _DimmerLightsPointSelect
;!         _setDimmerLights_Trigger
;!           _DimmerLightsPointSelect
;!         _setDimmerLights_TriggerAdj
;!           _DimmerLightsPointSelect
;!         _setRF_DimmerLights
;!           _setPercentValue
;!             ___awtoft
;!               ___ftpack
;!             ___ftdiv
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___fttol
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!         _setTxData
;!           _RfPointSelect
;!       _Sw_DimmerOnFunc
;!         _setBuz
;!           ___wmul
;!         _setDimmerLights_Switch
;!           _DimmerLightsPointSelect
;!         _setDimmerLights_Trigger
;!           _DimmerLightsPointSelect
;!         _setRFSW_Status
;!           _RfSWPointSelect
;!         _setRF_DimmerLights
;!           _setPercentValue
;!             ___awtoft
;!               ___ftpack
;!             ___ftdiv
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___fttol
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!         _setTxData
;!           _RfPointSelect
;!       _setBuz
;!         ___wmul
;!       _setRF_Learn
;!         _RfPointSelect
;!   _Temp_Initialization
;!     _setTemp_Initialization
;!   _Temp_Main
;!     _setTemp_Main
;!       _getLoad_Safe
;!       _getPF_Safe
;!       _setOverTemp_Exceptions
;!         _DimmerLights_Exceptions
;!           _getDimmerLights_StatusFlag
;!           _setBuz
;!             ___wmul
;!           _setDimmerLights_ERROR
;!             _DimmerLightsPointSelect
;!             _setLED
;!               _LedPointSelect
;!             _setLoad_StatusOff
;!             _setRFSW_Status
;!               _RfSWPointSelect
;!             _setSw_Status
;!               _SwPointSelect
;!           _setDimmerLights_TriggerERROR
;!             _DimmerLightsPointSelect
;!         _setBuz
;!           ___wmul
;!         _setLED
;!           _LedPointSelect
;!         _setRF_Enable
;!           _RfPointSelect
;!           _setINT_GO
;!         _setSw_Enable
;!           _SwPointSelect
;!   _WDT_Main
;!     _WDT_Clearing
;!   _getLoad_AD
;!     _getAD
;!   _getPowerFault_AD
;!     _getAD
;!   _getTemp_AD
;!     _getAD
;!
;! _ISR (ROOT)
;!   _INT_ISR
;!     _setRF_ReceiveGO
;!       i1_RfPointSelect
;!   _IOC_ISR
;!     _setDimmerReClock
;!   _TMR0_ISR
;!     i1_setLoad_StatusOff
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             3F0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       1       1        7.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      7       E       2      100.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     4C      50       5      100.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BANK1               50      0      4A       7       92.5%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BANK2               50      0      4A       9       92.5%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BITBANK3            50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BANK3               50      0      45      11       86.3%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BITBANK4            50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BANK4               50      0      47      13       88.8%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITBANK5            50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BANK5               50      0       0      15        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BITBANK6            50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BANK6               50      0       0      17        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITBANK7            50      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BANK7               50      0       0      19        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!ABS                  0      0     17E      20        0.0%
;!BITBANK8            50      0       0      21        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BANK8               50      0       0      22        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITBANK9            50      0       0      23        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BANK9               50      0       0      24        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITBANK10           50      0       0      25        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BANK10              50      0       0      26        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITBANK11           50      0       0      27        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BANK11              50      0       0      28        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITBANK12           30      0       0      29        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BANK12              30      0       0      30        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!DATA                 0      0     17E      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

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
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:   14
;; This function calls:
;;		_Buzzer_Initialization
;;		_Buzzer_Main
;;		_CC2500_PowerOnInitial
;;		_DelayOff_Initialization
;;		_DelayOff_Main
;;		_DimmerLights_Initialization
;;		_DimmerLights_Main
;;		_Flash_Memory_Initialization
;;		_Flash_Memory_Main
;;		_LED_Initialization
;;		_LED_Main
;;		_Load_Initialization
;;		_Load_Main
;;		_MainT
;;		_MainT_Initialization
;;		_Mcu_Initialization
;;		_PowerFault_Initialization
;;		_PowerFault_Main
;;		_RF_Initialization
;;		_RF_Main
;;		_Switch_Initialization
;;		_Switch_Main
;;		_Temp_Initialization
;;		_Temp_Main
;;		_WDT_Main
;;		_getLoad_AD
;;		_getPowerFault_AD
;;		_getTemp_AD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
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
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	9
	
l9712:	
;main.c: 9: MainT_Initialization();
	fcall	_MainT_Initialization
	line	10
;main.c: 10: Mcu_Initialization();
	fcall	_Mcu_Initialization
	line	11
;main.c: 11: Flash_Memory_Initialization();
	fcall	_Flash_Memory_Initialization
	line	12
;main.c: 12: LED_Initialization();
	fcall	_LED_Initialization
	line	13
;main.c: 13: Buzzer_Initialization();
	fcall	_Buzzer_Initialization
	line	16
;main.c: 15: ;;
;main.c: 16: Temp_Initialization();
	fcall	_Temp_Initialization
	line	17
;main.c: 17: Load_Initialization();
	fcall	_Load_Initialization
	line	18
;main.c: 18: PowerFault_Initialization();
	fcall	_PowerFault_Initialization
	line	19
;main.c: 19: DelayOff_Initialization();
	fcall	_DelayOff_Initialization
	line	21
;main.c: 21: DimmerLights_Initialization();
	fcall	_DimmerLights_Initialization
	line	26
;main.c: 22: ;;
;main.c: 23: ;;
;main.c: 24: ;;
;main.c: 26: Switch_Initialization();
	fcall	_Switch_Initialization
	line	27
	
l9714:	
;main.c: 27: RF_Initialization();
	fcall	_RF_Initialization
	line	28
	
l9716:	
;main.c: 28: CC2500_PowerOnInitial();
	fcall	_CC2500_PowerOnInitial
	goto	l9718
	line	30
;main.c: 30: while(1)
	
l1299:	
	line	32
	
l9718:	
;main.c: 31: {
;main.c: 32: if(TMain->PowerON)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9531
	goto	u9530
u9531:
	goto	l9722
u9530:
	line	39
	
l9720:	
;main.c: 33: {
;main.c: 35: ;;
;main.c: 39: getLoad_AD(0x05);
	movlw	(05h)
	fcall	_getLoad_AD
	line	43
;main.c: 43: getTemp_AD(0x09);
	movlw	(09h)
	fcall	_getTemp_AD
	line	47
;main.c: 47: getPowerFault_AD(0x11);
	movlw	(011h)
	fcall	_getPowerFault_AD
	line	59
;main.c: 59: Buzzer_Main();
	fcall	_Buzzer_Main
	goto	l9722
	line	61
	
l1300:	
	line	63
	
l9722:	
;main.c: 61: }
;main.c: 63: if(TMain->T0_Timerout)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9541
	goto	u9540
u9541:
	goto	l9718
u9540:
	line	65
	
l9724:	
;main.c: 64: {
;main.c: 65: TMain->T0_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	66
	
l9726:	
;main.c: 66: MainT();
	fcall	_MainT
	line	67
	
l9728:	
;main.c: 67: WDT_Main();
	fcall	_WDT_Main
	line	68
;main.c: 68: if(TMain->PowerON)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9551
	goto	u9550
u9551:
	goto	l9718
u9550:
	line	70
	
l9730:	
;main.c: 69: {
;main.c: 70: Flash_Memory_Main();
	fcall	_Flash_Memory_Main
	line	72
;main.c: 72: LED_Main();
	fcall	_LED_Main
	line	75
	
l9732:	
;main.c: 74: ;;
;main.c: 75: Temp_Main();
	fcall	_Temp_Main
	line	76
	
l9734:	
;main.c: 76: Load_Main();
	fcall	_Load_Main
	line	77
;main.c: 77: PowerFault_Main();
	fcall	_PowerFault_Main
	line	80
;main.c: 79: ;;
;main.c: 80: DimmerLights_Main();
	fcall	_DimmerLights_Main
	line	81
;main.c: 81: Switch_Main();
	fcall	_Switch_Main
	line	85
;main.c: 82: ;;
;main.c: 83: ;;
;main.c: 85: RF_Main();
	fcall	_RF_Main
	line	86
	
l9736:	
;main.c: 86: DelayOff_Main();
	fcall	_DelayOff_Main
	goto	l9718
	line	87
	
l1302:	
	goto	l9718
	line	88
	
l1301:	
	goto	l9718
	line	89
	
l1303:	
	line	30
	goto	l9718
	
l1304:	
	line	90
	
l1305:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_getTemp_AD

;; *************** function _getTemp_AD *****************
;; Defined at:
;;		line 35 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	35
global __ptext1
__ptext1:	;psect for function _getTemp_AD
psect	text1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	35
	global	__size_of_getTemp_AD
	__size_of_getTemp_AD	equ	__end_of_getTemp_AD-_getTemp_AD
	
_getTemp_AD:	
;incstack = 0
	opt	stack 10
; Regs used in _getTemp_AD: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;getTemp_AD@channel stored from wreg
	movlb 0	; select bank0
	movwf	(getTemp_AD@channel)
	line	37
	
l9478:	
;OverTemperature_B1.c: 37: if(Temp->ADtoGO)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9171
	goto	u9170
u9171:
	goto	l2054
u9170:
	line	39
	
l9480:	
;OverTemperature_B1.c: 38: {
;OverTemperature_B1.c: 39: Temp->ADRES=getAD(channel,0xf0);
	movlw	(0F0h)
	movwf	(??_getTemp_AD+0)+0
	movf	(??_getTemp_AD+0)+0,w
	movwf	(getAD@adcon1)
	movf	(getTemp_AD@channel),w
	fcall	_getAD
	movf	(_Temp),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(0+(?_getAD)),w
	movwi	[0]fsr1
	movf	(1+(?_getAD)),w
	movwi	[1]fsr1
	line	40
	
l9482:	
;OverTemperature_B1.c: 40: if(Temp->ADH[0] < Temp->ADRES)
	movf	(_Temp),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getTemp_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+0)+0+1
	movf	(_Temp),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getTemp_AD+2)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+2)+0+1
	movf	1+(??_getTemp_AD+0)+0,w
	subwf	1+(??_getTemp_AD+2)+0,w
	skipz
	goto	u9185
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u9185:
	skipnc
	goto	u9181
	goto	u9180
u9181:
	goto	l9486
u9180:
	line	42
	
l9484:	
;OverTemperature_B1.c: 41: {
;OverTemperature_B1.c: 42: Temp->ADH[0]=Temp->ADRES;
	movf	(_Temp),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_Temp),w
	addlw	06h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	43
;OverTemperature_B1.c: 43: }
	goto	l2054
	line	44
	
l2051:	
	
l9486:	
;OverTemperature_B1.c: 44: else if(Temp->ADH[1] < Temp->ADRES)
	movf	(_Temp),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getTemp_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+0)+0+1
	movf	(_Temp),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getTemp_AD+2)+0
	moviw	[1]fsr1
	movwf	(??_getTemp_AD+2)+0+1
	movf	1+(??_getTemp_AD+0)+0,w
	subwf	1+(??_getTemp_AD+2)+0,w
	skipz
	goto	u9195
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u9195:
	skipnc
	goto	u9191
	goto	u9190
u9191:
	goto	l2054
u9190:
	line	46
	
l9488:	
;OverTemperature_B1.c: 45: {
;OverTemperature_B1.c: 46: Temp->ADH[1]=Temp->ADRES;
	movf	(_Temp),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_Temp),w
	addlw	08h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	goto	l2054
	line	47
	
l2053:	
	goto	l2054
	line	48
	
l2052:	
	goto	l2054
	
l2050:	
	line	49
	
l2054:	
	return
	opt stack 0
GLOBAL	__end_of_getTemp_AD
	__end_of_getTemp_AD:
	signat	_getTemp_AD,4216
	global	_getPowerFault_AD

;; *************** function _getPowerFault_AD *****************
;; Defined at:
;;		line 49 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	49
global __ptext2
__ptext2:	;psect for function _getPowerFault_AD
psect	text2
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	49
	global	__size_of_getPowerFault_AD
	__size_of_getPowerFault_AD	equ	__end_of_getPowerFault_AD-_getPowerFault_AD
	
_getPowerFault_AD:	
;incstack = 0
	opt	stack 10
; Regs used in _getPowerFault_AD: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;getPowerFault_AD@channel stored from wreg
	movlb 0	; select bank0
	movwf	(getPowerFault_AD@channel)
	line	51
	
l9490:	
;PowerFault_B1.c: 51: if(PF->ADtoGO)
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9201
	goto	u9200
u9201:
	goto	l2351
u9200:
	line	53
	
l9492:	
;PowerFault_B1.c: 52: {
;PowerFault_B1.c: 53: PF->ADRES=getAD(channel,0xf0);
	movlw	(0F0h)
	movwf	(??_getPowerFault_AD+0)+0
	movf	(??_getPowerFault_AD+0)+0,w
	movwf	(getAD@adcon1)
	movf	(getPowerFault_AD@channel),w
	fcall	_getAD
	movf	(_PF),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(0+(?_getAD)),w
	movwi	[0]fsr1
	movf	(1+(?_getAD)),w
	movwi	[1]fsr1
	line	54
	
l9494:	
;PowerFault_B1.c: 54: if(PF->AD < PF->ADRES)
	movf	(_PF),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getPowerFault_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getPowerFault_AD+0)+0+1
	incf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getPowerFault_AD+2)+0
	moviw	[1]fsr1
	movwf	(??_getPowerFault_AD+2)+0+1
	movf	1+(??_getPowerFault_AD+0)+0,w
	subwf	1+(??_getPowerFault_AD+2)+0,w
	skipz
	goto	u9215
	movf	0+(??_getPowerFault_AD+0)+0,w
	subwf	0+(??_getPowerFault_AD+2)+0,w
u9215:
	skipnc
	goto	u9211
	goto	u9210
u9211:
	goto	l2351
u9210:
	line	56
	
l9496:	
;PowerFault_B1.c: 55: {
;PowerFault_B1.c: 56: PF->AD=PF->ADRES;
	movf	(_PF),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	incf	(_PF),w
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	goto	l2351
	line	57
	
l2350:	
	goto	l2351
	line	58
	
l2349:	
	line	59
	
l2351:	
	return
	opt stack 0
GLOBAL	__end_of_getPowerFault_AD
	__end_of_getPowerFault_AD:
	signat	_getPowerFault_AD,4216
	global	_getLoad_AD

;; *************** function _getLoad_AD *****************
;; Defined at:
;;		line 15 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    9[BANK0 ] unsigned char 
;;  i               1   11[BANK0 ] unsigned char 
;;  j               1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	15
global __ptext3
__ptext3:	;psect for function _getLoad_AD
psect	text3
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	15
	global	__size_of_getLoad_AD
	__size_of_getLoad_AD	equ	__end_of_getLoad_AD-_getLoad_AD
	
_getLoad_AD:	
;incstack = 0
	opt	stack 10
; Regs used in _getLoad_AD: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;getLoad_AD@channel stored from wreg
	movlb 0	; select bank0
	movwf	(getLoad_AD@channel)
	line	17
	
l9440:	
;OverLoad_B1.c: 17: char i=0,j=0;
	clrf	(getLoad_AD@i)
	clrf	(getLoad_AD@j)
	line	19
	
l9442:	
;OverLoad_B1.c: 19: if(Load->ADtoGO)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u9091
	goto	u9090
u9091:
	goto	l1835
u9090:
	line	21
	
l9444:	
;OverLoad_B1.c: 20: {
;OverLoad_B1.c: 21: Load->ADRES=getAD(channel,0xc0);
	movlw	(0C0h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	movwf	(getAD@adcon1)
	movf	(getLoad_AD@channel),w
	fcall	_getAD
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	032h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(0+(?_getAD)),w
	movwi	[0]fsr1
	movf	(1+(?_getAD)),w
	movwi	[1]fsr1
	line	22
	
l9446:	
;OverLoad_B1.c: 22: for(i=0 ; i<5 ;i++)
	clrf	(getLoad_AD@i)
	
l9448:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u9101
	goto	u9100
u9101:
	goto	l9452
u9100:
	goto	l9462
	
l9450:	
	goto	l9462
	line	23
	
l1828:	
	line	24
	
l9452:	
;OverLoad_B1.c: 23: {
;OverLoad_B1.c: 24: if(Load->AH[i] < Load->ADRES)
	movf	(_Load),w
	addlw	032h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getLoad_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getLoad_AD+0)+0+1
	lslf	(getLoad_AD@i),w
	addlw	08h
	addwf	(_Load),w
	movwf	(??_getLoad_AD+2)+0
	movf	0+(??_getLoad_AD+2)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getLoad_AD+3)+0
	moviw	[1]fsr1
	movwf	(??_getLoad_AD+3)+0+1
	movf	1+(??_getLoad_AD+0)+0,w
	subwf	1+(??_getLoad_AD+3)+0,w
	skipz
	goto	u9115
	movf	0+(??_getLoad_AD+0)+0,w
	subwf	0+(??_getLoad_AD+3)+0,w
u9115:
	skipnc
	goto	u9111
	goto	u9110
u9111:
	goto	l9458
u9110:
	line	26
	
l9454:	
;OverLoad_B1.c: 25: {
;OverLoad_B1.c: 26: Load->AH[i]=Load->ADRES;
	movf	(_Load),w
	addlw	032h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	lslf	(getLoad_AD@i),w
	addlw	08h
	addwf	(_Load),w
	movwf	(??_getLoad_AD+0)+0
	movf	0+(??_getLoad_AD+0)+0,w
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	27
	
l9456:	
;OverLoad_B1.c: 27: j=1;
	clrf	(getLoad_AD@j)
	incf	(getLoad_AD@j),f
	line	28
;OverLoad_B1.c: 28: break;
	goto	l9462
	line	29
	
l1830:	
	line	22
	
l9458:	
	movlw	(01h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	addwf	(getLoad_AD@i),f
	
l9460:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u9121
	goto	u9120
u9121:
	goto	l9452
u9120:
	goto	l9462
	
l1829:	
	line	31
	
l9462:	
;OverLoad_B1.c: 29: }
;OverLoad_B1.c: 30: }
;OverLoad_B1.c: 31: if(!j)
	movf	(getLoad_AD@j),f
	skipz
	goto	u9131
	goto	u9130
u9131:
	goto	l1835
u9130:
	line	33
	
l9464:	
;OverLoad_B1.c: 32: {
;OverLoad_B1.c: 33: for(i=0 ; i<5 ;i++)
	clrf	(getLoad_AD@i)
	
l9466:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u9141
	goto	u9140
u9141:
	goto	l9470
u9140:
	goto	l1835
	
l9468:	
	goto	l1835
	line	34
	
l1832:	
	line	35
	
l9470:	
;OverLoad_B1.c: 34: {
;OverLoad_B1.c: 35: if(Load->AL[i] > Load->ADRES)
	lslf	(getLoad_AD@i),w
	addlw	01Ah
	addwf	(_Load),w
	movwf	(??_getLoad_AD+0)+0
	movf	0+(??_getLoad_AD+0)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getLoad_AD+1)+0
	moviw	[1]fsr1
	movwf	(??_getLoad_AD+1)+0+1
	movf	(_Load),w
	addlw	032h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_getLoad_AD+3)+0
	moviw	[1]fsr1
	movwf	(??_getLoad_AD+3)+0+1
	movf	1+(??_getLoad_AD+1)+0,w
	subwf	1+(??_getLoad_AD+3)+0,w
	skipz
	goto	u9155
	movf	0+(??_getLoad_AD+1)+0,w
	subwf	0+(??_getLoad_AD+3)+0,w
u9155:
	skipnc
	goto	u9151
	goto	u9150
u9151:
	goto	l9474
u9150:
	line	37
	
l9472:	
;OverLoad_B1.c: 36: {
;OverLoad_B1.c: 37: Load->AL[i]=Load->ADRES;
	movf	(_Load),w
	addlw	032h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	lslf	(getLoad_AD@i),w
	addlw	01Ah
	addwf	(_Load),w
	movwf	(??_getLoad_AD+0)+0
	movf	0+(??_getLoad_AD+0)+0,w
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	38
;OverLoad_B1.c: 38: break;
	goto	l1835
	line	39
	
l1834:	
	line	33
	
l9474:	
	movlw	(01h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	addwf	(getLoad_AD@i),f
	
l9476:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u9161
	goto	u9160
u9161:
	goto	l9470
u9160:
	goto	l1835
	
l1833:	
	goto	l1835
	line	41
	
l1831:	
	goto	l1835
	line	42
	
l1827:	
	line	43
	
l1835:	
	return
	opt stack 0
GLOBAL	__end_of_getLoad_AD
	__end_of_getLoad_AD:
	signat	_getLoad_AD,4216
	global	_getAD

;; *************** function _getAD *****************
;; Defined at:
;;		line 385 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;  adcon0          1    wreg     unsigned char 
;;  adcon1          1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adcon0          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getLoad_AD
;;		_getTemp_AD
;;		_getPowerFault_AD
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	385
global __ptext4
__ptext4:	;psect for function _getAD
psect	text4
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	385
	global	__size_of_getAD
	__size_of_getAD	equ	__end_of_getAD-_getAD
	
_getAD:	
;incstack = 0
	opt	stack 10
; Regs used in _getAD: [wreg+status,2+status,0]
;getAD@adcon0 stored from wreg
	movlb 0	; select bank0
	movwf	(getAD@adcon0)
	line	387
	
l9032:	
;MCU_B1.c: 387: ADCON0=adcon0;
	movf	(getAD@adcon0),w
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	388
;MCU_B1.c: 388: ADCON1=adcon1;
	movlb 0	; select bank0
	movf	(getAD@adcon1),w
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	389
	
l9034:	
;MCU_B1.c: 389: GO_nDONE=1;
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	390
;MCU_B1.c: 390: while(GO_nDONE);
	goto	l1642
	
l1643:	
	
l1642:	
	btfsc	(1257/8)^080h,(1257)&7	;volatile
	goto	u8431
	goto	u8430
u8431:
	goto	l1642
u8430:
	goto	l9036
	
l1644:	
	line	391
	
l9036:	
;MCU_B1.c: 391: return ((ADRESH*256)+ADRESL);
	movf	(156)^080h,w	;volatile
	movlb 0	; select bank0
	clrf	(?_getAD+1)
	addwf	(?_getAD+1)
	movlb 1	; select bank1
	movf	(155)^080h,w	;volatile
	movlb 0	; select bank0
	clrf	(?_getAD)
	addwf	(?_getAD)

	goto	l1645
	
l9038:	
	line	392
	
l1645:	
	return
	opt stack 0
GLOBAL	__end_of_getAD
	__end_of_getAD:
	signat	_getAD,8314
	global	_WDT_Main

;; *************** function _WDT_Main *****************
;; Defined at:
;;		line 986 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_WDT_Clearing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	986
global __ptext5
__ptext5:	;psect for function _WDT_Main
psect	text5
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	986
	global	__size_of_WDT_Main
	__size_of_WDT_Main	equ	__end_of_WDT_Main-_WDT_Main
	
_WDT_Main:	
;incstack = 0
	opt	stack 10
; Regs used in _WDT_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	987
	
l9524:	
;MCU_B1.c: 987: if(WDT->Enable){
	movlb 1	; select bank1
	movf	(_WDT)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9261
	goto	u9260
u9261:
	goto	l1686
u9260:
	line	988
	
l9526:	
;MCU_B1.c: 988: if(WDT->Count-- > 0){
	incf	(_WDT)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	movf	(indf1),w
	xorlw	0FFh&0ffh
	skipnz
	goto	u9271
	goto	u9270
u9271:
	goto	l1686
u9270:
	line	989
	
l9528:	
;MCU_B1.c: 989: WDT->Count=10;
	movlw	(0Ah)
	movlb 0	; select bank0
	movwf	(??_WDT_Main+0)+0
	movlb 1	; select bank1
	incf	(_WDT)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_WDT_Main+0)+0,w
	movwf	indf1
	line	990
	
l9530:	
;MCU_B1.c: 990: WDT_Clearing();
	fcall	_WDT_Clearing
	goto	l1686
	line	991
	
l1685:	
	goto	l1686
	line	992
	
l1684:	
	line	993
	
l1686:	
	return
	opt stack 0
GLOBAL	__end_of_WDT_Main
	__end_of_WDT_Main:
	signat	_WDT_Main,88
	global	_WDT_Clearing

;; *************** function _WDT_Clearing *****************
;; Defined at:
;;		line 995 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WDT_Main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	995
global __ptext6
__ptext6:	;psect for function _WDT_Clearing
psect	text6
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	995
	global	__size_of_WDT_Clearing
	__size_of_WDT_Clearing	equ	__end_of_WDT_Clearing-_WDT_Clearing
	
_WDT_Clearing:	
;incstack = 0
	opt	stack 10
; Regs used in _WDT_Clearing: []
	line	996
	
l9064:	
# 996 "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
clrwdt ;# 
psect	text6
	line	997
	
l1689:	
	return
	opt stack 0
GLOBAL	__end_of_WDT_Clearing
	__end_of_WDT_Clearing:
	signat	_WDT_Clearing,88
	global	_Temp_Main

;; *************** function _Temp_Main *****************
;; Defined at:
;;		line 57 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_setTemp_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	57
global __ptext7
__ptext7:	;psect for function _Temp_Main
psect	text7
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	57
	global	__size_of_Temp_Main
	__size_of_Temp_Main	equ	__end_of_Temp_Main-_Temp_Main
	
_Temp_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _Temp_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	60
	
l9546:	
;OverTemperature_B1.c: 60: setTemp_Main();
	fcall	_setTemp_Main
	line	62
	
l2060:	
	return
	opt stack 0
GLOBAL	__end_of_Temp_Main
	__end_of_Temp_Main:
	signat	_Temp_Main,88
	global	_setTemp_Main

;; *************** function _setTemp_Main *****************
;; Defined at:
;;		line 64 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_getLoad_Safe
;;		_getPF_Safe
;;		_setOverTemp_Exceptions
;; This function is called by:
;;		_Temp_Main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	64
global __ptext8
__ptext8:	;psect for function _setTemp_Main
psect	text8
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	64
	global	__size_of_setTemp_Main
	__size_of_setTemp_Main	equ	__end_of_setTemp_Main-_setTemp_Main
	
_setTemp_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _setTemp_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	66
	
l9076:	
;OverTemperature_B1.c: 66: if(Temp->Enable)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u8481
	goto	u8480
u8481:
	goto	l2079
u8480:
	line	68
	
l9078:	
;OverTemperature_B1.c: 67: {
;OverTemperature_B1.c: 68: if(Temp->ADtoGO == 0)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u8491
	goto	u8490
u8491:
	goto	l9092
u8490:
	line	70
	
l9080:	
;OverTemperature_B1.c: 69: {
;OverTemperature_B1.c: 70: Temp->Time++;
	incf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	71
	
l9082:	
;OverTemperature_B1.c: 71: if(Temp->Time >= 500)
	incf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(01F4h)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(01F4h)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipc
	goto	u8501
	goto	u8500
u8501:
	goto	l2079
u8500:
	line	73
	
l9084:	
;OverTemperature_B1.c: 72: {
;OverTemperature_B1.c: 73: if(getLoad_Safe() && getPF_Safe())
	fcall	_getLoad_Safe
	xorlw	0&0ffh
	skipnz
	goto	u8511
	goto	u8510
u8511:
	goto	l9090
u8510:
	
l9086:	
	fcall	_getPF_Safe
	xorlw	0&0ffh
	skipnz
	goto	u8521
	goto	u8520
u8521:
	goto	l9090
u8520:
	line	75
	
l9088:	
;OverTemperature_B1.c: 74: {
;OverTemperature_B1.c: 75: Temp->Time=0;
	incf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	76
;OverTemperature_B1.c: 76: Temp->ADtoGO=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	77
;OverTemperature_B1.c: 77: Temp->Safe=0;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	78
;OverTemperature_B1.c: 78: }
	goto	l2079
	line	79
	
l2066:	
	line	81
	
l9090:	
;OverTemperature_B1.c: 79: else
;OverTemperature_B1.c: 80: {
;OverTemperature_B1.c: 81: Temp->Time=1000;
	incf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(03E8h)
	movwi	[0]fsr1
	movlw	high(03E8h)
	movwi	[1]fsr1
	goto	l2079
	line	82
	
l2067:	
	goto	l2079
	line	83
	
l2065:	
	line	84
;OverTemperature_B1.c: 82: }
;OverTemperature_B1.c: 83: }
;OverTemperature_B1.c: 84: }
	goto	l2079
	line	85
	
l2064:	
	line	87
	
l9092:	
;OverTemperature_B1.c: 85: else
;OverTemperature_B1.c: 86: {
;OverTemperature_B1.c: 87: Temp->Time++;
	incf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	88
	
l9094:	
;OverTemperature_B1.c: 88: if(Temp->Time >= 4)
	incf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(04h)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(04h)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipc
	goto	u8531
	goto	u8530
u8531:
	goto	l2079
u8530:
	line	90
	
l9096:	
;OverTemperature_B1.c: 89: {
;OverTemperature_B1.c: 90: Temp->Time=0;
	incf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	91
;OverTemperature_B1.c: 91: Temp->ADtoGO=0;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	92
	
l9098:	
;OverTemperature_B1.c: 92: Temp->AD=Temp->ADH[1];
	movf	(_Temp),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_Temp),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	93
	
l9100:	
;OverTemperature_B1.c: 93: if(Temp->ERROR)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u8541
	goto	u8540
u8541:
	goto	l9114
u8540:
	line	95
	
l9102:	
;OverTemperature_B1.c: 94: {
;OverTemperature_B1.c: 95: if(Temp->AD >= 600)
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(0258h)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(0258h)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipc
	goto	u8551
	goto	u8550
u8551:
	goto	l9112
u8550:
	line	97
	
l9104:	
;OverTemperature_B1.c: 96: {
;OverTemperature_B1.c: 97: Temp->Count++;
	movlw	(01h)
	movwf	(??_setTemp_Main+0)+0
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+0)+0,w
	addwf	indf1,f
	line	98
	
l9106:	
;OverTemperature_B1.c: 98: if(Temp->Count >= 3)
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u8561
	goto	u8560
u8561:
	goto	l9126
u8560:
	line	100
	
l9108:	
;OverTemperature_B1.c: 99: {
;OverTemperature_B1.c: 100: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	101
	
l9110:	
;OverTemperature_B1.c: 101: setOverTemp_Exceptions(0);
	movlw	(0)
	fcall	_setOverTemp_Exceptions
	goto	l9126
	line	102
	
l2072:	
	line	103
;OverTemperature_B1.c: 102: }
;OverTemperature_B1.c: 103: }
	goto	l9126
	line	104
	
l2071:	
	line	106
	
l9112:	
;OverTemperature_B1.c: 104: else
;OverTemperature_B1.c: 105: {
;OverTemperature_B1.c: 106: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l9126
	line	107
	
l2073:	
	line	108
;OverTemperature_B1.c: 107: }
;OverTemperature_B1.c: 108: }
	goto	l9126
	line	109
	
l2070:	
	line	111
	
l9114:	
;OverTemperature_B1.c: 109: else
;OverTemperature_B1.c: 110: {
;OverTemperature_B1.c: 111: if(Temp->AD <= 550)
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(0227h)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(0227h)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipnc
	goto	u8571
	goto	u8570
u8571:
	goto	l9124
u8570:
	line	113
	
l9116:	
;OverTemperature_B1.c: 112: {
;OverTemperature_B1.c: 113: Temp->Count++;
	movlw	(01h)
	movwf	(??_setTemp_Main+0)+0
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+0)+0,w
	addwf	indf1,f
	line	114
	
l9118:	
;OverTemperature_B1.c: 114: if(Temp->Count >= 3)
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u8581
	goto	u8580
u8581:
	goto	l9126
u8580:
	line	116
	
l9120:	
;OverTemperature_B1.c: 115: {
;OverTemperature_B1.c: 116: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	117
	
l9122:	
;OverTemperature_B1.c: 117: setOverTemp_Exceptions(1);
	movlw	(01h)
	fcall	_setOverTemp_Exceptions
	goto	l9126
	line	118
	
l2076:	
	line	119
;OverTemperature_B1.c: 118: }
;OverTemperature_B1.c: 119: }
	goto	l9126
	line	120
	
l2075:	
	line	122
	
l9124:	
;OverTemperature_B1.c: 120: else
;OverTemperature_B1.c: 121: {
;OverTemperature_B1.c: 122: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l9126
	line	123
	
l2077:	
	goto	l9126
	line	124
	
l2074:	
	line	125
	
l9126:	
;OverTemperature_B1.c: 123: }
;OverTemperature_B1.c: 124: }
;OverTemperature_B1.c: 125: if(Temp->ERROR == 0)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u8591
	goto	u8590
u8591:
	goto	l9130
u8590:
	line	127
	
l9128:	
;OverTemperature_B1.c: 126: {
;OverTemperature_B1.c: 127: Temp->Safe=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l9130
	line	128
	
l2078:	
	line	129
	
l9130:	
;OverTemperature_B1.c: 128: }
;OverTemperature_B1.c: 129: Product->Data[24]=Temp->AD >> 8;
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movf	1+(??_setTemp_Main+0)+0,w
	movwf	(??_setTemp_Main+2)+0
	movf	(_Product),w
	addlw	018h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+2)+0,w
	movwf	indf1
	line	130
	
l9132:	
;OverTemperature_B1.c: 130: Product->Data[25]=Temp->AD;
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTemp_Main+0)+0
	movf	(_Product),w
	addlw	019h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+0)+0,w
	movwf	indf1
	line	131
	
l9134:	
;OverTemperature_B1.c: 131: Temp->ADH[0]=0;
	movf	(_Temp),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	132
	
l9136:	
;OverTemperature_B1.c: 132: Temp->ADH[1]=0;
	movf	(_Temp),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l2079
	line	133
	
l2069:	
	goto	l2079
	line	134
	
l2068:	
	goto	l2079
	line	135
	
l2063:	
	line	136
	
l2079:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Main
	__end_of_setTemp_Main:
	signat	_setTemp_Main,88
	global	_setOverTemp_Exceptions

;; *************** function _setOverTemp_Exceptions *****************
;; Defined at:
;;		line 138 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_DimmerLights_Exceptions
;;		_setBuz
;;		_setLED
;;		_setRF_Enable
;;		_setSw_Enable
;; This function is called by:
;;		_setTemp_Main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	138
global __ptext9
__ptext9:	;psect for function _setOverTemp_Exceptions
psect	text9
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	138
	global	__size_of_setOverTemp_Exceptions
	__size_of_setOverTemp_Exceptions	equ	__end_of_setOverTemp_Exceptions-_setOverTemp_Exceptions
	
_setOverTemp_Exceptions:	
;incstack = 0
	opt	stack 5
; Regs used in _setOverTemp_Exceptions: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setOverTemp_Exceptions@command stored from wreg
	movlb 0	; select bank0
	movwf	(setOverTemp_Exceptions@command)
	line	140
	
l8742:	
;OverTemperature_B1.c: 140: Temp->ERROR=command;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setOverTemp_Exceptions@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	141
	
l8744:	
;OverTemperature_B1.c: 141: Temp->Safe=(~command) & 0x01;
	comf	(setOverTemp_Exceptions@command),w
	andlw	01h
	movwf	(??_setOverTemp_Exceptions+0)+0
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	(??_setOverTemp_Exceptions+0)+0,f
	movf	indf1,w
	xorwf	(??_setOverTemp_Exceptions+0)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_setOverTemp_Exceptions+0)+0,w
	movwf	indf1
	line	142
	
l8746:	
;OverTemperature_B1.c: 142: if(command)
	movf	(setOverTemp_Exceptions@command),w
	skipz
	goto	u8090
	goto	l8750
u8090:
	line	144
	
l8748:	
;OverTemperature_B1.c: 143: {
;OverTemperature_B1.c: 144: DimmerLights_Exceptions(1);
	movlw	(01h)
	fcall	_DimmerLights_Exceptions
	line	146
;OverTemperature_B1.c: 146: setLED(2,1);
	movlb 0	; select bank0
	clrf	(setLED@command)
	incf	(setLED@command),f
	movlw	(02h)
	fcall	_setLED
	line	148
;OverTemperature_B1.c: 148: }
	goto	l2083
	line	149
	
l2082:	
	line	151
	
l8750:	
;OverTemperature_B1.c: 149: else
;OverTemperature_B1.c: 150: {
;OverTemperature_B1.c: 151: setBuz(2,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(02h)
	fcall	_setBuz
	line	152
	
l2083:	
	line	155
;OverTemperature_B1.c: 152: }
;OverTemperature_B1.c: 155: setLED(99,command+10);
	movlb 0	; select bank0
	movf	(setOverTemp_Exceptions@command),w
	addlw	0Ah
	movwf	(??_setOverTemp_Exceptions+0)+0
	movf	(??_setOverTemp_Exceptions+0)+0,w
	movwf	(setLED@command)
	movlw	(063h)
	fcall	_setLED
	line	157
;OverTemperature_B1.c: 157: setSw_Enable((~command) & 0x01);
	movlb 0	; select bank0
	comf	(setOverTemp_Exceptions@command),w
	andlw	01h
	fcall	_setSw_Enable
	line	159
;OverTemperature_B1.c: 159: setRF_Enable(1,(~command) & 0x01);
	movlb 0	; select bank0
	comf	(setOverTemp_Exceptions@command),w
	andlw	01h
	movwf	(??_setOverTemp_Exceptions+0)+0
	movf	(??_setOverTemp_Exceptions+0)+0,w
	movwf	(setRF_Enable@command)
	movlw	(01h)
	fcall	_setRF_Enable
	line	162
	
l2084:	
	return
	opt stack 0
GLOBAL	__end_of_setOverTemp_Exceptions
	__end_of_setOverTemp_Exceptions:
	signat	_setOverTemp_Exceptions,4216
	global	_Temp_Initialization

;; *************** function _Temp_Initialization *****************
;; Defined at:
;;		line 15 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setTemp_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	15
global __ptext10
__ptext10:	;psect for function _Temp_Initialization
psect	text10
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	15
	global	__size_of_Temp_Initialization
	__size_of_Temp_Initialization	equ	__end_of_Temp_Initialization-_Temp_Initialization
	
_Temp_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Temp_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	18
	
l9428:	
;OverTemperature_B1.c: 18: setTemp_Initialization();
	fcall	_setTemp_Initialization
	line	20
	
l2038:	
	return
	opt stack 0
GLOBAL	__end_of_Temp_Initialization
	__end_of_Temp_Initialization:
	signat	_Temp_Initialization,88
	global	_setTemp_Initialization

;; *************** function _setTemp_Initialization *****************
;; Defined at:
;;		line 51 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Temp_Initialization
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	51
global __ptext11
__ptext11:	;psect for function _setTemp_Initialization
psect	text11
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	51
	global	__size_of_setTemp_Initialization
	__size_of_setTemp_Initialization	equ	__end_of_setTemp_Initialization-_setTemp_Initialization
	
_setTemp_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _setTemp_Initialization: [wregfsr1]
	line	53
	
l7306:	
;OverTemperature_B1.c: 53: Temp=&Temp1;
	movlw	(_Temp1)&0ffh
	movlb 0	; select bank0
	movwf	(??_setTemp_Initialization+0)+0
	movf	(??_setTemp_Initialization+0)+0,w
	movwf	(_Temp)
	line	54
	
l7308:	
;OverTemperature_B1.c: 54: Temp->Safe=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	55
	
l2057:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Initialization
	__end_of_setTemp_Initialization:
	signat	_setTemp_Initialization,88
	global	_Switch_Main

;; *************** function _Switch_Main *****************
;; Defined at:
;;		line 62 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_setSw_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	62
global __ptext12
__ptext12:	;psect for function _Switch_Main
psect	text12
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	62
	global	__size_of_Switch_Main
	__size_of_Switch_Main	equ	__end_of_Switch_Main-_Switch_Main
	
_Switch_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _Switch_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	65
	
l9708:	
;Switch_B1.c: 65: setSw_Main(1);
	movlw	(01h)
	fcall	_setSw_Main
	line	76
	
l2829:	
	return
	opt stack 0
GLOBAL	__end_of_Switch_Main
	__end_of_Switch_Main:
	signat	_Switch_Main,88
	global	_setSw_Main

;; *************** function _setSw_Main *****************
;; Defined at:
;;		line 112 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   72[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_SwPointSelect
;;		_Sw_DimmerAdjFunc
;;		_Sw_DimmerOffFunc
;;		_Sw_DimmerOnFunc
;;		_setBuz
;;		_setRF_Learn
;; This function is called by:
;;		_Switch_Main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	112
global __ptext13
__ptext13:	;psect for function _setSw_Main
psect	text13
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	112
	global	__size_of_setSw_Main
	__size_of_setSw_Main	equ	__end_of_setSw_Main-_setSw_Main
	
_setSw_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _setSw_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setSw_Main@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Main@sw)
	line	114
	
l9256:	
;Switch_B1.c: 114: if(Sw->Enable)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u8881
	goto	u8880
u8881:
	goto	l2860
u8880:
	line	116
	
l9258:	
;Switch_B1.c: 115: {
;Switch_B1.c: 116: SwPointSelect(sw);
	movf	(setSw_Main@sw),w
	fcall	_SwPointSelect
	line	144
	
l9260:	
;Switch_B1.c: 144: Sw->Touch=(RA6 || RA4 || RA0 || RB1)?1:0;
	movlb 0	; select bank0
	clrf	(_setSw_Main$4748)
	incf	(_setSw_Main$4748),f
	
l9262:	
	btfsc	(102/8),(102)&7	;volatile
	goto	u8891
	goto	u8890
u8891:
	goto	l9272
u8890:
	
l9264:	
	btfsc	(100/8),(100)&7	;volatile
	goto	u8901
	goto	u8900
u8901:
	goto	l9272
u8900:
	
l9266:	
	btfsc	(96/8),(96)&7	;volatile
	goto	u8911
	goto	u8910
u8911:
	goto	l9272
u8910:
	
l9268:	
	btfsc	(105/8),(105)&7	;volatile
	goto	u8921
	goto	u8920
u8921:
	goto	l9272
u8920:
	
l9270:	
	clrf	(_setSw_Main$4748)
	goto	l9272
	
l2843:	
	
l9272:	
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_setSw_Main$4748),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	148
	
l9274:	
;Switch_B1.c: 148: if(Sw->Touch)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u8931
	goto	u8930
u8931:
	goto	l9322
u8930:
	line	150
	
l9276:	
;Switch_B1.c: 149: {
;Switch_B1.c: 150: if(!Sw->Debounce)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u8941
	goto	u8940
u8941:
	goto	l9288
u8940:
	line	152
	
l9278:	
;Switch_B1.c: 151: {
;Switch_B1.c: 152: Sw->DebounceTime++;
	movlw	(01h)
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	153
	
l9280:	
;Switch_B1.c: 153: if(Sw->DebounceTime >= 5)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(05h)
	subwf	indf1,w
	skipc
	goto	u8951
	goto	u8950
u8951:
	goto	l2860
u8950:
	line	155
	
l9282:	
;Switch_B1.c: 154: {
;Switch_B1.c: 155: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	156
	
l9284:	
;Switch_B1.c: 156: Sw->Debounce=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	159
	
l9286:	
;Switch_B1.c: 159: Sw_DimmerOnFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerOnFunc
	goto	l2860
	line	162
	
l2846:	
	line	163
;Switch_B1.c: 162: }
;Switch_B1.c: 163: }
	goto	l2860
	line	164
	
l2845:	
	line	166
	
l9288:	
;Switch_B1.c: 164: else
;Switch_B1.c: 165: {
;Switch_B1.c: 166: if(!Sw->Hold1)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u8961
	goto	u8960
u8961:
	goto	l9298
u8960:
	line	168
	
l9290:	
;Switch_B1.c: 167: {
;Switch_B1.c: 168: Sw->Hold1Time++;
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	169
	
l9292:	
;Switch_B1.c: 169: if(Sw->Hold1Time >= 150)
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setSw_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setSw_Main+0)+0+1
	movlw	high(096h)
	subwf	1+(??_setSw_Main+0)+0,w
	movlw	low(096h)
	skipnz
	subwf	0+(??_setSw_Main+0)+0,w
	skipc
	goto	u8971
	goto	u8970
u8971:
	goto	l2860
u8970:
	line	171
	
l9294:	
;Switch_B1.c: 170: {
;Switch_B1.c: 171: Sw->Hold1Time=0;
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	172
;Switch_B1.c: 172: Sw->Hold1=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	175
	
l9296:	
;Switch_B1.c: 175: Sw_DimmerAdjFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerAdjFunc
	goto	l2860
	line	178
	
l2849:	
	line	179
;Switch_B1.c: 178: }
;Switch_B1.c: 179: }
	goto	l2860
	line	180
	
l2848:	
	line	182
	
l9298:	
;Switch_B1.c: 180: else
;Switch_B1.c: 181: {
;Switch_B1.c: 182: if(!Sw->Hold2)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u8981
	goto	u8980
u8981:
	goto	l9312
u8980:
	line	184
	
l9300:	
;Switch_B1.c: 183: {
;Switch_B1.c: 184: Sw->Hold2Time++;
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	185
	
l9302:	
;Switch_B1.c: 185: if(Sw->Hold2Time >= 150)
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setSw_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setSw_Main+0)+0+1
	movlw	high(096h)
	subwf	1+(??_setSw_Main+0)+0,w
	movlw	low(096h)
	skipnz
	subwf	0+(??_setSw_Main+0)+0,w
	skipc
	goto	u8991
	goto	u8990
u8991:
	goto	l2860
u8990:
	line	187
	
l9304:	
;Switch_B1.c: 186: {
;Switch_B1.c: 187: Sw->Hold2Time=0;
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	188
;Switch_B1.c: 188: Sw->Hold2=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	192
	
l9306:	
;Switch_B1.c: 192: setRF_Learn(1,1);
	clrf	(setRF_Learn@command)
	incf	(setRF_Learn@command),f
	movlw	(01h)
	fcall	_setRF_Learn
	line	194
	
l9308:	
;Switch_B1.c: 194: if(TMain->First)
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9001
	goto	u9000
u9001:
	goto	l2860
u9000:
	line	196
	
l9310:	
;Switch_B1.c: 195: {
;Switch_B1.c: 196: setBuz(2,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(02h)
	fcall	_setBuz
	goto	l2860
	line	197
	
l2853:	
	goto	l2860
	line	199
	
l2852:	
	line	200
;Switch_B1.c: 197: }
;Switch_B1.c: 199: }
;Switch_B1.c: 200: }
	goto	l2860
	line	201
	
l2851:	
	line	203
	
l9312:	
;Switch_B1.c: 201: else
;Switch_B1.c: 202: {
;Switch_B1.c: 203: if(!Sw->Hold3)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u9011
	goto	u9010
u9011:
	goto	l2860
u9010:
	line	205
	
l9314:	
;Switch_B1.c: 204: {
;Switch_B1.c: 205: Sw->Hold3Time++;
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	206
	
l9316:	
;Switch_B1.c: 206: if(Sw->Hold3Time >= 300)
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setSw_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setSw_Main+0)+0+1
	movlw	high(012Ch)
	subwf	1+(??_setSw_Main+0)+0,w
	movlw	low(012Ch)
	skipnz
	subwf	0+(??_setSw_Main+0)+0,w
	skipc
	goto	u9021
	goto	u9020
u9021:
	goto	l2860
u9020:
	line	208
	
l9318:	
;Switch_B1.c: 207: {
;Switch_B1.c: 208: Sw->Hold3Time=0;
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	209
;Switch_B1.c: 209: Sw->Hold3=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	212
	
l9320:	
;Switch_B1.c: 212: setRF_Learn(1,0);
	clrf	(setRF_Learn@command)
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l2860
	line	215
	
l2856:	
	goto	l2860
	line	216
	
l2855:	
	goto	l2860
	line	217
	
l2854:	
	goto	l2860
	line	218
	
l2850:	
	goto	l2860
	line	219
	
l2847:	
	line	220
;Switch_B1.c: 215: }
;Switch_B1.c: 216: }
;Switch_B1.c: 217: }
;Switch_B1.c: 218: }
;Switch_B1.c: 219: }
;Switch_B1.c: 220: }
	goto	l2860
	line	221
	
l2844:	
	line	223
	
l9322:	
;Switch_B1.c: 221: else
;Switch_B1.c: 222: {
;Switch_B1.c: 223: if(Sw->Debounce)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9031
	goto	u9030
u9031:
	goto	l2860
u9030:
	line	225
	
l9324:	
;Switch_B1.c: 224: {
;Switch_B1.c: 225: Sw->DebounceTime++;
	movlw	(01h)
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	226
	
l9326:	
;Switch_B1.c: 226: if(Sw->DebounceTime >= 5)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(05h)
	subwf	indf1,w
	skipc
	goto	u9041
	goto	u9040
u9041:
	goto	l2860
u9040:
	line	228
	
l9328:	
;Switch_B1.c: 227: {
;Switch_B1.c: 228: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	229
	
l9330:	
;Switch_B1.c: 229: Sw->Debounce=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	230
	
l9332:	
;Switch_B1.c: 230: Sw->Hold1Time=0;
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	231
	
l9334:	
;Switch_B1.c: 231: Sw->Hold1=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	232
	
l9336:	
;Switch_B1.c: 232: Sw->Hold2Time=0;
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	233
	
l9338:	
;Switch_B1.c: 233: Sw->Hold2=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	234
	
l9340:	
;Switch_B1.c: 234: Sw->Hold3Time=0;
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	235
	
l9342:	
;Switch_B1.c: 235: Sw->Hold3=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	238
	
l9344:	
;Switch_B1.c: 238: Sw_DimmerOffFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerOffFunc
	line	243
	
l9346:	
;Switch_B1.c: 243: setRF_Learn(1,0);
	movlb 0	; select bank0
	clrf	(setRF_Learn@command)
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l2860
	line	245
	
l2859:	
	goto	l2860
	line	246
	
l2858:	
	goto	l2860
	line	247
	
l2857:	
	goto	l2860
	line	248
	
l2841:	
	line	249
	
l2860:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Main
	__end_of_setSw_Main:
	signat	_setSw_Main,4216
	global	_setRF_Learn

;; *************** function _setRF_Learn *****************
;; Defined at:
;;		line 31 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RfPointSelect
;; This function is called by:
;;		_setSw_Main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	31
global __ptext14
__ptext14:	;psect for function _setRF_Learn
psect	text14
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	31
	global	__size_of_setRF_Learn
	__size_of_setRF_Learn	equ	__end_of_setRF_Learn-_setRF_Learn
	
_setRF_Learn:	
;incstack = 0
	opt	stack 8
; Regs used in _setRF_Learn: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_Learn@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Learn@rf)
	line	33
	
l8760:	
;RF_Control_B1.c: 33: RfPointSelect(rf);
	movf	(setRF_Learn@rf),w
	fcall	_RfPointSelect
	line	34
	
l8762:	
;RF_Control_B1.c: 34: RF->Learn=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRF_Learn@command),w
	bcf	indf1,6
	skipz
	bsf	indf1,6
	line	35
	
l2557:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Learn
	__end_of_setRF_Learn:
	signat	_setRF_Learn,8312
	global	_Sw_DimmerOnFunc

;; *************** function _Sw_DimmerOnFunc *****************
;; Defined at:
;;		line 251 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   67[BANK0 ] unsigned char 
;;  Idle            1   66[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setBuz
;;		_setDimmerLights_Switch
;;		_setDimmerLights_Trigger
;;		_setRFSW_Status
;;		_setRF_DimmerLights
;;		_setTxData
;; This function is called by:
;;		_setSw_Main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	251
global __ptext15
__ptext15:	;psect for function _Sw_DimmerOnFunc
psect	text15
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	251
	global	__size_of_Sw_DimmerOnFunc
	__size_of_Sw_DimmerOnFunc	equ	__end_of_Sw_DimmerOnFunc-_Sw_DimmerOnFunc
	
_Sw_DimmerOnFunc:	
;incstack = 0
	opt	stack 5
; Regs used in _Sw_DimmerOnFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerOnFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerOnFunc@sw)
	line	253
	
l8820:	
;Switch_B1.c: 253: char Idle=1;
	clrf	(Sw_DimmerOnFunc@Idle)
	incf	(Sw_DimmerOnFunc@Idle),f
	line	280
;Switch_B1.c: 280: if(Idle)
	movf	(Sw_DimmerOnFunc@Idle),w
	skipz
	goto	u8230
	goto	l2866
u8230:
	line	282
	
l8822:	
;Switch_B1.c: 281: {
;Switch_B1.c: 282: Sw->Flag=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,7
	line	283
	
l8824:	
;Switch_B1.c: 283: setBuz(1,100);
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	284
	
l8826:	
;Switch_B1.c: 284: if(!Sw->Status)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u8241
	goto	u8240
u8241:
	goto	l8840
u8240:
	line	286
	
l8828:	
;Switch_B1.c: 285: {
;Switch_B1.c: 286: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	287
	
l8830:	
;Switch_B1.c: 287: setRFSW_Status(sw,1);
	clrf	(setRFSW_Status@command)
	incf	(setRFSW_Status@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRFSW_Status
	line	289
	
l8832:	
;Switch_B1.c: 289: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	290
	
l8834:	
;Switch_B1.c: 290: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	incf	(setDimmerLights_Switch@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	292
	
l8836:	
;Switch_B1.c: 292: setRF_DimmerLights(sw,Sw->Status);
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(setRF_DimmerLights@on)
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRF_DimmerLights
	line	293
	
l8838:	
;Switch_B1.c: 293: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	295
;Switch_B1.c: 295: }
	movlb 0	; select bank0
	goto	l2866
	line	296
	
l2864:	
	line	298
	
l8840:	
;Switch_B1.c: 296: else
;Switch_B1.c: 297: {
;Switch_B1.c: 298: Sw->Status=0;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	line	299
	
l8842:	
;Switch_B1.c: 299: setRFSW_Status(sw,Sw->Status);
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(setRFSW_Status@command)
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRFSW_Status
	movlb 0	; select bank0
	goto	l2866
	line	300
	
l2865:	
	movlb 0	; select bank0
	goto	l2866
	line	301
	
l2863:	
	line	302
	
l2866:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerOnFunc
	__end_of_Sw_DimmerOnFunc:
	signat	_Sw_DimmerOnFunc,4216
	global	_Sw_DimmerOffFunc

;; *************** function _Sw_DimmerOffFunc *****************
;; Defined at:
;;		line 304 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   68[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setDelayOff_GO
;;		_setDimmerLights_AdjGo
;;		_setDimmerLights_Switch
;;		_setDimmerLights_Trigger
;;		_setDimmerLights_TriggerAdj
;;		_setRF_DimmerLights
;;		_setTxData
;; This function is called by:
;;		_setSw_Main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	304
global __ptext16
__ptext16:	;psect for function _Sw_DimmerOffFunc
psect	text16
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	304
	global	__size_of_Sw_DimmerOffFunc
	__size_of_Sw_DimmerOffFunc	equ	__end_of_Sw_DimmerOffFunc-_Sw_DimmerOffFunc
	
_Sw_DimmerOffFunc:	
;incstack = 0
	opt	stack 5
; Regs used in _Sw_DimmerOffFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerOffFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerOffFunc@sw)
	line	306
	
l8856:	
;Switch_B1.c: 306: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u8271
	goto	u8270
u8271:
	goto	l2873
u8270:
	line	308
	
l8858:	
;Switch_B1.c: 307: {
;Switch_B1.c: 308: Sw->Flag=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,7
	line	309
;Switch_B1.c: 309: if(Sw->Status)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u8281
	goto	u8280
u8281:
	goto	l8874
u8280:
	line	311
	
l8860:	
;Switch_B1.c: 310: {
;Switch_B1.c: 311: if(Sw->Adj)
	incf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u8291
	goto	u8290
u8291:
	goto	l2873
u8290:
	line	313
	
l8862:	
;Switch_B1.c: 312: {
;Switch_B1.c: 313: Sw->Adj=0;
	incf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	314
	
l8864:	
;Switch_B1.c: 314: setDimmerLights_TriggerAdj(sw,1);
	clrf	(setDimmerLights_TriggerAdj@command)
	incf	(setDimmerLights_TriggerAdj@command),f
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	315
	
l8866:	
;Switch_B1.c: 315: setDimmerLights_AdjGo(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_AdjGo@command)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	line	317
	
l8868:	
;Switch_B1.c: 317: Product->Data[17]=Product->Data[26+sw];
	movlb 0	; select bank0
	movf	(Sw_DimmerOffFunc@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_Sw_DimmerOffFunc+0)+0
	movf	0+(??_Sw_DimmerOffFunc+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Sw_DimmerOffFunc+1)+0
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Sw_DimmerOffFunc+1)+0,w
	movwf	indf1
	line	318
	
l8870:	
;Switch_B1.c: 318: setRF_DimmerLights(sw,Sw->Status);
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(setRF_DimmerLights@on)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setRF_DimmerLights
	line	319
	
l8872:	
;Switch_B1.c: 319: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l2873
	line	321
	
l2871:	
	line	322
;Switch_B1.c: 321: }
;Switch_B1.c: 322: }
	goto	l2873
	line	323
	
l2870:	
	line	325
	
l8874:	
;Switch_B1.c: 323: else
;Switch_B1.c: 324: {
;Switch_B1.c: 325: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	326
;Switch_B1.c: 326: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	328
;Switch_B1.c: 328: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(setDelayOff_GO@command)
	clrf	(setDelayOff_GO@value)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDelayOff_GO
	line	329
;Switch_B1.c: 329: setRF_DimmerLights(sw,Sw->Status);
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(setRF_DimmerLights@on)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setRF_DimmerLights
	line	330
;Switch_B1.c: 330: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l2873
	line	332
	
l2872:	
	goto	l2873
	line	333
	
l2869:	
	line	334
	
l2873:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerOffFunc
	__end_of_Sw_DimmerOffFunc:
	signat	_Sw_DimmerOffFunc,4216
	global	_Sw_DimmerAdjFunc

;; *************** function _Sw_DimmerAdjFunc *****************
;; Defined at:
;;		line 336 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    5[BANK0 ] unsigned char 
;;  Idle            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setDimmerLights_AdjGo
;;		_setDimmerLights_TriggerAdj
;;		_setRFSW_Status
;; This function is called by:
;;		_setSw_Main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	336
global __ptext17
__ptext17:	;psect for function _Sw_DimmerAdjFunc
psect	text17
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	336
	global	__size_of_Sw_DimmerAdjFunc
	__size_of_Sw_DimmerAdjFunc	equ	__end_of_Sw_DimmerAdjFunc-_Sw_DimmerAdjFunc
	
_Sw_DimmerAdjFunc:	
;incstack = 0
	opt	stack 7
; Regs used in _Sw_DimmerAdjFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerAdjFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerAdjFunc@sw)
	line	338
	
l8844:	
;Switch_B1.c: 338: char Idle=1;
	clrf	(Sw_DimmerAdjFunc@Idle)
	incf	(Sw_DimmerAdjFunc@Idle),f
	line	365
;Switch_B1.c: 365: if(Idle)
	movf	(Sw_DimmerAdjFunc@Idle),w
	skipz
	goto	u8250
	goto	l2878
u8250:
	line	367
	
l8846:	
;Switch_B1.c: 366: {
;Switch_B1.c: 367: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u8261
	goto	u8260
u8261:
	goto	l2878
u8260:
	line	369
	
l8848:	
;Switch_B1.c: 368: {
;Switch_B1.c: 369: Sw->Adj=1;
	incf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	370
;Switch_B1.c: 370: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	371
	
l8850:	
;Switch_B1.c: 371: setRFSW_Status(sw,1);
	clrf	(setRFSW_Status@command)
	incf	(setRFSW_Status@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setRFSW_Status
	line	373
	
l8852:	
;Switch_B1.c: 373: setDimmerLights_TriggerAdj(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_TriggerAdj@command)
	incf	(setDimmerLights_TriggerAdj@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	374
	
l8854:	
;Switch_B1.c: 374: setDimmerLights_AdjGo(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_AdjGo@command)
	incf	(setDimmerLights_AdjGo@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	movlb 0	; select bank0
	goto	l2878
	line	376
	
l2877:	
	movlb 0	; select bank0
	goto	l2878
	line	377
	
l2876:	
	line	378
	
l2878:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerAdjFunc
	__end_of_Sw_DimmerAdjFunc:
	signat	_Sw_DimmerAdjFunc,4216
	global	_setDimmerLights_TriggerAdj

;; *************** function _setDimmerLights_TriggerAdj *****************
;; Defined at:
;;		line 450 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_Sw_DimmerOffFunc
;;		_Sw_DimmerAdjFunc
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	450
global __ptext18
__ptext18:	;psect for function _setDimmerLights_TriggerAdj
psect	text18
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	450
	global	__size_of_setDimmerLights_TriggerAdj
	__size_of_setDimmerLights_TriggerAdj	equ	__end_of_setDimmerLights_TriggerAdj-_setDimmerLights_TriggerAdj
	
_setDimmerLights_TriggerAdj:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_TriggerAdj: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_TriggerAdj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_TriggerAdj@lights)
	line	452
	
l8542:	
;Dimmer_B1.c: 452: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerAdj@lights),w
	fcall	_DimmerLightsPointSelect
	line	453
	
l8544:	
;Dimmer_B1.c: 453: DimmerLights->TriggerAdj=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerAdj@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	454
	
l930:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_TriggerAdj
	__end_of_setDimmerLights_TriggerAdj:
	signat	_setDimmerLights_TriggerAdj,8312
	global	_setDimmerLights_AdjGo

;; *************** function _setDimmerLights_AdjGo *****************
;; Defined at:
;;		line 440 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_Sw_DimmerOffFunc
;;		_Sw_DimmerAdjFunc
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	440
global __ptext19
__ptext19:	;psect for function _setDimmerLights_AdjGo
psect	text19
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	440
	global	__size_of_setDimmerLights_AdjGo
	__size_of_setDimmerLights_AdjGo	equ	__end_of_setDimmerLights_AdjGo-_setDimmerLights_AdjGo
	
_setDimmerLights_AdjGo:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_AdjGo: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_AdjGo@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjGo@lights)
	line	442
	
l8538:	
;Dimmer_B1.c: 442: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjGo@lights),w
	fcall	_DimmerLightsPointSelect
	line	443
	
l8540:	
;Dimmer_B1.c: 443: DimmerLights->AdjGo=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_AdjGo@command),w
	bcf	indf1,2
	skipz
	bsf	indf1,2
	line	444
	
l924:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_AdjGo
	__end_of_setDimmerLights_AdjGo:
	signat	_setDimmerLights_AdjGo,8312
	global	_Switch_Initialization

;; *************** function _Switch_Initialization *****************
;; Defined at:
;;		line 38 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_TouchPower
;;		_setSw_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	38
global __ptext20
__ptext20:	;psect for function _Switch_Initialization
psect	text20
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	38
	global	__size_of_Switch_Initialization
	__size_of_Switch_Initialization	equ	__end_of_Switch_Initialization-_Switch_Initialization
	
_Switch_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _Switch_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	40
	
l9432:	
;Switch_B1.c: 40: TouchPower();
	fcall	_TouchPower
	line	42
	
l9434:	
;Switch_B1.c: 42: WPUB1=0;
	movlb 4	; select bank4
	bcf	(4201/8)^0200h,(4201)&7	;volatile
	line	51
	
l9436:	
;Switch_B1.c: 51: setSw_Initialization(1);
	movlw	(01h)
	fcall	_setSw_Initialization
	line	60
	
l2826:	
	return
	opt stack 0
GLOBAL	__end_of_Switch_Initialization
	__end_of_Switch_Initialization:
	signat	_Switch_Initialization,88
	global	_setSw_Initialization

;; *************** function _setSw_Initialization *****************
;; Defined at:
;;		line 78 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setLED
;; This function is called by:
;;		_Switch_Initialization
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	78
global __ptext21
__ptext21:	;psect for function _setSw_Initialization
psect	text21
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	78
	global	__size_of_setSw_Initialization
	__size_of_setSw_Initialization	equ	__end_of_setSw_Initialization-_setSw_Initialization
	
_setSw_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _setSw_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setSw_Initialization@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Initialization@sw)
	line	80
	
l9254:	
;Switch_B1.c: 80: setLED(sw,1);
	clrf	(setLED@command)
	incf	(setLED@command),f
	movf	(setSw_Initialization@sw),w
	fcall	_setLED
	line	82
;Switch_B1.c: 82: setLED(sw+1,1);
	movlb 0	; select bank0
	clrf	(setLED@command)
	incf	(setLED@command),f
	movf	(setSw_Initialization@sw),w
	addlw	01h
	fcall	_setLED
	line	84
	
l2832:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Initialization
	__end_of_setSw_Initialization:
	signat	_setSw_Initialization,4216
	global	_TouchPower

;; *************** function _TouchPower *****************
;; Defined at:
;;		line 9 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Switch_Initialization
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	9
global __ptext22
__ptext22:	;psect for function _TouchPower
psect	text22
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	9
	global	__size_of_TouchPower
	__size_of_TouchPower	equ	__end_of_TouchPower-_TouchPower
	
_TouchPower:	
;incstack = 0
	opt	stack 10
; Regs used in _TouchPower: []
	line	11
	
l9252:	
;Switch_B1.c: 11: while(!RC5)
	goto	l2816
	
l2817:	
	line	12
;Switch_B1.c: 12: RC5=1;
	bsf	(117/8),(117)&7	;volatile
	
l2816:	
	line	11
	movlb 0	; select bank0
	btfss	(117/8),(117)&7	;volatile
	goto	u8871
	goto	u8870
u8871:
	goto	l2817
u8870:
	goto	l2819
	
l2818:	
	line	13
	
l2819:	
	return
	opt stack 0
GLOBAL	__end_of_TouchPower
	__end_of_TouchPower:
	signat	_TouchPower,88
	global	_RF_Main

;; *************** function _RF_Main *****************
;; Defined at:
;;		line 24 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   13
;; This function calls:
;;		_setRF_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	24
global __ptext23
__ptext23:	;psect for function _RF_Main
psect	text23
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	24
	global	__size_of_RF_Main
	__size_of_RF_Main	equ	__end_of_RF_Main-_RF_Main
	
_RF_Main:	
;incstack = 0
	opt	stack 2
; Regs used in _RF_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	27
	
l9710:	
;RF_Control_B1.c: 27: setRF_Main(1);
	movlw	(01h)
	fcall	_setRF_Main
	line	29
	
l2554:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Main
	__end_of_RF_Main:
	signat	_RF_Main,88
	global	_setRF_Main

;; *************** function _setRF_Main *****************
;; Defined at:
;;		line 58 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1   74[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		_CC2500_RxData
;;		_CC2500_TxData
;;		_CC2500_WriteCommand
;;		_RF_RxDisable
;;		_RfPointSelect
;;		_getRxData
;;		_setINT_GO
;; This function is called by:
;;		_RF_Main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	58
global __ptext24
__ptext24:	;psect for function _setRF_Main
psect	text24
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	58
	global	__size_of_setRF_Main
	__size_of_setRF_Main	equ	__end_of_setRF_Main-_setRF_Main
	
_setRF_Main:	
;incstack = 0
	opt	stack 2
; Regs used in _setRF_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_Main@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Main@rf)
	line	60
	
l9192:	
;RF_Control_B1.c: 60: RfPointSelect(rf);
	movf	(setRF_Main@rf),w
	fcall	_RfPointSelect
	line	61
	
l9194:	
;RF_Control_B1.c: 61: if(RF->Enable)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u8741
	goto	u8740
u8741:
	goto	l2582
u8740:
	line	73
	
l9196:	
;RF_Control_B1.c: 62: {
;RF_Control_B1.c: 73: RF->Key=((RA6 || RA4 || RA0 || RB1) && !RF->Learn)?1:0;
	movlb 0	; select bank0
	clrf	(_setRF_Main$4391)
	
l9198:	
	btfsc	(102/8),(102)&7	;volatile
	goto	u8751
	goto	u8750
u8751:
	goto	l9206
u8750:
	
l9200:	
	btfsc	(100/8),(100)&7	;volatile
	goto	u8761
	goto	u8760
u8761:
	goto	l9206
u8760:
	
l9202:	
	btfsc	(96/8),(96)&7	;volatile
	goto	u8771
	goto	u8770
u8771:
	goto	l9206
u8770:
	
l9204:	
	btfss	(105/8),(105)&7	;volatile
	goto	u8781
	goto	u8780
u8781:
	goto	l9210
u8780:
	goto	l9206
	
l8260:	
	
l9206:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u8791
	goto	u8790
u8791:
	goto	l9210
u8790:
	
l9208:	
	clrf	(_setRF_Main$4391)
	incf	(_setRF_Main$4391),f
	goto	l9210
	
l2571:	
	
l9210:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_setRF_Main$4391),w
	bcf	indf1,7
	skipz
	bsf	indf1,7
	line	77
;RF_Control_B1.c: 77: if(!RF->Key)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,7
	goto	u8801
	goto	u8800
u8801:
	goto	l9232
u8800:
	line	79
	
l9212:	
;RF_Control_B1.c: 78: {
;RF_Control_B1.c: 79: if(RF->ReceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u8811
	goto	u8810
u8811:
	goto	l9220
u8810:
	line	81
	
l9214:	
;RF_Control_B1.c: 80: {
;RF_Control_B1.c: 81: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	82
	
l9216:	
;RF_Control_B1.c: 82: CC2500_RxData();
	fcall	_CC2500_RxData
	line	89
	
l9218:	
;RF_Control_B1.c: 89: getRxData(1);
	movlw	(01h)
	fcall	_getRxData
	line	92
;RF_Control_B1.c: 92: }
	goto	l9234
	line	93
	
l2573:	
	line	95
	
l9220:	
;RF_Control_B1.c: 93: else
;RF_Control_B1.c: 94: {
;RF_Control_B1.c: 95: if(!RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u8821
	goto	u8820
u8821:
	goto	l9234
u8820:
	line	98
	
l9222:	
;RF_Control_B1.c: 96: {
;RF_Control_B1.c: 98: if(!RF->RxStatus)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u8831
	goto	u8830
u8831:
	goto	l9234
u8830:
	line	100
	
l9224:	
;RF_Control_B1.c: 99: {
;RF_Control_B1.c: 100: RF->RxStatus=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	101
	
l9226:	
;RF_Control_B1.c: 101: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	102
	
l9228:	
;RF_Control_B1.c: 102: CC2500_WriteCommand(0x34);
	movlw	(034h)
	fcall	_CC2500_WriteCommand
	line	103
	
l9230:	
;RF_Control_B1.c: 103: setINT_GO(1);
	movlw	(01h)
	fcall	_setINT_GO
	goto	l9234
	line	104
	
l2576:	
	goto	l9234
	line	106
	
l2575:	
	goto	l9234
	line	107
	
l2574:	
	line	108
;RF_Control_B1.c: 104: }
;RF_Control_B1.c: 106: }
;RF_Control_B1.c: 107: }
;RF_Control_B1.c: 108: }
	goto	l9234
	line	109
	
l2572:	
	line	111
	
l9232:	
;RF_Control_B1.c: 109: else
;RF_Control_B1.c: 110: {
;RF_Control_B1.c: 111: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	goto	l9234
	line	112
	
l2577:	
	line	113
	
l9234:	
;RF_Control_B1.c: 112: }
;RF_Control_B1.c: 113: if(RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u8841
	goto	u8840
u8841:
	goto	l2582
u8840:
	line	115
	
l9236:	
;RF_Control_B1.c: 114: {
;RF_Control_B1.c: 115: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	116
	
l9238:	
;RF_Control_B1.c: 116: if(!RF->Debounce)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u8851
	goto	u8850
u8851:
	goto	l9248
u8850:
	line	118
	
l9240:	
;RF_Control_B1.c: 117: {
;RF_Control_B1.c: 118: RF->DebounceTime++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_setRF_Main+0)+0
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setRF_Main+0)+0,w
	addwf	indf1,f
	line	119
	
l9242:	
;RF_Control_B1.c: 119: if(RF->DebounceTime == 25)
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	019h&0ffh
	skipz
	goto	u8861
	goto	u8860
u8861:
	goto	l2582
u8860:
	line	121
	
l9244:	
;RF_Control_B1.c: 120: {
;RF_Control_B1.c: 121: RF->DebounceTime=0;
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	122
	
l9246:	
;RF_Control_B1.c: 122: RF->Debounce=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	goto	l2582
	line	123
	
l2580:	
	line	124
;RF_Control_B1.c: 123: }
;RF_Control_B1.c: 124: }
	goto	l2582
	line	125
	
l2579:	
	line	127
	
l9248:	
;RF_Control_B1.c: 125: else
;RF_Control_B1.c: 126: {
;RF_Control_B1.c: 127: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	128
;RF_Control_B1.c: 128: RF->TransceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	129
	
l9250:	
;RF_Control_B1.c: 129: CC2500_TxData();
	fcall	_CC2500_TxData
	goto	l2582
	line	130
	
l2581:	
	goto	l2582
	line	131
	
l2578:	
	goto	l2582
	line	138
	
l2569:	
	line	139
	
l2582:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Main
	__end_of_setRF_Main:
	signat	_setRF_Main,4216
	global	_getRxData

;; *************** function _getRxData *****************
;; Defined at:
;;		line 215 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1   72[BANK0 ] unsigned char 
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_RfPointSelect
;;		_setControl_Lights_Table
;;		_setLog_Code
;; This function is called by:
;;		_setRF_Main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	line	215
global __ptext25
__ptext25:	;psect for function _getRxData
psect	text25
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	215
	global	__size_of_getRxData
	__size_of_getRxData	equ	__end_of_getRxData-_getRxData
	
_getRxData:	
;incstack = 0
	opt	stack 2
; Regs used in _getRxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;getRxData@rf stored from wreg
	movlb 0	; select bank0
	movwf	(getRxData@rf)
	line	218
	
l8764:	
;RF_Control_B1.c: 217: unsigned char i;
;RF_Control_B1.c: 218: RfPointSelect(rf);
	movf	(getRxData@rf),w
	fcall	_RfPointSelect
	line	219
	
l8766:	
;RF_Control_B1.c: 219: if(RF->Learn)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,6
	goto	u8111
	goto	u8110
u8111:
	goto	l8774
u8110:
	line	221
	
l8768:	
;RF_Control_B1.c: 220: {
;RF_Control_B1.c: 221: if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u8121
	goto	u8120
u8121:
	goto	l2608
u8120:
	
l8770:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	064h&0ffh
	skipz
	goto	u8131
	goto	u8130
u8131:
	goto	l2608
u8130:
	line	223
	
l8772:	
;RF_Control_B1.c: 222: {
;RF_Control_B1.c: 223: setLog_Code(1);
	movlw	(01h)
	fcall	_setLog_Code
	goto	l2608
	line	224
	
l2598:	
	line	225
;RF_Control_B1.c: 224: }
;RF_Control_B1.c: 225: }
	goto	l2608
	line	226
	
l2597:	
	line	228
	
l8774:	
;RF_Control_B1.c: 226: else
;RF_Control_B1.c: 227: {
;RF_Control_B1.c: 228: if(RF_Data[0] == 0x00 && RF_Data[1] == 0x02)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u8141
	goto	u8140
u8141:
	goto	l2608
u8140:
	
l8776:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u8151
	goto	u8150
u8151:
	goto	l2608
u8150:
	line	230
	
l8778:	
;RF_Control_B1.c: 229: {
;RF_Control_B1.c: 230: if(RF_Data[12] == 0xff && RF_Data[13] == 0xff && RF_Data[14] == 0xff)
	movf	0+(_RF_Data)^080h+0Ch,w
	xorlw	0FFh&0ffh
	skipz
	goto	u8161
	goto	u8160
u8161:
	goto	l8786
u8160:
	
l8780:	
	movf	0+(_RF_Data)^080h+0Dh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u8171
	goto	u8170
u8171:
	goto	l8786
u8170:
	
l8782:	
	movf	0+(_RF_Data)^080h+0Eh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u8181
	goto	u8180
u8181:
	goto	l8786
u8180:
	line	232
	
l8784:	
;RF_Control_B1.c: 231: {
;RF_Control_B1.c: 232: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	233
;RF_Control_B1.c: 233: }
	goto	l2608
	line	234
	
l2601:	
	line	236
	
l8786:	
;RF_Control_B1.c: 234: else
;RF_Control_B1.c: 235: {
;RF_Control_B1.c: 236: if(RF_Data[12] == Product->Data[12] && RF_Data[13] == Product->Data[13] && RF_Data[14] == Product->Data[14])
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Ch,w
	xorwf	indf1,w
	skipz
	goto	u8191
	goto	u8190
u8191:
	goto	l2608
u8190:
	
l8788:	
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Dh,w
	xorwf	indf1,w
	skipz
	goto	u8201
	goto	u8200
u8201:
	goto	l2608
u8200:
	
l8790:	
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Eh,w
	xorwf	indf1,w
	skipz
	goto	u8211
	goto	u8210
u8211:
	goto	l2608
u8210:
	line	238
	
l8792:	
;RF_Control_B1.c: 237: {
;RF_Control_B1.c: 238: setControl_Lights_Table(1);
	movlw	(01h)
	fcall	_setControl_Lights_Table
	goto	l2608
	line	239
	
l2603:	
	goto	l2608
	line	240
	
l2602:	
	line	241
;RF_Control_B1.c: 239: }
;RF_Control_B1.c: 240: }
;RF_Control_B1.c: 241: }
	goto	l2608
	line	242
	
l2600:	
	goto	l2608
	
l8794:	
	goto	l2608
	
l8796:	
	goto	l2608
	line	245
	
l8798:	
;RF_Control_B1.c: 243: {
;RF_Control_B1.c: 244: ;
;RF_Control_B1.c: 245: }
	goto	l2608
	line	246
	
l2605:	
	goto	l2608
	
l8800:	
	goto	l2608
	
l8802:	
	goto	l2608
	line	249
;RF_Control_B1.c: 247: {
;RF_Control_B1.c: 248: ;
	
l2607:	
	goto	l2608
	line	254
	
l2606:	
	goto	l2608
	
l2604:	
	goto	l2608
	
l2599:	
	line	255
	
l2608:	
	return
	opt stack 0
GLOBAL	__end_of_getRxData
	__end_of_getRxData:
	signat	_getRxData,4216
	global	_setLog_Code

;; *************** function _setLog_Code *****************
;; Defined at:
;;		line 257 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_RfPointSelect
;;		_setBuz
;; This function is called by:
;;		_getRxData
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	line	257
global __ptext26
__ptext26:	;psect for function _setLog_Code
psect	text26
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	257
	global	__size_of_setLog_Code
	__size_of_setLog_Code	equ	__end_of_setLog_Code-_setLog_Code
	
_setLog_Code:	
;incstack = 0
	opt	stack 6
; Regs used in _setLog_Code: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLog_Code@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setLog_Code@rf)
	line	259
	
l8576:	
;RF_Control_B1.c: 259: RfPointSelect(rf);
	movf	(setLog_Code@rf),w
	fcall	_RfPointSelect
	line	260
	
l8578:	
;RF_Control_B1.c: 260: Product->Data[12]=RF_Data[12];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Ch,w
	movlb 0	; select bank0
	movwf	(??_setLog_Code+0)+0
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setLog_Code+0)+0,w
	movwf	indf1
	line	261
	
l8580:	
;RF_Control_B1.c: 261: Product->Data[13]=RF_Data[13];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Dh,w
	movlb 0	; select bank0
	movwf	(??_setLog_Code+0)+0
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setLog_Code+0)+0,w
	movwf	indf1
	line	262
	
l8582:	
;RF_Control_B1.c: 262: Product->Data[14]=RF_Data[14];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Eh,w
	movlb 0	; select bank0
	movwf	(??_setLog_Code+0)+0
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setLog_Code+0)+0,w
	movwf	indf1
	line	263
	
l8584:	
;RF_Control_B1.c: 263: setBuz(1,100);
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	264
	
l8586:	
;RF_Control_B1.c: 264: RF->Learn=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	265
	
l8588:	
;RF_Control_B1.c: 265: if(TMain->First)
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u7911
	goto	u7910
u7911:
	goto	l2611
u7910:
	line	267
	
l8590:	
;RF_Control_B1.c: 266: {
;RF_Control_B1.c: 267: Memory->LoopSave=1;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	268
	
l2611:	
	line	269
;RF_Control_B1.c: 268: }
;RF_Control_B1.c: 269: Memory->Modify=1;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	270
	
l2612:	
	return
	opt stack 0
GLOBAL	__end_of_setLog_Code
	__end_of_setLog_Code:
	signat	_setLog_Code,4216
	global	_setControl_Lights_Table

;; *************** function _setControl_Lights_Table *****************
;; Defined at:
;;		line 272 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1   71[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_RfPointSelect
;;		_setBuz
;;		_setDimmerLights
;;		_setRFSW_AdjControl
;;		_setRFSW_Control
;;		_setRFSW_Status
;;		_setSw_Status
;;		_setTxData
;; This function is called by:
;;		_getRxData
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	line	272
global __ptext27
__ptext27:	;psect for function _setControl_Lights_Table
psect	text27
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	272
	global	__size_of_setControl_Lights_Table
	__size_of_setControl_Lights_Table	equ	__end_of_setControl_Lights_Table-_setControl_Lights_Table
	
_setControl_Lights_Table:	
;incstack = 0
	opt	stack 2
; Regs used in _setControl_Lights_Table: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setControl_Lights_Table@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setControl_Lights_Table@rf)
	line	274
	
l8592:	
;RF_Control_B1.c: 274: RfPointSelect(rf);
	movf	(setControl_Lights_Table@rf),w
	fcall	_RfPointSelect
	line	275
	
l8594:	
;RF_Control_B1.c: 275: if(RF_Data[15] == 0x00)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,f
	skipz
	goto	u7921
	goto	u7920
u7921:
	goto	l8606
u7920:
	line	278
	
l8596:	
;RF_Control_B1.c: 276: {
;RF_Control_B1.c: 278: setDimmerLights(1,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights@status)
	movlw	(01h)
	fcall	_setDimmerLights
	line	279
;RF_Control_B1.c: 279: setRFSW_Status(1,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movlw	(01h)
	fcall	_setRFSW_Status
	line	280
;RF_Control_B1.c: 280: setSw_Status(1,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movlw	(01h)
	fcall	_setSw_Status
	line	293
	
l8598:	
;RF_Control_B1.c: 293: Product->Data[9]=0;
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	294
	
l8600:	
;RF_Control_B1.c: 294: Product->Data[11]=0;
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	295
	
l8602:	
;RF_Control_B1.c: 295: Product->Data[15]=0;
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	296
	
l8604:	
;RF_Control_B1.c: 296: Product->Data[17]=0;
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	297
;RF_Control_B1.c: 297: setBuz(1,100);
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	298
;RF_Control_B1.c: 298: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	299
;RF_Control_B1.c: 299: }
	goto	l2622
	line	300
	
l2615:	
	
l8606:	
;RF_Control_B1.c: 300: else if(RF_Data[15] == 0x20)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	020h&0ffh
	skipz
	goto	u7931
	goto	u7930
u7931:
	goto	l8612
u7930:
	line	302
	
l8608:	
;RF_Control_B1.c: 301: {
;RF_Control_B1.c: 302: Product->Data[9]=0;
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	303
;RF_Control_B1.c: 303: Product->Data[11]=0;
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	304
;RF_Control_B1.c: 304: Product->Data[17]=0;
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	305
	
l8610:	
;RF_Control_B1.c: 305: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	306
;RF_Control_B1.c: 306: }
	goto	l2622
	line	308
	
l2617:	
	
l8612:	
;RF_Control_B1.c: 308: else if(RF_Data[15] == 0x01)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	01h&0ffh
	skipz
	goto	u7941
	goto	u7940
u7941:
	goto	l8616
u7940:
	line	310
	
l8614:	
;RF_Control_B1.c: 309: {
;RF_Control_B1.c: 310: setRFSW_Control(1);
	movlw	(01h)
	fcall	_setRFSW_Control
	line	311
;RF_Control_B1.c: 311: }
	goto	l2622
	line	313
	
l2619:	
	
l8616:	
;RF_Control_B1.c: 313: else if(RF_Data[15] == 0x11)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	011h&0ffh
	skipz
	goto	u7951
	goto	u7950
u7951:
	goto	l2622
u7950:
	line	315
	
l8618:	
;RF_Control_B1.c: 314: {
;RF_Control_B1.c: 315: setRFSW_AdjControl(1);
	movlw	(01h)
	fcall	_setRFSW_AdjControl
	goto	l2622
	line	316
	
l2621:	
	goto	l2622
	line	345
	
l2620:	
	goto	l2622
	
l2618:	
	goto	l2622
	
l2616:	
	
l2622:	
	return
	opt stack 0
GLOBAL	__end_of_setControl_Lights_Table
	__end_of_setControl_Lights_Table:
	signat	_setControl_Lights_Table,4216
	global	_setRFSW_Control

;; *************** function _setRFSW_Control *****************
;; Defined at:
;;		line 369 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   67[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_RfSWPointSelect
;;		_setBuz
;;		_setDelayOff_GO
;;		_setDimmerLights_Switch
;;		_setDimmerLights_Trigger
;;		_setRF_DimmerLights
;;		_setSw_Status
;;		_setTxData
;; This function is called by:
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	line	369
global __ptext28
__ptext28:	;psect for function _setRFSW_Control
psect	text28
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	369
	global	__size_of_setRFSW_Control
	__size_of_setRFSW_Control	equ	__end_of_setRFSW_Control-_setRFSW_Control
	
_setRFSW_Control:	
;incstack = 0
	opt	stack 3
; Regs used in _setRFSW_Control: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRFSW_Control@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_Control@sw)
	line	371
	
l8478:	
;RF_Control_B1.c: 371: RfSWPointSelect(sw);
	movf	(setRFSW_Control@sw),w
	fcall	_RfSWPointSelect
	line	372
	
l8480:	
;RF_Control_B1.c: 372: if(!RFSW->Status)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u7831
	goto	u7830
u7831:
	goto	l8496
u7830:
	line	374
	
l8482:	
;RF_Control_B1.c: 373: {
;RF_Control_B1.c: 374: if(RF_Data[16] == 0x80)
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u7841
	goto	u7840
u7841:
	goto	l8486
u7840:
	line	376
	
l8484:	
;RF_Control_B1.c: 375: {
;RF_Control_B1.c: 376: setDelayOff_GO(sw,1,RF_Data[17]);
	movlb 0	; select bank0
	clrf	(setDelayOff_GO@command)
	incf	(setDelayOff_GO@command),f
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+011h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_Control+0)+0
	movf	(??_setRFSW_Control+0)+0,w
	movwf	(setDelayOff_GO@value)
	movf	(setRFSW_Control@sw),w
	fcall	_setDelayOff_GO
	goto	l8486
	line	377
	
l2630:	
	line	378
	
l8486:	
;RF_Control_B1.c: 377: }
;RF_Control_B1.c: 378: RFSW->Status=1;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	379
	
l8488:	
;RF_Control_B1.c: 379: setSw_Status(sw,1);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	incf	(setSw_Status@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	381
	
l8490:	
;RF_Control_B1.c: 381: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	382
	
l8492:	
;RF_Control_B1.c: 382: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	incf	(setDimmerLights_Switch@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Switch
	line	384
	
l8494:	
;RF_Control_B1.c: 384: setRF_DimmerLights(sw,RFSW->Status);
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	btfsc	indf1,0
	movlw	1
	movlb 0	; select bank0
	movwf	(setRF_DimmerLights@on)
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	385
;RF_Control_B1.c: 385: }
	goto	l8512
	line	386
	
l2629:	
	line	388
	
l8496:	
;RF_Control_B1.c: 386: else
;RF_Control_B1.c: 387: {
;RF_Control_B1.c: 388: if(RF_Data[16] == 0x80)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u7851
	goto	u7850
u7851:
	goto	l8500
u7850:
	line	390
	
l8498:	
;RF_Control_B1.c: 389: {
;RF_Control_B1.c: 390: setDelayOff_GO(sw,1,RF_Data[17]);
	movlb 0	; select bank0
	clrf	(setDelayOff_GO@command)
	incf	(setDelayOff_GO@command),f
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+011h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_Control+0)+0
	movf	(??_setRFSW_Control+0)+0,w
	movwf	(setDelayOff_GO@value)
	movf	(setRFSW_Control@sw),w
	fcall	_setDelayOff_GO
	line	391
;RF_Control_B1.c: 391: setRF_DimmerLights(sw,1);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	incf	(setRF_DimmerLights@on),f
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	392
;RF_Control_B1.c: 392: }
	goto	l8512
	line	393
	
l2632:	
	line	395
	
l8500:	
;RF_Control_B1.c: 393: else
;RF_Control_B1.c: 394: {
;RF_Control_B1.c: 395: RFSW->Status=0;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	396
	
l8502:	
;RF_Control_B1.c: 396: setSw_Status(sw,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	398
	
l8504:	
;RF_Control_B1.c: 398: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	399
	
l8506:	
;RF_Control_B1.c: 399: setDimmerLights_Switch(sw,RFSW->Status);
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	btfsc	indf1,0
	movlw	1
	movlb 0	; select bank0
	movwf	(setDimmerLights_Switch@command)
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Switch
	line	401
	
l8508:	
;RF_Control_B1.c: 401: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(setDelayOff_GO@command)
	clrf	(setDelayOff_GO@value)
	movf	(setRFSW_Control@sw),w
	fcall	_setDelayOff_GO
	line	402
	
l8510:	
;RF_Control_B1.c: 402: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	goto	l8512
	line	403
	
l2633:	
	goto	l8512
	line	404
	
l2631:	
	line	405
	
l8512:	
;RF_Control_B1.c: 403: }
;RF_Control_B1.c: 404: }
;RF_Control_B1.c: 405: setBuz(1,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	406
	
l8514:	
;RF_Control_B1.c: 406: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	407
	
l2634:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_Control
	__end_of_setRFSW_Control:
	signat	_setRFSW_Control,4216
	global	_setDelayOff_GO

;; *************** function _setDelayOff_GO *****************
;; Defined at:
;;		line 92 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;;  command         1    3[BANK0 ] unsigned char 
;;  value           1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DelayOffPointSelect
;;		_DelayTimejudge
;; This function is called by:
;;		_setRFSW_Control
;;		_Sw_DimmerOffFunc
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	92
global __ptext29
__ptext29:	;psect for function _setDelayOff_GO
psect	text29
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	92
	global	__size_of_setDelayOff_GO
	__size_of_setDelayOff_GO	equ	__end_of_setDelayOff_GO-_setDelayOff_GO
	
_setDelayOff_GO:	
;incstack = 0
	opt	stack 7
; Regs used in _setDelayOff_GO: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDelayOff_GO@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setDelayOff_GO@sw)
	line	94
	
l6294:	
;DelayOff_B1.c: 94: DelayOffPointSelect(sw);
	movf	(setDelayOff_GO@sw),w
	fcall	_DelayOffPointSelect
	line	95
	
l6296:	
;DelayOff_B1.c: 95: if(DelayOff->Enable)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u4661
	goto	u4660
u4661:
	goto	l676
u4660:
	line	97
	
l6298:	
;DelayOff_B1.c: 96: {
;DelayOff_B1.c: 97: DelayOff->GO=command;
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDelayOff_GO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	98
	
l6300:	
;DelayOff_B1.c: 98: if(command)
	movf	(setDelayOff_GO@command),w
	skipz
	goto	u4670
	goto	l6314
u4670:
	line	100
	
l6302:	
;DelayOff_B1.c: 99: {
;DelayOff_B1.c: 100: DelayOff->Value=DelayTimejudge(value);
	movf	(setDelayOff_GO@value),w
	fcall	_DelayTimejudge
	movlb 0	; select bank0
	movwf	(??_setDelayOff_GO+0)+0
	movlb 1	; select bank1
	incf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setDelayOff_GO+0)+0,w
	movwf	indf1
	line	101
	
l6304:	
;DelayOff_B1.c: 101: if(((value%16)==5 || !(value%16)) && value <= 0x25)
	movlw	(0Fh)
	andwf	(setDelayOff_GO@value),w
	movwf	(??_setDelayOff_GO+0)+0
	movf	0+(??_setDelayOff_GO+0)+0,w
	xorlw	05h&0ffh
	skipnz
	goto	u4681
	goto	u4680
u4681:
	goto	l6308
u4680:
	
l6306:	
	movf	(setDelayOff_GO@value),w
	andlw	0Fh
	btfss	status,2
	goto	u4691
	goto	u4690
u4691:
	goto	l6312
u4690:
	goto	l6308
	
l672:	
	
l6308:	
	movlw	(026h)
	subwf	(setDelayOff_GO@value),w
	skipnc
	goto	u4701
	goto	u4700
u4701:
	goto	l6312
u4700:
	line	103
	
l6310:	
;DelayOff_B1.c: 102: {
;DelayOff_B1.c: 103: Product->Data[26+sw]=value;
	movf	(setDelayOff_GO@value),w
	movwf	(??_setDelayOff_GO+0)+0
	movf	(setDelayOff_GO@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setDelayOff_GO+1)+0
	movf	0+(??_setDelayOff_GO+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDelayOff_GO+0)+0,w
	movwf	indf1
	line	104
;DelayOff_B1.c: 104: }
	goto	l6318
	line	105
	
l670:	
	line	107
	
l6312:	
;DelayOff_B1.c: 105: else
;DelayOff_B1.c: 106: {
;DelayOff_B1.c: 107: Product->Data[26+sw]=0x05;
	movlw	(05h)
	movwf	(??_setDelayOff_GO+0)+0
	movf	(setDelayOff_GO@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setDelayOff_GO+1)+0
	movf	0+(??_setDelayOff_GO+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDelayOff_GO+0)+0,w
	movwf	indf1
	goto	l6318
	line	108
	
l673:	
	line	109
;DelayOff_B1.c: 108: }
;DelayOff_B1.c: 109: }
	goto	l6318
	line	110
	
l669:	
	
l6314:	
;DelayOff_B1.c: 110: else if(!command)
	movf	(setDelayOff_GO@command),f
	skipz
	goto	u4711
	goto	u4710
u4711:
	goto	l6318
u4710:
	line	112
	
l6316:	
;DelayOff_B1.c: 111: {
;DelayOff_B1.c: 112: Product->Data[sw+26]=0;
	movf	(setDelayOff_GO@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setDelayOff_GO+0)+0
	movf	0+(??_setDelayOff_GO+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l6318
	line	113
	
l675:	
	goto	l6318
	line	114
	
l674:	
	
l6318:	
;DelayOff_B1.c: 113: }
;DelayOff_B1.c: 114: DelayOff->SecondTime=0;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	115
	
l6320:	
;DelayOff_B1.c: 115: DelayOff->MinuteTime=0;
	movf	(_DelayOff)^080h,w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l676
	line	116
	
l668:	
	line	117
	
l676:	
	return
	opt stack 0
GLOBAL	__end_of_setDelayOff_GO
	__end_of_setDelayOff_GO:
	signat	_setDelayOff_GO,12408
	global	_DelayTimejudge

;; *************** function _DelayTimejudge *****************
;; Defined at:
;;		line 119 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    2[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDelayOff_GO
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	line	119
global __ptext30
__ptext30:	;psect for function _DelayTimejudge
psect	text30
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	119
	global	__size_of_DelayTimejudge
	__size_of_DelayTimejudge	equ	__end_of_DelayTimejudge-_DelayTimejudge
	
_DelayTimejudge:	
;incstack = 0
	opt	stack 7
; Regs used in _DelayTimejudge: [wreg]
;DelayTimejudge@value stored from wreg
	movlb 0	; select bank0
	movwf	(DelayTimejudge@value)
	line	121
	
l6150:	
;DelayOff_B1.c: 121: char i=5;
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	122
;DelayOff_B1.c: 122: if(value == 0x05)
	movf	(DelayTimejudge@value),w
	xorlw	05h&0ffh
	skipz
	goto	u4421
	goto	u4420
u4421:
	goto	l6154
u4420:
	line	124
	
l6152:	
;DelayOff_B1.c: 123: {
;DelayOff_B1.c: 124: i=5;
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	125
;DelayOff_B1.c: 125: }
	goto	l680
	line	126
	
l679:	
	
l6154:	
;DelayOff_B1.c: 126: else if(value == 0x10)
	movf	(DelayTimejudge@value),w
	xorlw	010h&0ffh
	skipz
	goto	u4431
	goto	u4430
u4431:
	goto	l6158
u4430:
	line	128
	
l6156:	
;DelayOff_B1.c: 127: {
;DelayOff_B1.c: 128: i=10;
	movlw	(0Ah)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	129
;DelayOff_B1.c: 129: }
	goto	l680
	line	130
	
l681:	
	
l6158:	
;DelayOff_B1.c: 130: else if(value == 0x15)
	movf	(DelayTimejudge@value),w
	xorlw	015h&0ffh
	skipz
	goto	u4441
	goto	u4440
u4441:
	goto	l6162
u4440:
	line	132
	
l6160:	
;DelayOff_B1.c: 131: {
;DelayOff_B1.c: 132: i=15;
	movlw	(0Fh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	133
;DelayOff_B1.c: 133: }
	goto	l680
	line	134
	
l683:	
	
l6162:	
;DelayOff_B1.c: 134: else if(value == 0x20)
	movf	(DelayTimejudge@value),w
	xorlw	020h&0ffh
	skipz
	goto	u4451
	goto	u4450
u4451:
	goto	l6166
u4450:
	line	136
	
l6164:	
;DelayOff_B1.c: 135: {
;DelayOff_B1.c: 136: i=20;
	movlw	(014h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	137
;DelayOff_B1.c: 137: }
	goto	l680
	line	138
	
l685:	
	
l6166:	
;DelayOff_B1.c: 138: else if(value == 0x25)
	movf	(DelayTimejudge@value),w
	xorlw	025h&0ffh
	skipz
	goto	u4461
	goto	u4460
u4461:
	goto	l6170
u4460:
	line	140
	
l6168:	
;DelayOff_B1.c: 139: {
;DelayOff_B1.c: 140: i=25;
	movlw	(019h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	141
;DelayOff_B1.c: 141: }
	goto	l680
	line	142
	
l687:	
	
l6170:	
;DelayOff_B1.c: 142: else if(value == 0x30)
	movf	(DelayTimejudge@value),w
	xorlw	030h&0ffh
	skipz
	goto	u4471
	goto	u4470
u4471:
	goto	l680
u4470:
	line	144
	
l6172:	
;DelayOff_B1.c: 143: {
;DelayOff_B1.c: 144: i=30;
	movlw	(01Eh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l680
	line	145
	
l689:	
	goto	l680
	line	146
	
l688:	
	goto	l680
	
l686:	
	goto	l680
	
l684:	
	goto	l680
	
l682:	
	
l680:	
;DelayOff_B1.c: 145: }
;DelayOff_B1.c: 146: return i;
	movf	(DelayTimejudge@i),w
	goto	l690
	
l6174:	
	line	147
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTimejudge
	__end_of_DelayTimejudge:
	signat	_DelayTimejudge,4217
	global	_setRFSW_AdjControl

;; *************** function _setRFSW_AdjControl *****************
;; Defined at:
;;		line 409 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   70[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_RfSWPointSelect
;;		_setRF_DimmerValue
;;		_setTxData
;; This function is called by:
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	409
global __ptext31
__ptext31:	;psect for function _setRFSW_AdjControl
psect	text31
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	409
	global	__size_of_setRFSW_AdjControl
	__size_of_setRFSW_AdjControl	equ	__end_of_setRFSW_AdjControl-_setRFSW_AdjControl
	
_setRFSW_AdjControl:	
;incstack = 0
	opt	stack 2
; Regs used in _setRFSW_AdjControl: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRFSW_AdjControl@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_AdjControl@sw)
	line	411
	
l6552:	
;RF_Control_B1.c: 411: RfSWPointSelect(sw);
	movf	(setRFSW_AdjControl@sw),w
	fcall	_RfSWPointSelect
	line	412
	
l6554:	
;RF_Control_B1.c: 412: if(RFSW->Status)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u5061
	goto	u5060
u5061:
	goto	l6560
u5060:
	line	414
	
l6556:	
;RF_Control_B1.c: 413: {
;RF_Control_B1.c: 414: Memory->Modify=1;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	415
	
l6558:	
;RF_Control_B1.c: 415: setRF_DimmerValue(sw);
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	fcall	_setRF_DimmerValue
	line	416
;RF_Control_B1.c: 416: }
	goto	l2638
	line	417
	
l2637:	
	line	419
	
l6560:	
;RF_Control_B1.c: 417: else
;RF_Control_B1.c: 418: {
;RF_Control_B1.c: 419: Product->Data[9]=Product->Data[20+sw];
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	addlw	014h
	addwf	(_Product),w
	movwf	(??_setRFSW_AdjControl+0)+0
	movf	0+(??_setRFSW_AdjControl+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRFSW_AdjControl+1)+0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRFSW_AdjControl+1)+0,w
	movwf	indf1
	line	420
	
l2638:	
	line	421
;RF_Control_B1.c: 420: }
;RF_Control_B1.c: 421: Product->Data[17]=Product->Data[26+sw];
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setRFSW_AdjControl+0)+0
	movf	0+(??_setRFSW_AdjControl+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRFSW_AdjControl+1)+0
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRFSW_AdjControl+1)+0,w
	movwf	indf1
	line	422
	
l6562:	
;RF_Control_B1.c: 422: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	423
	
l2639:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_AdjControl
	__end_of_setRFSW_AdjControl:
	signat	_setRFSW_AdjControl,4216
	global	_setRF_DimmerValue

;; *************** function _setRF_DimmerValue *****************
;; Defined at:
;;		line 433 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   67[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setDimmerLights_AdjRF
;; This function is called by:
;;		_setRFSW_AdjControl
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	line	433
global __ptext32
__ptext32:	;psect for function _setRF_DimmerValue
psect	text32
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	433
	global	__size_of_setRF_DimmerValue
	__size_of_setRF_DimmerValue	equ	__end_of_setRF_DimmerValue-_setRF_DimmerValue
	
_setRF_DimmerValue:	
;incstack = 0
	opt	stack 2
; Regs used in _setRF_DimmerValue: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_DimmerValue@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_DimmerValue@lights)
	line	435
	
l6404:	
;RF_Control_B1.c: 435: if(RF_Data[9] > 0x64)
	movlw	(065h)
	movlb 1	; select bank1
	subwf	0+(_RF_Data)^080h+09h,w
	skipc
	goto	u4911
	goto	u4910
u4911:
	goto	l6408
u4910:
	line	437
	
l6406:	
;RF_Control_B1.c: 436: {
;RF_Control_B1.c: 437: RF_Data[9]=0x64;
	movlw	(064h)
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(??_setRF_DimmerValue+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+09h
	goto	l6408
	line	438
	
l2645:	
	line	439
	
l6408:	
;RF_Control_B1.c: 438: }
;RF_Control_B1.c: 439: Product->Data[9]=RF_Data[9];
	movf	0+(_RF_Data)^080h+09h,w
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	440
	
l6410:	
;RF_Control_B1.c: 440: Product->Data[11]=lights;
	movf	(setRF_DimmerValue@lights),w
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	441
	
l6412:	
;RF_Control_B1.c: 441: Product->Data[(20+lights)]=Product->Data[9];
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(setRF_DimmerValue@lights),w
	addlw	014h
	addwf	(_Product),w
	movwf	(??_setRF_DimmerValue+1)+0
	movf	0+(??_setRF_DimmerValue+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	442
	
l6414:	
;RF_Control_B1.c: 442: setDimmerLights_AdjRF(lights);
	movf	(setRF_DimmerValue@lights),w
	fcall	_setDimmerLights_AdjRF
	line	443
	
l2646:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerValue
	__end_of_setRF_DimmerValue:
	signat	_setRF_DimmerValue,4216
	global	_setDimmerLights_AdjRF

;; *************** function _setDimmerLights_AdjRF *****************
;; Defined at:
;;		line 423 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   64[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_getPercentValue
;; This function is called by:
;;		_setRF_DimmerValue
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	423
global __ptext33
__ptext33:	;psect for function _setDimmerLights_AdjRF
psect	text33
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	423
	global	__size_of_setDimmerLights_AdjRF
	__size_of_setDimmerLights_AdjRF	equ	__end_of_setDimmerLights_AdjRF-_setDimmerLights_AdjRF
	
_setDimmerLights_AdjRF:	
;incstack = 0
	opt	stack 2
; Regs used in _setDimmerLights_AdjRF: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_AdjRF@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjRF@lights)
	line	425
	
l6176:	
;Dimmer_B1.c: 425: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjRF@lights),w
	fcall	_DimmerLightsPointSelect
	line	426
	
l6178:	
;Dimmer_B1.c: 426: DimmerLights->AdjRF=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	427
	
l6180:	
;Dimmer_B1.c: 427: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	428
	
l6182:	
;Dimmer_B1.c: 428: DimmerLights->MaxmumValue=getPercentValue(Product->Data[9]);
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_getPercentValue
	movlb 0	; select bank0
	movwf	(??_setDimmerLights_AdjRF+0)+0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_AdjRF+0)+0,w
	movwf	indf1
	line	429
	
l915:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_AdjRF
	__end_of_setDimmerLights_AdjRF:
	signat	_setDimmerLights_AdjRF,4216
	global	_getPercentValue

;; *************** function _getPercentValue *****************
;; Defined at:
;;		line 490 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   59[BANK0 ] unsigned char 
;;  i               3   60[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___fttol
;; This function is called by:
;;		_setDimmerLights_AdjRF
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	line	490
global __ptext34
__ptext34:	;psect for function _getPercentValue
psect	text34
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	490
	global	__size_of_getPercentValue
	__size_of_getPercentValue	equ	__end_of_getPercentValue-_getPercentValue
	
_getPercentValue:	
;incstack = 0
	opt	stack 2
; Regs used in _getPercentValue: [wreg+status,2+status,0+pclath+cstack]
;getPercentValue@value stored from wreg
	movlb 0	; select bank0
	movwf	(getPercentValue@value)
	line	493
	
l6138:	
;Dimmer_B1.c: 493: float i=((char)((100-20)*1.5))-((char)((100-55)*1.5));
	movlw	0x0
	movwf	(getPercentValue@i)
	movlw	0x54
	movwf	(getPercentValue@i+1)
	movlw	0x42
	movwf	(getPercentValue@i+2)
	line	494
	
l6140:	
;Dimmer_B1.c: 494: i/=100;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movf	(getPercentValue@i),w
	movwf	(___ftdiv@f1)
	movf	(getPercentValue@i+1),w
	movwf	(___ftdiv@f1+1)
	movf	(getPercentValue@i+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movlb 0	; select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(getPercentValue@i)
	movf	(1+(?___ftdiv)),w
	movwf	(getPercentValue@i+1)
	movf	(2+(?___ftdiv)),w
	movwf	(getPercentValue@i+2)
	line	495
	
l6142:	
;Dimmer_B1.c: 495: return (char)(((100-value)*i)+((char)((100-55)*1.5)));
	movf	(getPercentValue@value),w
	movwf	(??_getPercentValue+0)+0
	clrf	(??_getPercentValue+0)+0+1
	comf	(??_getPercentValue+0)+0,f
	comf	(??_getPercentValue+0)+1,f
	incf	(??_getPercentValue+0)+0,f
	skipnz
	incf	(??_getPercentValue+0)+1,f
	movf	0+(??_getPercentValue+0)+0,w
	addlw	low(064h)
	movwf	(___awtoft@c)
	movlw	high(064h)
	addwfc	1+(??_getPercentValue+0)+0,w
	movwf	1+(___awtoft@c)
	fcall	___awtoft
	movlb 0	; select bank0
	movf	(0+(?___awtoft)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftmul@f2+2)
	movf	(getPercentValue@i),w
	movwf	(___ftmul@f1)
	movf	(getPercentValue@i+1),w
	movwf	(___ftmul@f1+1)
	movf	(getPercentValue@i+2),w
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	movlb 0	; select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x86
	movwf	(___ftadd@f1+1)
	movlw	0x42
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	movlb 0	; select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movlb 0	; select bank0
	movf	0+(((0+(?___fttol)))),w
	goto	l936
	
l6144:	
	line	503
	
l936:	
	return
	opt stack 0
GLOBAL	__end_of_getPercentValue
	__end_of_getPercentValue:
	signat	_getPercentValue,4217
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   14[BANK0 ] float 
;;  f2              3   17[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   25[BANK0 ] unsigned um
;;  sign            1   29[BANK0 ] unsigned char 
;;  cntr            1   28[BANK0 ] unsigned char 
;;  exp             1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   14[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      16       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_getPercentValue
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
	line	62
global __ptext35
__ptext35:	;psect for function ___ftmul
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l6040:	
	movlb 0	; select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l6046
u4180:
	line	68
	
l6042:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l3333
	
l6044:	
	goto	l3333
	
l3332:	
	line	69
	
l6046:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u4191
	goto	u4190
u4191:
	goto	l6052
u4190:
	line	70
	
l6048:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l3333
	
l6050:	
	goto	l3333
	
l3334:	
	line	71
	
l6052:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u4205:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4200:
	decfsz	wreg,f
	goto	u4205
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u4215:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4210:
	decfsz	wreg,f
	goto	u4215
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l6054:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l6056:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l6058:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l6060:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l6062:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l6064
	line	135
	
l3335:	
	line	136
	
l6064:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4221
	goto	u4220
u4221:
	goto	l6068
u4220:
	line	137
	
l6066:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l6068
	
l3336:	
	line	138
	
l6068:	
	movlw	01h
u4235:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u4235

	line	139
	
l6070:	
	movlw	01h
u4245:
	lslf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	decfsz	wreg,f
	goto	u4245
	line	140
	
l6072:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4251
	goto	u4250
u4251:
	goto	l6064
u4250:
	goto	l6074
	
l3337:	
	line	143
	
l6074:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l6076
	line	144
	
l3338:	
	line	145
	
l6076:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l6080
u4260:
	line	146
	
l6078:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l6080
	
l3339:	
	line	147
	
l6080:	
	movlw	01h
u4275:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u4275

	line	148
	
l6082:	
	movlw	01h
u4285:
	lsrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	decfsz	wreg,f
	goto	u4285

	line	149
	
l6084:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4291
	goto	u4290
u4291:
	goto	l6076
u4290:
	goto	l6086
	
l3340:	
	line	156
	
l6086:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movlb 0	; select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l3333
	
l6088:	
	line	157
	
l3333:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   30[BANK0 ] float 
;;  f2              3   33[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   42[BANK0 ] unsigned char 
;;  exp2            1   41[BANK0 ] unsigned char 
;;  sign            1   40[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   30[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      13       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_getPercentValue
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
	line	86
global __ptext36
__ptext36:	;psect for function ___ftadd
psect	text36
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l5926:	
	movlb 0	; select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l5928:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3870
	goto	l5934
u3870:
	
l5930:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3881
	goto	u3880
u3881:
	goto	l5938
u3880:
	
l5932:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3891
	goto	u3890
u3891:
	goto	l5938
u3890:
	goto	l5934
	
l3286:	
	line	93
	
l5934:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3287
	
l5936:	
	goto	l3287
	
l3284:	
	line	94
	
l5938:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u3900
	goto	l3290
u3900:
	
l5940:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3911
	goto	u3910
u3911:
	goto	l5944
u3910:
	
l5942:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l5944
u3920:
	
l3290:	
	line	95
	goto	l3287
	
l3288:	
	line	96
	
l5944:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l5946:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l3291
u3930:
	line	98
	
l5948:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3291:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3941
	goto	u3940
u3941:
	goto	l3292
u3940:
	line	100
	
l5950:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3292:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l5952:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l5954:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3951
	goto	u3950
u3951:
	goto	l5966
u3950:
	goto	l5956
	line	109
	
l3294:	
	line	110
	
l5956:	
	movlw	01h
u3965:
	lslf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	decfsz	wreg,f
	goto	u3965
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l5958:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3971
	goto	u3970
u3971:
	goto	l5964
u3970:
	
l5960:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l5956
u3980:
	goto	l5964
	
l3296:	
	goto	l5964
	
l3297:	
	line	113
	goto	l5964
	
l3299:	
	line	114
	
l5962:	
	movlw	01h
u3995:
	lsrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	decfsz	wreg,f
	goto	u3995

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l5964
	line	116
	
l3298:	
	line	113
	
l5964:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4001
	goto	u4000
u4001:
	goto	l5962
u4000:
	goto	l3301
	
l3300:	
	line	117
	goto	l3301
	
l3293:	
	
l5966:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4011
	goto	u4010
u4011:
	goto	l3301
u4010:
	goto	l5968
	line	120
	
l3303:	
	line	121
	
l5968:	
	movlw	01h
u4025:
	lslf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	decfsz	wreg,f
	goto	u4025
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l5970:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4031
	goto	u4030
u4031:
	goto	l5976
u4030:
	
l5972:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l5968
u4040:
	goto	l5976
	
l3305:	
	goto	l5976
	
l3306:	
	line	124
	goto	l5976
	
l3308:	
	line	125
	
l5974:	
	movlw	01h
u4055:
	lsrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	decfsz	wreg,f
	goto	u4055

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l5976
	line	127
	
l3307:	
	line	124
	
l5976:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l5974
u4060:
	goto	l3301
	
l3309:	
	goto	l3301
	line	128
	
l3302:	
	line	129
	
l3301:	
	btfss	(___ftadd@sign),(7)&7
	goto	u4071
	goto	u4070
u4071:
	goto	l5980
u4070:
	line	131
	
l5978:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l5980
	line	133
	
l3310:	
	line	134
	
l5980:	
	btfss	(___ftadd@sign),(6)&7
	goto	u4081
	goto	u4080
u4081:
	goto	l5984
u4080:
	line	136
	
l5982:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l5984
	line	138
	
l3311:	
	line	139
	
l5984:	
	clrf	(___ftadd@sign)
	line	140
	
l5986:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	addwfc	(___ftadd@f2+1),f
	movf	(___ftadd@f1+2),w
	addwfc	(___ftadd@f2+2),f
	line	141
	
l5988:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4091
	goto	u4090
u4091:
	goto	l5994
u4090:
	line	142
	
l5990:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l5992:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l5994
	line	145
	
l3312:	
	line	146
	
l5994:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movlb 0	; select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l3287
	
l5996:	
	line	148
	
l3287:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	_RF_RxDisable

;; *************** function _RF_RxDisable *****************
;; Defined at:
;;		line 199 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteCommand
;;		_RfPointSelect
;;		_setINT_GO
;; This function is called by:
;;		_setRF_Main
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	199
global __ptext37
__ptext37:	;psect for function _RF_RxDisable
psect	text37
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	199
	global	__size_of_RF_RxDisable
	__size_of_RF_RxDisable	equ	__end_of_RF_RxDisable-_RF_RxDisable
	
_RF_RxDisable:	
;incstack = 0
	opt	stack 7
; Regs used in _RF_RxDisable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;RF_RxDisable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(RF_RxDisable@rf)
	line	201
	
l8804:	
;RF_Control_B1.c: 201: RfPointSelect(rf);
	movf	(RF_RxDisable@rf),w
	fcall	_RfPointSelect
	line	203
	
l8806:	
;RF_Control_B1.c: 203: if(RF->RxStatus)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u8221
	goto	u8220
u8221:
	goto	l2594
u8220:
	line	205
	
l8808:	
;RF_Control_B1.c: 204: {
;RF_Control_B1.c: 205: RF->RxStatus=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	206
;RF_Control_B1.c: 206: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	207
	
l8810:	
;RF_Control_B1.c: 207: RF->DebounceTime=0;
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	208
	
l8812:	
;RF_Control_B1.c: 208: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	209
	
l8814:	
;RF_Control_B1.c: 209: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	210
	
l8816:	
;RF_Control_B1.c: 210: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	211
	
l8818:	
;RF_Control_B1.c: 211: setINT_GO(0);
	movlw	(0)
	fcall	_setINT_GO
	goto	l2594
	line	212
	
l2593:	
	line	213
	
l2594:	
	return
	opt stack 0
GLOBAL	__end_of_RF_RxDisable
	__end_of_RF_RxDisable:
	signat	_RF_RxDisable,4216
	global	_CC2500_TxData

;; *************** function _CC2500_TxData *****************
;; Defined at:
;;		line 30 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_e          1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteByte
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_setRF_Main
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	30
global __ptext38
__ptext38:	;psect for function _CC2500_TxData
psect	text38
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	30
	global	__size_of_CC2500_TxData
	__size_of_CC2500_TxData	equ	__end_of_CC2500_TxData-_CC2500_TxData
	
_CC2500_TxData:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_TxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	34
	
l6686:	
;CC2500_B1.c: 32: unsigned char loop_e;
;CC2500_B1.c: 34: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	35
	
l6688:	
;CC2500_B1.c: 35: SPI0Buffer=0x3F+0x40;
	movlw	(07Fh)
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	36
;CC2500_B1.c: 36: while(RC2==1);
	goto	l295
	
l296:	
	
l295:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u5191
	goto	u5190
u5191:
	goto	l295
u5190:
	goto	l6690
	
l297:	
	line	37
	
l6690:	
;CC2500_B1.c: 37: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	38
	
l6692:	
;CC2500_B1.c: 38: SPI0Buffer=Tx_Length;
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	39
	
l6694:	
;CC2500_B1.c: 39: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l6696:	
;CC2500_B1.c: 40: for(loop_e=0;loop_e<Tx_Length;loop_e++)
	movlb 0	; select bank0
	clrf	(CC2500_TxData@loop_e)
	goto	l6704
	line	41
	
l299:	
	line	42
	
l6698:	
;CC2500_B1.c: 41: {
;CC2500_B1.c: 42: SPI0Buffer=RF_Data[loop_e];
	movf	(CC2500_TxData@loop_e),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	43
	
l6700:	
;CC2500_B1.c: 43: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l6702:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	addwf	(CC2500_TxData@loop_e),f
	goto	l6704
	
l298:	
	
l6704:	
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_TxData@loop_e),w
	skipc
	goto	u5201
	goto	u5200
u5201:
	goto	l6698
u5200:
	
l300:	
	line	45
;CC2500_B1.c: 44: }
;CC2500_B1.c: 45: RC4=1;
	bsf	(116/8),(116)&7	;volatile
	line	46
	
l6706:	
;CC2500_B1.c: 46: CC2500_WriteCommand(0x35);
	movlw	(035h)
	fcall	_CC2500_WriteCommand
	line	47
;CC2500_B1.c: 47: while(RB0==0);
	goto	l301
	
l302:	
	
l301:	
	movlb 0	; select bank0
	btfss	(104/8),(104)&7	;volatile
	goto	u5211
	goto	u5210
u5211:
	goto	l301
u5210:
	goto	l304
	
l303:	
	line	48
;CC2500_B1.c: 48: while(RB0==1);
	goto	l304
	
l305:	
	
l304:	
	btfsc	(104/8),(104)&7	;volatile
	goto	u5221
	goto	u5220
u5221:
	goto	l304
u5220:
	goto	l6708
	
l306:	
	line	49
	
l6708:	
;CC2500_B1.c: 49: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	50
;CC2500_B1.c: 50: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	51
	
l6710:	
;CC2500_B1.c: 51: Transceive_OK=1;
	bsf	(_Transceive_OK/8),(_Transceive_OK)&7
	line	52
	
l307:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_TxData
	__end_of_CC2500_TxData:
	signat	_CC2500_TxData,88
	global	_CC2500_RxData

;; *************** function _CC2500_RxData *****************
;; Defined at:
;;		line 56 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_f          1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_ReadByte
;;		_CC2500_ReadStatus
;;		_CC2500_WriteByte
;;		_CC2500_WriteCommand
;;		_setRF_RxStatus
;; This function is called by:
;;		_setRF_Main
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	line	56
global __ptext39
__ptext39:	;psect for function _CC2500_RxData
psect	text39
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	56
	global	__size_of_CC2500_RxData
	__size_of_CC2500_RxData	equ	__end_of_CC2500_RxData-_CC2500_RxData
	
_CC2500_RxData:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_RxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	62
	
l8620:	
;CC2500_B1.c: 58: unsigned char loop_f;
;CC2500_B1.c: 62: if(RB0 == 1)
	movlb 0	; select bank0
	btfss	(104/8),(104)&7	;volatile
	goto	u7961
	goto	u7960
u7961:
	goto	l8624
u7960:
	goto	l311
	line	64
	
l8622:	
;CC2500_B1.c: 63: {
;CC2500_B1.c: 64: while(RB0 == 1);
	goto	l311
	
l312:	
	
l311:	
	btfsc	(104/8),(104)&7	;volatile
	goto	u7971
	goto	u7970
u7971:
	goto	l311
u7970:
	goto	l8624
	
l313:	
	goto	l8624
	line	65
	
l310:	
	line	66
	
l8624:	
;CC2500_B1.c: 65: }
;CC2500_B1.c: 66: CC2500_ReadStatus(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_ReadStatus
	line	67
	
l8626:	
;CC2500_B1.c: 67: if(s_data != 0)
	movlb 1	; select bank1
	movf	(_s_data)^080h,w
	skipz
	goto	u7980
	goto	l8658
u7980:
	line	70
	
l8628:	
;CC2500_B1.c: 69: {
;CC2500_B1.c: 70: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	71
	
l8630:	
;CC2500_B1.c: 71: SPI0Buffer=0x3F+0xC0;
	movlw	(0FFh)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	72
;CC2500_B1.c: 72: while(RC2==1);
	goto	l315
	
l316:	
	
l315:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u7991
	goto	u7990
u7991:
	goto	l315
u7990:
	goto	l8632
	
l317:	
	line	73
	
l8632:	
;CC2500_B1.c: 73: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	75
;CC2500_B1.c: 75: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	76
	
l8634:	
;CC2500_B1.c: 76: Rx_Length=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_Rx_Length)^080h
	line	77
	
l8636:	
;CC2500_B1.c: 77: for(loop_f=0;loop_f<Rx_Length;loop_f++)
	movlb 0	; select bank0
	clrf	(CC2500_RxData@loop_f)
	goto	l8644
	line	78
	
l319:	
	line	79
	
l8638:	
;CC2500_B1.c: 78: {
;CC2500_B1.c: 79: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	80
	
l8640:	
;CC2500_B1.c: 80: RF_Data[loop_f]=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(CC2500_RxData@loop_f),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_CC2500_RxData+0)+0,w
	movwf	indf1
	line	77
	
l8642:	
	movlw	(01h)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	addwf	(CC2500_RxData@loop_f),f
	goto	l8644
	
l318:	
	
l8644:	
	movlb 1	; select bank1
	movf	(_Rx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_RxData@loop_f),w
	skipc
	goto	u8001
	goto	u8000
u8001:
	goto	l8638
u8000:
	goto	l8646
	
l320:	
	line	82
	
l8646:	
;CC2500_B1.c: 81: }
;CC2500_B1.c: 82: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	83
	
l8648:	
;CC2500_B1.c: 83: RSSI=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RSSI)^080h
	line	84
	
l8650:	
;CC2500_B1.c: 84: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	85
;CC2500_B1.c: 85: CRC=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_CRC)^080h
	line	86
	
l8652:	
;CC2500_B1.c: 86: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	87
	
l8654:	
;CC2500_B1.c: 87: if(CRC & 0x80)
	movlb 1	; select bank1
	btfss	(_CRC)^080h,(7)&7
	goto	u8011
	goto	u8010
u8011:
	goto	l8658
u8010:
	line	88
	
l8656:	
;CC2500_B1.c: 88: Receive_OK=1;
	bsf	(_Receive_OK/8),(_Receive_OK)&7
	goto	l8658
	
l321:	
	goto	l8658
	line	89
	
l314:	
	line	90
	
l8658:	
;CC2500_B1.c: 89: }
;CC2500_B1.c: 90: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	91
;CC2500_B1.c: 91: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	92
	
l8660:	
;CC2500_B1.c: 92: setRF_RxStatus(1,0);
	movlb 0	; select bank0
	clrf	(setRF_RxStatus@command)
	movlw	(01h)
	fcall	_setRF_RxStatus
	line	93
	
l322:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_RxData
	__end_of_CC2500_RxData:
	signat	_CC2500_RxData,88
	global	_setRF_RxStatus

;; *************** function _setRF_RxStatus *****************
;; Defined at:
;;		line 43 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RfPointSelect
;; This function is called by:
;;		_CC2500_RxData
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	43
global __ptext40
__ptext40:	;psect for function _setRF_RxStatus
psect	text40
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	43
	global	__size_of_setRF_RxStatus
	__size_of_setRF_RxStatus	equ	__end_of_setRF_RxStatus-_setRF_RxStatus
	
_setRF_RxStatus:	
;incstack = 0
	opt	stack 7
; Regs used in _setRF_RxStatus: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_RxStatus@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_RxStatus@rf)
	line	45
	
l8516:	
;RF_Control_B1.c: 45: RfPointSelect(rf);
	movf	(setRF_RxStatus@rf),w
	fcall	_RfPointSelect
	line	46
	
l8518:	
;RF_Control_B1.c: 46: RF->RxStatus=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRF_RxStatus@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	47
	
l2563:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_RxStatus
	__end_of_setRF_RxStatus:
	signat	_setRF_RxStatus,8312
	global	_CC2500_ReadStatus

;; *************** function _CC2500_ReadStatus *****************
;; Defined at:
;;		line 267 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;  status_addr     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status_addr     1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_CC2500_ReadByte
;;		_CC2500_WriteByte
;; This function is called by:
;;		_CC2500_RxData
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	267
global __ptext41
__ptext41:	;psect for function _CC2500_ReadStatus
psect	text41
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	267
	global	__size_of_CC2500_ReadStatus
	__size_of_CC2500_ReadStatus	equ	__end_of_CC2500_ReadStatus-_CC2500_ReadStatus
	
_CC2500_ReadStatus:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_ReadStatus: [wreg+status,2+status,0+pclath+cstack]
;CC2500_ReadStatus@status_addr stored from wreg
	movlb 0	; select bank0
	movwf	(CC2500_ReadStatus@status_addr)
	line	269
	
l6572:	
;CC2500_B1.c: 269: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	270
	
l6574:	
;CC2500_B1.c: 270: SPI0Buffer=status_addr+0xC0;
	movf	(CC2500_ReadStatus@status_addr),w
	addlw	0C0h
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	272
;CC2500_B1.c: 272: while(RC2==1);
	goto	l391
	
l392:	
	
l391:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u5081
	goto	u5080
u5081:
	goto	l391
u5080:
	goto	l6576
	
l393:	
	line	274
	
l6576:	
;CC2500_B1.c: 274: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	275
;CC2500_B1.c: 275: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	276
	
l6578:	
;CC2500_B1.c: 276: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	278
	
l6580:	
;CC2500_B1.c: 278: s_data=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_s_data)^080h
	line	279
	
l394:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadStatus
	__end_of_CC2500_ReadStatus:
	signat	_CC2500_ReadStatus,4216
	global	_CC2500_ReadByte

;; *************** function _CC2500_ReadByte *****************
;; Defined at:
;;		line 210 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_b          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CC2500_RxData
;;		_CC2500_ReadStatus
;;		_CC2500_ReadREG
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1
	line	210
global __ptext42
__ptext42:	;psect for function _CC2500_ReadByte
psect	text42
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	210
	global	__size_of_CC2500_ReadByte
	__size_of_CC2500_ReadByte	equ	__end_of_CC2500_ReadByte-_CC2500_ReadByte
	
_CC2500_ReadByte:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_ReadByte: [wreg+status,2+status,0]
	line	213
	
l6432:	
;CC2500_B1.c: 212: unsigned char loop_b;
;CC2500_B1.c: 213: for(loop_b=0;loop_b<8;loop_b++)
	movlb 0	; select bank0
	clrf	(CC2500_ReadByte@loop_b)
	
l6434:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u4951
	goto	u4950
u4951:
	goto	l366
u4950:
	goto	l370
	
l6436:	
	goto	l370
	line	214
	
l366:	
	line	215
;CC2500_B1.c: 214: {
;CC2500_B1.c: 215: RC1=1;
	bsf	(113/8),(113)&7	;volatile
	line	216
	
l6438:	
;CC2500_B1.c: 216: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	217
	
l6440:	
;CC2500_B1.c: 217: if(RC2 == 1)
	movlb 0	; select bank0
	btfss	(114/8),(114)&7	;volatile
	goto	u4961
	goto	u4960
u4961:
	goto	l6444
u4960:
	line	218
	
l6442:	
;CC2500_B1.c: 218: SPI0Buffer |= 0x01;
	movlb 1	; select bank1
	bsf	(_SPI0Buffer)^080h+(0/8),(0)&7
	goto	l6446
	line	219
	
l368:	
	line	220
	
l6444:	
;CC2500_B1.c: 219: else
;CC2500_B1.c: 220: SPI0Buffer &= 0xFE;
	movlw	(0FEh)
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	movlb 1	; select bank1
	andwf	(_SPI0Buffer)^080h,f
	goto	l6446
	
l369:	
	line	221
	
l6446:	
;CC2500_B1.c: 221: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
	line	213
	movlw	(01h)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	addwf	(CC2500_ReadByte@loop_b),f
	
l6448:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u4971
	goto	u4970
u4971:
	goto	l366
u4970:
	goto	l370
	
l367:	
	line	223
	
l370:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadByte
	__end_of_CC2500_ReadByte:
	signat	_CC2500_ReadByte,88
	global	_RF_Initialization

;; *************** function _RF_Initialization *****************
;; Defined at:
;;		line 17 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setRF_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	17
global __ptext43
__ptext43:	;psect for function _RF_Initialization
psect	text43
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	17
	global	__size_of_RF_Initialization
	__size_of_RF_Initialization	equ	__end_of_RF_Initialization-_RF_Initialization
	
_RF_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _RF_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l9438:	
;RF_Control_B1.c: 20: setRF_Initialization(1);
	movlw	(01h)
	fcall	_setRF_Initialization
	line	22
	
l2551:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Initialization
	__end_of_RF_Initialization:
	signat	_RF_Initialization,88
	global	_setRF_Initialization

;; *************** function _setRF_Initialization *****************
;; Defined at:
;;		line 50 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RF_Initialization
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1
	line	50
global __ptext44
__ptext44:	;psect for function _setRF_Initialization
psect	text44
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	50
	global	__size_of_setRF_Initialization
	__size_of_setRF_Initialization	equ	__end_of_setRF_Initialization-_setRF_Initialization
	
_setRF_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _setRF_Initialization: [wreg]
	line	54
	
l7432:	
;RF_Control_B1.c: 54: Tx_Length=21;
	movlw	(015h)
	movlb 0	; select bank0
	movwf	(??_setRF_Initialization+0)+0
	movf	(??_setRF_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Tx_Length)^080h
	line	56
	
l2566:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Initialization
	__end_of_setRF_Initialization:
	signat	_setRF_Initialization,4216
	global	_PowerFault_Main

;; *************** function _PowerFault_Main *****************
;; Defined at:
;;		line 22 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_setPowerFault_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	22
global __ptext45
__ptext45:	;psect for function _PowerFault_Main
psect	text45
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	22
	global	__size_of_PowerFault_Main
	__size_of_PowerFault_Main	equ	__end_of_PowerFault_Main-_PowerFault_Main
	
_PowerFault_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _PowerFault_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	25
	
l9706:	
;PowerFault_B1.c: 25: setPowerFault_Main();
	fcall	_setPowerFault_Main
	line	27
	
l2334:	
	return
	opt stack 0
GLOBAL	__end_of_PowerFault_Main
	__end_of_PowerFault_Main:
	signat	_PowerFault_Main,88
	global	_setPowerFault_Main

;; *************** function _setPowerFault_Main *****************
;; Defined at:
;;		line 61 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_getLoad_Safe
;;		_getTemp_Safe
;;		_setPowerFault_Exceptions
;; This function is called by:
;;		_PowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1
	line	61
global __ptext46
__ptext46:	;psect for function _setPowerFault_Main
psect	text46
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	61
	global	__size_of_setPowerFault_Main
	__size_of_setPowerFault_Main	equ	__end_of_setPowerFault_Main-_setPowerFault_Main
	
_setPowerFault_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _setPowerFault_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	63
	
l9138:	
;PowerFault_B1.c: 63: if(PF->Enable)
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u8601
	goto	u8600
u8601:
	goto	l2372
u8600:
	line	65
	
l9140:	
;PowerFault_B1.c: 64: {
;PowerFault_B1.c: 65: if(PF->ADtoGO == 0)
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u8611
	goto	u8610
u8611:
	goto	l9154
u8610:
	line	67
	
l9142:	
;PowerFault_B1.c: 66: {
;PowerFault_B1.c: 67: PF->Time++;
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	68
	
l9144:	
;PowerFault_B1.c: 68: if(PF->Time >= 700)
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(02BCh)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(02BCh)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipc
	goto	u8621
	goto	u8620
u8621:
	goto	l2372
u8620:
	line	70
	
l9146:	
;PowerFault_B1.c: 69: {
;PowerFault_B1.c: 70: if(getLoad_Safe() && getTemp_Safe())
	fcall	_getLoad_Safe
	xorlw	0&0ffh
	skipnz
	goto	u8631
	goto	u8630
u8631:
	goto	l9152
u8630:
	
l9148:	
	fcall	_getTemp_Safe
	xorlw	0&0ffh
	skipnz
	goto	u8641
	goto	u8640
u8641:
	goto	l9152
u8640:
	line	72
	
l9150:	
;PowerFault_B1.c: 71: {
;PowerFault_B1.c: 72: PF->Time=0;
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	73
;PowerFault_B1.c: 73: PF->ADtoGO=1;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	74
;PowerFault_B1.c: 74: PF->Safe=0;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	75
;PowerFault_B1.c: 75: }
	goto	l2372
	line	76
	
l2357:	
	line	78
	
l9152:	
;PowerFault_B1.c: 76: else
;PowerFault_B1.c: 77: {
;PowerFault_B1.c: 78: PF->Time=700;
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(02BCh)
	movwi	[0]fsr1
	movlw	high(02BCh)
	movwi	[1]fsr1
	goto	l2372
	line	79
	
l2358:	
	goto	l2372
	line	80
	
l2356:	
	line	81
;PowerFault_B1.c: 79: }
;PowerFault_B1.c: 80: }
;PowerFault_B1.c: 81: }
	goto	l2372
	line	82
	
l2355:	
	line	84
	
l9154:	
;PowerFault_B1.c: 82: else
;PowerFault_B1.c: 83: {
;PowerFault_B1.c: 84: PF->Time++;
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	85
	
l9156:	
;PowerFault_B1.c: 85: if(PF->Time >= 2)
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(02h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(02h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipc
	goto	u8651
	goto	u8650
u8651:
	goto	l2372
u8650:
	line	87
	
l9158:	
;PowerFault_B1.c: 86: {
;PowerFault_B1.c: 87: PF->Time=0;
	movf	(_PF),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	88
;PowerFault_B1.c: 88: PF->ADtoGO=0;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	90
;PowerFault_B1.c: 90: if(PF->ERROR)
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u8661
	goto	u8660
u8661:
	goto	l9174
u8660:
	line	92
	
l9160:	
;PowerFault_B1.c: 91: {
;PowerFault_B1.c: 92: if(PF->AD <= (300+100) && PF->AD >= (300-100))
	incf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(0191h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(0191h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipnc
	goto	u8671
	goto	u8670
u8671:
	goto	l9172
u8670:
	
l9162:	
	incf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(0C8h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(0C8h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipc
	goto	u8681
	goto	u8680
u8681:
	goto	l9172
u8680:
	line	94
	
l9164:	
;PowerFault_B1.c: 93: {
;PowerFault_B1.c: 94: PF->Count++;
	movlw	(01h)
	movwf	(??_setPowerFault_Main+0)+0
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setPowerFault_Main+0)+0,w
	addwf	indf1,f
	line	95
	
l9166:	
;PowerFault_B1.c: 95: if(PF->Count > 1)
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u8691
	goto	u8690
u8691:
	goto	l9188
u8690:
	line	97
	
l9168:	
;PowerFault_B1.c: 96: {
;PowerFault_B1.c: 97: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	98
	
l9170:	
;PowerFault_B1.c: 98: setPowerFault_Exceptions(0);
	movlw	(0)
	fcall	_setPowerFault_Exceptions
	goto	l9188
	line	99
	
l2363:	
	line	100
;PowerFault_B1.c: 99: }
;PowerFault_B1.c: 100: }
	goto	l9188
	line	101
	
l2362:	
	line	103
	
l9172:	
;PowerFault_B1.c: 101: else
;PowerFault_B1.c: 102: {
;PowerFault_B1.c: 103: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l9188
	line	104
	
l2364:	
	line	105
;PowerFault_B1.c: 104: }
;PowerFault_B1.c: 105: }
	goto	l9188
	line	106
	
l2361:	
	line	108
	
l9174:	
;PowerFault_B1.c: 106: else
;PowerFault_B1.c: 107: {
;PowerFault_B1.c: 108: if(PF->AD >= (300+100) || PF->AD <= (310-100))
	incf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(0190h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(0190h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipnc
	goto	u8701
	goto	u8700
u8701:
	goto	l9178
u8700:
	
l9176:	
	incf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(0D3h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(0D3h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipnc
	goto	u8711
	goto	u8710
u8711:
	goto	l9186
u8710:
	goto	l9178
	
l2368:	
	line	110
	
l9178:	
;PowerFault_B1.c: 109: {
;PowerFault_B1.c: 110: PF->Count++;
	movlw	(01h)
	movwf	(??_setPowerFault_Main+0)+0
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setPowerFault_Main+0)+0,w
	addwf	indf1,f
	line	111
	
l9180:	
;PowerFault_B1.c: 111: if(PF->Count > 1)
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u8721
	goto	u8720
u8721:
	goto	l9188
u8720:
	line	113
	
l9182:	
;PowerFault_B1.c: 112: {
;PowerFault_B1.c: 113: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	114
	
l9184:	
;PowerFault_B1.c: 114: setPowerFault_Exceptions(1);
	movlw	(01h)
	fcall	_setPowerFault_Exceptions
	goto	l9188
	line	115
	
l2369:	
	line	116
;PowerFault_B1.c: 115: }
;PowerFault_B1.c: 116: }
	goto	l9188
	line	117
	
l2366:	
	line	119
	
l9186:	
;PowerFault_B1.c: 117: else
;PowerFault_B1.c: 118: {
;PowerFault_B1.c: 119: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l9188
	line	120
	
l2370:	
	goto	l9188
	line	122
	
l2365:	
	line	123
	
l9188:	
;PowerFault_B1.c: 120: }
;PowerFault_B1.c: 122: }
;PowerFault_B1.c: 123: if(PF->ERROR == 0)
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u8731
	goto	u8730
u8731:
	goto	l2371
u8730:
	line	125
	
l9190:	
;PowerFault_B1.c: 124: {
;PowerFault_B1.c: 125: PF->Safe=1;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	126
	
l2371:	
	line	127
;PowerFault_B1.c: 126: }
;PowerFault_B1.c: 127: PF->AD=0;
	incf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l2372
	line	128
	
l2360:	
	goto	l2372
	line	129
	
l2359:	
	goto	l2372
	line	130
	
l2354:	
	line	131
	
l2372:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_Main
	__end_of_setPowerFault_Main:
	signat	_setPowerFault_Main,88
	global	_setPowerFault_Exceptions

;; *************** function _setPowerFault_Exceptions *****************
;; Defined at:
;;		line 133 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_DimmerLights_Exceptions
;;		_setLED
;;		_setRF_Enable
;;		_setSw_Enable
;; This function is called by:
;;		_setPowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1
	line	133
global __ptext47
__ptext47:	;psect for function _setPowerFault_Exceptions
psect	text47
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	133
	global	__size_of_setPowerFault_Exceptions
	__size_of_setPowerFault_Exceptions	equ	__end_of_setPowerFault_Exceptions-_setPowerFault_Exceptions
	
_setPowerFault_Exceptions:	
;incstack = 0
	opt	stack 5
; Regs used in _setPowerFault_Exceptions: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setPowerFault_Exceptions@command stored from wreg
	movlb 0	; select bank0
	movwf	(setPowerFault_Exceptions@command)
	line	135
	
l8752:	
;PowerFault_B1.c: 135: PF->ERROR=command;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setPowerFault_Exceptions@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	136
	
l8754:	
;PowerFault_B1.c: 136: PF->Safe=(~command) & 0x01;
	comf	(setPowerFault_Exceptions@command),w
	andlw	01h
	movwf	(??_setPowerFault_Exceptions+0)+0
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	rlf	(??_setPowerFault_Exceptions+0)+0,f
	rlf	(??_setPowerFault_Exceptions+0)+0,f
	movf	indf1,w
	xorwf	(??_setPowerFault_Exceptions+0)+0,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_setPowerFault_Exceptions+0)+0,w
	movwf	indf1
	line	137
	
l8756:	
;PowerFault_B1.c: 137: if(command == 1)
	movf	(setPowerFault_Exceptions@command),w
	xorlw	01h&0ffh
	skipz
	goto	u8101
	goto	u8100
u8101:
	goto	l2375
u8100:
	line	139
	
l8758:	
;PowerFault_B1.c: 138: {
;PowerFault_B1.c: 139: DimmerLights_Exceptions(3);
	movlw	(03h)
	fcall	_DimmerLights_Exceptions
	line	141
;PowerFault_B1.c: 141: setLED(2,1);
	movlb 0	; select bank0
	clrf	(setLED@command)
	incf	(setLED@command),f
	movlw	(02h)
	fcall	_setLED
	line	143
	
l2375:	
	line	144
;PowerFault_B1.c: 143: }
;PowerFault_B1.c: 144: setLED(99,command+10);
	movlb 0	; select bank0
	movf	(setPowerFault_Exceptions@command),w
	addlw	0Ah
	movwf	(??_setPowerFault_Exceptions+0)+0
	movf	(??_setPowerFault_Exceptions+0)+0,w
	movwf	(setLED@command)
	movlw	(063h)
	fcall	_setLED
	line	146
;PowerFault_B1.c: 146: setSw_Enable((~command) & 0x01);
	movlb 0	; select bank0
	comf	(setPowerFault_Exceptions@command),w
	andlw	01h
	fcall	_setSw_Enable
	line	148
;PowerFault_B1.c: 148: setRF_Enable(1,(~command) & 0x01);
	movlb 0	; select bank0
	comf	(setPowerFault_Exceptions@command),w
	andlw	01h
	movwf	(??_setPowerFault_Exceptions+0)+0
	movf	(??_setPowerFault_Exceptions+0)+0,w
	movwf	(setRF_Enable@command)
	movlw	(01h)
	fcall	_setRF_Enable
	line	151
	
l2376:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_Exceptions
	__end_of_setPowerFault_Exceptions:
	signat	_setPowerFault_Exceptions,4216
	global	_getLoad_Safe

;; *************** function _getLoad_Safe *****************
;; Defined at:
;;		line 339 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setTemp_Main
;;		_setPowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	339
global __ptext48
__ptext48:	;psect for function _getLoad_Safe
psect	text48
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	339
	global	__size_of_getLoad_Safe
	__size_of_getLoad_Safe	equ	__end_of_getLoad_Safe-_getLoad_Safe
	
_getLoad_Safe:	
;incstack = 0
	opt	stack 9
; Regs used in _getLoad_Safe: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	341
	
l6864:	
;OverLoad_B1.c: 341: return Load->Safe;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	rrf	indf1,w
	movwf	(??_getLoad_Safe+0)+0
	rrf	(??_getLoad_Safe+0)+0,f
	rrf	(??_getLoad_Safe+0)+0,w
	andlw	(1<<1)-1
	goto	l1893
	
l6866:	
	line	342
	
l1893:	
	return
	opt stack 0
GLOBAL	__end_of_getLoad_Safe
	__end_of_getLoad_Safe:
	signat	_getLoad_Safe,89
	global	_PowerFault_Initialization

;; *************** function _PowerFault_Initialization *****************
;; Defined at:
;;		line 15 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setPowerFault_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	15
global __ptext49
__ptext49:	;psect for function _PowerFault_Initialization
psect	text49
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	15
	global	__size_of_PowerFault_Initialization
	__size_of_PowerFault_Initialization	equ	__end_of_PowerFault_Initialization-_PowerFault_Initialization
	
_PowerFault_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _PowerFault_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	18
	
l9430:	
;PowerFault_B1.c: 18: setPowerFault_Initialization();
	fcall	_setPowerFault_Initialization
	line	20
	
l2331:	
	return
	opt stack 0
GLOBAL	__end_of_PowerFault_Initialization
	__end_of_PowerFault_Initialization:
	signat	_PowerFault_Initialization,88
	global	_setPowerFault_Initialization

;; *************** function _setPowerFault_Initialization *****************
;; Defined at:
;;		line 29 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PowerFault_Initialization
;; This function uses a non-reentrant model
;;
psect	text50,local,class=CODE,delta=2,merge=1
	line	29
global __ptext50
__ptext50:	;psect for function _setPowerFault_Initialization
psect	text50
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	29
	global	__size_of_setPowerFault_Initialization
	__size_of_setPowerFault_Initialization	equ	__end_of_setPowerFault_Initialization-_setPowerFault_Initialization
	
_setPowerFault_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _setPowerFault_Initialization: [wregfsr1]
	line	31
	
l7372:	
;PowerFault_B1.c: 31: PF=&PF1;
	movlw	(_PF1)&0ffh
	movlb 0	; select bank0
	movwf	(??_setPowerFault_Initialization+0)+0
	movf	(??_setPowerFault_Initialization+0)+0,w
	movwf	(_PF)
	line	32
	
l7374:	
;PowerFault_B1.c: 32: PF->Enable=1;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	33
	
l7376:	
;PowerFault_B1.c: 33: PF->Safe=1;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	34
	
l2337:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_Initialization
	__end_of_setPowerFault_Initialization:
	signat	_setPowerFault_Initialization,88
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
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_ADC_Set
;;		_INT_Set
;;		_IOC_Set
;;		_IO_Set
;;		_TMR0_Set
;;		_WDT_Set
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text51,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	24
global __ptext51
__ptext51:	;psect for function _Mcu_Initialization
psect	text51
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	24
	global	__size_of_Mcu_Initialization
	__size_of_Mcu_Initialization	equ	__end_of_Mcu_Initialization-_Mcu_Initialization
	
_Mcu_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Mcu_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	27
	
l9364:	
;MCU_B1.c: 27: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	29
	
l9366:	
;MCU_B1.c: 29: IO_Set();
	fcall	_IO_Set
	line	31
	
l9368:	
;MCU_B1.c: 31: TMR0_Set();
	fcall	_TMR0_Set
	line	35
	
l9370:	
;MCU_B1.c: 33: ;;
;MCU_B1.c: 35: ADC_Set();
	fcall	_ADC_Set
	line	39
;MCU_B1.c: 39: INT_Set();
	fcall	_INT_Set
	line	41
	
l9372:	
;MCU_B1.c: 41: IOC_Set();
	fcall	_IOC_Set
	line	47
;MCU_B1.c: 43: ;;
;MCU_B1.c: 45: ;;
;MCU_B1.c: 47: Memory=&VarMemory;
	movlw	(_VarMemory)&0ffh
	movlb 0	; select bank0
	movwf	(??_Mcu_Initialization+0)+0
	movf	(??_Mcu_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Memory)^080h
	line	49
	
l9374:	
;MCU_B1.c: 49: WDT_Set();
	fcall	_WDT_Set
	line	50
	
l1570:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initialization
	__end_of_Mcu_Initialization:
	signat	_Mcu_Initialization,88
	global	_WDT_Set

;; *************** function _WDT_Set *****************
;; Defined at:
;;		line 979 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text52,local,class=CODE,delta=2,merge=1
	line	979
global __ptext52
__ptext52:	;psect for function _WDT_Set
psect	text52
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	979
	global	__size_of_WDT_Set
	__size_of_WDT_Set	equ	__end_of_WDT_Set-_WDT_Set
	
_WDT_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _WDT_Set: [wregfsr1]
	line	980
	
l7234:	
;MCU_B1.c: 980: WDTCON=0b00010111;;
	movlw	(017h)
	movlb 1	; select bank1
	movwf	(151)^080h	;volatile
	line	981
;MCU_B1.c: 981: WDT=&_WDT;
	movlw	(__WDT)&0ffh
	movlb 0	; select bank0
	movwf	(??_WDT_Set+0)+0
	movf	(??_WDT_Set+0)+0,w
	movlb 1	; select bank1
	movwf	(_WDT)^080h
	line	982
	
l7236:	
;MCU_B1.c: 982: WDT->Enable=1;
	movf	(_WDT)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	983
	
l7238:	
;MCU_B1.c: 983: WDT->Count=10;
	movlw	(0Ah)
	movlb 0	; select bank0
	movwf	(??_WDT_Set+0)+0
	movlb 1	; select bank1
	incf	(_WDT)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_WDT_Set+0)+0,w
	movwf	indf1
	line	984
	
l1681:	
	return
	opt stack 0
GLOBAL	__end_of_WDT_Set
	__end_of_WDT_Set:
	signat	_WDT_Set,88
	global	_TMR0_Set

;; *************** function _TMR0_Set *****************
;; Defined at:
;;		line 118 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text53,local,class=CODE,delta=2,merge=1
	line	118
global __ptext53
__ptext53:	;psect for function _TMR0_Set
psect	text53
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	118
	global	__size_of_TMR0_Set
	__size_of_TMR0_Set	equ	__end_of_TMR0_Set-_TMR0_Set
	
_TMR0_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR0_Set: [wreg+status,2]
	line	120
	
l7206:	
;MCU_B1.c: 120: Timer0=&VarTimer0;
	movlw	(_VarTimer0)&0ffh
	movlb 0	; select bank0
	movwf	(??_TMR0_Set+0)+0
	movf	(??_TMR0_Set+0)+0,w
	movlb 1	; select bank1
	movwf	(_Timer0)^080h
	line	121
	
l7208:	
;MCU_B1.c: 121: OPTION_REG=0x00;
	clrf	(149)^080h	;volatile
	line	122
	
l7210:	
;MCU_B1.c: 122: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	123
	
l7212:	
;MCU_B1.c: 123: TMR0IE=1;
	bsf	(93/8),(93)&7	;volatile
	line	124
	
l7214:	
;MCU_B1.c: 124: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	125
	
l1579:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_Set
	__end_of_TMR0_Set:
	signat	_TMR0_Set,88
	global	_IO_Set

;; *************** function _IO_Set *****************
;; Defined at:
;;		line 52 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text54,local,class=CODE,delta=2,merge=1
	line	52
global __ptext54
__ptext54:	;psect for function _IO_Set
psect	text54
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	52
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _IO_Set: [wreg+status,2]
	line	81
	
l8996:	
;MCU_B1.c: 81: TRISA=0b01110111;;
	movlw	(077h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	82
;MCU_B1.c: 82: TRISB=0b00000111;;
	movlw	(07h)
	movwf	(141)^080h	;volatile
	line	83
;MCU_B1.c: 83: TRISC=0b00001100;;
	movlw	(0Ch)
	movwf	(142)^080h	;volatile
	line	84
	
l8998:	
;MCU_B1.c: 84: LATA=0b00000000;;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	85
	
l9000:	
;MCU_B1.c: 85: LATB=0b00000010;;
	movlw	(02h)
	movwf	(269)^0100h	;volatile
	line	86
;MCU_B1.c: 86: LATC=0b00000000;;
	clrf	(270)^0100h	;volatile
	line	87
	
l9002:	
;MCU_B1.c: 87: ANSELA=0b00100010;;
	movlw	(022h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	88
	
l9004:	
;MCU_B1.c: 88: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	89
	
l9006:	
;MCU_B1.c: 89: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	90
	
l9008:	
;MCU_B1.c: 90: PORTA=0b01110111;;
	movlw	(077h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	91
	
l9010:	
;MCU_B1.c: 91: PORTB=0b00000111;;
	movlw	(07h)
	movwf	(13)	;volatile
	line	92
	
l9012:	
;MCU_B1.c: 92: PORTC=0b00001100;;
	movlw	(0Ch)
	movwf	(14)	;volatile
	line	94
	
l1573:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
	signat	_IO_Set,88
	global	_IOC_Set

;; *************** function _IOC_Set *****************
;; Defined at:
;;		line 314 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text55,local,class=CODE,delta=2,merge=1
	line	314
global __ptext55
__ptext55:	;psect for function _IOC_Set
psect	text55
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	314
	global	__size_of_IOC_Set
	__size_of_IOC_Set	equ	__end_of_IOC_Set-_IOC_Set
	
_IOC_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _IOC_Set: [wreg+status,2]
	line	316
	
l9018:	
;MCU_B1.c: 316: WPUB2=0;
	movlb 4	; select bank4
	bcf	(4202/8)^0200h,(4202)&7	;volatile
	line	318
	
l9020:	
;MCU_B1.c: 318: IOCBP=0b00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	319
;MCU_B1.c: 319: IOCBN=0b00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	334
	
l9022:	
;MCU_B1.c: 334: IOCBF=0b00000000;
	clrf	(918)^0380h	;volatile
	line	336
	
l9024:	
;MCU_B1.c: 336: IOCIE=1;
	bsf	(91/8),(91)&7	;volatile
	line	337
	
l9026:	
;MCU_B1.c: 337: IOCIF=0;
	bcf	(88/8),(88)&7	;volatile
	line	338
	
l9028:	
;MCU_B1.c: 338: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	339
	
l9030:	
;MCU_B1.c: 339: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	340
	
l1629:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_Set
	__end_of_IOC_Set:
	signat	_IOC_Set,88
	global	_INT_Set

;; *************** function _INT_Set *****************
;; Defined at:
;;		line 285 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text56,local,class=CODE,delta=2,merge=1
	line	285
global __ptext56
__ptext56:	;psect for function _INT_Set
psect	text56
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	285
	global	__size_of_INT_Set
	__size_of_INT_Set	equ	__end_of_INT_Set-_INT_Set
	
_INT_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _INT_Set: []
	line	287
	
l9016:	
;MCU_B1.c: 287: WPUB0=0;
	movlb 4	; select bank4
	bcf	(4200/8)^0200h,(4200)&7	;volatile
	line	288
;MCU_B1.c: 288: INTE=1;
	bsf	(92/8),(92)&7	;volatile
	line	289
;MCU_B1.c: 289: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	290
;MCU_B1.c: 290: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	291
	
l1619:	
	return
	opt stack 0
GLOBAL	__end_of_INT_Set
	__end_of_INT_Set:
	signat	_INT_Set,88
	global	_ADC_Set

;; *************** function _ADC_Set *****************
;; Defined at:
;;		line 379 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text57,local,class=CODE,delta=2,merge=1
	line	379
global __ptext57
__ptext57:	;psect for function _ADC_Set
psect	text57
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	379
	global	__size_of_ADC_Set
	__size_of_ADC_Set	equ	__end_of_ADC_Set-_ADC_Set
	
_ADC_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _ADC_Set: [wreg]
	line	381
	
l9014:	
;MCU_B1.c: 381: ADCON1=0xf2;
	movlw	(0F2h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	382
;MCU_B1.c: 382: FVRCON=0xc0;
	movlw	(0C0h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	line	383
	
l1639:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Set
	__end_of_ADC_Set:
	signat	_ADC_Set,88
	global	_MainT_Initialization

;; *************** function _MainT_Initialization *****************
;; Defined at:
;;		line 93 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text58,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	93
global __ptext58
__ptext58:	;psect for function _MainT_Initialization
psect	text58
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	93
	global	__size_of_MainT_Initialization
	__size_of_MainT_Initialization	equ	__end_of_MainT_Initialization-_MainT_Initialization
	
_MainT_Initialization:	
;incstack = 0
	opt	stack 11
; Regs used in _MainT_Initialization: [wregfsr1]
	line	96
	
l7690:	
;main.c: 96: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movwf	(_Product)
	line	97
	
l7692:	
;main.c: 97: Product->Data[20]=209;
	movlw	(0D1h)
	movwf	(??_MainT_Initialization+0)+0
	movf	(_Product),w
	addlw	014h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_MainT_Initialization+0)+0,w
	movwf	indf1
	line	100
	
l7694:	
;main.c: 100: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movwf	(_TMain)
	line	103
	
l1308:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initialization
	__end_of_MainT_Initialization:
	signat	_MainT_Initialization,88
	global	_MainT

;; *************** function _MainT *****************
;; Defined at:
;;		line 105 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setBuz
;;		_setLoad_Enable
;;		_setRF_Enable
;;		_setSw_Enable
;;		_setTemp_Enable
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text59,local,class=CODE,delta=2,merge=1
	line	105
global __ptext59
__ptext59:	;psect for function _MainT
psect	text59
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	105
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
;incstack = 0
	opt	stack 9
; Regs used in _MainT: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	108
	
l9498:	
;main.c: 108: if(!TMain->PowerON)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u9221
	goto	u9220
u9221:
	goto	l9514
u9220:
	line	110
	
l9500:	
;main.c: 109: {
;main.c: 110: TMain->PowerCount++;
	incf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	111
	
l9502:	
;main.c: 111: if(TMain->PowerCount == 150)
	incf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(096h)
	skipz
	goto	u9235
	moviw	[1]fsr1
	xorlw	high(096h)
u9235:
	skipz
	goto	u9231
	goto	u9230
u9231:
	goto	l1317
u9230:
	line	113
	
l9504:	
;main.c: 112: {
;main.c: 113: TMain->PowerCount=0;
	incf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	114
;main.c: 114: TMain->PowerON=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	117
	
l9506:	
;main.c: 117: setTemp_Enable(1);
	movlw	(01h)
	fcall	_setTemp_Enable
	line	121
	
l9508:	
;main.c: 121: setLoad_Enable(1);
	movlw	(01h)
	fcall	_setLoad_Enable
	line	127
	
l9510:	
;main.c: 127: setBuz(3,50);
	movlw	low(032h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(032h)
	movwf	((setBuz@time))+1
	movlw	(03h)
	fcall	_setBuz
	line	128
	
l9512:	
;main.c: 128: TMain->SelfTest=1;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	130
;main.c: 130: setSw_Enable(1);
	movlw	(01h)
	fcall	_setSw_Enable
	line	133
;main.c: 133: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setRF_Enable@command)
	incf	(setRF_Enable@command),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l1317
	line	137
	
l1312:	
	line	138
;main.c: 137: }
;main.c: 138: }
	goto	l1317
	line	139
	
l1311:	
	line	148
	
l9514:	
;main.c: 139: else
;main.c: 140: {
;main.c: 148: TMain->Count1++;
	movf	(_TMain),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	149
	
l9516:	
;main.c: 149: if(TMain->Count1 == 100)
	movf	(_TMain),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(064h)
	skipz
	goto	u9245
	moviw	[1]fsr1
	xorlw	high(064h)
u9245:
	skipz
	goto	u9241
	goto	u9240
u9241:
	goto	l1317
u9240:
	line	151
	
l9518:	
;main.c: 150: {
;main.c: 151: TMain->Count1=0;
	movf	(_TMain),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	164
;main.c: 164: if(TMain->Flag)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9251
	goto	u9250
u9251:
	goto	l9522
u9250:
	line	166
	
l9520:	
;main.c: 165: {
;main.c: 166: TMain->Flag=0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	175
;main.c: 175: }
	goto	l1317
	line	176
	
l1315:	
	line	178
	
l9522:	
;main.c: 176: else
;main.c: 177: {
;main.c: 178: TMain->Flag=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	goto	l1317
	line	187
	
l1316:	
	goto	l1317
	line	188
	
l1314:	
	goto	l1317
	line	190
	
l1313:	
	line	191
	
l1317:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
	signat	_MainT,88
	global	_setTemp_Enable

;; *************** function _setTemp_Enable *****************
;; Defined at:
;;		line 22 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text60,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	22
global __ptext60
__ptext60:	;psect for function _setTemp_Enable
psect	text60
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	22
	global	__size_of_setTemp_Enable
	__size_of_setTemp_Enable	equ	__end_of_setTemp_Enable-_setTemp_Enable
	
_setTemp_Enable:	
;incstack = 0
	opt	stack 10
; Regs used in _setTemp_Enable: [wregfsr1]
;setTemp_Enable@command stored from wreg
	movlb 0	; select bank0
	movwf	(setTemp_Enable@command)
	line	24
	
l8992:	
;OverTemperature_B1.c: 24: Temp->Enable=command;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setTemp_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	25
	
l2041:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Enable
	__end_of_setTemp_Enable:
	signat	_setTemp_Enable,4216
	global	_setLoad_Enable

;; *************** function _setLoad_Enable *****************
;; Defined at:
;;		line 295 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text61,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	295
global __ptext61
__ptext61:	;psect for function _setLoad_Enable
psect	text61
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	295
	global	__size_of_setLoad_Enable
	__size_of_setLoad_Enable	equ	__end_of_setLoad_Enable-_setLoad_Enable
	
_setLoad_Enable:	
;incstack = 0
	opt	stack 10
; Regs used in _setLoad_Enable: [wregfsr1]
;setLoad_Enable@command stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Enable@command)
	line	297
	
l8994:	
;OverLoad_B1.c: 297: Load->Enable=command;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	298
;OverLoad_B1.c: 298: Load->GO=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	299
	
l1875:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Enable
	__end_of_setLoad_Enable:
	signat	_setLoad_Enable,4216
	global	_Load_Main

;; *************** function _Load_Main *****************
;; Defined at:
;;		line 45 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		___lwdiv
;;		___wmul
;;		_getPF_Safe
;;		_getTemp_Safe
;;		_setDimmerLights_Clear
;;		_setLoad_AH_AL_Restore
;;		_setLoad_Exceptions
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text62,local,class=CODE,delta=2,merge=1
	line	45
global __ptext62
__ptext62:	;psect for function _Load_Main
psect	text62
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	45
	global	__size_of_Load_Main
	__size_of_Load_Main	equ	__end_of_Load_Main-_Load_Main
	
_Load_Main:	
;incstack = 0
	opt	stack 6
; Regs used in _Load_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	48
	
l9548:	
;OverLoad_B1.c: 47: char i;
;OverLoad_B1.c: 48: if(Load->ERROR)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u9311
	goto	u9310
u9311:
	goto	l9558
u9310:
	line	50
	
l9550:	
;OverLoad_B1.c: 49: {
;OverLoad_B1.c: 50: Load->ErrorTime++;
	movf	(_Load),w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	51
	
l9552:	
;OverLoad_B1.c: 51: if(Load->ErrorTime >= 1000)
	movf	(_Load),w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movlw	high(03E8h)
	subwf	1+(??_Load_Main+0)+0,w
	movlw	low(03E8h)
	skipnz
	subwf	0+(??_Load_Main+0)+0,w
	skipc
	goto	u9321
	goto	u9320
u9321:
	goto	l1865
u9320:
	line	53
	
l9554:	
;OverLoad_B1.c: 52: {
;OverLoad_B1.c: 53: Load->ErrorTime=0;
	movf	(_Load),w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	54
	
l9556:	
;OverLoad_B1.c: 54: setLoad_Exceptions(0);
	movlw	(0)
	fcall	_setLoad_Exceptions
	goto	l1865
	line	55
	
l1839:	
	line	56
;OverLoad_B1.c: 55: }
;OverLoad_B1.c: 56: }
	goto	l1865
	line	57
	
l1838:	
	line	59
	
l9558:	
;OverLoad_B1.c: 57: else
;OverLoad_B1.c: 58: {
;OverLoad_B1.c: 59: if(Load->ADtoGO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u9331
	goto	u9330
u9331:
	goto	l9666
u9330:
	line	61
	
l9560:	
;OverLoad_B1.c: 60: {
;OverLoad_B1.c: 61: Load->Time++;
	incf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	62
	
l9562:	
;OverLoad_B1.c: 62: if(Load->Time >= 5)
	incf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movlw	high(05h)
	subwf	1+(??_Load_Main+0)+0,w
	movlw	low(05h)
	skipnz
	subwf	0+(??_Load_Main+0)+0,w
	skipc
	goto	u9341
	goto	u9340
u9341:
	goto	l1865
u9340:
	line	64
	
l9564:	
;OverLoad_B1.c: 63: {
;OverLoad_B1.c: 64: Load->Time=0;
	incf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	65
;OverLoad_B1.c: 65: Load->ADtoGO=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,4
	line	66
	
l9566:	
;OverLoad_B1.c: 66: Load->LightsCount=Load->Lights1Status+Load->Lights2Status+Load->Lights3Status;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	044h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	movf	indf0,w
	movwf	(??_Load_Main+0)+0
	movf	(_Load),w
	addlw	043h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	movf	indf0,w
	addwf	(??_Load_Main+0)+0,w
	addwf	indf1,w
	movwf	(??_Load_Main+1)+0
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Load_Main+1)+0,w
	movwf	indf1
	line	67
	
l9568:	
;OverLoad_B1.c: 67: for(i=1 ; i<4 ; i++)
	clrf	(Load_Main@i)
	incf	(Load_Main@i),f
	
l9570:	
	movlw	(04h)
	subwf	(Load_Main@i),w
	skipc
	goto	u9351
	goto	u9350
u9351:
	goto	l9574
u9350:
	goto	l9580
	
l9572:	
	goto	l9580
	line	68
	
l1843:	
	line	69
	
l9574:	
;OverLoad_B1.c: 68: {
;OverLoad_B1.c: 69: Load->ADH+=Load->AH[i];
	lslf	(Load_Main@i),w
	addlw	08h
	addwf	(_Load),w
	movwf	(??_Load_Main+0)+0
	movf	0+(??_Load_Main+0)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	02Eh
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr1
	addwf	indf0,f
	addfsr	fsr0,1
	moviw	[1]fsr1
	addwfc	indf0,f
	addfsr	fsr0,-1
	line	70
;OverLoad_B1.c: 70: Load->ADL+=Load->AL[i];
	lslf	(Load_Main@i),w
	addlw	01Ah
	addwf	(_Load),w
	movwf	(??_Load_Main+0)+0
	movf	0+(??_Load_Main+0)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	030h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr1
	addwf	indf0,f
	addfsr	fsr0,1
	moviw	[1]fsr1
	addwfc	indf0,f
	addfsr	fsr0,-1
	line	67
	
l9576:	
	movlw	(01h)
	movwf	(??_Load_Main+0)+0
	movf	(??_Load_Main+0)+0,w
	addwf	(Load_Main@i),f
	
l9578:	
	movlw	(04h)
	subwf	(Load_Main@i),w
	skipc
	goto	u9361
	goto	u9360
u9361:
	goto	l9574
u9360:
	goto	l9580
	
l1844:	
	line	72
	
l9580:	
;OverLoad_B1.c: 71: }
;OverLoad_B1.c: 72: Load->ADH/=3;
	movlw	low(03h)
	movwf	(___lwdiv@divisor)
	movlw	high(03h)
	movwf	((___lwdiv@divisor))+1
	movf	(_Load),w
	addlw	02Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(___lwdiv@dividend)
	moviw	[1]fsr1
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	02Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(0+(?___lwdiv)),w
	movwi	[0]fsr1
	movf	(1+(?___lwdiv)),w
	movwi	[1]fsr1
	line	73
;OverLoad_B1.c: 73: Load->ADL/=3;
	movlw	low(03h)
	movwf	(___lwdiv@divisor)
	movlw	high(03h)
	movwf	((___lwdiv@divisor))+1
	movf	(_Load),w
	addlw	030h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(___lwdiv@dividend)
	moviw	[1]fsr1
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	030h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(0+(?___lwdiv)),w
	movwi	[0]fsr1
	movf	(1+(?___lwdiv)),w
	movwi	[1]fsr1
	line	74
	
l9582:	
;OverLoad_B1.c: 74: if(Load->ADH > Load->ADL)
	movf	(_Load),w
	addlw	02Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	(_Load),w
	addlw	030h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+2)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+2)+0+1
	movf	1+(??_Load_Main+0)+0,w
	subwf	1+(??_Load_Main+2)+0,w
	skipz
	goto	u9375
	movf	0+(??_Load_Main+0)+0,w
	subwf	0+(??_Load_Main+2)+0,w
u9375:
	skipnc
	goto	u9371
	goto	u9370
u9371:
	goto	l9648
u9370:
	line	76
	
l9584:	
;OverLoad_B1.c: 75: {
;OverLoad_B1.c: 76: Load->AD=(Load->ADH-Load->ADL);
	movf	(_Load),w
	addlw	02Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	030h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr0
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr0
	movwf	(??_Load_Main+0)+0+1
	comf	(??_Load_Main+0)+0,f
	comf	(??_Load_Main+0)+1,f
	incf	(??_Load_Main+0)+0,f
	skipnz
	incf	(??_Load_Main+0)+1,f
	moviw	[0]fsr1
	addwf	0+(??_Load_Main+0)+0,w
	movwf	(??_Load_Main+2)+0
	moviw	[1]fsr1
	addwfc	1+(??_Load_Main+0)+0,w
	movwf	(??_Load_Main+2)+0+1
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_Load_Main+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_Load_Main+2)+0,w
	movwi	[1]fsr1
	line	78
	
l9586:	
;OverLoad_B1.c: 78: if(Load->Count < 2)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipnc
	goto	u9381
	goto	u9380
u9381:
	goto	l9602
u9380:
	line	80
	
l9588:	
;OverLoad_B1.c: 79: {
;OverLoad_B1.c: 80: Load->Count++;
	movlw	(01h)
	movwf	(??_Load_Main+0)+0
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	addwf	indf1,f
	line	81
	
l9590:	
;OverLoad_B1.c: 81: if(Load->Count == 1)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u9391
	goto	u9390
u9391:
	goto	l9594
u9390:
	line	83
	
l9592:	
;OverLoad_B1.c: 82: {
;OverLoad_B1.c: 83: Load->JudgeValue=500;
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(01F4h)
	movwi	[0]fsr1
	movlw	high(01F4h)
	movwi	[1]fsr1
	line	84
;OverLoad_B1.c: 84: }
	goto	l9602
	line	85
	
l1847:	
	
l9594:	
;OverLoad_B1.c: 85: else if(Load->Count == 2)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	02h&0ffh
	skipz
	goto	u9401
	goto	u9400
u9401:
	goto	l9602
u9400:
	line	87
	
l9596:	
;OverLoad_B1.c: 86: {
;OverLoad_B1.c: 87: if(Load->LightsCount == 1)
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u9411
	goto	u9410
u9411:
	goto	l9600
u9410:
	line	89
	
l9598:	
;OverLoad_B1.c: 88: {
;OverLoad_B1.c: 89: Load->JudgeValue=0x42;
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(042h)
	movwi	[0]fsr1
	movlw	high(042h)
	movwi	[1]fsr1
	line	90
;OverLoad_B1.c: 90: }
	goto	l9602
	line	91
	
l1850:	
	line	93
	
l9600:	
;OverLoad_B1.c: 91: else
;OverLoad_B1.c: 92: {
;OverLoad_B1.c: 93: Load->JudgeValue=(0x42+Load->TotalLoad)-0x08;
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	0+(??_Load_Main+0)+0,w
	addlw	low(03Ah)
	movwf	(??_Load_Main+2)+0
	movlw	high(03Ah)
	addwfc	1+(??_Load_Main+0)+0,w
	movwf	1+(??_Load_Main+2)+0
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_Load_Main+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_Load_Main+2)+0,w
	movwi	[1]fsr1
	goto	l9602
	line	94
	
l1851:	
	goto	l9602
	line	95
	
l1849:	
	goto	l9602
	line	96
	
l1848:	
	goto	l9602
	
l1846:	
	line	98
	
l9602:	
;OverLoad_B1.c: 94: }
;OverLoad_B1.c: 95: }
;OverLoad_B1.c: 96: }
;OverLoad_B1.c: 98: if(Load->AD >= Load->JudgeValue)
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+2)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+2)+0+1
	movf	1+(??_Load_Main+0)+0,w
	subwf	1+(??_Load_Main+2)+0,w
	skipz
	goto	u9425
	movf	0+(??_Load_Main+0)+0,w
	subwf	0+(??_Load_Main+2)+0,w
u9425:
	skipc
	goto	u9421
	goto	u9420
u9421:
	goto	l9622
u9420:
	line	100
	
l9604:	
;OverLoad_B1.c: 99: {
;OverLoad_B1.c: 100: Load->ErrorCount++;
	movlw	(01h)
	movwf	(??_Load_Main+0)+0
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	addwf	indf1,f
	line	101
	
l9606:	
;OverLoad_B1.c: 101: if(Load->ErrorCount >2)
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u9431
	goto	u9430
u9431:
	goto	l9648
u9430:
	line	103
	
l9608:	
;OverLoad_B1.c: 102: {
;OverLoad_B1.c: 103: Load->ErrorCount=0;
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	104
	
l9610:	
;OverLoad_B1.c: 104: setLoad_Exceptions(1);
	movlw	(01h)
	fcall	_setLoad_Exceptions
	line	106
	
l9612:	
;OverLoad_B1.c: 106: Product->Data[4]=(Load->AD >> 8);
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	1+(??_Load_Main+0)+0,w
	movwf	(??_Load_Main+2)+0
	movf	(_Product),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+2)+0,w
	movwf	indf1
	line	107
	
l9614:	
;OverLoad_B1.c: 107: Product->Data[5]=Load->AD;
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	line	108
	
l9616:	
;OverLoad_B1.c: 108: Product->Data[16]=(Load->JudgeValue >> 8);
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	1+(??_Load_Main+0)+0,w
	movwf	(??_Load_Main+2)+0
	movf	(_Product),w
	addlw	010h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+2)+0,w
	movwf	indf1
	line	109
	
l9618:	
;OverLoad_B1.c: 109: Product->Data[17]=Load->JudgeValue;
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	line	110
	
l9620:	
;OverLoad_B1.c: 110: Product->Data[8]=Load->LightsCount;
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	goto	l9648
	line	113
	
l1853:	
	line	114
;OverLoad_B1.c: 113: }
;OverLoad_B1.c: 114: }
	goto	l9648
	line	115
	
l1852:	
	line	117
	
l9622:	
;OverLoad_B1.c: 115: else
;OverLoad_B1.c: 116: {
;OverLoad_B1.c: 117: Load->ErrorCount=0;
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	118
	
l9624:	
;OverLoad_B1.c: 118: if(Load->SafeCount < 10)
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(0Ah)
	subwf	indf1,w
	skipnc
	goto	u9441
	goto	u9440
u9441:
	goto	l9628
u9440:
	line	120
	
l9626:	
;OverLoad_B1.c: 119: {
;OverLoad_B1.c: 120: Load->SafeCount++;
	movlw	(01h)
	movwf	(??_Load_Main+0)+0
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	addwf	indf1,f
	goto	l9628
	line	121
	
l1855:	
	line	122
	
l9628:	
;OverLoad_B1.c: 121: }
;OverLoad_B1.c: 122: if(Load->SafeCount >= 10)
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(0Ah)
	subwf	indf1,w
	skipc
	goto	u9451
	goto	u9450
u9451:
	goto	l9648
u9450:
	line	124
	
l9630:	
;OverLoad_B1.c: 123: {
;OverLoad_B1.c: 124: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	128
	
l9632:	
;OverLoad_B1.c: 128: setDimmerLights_Clear(1,1);
	clrf	(setDimmerLights_Clear@command)
	incf	(setDimmerLights_Clear@command),f
	movlw	(01h)
	fcall	_setDimmerLights_Clear
	line	157
	
l9634:	
;OverLoad_B1.c: 132: ;;
;OverLoad_B1.c: 157: if(Load->StatusOn)
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9461
	goto	u9460
u9461:
	goto	l9640
u9460:
	line	159
	
l9636:	
;OverLoad_B1.c: 158: {
;OverLoad_B1.c: 159: Load->StatusOn=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	160
	
l9638:	
;OverLoad_B1.c: 160: Load->TotalLoad=Load->AD;
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	06h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	goto	l9640
	line	162
	
l1857:	
	line	164
	
l9640:	
;OverLoad_B1.c: 162: }
;OverLoad_B1.c: 164: if(Load->StatusOff)
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9471
	goto	u9470
u9471:
	goto	l9648
u9470:
	line	166
	
l9642:	
;OverLoad_B1.c: 165: {
;OverLoad_B1.c: 166: Load->StatusOff=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	167
	
l9644:	
;OverLoad_B1.c: 167: Load->TotalLoad=Load->AD;
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	06h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	168
	
l9646:	
;OverLoad_B1.c: 168: Load->JudgeValue=0x42*Load->LightsCount;
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	clrf	(??_Load_Main+0)+0+1
	movf	0+(??_Load_Main+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_Load_Main+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	low(042h)
	movwf	(___wmul@multiplicand)
	movlw	high(042h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(0+(?___wmul)),w
	movwi	[0]fsr1
	movf	(1+(?___wmul)),w
	movwi	[1]fsr1
	goto	l9648
	line	169
	
l1858:	
	goto	l9648
	line	170
	
l1856:	
	goto	l9648
	line	171
	
l1854:	
	goto	l9648
	line	172
	
l1845:	
	line	173
	
l9648:	
;OverLoad_B1.c: 169: }
;OverLoad_B1.c: 170: }
;OverLoad_B1.c: 171: }
;OverLoad_B1.c: 172: }
;OverLoad_B1.c: 173: setLoad_AH_AL_Restore();
	fcall	_setLoad_AH_AL_Restore
	line	175
	
l9650:	
;OverLoad_B1.c: 175: Product->Data[2]=(Load->AD >> 8);
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	1+(??_Load_Main+0)+0,w
	movwf	(??_Load_Main+2)+0
	movf	(_Product),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+2)+0,w
	movwf	indf1
	line	176
	
l9652:	
;OverLoad_B1.c: 176: Product->Data[3]=Load->AD;
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	line	177
	
l9654:	
;OverLoad_B1.c: 177: Product->Data[8]=Load->LightsCount;
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	line	178
	
l9656:	
;OverLoad_B1.c: 178: Product->Data[10]=Load->TotalLoad;
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	line	179
	
l9658:	
;OverLoad_B1.c: 179: Product->Data[16]=(Load->JudgeValue >> 8);
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	1+(??_Load_Main+0)+0,w
	movwf	(??_Load_Main+2)+0
	movf	(_Product),w
	addlw	010h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+2)+0,w
	movwf	indf1
	line	180
	
l9660:	
;OverLoad_B1.c: 180: Product->Data[17]=Load->JudgeValue;
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	line	181
	
l9662:	
;OverLoad_B1.c: 181: Product->Data[18]=Load->ErrorStatus;
	movf	(_Load),w
	addlw	05h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	012h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	line	182
	
l9664:	
;OverLoad_B1.c: 182: Product->Data[19]=Load->Count;
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	013h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	goto	l1865
	line	185
	
l1842:	
	line	186
;OverLoad_B1.c: 185: }
;OverLoad_B1.c: 186: }
	goto	l1865
	line	187
	
l1841:	
	line	189
	
l9666:	
;OverLoad_B1.c: 187: else
;OverLoad_B1.c: 188: {
;OverLoad_B1.c: 189: if(Load->GO)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9481
	goto	u9480
u9481:
	goto	l9678
u9480:
	line	191
	
l9668:	
;OverLoad_B1.c: 190: {
;OverLoad_B1.c: 191: if(!Load->LightsON)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u9491
	goto	u9490
u9491:
	goto	l9672
u9490:
	line	193
	
l9670:	
;OverLoad_B1.c: 192: {
;OverLoad_B1.c: 193: Load->LightsON=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,2
	line	194
;OverLoad_B1.c: 194: Load->Safe=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,3
	goto	l9672
	line	195
	
l1861:	
	line	196
	
l9672:	
;OverLoad_B1.c: 195: }
;OverLoad_B1.c: 196: if(getTemp_Safe() && getPF_Safe())
	fcall	_getTemp_Safe
	xorlw	0&0ffh
	skipnz
	goto	u9501
	goto	u9500
u9501:
	goto	l1865
u9500:
	
l9674:	
	fcall	_getPF_Safe
	xorlw	0&0ffh
	skipnz
	goto	u9511
	goto	u9510
u9511:
	goto	l1865
u9510:
	line	198
	
l9676:	
;OverLoad_B1.c: 197: {
;OverLoad_B1.c: 198: Load->ADtoGO=1;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l1865
	line	199
	
l1862:	
	line	200
;OverLoad_B1.c: 199: }
;OverLoad_B1.c: 200: }
	goto	l1865
	line	201
	
l1860:	
	line	203
	
l9678:	
;OverLoad_B1.c: 201: else
;OverLoad_B1.c: 202: {
;OverLoad_B1.c: 203: if(Load->LightsON)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9521
	goto	u9520
u9521:
	goto	l1865
u9520:
	line	205
	
l9680:	
;OverLoad_B1.c: 204: {
;OverLoad_B1.c: 205: Load->LightsON=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,2
	line	206
;OverLoad_B1.c: 206: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	207
	
l9682:	
;OverLoad_B1.c: 207: Load->ErrorCount=0;
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	208
	
l9684:	
;OverLoad_B1.c: 208: Load->Count=0;
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	209
;OverLoad_B1.c: 209: Load->TotalLoad=0;
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	210
	
l9686:	
;OverLoad_B1.c: 210: Load->NumberCount=0;
	movf	(_Load),w
	addlw	03Fh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	211
	
l9688:	
;OverLoad_B1.c: 211: Load->StatusOn=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	212
	
l9690:	
;OverLoad_B1.c: 212: Load->StatusOff=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	213
	
l9692:	
;OverLoad_B1.c: 213: Load->AD=0;
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	214
	
l9694:	
;OverLoad_B1.c: 214: setLoad_AH_AL_Restore();
	fcall	_setLoad_AH_AL_Restore
	line	218
	
l9696:	
;OverLoad_B1.c: 218: setDimmerLights_Clear(1,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Clear@command)
	incf	(setDimmerLights_Clear@command),f
	movlw	(01h)
	fcall	_setDimmerLights_Clear
	line	247
;OverLoad_B1.c: 222: ;;
;OverLoad_B1.c: 247: Product->Data[2]=(Load->AD >> 8);
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	1+(??_Load_Main+0)+0,w
	movwf	(??_Load_Main+2)+0
	movf	(_Product),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+2)+0,w
	movwf	indf1
	line	248
	
l9698:	
;OverLoad_B1.c: 248: Product->Data[3]=Load->AD;
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	line	253
	
l9700:	
;OverLoad_B1.c: 253: Product->Data[8]=Load->NumberCount;
	movf	(_Load),w
	addlw	03Fh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	line	254
	
l9702:	
;OverLoad_B1.c: 254: Product->Data[10]=Load->TotalLoad;
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	line	255
	
l9704:	
;OverLoad_B1.c: 255: Product->Data[16]=(Load->JudgeValue >> 8);
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Load_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Load_Main+0)+0+1
	movf	1+(??_Load_Main+0)+0,w
	movwf	(??_Load_Main+2)+0
	movf	(_Product),w
	addlw	010h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+2)+0,w
	movwf	indf1
	line	256
;OverLoad_B1.c: 256: Product->Data[17]=Load->JudgeValue;
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	line	257
;OverLoad_B1.c: 257: Product->Data[18]=Load->ErrorStatus;
	movf	(_Load),w
	addlw	05h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	012h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	line	258
;OverLoad_B1.c: 258: Product->Data[19]=Load->Count;
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Load_Main+0)+0
	movf	(_Product),w
	addlw	013h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Load_Main+0)+0,w
	movwf	indf1
	goto	l1865
	line	260
	
l1864:	
	goto	l1865
	line	261
	
l1863:	
	goto	l1865
	line	262
	
l1859:	
	goto	l1865
	line	263
	
l1840:	
	line	264
	
l1865:	
	return
	opt stack 0
GLOBAL	__end_of_Load_Main
	__end_of_Load_Main:
	signat	_Load_Main,88
	global	_setLoad_Exceptions

;; *************** function _setLoad_Exceptions *****************
;; Defined at:
;;		line 266 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_DimmerLights_Exceptions
;;		_setLED
;;		_setRF_Enable
;;		_setSw_Enable
;; This function is called by:
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text63,local,class=CODE,delta=2,merge=1
	line	266
global __ptext63
__ptext63:	;psect for function _setLoad_Exceptions
psect	text63
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	266
	global	__size_of_setLoad_Exceptions
	__size_of_setLoad_Exceptions	equ	__end_of_setLoad_Exceptions-_setLoad_Exceptions
	
_setLoad_Exceptions:	
;incstack = 0
	opt	stack 6
; Regs used in _setLoad_Exceptions: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLoad_Exceptions@command stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Exceptions@command)
	line	268
	
l9066:	
;OverLoad_B1.c: 268: Load->ERROR=command;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_Exceptions@command),w
	bcf	indf1,5
	skipz
	bsf	indf1,5
	line	269
	
l9068:	
;OverLoad_B1.c: 269: Load->Safe=(~command) & 0x01;
	comf	(setLoad_Exceptions@command),w
	andlw	01h
	movwf	(??_setLoad_Exceptions+0)+0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	rlf	(??_setLoad_Exceptions+0)+0,f
	rlf	(??_setLoad_Exceptions+0)+0,f
	rlf	(??_setLoad_Exceptions+0)+0,f
	movf	indf1,w
	xorwf	(??_setLoad_Exceptions+0)+0,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	(??_setLoad_Exceptions+0)+0,w
	movwf	indf1
	line	270
	
l9070:	
;OverLoad_B1.c: 270: Load->ErrorStatus=command;
	movf	(setLoad_Exceptions@command),w
	movwf	(??_setLoad_Exceptions+0)+0
	movf	(_Load),w
	addlw	05h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Exceptions+0)+0,w
	movwf	indf1
	line	272
	
l9072:	
;OverLoad_B1.c: 272: if(command)
	movf	(setLoad_Exceptions@command),w
	skipz
	goto	u8470
	goto	l1868
u8470:
	line	274
	
l9074:	
;OverLoad_B1.c: 273: {
;OverLoad_B1.c: 274: DimmerLights_Exceptions(2);
	movlw	(02h)
	fcall	_DimmerLights_Exceptions
	line	276
;OverLoad_B1.c: 276: setLED(2,1);
	movlb 0	; select bank0
	clrf	(setLED@command)
	incf	(setLED@command),f
	movlw	(02h)
	fcall	_setLED
	line	278
	
l1868:	
	line	279
;OverLoad_B1.c: 278: }
;OverLoad_B1.c: 279: setLED(99,command+10);
	movlb 0	; select bank0
	movf	(setLoad_Exceptions@command),w
	addlw	0Ah
	movwf	(??_setLoad_Exceptions+0)+0
	movf	(??_setLoad_Exceptions+0)+0,w
	movwf	(setLED@command)
	movlw	(063h)
	fcall	_setLED
	line	281
;OverLoad_B1.c: 281: setSw_Enable((~command) & 0x01);
	movlb 0	; select bank0
	comf	(setLoad_Exceptions@command),w
	andlw	01h
	fcall	_setSw_Enable
	line	283
;OverLoad_B1.c: 283: setRF_Enable(1,(~command) & 0x01);
	movlb 0	; select bank0
	comf	(setLoad_Exceptions@command),w
	andlw	01h
	movwf	(??_setLoad_Exceptions+0)+0
	movf	(??_setLoad_Exceptions+0)+0,w
	movwf	(setRF_Enable@command)
	movlw	(01h)
	fcall	_setRF_Enable
	line	287
	
l1869:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Exceptions
	__end_of_setLoad_Exceptions:
	signat	_setLoad_Exceptions,4216
	global	_setSw_Enable

;; *************** function _setSw_Enable *****************
;; Defined at:
;;		line 86 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_SwPointSelect
;; This function is called by:
;;		_MainT
;;		_setLoad_Exceptions
;;		_setOverTemp_Exceptions
;;		_setPowerFault_Exceptions
;; This function uses a non-reentrant model
;;
psect	text64,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	86
global __ptext64
__ptext64:	;psect for function _setSw_Enable
psect	text64
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	86
	global	__size_of_setSw_Enable
	__size_of_setSw_Enable	equ	__end_of_setSw_Enable-_setSw_Enable
	
_setSw_Enable:	
;incstack = 0
	opt	stack 7
; Regs used in _setSw_Enable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setSw_Enable@command stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Enable@command)
	line	90
	
l8546:	
;Switch_B1.c: 90: SwPointSelect(1);
	movlw	(01h)
	fcall	_SwPointSelect
	line	91
	
l8548:	
;Switch_B1.c: 91: Sw->Enable=command;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setSw_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	104
	
l2835:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Enable
	__end_of_setSw_Enable:
	signat	_setSw_Enable,4216
	global	_setRF_Enable

;; *************** function _setRF_Enable *****************
;; Defined at:
;;		line 186 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RfPointSelect
;;		_setINT_GO
;; This function is called by:
;;		_MainT
;;		_setLoad_Exceptions
;;		_setOverTemp_Exceptions
;;		_setPowerFault_Exceptions
;; This function uses a non-reentrant model
;;
psect	text65,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	186
global __ptext65
__ptext65:	;psect for function _setRF_Enable
psect	text65
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	186
	global	__size_of_setRF_Enable
	__size_of_setRF_Enable	equ	__end_of_setRF_Enable-_setRF_Enable
	
_setRF_Enable:	
;incstack = 0
	opt	stack 7
; Regs used in _setRF_Enable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_Enable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Enable@rf)
	line	188
	
l8550:	
;RF_Control_B1.c: 188: RfPointSelect(rf);
	movf	(setRF_Enable@rf),w
	fcall	_RfPointSelect
	line	189
	
l8552:	
;RF_Control_B1.c: 189: RF->Enable=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRF_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	190
	
l8554:	
;RF_Control_B1.c: 190: RF->Learn=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	191
	
l8556:	
;RF_Control_B1.c: 191: RF->TransceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	192
	
l8558:	
;RF_Control_B1.c: 192: RF->RxStatus=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	193
	
l8560:	
;RF_Control_B1.c: 193: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	194
	
l8562:	
;RF_Control_B1.c: 194: RF->DebounceTime=0;
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	195
	
l8564:	
;RF_Control_B1.c: 195: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	196
	
l8566:	
;RF_Control_B1.c: 196: setINT_GO(0);
	movlw	(0)
	fcall	_setINT_GO
	line	197
	
l2590:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Enable
	__end_of_setRF_Enable:
	signat	_setRF_Enable,8312
	global	_setINT_GO

;; *************** function _setINT_GO *****************
;; Defined at:
;;		line 303 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setRF_Main
;;		_setRF_Enable
;;		_RF_RxDisable
;; This function uses a non-reentrant model
;;
psect	text66,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	303
global __ptext66
__ptext66:	;psect for function _setINT_GO
psect	text66
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	303
	global	__size_of_setINT_GO
	__size_of_setINT_GO	equ	__end_of_setINT_GO-_setINT_GO
	
_setINT_GO:	
;incstack = 0
	opt	stack 7
; Regs used in _setINT_GO: [wreg]
;setINT_GO@command stored from wreg
	movlb 0	; select bank0
	movwf	(setINT_GO@command)
	line	305
	
l8474:	
;MCU_B1.c: 305: INTF=0;
	bcf	(89/8),(89)&7	;volatile
	line	306
	
l8476:	
;MCU_B1.c: 306: INTE=command;
	btfsc	(setINT_GO@command),0
	goto	u7811
	goto	u7810
	
u7811:
	bsf	(92/8),(92)&7	;volatile
	goto	u7824
u7810:
	bcf	(92/8),(92)&7	;volatile
u7824:
	line	307
	
l1626:	
	return
	opt stack 0
GLOBAL	__end_of_setINT_GO
	__end_of_setINT_GO:
	signat	_setINT_GO,4216
	global	_DimmerLights_Exceptions

;; *************** function _DimmerLights_Exceptions *****************
;; Defined at:
;;		line 246 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  status          1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_getDimmerLights_StatusFlag
;;		_setBuz
;;		_setDimmerLights_ERROR
;;		_setDimmerLights_TriggerERROR
;; This function is called by:
;;		_setLoad_Exceptions
;;		_setOverTemp_Exceptions
;;		_setPowerFault_Exceptions
;; This function uses a non-reentrant model
;;
psect	text67,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	246
global __ptext67
__ptext67:	;psect for function _DimmerLights_Exceptions
psect	text67
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	246
	global	__size_of_DimmerLights_Exceptions
	__size_of_DimmerLights_Exceptions	equ	__end_of_DimmerLights_Exceptions-_DimmerLights_Exceptions
	
_DimmerLights_Exceptions:	
;incstack = 0
	opt	stack 5
; Regs used in _DimmerLights_Exceptions: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;DimmerLights_Exceptions@status stored from wreg
	movlb 0	; select bank0
	movwf	(DimmerLights_Exceptions@status)
	line	248
	
l8520:	
;Dimmer_B1.c: 248: if(status == 1)
	movf	(DimmerLights_Exceptions@status),w
	xorlw	01h&0ffh
	skipz
	goto	u7861
	goto	u7860
u7861:
	goto	l8526
u7860:
	line	250
	
l8522:	
;Dimmer_B1.c: 249: {
;Dimmer_B1.c: 250: if(getDimmerLights_StatusFlag())
	fcall	_getDimmerLights_StatusFlag
	xorlw	0&0ffh
	skipnz
	goto	u7871
	goto	u7870
u7871:
	goto	l883
u7870:
	line	252
	
l8524:	
;Dimmer_B1.c: 251: {
;Dimmer_B1.c: 252: setBuz(10,300);
	movlw	low(012Ch)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(012Ch)
	movwf	((setBuz@time))+1
	movlw	(0Ah)
	fcall	_setBuz
	line	253
	
l883:	
	line	256
;Dimmer_B1.c: 253: }
;Dimmer_B1.c: 256: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	line	264
;Dimmer_B1.c: 264: }
	goto	l884
	line	265
	
l882:	
	
l8526:	
;Dimmer_B1.c: 265: else if(status == 2)
	movlb 0	; select bank0
	movf	(DimmerLights_Exceptions@status),w
	xorlw	02h&0ffh
	skipz
	goto	u7881
	goto	u7880
u7881:
	goto	l8530
u7880:
	line	267
	
l8528:	
;Dimmer_B1.c: 266: {
;Dimmer_B1.c: 267: setBuz(5,300);
	movlw	low(012Ch)
	movwf	(setBuz@time)
	movlw	high(012Ch)
	movwf	((setBuz@time))+1
	movlw	(05h)
	fcall	_setBuz
	line	268
;Dimmer_B1.c: 268: setDimmerLights_ERROR(Dimmer->Load);
	movlb 1	; select bank1
	incf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	fcall	_setDimmerLights_ERROR
	line	269
;Dimmer_B1.c: 269: }
	goto	l884
	line	270
	
l885:	
	
l8530:	
;Dimmer_B1.c: 270: else if(status == 3)
	movlb 0	; select bank0
	movf	(DimmerLights_Exceptions@status),w
	xorlw	03h&0ffh
	skipz
	goto	u7891
	goto	u7890
u7891:
	goto	l884
u7890:
	line	273
	
l8532:	
;Dimmer_B1.c: 271: {
;Dimmer_B1.c: 273: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	goto	l884
	line	281
	
l887:	
	goto	l884
	line	284
	
l886:	
	
l884:	
;Dimmer_B1.c: 281: }
;Dimmer_B1.c: 284: setDimmerLights_TriggerERROR(1,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_TriggerERROR@command)
	movlw	(01h)
	fcall	_setDimmerLights_TriggerERROR
	line	293
	
l8534:	
;Dimmer_B1.c: 293: if(TMain->SelfTest == 0)
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u7901
	goto	u7900
u7901:
	goto	l889
u7900:
	line	295
	
l8536:	
;Dimmer_B1.c: 294: {
;Dimmer_B1.c: 295: TMain->i=0;
	movf	(_TMain),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	296
;Dimmer_B1.c: 296: TMain->j=0;
	movf	(_TMain),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	297
;Dimmer_B1.c: 297: TMain->k=1;
	movf	(_TMain),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	298
;Dimmer_B1.c: 298: TMain->Count2=0;
	movf	(_TMain),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l889
	line	299
	
l888:	
	line	300
	
l889:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Exceptions
	__end_of_DimmerLights_Exceptions:
	signat	_DimmerLights_Exceptions,4216
	global	_setDimmerLights_TriggerERROR

;; *************** function _setDimmerLights_TriggerERROR *****************
;; Defined at:
;;		line 320 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_DimmerLights_Exceptions
;; This function uses a non-reentrant model
;;
psect	text68,local,class=CODE,delta=2,merge=1
	line	320
global __ptext68
__ptext68:	;psect for function _setDimmerLights_TriggerERROR
psect	text68
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	320
	global	__size_of_setDimmerLights_TriggerERROR
	__size_of_setDimmerLights_TriggerERROR	equ	__end_of_setDimmerLights_TriggerERROR-_setDimmerLights_TriggerERROR
	
_setDimmerLights_TriggerERROR:	
;incstack = 0
	opt	stack 6
; Regs used in _setDimmerLights_TriggerERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_TriggerERROR@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_TriggerERROR@lights)
	line	322
	
l8464:	
;Dimmer_B1.c: 322: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	323
	
l8466:	
;Dimmer_B1.c: 323: DimmerLights->Trigger=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	324
	
l8468:	
;Dimmer_B1.c: 324: DimmerLights->Switch=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	325
	
l8470:	
;Dimmer_B1.c: 325: DimmerLights->TriggerAdj=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	326
	
l8472:	
;Dimmer_B1.c: 326: DimmerLights->AdjGo=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,2
	skipz
	bsf	indf1,2
	line	327
	
l896:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_TriggerERROR
	__end_of_setDimmerLights_TriggerERROR:
	signat	_setDimmerLights_TriggerERROR,8312
	global	_setDimmerLights_ERROR

;; *************** function _setDimmerLights_ERROR *****************
;; Defined at:
;;		line 302 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_setLED
;;		_setLoad_StatusOff
;;		_setRFSW_Status
;;		_setSw_Status
;; This function is called by:
;;		_DimmerLights_Exceptions
;; This function uses a non-reentrant model
;;
psect	text69,local,class=CODE,delta=2,merge=1
	line	302
global __ptext69
__ptext69:	;psect for function _setDimmerLights_ERROR
psect	text69
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	302
	global	__size_of_setDimmerLights_ERROR
	__size_of_setDimmerLights_ERROR	equ	__end_of_setDimmerLights_ERROR-_setDimmerLights_ERROR
	
_setDimmerLights_ERROR:	
;incstack = 0
	opt	stack 5
; Regs used in _setDimmerLights_ERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_ERROR@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_ERROR@lights)
	line	304
	
l8450:	
;Dimmer_B1.c: 304: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	305
	
l8452:	
;Dimmer_B1.c: 305: if(DimmerLights->Status)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u7801
	goto	u7800
u7801:
	goto	l893
u7800:
	line	307
	
l8454:	
;Dimmer_B1.c: 306: {
;Dimmer_B1.c: 307: DimmerLights->Signal=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	308
;Dimmer_B1.c: 308: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	309
;Dimmer_B1.c: 309: DimmerLights->AdjStatus=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	310
;Dimmer_B1.c: 310: DimmerLights->StatusFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	line	311
;Dimmer_B1.c: 311: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights_ERROR+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_ERROR+0)+0,w
	movwf	indf1
	line	312
;Dimmer_B1.c: 312: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
	movf	(_DimmerLights),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights_ERROR+0)+0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_ERROR+0)+0,w
	movwf	indf1
	line	313
;Dimmer_B1.c: 313: Dimmer->Detect=1;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	314
	
l8456:	
;Dimmer_B1.c: 314: setLoad_StatusOff(lights,1);
	movlb 0	; select bank0
	clrf	(setLoad_StatusOff@command)
	incf	(setLoad_StatusOff@command),f
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setLoad_StatusOff
	line	315
	
l8458:	
;Dimmer_B1.c: 315: setLED(lights,1);
	movlb 0	; select bank0
	clrf	(setLED@command)
	incf	(setLED@command),f
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setLED
	line	316
	
l8460:	
;Dimmer_B1.c: 316: setSw_Status(lights,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setSw_Status
	line	317
	
l8462:	
;Dimmer_B1.c: 317: setRFSW_Status(lights,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setRFSW_Status
	goto	l893
	line	318
	
l892:	
	line	319
	
l893:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_ERROR
	__end_of_setDimmerLights_ERROR:
	signat	_setDimmerLights_ERROR,4216
	global	_setDimmerLights_Clear

;; *************** function _setDimmerLights_Clear *****************
;; Defined at:
;;		line 456 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text70,local,class=CODE,delta=2,merge=1
	line	456
global __ptext70
__ptext70:	;psect for function _setDimmerLights_Clear
psect	text70
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	456
	global	__size_of_setDimmerLights_Clear
	__size_of_setDimmerLights_Clear	equ	__end_of_setDimmerLights_Clear-_setDimmerLights_Clear
	
_setDimmerLights_Clear:	
;incstack = 0
	opt	stack 9
; Regs used in _setDimmerLights_Clear: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Clear@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Clear@lights)
	line	458
	
l8982:	
;Dimmer_B1.c: 458: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Clear@lights),w
	fcall	_DimmerLightsPointSelect
	line	459
	
l8984:	
;Dimmer_B1.c: 459: DimmerLights->Clear=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_Clear@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	460
	
l933:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Clear
	__end_of_setDimmerLights_Clear:
	signat	_setDimmerLights_Clear,8312
	global	_getTemp_Safe

;; *************** function _getTemp_Safe *****************
;; Defined at:
;;		line 26 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Load_Main
;;		_setPowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text71,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	26
global __ptext71
__ptext71:	;psect for function _getTemp_Safe
psect	text71
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	26
	global	__size_of_getTemp_Safe
	__size_of_getTemp_Safe	equ	__end_of_getTemp_Safe-_getTemp_Safe
	
_getTemp_Safe:	
;incstack = 0
	opt	stack 9
; Regs used in _getTemp_Safe: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	28
	
l8734:	
;OverTemperature_B1.c: 28: return Temp->Safe;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	indf1,w
	andlw	(1<<1)-1
	goto	l2044
	
l8736:	
	line	29
	
l2044:	
	return
	opt stack 0
GLOBAL	__end_of_getTemp_Safe
	__end_of_getTemp_Safe:
	signat	_getTemp_Safe,89
	global	_getPF_Safe

;; *************** function _getPF_Safe *****************
;; Defined at:
;;		line 40 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Load_Main
;;		_setTemp_Main
;; This function uses a non-reentrant model
;;
psect	text72,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	40
global __ptext72
__ptext72:	;psect for function _getPF_Safe
psect	text72
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	40
	global	__size_of_getPF_Safe
	__size_of_getPF_Safe	equ	__end_of_getPF_Safe-_getPF_Safe
	
_getPF_Safe:	
;incstack = 0
	opt	stack 9
; Regs used in _getPF_Safe: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	42
	
l8738:	
;PowerFault_B1.c: 42: return PF->Safe;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	rrf	indf1,w
	rrf	wreg,f
	andlw	(1<<1)-1
	goto	l2343
	
l8740:	
	line	43
	
l2343:	
	return
	opt stack 0
GLOBAL	__end_of_getPF_Safe
	__end_of_getPF_Safe:
	signat	_getPF_Safe,89
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK0 ] unsigned int 
;;  counter         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text73,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
	line	6
global __ptext73
__ptext73:	;psect for function ___lwdiv
psect	text73
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 10
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l7590:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l7592:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u6461
	goto	u6460
u6461:
	goto	l7612
u6460:
	line	16
	
l7594:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l7600
	
l3442:	
	line	18
	
l7596:	
	movlw	01h
	
u6475:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u6475
	line	19
	
l7598:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l7600
	line	20
	
l3441:	
	line	17
	
l7600:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u6481
	goto	u6480
u6481:
	goto	l7596
u6480:
	goto	l7602
	
l3443:	
	goto	l7602
	line	21
	
l3444:	
	line	22
	
l7602:	
	movlw	01h
	
u6495:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u6495
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u6505
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u6505:
	skipc
	goto	u6501
	goto	u6500
u6501:
	goto	l7608
u6500:
	line	24
	
l7604:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	25
	
l7606:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l7608
	line	26
	
l3445:	
	line	27
	
l7608:	
	movlw	01h
	
u6515:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u6515
	line	28
	
l7610:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u6521
	goto	u6520
u6521:
	goto	l7602
u6520:
	goto	l7612
	
l3446:	
	goto	l7612
	line	29
	
l3440:	
	line	30
	
l7612:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l3447
	
l7614:	
	line	31
	
l3447:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_Load_Initialization

;; *************** function _Load_Initialization *****************
;; Defined at:
;;		line 8 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setLoad_AH_AL_Restore
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text74,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	8
global __ptext74
__ptext74:	;psect for function _Load_Initialization
psect	text74
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	8
	global	__size_of_Load_Initialization
	__size_of_Load_Initialization	equ	__end_of_Load_Initialization-_Load_Initialization
	
_Load_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Load_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	10
	
l7762:	
;OverLoad_B1.c: 10: Load=&Load1;
	movlw	(_Load1)&0ffh
	movlb 0	; select bank0
	movwf	(??_Load_Initialization+0)+0
	movf	(??_Load_Initialization+0)+0,w
	movwf	(_Load)
	line	11
	
l7764:	
;OverLoad_B1.c: 11: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	12
	
l7766:	
;OverLoad_B1.c: 12: setLoad_AH_AL_Restore();
	fcall	_setLoad_AH_AL_Restore
	line	13
	
l1824:	
	return
	opt stack 0
GLOBAL	__end_of_Load_Initialization
	__end_of_Load_Initialization:
	signat	_Load_Initialization,88
	global	_setLoad_AH_AL_Restore

;; *************** function _setLoad_AH_AL_Restore *****************
;; Defined at:
;;		line 348 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Load_Initialization
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text75,local,class=CODE,delta=2,merge=1
	line	348
global __ptext75
__ptext75:	;psect for function _setLoad_AH_AL_Restore
psect	text75
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	348
	global	__size_of_setLoad_AH_AL_Restore
	__size_of_setLoad_AH_AL_Restore	equ	__end_of_setLoad_AH_AL_Restore-_setLoad_AH_AL_Restore
	
_setLoad_AH_AL_Restore:	
;incstack = 0
	opt	stack 10
; Regs used in _setLoad_AH_AL_Restore: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	351
	
l7284:	
;OverLoad_B1.c: 350: char i;
;OverLoad_B1.c: 351: for(i=0 ; i<5 ;i++)
	movlb 0	; select bank0
	clrf	(setLoad_AH_AL_Restore@i)
	
l7286:	
	movlw	(05h)
	subwf	(setLoad_AH_AL_Restore@i),w
	skipc
	goto	u5861
	goto	u5860
u5861:
	goto	l7290
u5860:
	goto	l1901
	
l7288:	
	goto	l1901
	line	352
	
l1899:	
	line	353
	
l7290:	
;OverLoad_B1.c: 352: {
;OverLoad_B1.c: 353: Load->AH[i]=0;
	lslf	(setLoad_AH_AL_Restore@i),w
	addlw	08h
	addwf	(_Load),w
	movwf	(??_setLoad_AH_AL_Restore+0)+0
	movf	0+(??_setLoad_AH_AL_Restore+0)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	354
;OverLoad_B1.c: 354: Load->AL[i]=0xffff;
	lslf	(setLoad_AH_AL_Restore@i),w
	addlw	01Ah
	addwf	(_Load),w
	movwf	(??_setLoad_AH_AL_Restore+0)+0
	movf	0+(??_setLoad_AH_AL_Restore+0)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0FFFFh)
	movwi	[0]fsr1
	movlw	high(0FFFFh)
	movwi	[1]fsr1
	line	351
	
l7292:	
	movlw	(01h)
	movwf	(??_setLoad_AH_AL_Restore+0)+0
	movf	(??_setLoad_AH_AL_Restore+0)+0,w
	addwf	(setLoad_AH_AL_Restore@i),f
	
l7294:	
	movlw	(05h)
	subwf	(setLoad_AH_AL_Restore@i),w
	skipc
	goto	u5871
	goto	u5870
u5871:
	goto	l7290
u5870:
	goto	l1901
	
l1900:	
	line	356
	
l1901:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_AH_AL_Restore
	__end_of_setLoad_AH_AL_Restore:
	signat	_setLoad_AH_AL_Restore,88
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
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setLED_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text76,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	51
global __ptext76
__ptext76:	;psect for function _LED_Main
psect	text76
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	51
	global	__size_of_LED_Main
	__size_of_LED_Main	equ	__end_of_LED_Main-_LED_Main
	
_LED_Main:	
;incstack = 0
	opt	stack 9
; Regs used in _LED_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	54
	
l9362:	
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
	
l1080:	
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
;;  led             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LedPointSelect
;; This function is called by:
;;		_LED_Main
;; This function uses a non-reentrant model
;;
psect	text77,local,class=CODE,delta=2,merge=1
	line	214
global __ptext77
__ptext77:	;psect for function _setLED_Main
psect	text77
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	214
	global	__size_of_setLED_Main
	__size_of_setLED_Main	equ	__end_of_setLED_Main-_setLED_Main
	
_setLED_Main:	
;incstack = 0
	opt	stack 9
; Regs used in _setLED_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLED_Main@led stored from wreg
	movlb 0	; select bank0
	movwf	(setLED_Main@led)
	line	216
	
l7162:	
;LED_B1.c: 216: LedPointSelect(led);
	movf	(setLED_Main@led),w
	fcall	_LedPointSelect
	line	217
	
l7164:	
;LED_B1.c: 217: if(LED->GO)
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u5761
	goto	u5760
u5761:
	goto	l1118
u5760:
	line	219
	
l7166:	
;LED_B1.c: 218: {
;LED_B1.c: 219: LED->Time++;
	incf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	220
	
l7168:	
;LED_B1.c: 220: if(LED->Time >= 500/10)
	incf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setLED_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLED_Main+0)+0+1
	movlw	high(032h)
	subwf	1+(??_setLED_Main+0)+0,w
	movlw	low(032h)
	skipnz
	subwf	0+(??_setLED_Main+0)+0,w
	skipc
	goto	u5771
	goto	u5770
u5771:
	goto	l1118
u5770:
	line	222
	
l7170:	
;LED_B1.c: 221: {
;LED_B1.c: 222: LED->Time=0;
	movlb 1	; select bank1
	incf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	224
	
l7172:	
;LED_B1.c: 224: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED_Main@led),w
	xorlw	01h&0ffh
	skipz
	goto	u5781
	goto	u5780
u5781:
	goto	l7176
u5780:
	line	226
	
l7174:	
;LED_B1.c: 225: {
;LED_B1.c: 226: RA3=~RA3;
	movlw	1<<((99)&7)
	xorwf	((99)/8),f
	line	227
;LED_B1.c: 227: }
	goto	l1118
	line	230
	
l1113:	
	
l7176:	
;LED_B1.c: 230: else if(led == 2)
	movf	(setLED_Main@led),w
	xorlw	02h&0ffh
	skipz
	goto	u5791
	goto	u5790
u5791:
	goto	l7180
u5790:
	line	232
	
l7178:	
;LED_B1.c: 231: {
;LED_B1.c: 232: RC7=~RC7;
	movlw	1<<((119)&7)
	xorwf	((119)/8),f
	line	233
;LED_B1.c: 233: }
	goto	l1118
	line	242
	
l1115:	
	
l7180:	
;LED_B1.c: 242: else if(led == 99)
	movf	(setLED_Main@led),w
	xorlw	063h&0ffh
	skipz
	goto	u5801
	goto	u5800
u5801:
	goto	l1118
u5800:
	line	244
	
l7182:	
;LED_B1.c: 243: {
;LED_B1.c: 244: RB5=~RB5;
	movlw	1<<((109)&7)
	xorwf	((109)/8),f
	goto	l1118
	line	245
	
l1117:	
	goto	l1118
	line	247
	
l1116:	
	goto	l1118
	
l1114:	
	goto	l1118
	
l1112:	
	goto	l1118
	line	248
	
l1111:	
	line	249
	
l1118:	
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
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_setLED_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text78,local,class=CODE,delta=2,merge=1
	line	35
global __ptext78
__ptext78:	;psect for function _LED_Initialization
psect	text78
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	35
	global	__size_of_LED_Initialization
	__size_of_LED_Initialization	equ	__end_of_LED_Initialization-_LED_Initialization
	
_LED_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _LED_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	38
	
l9360:	
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
	
l1077:	
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
;;  led             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LedPointSelect
;;		_setLED
;; This function is called by:
;;		_LED_Initialization
;; This function uses a non-reentrant model
;;
psect	text79,local,class=CODE,delta=2,merge=1
	line	67
global __ptext79
__ptext79:	;psect for function _setLED_Initialization
psect	text79
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	67
	global	__size_of_setLED_Initialization
	__size_of_setLED_Initialization	equ	__end_of_setLED_Initialization-_setLED_Initialization
	
_setLED_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _setLED_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLED_Initialization@led stored from wreg
	movlb 0	; select bank0
	movwf	(setLED_Initialization@led)
	line	69
	
l8986:	
;LED_B1.c: 69: LedPointSelect(led);
	movf	(setLED_Initialization@led),w
	fcall	_LedPointSelect
	line	70
	
l8988:	
;LED_B1.c: 70: LED->Enable=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	71
	
l8990:	
;LED_B1.c: 71: setLED(led,0);
	movlb 0	; select bank0
	clrf	(setLED@command)
	movf	(setLED_Initialization@led),w
	fcall	_setLED
	line	72
	
l1083:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Initialization
	__end_of_setLED_Initialization:
	signat	_setLED_Initialization,4216
	global	_Flash_Memory_Main

;; *************** function _Flash_Memory_Main *****************
;; Defined at:
;;		line 873 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Flash_Memory_Modify
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text80,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	873
global __ptext80
__ptext80:	;psect for function _Flash_Memory_Main
psect	text80
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	873
	global	__size_of_Flash_Memory_Main
	__size_of_Flash_Memory_Main	equ	__end_of_Flash_Memory_Main-_Flash_Memory_Main
	
_Flash_Memory_Main:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	875
	
l9532:	
;MCU_B1.c: 875: if(Memory->GO)
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9281
	goto	u9280
u9281:
	goto	l1658
u9280:
	line	877
	
l9534:	
;MCU_B1.c: 876: {
;MCU_B1.c: 877: if(Memory->Modify)
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9291
	goto	u9290
u9291:
	goto	l9544
u9290:
	line	879
	
l9536:	
;MCU_B1.c: 878: {
;MCU_B1.c: 879: Memory->Time++;
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	880
	
l9538:	
;MCU_B1.c: 880: if(Memory->Time == 25)
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(019h)
	skipz
	goto	u9305
	moviw	[1]fsr1
	xorlw	high(019h)
u9305:
	skipz
	goto	u9301
	goto	u9300
u9301:
	goto	l1658
u9300:
	line	882
	
l9540:	
;MCU_B1.c: 881: {
;MCU_B1.c: 882: Memory->Time=0;
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	883
;MCU_B1.c: 883: Memory->Modify=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	884
;MCU_B1.c: 884: Memory->GO=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	885
	
l9542:	
;MCU_B1.c: 885: Flash_Memory_Modify();
	fcall	_Flash_Memory_Modify
	goto	l1658
	line	887
	
l1656:	
	line	888
;MCU_B1.c: 887: }
;MCU_B1.c: 888: }
	goto	l1658
	line	889
	
l1655:	
	line	891
	
l9544:	
;MCU_B1.c: 889: else
;MCU_B1.c: 890: {
;MCU_B1.c: 891: Memory->GO=0;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l1658
	line	892
	
l1657:	
	goto	l1658
	line	893
	
l1654:	
	line	894
	
l1658:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Main
	__end_of_Flash_Memory_Main:
	signat	_Flash_Memory_Main,88
	global	_Flash_Memory_Modify

;; *************** function _Flash_Memory_Modify *****************
;; Defined at:
;;		line 948 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Flash_Memory_Erasing
;;		_Flash_Memory_Read
;;		_Flash_Memory_Write
;; This function is called by:
;;		_Flash_Memory_Main
;; This function uses a non-reentrant model
;;
psect	text81,local,class=CODE,delta=2,merge=1
	line	948
global __ptext81
__ptext81:	;psect for function _Flash_Memory_Modify
psect	text81
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	948
	global	__size_of_Flash_Memory_Modify
	__size_of_Flash_Memory_Modify	equ	__end_of_Flash_Memory_Modify-_Flash_Memory_Modify
	
_Flash_Memory_Modify:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Modify: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	951
	
l9040:	
;MCU_B1.c: 950: char i;
;MCU_B1.c: 951: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Modify@i)
	
l9042:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u8441
	goto	u8440
u8441:
	goto	l9046
u8440:
	goto	l9052
	
l9044:	
	goto	l9052
	line	952
	
l1675:	
	line	953
	
l9046:	
;MCU_B1.c: 952: {
;MCU_B1.c: 953: Memory->Data[i]=Flash_Memory_Read(i);
	movf	(Flash_Memory_Modify@i),w
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(Flash_Memory_Modify@i),w
	movlb 1	; select bank1
	addwf	(_Memory)^080h,w
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Modify+1)+0
	movf	0+(??_Flash_Memory_Modify+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	951
	
l9048:	
	movlw	(01h)
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(??_Flash_Memory_Modify+0)+0,w
	addwf	(Flash_Memory_Modify@i),f
	
l9050:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u8451
	goto	u8450
u8451:
	goto	l9046
u8450:
	goto	l9052
	
l1676:	
	line	955
	
l9052:	
;MCU_B1.c: 954: }
;MCU_B1.c: 955: Memory->Data[0]=Product->Data[12];
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	956
;MCU_B1.c: 956: Memory->Data[1]=Product->Data[13];
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movlb 1	; select bank1
	incf	(_Memory)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	957
;MCU_B1.c: 957: Memory->Data[2]=Product->Data[14];
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	963
;MCU_B1.c: 963: if(Memory->LoopSave)
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u8461
	goto	u8460
u8461:
	goto	l9056
u8460:
	line	965
	
l9054:	
;MCU_B1.c: 964: {
;MCU_B1.c: 965: Memory->LoopSave=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	966
;MCU_B1.c: 966: TMain->FirstOpen=0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	967
;MCU_B1.c: 967: TMain->First=0;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l9056
	line	969
	
l1677:	
	line	970
	
l9056:	
;MCU_B1.c: 969: }
;MCU_B1.c: 970: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	971
	
l9058:	
;MCU_B1.c: 971: Flash_Memory_Erasing();
	fcall	_Flash_Memory_Erasing
	line	972
	
l9060:	
;MCU_B1.c: 972: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	973
	
l9062:	
;MCU_B1.c: 973: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	974
	
l1678:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Modify
	__end_of_Flash_Memory_Modify:
	signat	_Flash_Memory_Modify,88
	global	_Flash_Memory_Erasing

;; *************** function _Flash_Memory_Erasing *****************
;; Defined at:
;;		line 937 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Flash_Memory_Unlock
;; This function is called by:
;;		_Flash_Memory_Modify
;; This function uses a non-reentrant model
;;
psect	text82,local,class=CODE,delta=2,merge=1
	line	937
global __ptext82
__ptext82:	;psect for function _Flash_Memory_Erasing
psect	text82
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	937
	global	__size_of_Flash_Memory_Erasing
	__size_of_Flash_Memory_Erasing	equ	__end_of_Flash_Memory_Erasing-_Flash_Memory_Erasing
	
_Flash_Memory_Erasing:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Erasing: [wreg+status,2+status,0+pclath+cstack]
	line	939
	
l8720:	
;MCU_B1.c: 939: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	940
	
l8722:	
;MCU_B1.c: 940: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	941
	
l8724:	
;MCU_B1.c: 941: PMADRL=0x00;
	clrf	(401)^0180h	;volatile
	line	942
	
l8726:	
;MCU_B1.c: 942: FREE=1;
	bsf	(3244/8)^0180h,(3244)&7	;volatile
	line	943
	
l8728:	
;MCU_B1.c: 943: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7	;volatile
	line	944
	
l8730:	
;MCU_B1.c: 944: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	945
	
l8732:	
;MCU_B1.c: 945: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7	;volatile
	line	946
	
l1672:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Erasing
	__end_of_Flash_Memory_Erasing:
	signat	_Flash_Memory_Erasing,88
	global	_Flash_Memory_Initialization

;; *************** function _Flash_Memory_Initialization *****************
;; Defined at:
;;		line 828 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   62[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Flash_Memory_Read
;;		_Flash_Memory_Write
;;		_setPercentValue
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text83,local,class=CODE,delta=2,merge=1
	line	828
global __ptext83
__ptext83:	;psect for function _Flash_Memory_Initialization
psect	text83
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	828
	global	__size_of_Flash_Memory_Initialization
	__size_of_Flash_Memory_Initialization	equ	__end_of_Flash_Memory_Initialization-_Flash_Memory_Initialization
	
_Flash_Memory_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	831
	
l9376:	
;MCU_B1.c: 830: char i;
;MCU_B1.c: 831: if(Flash_Memory_Read(31) == 0xaa)
	movlw	(01Fh)
	fcall	_Flash_Memory_Read
	xorlw	0AAh&0ffh
	skipz
	goto	u9051
	goto	u9050
u9051:
	goto	l9396
u9050:
	line	833
	
l9378:	
;MCU_B1.c: 832: {
;MCU_B1.c: 833: Product->Data[12]=Flash_Memory_Read(0);
	movlw	(0)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	834
;MCU_B1.c: 834: Product->Data[13]=Flash_Memory_Read(1);
	movlw	(01h)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	835
;MCU_B1.c: 835: Product->Data[14]=Flash_Memory_Read(2);
	movlw	(02h)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	841
	
l9380:	
;MCU_B1.c: 841: i=setPercentValue(((char)((100-55)*1.5)));
	movlw	(043h)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	842
	
l9382:	
;MCU_B1.c: 842: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	843
	
l9384:	
;MCU_B1.c: 843: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	844
	
l9386:	
;MCU_B1.c: 844: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	846
	
l9388:	
;MCU_B1.c: 846: if(Product->Data[12]==0xff && Product->Data[13]==0xff && Product->Data[14]==0xff)
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0FFh&0ffh
	skipz
	goto	u9061
	goto	u9060
u9061:
	goto	l1651
u9060:
	
l9390:	
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0FFh&0ffh
	skipz
	goto	u9071
	goto	u9070
u9071:
	goto	l1651
u9070:
	
l9392:	
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0FFh&0ffh
	skipz
	goto	u9081
	goto	u9080
u9081:
	goto	l1651
u9080:
	line	848
	
l9394:	
;MCU_B1.c: 847: {
;MCU_B1.c: 848: TMain->FirstOpen=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	849
;MCU_B1.c: 849: TMain->First=1;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l1651
	line	850
	
l1649:	
	line	851
;MCU_B1.c: 850: }
;MCU_B1.c: 851: }
	goto	l1651
	line	852
	
l1648:	
	line	854
	
l9396:	
;MCU_B1.c: 852: else
;MCU_B1.c: 853: {
;MCU_B1.c: 854: i=setPercentValue(((char)((100-55)*1.5)));
	movlw	(043h)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	855
	
l9398:	
;MCU_B1.c: 855: Memory->Data[0]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	856
	
l9400:	
;MCU_B1.c: 856: Memory->Data[1]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	incf	(_Memory)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	857
	
l9402:	
;MCU_B1.c: 857: Memory->Data[2]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	858
	
l9404:	
;MCU_B1.c: 858: Memory->Data[3]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	859
	
l9406:	
;MCU_B1.c: 859: Memory->Data[4]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	860
	
l9408:	
;MCU_B1.c: 860: Memory->Data[5]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	861
	
l9410:	
;MCU_B1.c: 861: Memory->Data[31]=0xaa;
	movlw	(0AAh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	01Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	862
	
l9412:	
;MCU_B1.c: 862: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	863
	
l9414:	
;MCU_B1.c: 863: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	864
	
l9416:	
;MCU_B1.c: 864: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	865
	
l9418:	
;MCU_B1.c: 865: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	866
	
l9420:	
;MCU_B1.c: 866: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	867
	
l9422:	
;MCU_B1.c: 867: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	868
	
l9424:	
;MCU_B1.c: 868: TMain->FirstOpen=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	869
	
l9426:	
;MCU_B1.c: 869: TMain->First=1;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l1651
	line	870
	
l1650:	
	line	871
	
l1651:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Initialization
	__end_of_Flash_Memory_Initialization:
	signat	_Flash_Memory_Initialization,88
	global	_Flash_Memory_Write

;; *************** function _Flash_Memory_Write *****************
;; Defined at:
;;		line 917 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Flash_Memory_Unlock
;; This function is called by:
;;		_Flash_Memory_Initialization
;;		_Flash_Memory_Modify
;; This function uses a non-reentrant model
;;
psect	text84,local,class=CODE,delta=2,merge=1
	line	917
global __ptext84
__ptext84:	;psect for function _Flash_Memory_Write
psect	text84
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	917
	global	__size_of_Flash_Memory_Write
	__size_of_Flash_Memory_Write	equ	__end_of_Flash_Memory_Write-_Flash_Memory_Write
	
_Flash_Memory_Write:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Write: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	920
	
l8690:	
;MCU_B1.c: 919: char i;
;MCU_B1.c: 920: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	921
	
l8692:	
;MCU_B1.c: 921: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	922
	
l8694:	
;MCU_B1.c: 922: PMDATH=0;
	clrf	(404)^0180h	;volatile
	line	923
	
l8696:	
;MCU_B1.c: 923: FREE=0;
	bcf	(3244/8)^0180h,(3244)&7	;volatile
	line	924
	
l8698:	
;MCU_B1.c: 924: LWLO=1;
	bsf	(3245/8)^0180h,(3245)&7	;volatile
	line	925
	
l8700:	
;MCU_B1.c: 925: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7	;volatile
	line	926
	
l8702:	
;MCU_B1.c: 926: for(i=0 ; i<32 ; i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Write@i)
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u8071
	goto	u8070
u8071:
	goto	l8706
u8070:
	goto	l1668
	
l8704:	
	goto	l1668
	line	927
	
l1667:	
	line	928
	
l8706:	
;MCU_B1.c: 927: {
;MCU_B1.c: 928: PMADRL=i;
	movf	(Flash_Memory_Write@i),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	929
	
l8708:	
;MCU_B1.c: 929: PMDATL=Memory->Data[i];
	movlb 0	; select bank0
	movf	(Flash_Memory_Write@i),w
	movlb 1	; select bank1
	addwf	(_Memory)^080h,w
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Write+0)+0
	movf	0+(??_Flash_Memory_Write+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 3	; select bank3
	movwf	(403)^0180h	;volatile
	line	930
	
l8710:	
;MCU_B1.c: 930: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	926
	
l8712:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Write+0)+0
	movf	(??_Flash_Memory_Write+0)+0,w
	addwf	(Flash_Memory_Write@i),f
	
l8714:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u8081
	goto	u8080
u8081:
	goto	l8706
u8080:
	
l1668:	
	line	932
;MCU_B1.c: 931: }
;MCU_B1.c: 932: LWLO=0;
	movlb 3	; select bank3
	bcf	(3245/8)^0180h,(3245)&7	;volatile
	line	933
	
l8716:	
;MCU_B1.c: 933: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	934
	
l8718:	
;MCU_B1.c: 934: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7	;volatile
	line	935
	
l1669:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Write
	__end_of_Flash_Memory_Write:
	signat	_Flash_Memory_Write,88
	global	_Flash_Memory_Unlock

;; *************** function _Flash_Memory_Unlock *****************
;; Defined at:
;;		line 896 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Flash_Memory_Write
;;		_Flash_Memory_Erasing
;; This function uses a non-reentrant model
;;
psect	text85,local,class=CODE,delta=2,merge=1
	line	896
global __ptext85
__ptext85:	;psect for function _Flash_Memory_Unlock
psect	text85
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	896
	global	__size_of_Flash_Memory_Unlock
	__size_of_Flash_Memory_Unlock	equ	__end_of_Flash_Memory_Unlock-_Flash_Memory_Unlock
	
_Flash_Memory_Unlock:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Unlock: [wreg]
	line	898
	
l8568:	
;MCU_B1.c: 898: PMCON2=0x55;
	movlw	(055h)
	movlb 3	; select bank3
	movwf	(406)^0180h	;volatile
	line	899
;MCU_B1.c: 899: PMCON2=0xaa;
	movlw	(0AAh)
	movwf	(406)^0180h	;volatile
	line	900
	
l8570:	
;MCU_B1.c: 900: WR=1;
	bsf	(3241/8)^0180h,(3241)&7	;volatile
	line	901
	
l8572:	
;MCU_B1.c: 901: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	902
	
l8574:	
;MCU_B1.c: 902: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	903
	
l1661:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Unlock
	__end_of_Flash_Memory_Unlock:
	signat	_Flash_Memory_Unlock,88
	global	_Flash_Memory_Read

;; *************** function _Flash_Memory_Read *****************
;; Defined at:
;;		line 905 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[BANK0 ] unsigned char 
;;  ret             1    3[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Flash_Memory_Initialization
;;		_Flash_Memory_Modify
;; This function uses a non-reentrant model
;;
psect	text86,local,class=CODE,delta=2,merge=1
	line	905
global __ptext86
__ptext86:	;psect for function _Flash_Memory_Read
psect	text86
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	905
	global	__size_of_Flash_Memory_Read
	__size_of_Flash_Memory_Read	equ	__end_of_Flash_Memory_Read-_Flash_Memory_Read
	
_Flash_Memory_Read:	
;incstack = 0
	opt	stack 9
; Regs used in _Flash_Memory_Read: [wreg+status,2]
;Flash_Memory_Read@address stored from wreg
	movlb 0	; select bank0
	movwf	(Flash_Memory_Read@address)
	line	907
	
l6794:	
;MCU_B1.c: 907: char i,ret=0;
	clrf	(Flash_Memory_Read@ret)
	line	908
	
l6796:	
;MCU_B1.c: 908: PMADRH=0x30;
	movlw	(030h)
	movlb 3	; select bank3
	movwf	(402)^0180h	;volatile
	line	909
	
l6798:	
;MCU_B1.c: 909: PMADRL=address;
	movlb 0	; select bank0
	movf	(Flash_Memory_Read@address),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	910
	
l6800:	
;MCU_B1.c: 910: CFGS=0;
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	911
	
l6802:	
;MCU_B1.c: 911: RD=1;
	bsf	(3240/8)^0180h,(3240)&7	;volatile
	line	912
	
l6804:	
;MCU_B1.c: 912: i=PMDATH;
	movf	(404)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@i)
	line	913
	
l6806:	
;MCU_B1.c: 913: ret=PMDATL;
	movlb 3	; select bank3
	movf	(403)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@ret)
	line	914
	
l6808:	
;MCU_B1.c: 914: return ret;
	movf	(Flash_Memory_Read@ret),w
	goto	l1664
	
l6810:	
	line	915
	
l1664:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Read
	__end_of_Flash_Memory_Read:
	signat	_Flash_Memory_Read,4217
	global	_DimmerLights_Main

;; *************** function _DimmerLights_Main *****************
;; Defined at:
;;		line 114 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_DimmerLights_Close
;;		_setDimmerLights_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text87,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	114
global __ptext87
__ptext87:	;psect for function _DimmerLights_Main
psect	text87
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	114
	global	__size_of_DimmerLights_Main
	__size_of_DimmerLights_Main	equ	__end_of_DimmerLights_Main-_DimmerLights_Main
	
_DimmerLights_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _DimmerLights_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	117
	
l9358:	
;Dimmer_B1.c: 117: setDimmerLights_Main(1);
	movlw	(01h)
	fcall	_setDimmerLights_Main
	line	128
;Dimmer_B1.c: 128: DimmerLights_Close();
	fcall	_DimmerLights_Close
	line	129
	
l861:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Main
	__end_of_DimmerLights_Main:
	signat	_DimmerLights_Main,88
	global	_setDimmerLights_Main

;; *************** function _setDimmerLights_Main *****************
;; Defined at:
;;		line 131 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   70[BANK0 ] unsigned char 
;;  clear           1   69[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_setBuz
;;		_setDimmerLights
;;		_setDimmerLights_Adj
;; This function is called by:
;;		_DimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text88,local,class=CODE,delta=2,merge=1
	line	131
global __ptext88
__ptext88:	;psect for function _setDimmerLights_Main
psect	text88
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	131
	global	__size_of_setDimmerLights_Main
	__size_of_setDimmerLights_Main	equ	__end_of_setDimmerLights_Main-_setDimmerLights_Main
	
_setDimmerLights_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _setDimmerLights_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Main@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Main@lights)
	line	133
	
l8946:	
;Dimmer_B1.c: 133: char clear=1;
	clrf	(setDimmerLights_Main@clear)
	incf	(setDimmerLights_Main@clear),f
	line	134
	
l8948:	
;Dimmer_B1.c: 134: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	162
	
l8950:	
;Dimmer_B1.c: 162: if(DimmerLights->Trigger)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u8371
	goto	u8370
u8371:
	goto	l8968
u8370:
	line	164
	
l8952:	
;Dimmer_B1.c: 163: {
;Dimmer_B1.c: 164: if(clear)
	movf	(setDimmerLights_Main@clear),w
	skipz
	goto	u8380
	goto	l873
u8380:
	line	166
	
l8954:	
;Dimmer_B1.c: 165: {
;Dimmer_B1.c: 166: if(DimmerLights->Switch)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u8391
	goto	u8390
u8391:
	goto	l8962
u8390:
	line	168
	
l8956:	
;Dimmer_B1.c: 167: {
;Dimmer_B1.c: 168: DimmerLights->Trigger=0;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	169
	
l8958:	
;Dimmer_B1.c: 169: setDimmerLights(lights,1);
	clrf	(setDimmerLights@status)
	incf	(setDimmerLights@status),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	line	172
	
l8960:	
;Dimmer_B1.c: 172: DimmerLights->Clear=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	174
;Dimmer_B1.c: 174: }
	goto	l873
	line	175
	
l866:	
	line	177
	
l8962:	
;Dimmer_B1.c: 175: else
;Dimmer_B1.c: 176: {
;Dimmer_B1.c: 177: DimmerLights->Trigger=0;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	178
	
l8964:	
;Dimmer_B1.c: 178: setDimmerLights(lights,0);
	clrf	(setDimmerLights@status)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	line	181
	
l8966:	
;Dimmer_B1.c: 181: DimmerLights->Clear=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	goto	l873
	line	183
	
l867:	
	goto	l873
	line	184
	
l865:	
	line	185
;Dimmer_B1.c: 183: }
;Dimmer_B1.c: 184: }
;Dimmer_B1.c: 185: }
	goto	l873
	line	186
	
l864:	
	line	188
	
l8968:	
;Dimmer_B1.c: 186: else
;Dimmer_B1.c: 187: {
;Dimmer_B1.c: 188: if(DimmerLights->TriggerAdj)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u8401
	goto	u8400
u8401:
	goto	l873
u8400:
	line	190
	
l8970:	
;Dimmer_B1.c: 189: {
;Dimmer_B1.c: 190: if(clear)
	movf	(setDimmerLights_Main@clear),w
	skipz
	goto	u8410
	goto	l873
u8410:
	line	192
	
l8972:	
;Dimmer_B1.c: 191: {
;Dimmer_B1.c: 192: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	193
	
l8974:	
;Dimmer_B1.c: 193: DimmerLights->TriggerAdj=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	194
	
l8976:	
;Dimmer_B1.c: 194: if(DimmerLights->AdjGo)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u8421
	goto	u8420
u8421:
	goto	l8980
u8420:
	line	196
	
l8978:	
;Dimmer_B1.c: 195: {
;Dimmer_B1.c: 196: setDimmerLights_Adj(lights,1);
	clrf	(setDimmerLights_Adj@status)
	incf	(setDimmerLights_Adj@status),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	line	197
;Dimmer_B1.c: 197: setBuz(1,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	198
;Dimmer_B1.c: 198: }
	movlb 0	; select bank0
	goto	l873
	line	199
	
l871:	
	line	201
	
l8980:	
;Dimmer_B1.c: 199: else
;Dimmer_B1.c: 200: {
;Dimmer_B1.c: 201: setDimmerLights_Adj(lights,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Adj@status)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	movlb 0	; select bank0
	goto	l873
	line	202
	
l872:	
	movlb 0	; select bank0
	goto	l873
	line	203
	
l870:	
	movlb 0	; select bank0
	goto	l873
	line	204
	
l869:	
	movlb 0	; select bank0
	goto	l873
	line	205
	
l868:	
	line	206
	
l873:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Main
	__end_of_setDimmerLights_Main:
	signat	_setDimmerLights_Main,4216
	global	_setDimmerLights_Adj

;; *************** function _setDimmerLights_Adj *****************
;; Defined at:
;;		line 388 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  status          1   66[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   68[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_setLoad_StatusOff
;;		_setRF_DimmerLights
;;		_setTxData
;; This function is called by:
;;		_setDimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text89,local,class=CODE,delta=2,merge=1
	line	388
global __ptext89
__ptext89:	;psect for function _setDimmerLights_Adj
psect	text89
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	388
	global	__size_of_setDimmerLights_Adj
	__size_of_setDimmerLights_Adj	equ	__end_of_setDimmerLights_Adj-_setDimmerLights_Adj
	
_setDimmerLights_Adj:	
;incstack = 0
	opt	stack 5
; Regs used in _setDimmerLights_Adj: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Adj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Adj@lights)
	line	390
	
l8676:	
;Dimmer_B1.c: 390: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Adj@lights),w
	fcall	_DimmerLightsPointSelect
	line	391
	
l8678:	
;Dimmer_B1.c: 391: if(status)
	movlb 0	; select bank0
	movf	(setDimmerLights_Adj@status),w
	skipz
	goto	u8050
	goto	l8682
u8050:
	line	393
	
l8680:	
;Dimmer_B1.c: 392: {
;Dimmer_B1.c: 393: DimmerLights->AdjFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	394
;Dimmer_B1.c: 394: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	395
;Dimmer_B1.c: 395: }
	goto	l909
	line	396
	
l906:	
	line	398
	
l8682:	
;Dimmer_B1.c: 396: else
;Dimmer_B1.c: 397: {
;Dimmer_B1.c: 398: if(DimmerLights->AdjFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u8061
	goto	u8060
u8061:
	goto	l909
u8060:
	line	400
	
l8684:	
;Dimmer_B1.c: 399: {
;Dimmer_B1.c: 400: DimmerLights->Signal=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	401
;Dimmer_B1.c: 401: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	402
	
l8686:	
;Dimmer_B1.c: 402: setLoad_StatusOff(0,1);
	clrf	(setLoad_StatusOff@command)
	incf	(setLoad_StatusOff@command),f
	movlw	(0)
	fcall	_setLoad_StatusOff
	line	403
	
l8688:	
;Dimmer_B1.c: 403: DimmerLights->MaxmumValue=DimmerLights->DimmingValue;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights_Adj+0)+0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Adj+0)+0,w
	movwf	indf1
	line	411
;Dimmer_B1.c: 411: setRF_DimmerLights(lights,1);
	clrf	(setRF_DimmerLights@on)
	incf	(setRF_DimmerLights@on),f
	movf	(setDimmerLights_Adj@lights),w
	fcall	_setRF_DimmerLights
	line	412
;Dimmer_B1.c: 412: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l909
	line	413
	
l908:	
	goto	l909
	line	414
	
l907:	
	line	415
	
l909:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Adj
	__end_of_setDimmerLights_Adj:
	signat	_setDimmerLights_Adj,8312
	global	_setLoad_StatusOff

;; *************** function _setLoad_StatusOff *****************
;; Defined at:
;;		line 322 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights_ERROR
;;		_setDimmerLights_Adj
;; This function uses a non-reentrant model
;;
psect	text90,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	322
global __ptext90
__ptext90:	;psect for function _setLoad_StatusOff
psect	text90
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	322
	global	__size_of_setLoad_StatusOff
	__size_of_setLoad_StatusOff	equ	__end_of_setLoad_StatusOff-_setLoad_StatusOff
	
_setLoad_StatusOff:	
;incstack = 0
	opt	stack 6
; Regs used in _setLoad_StatusOff: [wreg+fsr1l+fsr1h+status,2+status,0]
;setLoad_StatusOff@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_StatusOff@lights)
	line	324
	
l8334:	
;OverLoad_B1.c: 324: Load->StatusOff=command;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_StatusOff@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	325
	
l8336:	
;OverLoad_B1.c: 325: Load->SafeCount-=2;
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(02h)
	subwf	indf1,f
	line	326
	
l8338:	
;OverLoad_B1.c: 326: if(lights == 1)
	movf	(setLoad_StatusOff@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u7591
	goto	u7590
u7591:
	goto	l8342
u7590:
	line	328
	
l8340:	
;OverLoad_B1.c: 327: {
;OverLoad_B1.c: 328: Load->Lights1Status=0;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l8342
	line	329
	
l1887:	
	line	330
	
l8342:	
;OverLoad_B1.c: 329: }
;OverLoad_B1.c: 330: if(lights == 2)
	movf	(setLoad_StatusOff@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u7601
	goto	u7600
u7601:
	goto	l8346
u7600:
	line	332
	
l8344:	
;OverLoad_B1.c: 331: {
;OverLoad_B1.c: 332: Load->Lights2Status=0;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l8346
	line	333
	
l1888:	
	line	334
	
l8346:	
;OverLoad_B1.c: 333: }
;OverLoad_B1.c: 334: if(lights == 3)
	movf	(setLoad_StatusOff@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u7611
	goto	u7610
u7611:
	goto	l1890
u7610:
	line	336
	
l8348:	
;OverLoad_B1.c: 335: {
;OverLoad_B1.c: 336: Load->Lights3Status=0;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l1890
	line	337
	
l1889:	
	line	338
	
l1890:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_StatusOff
	__end_of_setLoad_StatusOff:
	signat	_setLoad_StatusOff,8312
	global	_setDimmerLights

;; *************** function _setDimmerLights *****************
;; Defined at:
;;		line 330 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  status          1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_setLED
;;		_setLoad_Count
;;		_setLoad_StatusOn
;; This function is called by:
;;		_setDimmerLights_Main
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text91,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	330
global __ptext91
__ptext91:	;psect for function _setDimmerLights
psect	text91
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	330
	global	__size_of_setDimmerLights
	__size_of_setDimmerLights	equ	__end_of_setDimmerLights-_setDimmerLights
	
_setDimmerLights:	
;incstack = 0
	opt	stack 5
; Regs used in _setDimmerLights: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights@lights)
	line	332
	
l8422:	
;Dimmer_B1.c: 332: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights@lights),w
	fcall	_DimmerLightsPointSelect
	line	333
	
l8424:	
;Dimmer_B1.c: 333: Dimmer->Load=lights;
	movlb 0	; select bank0
	movf	(setDimmerLights@lights),w
	movwf	(??_setDimmerLights+0)+0
	movlb 1	; select bank1
	incf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	line	334
	
l8426:	
;Dimmer_B1.c: 334: if(status)
	movf	(setDimmerLights@status),w
	skipz
	goto	u7780
	goto	l8448
u7780:
	line	336
	
l8428:	
;Dimmer_B1.c: 335: {
;Dimmer_B1.c: 336: DimmerLights->Status=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	337
	
l8430:	
;Dimmer_B1.c: 337: setLED(lights,0);
	clrf	(setLED@command)
	movf	(setDimmerLights@lights),w
	fcall	_setLED
	line	338
	
l8432:	
;Dimmer_B1.c: 338: RC7=!0;
	movlb 0	; select bank0
	bsf	(119/8),(119)&7	;volatile
	line	339
	
l8434:	
;Dimmer_B1.c: 339: setLoad_Count(0);
	movlw	(0)
	fcall	_setLoad_Count
	line	341
;Dimmer_B1.c: 341: DimmerLights->Signal=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	342
;Dimmer_B1.c: 342: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	line	344
;Dimmer_B1.c: 344: if(!DimmerLights->StatusFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u7791
	goto	u7790
u7791:
	goto	l903
u7790:
	line	346
	
l8436:	
;Dimmer_B1.c: 345: {
;Dimmer_B1.c: 346: DimmerLights->StatusFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	347
	
l8438:	
;Dimmer_B1.c: 347: setLoad_StatusOn(lights,1);
	clrf	(setLoad_StatusOn@command)
	incf	(setLoad_StatusOn@command),f
	movf	(setDimmerLights@lights),w
	fcall	_setLoad_StatusOn
	line	348
	
l8440:	
;Dimmer_B1.c: 348: Memory->GO=0; if(!0) { Memory->Time=0; } ;;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	
l8442:	
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l8444
	
l901:	
	line	351
	
l8444:	
;Dimmer_B1.c: 351: DimmerLights->DimmingValue=DimmerLights->MaxmumValue;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	line	355
	
l8446:	
;Dimmer_B1.c: 355: DimmerLights->DimmingValue=((char)((100-55)*1.5));
	movlw	(043h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	goto	l903
	line	357
	
l900:	
	line	358
;Dimmer_B1.c: 357: }
;Dimmer_B1.c: 358: }
	goto	l903
	line	359
	
l899:	
	line	361
	
l8448:	
;Dimmer_B1.c: 359: else
;Dimmer_B1.c: 360: {
;Dimmer_B1.c: 361: DimmerLights->Status=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	363
;Dimmer_B1.c: 363: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
	movf	(_DimmerLights),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	line	370
;Dimmer_B1.c: 370: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	371
;Dimmer_B1.c: 371: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	372
;Dimmer_B1.c: 372: DimmerLights->AdjStatus=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	373
;Dimmer_B1.c: 373: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	goto	l903
	line	385
	
l902:	
	line	386
	
l903:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights
	__end_of_setDimmerLights:
	signat	_setDimmerLights,8312
	global	_setLoad_StatusOn

;; *************** function _setLoad_StatusOn *****************
;; Defined at:
;;		line 304 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights
;; This function uses a non-reentrant model
;;
psect	text92,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	304
global __ptext92
__ptext92:	;psect for function _setLoad_StatusOn
psect	text92
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	304
	global	__size_of_setLoad_StatusOn
	__size_of_setLoad_StatusOn	equ	__end_of_setLoad_StatusOn-_setLoad_StatusOn
	
_setLoad_StatusOn:	
;incstack = 0
	opt	stack 6
; Regs used in _setLoad_StatusOn: [wregfsr1]
;setLoad_StatusOn@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_StatusOn@lights)
	line	306
	
l8400:	
;OverLoad_B1.c: 306: Load->GO=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,1
	line	307
;OverLoad_B1.c: 307: Load->StatusOn=command;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_StatusOn@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	309
	
l8402:	
;OverLoad_B1.c: 309: if(lights == 1)
	movf	(setLoad_StatusOn@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u7751
	goto	u7750
u7751:
	goto	l8406
u7750:
	line	311
	
l8404:	
;OverLoad_B1.c: 310: {
;OverLoad_B1.c: 311: Load->Lights1Status=1;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	goto	l8406
	line	312
	
l1881:	
	line	313
	
l8406:	
;OverLoad_B1.c: 312: }
;OverLoad_B1.c: 313: if(lights == 2)
	movf	(setLoad_StatusOn@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u7761
	goto	u7760
u7761:
	goto	l8410
u7760:
	line	315
	
l8408:	
;OverLoad_B1.c: 314: {
;OverLoad_B1.c: 315: Load->Lights2Status=1;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	goto	l8410
	line	316
	
l1882:	
	line	317
	
l8410:	
;OverLoad_B1.c: 316: }
;OverLoad_B1.c: 317: if(lights == 3)
	movf	(setLoad_StatusOn@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u7771
	goto	u7770
u7771:
	goto	l1884
u7770:
	line	319
	
l8412:	
;OverLoad_B1.c: 318: {
;OverLoad_B1.c: 319: Load->Lights3Status=1;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	goto	l1884
	line	320
	
l1883:	
	line	321
	
l1884:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_StatusOn
	__end_of_setLoad_StatusOn:
	signat	_setLoad_StatusOn,8312
	global	_setLoad_Count

;; *************** function _setLoad_Count *****************
;; Defined at:
;;		line 289 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights
;; This function uses a non-reentrant model
;;
psect	text93,local,class=CODE,delta=2,merge=1
	line	289
global __ptext93
__ptext93:	;psect for function _setLoad_Count
psect	text93
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	289
	global	__size_of_setLoad_Count
	__size_of_setLoad_Count	equ	__end_of_setLoad_Count-_setLoad_Count
	
_setLoad_Count:	
;incstack = 0
	opt	stack 6
; Regs used in _setLoad_Count: [wregfsr1]
;setLoad_Count@command stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Count@command)
	line	291
	
l6388:	
;OverLoad_B1.c: 291: Load->Count=command;
	movf	(setLoad_Count@command),w
	movwf	(??_setLoad_Count+0)+0
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Count+0)+0,w
	movwf	indf1
	line	292
;OverLoad_B1.c: 292: Load->SafeCount=command;
	movf	(setLoad_Count@command),w
	movwf	(??_setLoad_Count+0)+0
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Count+0)+0,w
	movwf	indf1
	line	293
	
l1872:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Count
	__end_of_setLoad_Count:
	signat	_setLoad_Count,4216
	global	_setLED

;; *************** function _setLED *****************
;; Defined at:
;;		line 74 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LedPointSelect
;; This function is called by:
;;		_setDimmerLights_ERROR
;;		_setDimmerLights
;;		_setLED_Initialization
;;		_setLoad_Exceptions
;;		_setOverTemp_Exceptions
;;		_setPowerFault_Exceptions
;;		_setSw_Initialization
;; This function uses a non-reentrant model
;;
psect	text94,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	74
global __ptext94
__ptext94:	;psect for function _setLED
psect	text94
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	74
	global	__size_of_setLED
	__size_of_setLED	equ	__end_of_setLED-_setLED
	
_setLED:	
;incstack = 0
	opt	stack 7
; Regs used in _setLED: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLED@led stored from wreg
	movlb 0	; select bank0
	movwf	(setLED@led)
	line	76
	
l8350:	
;LED_B1.c: 76: LedPointSelect(led);
	movf	(setLED@led),w
	fcall	_LedPointSelect
	line	77
	
l8352:	
;LED_B1.c: 77: if(command == 0)
	movlb 0	; select bank0
	movf	(setLED@command),f
	skipz
	goto	u7621
	goto	u7620
u7621:
	goto	l8366
u7620:
	line	80
	
l8354:	
;LED_B1.c: 78: {
;LED_B1.c: 80: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u7631
	goto	u7630
u7631:
	goto	l8358
u7630:
	line	85
	
l8356:	
;LED_B1.c: 81: {
;LED_B1.c: 85: RA3=1;
	bsf	(99/8),(99)&7	;volatile
	line	87
;LED_B1.c: 87: }
	goto	l1108
	line	90
	
l1087:	
	
l8358:	
;LED_B1.c: 90: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u7641
	goto	u7640
u7641:
	goto	l8362
u7640:
	line	95
	
l8360:	
;LED_B1.c: 91: {
;LED_B1.c: 95: RC7=1;
	bsf	(119/8),(119)&7	;volatile
	line	97
;LED_B1.c: 97: }
	goto	l1108
	line	110
	
l1089:	
	
l8362:	
;LED_B1.c: 110: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u7651
	goto	u7650
u7651:
	goto	l1108
u7650:
	line	115
	
l8364:	
;LED_B1.c: 111: {
;LED_B1.c: 115: RB5=1;
	bsf	(109/8),(109)&7	;volatile
	goto	l1108
	line	117
	
l1091:	
	goto	l1108
	line	119
	
l1090:	
	goto	l1108
	
l1088:	
;LED_B1.c: 117: }
;LED_B1.c: 119: }
	goto	l1108
	line	120
	
l1086:	
	
l8366:	
;LED_B1.c: 120: else if(command == 1)
	movf	(setLED@command),w
	xorlw	01h&0ffh
	skipz
	goto	u7661
	goto	u7660
u7661:
	goto	l8380
u7660:
	line	123
	
l8368:	
;LED_B1.c: 121: {
;LED_B1.c: 123: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u7671
	goto	u7670
u7671:
	goto	l8372
u7670:
	line	128
	
l8370:	
;LED_B1.c: 124: {
;LED_B1.c: 128: RA3=0;
	bcf	(99/8),(99)&7	;volatile
	line	130
;LED_B1.c: 130: }
	goto	l1108
	line	133
	
l1094:	
	
l8372:	
;LED_B1.c: 133: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u7681
	goto	u7680
u7681:
	goto	l8376
u7680:
	line	138
	
l8374:	
;LED_B1.c: 134: {
;LED_B1.c: 138: RC7=0;
	bcf	(119/8),(119)&7	;volatile
	line	140
;LED_B1.c: 140: }
	goto	l1108
	line	153
	
l1096:	
	
l8376:	
;LED_B1.c: 153: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u7691
	goto	u7690
u7691:
	goto	l1108
u7690:
	line	158
	
l8378:	
;LED_B1.c: 154: {
;LED_B1.c: 158: RB5=0;
	bcf	(109/8),(109)&7	;volatile
	goto	l1108
	line	160
	
l1098:	
	goto	l1108
	line	162
	
l1097:	
	goto	l1108
	
l1095:	
;LED_B1.c: 160: }
;LED_B1.c: 162: }
	goto	l1108
	line	163
	
l1093:	
	
l8380:	
;LED_B1.c: 163: else if(command == 10)
	movf	(setLED@command),w
	xorlw	0Ah&0ffh
	skipz
	goto	u7701
	goto	u7700
u7701:
	goto	l8396
u7700:
	line	165
	
l8382:	
;LED_B1.c: 164: {
;LED_B1.c: 165: LED->GO=0;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	166
;LED_B1.c: 166: LED->Time=0;
	incf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	168
	
l8384:	
;LED_B1.c: 168: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u7711
	goto	u7710
u7711:
	goto	l8388
u7710:
	line	173
	
l8386:	
;LED_B1.c: 169: {
;LED_B1.c: 173: RA3=1;
	bsf	(99/8),(99)&7	;volatile
	line	175
;LED_B1.c: 175: }
	goto	l1108
	line	178
	
l1101:	
	
l8388:	
;LED_B1.c: 178: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u7721
	goto	u7720
u7721:
	goto	l8392
u7720:
	line	183
	
l8390:	
;LED_B1.c: 179: {
;LED_B1.c: 183: RC7=1;
	bsf	(119/8),(119)&7	;volatile
	line	185
;LED_B1.c: 185: }
	goto	l1108
	line	198
	
l1103:	
	
l8392:	
;LED_B1.c: 198: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u7731
	goto	u7730
u7731:
	goto	l1108
u7730:
	line	203
	
l8394:	
;LED_B1.c: 199: {
;LED_B1.c: 203: RB5=1;
	bsf	(109/8),(109)&7	;volatile
	goto	l1108
	line	205
	
l1105:	
	goto	l1108
	line	207
	
l1104:	
	goto	l1108
	
l1102:	
;LED_B1.c: 205: }
;LED_B1.c: 207: }
	goto	l1108
	line	208
	
l1100:	
	
l8396:	
;LED_B1.c: 208: else if(command == 11)
	movf	(setLED@command),w
	xorlw	0Bh&0ffh
	skipz
	goto	u7741
	goto	u7740
u7741:
	goto	l1108
u7740:
	line	210
	
l8398:	
;LED_B1.c: 209: {
;LED_B1.c: 210: LED->GO=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l1108
	line	211
	
l1107:	
	goto	l1108
	line	212
	
l1106:	
	goto	l1108
	
l1099:	
	goto	l1108
	
l1092:	
	
l1108:	
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
;;  led             1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setLED_Initialization
;;		_setLED
;;		_setLED_Main
;; This function uses a non-reentrant model
;;
psect	text95,local,class=CODE,delta=2,merge=1
	line	7
global __ptext95
__ptext95:	;psect for function _LedPointSelect
psect	text95
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	7
	global	__size_of_LedPointSelect
	__size_of_LedPointSelect	equ	__end_of_LedPointSelect-_LedPointSelect
	
_LedPointSelect:	
;incstack = 0
	opt	stack 7
; Regs used in _LedPointSelect: [wreg]
;LedPointSelect@led stored from wreg
	movlb 0	; select bank0
	movwf	(LedPointSelect@led)
	line	10
	
l6192:	
;LED_B1.c: 10: if(led == 1)
	movf	(LedPointSelect@led),w
	xorlw	01h&0ffh
	skipz
	goto	u4481
	goto	u4480
u4481:
	goto	l6196
u4480:
	line	12
	
l6194:	
;LED_B1.c: 11: {
;LED_B1.c: 12: LED=&VarLED1;
	movlw	(_VarLED1)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	13
;LED_B1.c: 13: }
	goto	l1074
	line	16
	
l1069:	
	
l6196:	
;LED_B1.c: 16: else if(led == 2)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	02h&0ffh
	skipz
	goto	u4491
	goto	u4490
u4491:
	goto	l6200
u4490:
	line	18
	
l6198:	
;LED_B1.c: 17: {
;LED_B1.c: 18: LED=&VarLED2;
	movlw	(_VarLED2)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	19
;LED_B1.c: 19: }
	goto	l1074
	line	28
	
l1071:	
	
l6200:	
;LED_B1.c: 28: else if(led == 99)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	063h&0ffh
	skipz
	goto	u4501
	goto	u4500
u4501:
	goto	l1074
u4500:
	line	30
	
l6202:	
;LED_B1.c: 29: {
;LED_B1.c: 30: LED=&VarErrLED;
	movlw	(_VarErrLED)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	goto	l1074
	line	31
	
l1073:	
	goto	l1074
	line	33
	
l1072:	
	goto	l1074
	
l1070:	
	
l1074:	
	return
	opt stack 0
GLOBAL	__end_of_LedPointSelect
	__end_of_LedPointSelect:
	signat	_LedPointSelect,4216
	global	_DimmerLights_Close

;; *************** function _DimmerLights_Close *****************
;; Defined at:
;;		line 101 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_getDimmerLights_StatusFlag
;;		_setLoad_GO
;; This function is called by:
;;		_DimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text96,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	101
global __ptext96
__ptext96:	;psect for function _DimmerLights_Close
psect	text96
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	101
	global	__size_of_DimmerLights_Close
	__size_of_DimmerLights_Close	equ	__end_of_DimmerLights_Close-_DimmerLights_Close
	
_DimmerLights_Close:	
;incstack = 0
	opt	stack 9
; Regs used in _DimmerLights_Close: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	103
	
l8934:	
;Dimmer_B1.c: 103: if(Dimmer->Detect)
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u8351
	goto	u8350
u8351:
	goto	l858
u8350:
	line	105
	
l8936:	
;Dimmer_B1.c: 104: {
;Dimmer_B1.c: 105: Dimmer->Detect=0;
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	106
	
l8938:	
;Dimmer_B1.c: 106: if(!getDimmerLights_StatusFlag())
	fcall	_getDimmerLights_StatusFlag
	iorlw	0
	skipz
	goto	u8361
	goto	u8360
u8361:
	goto	l858
u8360:
	line	108
	
l8940:	
;Dimmer_B1.c: 107: {
;Dimmer_B1.c: 108: setLoad_GO(0);
	movlw	(0)
	fcall	_setLoad_GO
	line	109
	
l8942:	
;Dimmer_B1.c: 109: Memory->GO=1; if(!1) { Memory->Time=1; } ;;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l858
	
l8944:	
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	movwi	[0]fsr1
	movlw	high(01h)
	movwi	[1]fsr1
	goto	l858
	
l857:	
	goto	l858
	line	110
	
l856:	
	goto	l858
	line	111
	
l855:	
	line	112
	
l858:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Close
	__end_of_DimmerLights_Close:
	signat	_DimmerLights_Close,88
	global	_setLoad_GO

;; *************** function _setLoad_GO *****************
;; Defined at:
;;		line 300 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DimmerLights_Close
;; This function uses a non-reentrant model
;;
psect	text97,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	300
global __ptext97
__ptext97:	;psect for function _setLoad_GO
psect	text97
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	300
	global	__size_of_setLoad_GO
	__size_of_setLoad_GO	equ	__end_of_setLoad_GO-_setLoad_GO
	
_setLoad_GO:	
;incstack = 0
	opt	stack 9
; Regs used in _setLoad_GO: [wregfsr1]
;setLoad_GO@command stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_GO@command)
	line	302
	
l8674:	
;OverLoad_B1.c: 302: Load->GO=command;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_GO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	303
	
l1878:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_GO
	__end_of_setLoad_GO:
	signat	_setLoad_GO,4216
	global	_getDimmerLights_StatusFlag

;; *************** function _getDimmerLights_StatusFlag *****************
;; Defined at:
;;		line 208 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Status          1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DimmerLights_Close
;;		_DimmerLights_Exceptions
;; This function uses a non-reentrant model
;;
psect	text98,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	208
global __ptext98
__ptext98:	;psect for function _getDimmerLights_StatusFlag
psect	text98
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	208
	global	__size_of_getDimmerLights_StatusFlag
	__size_of_getDimmerLights_StatusFlag	equ	__end_of_getDimmerLights_StatusFlag-_getDimmerLights_StatusFlag
	
_getDimmerLights_StatusFlag:	
;incstack = 0
	opt	stack 7
; Regs used in _getDimmerLights_StatusFlag: [wreg+fsr1l+fsr1h+status,2]
	line	210
	
l8414:	
;Dimmer_B1.c: 210: char Status=0;
	movlb 0	; select bank0
	clrf	(getDimmerLights_StatusFlag@Status)
	line	221
	
l8416:	
;Dimmer_B1.c: 221: Status=(DimmerLights11->StatusFlag)?1:0;
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(getDimmerLights_StatusFlag@Status)
	line	224
	
l8418:	
;Dimmer_B1.c: 224: return Status;
	movf	(getDimmerLights_StatusFlag@Status),w
	goto	l876
	
l8420:	
	line	225
	
l876:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmerLights_StatusFlag
	__end_of_getDimmerLights_StatusFlag:
	signat	_getDimmerLights_StatusFlag,89
	global	_DimmerLights_Initialization

;; *************** function _DimmerLights_Initialization *****************
;; Defined at:
;;		line 41 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Dimmer_Initialization
;;		_setDimmerLights_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text99,local,class=CODE,delta=2,merge=1
	line	41
global __ptext99
__ptext99:	;psect for function _DimmerLights_Initialization
psect	text99
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	41
	global	__size_of_DimmerLights_Initialization
	__size_of_DimmerLights_Initialization	equ	__end_of_DimmerLights_Initialization-_DimmerLights_Initialization
	
_DimmerLights_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _DimmerLights_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	44
	
l7678:	
;Dimmer_B1.c: 44: DimmerLights11=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movlb 0	; select bank0
	movwf	(??_DimmerLights_Initialization+0)+0
	movf	(??_DimmerLights_Initialization+0)+0,w
	movwf	(_DimmerLights11)
	line	45
	
l7680:	
;Dimmer_B1.c: 45: setDimmerLights_Initialization(1);
	movlw	(01h)
	fcall	_setDimmerLights_Initialization
	line	59
	
l7682:	
;Dimmer_B1.c: 59: Dimmer_Initialization();
	fcall	_Dimmer_Initialization
	line	62
	
l849:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Initialization
	__end_of_DimmerLights_Initialization:
	signat	_DimmerLights_Initialization,88
	global	_setDimmerLights_Initialization

;; *************** function _setDimmerLights_Initialization *****************
;; Defined at:
;;		line 63 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_DimmerLights_Initialization
;; This function uses a non-reentrant model
;;
psect	text100,local,class=CODE,delta=2,merge=1
	line	63
global __ptext100
__ptext100:	;psect for function _setDimmerLights_Initialization
psect	text100
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	63
	global	__size_of_setDimmerLights_Initialization
	__size_of_setDimmerLights_Initialization	equ	__end_of_setDimmerLights_Initialization-_setDimmerLights_Initialization
	
_setDimmerLights_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _setDimmerLights_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Initialization@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Initialization@lights)
	line	65
	
l7092:	
;Dimmer_B1.c: 65: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Initialization@lights),w
	fcall	_DimmerLightsPointSelect
	line	66
	
l7094:	
;Dimmer_B1.c: 66: DimmerLights->Clear=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	72
	
l7096:	
;Dimmer_B1.c: 72: DimmerLights->MaxmumValue=((char)((100-55)*1.5));
	movlw	(043h)
	movwf	(??_setDimmerLights_Initialization+0)+0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Initialization+0)+0,w
	movwf	indf1
	line	73
	
l7098:	
;Dimmer_B1.c: 73: DimmerLights->MinimumValue=((char)((100-20)*1.5));
	movlw	(078h)
	movwf	(??_setDimmerLights_Initialization+0)+0
	movf	(_DimmerLights),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Initialization+0)+0,w
	movwf	indf1
	line	83
	
l7100:	
;Dimmer_B1.c: 83: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
	movf	(_DimmerLights),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setDimmerLights_Initialization+0)+0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Initialization+0)+0,w
	movwf	indf1
	line	99
	
l852:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Initialization
	__end_of_setDimmerLights_Initialization:
	signat	_setDimmerLights_Initialization,4216
	global	_Dimmer_Initialization

;; *************** function _Dimmer_Initialization *****************
;; Defined at:
;;		line 520 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DimmerLights_Initialization
;; This function uses a non-reentrant model
;;
psect	text101,local,class=CODE,delta=2,merge=1
	line	520
global __ptext101
__ptext101:	;psect for function _Dimmer_Initialization
psect	text101
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	520
	global	__size_of_Dimmer_Initialization
	__size_of_Dimmer_Initialization	equ	__end_of_Dimmer_Initialization-_Dimmer_Initialization
	
_Dimmer_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Dimmer_Initialization: [wreg]
	line	522
	
l7102:	
;Dimmer_B1.c: 522: Dimmer=&Dimmer1;
	movlw	(_Dimmer1)&0ffh
	movlb 0	; select bank0
	movwf	(??_Dimmer_Initialization+0)+0
	movf	(??_Dimmer_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Dimmer)^080h
	line	523
	
l942:	
	return
	opt stack 0
GLOBAL	__end_of_Dimmer_Initialization
	__end_of_Dimmer_Initialization:
	signat	_Dimmer_Initialization,88
	global	_DelayOff_Main

;; *************** function _DelayOff_Main *****************
;; Defined at:
;;		line 45 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_DlyOff_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text102,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	45
global __ptext102
__ptext102:	;psect for function _DelayOff_Main
psect	text102
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	45
	global	__size_of_DelayOff_Main
	__size_of_DelayOff_Main	equ	__end_of_DelayOff_Main-_DelayOff_Main
	
_DelayOff_Main:	
;incstack = 0
	opt	stack 6
; Regs used in _DelayOff_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	48
	
l9356:	
;DelayOff_B1.c: 48: DlyOff_Main(1);
	movlw	(01h)
	fcall	_DlyOff_Main
	line	58
	
l656:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOff_Main
	__end_of_DelayOff_Main:
	signat	_DelayOff_Main,88
	global	_DlyOff_Main

;; *************** function _DlyOff_Main *****************
;; Defined at:
;;		line 66 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   68[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_DelayOffPointSelect
;;		_setBuz
;;		_setDimmerLights_Switch
;;		_setDimmerLights_Trigger
;;		_setRFSW_Status
;;		_setRF_DimmerLights
;;		_setSw_Status
;;		_setTxData
;; This function is called by:
;;		_DelayOff_Main
;; This function uses a non-reentrant model
;;
psect	text103,local,class=CODE,delta=2,merge=1
	line	66
global __ptext103
__ptext103:	;psect for function _DlyOff_Main
psect	text103
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	66
	global	__size_of_DlyOff_Main
	__size_of_DlyOff_Main	equ	__end_of_DlyOff_Main-_DlyOff_Main
	
_DlyOff_Main:	
;incstack = 0
	opt	stack 6
; Regs used in _DlyOff_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;DlyOff_Main@sw stored from wreg
	movlb 0	; select bank0
	movwf	(DlyOff_Main@sw)
	line	68
	
l8902:	
;DelayOff_B1.c: 68: DelayOffPointSelect(sw);
	movf	(DlyOff_Main@sw),w
	fcall	_DelayOffPointSelect
	line	69
	
l8904:	
;DelayOff_B1.c: 69: if(DelayOff->GO)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u8321
	goto	u8320
u8321:
	goto	l665
u8320:
	line	71
	
l8906:	
;DelayOff_B1.c: 70: {
;DelayOff_B1.c: 71: DelayOff->SecondTime++;
	movf	(_DelayOff)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	72
	
l8908:	
;DelayOff_B1.c: 72: if(DelayOff->SecondTime >= 5600)
	movf	(_DelayOff)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_DlyOff_Main+0)+0+1
	movlw	high(015E0h)
	subwf	1+(??_DlyOff_Main+0)+0,w
	movlw	low(015E0h)
	skipnz
	subwf	0+(??_DlyOff_Main+0)+0,w
	skipc
	goto	u8331
	goto	u8330
u8331:
	goto	l665
u8330:
	line	74
	
l8910:	
;DelayOff_B1.c: 73: {
;DelayOff_B1.c: 74: DelayOff->SecondTime=0;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	75
	
l8912:	
;DelayOff_B1.c: 75: DelayOff->MinuteTime++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+0)+0
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_DlyOff_Main+0)+0,w
	addwf	indf1,f
	line	76
	
l8914:	
;DelayOff_B1.c: 76: if(DelayOff->MinuteTime >= DelayOff->Value)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	incf	(_DelayOff)^080h,w
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u8341
	goto	u8340
u8341:
	goto	l665
u8340:
	line	78
	
l8916:	
;DelayOff_B1.c: 77: {
;DelayOff_B1.c: 78: DelayOff->MinuteTime=0;
	movf	(_DelayOff)^080h,w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	79
	
l8918:	
;DelayOff_B1.c: 79: DelayOff->GO=0;
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	80
	
l8920:	
;DelayOff_B1.c: 80: setSw_Status(sw,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setSw_Status
	line	81
	
l8922:	
;DelayOff_B1.c: 81: setRFSW_Status(sw,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setRFSW_Status
	line	82
	
l8924:	
;DelayOff_B1.c: 82: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	movf	(DlyOff_Main@sw),w
	fcall	_setRF_DimmerLights
	line	83
	
l8926:	
;DelayOff_B1.c: 83: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Trigger
	line	84
	
l8928:	
;DelayOff_B1.c: 84: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Switch
	line	85
	
l8930:	
;DelayOff_B1.c: 85: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	86
	
l8932:	
;DelayOff_B1.c: 86: setBuz(1,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	goto	l665
	line	87
	
l664:	
	goto	l665
	line	88
	
l663:	
	goto	l665
	line	89
	
l662:	
	line	90
	
l665:	
	return
	opt stack 0
GLOBAL	__end_of_DlyOff_Main
	__end_of_DlyOff_Main:
	signat	_DlyOff_Main,4216
	global	_setTxData

;; *************** function _setTxData *****************
;; Defined at:
;;		line 141 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    3[BANK0 ] unsigned char 
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RfPointSelect
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_Adj
;;		_setControl_Lights_Table
;;		_setRFSW_Control
;;		_setRFSW_AdjControl
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerOffFunc
;; This function uses a non-reentrant model
;;
psect	text104,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	141
global __ptext104
__ptext104:	;psect for function _setTxData
psect	text104
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	141
	global	__size_of_setTxData
	__size_of_setTxData	equ	__end_of_setTxData-_setTxData
	
_setTxData:	
;incstack = 0
	opt	stack 7
; Regs used in _setTxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setTxData@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setTxData@rf)
	line	144
	
l6280:	
;RF_Control_B1.c: 143: char i;
;RF_Control_B1.c: 144: RfPointSelect(rf);
	movf	(setTxData@rf),w
	fcall	_RfPointSelect
	line	145
	
l6282:	
;RF_Control_B1.c: 145: if(RF->Enable)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u4641
	goto	u4640
u4641:
	goto	l2587
u4640:
	line	148
	
l6284:	
;RF_Control_B1.c: 146: {
;RF_Control_B1.c: 148: if(!RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u4651
	goto	u4650
u4651:
	goto	l2587
u4650:
	line	150
	
l6286:	
;RF_Control_B1.c: 149: {
;RF_Control_B1.c: 150: RF->TransceiveGO=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	159
	
l6288:	
;RF_Control_B1.c: 159: RF_Data[0]=0x63;
	movlw	(063h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RF_Data)^080h
	line	160
	
l6290:	
;RF_Control_B1.c: 160: RF_Data[1]=0x02;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+01h
	line	161
;RF_Control_B1.c: 161: RF_Data[2]=Product->Data[2];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[02h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+02h
	line	162
;RF_Control_B1.c: 162: RF_Data[3]=Product->Data[3];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[03h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+03h
	line	163
;RF_Control_B1.c: 163: RF_Data[4]=Product->Data[4];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[04h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+04h
	line	164
;RF_Control_B1.c: 164: RF_Data[5]=Product->Data[5];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[05h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+05h
	line	165
;RF_Control_B1.c: 165: RF_Data[6]=Product->Data[6];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[06h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+06h
	line	166
;RF_Control_B1.c: 166: RF_Data[7]=Product->Data[7];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[07h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+07h
	line	167
;RF_Control_B1.c: 167: RF_Data[8]=Product->Data[8];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[08h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+08h
	line	168
;RF_Control_B1.c: 168: RF_Data[9]=Product->Data[9];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[09h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+09h
	line	169
;RF_Control_B1.c: 169: RF_Data[10]=Product->Data[10];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Ah]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Ah
	line	170
;RF_Control_B1.c: 170: RF_Data[11]=Product->Data[11];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Bh]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Bh
	line	171
;RF_Control_B1.c: 171: RF_Data[12]=Product->Data[12];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Ch]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Ch
	line	172
;RF_Control_B1.c: 172: RF_Data[13]=Product->Data[13];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Dh]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Dh
	line	173
;RF_Control_B1.c: 173: RF_Data[14]=Product->Data[14];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Eh]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Eh
	line	174
;RF_Control_B1.c: 174: RF_Data[15]=Product->Data[15];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Fh]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Fh
	line	175
;RF_Control_B1.c: 175: RF_Data[16]=Product->Data[16];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[010h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+010h
	line	176
;RF_Control_B1.c: 176: RF_Data[17]=Product->Data[17];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[011h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+011h
	line	177
;RF_Control_B1.c: 177: RF_Data[18]=Product->Data[18];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[012h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+012h
	line	178
;RF_Control_B1.c: 178: RF_Data[19]=Product->Data[19];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[013h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+013h
	line	179
	
l6292:	
;RF_Control_B1.c: 179: RF_Data[20]=209;
	movlw	(0D1h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+014h
	goto	l2587
	line	181
	
l2586:	
	goto	l2587
	line	183
	
l2585:	
	line	184
	
l2587:	
	return
	opt stack 0
GLOBAL	__end_of_setTxData
	__end_of_setTxData:
	signat	_setTxData,4216
	global	_RfPointSelect

;; *************** function _RfPointSelect *****************
;; Defined at:
;;		line 7 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setRF_Learn
;;		_setRF_RxStatus
;;		_setRF_Main
;;		_setTxData
;;		_setRF_Enable
;;		_RF_RxDisable
;;		_getRxData
;;		_setLog_Code
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text105,local,class=CODE,delta=2,merge=1
	line	7
global __ptext105
__ptext105:	;psect for function _RfPointSelect
psect	text105
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	7
	global	__size_of_RfPointSelect
	__size_of_RfPointSelect	equ	__end_of_RfPointSelect-_RfPointSelect
	
_RfPointSelect:	
;incstack = 0
	opt	stack 7
; Regs used in _RfPointSelect: [wreg]
;RfPointSelect@rf stored from wreg
	movlb 0	; select bank0
	movwf	(RfPointSelect@rf)
	line	10
	
l6204:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u4511
	goto	u4510
u4511:
	goto	l2548
u4510:
	line	12
	
l6206:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??_RfPointSelect+0)+0
	movf	(??_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	l2548
	line	13
	
l2547:	
	line	15
	
l2548:	
	return
	opt stack 0
GLOBAL	__end_of_RfPointSelect
	__end_of_RfPointSelect:
	signat	_RfPointSelect,4216
	global	_setSw_Status

;; *************** function _setSw_Status *****************
;; Defined at:
;;		line 106 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_SwPointSelect
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_ERROR
;;		_setControl_Lights_Table
;;		_setRFSW_Control
;; This function uses a non-reentrant model
;;
psect	text106,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	106
global __ptext106
__ptext106:	;psect for function _setSw_Status
psect	text106
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	106
	global	__size_of_setSw_Status
	__size_of_setSw_Status	equ	__end_of_setSw_Status-_setSw_Status
	
_setSw_Status:	
;incstack = 0
	opt	stack 5
; Regs used in _setSw_Status: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setSw_Status@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Status@sw)
	line	108
	
l8300:	
;Switch_B1.c: 108: SwPointSelect(sw);
	movf	(setSw_Status@sw),w
	fcall	_SwPointSelect
	line	109
	
l8302:	
;Switch_B1.c: 109: Sw->Status=command;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setSw_Status@command),w
	bcf	indf1,6
	skipz
	bsf	indf1,6
	line	110
	
l2838:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Status
	__end_of_setSw_Status:
	signat	_setSw_Status,8312
	global	_SwPointSelect

;; *************** function _SwPointSelect *****************
;; Defined at:
;;		line 16 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setSw_Enable
;;		_setSw_Status
;;		_setSw_Main
;;		_Sw_Detect
;; This function uses a non-reentrant model
;;
psect	text107,local,class=CODE,delta=2,merge=1
	line	16
global __ptext107
__ptext107:	;psect for function _SwPointSelect
psect	text107
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	16
	global	__size_of_SwPointSelect
	__size_of_SwPointSelect	equ	__end_of_SwPointSelect-_SwPointSelect
	
_SwPointSelect:	
;incstack = 0
	opt	stack 7
; Regs used in _SwPointSelect: [wreg]
;SwPointSelect@sw stored from wreg
	movlb 0	; select bank0
	movwf	(SwPointSelect@sw)
	line	19
	
l6212:	
;Switch_B1.c: 19: if(sw == 1)
	movf	(SwPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u4531
	goto	u4530
u4531:
	goto	l2823
u4530:
	line	21
	
l6214:	
;Switch_B1.c: 20: {
;Switch_B1.c: 21: Sw=&Sw1;
	movlw	(_Sw1)&0ffh
	movwf	(??_SwPointSelect+0)+0
	movf	(??_SwPointSelect+0)+0,w
	movwf	(_Sw)
	goto	l2823
	line	22
	
l2822:	
	line	36
	
l2823:	
	return
	opt stack 0
GLOBAL	__end_of_SwPointSelect
	__end_of_SwPointSelect:
	signat	_SwPointSelect,4216
	global	_setRF_DimmerLights

;; *************** function _setRF_DimmerLights *****************
;; Defined at:
;;		line 445 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  on              1   61[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   65[BANK0 ] unsigned char 
;;  status          1   64[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_setPercentValue
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_Adj
;;		_setRFSW_Control
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerOffFunc
;; This function uses a non-reentrant model
;;
psect	text108,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	445
global __ptext108
__ptext108:	;psect for function _setRF_DimmerLights
psect	text108
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	445
	global	__size_of_setRF_DimmerLights
	__size_of_setRF_DimmerLights	equ	__end_of_setRF_DimmerLights-_setRF_DimmerLights
	
_setRF_DimmerLights:	
;incstack = 0
	opt	stack 5
; Regs used in _setRF_DimmerLights: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_DimmerLights@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_DimmerLights@lights)
	line	448
	
l8308:	
;RF_Control_B1.c: 447: char status;
;RF_Control_B1.c: 448: status=1;
	clrf	(setRF_DimmerLights@status)
	incf	(setRF_DimmerLights@status),f
	line	449
	
l8310:	
;RF_Control_B1.c: 449: status<<=(lights-1);
	movf	(setRF_DimmerLights@lights),w
	addlw	-1
	incf	wreg,f
	
	goto	u7570
u7575:
	clrc
	rlf	(setRF_DimmerLights@status),f
u7570:
	addlw	-1
	skipz
	goto	u7575
	line	450
	
l8312:	
;RF_Control_B1.c: 450: Product->Data[11]=lights;
	movf	(setRF_DimmerLights@lights),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	line	453
	
l8314:	
;RF_Control_B1.c: 453: Product->Data[(20+lights)]=setPercentValue(((char)((100-55)*1.5)));
	movlw	(043h)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(setRF_DimmerLights@lights),w
	addlw	014h
	addwf	(_Product),w
	movwf	(??_setRF_DimmerLights+1)+0
	movf	0+(??_setRF_DimmerLights+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	line	456
	
l8316:	
;RF_Control_B1.c: 456: Product->Data[9]=Product->Data[20+lights];
	movf	(setRF_DimmerLights@lights),w
	addlw	014h
	addwf	(_Product),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	0+(??_setRF_DimmerLights+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRF_DimmerLights+1)+0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+1)+0,w
	movwf	indf1
	line	457
	
l8318:	
;RF_Control_B1.c: 457: Product->Data[17]=Product->Data[26+lights];
	movf	(setRF_DimmerLights@lights),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	0+(??_setRF_DimmerLights+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRF_DimmerLights+1)+0
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+1)+0,w
	movwf	indf1
	line	458
	
l8320:	
;RF_Control_B1.c: 458: if(on)
	movf	(setRF_DimmerLights@on),w
	skipz
	goto	u7580
	goto	l8324
u7580:
	line	460
	
l8322:	
;RF_Control_B1.c: 459: {
;RF_Control_B1.c: 460: Product->Data[15]=(Product->Data[15]|status);
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	iorwf	(setRF_DimmerLights@status),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	line	461
;RF_Control_B1.c: 461: }
	goto	l2651
	line	462
	
l2649:	
	line	464
	
l8324:	
;RF_Control_B1.c: 462: else
;RF_Control_B1.c: 463: {
;RF_Control_B1.c: 464: Product->Data[15]=(Product->Data[15]&(~status));
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	comf	(setRF_DimmerLights@status),w
	andwf	indf1,w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	goto	l2651
	line	465
	
l2650:	
	line	466
	
l2651:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerLights
	__end_of_setRF_DimmerLights:
	signat	_setRF_DimmerLights,8312
	global	_setPercentValue

;; *************** function _setPercentValue *****************
;; Defined at:
;;		line 505 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   57[BANK0 ] unsigned char 
;;  i               3   58[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___fttol
;; This function is called by:
;;		_Flash_Memory_Initialization
;;		_setRF_DimmerLights
;; This function uses a non-reentrant model
;;
psect	text109,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	505
global __ptext109
__ptext109:	;psect for function _setPercentValue
psect	text109
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	505
	global	__size_of_setPercentValue
	__size_of_setPercentValue	equ	__end_of_setPercentValue-_setPercentValue
	
_setPercentValue:	
;incstack = 0
	opt	stack 5
; Regs used in _setPercentValue: [wreg+status,2+status,0+pclath+cstack]
;setPercentValue@value stored from wreg
	movlb 0	; select bank0
	movwf	(setPercentValue@value)
	line	508
	
l8262:	
;Dimmer_B1.c: 508: float i=((char)((100-20)*1.5))-((char)((100-55)*1.5));
	movlw	0x0
	movwf	(setPercentValue@i)
	movlw	0x54
	movwf	(setPercentValue@i+1)
	movlw	0x42
	movwf	(setPercentValue@i+2)
	line	509
	
l8264:	
;Dimmer_B1.c: 509: i/=100;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movf	(setPercentValue@i),w
	movwf	(___ftdiv@f1)
	movf	(setPercentValue@i+1),w
	movwf	(___ftdiv@f1+1)
	movf	(setPercentValue@i+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movlb 0	; select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(setPercentValue@i)
	movf	(1+(?___ftdiv)),w
	movwf	(setPercentValue@i+1)
	movf	(2+(?___ftdiv)),w
	movwf	(setPercentValue@i+2)
	line	510
	
l8266:	
;Dimmer_B1.c: 510: return (100-(char)((value-((char)((100-55)*1.5)))/i));
	movf	(setPercentValue@value),w
	addlw	low(-67)
	movwf	(___awtoft@c)
	movlw	high(-67)
	skipnc
	movlw	(high(-67)+1)&0ffh
	movwf	((___awtoft@c))+1
	fcall	___awtoft
	movlb 0	; select bank0
	movf	(0+(?___awtoft)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___awtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftdiv@f1+2)
	movf	(setPercentValue@i),w
	movwf	(___ftdiv@f2)
	movf	(setPercentValue@i+1),w
	movwf	(___ftdiv@f2+1)
	movf	(setPercentValue@i+2),w
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movlb 0	; select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movlb 0	; select bank0
	decf	0+(((0+(?___fttol)))),w
	xorlw	0ffh
	addlw	064h
	goto	l939
	
l8268:	
	line	518
	
l939:	
	return
	opt stack 0
GLOBAL	__end_of_setPercentValue
	__end_of_setPercentValue:
	signat	_setPercentValue,4217
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   43[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   52[BANK0 ] unsigned long 
;;  exp1            1   56[BANK0 ] unsigned char 
;;  sign1           1   51[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   43[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      14       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getPercentValue
;;		_setPercentValue
;; This function uses a non-reentrant model
;;
psect	text110,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
global __ptext110
__ptext110:	;psect for function ___fttol
psect	text110
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6090:	
	movlb 0	; select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u4301
	goto	u4300
u4301:
	goto	l6096
u4300:
	line	50
	
l6092:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3353
	
l6094:	
	goto	l3353
	
l3352:	
	line	51
	
l6096:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u4315:
	lsrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u4310:
	decfsz	wreg,f
	goto	u4315
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6098:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6100:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6102:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6104:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6106:	
	btfss	(___fttol@exp1),7
	goto	u4321
	goto	u4320
u4321:
	goto	l6116
u4320:
	line	57
	
l6108:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4331
	goto	u4330
u4331:
	goto	l6114
u4330:
	line	58
	
l6110:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3353
	
l6112:	
	goto	l3353
	
l3355:	
	goto	l6114
	line	59
	
l3356:	
	line	60
	
l6114:	
	movlw	01h
u4345:
	lsrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	decfsz	wreg,f
	goto	u4345

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l6114
u4350:
	goto	l6126
	
l3357:	
	line	62
	goto	l6126
	
l3354:	
	line	63
	
l6116:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u4361
	goto	u4360
u4361:
	goto	l6124
u4360:
	line	64
	
l6118:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3353
	
l6120:	
	goto	l3353
	
l3359:	
	line	65
	goto	l6124
	
l3361:	
	line	66
	
l6122:	
	movlw	01h
u4375:
	lslf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	wreg,f
	goto	u4375
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l6124
	line	68
	
l3360:	
	line	65
	
l6124:	
	movf	(___fttol@exp1),f
	skipz
	goto	u4381
	goto	u4380
u4381:
	goto	l6122
u4380:
	goto	l6126
	
l3362:	
	goto	l6126
	line	69
	
l3358:	
	line	70
	
l6126:	
	movf	(___fttol@sign1),w
	skipz
	goto	u4390
	goto	l6130
u4390:
	line	71
	
l6128:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l6130
	
l3363:	
	line	72
	
l6130:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l3353
	
l6132:	
	line	73
	
l3353:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   14[BANK0 ] float 
;;  f1              3   17[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   25[BANK0 ] float 
;;  sign            1   29[BANK0 ] unsigned char 
;;  exp             1   28[BANK0 ] unsigned char 
;;  cntr            1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   14[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      16       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_getPercentValue
;;		_setPercentValue
;; This function uses a non-reentrant model
;;
psect	text111,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\ftdiv.c"
	line	49
global __ptext111
__ptext111:	;psect for function ___ftdiv
psect	text111
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l5998:	
	movlb 0	; select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l6004
u4100:
	line	56
	
l6000:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l3318
	
l6002:	
	goto	l3318
	
l3317:	
	line	57
	
l6004:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u4111
	goto	u4110
u4111:
	goto	l6010
u4110:
	line	58
	
l6006:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l3318
	
l6008:	
	goto	l3318
	
l3319:	
	line	59
	
l6010:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l6012:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l6014:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4125:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4120:
	decfsz	wreg,f
	goto	u4125
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l6016:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4135:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4130:
	decfsz	wreg,f
	goto	u4135
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l6018:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l6020:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l6022:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l6024
	line	69
	
l3320:	
	line	70
	
l6024:	
	movlw	01h
u4145:
	lslf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	decfsz	wreg,f
	goto	u4145
	line	71
	
l6026:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4155
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4155
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4155:
	skipc
	goto	u4151
	goto	u4150
u4151:
	goto	l6032
u4150:
	line	72
	
l6028:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	subwfb	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	subwfb	(___ftdiv@f1+2),f
	line	73
	
l6030:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l6032
	line	74
	
l3321:	
	line	75
	
l6032:	
	movlw	01h
u4165:
	lslf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	decfsz	wreg,f
	goto	u4165
	line	76
	
l6034:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l6024
u4170:
	goto	l6036
	
l3322:	
	line	77
	
l6036:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movlb 0	; select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l3318
	
l6038:	
	line	78
	
l3318:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_getPercentValue
;;		_setPercentValue
;; This function uses a non-reentrant model
;;
psect	text112,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
	line	32
global __ptext112
__ptext112:	;psect for function ___awtoft
psect	text112
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l5914:	
	movlb 0	; select bank0
	clrf	(___awtoft@sign)
	line	37
	
l5916:	
	btfss	(___awtoft@c+1),7
	goto	u3861
	goto	u3860
u3861:
	goto	l5922
u3860:
	line	38
	
l5918:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l5920:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l5922
	line	40
	
l3261:	
	line	41
	
l5922:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movlb 0	; select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l3262
	
l5924:	
	line	42
	
l3262:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;; This function uses a non-reentrant model
;;
psect	text113,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
global __ptext113
__ptext113:	;psect for function ___ftpack
psect	text113
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l5884:	
	movlb 0	; select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u3750
	goto	l5888
u3750:
	
l5886:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3761
	goto	u3760
u3761:
	goto	l5894
u3760:
	goto	l5888
	
l3267:	
	line	65
	
l5888:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l3268
	
l5890:	
	goto	l3268
	
l3265:	
	line	66
	goto	l5894
	
l3270:	
	line	67
	
l5892:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u3775:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u3775

	goto	l5894
	line	69
	
l3269:	
	line	66
	
l5894:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l5892
u3780:
	goto	l3272
	
l3271:	
	line	70
	goto	l3272
	
l3273:	
	line	71
	
l5896:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l5898:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l5900:	
	movlw	01h
u3795:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u3795

	line	74
	
l3272:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l5896
u3800:
	goto	l5904
	
l3274:	
	line	75
	goto	l5904
	
l3276:	
	line	76
	
l5902:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u3815:
	lslf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	decfsz	wreg,f
	goto	u3815
	goto	l5904
	line	78
	
l3275:	
	line	75
	
l5904:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u3821
	goto	u3820
u3821:
	goto	l5902
u3820:
	
l3277:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3831
	goto	u3830
u3831:
	goto	l3278
u3830:
	line	80
	
l5906:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l3278:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l5908:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u3845:
	lslf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u3840:
	decfsz	wreg,f
	goto	u3845
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l5910:	
	movf	(___ftpack@sign),w
	skipz
	goto	u3850
	goto	l3279
u3850:
	line	84
	
l5912:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3279:	
	line	85
	line	86
	
l3268:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_setRFSW_Status

;; *************** function _setRFSW_Status *****************
;; Defined at:
;;		line 425 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RfSWPointSelect
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_ERROR
;;		_setControl_Lights_Table
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerAdjFunc
;; This function uses a non-reentrant model
;;
psect	text114,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	425
global __ptext114
__ptext114:	;psect for function _setRFSW_Status
psect	text114
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	425
	global	__size_of_setRFSW_Status
	__size_of_setRFSW_Status	equ	__end_of_setRFSW_Status-_setRFSW_Status
	
_setRFSW_Status:	
;incstack = 0
	opt	stack 5
; Regs used in _setRFSW_Status: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRFSW_Status@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_Status@sw)
	line	427
	
l8304:	
;RF_Control_B1.c: 427: RfSWPointSelect(sw);
	movf	(setRFSW_Status@sw),w
	fcall	_RfSWPointSelect
	line	428
	
l8306:	
;RF_Control_B1.c: 428: RFSW->Status=command;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRFSW_Status@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	429
	
l2642:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_Status
	__end_of_setRFSW_Status:
	signat	_setRFSW_Status,8312
	global	_RfSWPointSelect

;; *************** function _RfSWPointSelect *****************
;; Defined at:
;;		line 347 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setRFSW_Control
;;		_setRFSW_AdjControl
;;		_setRFSW_Status
;; This function uses a non-reentrant model
;;
psect	text115,local,class=CODE,delta=2,merge=1
	line	347
global __ptext115
__ptext115:	;psect for function _RfSWPointSelect
psect	text115
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	347
	global	__size_of_RfSWPointSelect
	__size_of_RfSWPointSelect	equ	__end_of_RfSWPointSelect-_RfSWPointSelect
	
_RfSWPointSelect:	
;incstack = 0
	opt	stack 5
; Regs used in _RfSWPointSelect: [wreg]
;RfSWPointSelect@sw stored from wreg
	movlb 0	; select bank0
	movwf	(RfSWPointSelect@sw)
	line	350
	
l6208:	
;RF_Control_B1.c: 350: if(sw == 1)
	movf	(RfSWPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u4521
	goto	u4520
u4521:
	goto	l2626
u4520:
	line	352
	
l6210:	
;RF_Control_B1.c: 351: {
;RF_Control_B1.c: 352: RFSW=&RFSW1;
	movlw	(_RFSW1)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	goto	l2626
	line	353
	
l2625:	
	line	367
	
l2626:	
	return
	opt stack 0
GLOBAL	__end_of_RfSWPointSelect
	__end_of_RfSWPointSelect:
	signat	_RfSWPointSelect,4216
	global	_setDimmerLights_Trigger

;; *************** function _setDimmerLights_Trigger *****************
;; Defined at:
;;		line 445 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_DlyOff_Main
;;		_setRFSW_Control
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerOffFunc
;; This function uses a non-reentrant model
;;
psect	text116,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	445
global __ptext116
__ptext116:	;psect for function _setDimmerLights_Trigger
psect	text116
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	445
	global	__size_of_setDimmerLights_Trigger
	__size_of_setDimmerLights_Trigger	equ	__end_of_setDimmerLights_Trigger-_setDimmerLights_Trigger
	
_setDimmerLights_Trigger:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_Trigger: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Trigger@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Trigger@lights)
	line	447
	
l8326:	
;Dimmer_B1.c: 447: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Trigger@lights),w
	fcall	_DimmerLightsPointSelect
	line	448
	
l8328:	
;Dimmer_B1.c: 448: DimmerLights->Trigger=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_Trigger@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	449
	
l927:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Trigger
	__end_of_setDimmerLights_Trigger:
	signat	_setDimmerLights_Trigger,8312
	global	_setDimmerLights_Switch

;; *************** function _setDimmerLights_Switch *****************
;; Defined at:
;;		line 435 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_DlyOff_Main
;;		_setRFSW_Control
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerOffFunc
;; This function uses a non-reentrant model
;;
psect	text117,local,class=CODE,delta=2,merge=1
	line	435
global __ptext117
__ptext117:	;psect for function _setDimmerLights_Switch
psect	text117
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	435
	global	__size_of_setDimmerLights_Switch
	__size_of_setDimmerLights_Switch	equ	__end_of_setDimmerLights_Switch-_setDimmerLights_Switch
	
_setDimmerLights_Switch:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_Switch: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Switch@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Switch@lights)
	line	437
	
l8330:	
;Dimmer_B1.c: 437: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Switch@lights),w
	fcall	_DimmerLightsPointSelect
	line	438
	
l8332:	
;Dimmer_B1.c: 438: DimmerLights->Switch=command;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_Switch@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	439
	
l921:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Switch
	__end_of_setDimmerLights_Switch:
	signat	_setDimmerLights_Switch,8312
	global	_DimmerLightsPointSelect

;; *************** function _DimmerLightsPointSelect *****************
;; Defined at:
;;		line 7 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setDimmerLights_Initialization
;;		_setDimmerLights_Main
;;		_setDimmerLights_ERROR
;;		_setDimmerLights_TriggerERROR
;;		_setDimmerLights
;;		_setDimmerLights_Adj
;;		_setDimmerLights_AdjRF
;;		_setDimmerLights_Switch
;;		_setDimmerLights_AdjGo
;;		_setDimmerLights_Trigger
;;		_setDimmerLights_TriggerAdj
;;		_setDimmerLights_Clear
;;		_setDimmerLights_GO
;;		_setDimmerLights_MaxmumValue
;; This function uses a non-reentrant model
;;
psect	text118,local,class=CODE,delta=2,merge=1
	line	7
global __ptext118
__ptext118:	;psect for function _DimmerLightsPointSelect
psect	text118
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	7
	global	__size_of_DimmerLightsPointSelect
	__size_of_DimmerLightsPointSelect	equ	__end_of_DimmerLightsPointSelect-_DimmerLightsPointSelect
	
_DimmerLightsPointSelect:	
;incstack = 0
	opt	stack 6
; Regs used in _DimmerLightsPointSelect: [wreg]
;DimmerLightsPointSelect@lights stored from wreg
	movlb 0	; select bank0
	movwf	(DimmerLightsPointSelect@lights)
	line	10
	
l6134:	
;Dimmer_B1.c: 10: if(lights == 1)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l846
u4400:
	line	12
	
l6136:	
;Dimmer_B1.c: 11: {
;Dimmer_B1.c: 12: DimmerLights=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	goto	l846
	line	13
	
l845:	
	line	38
	
l846:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLightsPointSelect
	__end_of_DimmerLightsPointSelect:
	signat	_DimmerLightsPointSelect,4216
	global	_setBuz

;; *************** function _setBuz *****************
;; Defined at:
;;		line 22 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  count           1    wreg     unsigned char 
;;  time            2    6[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  count           1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_Main
;;		_DimmerLights_Exceptions
;;		_MainT
;;		_setOverTemp_Exceptions
;;		_setLog_Code
;;		_setControl_Lights_Table
;;		_setRFSW_Control
;;		_setSw_Main
;;		_Sw_DimmerOnFunc
;; This function uses a non-reentrant model
;;
psect	text119,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	22
global __ptext119
__ptext119:	;psect for function _setBuz
psect	text119
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	22
	global	__size_of_setBuz
	__size_of_setBuz	equ	__end_of_setBuz-_setBuz
	
_setBuz:	
;incstack = 0
	opt	stack 7
; Regs used in _setBuz: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setBuz@count stored from wreg
	movlb 0	; select bank0
	movwf	(setBuz@count)
	line	24
	
l8282:	
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
	movlb 0	; select bank0
	movf	(1+(?___wmul)),w
	clrf	(setBuz@time+1)
	addwf	(setBuz@time+1)
	movf	(0+(?___wmul)),w
	clrf	(setBuz@time)
	addwf	(setBuz@time)

	line	25
	
l8284:	
;Buzzer_B1.c: 25: if(Buz->Enable)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u7531
	goto	u7530
u7531:
	goto	l129
u7530:
	line	27
	
l8286:	
;Buzzer_B1.c: 26: {
;Buzzer_B1.c: 27: if(!Buz->GO)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u7541
	goto	u7540
u7541:
	goto	l8292
u7540:
	line	29
	
l8288:	
;Buzzer_B1.c: 28: {
;Buzzer_B1.c: 29: Buz->GO=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	30
;Buzzer_B1.c: 30: Buz->Count=count;
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	31
;Buzzer_B1.c: 31: Buz->TimeValue=time;
	movf	(_Buz),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	line	33
	
l8290:	
;Buzzer_B1.c: 33: RB3=1;
	bsf	(107/8),(107)&7	;volatile
	line	34
;Buzzer_B1.c: 34: }
	goto	l129
	line	35
	
l124:	
	line	37
	
l8292:	
;Buzzer_B1.c: 35: else
;Buzzer_B1.c: 36: {
;Buzzer_B1.c: 37: if(!Buz->BufferStatus1)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u7551
	goto	u7550
u7551:
	goto	l8296
u7550:
	line	39
	
l8294:	
;Buzzer_B1.c: 38: {
;Buzzer_B1.c: 39: Buz->BufferStatus1=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	40
;Buzzer_B1.c: 40: Buz->CountBuffer1=count;
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movf	(_Buz),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	41
;Buzzer_B1.c: 41: Buz->TimeValueBuffer1=time;
	movf	(_Buz),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	line	42
;Buzzer_B1.c: 42: }
	goto	l129
	line	43
	
l126:	
	
l8296:	
;Buzzer_B1.c: 43: else if(!Buz->BufferStatus2)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u7561
	goto	u7560
u7561:
	goto	l129
u7560:
	line	45
	
l8298:	
;Buzzer_B1.c: 44: {
;Buzzer_B1.c: 45: Buz->BufferStatus2=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	46
;Buzzer_B1.c: 46: Buz->CountBuffer2=count;
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movf	(_Buz),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	47
;Buzzer_B1.c: 47: Buz->TimeValueBuffer2=time;
	movf	(_Buz),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	goto	l129
	line	48
	
l128:	
	goto	l129
	line	49
	
l127:	
	goto	l129
	
l125:	
	goto	l129
	line	50
	
l123:	
	line	51
	
l129:	
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setBuz
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text120,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul16.c"
	line	15
global __ptext120
__ptext120:	;psect for function ___wmul
psect	text120
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l8270:	
	movlb 0	; select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l8272
	line	44
	
l3110:	
	line	45
	
l8272:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u7491
	goto	u7490
u7491:
	goto	l3111
u7490:
	line	46
	
l8274:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	
l3111:	
	line	47
	movlw	01h
	
u7505:
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	decfsz	wreg,f
	goto	u7505
	line	48
	
l8276:	
	movlw	01h
	
u7515:
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	decfsz	wreg,f
	goto	u7515
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u7521
	goto	u7520
u7521:
	goto	l8272
u7520:
	goto	l8278
	
l3112:	
	line	52
	
l8278:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l3113
	
l8280:	
	line	53
	
l3113:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_DelayOff_Initialization

;; *************** function _DelayOff_Initialization *****************
;; Defined at:
;;		line 30 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_DlyOff_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text121,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	30
global __ptext121
__ptext121:	;psect for function _DelayOff_Initialization
psect	text121
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	30
	global	__size_of_DelayOff_Initialization
	__size_of_DelayOff_Initialization	equ	__end_of_DelayOff_Initialization-_DelayOff_Initialization
	
_DelayOff_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _DelayOff_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	33
	
l9354:	
;DelayOff_B1.c: 33: DlyOff_Initialization(1);
	movlw	(01h)
	fcall	_DlyOff_Initialization
	line	43
	
l653:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOff_Initialization
	__end_of_DelayOff_Initialization:
	signat	_DelayOff_Initialization,88
	global	_DlyOff_Initialization

;; *************** function _DlyOff_Initialization *****************
;; Defined at:
;;		line 60 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DelayOffPointSelect
;; This function is called by:
;;		_DelayOff_Initialization
;; This function uses a non-reentrant model
;;
psect	text122,local,class=CODE,delta=2,merge=1
	line	60
global __ptext122
__ptext122:	;psect for function _DlyOff_Initialization
psect	text122
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	60
	global	__size_of_DlyOff_Initialization
	__size_of_DlyOff_Initialization	equ	__end_of_DlyOff_Initialization-_DlyOff_Initialization
	
_DlyOff_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _DlyOff_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;DlyOff_Initialization@sw stored from wreg
	movlb 0	; select bank0
	movwf	(DlyOff_Initialization@sw)
	line	62
	
l8898:	
;DelayOff_B1.c: 62: DelayOffPointSelect(sw);
	movf	(DlyOff_Initialization@sw),w
	fcall	_DelayOffPointSelect
	line	63
	
l8900:	
;DelayOff_B1.c: 63: DelayOff->Enable=1;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	64
	
l659:	
	return
	opt stack 0
GLOBAL	__end_of_DlyOff_Initialization
	__end_of_DlyOff_Initialization:
	signat	_DlyOff_Initialization,4216
	global	_DelayOffPointSelect

;; *************** function _DelayOffPointSelect *****************
;; Defined at:
;;		line 8 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DlyOff_Initialization
;;		_DlyOff_Main
;;		_setDelayOff_GO
;; This function uses a non-reentrant model
;;
psect	text123,local,class=CODE,delta=2,merge=1
	line	8
global __ptext123
__ptext123:	;psect for function _DelayOffPointSelect
psect	text123
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	8
	global	__size_of_DelayOffPointSelect
	__size_of_DelayOffPointSelect	equ	__end_of_DelayOffPointSelect-_DelayOffPointSelect
	
_DelayOffPointSelect:	
;incstack = 0
	opt	stack 7
; Regs used in _DelayOffPointSelect: [wreg]
;DelayOffPointSelect@sw stored from wreg
	movlb 0	; select bank0
	movwf	(DelayOffPointSelect@sw)
	line	11
	
l6146:	
;DelayOff_B1.c: 11: if(sw == 1)
	movf	(DelayOffPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u4411
	goto	u4410
u4411:
	goto	l650
u4410:
	line	13
	
l6148:	
;DelayOff_B1.c: 12: {
;DelayOff_B1.c: 13: DelayOff=&DlySw1;
	movlw	(_DlySw1)&0ffh
	movwf	(??_DelayOffPointSelect+0)+0
	movf	(??_DelayOffPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_DelayOff)^080h
	goto	l650
	line	14
	
l649:	
	line	28
	
l650:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOffPointSelect
	__end_of_DelayOffPointSelect:
	signat	_DelayOffPointSelect,4216
	global	_CC2500_PowerOnInitial

;; *************** function _CC2500_PowerOnInitial *****************
;; Defined at:
;;		line 97 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_CC2500_ClearRXFIFO
;;		_CC2500_ClearTXFIFO
;;		_CC2500_FrequencyCabr
;;		_CC2500_InitPATable
;;		_CC2500_InitSetREG
;;		_CC2500_PowerRST
;;		_CC2500_SIDLEMode
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text124,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	97
global __ptext124
__ptext124:	;psect for function _CC2500_PowerOnInitial
psect	text124
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	97
	global	__size_of_CC2500_PowerOnInitial
	__size_of_CC2500_PowerOnInitial	equ	__end_of_CC2500_PowerOnInitial-_CC2500_PowerOnInitial
	
_CC2500_PowerOnInitial:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_PowerOnInitial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	99
	
l9348:	
;CC2500_B1.c: 99: CC2500_PowerRST();
	fcall	_CC2500_PowerRST
	line	100
	
l9350:	
;CC2500_B1.c: 100: CC2500_InitSetREG();
	fcall	_CC2500_InitSetREG
	line	101
	
l9352:	
;CC2500_B1.c: 101: CC2500_InitPATable();
	fcall	_CC2500_InitPATable
	line	102
;CC2500_B1.c: 102: CC2500_ClearTXFIFO();
	fcall	_CC2500_ClearTXFIFO
	line	103
;CC2500_B1.c: 103: CC2500_ClearRXFIFO();
	fcall	_CC2500_ClearRXFIFO
	line	104
;CC2500_B1.c: 104: CC2500_FrequencyCabr();
	fcall	_CC2500_FrequencyCabr
	line	105
;CC2500_B1.c: 105: CC2500_SIDLEMode();
	fcall	_CC2500_SIDLEMode
	line	106
	
l325:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerOnInitial
	__end_of_CC2500_PowerOnInitial:
	signat	_CC2500_PowerOnInitial,88
	global	_CC2500_SIDLEMode

;; *************** function _CC2500_SIDLEMode *****************
;; Defined at:
;;		line 183 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text125,local,class=CODE,delta=2,merge=1
	line	183
global __ptext125
__ptext125:	;psect for function _CC2500_SIDLEMode
psect	text125
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	183
	global	__size_of_CC2500_SIDLEMode
	__size_of_CC2500_SIDLEMode	equ	__end_of_CC2500_SIDLEMode-_CC2500_SIDLEMode
	
_CC2500_SIDLEMode:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_SIDLEMode: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l8896:	
;CC2500_B1.c: 185: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	186
	
l356:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_SIDLEMode
	__end_of_CC2500_SIDLEMode:
	signat	_CC2500_SIDLEMode,88
	global	_CC2500_PowerRST

;; *************** function _CC2500_PowerRST *****************
;; Defined at:
;;		line 110 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_CC2500_WriteByte
;;		_DelayTime_1us
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text126,local,class=CODE,delta=2,merge=1
	line	110
global __ptext126
__ptext126:	;psect for function _CC2500_PowerRST
psect	text126
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	110
	global	__size_of_CC2500_PowerRST
	__size_of_CC2500_PowerRST	equ	__end_of_CC2500_PowerRST-_CC2500_PowerRST
	
_CC2500_PowerRST:	
;incstack = 0
	opt	stack 9
; Regs used in _CC2500_PowerRST: [wreg+status,2+status,0+pclath+cstack]
	line	112
	
l8876:	
;CC2500_B1.c: 112: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
	line	113
;CC2500_B1.c: 113: RC0=0;
	bcf	(112/8),(112)&7	;volatile
	line	114
;CC2500_B1.c: 114: RC4=1;
	bsf	(116/8),(116)&7	;volatile
	line	115
	
l8878:	
;CC2500_B1.c: 115: DelayTime_1us(10);
	movlw	low(0Ah)
	movwf	(DelayTime_1us@count)
	movlw	high(0Ah)
	movwf	((DelayTime_1us@count))+1
	fcall	_DelayTime_1us
	line	116
	
l8880:	
;CC2500_B1.c: 116: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	117
;CC2500_B1.c: 117: DelayTime_1us(10);
	movlw	low(0Ah)
	movwf	(DelayTime_1us@count)
	movlw	high(0Ah)
	movwf	((DelayTime_1us@count))+1
	fcall	_DelayTime_1us
	line	118
	
l8882:	
;CC2500_B1.c: 118: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	119
;CC2500_B1.c: 119: DelayTime_1us(40);
	movlw	low(028h)
	movwf	(DelayTime_1us@count)
	movlw	high(028h)
	movwf	((DelayTime_1us@count))+1
	fcall	_DelayTime_1us
	line	120
	
l8884:	
;CC2500_B1.c: 120: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	121
	
l8886:	
;CC2500_B1.c: 121: SPI0Buffer=0x30;
	movlw	(030h)
	movwf	(??_CC2500_PowerRST+0)+0
	movf	(??_CC2500_PowerRST+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	122
;CC2500_B1.c: 122: while(RC2==1);
	goto	l328
	
l329:	
	
l328:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u8301
	goto	u8300
u8301:
	goto	l328
u8300:
	goto	l8888
	
l330:	
	line	123
	
l8888:	
;CC2500_B1.c: 123: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	124
;CC2500_B1.c: 124: while(RC2==1);
	goto	l331
	
l332:	
	
l331:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u8311
	goto	u8310
u8311:
	goto	l331
u8310:
	
l333:	
	line	125
;CC2500_B1.c: 125: RC0=0;
	bcf	(112/8),(112)&7	;volatile
	line	126
;CC2500_B1.c: 126: RC4=1;
	bsf	(116/8),(116)&7	;volatile
	line	127
	
l334:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerRST
	__end_of_CC2500_PowerRST:
	signat	_CC2500_PowerRST,88
	global	_CC2500_InitSetREG

;; *************** function _CC2500_InitSetREG *****************
;; Defined at:
;;		line 131 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_c          1    8[BANK0 ] unsigned char 
;;  temp2           1    7[BANK0 ] unsigned char 
;;  temp1           1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteREG
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text127,local,class=CODE,delta=2,merge=1
	line	131
global __ptext127
__ptext127:	;psect for function _CC2500_InitSetREG
psect	text127
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	131
	global	__size_of_CC2500_InitSetREG
	__size_of_CC2500_InitSetREG	equ	__end_of_CC2500_InitSetREG-_CC2500_InitSetREG
	
_CC2500_InitSetREG:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_InitSetREG: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	136
	
l7020:	
;CC2500_B1.c: 133: unsigned char loop_c;
;CC2500_B1.c: 134: unsigned char temp1,temp2;
;CC2500_B1.c: 136: for(loop_c=0;loop_c<47;loop_c++)
	movlb 0	; select bank0
	clrf	(CC2500_InitSetREG@loop_c)
	
l7022:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u5611
	goto	u5610
u5611:
	goto	l7026
u5610:
	goto	l339
	
l7024:	
	goto	l339
	line	137
	
l337:	
	line	138
	
l7026:	
;CC2500_B1.c: 137: {
;CC2500_B1.c: 138: temp1 = CC2500_registers_address[loop_c];
	movf	(CC2500_InitSetREG@loop_c),w
	addlw	low((_CC2500_registers_address)|8000h)
	movwf	fsr0l
	movlw	high((_CC2500_registers_address)|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(CC2500_InitSetREG@temp1)
	line	139
;CC2500_B1.c: 139: temp2 = CC2500_rfSettings[loop_c];
	movf	(CC2500_InitSetREG@loop_c),w
	addlw	low((_CC2500_rfSettings)|8000h)
	movwf	fsr0l
	movlw	high((_CC2500_rfSettings)|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(CC2500_InitSetREG@temp2)
	line	141
	
l7028:	
;CC2500_B1.c: 141: CC2500_WriteREG(temp1,temp2);
	movf	(CC2500_InitSetREG@temp2),w
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(CC2500_WriteREG@value)
	movf	(CC2500_InitSetREG@temp1),w
	fcall	_CC2500_WriteREG
	line	136
	
l7030:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	addwf	(CC2500_InitSetREG@loop_c),f
	
l7032:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u5621
	goto	u5620
u5621:
	goto	l7026
u5620:
	goto	l339
	
l338:	
	line	143
	
l339:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitSetREG
	__end_of_CC2500_InitSetREG:
	signat	_CC2500_InitSetREG,88
	global	_CC2500_InitPATable

;; *************** function _CC2500_InitPATable *****************
;; Defined at:
;;		line 147 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_d          1    7[BANK0 ] unsigned char 
;;  temp            1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteREG
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text128,local,class=CODE,delta=2,merge=1
	line	147
global __ptext128
__ptext128:	;psect for function _CC2500_InitPATable
psect	text128
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	147
	global	__size_of_CC2500_InitPATable
	__size_of_CC2500_InitPATable	equ	__end_of_CC2500_InitPATable-_CC2500_InitPATable
	
_CC2500_InitPATable:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_InitPATable: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	152
	
l7034:	
;CC2500_B1.c: 149: unsigned char loop_d;
;CC2500_B1.c: 150: unsigned char temp;
;CC2500_B1.c: 152: for(loop_d=0;loop_d<8;loop_d++)
	movlb 0	; select bank0
	clrf	(CC2500_InitPATable@loop_d)
	
l7036:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u5631
	goto	u5630
u5631:
	goto	l7040
u5630:
	goto	l344
	
l7038:	
	goto	l344
	line	153
	
l342:	
	line	154
	
l7040:	
;CC2500_B1.c: 153: {
;CC2500_B1.c: 154: temp=CC2500_patable_vaule[loop_d];
	movf	(CC2500_InitPATable@loop_d),w
	addlw	low((_CC2500_patable_vaule)|8000h)
	movwf	fsr0l
	movlw	high((_CC2500_patable_vaule)|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(CC2500_InitPATable@temp)
	line	155
	
l7042:	
;CC2500_B1.c: 155: CC2500_WriteREG(0x3E,temp);
	movf	(CC2500_InitPATable@temp),w
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(CC2500_WriteREG@value)
	movlw	(03Eh)
	fcall	_CC2500_WriteREG
	line	152
	
l7044:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	addwf	(CC2500_InitPATable@loop_d),f
	
l7046:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u5641
	goto	u5640
u5641:
	goto	l7040
u5640:
	goto	l344
	
l343:	
	line	157
	
l344:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitPATable
	__end_of_CC2500_InitPATable:
	signat	_CC2500_InitPATable,88
	global	_CC2500_WriteREG

;; *************** function _CC2500_WriteREG *****************
;; Defined at:
;;		line 227 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;  w_addr          1    wreg     unsigned char 
;;  value           1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  w_addr          1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_CC2500_WriteByte
;; This function is called by:
;;		_CC2500_InitSetREG
;;		_CC2500_InitPATable
;; This function uses a non-reentrant model
;;
psect	text129,local,class=CODE,delta=2,merge=1
	line	227
global __ptext129
__ptext129:	;psect for function _CC2500_WriteREG
psect	text129
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	227
	global	__size_of_CC2500_WriteREG
	__size_of_CC2500_WriteREG	equ	__end_of_CC2500_WriteREG-_CC2500_WriteREG
	
_CC2500_WriteREG:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_WriteREG: [wreg+status,2+status,0+pclath+cstack]
;CC2500_WriteREG@w_addr stored from wreg
	movlb 0	; select bank0
	movwf	(CC2500_WriteREG@w_addr)
	line	229
	
l6766:	
;CC2500_B1.c: 229: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	230
	
l6768:	
;CC2500_B1.c: 230: SPI0Buffer=w_addr;
	movf	(CC2500_WriteREG@w_addr),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	231
;CC2500_B1.c: 231: while(RC2==1);
	goto	l373
	
l374:	
	
l373:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u5321
	goto	u5320
u5321:
	goto	l373
u5320:
	goto	l6770
	
l375:	
	line	232
	
l6770:	
;CC2500_B1.c: 232: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	233
	
l6772:	
;CC2500_B1.c: 233: SPI0Buffer=value;
	movlb 0	; select bank0
	movf	(CC2500_WriteREG@value),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	234
	
l6774:	
;CC2500_B1.c: 234: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	235
	
l6776:	
;CC2500_B1.c: 235: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	236
	
l376:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteREG
	__end_of_CC2500_WriteREG:
	signat	_CC2500_WriteREG,8312
	global	_CC2500_FrequencyCabr

;; *************** function _CC2500_FrequencyCabr *****************
;; Defined at:
;;		line 175 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteCommand
;;		_DelayTime_1us
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text130,local,class=CODE,delta=2,merge=1
	line	175
global __ptext130
__ptext130:	;psect for function _CC2500_FrequencyCabr
psect	text130
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	175
	global	__size_of_CC2500_FrequencyCabr
	__size_of_CC2500_FrequencyCabr	equ	__end_of_CC2500_FrequencyCabr-_CC2500_FrequencyCabr
	
_CC2500_FrequencyCabr:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_FrequencyCabr: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
l8894:	
;CC2500_B1.c: 177: CC2500_WriteCommand(0x33);
	movlw	(033h)
	fcall	_CC2500_WriteCommand
	line	178
;CC2500_B1.c: 178: DelayTime_1us(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(DelayTime_1us@count)
	movlw	high(03E8h)
	movwf	((DelayTime_1us@count))+1
	fcall	_DelayTime_1us
	line	179
	
l353:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_FrequencyCabr
	__end_of_CC2500_FrequencyCabr:
	signat	_CC2500_FrequencyCabr,88
	global	_DelayTime_1us

;; *************** function _DelayTime_1us *****************
;; Defined at:
;;		line 283 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;  count           2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  j               2    4[BANK0 ] unsigned int 
;;  i               2    2[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CC2500_PowerRST
;;		_CC2500_FrequencyCabr
;; This function uses a non-reentrant model
;;
psect	text131,local,class=CODE,delta=2,merge=1
	line	283
global __ptext131
__ptext131:	;psect for function _DelayTime_1us
psect	text131
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	283
	global	__size_of_DelayTime_1us
	__size_of_DelayTime_1us	equ	__end_of_DelayTime_1us-_DelayTime_1us
	
_DelayTime_1us:	
;incstack = 0
	opt	stack 9
; Regs used in _DelayTime_1us: [wreg+status,2]
	line	286
	
l8662:	
;CC2500_B1.c: 285: unsigned int i,j;
;CC2500_B1.c: 286: for(i=1;i<count;i++)
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(DelayTime_1us@i)
	movlw	high(01h)
	movwf	((DelayTime_1us@i))+1
	goto	l397
	line	287
	
l398:	
	
l8664:	
;CC2500_B1.c: 287: for(j=0;j<=1;j++);
	clrf	(DelayTime_1us@j)
	clrf	(DelayTime_1us@j+1)
	
l8666:	
	movlw	high(02h)
	subwf	(DelayTime_1us@j+1),w
	movlw	low(02h)
	skipnz
	subwf	(DelayTime_1us@j),w
	skipc
	goto	u8021
	goto	u8020
u8021:
	goto	l8670
u8020:
	goto	l8672
	
l8668:	
	goto	l8672
	
l399:	
	
l8670:	
	movlw	low(01h)
	addwf	(DelayTime_1us@j),f
	movlw	high(01h)
	addwfc	(DelayTime_1us@j+1),f
	movlw	high(02h)
	subwf	(DelayTime_1us@j+1),w
	movlw	low(02h)
	skipnz
	subwf	(DelayTime_1us@j),w
	skipc
	goto	u8031
	goto	u8030
u8031:
	goto	l8670
u8030:
	goto	l8672
	
l400:	
	line	286
	
l8672:	
	movlw	low(01h)
	addwf	(DelayTime_1us@i),f
	movlw	high(01h)
	addwfc	(DelayTime_1us@i+1),f
	
l397:	
	movf	(DelayTime_1us@count+1),w
	subwf	(DelayTime_1us@i+1),w
	skipz
	goto	u8045
	movf	(DelayTime_1us@count),w
	subwf	(DelayTime_1us@i),w
u8045:
	skipc
	goto	u8041
	goto	u8040
u8041:
	goto	l8664
u8040:
	goto	l402
	
l401:	
	line	288
	
l402:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTime_1us
	__end_of_DelayTime_1us:
	signat	_DelayTime_1us,4216
	global	_CC2500_ClearTXFIFO

;; *************** function _CC2500_ClearTXFIFO *****************
;; Defined at:
;;		line 161 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text132,local,class=CODE,delta=2,merge=1
	line	161
global __ptext132
__ptext132:	;psect for function _CC2500_ClearTXFIFO
psect	text132
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	161
	global	__size_of_CC2500_ClearTXFIFO
	__size_of_CC2500_ClearTXFIFO	equ	__end_of_CC2500_ClearTXFIFO-_CC2500_ClearTXFIFO
	
_CC2500_ClearTXFIFO:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_ClearTXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	163
	
l8890:	
;CC2500_B1.c: 163: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	164
	
l347:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearTXFIFO
	__end_of_CC2500_ClearTXFIFO:
	signat	_CC2500_ClearTXFIFO,88
	global	_CC2500_ClearRXFIFO

;; *************** function _CC2500_ClearRXFIFO *****************
;; Defined at:
;;		line 168 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CC2500_WriteCommand
;; This function is called by:
;;		_CC2500_PowerOnInitial
;; This function uses a non-reentrant model
;;
psect	text133,local,class=CODE,delta=2,merge=1
	line	168
global __ptext133
__ptext133:	;psect for function _CC2500_ClearRXFIFO
psect	text133
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	168
	global	__size_of_CC2500_ClearRXFIFO
	__size_of_CC2500_ClearRXFIFO	equ	__end_of_CC2500_ClearRXFIFO-_CC2500_ClearRXFIFO
	
_CC2500_ClearRXFIFO:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_ClearRXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	170
	
l8892:	
;CC2500_B1.c: 170: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	171
	
l350:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearRXFIFO
	__end_of_CC2500_ClearRXFIFO:
	signat	_CC2500_ClearRXFIFO,88
	global	_CC2500_WriteCommand

;; *************** function _CC2500_WriteCommand *****************
;; Defined at:
;;		line 253 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_CC2500_WriteByte
;; This function is called by:
;;		_CC2500_TxData
;;		_CC2500_RxData
;;		_CC2500_ClearTXFIFO
;;		_CC2500_ClearRXFIFO
;;		_CC2500_FrequencyCabr
;;		_CC2500_SIDLEMode
;;		_setRF_Main
;;		_RF_RxDisable
;; This function uses a non-reentrant model
;;
psect	text134,local,class=CODE,delta=2,merge=1
	line	253
global __ptext134
__ptext134:	;psect for function _CC2500_WriteCommand
psect	text134
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	253
	global	__size_of_CC2500_WriteCommand
	__size_of_CC2500_WriteCommand	equ	__end_of_CC2500_WriteCommand-_CC2500_WriteCommand
	
_CC2500_WriteCommand:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_WriteCommand: [wreg+status,2+status,0+pclath+cstack]
;CC2500_WriteCommand@command stored from wreg
	movlb 0	; select bank0
	movwf	(CC2500_WriteCommand@command)
	line	255
	
l6564:	
;CC2500_B1.c: 255: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	256
	
l6566:	
;CC2500_B1.c: 256: SPI0Buffer=command;
	movf	(CC2500_WriteCommand@command),w
	movwf	(??_CC2500_WriteCommand+0)+0
	movf	(??_CC2500_WriteCommand+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	258
;CC2500_B1.c: 258: while(RC2==1);
	goto	l385
	
l386:	
	
l385:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u5071
	goto	u5070
u5071:
	goto	l385
u5070:
	goto	l6568
	
l387:	
	line	260
	
l6568:	
;CC2500_B1.c: 260: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	261
	
l6570:	
;CC2500_B1.c: 261: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	263
	
l388:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteCommand
	__end_of_CC2500_WriteCommand:
	signat	_CC2500_WriteCommand,4216
	global	_CC2500_WriteByte

;; *************** function _CC2500_WriteByte *****************
;; Defined at:
;;		line 193 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  loop_a          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CC2500_TxData
;;		_CC2500_RxData
;;		_CC2500_PowerRST
;;		_CC2500_WriteREG
;;		_CC2500_WriteCommand
;;		_CC2500_ReadStatus
;;		_CC2500_ReadREG
;; This function uses a non-reentrant model
;;
psect	text135,local,class=CODE,delta=2,merge=1
	line	193
global __ptext135
__ptext135:	;psect for function _CC2500_WriteByte
psect	text135
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	193
	global	__size_of_CC2500_WriteByte
	__size_of_CC2500_WriteByte	equ	__end_of_CC2500_WriteByte-_CC2500_WriteByte
	
_CC2500_WriteByte:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_WriteByte: [wreg+status,2+status,0]
	line	196
	
l6416:	
;CC2500_B1.c: 195: unsigned char loop_a;
;CC2500_B1.c: 196: for(loop_a=0;loop_a<8;loop_a++)
	movlb 0	; select bank0
	clrf	(CC2500_WriteByte@loop_a)
	
l6418:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u4921
	goto	u4920
u4921:
	goto	l359
u4920:
	goto	l363
	
l6420:	
	goto	l363
	line	197
	
l359:	
	line	198
;CC2500_B1.c: 197: {
;CC2500_B1.c: 198: if(SPI0Buffer&0x80)
	movlb 1	; select bank1
	btfss	(_SPI0Buffer)^080h,(7)&7
	goto	u4931
	goto	u4930
u4931:
	goto	l361
u4930:
	line	199
	
l6422:	
;CC2500_B1.c: 199: RC0=1;
	movlb 0	; select bank0
	bsf	(112/8),(112)&7	;volatile
	goto	l362
	line	200
	
l361:	
	line	201
;CC2500_B1.c: 200: else
;CC2500_B1.c: 201: RC0=0;
	movlb 0	; select bank0
	bcf	(112/8),(112)&7	;volatile
	
l362:	
	line	202
;CC2500_B1.c: 202: RC1=1;
	bsf	(113/8),(113)&7	;volatile
	line	203
	
l6424:	
;CC2500_B1.c: 203: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	204
	
l6426:	
;CC2500_B1.c: 204: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
	line	196
	
l6428:	
	movlw	(01h)
	movwf	(??_CC2500_WriteByte+0)+0
	movf	(??_CC2500_WriteByte+0)+0,w
	addwf	(CC2500_WriteByte@loop_a),f
	
l6430:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u4941
	goto	u4940
u4941:
	goto	l359
u4940:
	goto	l363
	
l360:	
	line	206
	
l363:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteByte
	__end_of_CC2500_WriteByte:
	signat	_CC2500_WriteByte,88
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
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text136,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	53
global __ptext136
__ptext136:	;psect for function _Buzzer_Main
psect	text136
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	53
	global	__size_of_Buzzer_Main
	__size_of_Buzzer_Main	equ	__end_of_Buzzer_Main-_Buzzer_Main
	
_Buzzer_Main:	
;incstack = 0
	opt	stack 11
; Regs used in _Buzzer_Main: [wreg-fsr1h+status,2+status,0]
	line	55
	
l7636:	
;Buzzer_B1.c: 55: Buz->Switch=(RB3)?1:0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	movlb 0	; select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u6565
	bsf	indf1,5
u6565:

	line	57
;Buzzer_B1.c: 57: if(Buz->GO)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u6571
	goto	u6570
u6571:
	goto	l142
u6570:
	line	60
	
l7638:	
;Buzzer_B1.c: 58: {
;Buzzer_B1.c: 60: if(Buz->Time >= Buz->TimeValue)
	movf	(_Buz),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_Buzzer_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_Buzzer_Main+0)+0+1
	incf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Buzzer_Main+2)+0
	moviw	[1]fsr1
	movwf	(??_Buzzer_Main+2)+0+1
	movf	1+(??_Buzzer_Main+0)+0,w
	subwf	1+(??_Buzzer_Main+2)+0,w
	skipz
	goto	u6585
	movf	0+(??_Buzzer_Main+0)+0,w
	subwf	0+(??_Buzzer_Main+2)+0,w
u6585:
	skipc
	goto	u6581
	goto	u6580
u6581:
	goto	l142
u6580:
	line	62
	
l7640:	
;Buzzer_B1.c: 61: {
;Buzzer_B1.c: 62: Buz->Time=0;
	incf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	63
;Buzzer_B1.c: 63: if(!Buz->Switch)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u6591
	goto	u6590
u6591:
	goto	l7662
u6590:
	line	65
	
l7642:	
;Buzzer_B1.c: 64: {
;Buzzer_B1.c: 65: if(Buz->Count == 0)
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u6601
	goto	u6600
u6601:
	goto	l7658
u6600:
	line	67
	
l7644:	
;Buzzer_B1.c: 66: {
;Buzzer_B1.c: 67: if(Buz->BufferStatus1)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u6611
	goto	u6610
u6611:
	goto	l7650
u6610:
	line	69
	
l7646:	
;Buzzer_B1.c: 68: {
;Buzzer_B1.c: 69: Buz->BufferStatus1=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	70
;Buzzer_B1.c: 70: Buz->Count=Buz->CountBuffer1;
	movf	(_Buz),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Buzzer_Main+0)+0
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Buzzer_Main+0)+0,w
	movwf	indf1
	line	71
	
l7648:	
;Buzzer_B1.c: 71: Buz->TimeValue=Buz->TimeValueBuffer1;
	movf	(_Buz),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_Buz),w
	addlw	06h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	72
;Buzzer_B1.c: 72: }
	goto	l142
	line	73
	
l136:	
	
l7650:	
;Buzzer_B1.c: 73: else if(Buz->BufferStatus2)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u6621
	goto	u6620
u6621:
	goto	l7656
u6620:
	line	75
	
l7652:	
;Buzzer_B1.c: 74: {
;Buzzer_B1.c: 75: Buz->BufferStatus2=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	76
;Buzzer_B1.c: 76: Buz->Count=Buz->CountBuffer2;
	movf	(_Buz),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Buzzer_Main+0)+0
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Buzzer_Main+0)+0,w
	movwf	indf1
	line	77
	
l7654:	
;Buzzer_B1.c: 77: Buz->TimeValue=Buz->TimeValueBuffer2;
	movf	(_Buz),w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_Buz),w
	addlw	06h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	78
;Buzzer_B1.c: 78: }
	goto	l142
	line	79
	
l138:	
	line	81
	
l7656:	
;Buzzer_B1.c: 79: else
;Buzzer_B1.c: 80: {
;Buzzer_B1.c: 81: Buz->GO=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l142
	line	82
	
l139:	
	goto	l142
	
l137:	
	line	83
;Buzzer_B1.c: 82: }
;Buzzer_B1.c: 83: }
	goto	l142
	line	84
	
l135:	
	line	86
	
l7658:	
;Buzzer_B1.c: 84: else
;Buzzer_B1.c: 85: {
;Buzzer_B1.c: 86: Buz->Switch=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	88
	
l7660:	
;Buzzer_B1.c: 88: RB3=1;
	bsf	(107/8),(107)&7	;volatile
	goto	l142
	line	89
	
l140:	
	line	90
;Buzzer_B1.c: 89: }
;Buzzer_B1.c: 90: }
	goto	l142
	line	91
	
l134:	
	line	93
	
l7662:	
;Buzzer_B1.c: 91: else
;Buzzer_B1.c: 92: {
;Buzzer_B1.c: 93: Buz->Switch=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	95
	
l7664:	
;Buzzer_B1.c: 95: RB3=0;
	bcf	(107/8),(107)&7	;volatile
	line	97
	
l7666:	
;Buzzer_B1.c: 97: Buz->Count--;
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	l142
	line	98
	
l141:	
	goto	l142
	line	99
	
l133:	
	goto	l142
	line	100
	
l132:	
	line	101
	
l142:	
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
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text137,local,class=CODE,delta=2,merge=1
	line	10
global __ptext137
__ptext137:	;psect for function _Buzzer_Initialization
psect	text137
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	10
	global	__size_of_Buzzer_Initialization
	__size_of_Buzzer_Initialization	equ	__end_of_Buzzer_Initialization-_Buzzer_Initialization
	
_Buzzer_Initialization:	
;incstack = 0
	opt	stack 11
; Regs used in _Buzzer_Initialization: [wregfsr1]
	line	12
	
l7632:	
;Buzzer_B1.c: 12: Buz=&Buz1;
	movlw	(_Buz1)&0ffh
	movlb 0	; select bank0
	movwf	(??_Buzzer_Initialization+0)+0
	movf	(??_Buzzer_Initialization+0)+0,w
	movwf	(_Buz)
	line	13
	
l7634:	
;Buzzer_B1.c: 13: Buz->Enable=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	14
	
l117:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Initialization
	__end_of_Buzzer_Initialization:
	signat	_Buzzer_Initialization,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 99 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_INT_ISR
;;		_IOC_ISR
;;		_TMR0_ISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	99
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _ISR: [wreg-fsr1h+status,2+status,0+pclath+cstack]
psect	intentry
	bsf	pic14e$flags,0 ;set compiler interrupt flag
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+0)
	line	101
	
i1l8238:	
;MCU_B1.c: 101: IOC_ISR();
	fcall	_IOC_ISR
	line	103
	
i1l8240:	
;MCU_B1.c: 103: TMR0_ISR();
	fcall	_TMR0_ISR
	line	109
	
i1l8242:	
;MCU_B1.c: 105: ;;
;MCU_B1.c: 109: INT_ISR();
	fcall	_INT_ISR
	line	114
	
i1l1576:	
	movf	(??_ISR+0),w
	movlb 0	; select bank0
	movwf	btemp+1
	bcf	pic14e$flags,0 ;clear compiler interrupt flag
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_TMR0_ISR

;; *************** function _TMR0_ISR *****************
;; Defined at:
;;		line 127 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_setLoad_StatusOff
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text139,local,class=CODE,delta=2,merge=1
	line	127
global __ptext139
__ptext139:	;psect for function _TMR0_ISR
psect	text139
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	127
	global	__size_of_TMR0_ISR
	__size_of_TMR0_ISR	equ	__end_of_TMR0_ISR-_TMR0_ISR
	
_TMR0_ISR:	
;incstack = 0
	opt	stack 3
; Regs used in _TMR0_ISR: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	129
	
i1l8066:	
;MCU_B1.c: 129: if(TMR0IE && TMR0IF)
	btfss	(93/8),(93)&7	;volatile
	goto	u715_21
	goto	u715_20
u715_21:
	goto	i1l1612
u715_20:
	
i1l8068:	
	btfss	(90/8),(90)&7	;volatile
	goto	u716_21
	goto	u716_20
u716_21:
	goto	i1l1612
u716_20:
	line	131
	
i1l8070:	
;MCU_B1.c: 130: {
;MCU_B1.c: 131: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	132
	
i1l8072:	
;MCU_B1.c: 132: TMR0IF=0;
	bcf	(90/8),(90)&7	;volatile
	line	137
	
i1l8074:	
;MCU_B1.c: 137: if(DimmerLights11->GO) { DimmerLights11->Count++; if(DimmerLights11->Count >= (DimmerLights11->DimmingValue-Dimmer->Correction)) { DimmerLights11->Count=0; DimmerLights11->GO=0; DimmerLights11->Flag=1; if(DimmerLights11->StatusFlag) { RA7=1; RB4=1; }
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u717_21
	goto	u717_20
u717_21:
	goto	i1l8088
u717_20:
	
i1l8076:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_TMR0_ISR+0)+0
	clrf	(??_TMR0_ISR+0)+0+1
	comf	(??_TMR0_ISR+0)+0,f
	comf	(??_TMR0_ISR+0)+1,f
	incf	(??_TMR0_ISR+0)+0,f
	skipnz
	incf	(??_TMR0_ISR+0)+1,f
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	addwf	0+(??_TMR0_ISR+0)+0,w
	movwf	(??_TMR0_ISR+2)+0
	movf	1+(??_TMR0_ISR+0)+0,w
	skipnc
	incf	1+(??_TMR0_ISR+0)+0,w
	movwf	((??_TMR0_ISR+2)+0)+1
	movf	(_DimmerLights11),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	1+(??_TMR0_ISR+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u718_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u718_25:

	skipc
	goto	u718_21
	goto	u718_20
u718_21:
	goto	i1l8158
u718_20:
	
i1l8078:	
	movf	(_DimmerLights11),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8080:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	
i1l8082:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
i1l8084:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u719_21
	goto	u719_20
u719_21:
	goto	i1l8158
u719_20:
	
i1l8086:	
	movlb 0	; select bank0
	bsf	(103/8),(103)&7	;volatile
	bsf	(108/8),(108)&7	;volatile
	goto	i1l8158
	
i1l1585:	
	goto	i1l8158
	
i1l1584:	
	goto	i1l8158
	
i1l1583:	
	
i1l8088:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u720_21
	goto	u720_20
u720_21:
	goto	i1l8148
u720_20:
	
i1l8090:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u721_21
	goto	u721_20
u721_21:
	goto	i1l8148
u721_20:
	
i1l8092:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	incf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l8094:	
	incf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights11),w
	addlw	02h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u722_21
	goto	u722_20
u722_21:
	goto	i1l8148
u722_20:
	
i1l8096:	
	incf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8098:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u723_21
	goto	u723_20
u723_21:
	goto	i1l8114
u723_20:
	
i1l8100:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u724_21
	goto	u724_20
u724_21:
	goto	i1l8108
u724_20:
	
i1l8102:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(044h)
	subwf	indf1,w
	skipc
	goto	u725_21
	goto	u725_20
u725_21:
	goto	i1l8106
u725_20:
	
i1l8104:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l8148
	
i1l1592:	
	
i1l8106:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l8148
	
i1l1593:	
	goto	i1l8148
	
i1l1591:	
	
i1l8108:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u726_21
	goto	u726_20
u726_21:
	goto	i1l8112
u726_20:
	
i1l8110:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l8148
	
i1l1595:	
	
i1l8112:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l8148
	
i1l1596:	
	goto	i1l8148
	
i1l1594:	
	goto	i1l8148
	
i1l1590:	
	
i1l8114:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u727_21
	goto	u727_20
u727_21:
	goto	i1l8128
u727_20:
	
i1l8116:	
	movf	(_DimmerLights11),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u728_21
	goto	u728_20
u728_21:
	goto	i1l8120
u728_20:
	
i1l8118:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l8124
	
i1l1599:	
	
i1l8120:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights11),w
	addlw	05h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u729_21
	goto	u729_20
u729_21:
	goto	i1l8124
u729_20:
	
i1l8122:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l8124
	
i1l1601:	
	goto	i1l8124
	
i1l1600:	
	
i1l8124:	
	movf	(_DimmerLights11),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	xorwf	indf1,w
	skipz
	goto	u730_21
	goto	u730_20
u730_21:
	goto	i1l8148
u730_20:
	
i1l8126:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l8148
	
i1l1602:	
	goto	i1l8148
	
i1l1598:	
	
i1l8128:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u731_21
	goto	u731_20
u731_21:
	goto	i1l8136
u731_20:
	
i1l8130:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l8132:	
	movf	(_DimmerLights11),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u732_21
	goto	u732_20
u732_21:
	goto	i1l8148
u732_20:
	
i1l8134:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l8148
	
i1l1605:	
	goto	i1l8148
	
i1l1604:	
	
i1l8136:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l8138:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights11),w
	addlw	06h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u733_21
	goto	u733_20
u733_21:
	goto	i1l8148
u733_20:
	
i1l8140:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	movf	(_DimmerLights11),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	
i1l8142:	
	movlb 0	; select bank0
	bcf	(99/8),(99)&7	;volatile
	
i1l8144:	
	bcf	(119/8),(119)&7	;volatile
	
i1l8146:	
	clrf	(i1setLoad_StatusOff@command)
	incf	(i1setLoad_StatusOff@command),f
	movlw	(01h)
	fcall	i1_setLoad_StatusOff
	goto	i1l8148
	
i1l1607:	
	goto	i1l8148
	
i1l1606:	
	goto	i1l8148
	
i1l1603:	
	goto	i1l8148
	
i1l1597:	
	goto	i1l8148
	
i1l1589:	
	goto	i1l8148
	
i1l1588:	
	goto	i1l8148
	
i1l1587:	
	
i1l8148:	
	movlb 0	; select bank0
	btfss	(103/8),(103)&7	;volatile
	goto	u734_21
	goto	u734_20
u734_21:
	goto	i1l8158
u734_20:
	
i1l8150:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_TMR0_ISR+0)+0
	clrf	(??_TMR0_ISR+0)+0+1
	comf	(??_TMR0_ISR+0)+0,f
	comf	(??_TMR0_ISR+0)+1,f
	incf	(??_TMR0_ISR+0)+0,f
	skipnz
	incf	(??_TMR0_ISR+0)+1,f
	movf	0+(??_TMR0_ISR+0)+0,w
	addlw	low(078h)
	movwf	(??_TMR0_ISR+2)+0
	movlw	high(078h)
	addwfc	1+(??_TMR0_ISR+0)+0,w
	movwf	1+(??_TMR0_ISR+2)+0
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	1+(??_TMR0_ISR+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u735_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u735_25:

	skipc
	goto	u735_21
	goto	u735_20
u735_21:
	goto	i1l8158
u735_20:
	
i1l8152:	
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8154:	
	movlb 0	; select bank0
	bcf	(103/8),(103)&7	;volatile
	
i1l8156:	
	bcf	(108/8),(108)&7	;volatile
	goto	i1l8158
	
i1l1609:	
	goto	i1l8158
	
i1l1608:	
	goto	i1l8158
	
i1l1586:	
	line	150
	
i1l8158:	
;MCU_B1.c: 150: Timer0->Count++;
	movlb 1	; select bank1
	incf	(_Timer0)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	151
	
i1l8160:	
;MCU_B1.c: 151: if(Timer0->Count == 200)
	incf	(_Timer0)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(0C8h)
	skipz
	goto	u736_25
	moviw	[1]fsr1
	xorlw	high(0C8h)
u736_25:
	skipz
	goto	u736_21
	goto	u736_20
u736_21:
	goto	i1l1610
u736_20:
	line	153
	
i1l8162:	
;MCU_B1.c: 152: {
;MCU_B1.c: 153: Timer0->Count=0;
	incf	(_Timer0)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	154
;MCU_B1.c: 154: TMain->T0_Timerout=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	155
	
i1l1610:	
	line	158
;MCU_B1.c: 155: }
;MCU_B1.c: 158: if(Buz->GO)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u737_21
	goto	u737_20
u737_21:
	goto	i1l1612
u737_20:
	line	160
	
i1l8164:	
;MCU_B1.c: 159: {
;MCU_B1.c: 160: Buz->Time++;
	incf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	goto	i1l1612
	line	161
	
i1l1611:	
	goto	i1l1612
	line	165
	
i1l1582:	
	line	166
	
i1l1612:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_ISR
	__end_of_TMR0_ISR:
	signat	_TMR0_ISR,88
	global	i1_setLoad_StatusOff

;; *************** function i1_setLoad_StatusOff *****************
;; Defined at:
;;		line 322 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  command         1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TMR0_ISR
;; This function uses a non-reentrant model
;;
psect	text140,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	322
global __ptext140
__ptext140:	;psect for function i1_setLoad_StatusOff
psect	text140
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	322
	global	__size_ofi1_setLoad_StatusOff
	__size_ofi1_setLoad_StatusOff	equ	__end_ofi1_setLoad_StatusOff-i1_setLoad_StatusOff
	
i1_setLoad_StatusOff:	
;incstack = 0
	opt	stack 3
; Regs used in i1_setLoad_StatusOff: [wreg+fsr1l+fsr1h+status,2+status,0]
;i1setLoad_StatusOff@lights stored from wreg
	movwf	(i1setLoad_StatusOff@lights)
	line	324
	
i1l7616:	
;OverLoad_B1.c: 324: Load->StatusOff=command;
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(i1setLoad_StatusOff@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	325
	
i1l7618:	
;OverLoad_B1.c: 325: Load->SafeCount-=2;
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(02h)
	subwf	indf1,f
	line	326
	
i1l7620:	
;OverLoad_B1.c: 326: if(lights == 1)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u653_21
	goto	u653_20
u653_21:
	goto	i1l7624
u653_20:
	line	328
	
i1l7622:	
;OverLoad_B1.c: 327: {
;OverLoad_B1.c: 328: Load->Lights1Status=0;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l7624
	line	329
	
i1l1887:	
	line	330
	
i1l7624:	
;OverLoad_B1.c: 329: }
;OverLoad_B1.c: 330: if(lights == 2)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u654_21
	goto	u654_20
u654_21:
	goto	i1l7628
u654_20:
	line	332
	
i1l7626:	
;OverLoad_B1.c: 331: {
;OverLoad_B1.c: 332: Load->Lights2Status=0;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l7628
	line	333
	
i1l1888:	
	line	334
	
i1l7628:	
;OverLoad_B1.c: 333: }
;OverLoad_B1.c: 334: if(lights == 3)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u655_21
	goto	u655_20
u655_21:
	goto	i1l1890
u655_20:
	line	336
	
i1l7630:	
;OverLoad_B1.c: 335: {
;OverLoad_B1.c: 336: Load->Lights3Status=0;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l1890
	line	337
	
i1l1889:	
	line	338
	
i1l1890:	
	return
	opt stack 0
GLOBAL	__end_ofi1_setLoad_StatusOff
	__end_ofi1_setLoad_StatusOff:
	signat	i1_setLoad_StatusOff,88
	global	_IOC_ISR

;; *************** function _IOC_ISR *****************
;; Defined at:
;;		line 342 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_setDimmerReClock
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text141,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	342
global __ptext141
__ptext141:	;psect for function _IOC_ISR
psect	text141
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	342
	global	__size_of_IOC_ISR
	__size_of_IOC_ISR	equ	__end_of_IOC_ISR-_IOC_ISR
	
_IOC_ISR:	
;incstack = 0
	opt	stack 3
; Regs used in _IOC_ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	344
	
i1l8050:	
;MCU_B1.c: 344: if(IOCIE && IOCBF2)
	btfss	(91/8),(91)&7	;volatile
	goto	u711_21
	goto	u711_20
u711_21:
	goto	i1l1636
u711_20:
	
i1l8052:	
	movlb 7	; select bank7
	btfss	(7346/8)^0380h,(7346)&7	;volatile
	goto	u712_21
	goto	u712_20
u712_21:
	goto	i1l1636
u712_20:
	line	346
	
i1l8054:	
;MCU_B1.c: 345: {
;MCU_B1.c: 346: IOCBF2=0;
	bcf	(7346/8)^0380h,(7346)&7	;volatile
	line	347
;MCU_B1.c: 347: IOCIF=0;
	bcf	(88/8),(88)&7	;volatile
	line	348
	
i1l8056:	
;MCU_B1.c: 348: if(TMain->PowerON)
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u713_21
	goto	u713_20
u713_21:
	goto	i1l1636
u713_20:
	line	353
	
i1l8058:	
;MCU_B1.c: 349: {
;MCU_B1.c: 353: setDimmerReClock();
	fcall	_setDimmerReClock
	line	354
	
i1l8060:	
;MCU_B1.c: 354: if(RB2)
	movlb 0	; select bank0
	btfss	(106/8),(106)&7	;volatile
	goto	u714_21
	goto	u714_20
u714_21:
	goto	i1l8064
u714_20:
	line	356
	
i1l8062:	
;MCU_B1.c: 355: {
;MCU_B1.c: 356: Dimmer->Correction=0;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	357
;MCU_B1.c: 357: }
	goto	i1l1636
	line	358
	
i1l1634:	
	line	360
	
i1l8064:	
;MCU_B1.c: 358: else
;MCU_B1.c: 359: {
;MCU_B1.c: 360: Dimmer->Correction=8;
	movlw	(08h)
	movwf	(??_IOC_ISR+0)+0
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_IOC_ISR+0)+0,w
	movwf	indf1
	goto	i1l1636
	line	361
	
i1l1635:	
	goto	i1l1636
	line	369
	
i1l1633:	
	goto	i1l1636
	line	370
	
i1l1632:	
	line	371
	
i1l1636:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_ISR
	__end_of_IOC_ISR:
	signat	_IOC_ISR,88
	global	_setDimmerReClock

;; *************** function _setDimmerReClock *****************
;; Defined at:
;;		line 168 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IOC_ISR
;; This function uses a non-reentrant model
;;
psect	text142,local,class=CODE,delta=2,merge=1
	line	168
global __ptext142
__ptext142:	;psect for function _setDimmerReClock
psect	text142
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	168
	global	__size_of_setDimmerReClock
	__size_of_setDimmerReClock	equ	__end_of_setDimmerReClock-_setDimmerReClock
	
_setDimmerReClock:	
;incstack = 0
	opt	stack 3
; Regs used in _setDimmerReClock: [wregfsr1]
	line	170
	
i1l7240:	
;MCU_B1.c: 170: TMR0=255;
	movlw	(0FFh)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	175
	
i1l7242:	
;MCU_B1.c: 175: if(!DimmerLights11->GO)
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u581_21
	goto	u581_20
u581_21:
	goto	i1l1616
u581_20:
	line	177
	
i1l7244:	
;MCU_B1.c: 176: {
;MCU_B1.c: 177: DimmerLights11->GO=1;
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l1616
	line	178
	
i1l1615:	
	line	235
	
i1l1616:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerReClock
	__end_of_setDimmerReClock:
	signat	_setDimmerReClock,88
	global	_INT_ISR

;; *************** function _INT_ISR *****************
;; Defined at:
;;		line 293 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_setRF_ReceiveGO
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text143,local,class=CODE,delta=2,merge=1
	line	293
global __ptext143
__ptext143:	;psect for function _INT_ISR
psect	text143
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	293
	global	__size_of_INT_ISR
	__size_of_INT_ISR	equ	__end_of_INT_ISR-_INT_ISR
	
_INT_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _INT_ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	295
	
i1l8166:	
;MCU_B1.c: 295: if(INTE && INTF)
	btfss	(92/8),(92)&7	;volatile
	goto	u738_21
	goto	u738_20
u738_21:
	goto	i1l1623
u738_20:
	
i1l8168:	
	btfss	(89/8),(89)&7	;volatile
	goto	u739_21
	goto	u739_20
u739_21:
	goto	i1l1623
u739_20:
	line	297
	
i1l8170:	
;MCU_B1.c: 296: {
;MCU_B1.c: 297: INTF=0;
	bcf	(89/8),(89)&7	;volatile
	line	298
;MCU_B1.c: 298: INTE=0;
	bcf	(92/8),(92)&7	;volatile
	line	299
	
i1l8172:	
;MCU_B1.c: 299: setRF_ReceiveGO(1,1);
	clrf	(setRF_ReceiveGO@command)
	incf	(setRF_ReceiveGO@command),f
	movlw	(01h)
	fcall	_setRF_ReceiveGO
	goto	i1l1623
	line	300
	
i1l1622:	
	line	301
	
i1l1623:	
	return
	opt stack 0
GLOBAL	__end_of_INT_ISR
	__end_of_INT_ISR:
	signat	_INT_ISR,88
	global	_setRF_ReceiveGO

;; *************** function _setRF_ReceiveGO *****************
;; Defined at:
;;		line 37 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;;  command         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_RfPointSelect
;; This function is called by:
;;		_INT_ISR
;; This function uses a non-reentrant model
;;
psect	text144,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	37
global __ptext144
__ptext144:	;psect for function _setRF_ReceiveGO
psect	text144
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	37
	global	__size_of_setRF_ReceiveGO
	__size_of_setRF_ReceiveGO	equ	__end_of_setRF_ReceiveGO-_setRF_ReceiveGO
	
_setRF_ReceiveGO:	
;incstack = 0
	opt	stack 2
; Regs used in _setRF_ReceiveGO: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_ReceiveGO@rf stored from wreg
	movwf	(setRF_ReceiveGO@rf)
	line	39
	
i1l7246:	
;RF_Control_B1.c: 39: RfPointSelect(rf);
	movf	(setRF_ReceiveGO@rf),w
	fcall	i1_RfPointSelect
	line	40
	
i1l7248:	
;RF_Control_B1.c: 40: RF->ReceiveGO=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setRF_ReceiveGO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	41
	
i1l2560:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_ReceiveGO
	__end_of_setRF_ReceiveGO:
	signat	_setRF_ReceiveGO,8312
	global	i1_RfPointSelect

;; *************** function i1_RfPointSelect *****************
;; Defined at:
;;		line 7 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setRF_ReceiveGO
;; This function uses a non-reentrant model
;;
psect	text145,local,class=CODE,delta=2,merge=1
	line	7
global __ptext145
__ptext145:	;psect for function i1_RfPointSelect
psect	text145
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	7
	global	__size_ofi1_RfPointSelect
	__size_ofi1_RfPointSelect	equ	__end_ofi1_RfPointSelect-i1_RfPointSelect
	
i1_RfPointSelect:	
;incstack = 0
	opt	stack 2
; Regs used in i1_RfPointSelect: [wreg]
;i1RfPointSelect@rf stored from wreg
	movwf	(i1RfPointSelect@rf)
	line	10
	
i1l7002:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(i1RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u558_21
	goto	u558_20
u558_21:
	goto	i1l2548
u558_20:
	line	12
	
i1l7004:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??i1_RfPointSelect+0)+0
	movf	(??i1_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	i1l2548
	line	13
	
i1l2547:	
	line	15
	
i1l2548:	
	return
	opt stack 0
GLOBAL	__end_ofi1_RfPointSelect
	__end_ofi1_RfPointSelect:
	signat	i1_RfPointSelect,88
global	___latbits
___latbits	equ	3
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	pic14e$flags
	pic14e$flags	set btemp
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

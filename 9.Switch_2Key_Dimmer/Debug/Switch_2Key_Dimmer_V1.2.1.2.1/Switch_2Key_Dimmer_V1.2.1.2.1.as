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
	FNCALL	_main,_getLoad_AD
	FNCALL	_main,_getPowerFault_AD
	FNCALL	_main,_getTemp_AD
	FNCALL	_getTemp_AD,_getAD
	FNCALL	_getPowerFault_AD,_getAD
	FNCALL	_getLoad_AD,_getAD
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
	FNCALL	_setPercentValue,___awtoft
	FNCALL	_setPercentValue,___ftdiv
	FNCALL	_setPercentValue,___fttol
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
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
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\9.Switch_2Key_Dimmer\Switch_2Key_Dimmer_V1.2.1.2.1\Release\Switch_2key_Dimmer_V1.2.1.2.1.h"
	line	296

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
	global	_DimmerLights22
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
	global	_DlySw2
	global	_VarErrLED
	global	_VarLED1
	global	_VarLED2
	global	_Dimmer1
	global	_RF1
	global	_RFSW1
	global	_RFSW2
	global	_Temp1
	global	_DimmerLights1
	global	_DimmerLights2
	global	_Buz1
	global	_Sw1
	global	_Sw2
	global	_PF1
	global	_VarTMain
	global	_VarMemory
	global	_Load1
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

	global	_TMain
_TMain:
       ds      1

	global	_Timer0
_Timer0:
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
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_WRT$HALF
__CFG_WRT$HALF equ 0x0
	file	"Switch_2Key_Dimmer_V1.2.1.2.1.as"
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

_DimmerLights22:
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
       ds      7

_DlySw1:
       ds      5

_DlySw2:
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
       ds      2

_RFSW1:
       ds      1

_RFSW2:
       ds      1

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_Temp1:
       ds      14

_DimmerLights1:
       ds      13

_DimmerLights2:
       ds      13

_Buz1:
       ds      12

_Sw1:
       ds      9

_Sw2:
       ds      9

_PF1:
       ds      8

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_VarTMain:
       ds      16

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\9.Switch_2Key_Dimmer\Switch_2Key_Dimmer_V1.2.1.2.1\Release\Switch_2key_Dimmer_V1.2.1.2.1.h"
	line	296
_VarProduct:
       ds      32

psect	bssBANK4,class=BANK4,space=1,noexec
global __pbssBANK4
__pbssBANK4:
_VarMemory:
       ds      37

psect	bssBANK5,class=BANK5,space=1,noexec
global __pbssBANK5
__pbssBANK5:
_Load1:
       ds      71

	file	"Switch_2Key_Dimmer_V1.2.1.2.1.as"
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
	clrf	((__pbssCOMMON)+5)&07Fh
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
	movlw	048h
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	04Eh
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK3
	movlw	low(__pbssBANK3)
	movwf	fsr0l
	movlw	high(__pbssBANK3)
	movwf	fsr0h
	movlw	010h
	fcall	clear_ram0
; Clear objects allocated to BANK4
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK4
	movlw	low(__pbssBANK4)
	movwf	fsr0l
	movlw	high(__pbssBANK4)
	movwf	fsr0h
	movlw	025h
	fcall	clear_ram0
; Clear objects allocated to BANK5
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK5
	movlw	low(__pbssBANK5)
	movwf	fsr0l
	movlw	high(__pbssBANK5)
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
?_IOC_ISR:	; 0 bytes @ 0x0
??_IOC_ISR:	; 0 bytes @ 0x0
?_TMR0_ISR:	; 0 bytes @ 0x0
?_INT_ISR:	; 0 bytes @ 0x0
?_Flash_Memory_Write:	; 0 bytes @ 0x0
?_Flash_Memory_Modify:	; 0 bytes @ 0x0
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
?_setRF_DimmerLights:	; 0 bytes @ 0x0
??_DelayTimejudge:	; 0 bytes @ 0x0
??_Dimmer_Initialization:	; 0 bytes @ 0x0
??_getDimmerLights_StatusFlag:	; 0 bytes @ 0x0
??_setLoad_GO:	; 0 bytes @ 0x0
?_setLoad_StatusOff:	; 0 bytes @ 0x0
??_setLoad_Count:	; 0 bytes @ 0x0
?_setLoad_StatusOn:	; 0 bytes @ 0x0
??_MainT_Initialization:	; 0 bytes @ 0x0
??_setTemp_Enable:	; 0 bytes @ 0x0
??_setLoad_Enable:	; 0 bytes @ 0x0
??_IO_Set:	; 0 bytes @ 0x0
??_TMR0_Set:	; 0 bytes @ 0x0
??_ADC_Set:	; 0 bytes @ 0x0
??_INT_Set:	; 0 bytes @ 0x0
??_IOC_Set:	; 0 bytes @ 0x0
??_Flash_Memory_Read:	; 0 bytes @ 0x0
??_Flash_Memory_Write:	; 0 bytes @ 0x0
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
	global	setRF_DimmerLights@on
setRF_DimmerLights@on:	; 1 bytes @ 0x0
	global	DelayTime_1us@count
DelayTime_1us@count:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
??_setRF_DimmerLights:	; 0 bytes @ 0x1
??_setLoad_StatusOff:	; 0 bytes @ 0x1
??_setLoad_StatusOn:	; 0 bytes @ 0x1
??_Mcu_Initialization:	; 0 bytes @ 0x1
??_Temp_Initialization:	; 0 bytes @ 0x1
??_PowerFault_Initialization:	; 0 bytes @ 0x1
??_RF_Initialization:	; 0 bytes @ 0x1
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
	global	getDimmerLights_StatusFlag@Status
getDimmerLights_StatusFlag@Status:	; 1 bytes @ 0x1
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
	global	_getDimmerLights_StatusFlag$1814
_getDimmerLights_StatusFlag$1814:	; 1 bytes @ 0x2
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
??_DimmerLights_Close:	; 0 bytes @ 0x3
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
	global	setRF_DimmerLights@status
setRF_DimmerLights@status:	; 1 bytes @ 0x3
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
	global	setRF_DimmerLights@lights
setRF_DimmerLights@lights:	; 1 bytes @ 0x4
	global	setSw_Initialization@sw
setSw_Initialization@sw:	; 1 bytes @ 0x4
	global	Sw_DimmerAdjFunc@sw
Sw_DimmerAdjFunc@sw:	; 1 bytes @ 0x4
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
?_setDimmerLights_Adj:	; 0 bytes @ 0x5
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
	global	setDimmerLights_Adj@status
setDimmerLights_Adj@status:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??_CC2500_PowerRST:	; 0 bytes @ 0x6
??_CC2500_FrequencyCabr:	; 0 bytes @ 0x6
??_setDimmerLights_Adj:	; 0 bytes @ 0x6
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
	global	setDimmerLights_Adj@lights
setDimmerLights_Adj@lights:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
??_Sw_DimmerOffFunc:	; 0 bytes @ 0x8
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
??_DlyOff_Main:	; 0 bytes @ 0xA
??_setDimmerLights_Main:	; 0 bytes @ 0xA
??_MainT:	; 0 bytes @ 0xA
??_setLog_Code:	; 0 bytes @ 0xA
??_setRFSW_Control:	; 0 bytes @ 0xA
??_Sw_DimmerOnFunc:	; 0 bytes @ 0xA
??_DimmerLights_Exceptions:	; 0 bytes @ 0xA
	global	setDimmerLights_Main@clear
setDimmerLights_Main@clear:	; 1 bytes @ 0xA
	global	DimmerLights_Exceptions@status
DimmerLights_Exceptions@status:	; 1 bytes @ 0xA
	global	getLoad_AD@j
getLoad_AD@j:	; 1 bytes @ 0xA
	global	Sw_DimmerOnFunc@Idle
Sw_DimmerOnFunc@Idle:	; 1 bytes @ 0xA
	global	Sw_DimmerOffFunc@sw
Sw_DimmerOffFunc@sw:	; 1 bytes @ 0xA
	ds	1
??_setLoad_Exceptions:	; 0 bytes @ 0xB
??_setOverTemp_Exceptions:	; 0 bytes @ 0xB
??_setPowerFault_Exceptions:	; 0 bytes @ 0xB
??___awtoft:	; 0 bytes @ 0xB
	global	setDimmerLights_Main@lights
setDimmerLights_Main@lights:	; 1 bytes @ 0xB
	global	getLoad_AD@i
getLoad_AD@i:	; 1 bytes @ 0xB
	global	setLog_Code@rf
setLog_Code@rf:	; 1 bytes @ 0xB
	global	setRFSW_Control@sw
setRFSW_Control@sw:	; 1 bytes @ 0xB
	global	Sw_DimmerOnFunc@sw
Sw_DimmerOnFunc@sw:	; 1 bytes @ 0xB
	ds	1
??_setSw_Main:	; 0 bytes @ 0xC
??_DimmerLights_Main:	; 0 bytes @ 0xC
	global	DlyOff_Main@sw
DlyOff_Main@sw:	; 1 bytes @ 0xC
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
??_DelayOff_Main:	; 0 bytes @ 0xD
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xE
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xE
	global	_setSw_Main$4703
_setSw_Main$4703:	; 1 bytes @ 0xE
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xE
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xE
	ds	1
??_PowerFault_Main:	; 0 bytes @ 0xF
	global	_setSw_Main$4704
_setSw_Main$4704:	; 1 bytes @ 0xF
	ds	1
??_Temp_Main:	; 0 bytes @ 0x10
	global	setSw_Main@sw
setSw_Main@sw:	; 1 bytes @ 0x10
	ds	1
??_Switch_Main:	; 0 bytes @ 0x11
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
??_Flash_Memory_Initialization:	; 0 bytes @ 0x3D
	ds	1
	global	Flash_Memory_Initialization@i
Flash_Memory_Initialization@i:	; 1 bytes @ 0x3E
	ds	1
??_setDimmerLights_AdjRF:	; 0 bytes @ 0x3F
	ds	1
	global	setDimmerLights_AdjRF@lights
setDimmerLights_AdjRF@lights:	; 1 bytes @ 0x40
	ds	1
??_setRF_DimmerValue:	; 0 bytes @ 0x41
	ds	2
	global	setRF_DimmerValue@lights
setRF_DimmerValue@lights:	; 1 bytes @ 0x43
	ds	1
??_setRFSW_AdjControl:	; 0 bytes @ 0x44
	ds	2
	global	setRFSW_AdjControl@sw
setRFSW_AdjControl@sw:	; 1 bytes @ 0x46
	ds	1
??_setControl_Lights_Table:	; 0 bytes @ 0x47
	global	setControl_Lights_Table@rf
setControl_Lights_Table@rf:	; 1 bytes @ 0x47
	ds	1
??_getRxData:	; 0 bytes @ 0x48
	global	getRxData@rf
getRxData@rf:	; 1 bytes @ 0x48
	ds	1
??_setRF_Main:	; 0 bytes @ 0x49
	ds	1
	global	setRF_Main@rf
setRF_Main@rf:	; 1 bytes @ 0x4A
	ds	1
	global	_setRF_Main$4352
_setRF_Main$4352:	; 1 bytes @ 0x4B
	ds	1
??_RF_Main:	; 0 bytes @ 0x4C
??_main:	; 0 bytes @ 0x4C
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    102
;!    Data        32
;!    BSS         283
;!    Persistent  4
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      14
;!    BANK0            80     76      80
;!    BANK1            80      0      75
;!    BANK2            80      0      78
;!    BANK3            80      0      48
;!    BANK4            80      0      37
;!    BANK5            80      0      71
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
;!		 -> NULL(NULL[0]), Sw2(BANK2[9]), Sw1(BANK2[9]), 
;!
;!    RFSW	PTR struct RFSW size(1) Largest target is 1
;!		 -> NULL(NULL[0]), RFSW2(BANK1[1]), RFSW1(BANK1[1]), 
;!
;!    RF	PTR struct RF size(1) Largest target is 2
;!		 -> NULL(NULL[0]), RF1(BANK1[2]), 
;!
;!    PF	PTR struct PF size(1) Largest target is 8
;!		 -> NULL(NULL[0]), PF1(BANK2[8]), 
;!
;!    Temp	PTR struct OverTemp size(1) Largest target is 14
;!		 -> NULL(NULL[0]), Temp1(BANK2[14]), 
;!
;!    Load	PTR struct OverLoad size(1) Largest target is 71
;!		 -> NULL(NULL[0]), Load1(BANK5[71]), 
;!
;!    Timer0	PTR struct Timer0 size(1) Largest target is 7
;!		 -> NULL(NULL[0]), VarTimer0(BANK1[7]), 
;!
;!    LED	PTR struct LED size(1) Largest target is 4
;!		 -> NULL(NULL[0]), VarErrLED(BANK1[4]), VarLED2(BANK1[4]), VarLED1(BANK1[4]), 
;!
;!    TMain	PTR struct TMain size(1) Largest target is 16
;!		 -> NULL(NULL[0]), VarTMain(BANK3[16]), 
;!
;!    Memory	PTR struct FlashMemory size(1) Largest target is 37
;!		 -> NULL(NULL[0]), VarMemory(BANK4[37]), 
;!
;!    Dimmer	PTR struct Dimmer size(1) Largest target is 3
;!		 -> NULL(NULL[0]), Dimmer1(BANK1[3]), 
;!
;!    DimmerLights22	PTR struct DimmerLights size(1) Largest target is 13
;!		 -> NULL(NULL[0]), DimmerLights2(BANK2[13]), 
;!
;!    DimmerLights11	PTR struct DimmerLights size(1) Largest target is 13
;!		 -> NULL(NULL[0]), DimmerLights1(BANK2[13]), 
;!
;!    DimmerLights	PTR struct DimmerLights size(1) Largest target is 13
;!		 -> NULL(NULL[0]), DimmerLights2(BANK2[13]), DimmerLights1(BANK2[13]), 
;!
;!    Product	PTR struct Product size(1) Largest target is 32
;!		 -> NULL(NULL[0]), VarProduct(BANK3[32]), 
;!
;!    DelayOff	PTR struct DelayOff size(1) Largest target is 5
;!		 -> NULL(NULL[0]), DlySw2(BANK1[5]), DlySw1(BANK1[5]), 
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
;!    _setSw_Main->_Sw_DimmerOnFunc
;!    _setRF_Learn->_RfPointSelect
;!    _Sw_DimmerOnFunc->_setBuz
;!    _Sw_DimmerOffFunc->_setDelayOff_GO
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
;!    _setRFSW_Control->_setBuz
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
;!    _setPercentValue->___fttol
;!    ___fttol->___ftadd
;!    ___ftdiv->___awtoft
;!    ___awtoft->___ftpack
;!    _DimmerLights_Main->_setDimmerLights_Main
;!    _setDimmerLights_Main->_setBuz
;!    _setDimmerLights_Adj->_setRF_DimmerLights
;!    _setDimmerLights->_setLED
;!    _setLED->_LedPointSelect
;!    _DimmerLights_Close->_getDimmerLights_StatusFlag
;!    _DimmerLights_Initialization->_setDimmerLights_Initialization
;!    _setDimmerLights_Initialization->_DimmerLightsPointSelect
;!    _DelayOff_Main->_DlyOff_Main
;!    _DlyOff_Main->_setBuz
;!    _setTxData->_RfPointSelect
;!    _setSw_Status->_SwPointSelect
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
;! (0) _main                                                 0     0      0   81237
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
;! (1) _Temp_Main                                            0     0      0    8083
;!                       _setTemp_Main
;! ---------------------------------------------------------------------------------
;! (2) _setTemp_Main                                         3     3      0    8083
;!                                             13 BANK0      3     3      0
;!                       _getLoad_Safe
;!                         _getPF_Safe
;!             _setOverTemp_Exceptions
;! ---------------------------------------------------------------------------------
;! (3) _setOverTemp_Exceptions                               2     2      0    8083
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
;! (1) _Switch_Main                                          0     0      0   10938
;!                         _setSw_Main
;! ---------------------------------------------------------------------------------
;! (2) _setSw_Main                                           5     5      0   10938
;!                                             12 BANK0      5     5      0
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
;! (3) _Sw_DimmerOnFunc                                      2     2      0    4107
;!                                             10 BANK0      2     2      0
;!                             _setBuz
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!                     _setRFSW_Status
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (3) _Sw_DimmerOffFunc                                     3     3      0    3443
;!                                              8 BANK0      3     3      0
;!                     _setDelayOff_GO
;!              _setDimmerLights_AdjGo
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!         _setDimmerLights_TriggerAdj
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (3) _Sw_DimmerAdjFunc                                     1     1      0    1258
;!                                              4 BANK0      1     1      0
;!              _setDimmerLights_AdjGo
;!         _setDimmerLights_TriggerAdj
;!                     _setRFSW_Status
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_TriggerAdj                           2     1      1     260
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_AdjGo                                2     1      1     260
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _Switch_Initialization                                0     0      0    1070
;!                         _TouchPower
;!               _setSw_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setSw_Initialization                                 1     1      0    1070
;!                                              4 BANK0      1     1      0
;!                             _setLED
;! ---------------------------------------------------------------------------------
;! (2) _TouchPower                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _RF_Main                                              0     0      0   23789
;!                         _setRF_Main
;! ---------------------------------------------------------------------------------
;! (2) _setRF_Main                                           3     3      0   23789
;!                                             73 BANK0      3     3      0
;!                      _CC2500_RxData
;!                      _CC2500_TxData
;!                _CC2500_WriteCommand
;!                       _RF_RxDisable
;!                      _RfPointSelect
;!                          _getRxData
;!                          _setINT_GO
;! ---------------------------------------------------------------------------------
;! (3) _getRxData                                            2     2      0   22785
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
;! (4) _setControl_Lights_Table                              1     1      0   21168
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
;! (5) _setRFSW_Control                                      2     2      0    5201
;!                                             10 BANK0      2     2      0
;!                    _RfSWPointSelect
;!                             _setBuz
;!                     _setDelayOff_GO
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!                 _setRF_DimmerLights
;!                       _setSw_Status
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (4) _setDelayOff_GO                                       5     3      2     981
;!                                              3 BANK0      5     3      2
;!                _DelayOffPointSelect
;!                     _DelayTimejudge
;! ---------------------------------------------------------------------------------
;! (5) _DelayTimejudge                                       3     3      0     161
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (5) _setRFSW_AdjControl                                   3     3      0   11355
;!                                             68 BANK0      3     3      0
;!                    _RfSWPointSelect
;!                  _setRF_DimmerValue
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (6) _setRF_DimmerValue                                    3     3      0   11179
;!                                             65 BANK0      3     3      0
;!              _setDimmerLights_AdjRF
;! ---------------------------------------------------------------------------------
;! (7) _setDimmerLights_AdjRF                                2     2      0   11113
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
;! (1) _PowerFault_Main                                      0     0      0    6572
;!                 _setPowerFault_Main
;! ---------------------------------------------------------------------------------
;! (2) _setPowerFault_Main                                   2     2      0    6572
;!                                             13 BANK0      2     2      0
;!                       _getLoad_Safe
;!                       _getTemp_Safe
;!           _setPowerFault_Exceptions
;! ---------------------------------------------------------------------------------
;! (3) _setPowerFault_Exceptions                             2     2      0    6572
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
;! (1) _MainT                                                0     0      0    2102
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
;! (1) _Load_Main                                            5     5      0    8099
;!                                             13 BANK0      5     5      0
;!                            ___lwdiv
;!                             ___wmul
;!                         _getPF_Safe
;!                       _getTemp_Safe
;!              _setDimmerLights_Clear
;!              _setLoad_AH_AL_Restore
;!                 _setLoad_Exceptions
;! ---------------------------------------------------------------------------------
;! (2) _setLoad_Exceptions                                   2     2      0    6603
;!                                             11 BANK0      2     2      0
;!            _DimmerLights_Exceptions
;!                             _setLED
;!                       _setRF_Enable
;!                       _setSw_Enable
;! ---------------------------------------------------------------------------------
;! (4) _setSw_Enable                                         1     1      0     106
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
;! (4) _DimmerLights_Exceptions                              1     1      0    4818
;!                                             10 BANK0      1     1      0
;!         _getDimmerLights_StatusFlag
;!                             _setBuz
;!              _setDimmerLights_ERROR
;!       _setDimmerLights_TriggerERROR
;! ---------------------------------------------------------------------------------
;! (5) _setDimmerLights_TriggerERROR                         2     1      1     353
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _setDimmerLights_ERROR                                2     2      0    2813
;!                                              4 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;!                             _setLED
;!                  _setLoad_StatusOff
;!                     _setRFSW_Status
;!                       _setSw_Status
;! ---------------------------------------------------------------------------------
;! (2) _setDimmerLights_Clear                                2     1      1     414
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
;! (1) _LED_Initialization                                   0     0      0    1167
;!              _setLED_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setLED_Initialization                                1     1      0    1167
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
;! (2) _setPercentValue                                      4     4      0    5458
;!                                             57 BANK0      4     4      0
;!                           ___awtoft
;!                            ___ftdiv
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (9) ___fttol                                             14    10      4     380
;!                                             43 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (9) ___ftdiv                                             16    10      6    2712
;!                                             14 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (9) ___awtoft                                             6     3      3    2267
;!                                              8 BANK0      6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (10) ___ftpack                                            8     3      5    2048
;!                                              0 BANK0      8     3      5
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
;! (1) _DimmerLights_Main                                    0     0      0    5109
;!                 _DimmerLights_Close
;!               _setDimmerLights_Main
;! ---------------------------------------------------------------------------------
;! (2) _setDimmerLights_Main                                 2     2      0    5030
;!                                             10 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;!                             _setBuz
;!                    _setDimmerLights
;!                _setDimmerLights_Adj
;! ---------------------------------------------------------------------------------
;! (3) _setDimmerLights_Adj                                  3     2      1    1365
;!                                              5 BANK0      3     2      1
;!            _DimmerLightsPointSelect
;!                  _setLoad_StatusOff
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (6) _setLoad_StatusOff                                    2     1      1     362
;!                                              0 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (5) _setDimmerLights                                      3     2      1    1791
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
;! (4) _setLED                                               2     1      1    1039
;!                                              2 BANK0      2     1      1
;!                     _LedPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _LedPointSelect                                       2     2      0      66
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _DimmerLights_Close                                   0     0      0      79
;!         _getDimmerLights_StatusFlag
;!                         _setLoad_GO
;! ---------------------------------------------------------------------------------
;! (3) _setLoad_GO                                           1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (5) _getDimmerLights_StatusFlag                           3     3      0      48
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _DimmerLights_Initialization                          1     1      0      66
;!                                              4 BANK0      1     1      0
;!              _Dimmer_Initialization
;!     _setDimmerLights_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setDimmerLights_Initialization                       2     2      0      66
;!                                              2 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (2) _Dimmer_Initialization                                1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _DelayOff_Main                                        0     0      0    4648
;!                        _DlyOff_Main
;! ---------------------------------------------------------------------------------
;! (2) _DlyOff_Main                                          3     3      0    4648
;!                                             10 BANK0      3     3      0
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
;! (6) _setSw_Status                                         2     1      1     568
;!                                              2 BANK0      2     1      1
;!                      _SwPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _SwPointSelect                                        2     2      0      44
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _setRF_DimmerLights                                   5     4      1     668
;!                                              0 BANK0      5     4      1
;! ---------------------------------------------------------------------------------
;! (6) _setRFSW_Status                                       2     1      1     645
;!                                              2 BANK0      2     1      1
;!                    _RfSWPointSelect
;! ---------------------------------------------------------------------------------
;! (7) _RfSWPointSelect                                      2     2      0      44
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_Trigger                              2     1      1     491
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_Switch                               2     1      1     491
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (6) _DimmerLightsPointSelect                              2     2      0      44
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _setBuz                                               4     2      2    1511
;!                                              6 BANK0      4     2      2
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (5) ___wmul                                               6     2      4     444
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _DelayOff_Initialization                              0     0      0      75
;!              _DlyOff_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _DlyOff_Initialization                                1     1      0      75
;!                                              2 BANK0      1     1      0
;!                _DelayOffPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _DelayOffPointSelect                                  2     2      0      44
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
;! Estimated maximum stack depth 10
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (11) _ISR                                                 1     1      0     270
;!                                              6 COMMON     1     1      0
;!                            _INT_ISR
;!                            _IOC_ISR
;!                           _TMR0_ISR
;! ---------------------------------------------------------------------------------
;! (12) _TMR0_ISR                                            4     4      0     140
;!                                              2 COMMON     4     4      0
;!                i1_setLoad_StatusOff
;! ---------------------------------------------------------------------------------
;! (13) i1_setLoad_StatusOff                                 2     1      1     140
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
;!BANK1               50      0      4B       7       93.8%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BANK2               50      0      4E       9       97.5%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BITBANK3            50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BANK3               50      0      30      11       60.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BITBANK4            50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BANK4               50      0      25      13       46.3%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITBANK5            50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BANK5               50      0      47      15       88.8%
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
;!ABS                  0      0     193      20        0.0%
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
;!DATA                 0      0     193      31        0.0%
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
	
l10022:	
;main.c: 9: MainT_Initialization();
	fcall	_MainT_Initialization
	line	10
;main.c: 10: Mcu_Initialization();
	fcall	_Mcu_Initialization
	line	11
	
l10024:	
;main.c: 11: Flash_Memory_Initialization();
	fcall	_Flash_Memory_Initialization
	line	12
	
l10026:	
;main.c: 12: LED_Initialization();
	fcall	_LED_Initialization
	line	13
	
l10028:	
;main.c: 13: Buzzer_Initialization();
	fcall	_Buzzer_Initialization
	line	16
	
l10030:	
;main.c: 15: ;;
;main.c: 16: Temp_Initialization();
	fcall	_Temp_Initialization
	line	17
	
l10032:	
;main.c: 17: Load_Initialization();
	fcall	_Load_Initialization
	line	18
	
l10034:	
;main.c: 18: PowerFault_Initialization();
	fcall	_PowerFault_Initialization
	line	19
	
l10036:	
;main.c: 19: DelayOff_Initialization();
	fcall	_DelayOff_Initialization
	line	21
	
l10038:	
;main.c: 21: DimmerLights_Initialization();
	fcall	_DimmerLights_Initialization
	line	26
	
l10040:	
;main.c: 22: ;;
;main.c: 23: ;;
;main.c: 24: ;;
;main.c: 26: Switch_Initialization();
	fcall	_Switch_Initialization
	line	27
	
l10042:	
;main.c: 27: RF_Initialization();
	fcall	_RF_Initialization
	line	28
	
l10044:	
;main.c: 28: CC2500_PowerOnInitial();
	fcall	_CC2500_PowerOnInitial
	goto	l10046
	line	30
;main.c: 30: while(1)
	
l1347:	
	line	32
	
l10046:	
;main.c: 31: {
;main.c: 32: if(TMain->PowerON)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10241
	goto	u10240
u10241:
	goto	l10050
u10240:
	line	39
	
l10048:	
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
	goto	l10050
	line	61
	
l1348:	
	line	63
	
l10050:	
;main.c: 61: }
;main.c: 63: if(TMain->T0_Timerout)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10251
	goto	u10250
u10251:
	goto	l10046
u10250:
	line	65
	
l10052:	
;main.c: 64: {
;main.c: 65: TMain->T0_Timerout = 0;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	66
	
l10054:	
;main.c: 66: MainT();
	fcall	_MainT
	line	67
	
l10056:	
;main.c: 67: if(TMain->PowerON)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10261
	goto	u10260
u10261:
	goto	l10046
u10260:
	line	69
	
l10058:	
;main.c: 68: {
;main.c: 69: Flash_Memory_Main();
	fcall	_Flash_Memory_Main
	line	71
;main.c: 71: LED_Main();
	fcall	_LED_Main
	line	74
	
l10060:	
;main.c: 73: ;;
;main.c: 74: Temp_Main();
	fcall	_Temp_Main
	line	75
	
l10062:	
;main.c: 75: Load_Main();
	fcall	_Load_Main
	line	76
;main.c: 76: PowerFault_Main();
	fcall	_PowerFault_Main
	line	79
;main.c: 78: ;;
;main.c: 79: DimmerLights_Main();
	fcall	_DimmerLights_Main
	line	80
;main.c: 80: Switch_Main();
	fcall	_Switch_Main
	line	84
;main.c: 81: ;;
;main.c: 82: ;;
;main.c: 84: RF_Main();
	fcall	_RF_Main
	line	85
	
l10064:	
;main.c: 85: DelayOff_Main();
	fcall	_DelayOff_Main
	goto	l10046
	line	86
	
l1350:	
	goto	l10046
	line	87
	
l1349:	
	goto	l10046
	line	88
	
l1351:	
	line	30
	goto	l10046
	
l1352:	
	line	89
	
l1353:	
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
	
l9828:	
;OverTemperature_B1.c: 37: if(Temp->ADtoGO)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9901
	goto	u9900
u9901:
	goto	l2131
u9900:
	line	39
	
l9830:	
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
	
l9832:	
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
	goto	u9915
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u9915:
	skipnc
	goto	u9911
	goto	u9910
u9911:
	goto	l9836
u9910:
	line	42
	
l9834:	
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
	goto	l2131
	line	44
	
l2128:	
	
l9836:	
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
	goto	u9925
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u9925:
	skipnc
	goto	u9921
	goto	u9920
u9921:
	goto	l2131
u9920:
	line	46
	
l9838:	
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
	goto	l2131
	line	47
	
l2130:	
	goto	l2131
	line	48
	
l2129:	
	goto	l2131
	
l2127:	
	line	49
	
l2131:	
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
	
l9840:	
;PowerFault_B1.c: 51: if(PF->ADtoGO)
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9931
	goto	u9930
u9931:
	goto	l2440
u9930:
	line	53
	
l9842:	
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
	
l9844:	
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
	goto	u9945
	movf	0+(??_getPowerFault_AD+0)+0,w
	subwf	0+(??_getPowerFault_AD+2)+0,w
u9945:
	skipnc
	goto	u9941
	goto	u9940
u9941:
	goto	l2440
u9940:
	line	56
	
l9846:	
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
	goto	l2440
	line	57
	
l2439:	
	goto	l2440
	line	58
	
l2438:	
	line	59
	
l2440:	
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
	
l9790:	
;OverLoad_B1.c: 17: char i=0,j=0;
	clrf	(getLoad_AD@i)
	clrf	(getLoad_AD@j)
	line	19
	
l9792:	
;OverLoad_B1.c: 19: if(Load->ADtoGO)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u9821
	goto	u9820
u9821:
	goto	l1906
u9820:
	line	21
	
l9794:	
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
	
l9796:	
;OverLoad_B1.c: 22: for(i=0 ; i<5 ;i++)
	clrf	(getLoad_AD@i)
	
l9798:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u9831
	goto	u9830
u9831:
	goto	l9802
u9830:
	goto	l9812
	
l9800:	
	goto	l9812
	line	23
	
l1899:	
	line	24
	
l9802:	
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
	goto	u9845
	movf	0+(??_getLoad_AD+0)+0,w
	subwf	0+(??_getLoad_AD+3)+0,w
u9845:
	skipnc
	goto	u9841
	goto	u9840
u9841:
	goto	l9808
u9840:
	line	26
	
l9804:	
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
	
l9806:	
;OverLoad_B1.c: 27: j=1;
	clrf	(getLoad_AD@j)
	incf	(getLoad_AD@j),f
	line	28
;OverLoad_B1.c: 28: break;
	goto	l9812
	line	29
	
l1901:	
	line	22
	
l9808:	
	movlw	(01h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	addwf	(getLoad_AD@i),f
	
l9810:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u9851
	goto	u9850
u9851:
	goto	l9802
u9850:
	goto	l9812
	
l1900:	
	line	31
	
l9812:	
;OverLoad_B1.c: 29: }
;OverLoad_B1.c: 30: }
;OverLoad_B1.c: 31: if(!j)
	movf	(getLoad_AD@j),f
	skipz
	goto	u9861
	goto	u9860
u9861:
	goto	l1906
u9860:
	line	33
	
l9814:	
;OverLoad_B1.c: 32: {
;OverLoad_B1.c: 33: for(i=0 ; i<5 ;i++)
	clrf	(getLoad_AD@i)
	
l9816:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u9871
	goto	u9870
u9871:
	goto	l9820
u9870:
	goto	l1906
	
l9818:	
	goto	l1906
	line	34
	
l1903:	
	line	35
	
l9820:	
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
	goto	u9885
	movf	0+(??_getLoad_AD+1)+0,w
	subwf	0+(??_getLoad_AD+3)+0,w
u9885:
	skipnc
	goto	u9881
	goto	u9880
u9881:
	goto	l9824
u9880:
	line	37
	
l9822:	
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
	goto	l1906
	line	39
	
l1905:	
	line	33
	
l9824:	
	movlw	(01h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	addwf	(getLoad_AD@i),f
	
l9826:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u9891
	goto	u9890
u9891:
	goto	l9820
u9890:
	goto	l1906
	
l1904:	
	goto	l1906
	line	41
	
l1902:	
	goto	l1906
	line	42
	
l1898:	
	line	43
	
l1906:	
	return
	opt stack 0
GLOBAL	__end_of_getLoad_AD
	__end_of_getLoad_AD:
	signat	_getLoad_AD,4216
	global	_getAD

;; *************** function _getAD *****************
;; Defined at:
;;		line 309 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	309
global __ptext4
__ptext4:	;psect for function _getAD
psect	text4
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	309
	global	__size_of_getAD
	__size_of_getAD	equ	__end_of_getAD-_getAD
	
_getAD:	
;incstack = 0
	opt	stack 10
; Regs used in _getAD: [wreg+status,2+status,0]
;getAD@adcon0 stored from wreg
	movlb 0	; select bank0
	movwf	(getAD@adcon0)
	line	311
	
l9376:	
;MCU_16f1518_B1.c: 311: ADCON0=adcon0;
	movf	(getAD@adcon0),w
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	312
;MCU_16f1518_B1.c: 312: ADCON1=adcon1;
	movlb 0	; select bank0
	movf	(getAD@adcon1),w
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	313
	
l9378:	
;MCU_16f1518_B1.c: 313: GO_nDONE=1;
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	314
;MCU_16f1518_B1.c: 314: while(GO_nDONE);
	goto	l1718
	
l1719:	
	
l1718:	
	btfsc	(1257/8)^080h,(1257)&7	;volatile
	goto	u9141
	goto	u9140
u9141:
	goto	l1718
u9140:
	goto	l9380
	
l1720:	
	line	315
	
l9380:	
;MCU_16f1518_B1.c: 315: return ((ADRESH*256)+ADRESL);
	movf	(156)^080h,w	;volatile
	movlb 0	; select bank0
	clrf	(?_getAD+1)
	addwf	(?_getAD+1)
	movlb 1	; select bank1
	movf	(155)^080h,w	;volatile
	movlb 0	; select bank0
	clrf	(?_getAD)
	addwf	(?_getAD)

	goto	l1721
	
l9382:	
	line	316
	
l1721:	
	return
	opt stack 0
GLOBAL	__end_of_getAD
	__end_of_getAD:
	signat	_getAD,8314
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
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	57
global __ptext5
__ptext5:	;psect for function _Temp_Main
psect	text5
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	57
	global	__size_of_Temp_Main
	__size_of_Temp_Main	equ	__end_of_Temp_Main-_Temp_Main
	
_Temp_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _Temp_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	60
	
l9888:	
;OverTemperature_B1.c: 60: setTemp_Main();
	fcall	_setTemp_Main
	line	62
	
l2137:	
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
psect	text6,local,class=CODE,delta=2,merge=1
	line	64
global __ptext6
__ptext6:	;psect for function _setTemp_Main
psect	text6
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	64
	global	__size_of_setTemp_Main
	__size_of_setTemp_Main	equ	__end_of_setTemp_Main-_setTemp_Main
	
_setTemp_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _setTemp_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	66
	
l9418:	
;OverTemperature_B1.c: 66: if(Temp->Enable)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9191
	goto	u9190
u9191:
	goto	l2156
u9190:
	line	68
	
l9420:	
;OverTemperature_B1.c: 67: {
;OverTemperature_B1.c: 68: if(Temp->ADtoGO == 0)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u9201
	goto	u9200
u9201:
	goto	l9434
u9200:
	line	70
	
l9422:	
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
	
l9424:	
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
	goto	u9211
	goto	u9210
u9211:
	goto	l2156
u9210:
	line	73
	
l9426:	
;OverTemperature_B1.c: 72: {
;OverTemperature_B1.c: 73: if(getLoad_Safe() && getPF_Safe())
	fcall	_getLoad_Safe
	xorlw	0&0ffh
	skipnz
	goto	u9221
	goto	u9220
u9221:
	goto	l9432
u9220:
	
l9428:	
	fcall	_getPF_Safe
	xorlw	0&0ffh
	skipnz
	goto	u9231
	goto	u9230
u9231:
	goto	l9432
u9230:
	line	75
	
l9430:	
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
	goto	l2156
	line	79
	
l2143:	
	line	81
	
l9432:	
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
	goto	l2156
	line	82
	
l2144:	
	goto	l2156
	line	83
	
l2142:	
	line	84
;OverTemperature_B1.c: 82: }
;OverTemperature_B1.c: 83: }
;OverTemperature_B1.c: 84: }
	goto	l2156
	line	85
	
l2141:	
	line	87
	
l9434:	
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
	
l9436:	
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
	goto	u9241
	goto	u9240
u9241:
	goto	l2156
u9240:
	line	90
	
l9438:	
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
	
l9440:	
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
	
l9442:	
;OverTemperature_B1.c: 93: if(Temp->ERROR)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9251
	goto	u9250
u9251:
	goto	l9456
u9250:
	line	95
	
l9444:	
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
	goto	u9261
	goto	u9260
u9261:
	goto	l9454
u9260:
	line	97
	
l9446:	
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
	
l9448:	
;OverTemperature_B1.c: 98: if(Temp->Count >= 3)
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u9271
	goto	u9270
u9271:
	goto	l9468
u9270:
	line	100
	
l9450:	
;OverTemperature_B1.c: 99: {
;OverTemperature_B1.c: 100: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	101
	
l9452:	
;OverTemperature_B1.c: 101: setOverTemp_Exceptions(0);
	movlw	(0)
	fcall	_setOverTemp_Exceptions
	goto	l9468
	line	102
	
l2149:	
	line	103
;OverTemperature_B1.c: 102: }
;OverTemperature_B1.c: 103: }
	goto	l9468
	line	104
	
l2148:	
	line	106
	
l9454:	
;OverTemperature_B1.c: 104: else
;OverTemperature_B1.c: 105: {
;OverTemperature_B1.c: 106: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l9468
	line	107
	
l2150:	
	line	108
;OverTemperature_B1.c: 107: }
;OverTemperature_B1.c: 108: }
	goto	l9468
	line	109
	
l2147:	
	line	111
	
l9456:	
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
	goto	u9281
	goto	u9280
u9281:
	goto	l9466
u9280:
	line	113
	
l9458:	
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
	
l9460:	
;OverTemperature_B1.c: 114: if(Temp->Count >= 3)
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u9291
	goto	u9290
u9291:
	goto	l9468
u9290:
	line	116
	
l9462:	
;OverTemperature_B1.c: 115: {
;OverTemperature_B1.c: 116: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	117
	
l9464:	
;OverTemperature_B1.c: 117: setOverTemp_Exceptions(1);
	movlw	(01h)
	fcall	_setOverTemp_Exceptions
	goto	l9468
	line	118
	
l2153:	
	line	119
;OverTemperature_B1.c: 118: }
;OverTemperature_B1.c: 119: }
	goto	l9468
	line	120
	
l2152:	
	line	122
	
l9466:	
;OverTemperature_B1.c: 120: else
;OverTemperature_B1.c: 121: {
;OverTemperature_B1.c: 122: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l9468
	line	123
	
l2154:	
	goto	l9468
	line	124
	
l2151:	
	line	125
	
l9468:	
;OverTemperature_B1.c: 123: }
;OverTemperature_B1.c: 124: }
;OverTemperature_B1.c: 125: if(Temp->ERROR == 0)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u9301
	goto	u9300
u9301:
	goto	l9472
u9300:
	line	127
	
l9470:	
;OverTemperature_B1.c: 126: {
;OverTemperature_B1.c: 127: Temp->Safe=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l9472
	line	128
	
l2155:	
	line	129
	
l9472:	
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
	
l9474:	
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
;OverTemperature_B1.c: 131: Product->Data[3]=Temp->AD >> 8;
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movf	1+(??_setTemp_Main+0)+0,w
	movwf	(??_setTemp_Main+2)+0
	movf	(_Product),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+2)+0,w
	movwf	indf1
	line	132
	
l9476:	
;OverTemperature_B1.c: 132: Product->Data[4]=Temp->AD;
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTemp_Main+0)+0
	movf	(_Product),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+0)+0,w
	movwf	indf1
	line	133
	
l9478:	
;OverTemperature_B1.c: 133: Temp->ADH[0]=0;
	movf	(_Temp),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	134
	
l9480:	
;OverTemperature_B1.c: 134: Temp->ADH[1]=0;
	movf	(_Temp),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l2156
	line	135
	
l2146:	
	goto	l2156
	line	136
	
l2145:	
	goto	l2156
	line	137
	
l2140:	
	line	138
	
l2156:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Main
	__end_of_setTemp_Main:
	signat	_setTemp_Main,88
	global	_setOverTemp_Exceptions

;; *************** function _setOverTemp_Exceptions *****************
;; Defined at:
;;		line 140 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
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
psect	text7,local,class=CODE,delta=2,merge=1
	line	140
global __ptext7
__ptext7:	;psect for function _setOverTemp_Exceptions
psect	text7
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	140
	global	__size_of_setOverTemp_Exceptions
	__size_of_setOverTemp_Exceptions	equ	__end_of_setOverTemp_Exceptions-_setOverTemp_Exceptions
	
_setOverTemp_Exceptions:	
;incstack = 0
	opt	stack 5
; Regs used in _setOverTemp_Exceptions: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setOverTemp_Exceptions@command stored from wreg
	movlb 0	; select bank0
	movwf	(setOverTemp_Exceptions@command)
	line	142
	
l9062:	
;OverTemperature_B1.c: 142: Temp->ERROR=command;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setOverTemp_Exceptions@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	143
	
l9064:	
;OverTemperature_B1.c: 143: Temp->Safe=(~command) & 0x01;
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
	line	144
	
l9066:	
;OverTemperature_B1.c: 144: if(command)
	movf	(setOverTemp_Exceptions@command),w
	skipz
	goto	u8770
	goto	l9070
u8770:
	line	146
	
l9068:	
;OverTemperature_B1.c: 145: {
;OverTemperature_B1.c: 146: DimmerLights_Exceptions(1);
	movlw	(01h)
	fcall	_DimmerLights_Exceptions
	line	147
;OverTemperature_B1.c: 147: }
	goto	l2160
	line	148
	
l2159:	
	line	150
	
l9070:	
;OverTemperature_B1.c: 148: else
;OverTemperature_B1.c: 149: {
;OverTemperature_B1.c: 150: setBuz(2,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(02h)
	fcall	_setBuz
	line	151
	
l2160:	
	line	154
;OverTemperature_B1.c: 151: }
;OverTemperature_B1.c: 154: setLED(99,command+10);
	movlb 0	; select bank0
	movf	(setOverTemp_Exceptions@command),w
	addlw	0Ah
	movwf	(??_setOverTemp_Exceptions+0)+0
	movf	(??_setOverTemp_Exceptions+0)+0,w
	movwf	(setLED@command)
	movlw	(063h)
	fcall	_setLED
	line	156
;OverTemperature_B1.c: 156: setSw_Enable((~command) & 0x01);
	movlb 0	; select bank0
	comf	(setOverTemp_Exceptions@command),w
	andlw	01h
	fcall	_setSw_Enable
	line	158
;OverTemperature_B1.c: 158: setRF_Enable(1,(~command) & 0x01);
	movlb 0	; select bank0
	comf	(setOverTemp_Exceptions@command),w
	andlw	01h
	movwf	(??_setOverTemp_Exceptions+0)+0
	movf	(??_setOverTemp_Exceptions+0)+0,w
	movwf	(setRF_Enable@command)
	movlw	(01h)
	fcall	_setRF_Enable
	line	162
	
l2161:	
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
psect	text8,local,class=CODE,delta=2,merge=1
	line	15
global __ptext8
__ptext8:	;psect for function _Temp_Initialization
psect	text8
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	15
	global	__size_of_Temp_Initialization
	__size_of_Temp_Initialization	equ	__end_of_Temp_Initialization-_Temp_Initialization
	
_Temp_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Temp_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	18
	
l9776:	
;OverTemperature_B1.c: 18: setTemp_Initialization();
	fcall	_setTemp_Initialization
	line	20
	
l2115:	
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
psect	text9,local,class=CODE,delta=2,merge=1
	line	51
global __ptext9
__ptext9:	;psect for function _setTemp_Initialization
psect	text9
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	51
	global	__size_of_setTemp_Initialization
	__size_of_setTemp_Initialization	equ	__end_of_setTemp_Initialization-_setTemp_Initialization
	
_setTemp_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _setTemp_Initialization: [wregfsr1]
	line	53
	
l7578:	
;OverTemperature_B1.c: 53: Temp=&Temp1;
	movlw	(_Temp1)&0ffh
	movlb 0	; select bank0
	movwf	(??_setTemp_Initialization+0)+0
	movf	(??_setTemp_Initialization+0)+0,w
	movwf	(_Temp)
	line	54
	
l7580:	
;OverTemperature_B1.c: 54: Temp->Safe=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	55
	
l2134:	
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setSw_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	62
global __ptext10
__ptext10:	;psect for function _Switch_Main
psect	text10
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	62
	global	__size_of_Switch_Main
	__size_of_Switch_Main	equ	__end_of_Switch_Main-_Switch_Main
	
_Switch_Main:	
;incstack = 0
	opt	stack 7
; Regs used in _Switch_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	65
	
l10018:	
;Switch_B1.c: 65: setSw_Main(1);
	movlw	(01h)
	fcall	_setSw_Main
	line	69
;Switch_B1.c: 69: setSw_Main(2);
	movlw	(02h)
	fcall	_setSw_Main
	line	76
	
l2935:	
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
;;  sw              1   16[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
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
psect	text11,local,class=CODE,delta=2,merge=1
	line	112
global __ptext11
__ptext11:	;psect for function _setSw_Main
psect	text11
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	112
	global	__size_of_setSw_Main
	__size_of_setSw_Main	equ	__end_of_setSw_Main-_setSw_Main
	
_setSw_Main:	
;incstack = 0
	opt	stack 7
; Regs used in _setSw_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setSw_Main@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Main@sw)
	line	114
	
l9600:	
;Switch_B1.c: 114: if(Sw->Enable)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9591
	goto	u9590
u9591:
	goto	l2971
u9590:
	line	116
	
l9602:	
;Switch_B1.c: 115: {
;Switch_B1.c: 116: SwPointSelect(sw);
	movf	(setSw_Main@sw),w
	fcall	_SwPointSelect
	line	133
	
l9604:	
;Switch_B1.c: 133: if(sw == 1)
	movlb 0	; select bank0
	movf	(setSw_Main@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u9601
	goto	u9600
u9601:
	goto	l9614
u9600:
	line	135
	
l9606:	
;Switch_B1.c: 134: {
;Switch_B1.c: 135: Sw->Touch=(RA6 || RA4)?1:0;
	clrf	(_setSw_Main$4703)
	incf	(_setSw_Main$4703),f
	btfsc	(102/8),(102)&7	;volatile
	goto	u9611
	goto	u9610
u9611:
	goto	l9612
u9610:
	
l9608:	
	btfsc	(100/8),(100)&7	;volatile
	goto	u9621
	goto	u9620
u9621:
	goto	l9612
u9620:
	
l9610:	
	clrf	(_setSw_Main$4703)
	goto	l9612
	
l2950:	
	
l9612:	
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_setSw_Main$4703),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	136
;Switch_B1.c: 136: }
	goto	l9624
	line	137
	
l2948:	
	
l9614:	
;Switch_B1.c: 137: else if(sw == 2)
	movf	(setSw_Main@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u9631
	goto	u9630
u9631:
	goto	l9624
u9630:
	line	139
	
l9616:	
;Switch_B1.c: 138: {
;Switch_B1.c: 139: Sw->Touch=(RA0 || RB1)?1:0;
	clrf	(_setSw_Main$4704)
	incf	(_setSw_Main$4704),f
	btfsc	(96/8),(96)&7	;volatile
	goto	u9641
	goto	u9640
u9641:
	goto	l9622
u9640:
	
l9618:	
	btfsc	(105/8),(105)&7	;volatile
	goto	u9651
	goto	u9650
u9651:
	goto	l9622
u9650:
	
l9620:	
	clrf	(_setSw_Main$4704)
	goto	l9622
	
l2954:	
	
l9622:	
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_setSw_Main$4704),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	goto	l9624
	line	140
	
l2952:	
	goto	l9624
	line	148
	
l2951:	
	
l9624:	
;Switch_B1.c: 140: }
;Switch_B1.c: 148: if(Sw->Touch)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9661
	goto	u9660
u9661:
	goto	l9672
u9660:
	line	150
	
l9626:	
;Switch_B1.c: 149: {
;Switch_B1.c: 150: if(!Sw->Debounce)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u9671
	goto	u9670
u9671:
	goto	l9638
u9670:
	line	152
	
l9628:	
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
	
l9630:	
;Switch_B1.c: 153: if(Sw->DebounceTime >= 5)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(05h)
	subwf	indf1,w
	skipc
	goto	u9681
	goto	u9680
u9681:
	goto	l2971
u9680:
	line	155
	
l9632:	
;Switch_B1.c: 154: {
;Switch_B1.c: 155: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	156
	
l9634:	
;Switch_B1.c: 156: Sw->Debounce=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	159
	
l9636:	
;Switch_B1.c: 159: Sw_DimmerOnFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerOnFunc
	goto	l2971
	line	162
	
l2957:	
	line	163
;Switch_B1.c: 162: }
;Switch_B1.c: 163: }
	goto	l2971
	line	164
	
l2956:	
	line	166
	
l9638:	
;Switch_B1.c: 164: else
;Switch_B1.c: 165: {
;Switch_B1.c: 166: if(!Sw->Hold1)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u9691
	goto	u9690
u9691:
	goto	l9648
u9690:
	line	168
	
l9640:	
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
	
l9642:	
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
	goto	u9701
	goto	u9700
u9701:
	goto	l2971
u9700:
	line	171
	
l9644:	
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
	
l9646:	
;Switch_B1.c: 175: Sw_DimmerAdjFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerAdjFunc
	goto	l2971
	line	178
	
l2960:	
	line	179
;Switch_B1.c: 178: }
;Switch_B1.c: 179: }
	goto	l2971
	line	180
	
l2959:	
	line	182
	
l9648:	
;Switch_B1.c: 180: else
;Switch_B1.c: 181: {
;Switch_B1.c: 182: if(!Sw->Hold2)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u9711
	goto	u9710
u9711:
	goto	l9662
u9710:
	line	184
	
l9650:	
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
	
l9652:	
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
	goto	u9721
	goto	u9720
u9721:
	goto	l2971
u9720:
	line	187
	
l9654:	
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
	
l9656:	
;Switch_B1.c: 192: setRF_Learn(1,1);
	clrf	(setRF_Learn@command)
	incf	(setRF_Learn@command),f
	movlw	(01h)
	fcall	_setRF_Learn
	line	194
	
l9658:	
;Switch_B1.c: 194: if(TMain->First)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9731
	goto	u9730
u9731:
	goto	l2971
u9730:
	line	196
	
l9660:	
;Switch_B1.c: 195: {
;Switch_B1.c: 196: setBuz(2,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(02h)
	fcall	_setBuz
	goto	l2971
	line	197
	
l2964:	
	goto	l2971
	line	199
	
l2963:	
	line	200
;Switch_B1.c: 197: }
;Switch_B1.c: 199: }
;Switch_B1.c: 200: }
	goto	l2971
	line	201
	
l2962:	
	line	203
	
l9662:	
;Switch_B1.c: 201: else
;Switch_B1.c: 202: {
;Switch_B1.c: 203: if(!Sw->Hold3)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u9741
	goto	u9740
u9741:
	goto	l2971
u9740:
	line	205
	
l9664:	
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
	
l9666:	
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
	goto	u9751
	goto	u9750
u9751:
	goto	l2971
u9750:
	line	208
	
l9668:	
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
	
l9670:	
;Switch_B1.c: 212: setRF_Learn(1,0);
	clrf	(setRF_Learn@command)
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l2971
	line	215
	
l2967:	
	goto	l2971
	line	216
	
l2966:	
	goto	l2971
	line	217
	
l2965:	
	goto	l2971
	line	218
	
l2961:	
	goto	l2971
	line	219
	
l2958:	
	line	220
;Switch_B1.c: 215: }
;Switch_B1.c: 216: }
;Switch_B1.c: 217: }
;Switch_B1.c: 218: }
;Switch_B1.c: 219: }
;Switch_B1.c: 220: }
	goto	l2971
	line	221
	
l2955:	
	line	223
	
l9672:	
;Switch_B1.c: 221: else
;Switch_B1.c: 222: {
;Switch_B1.c: 223: if(Sw->Debounce)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9761
	goto	u9760
u9761:
	goto	l2971
u9760:
	line	225
	
l9674:	
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
	
l9676:	
;Switch_B1.c: 226: if(Sw->DebounceTime >= 5)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(05h)
	subwf	indf1,w
	skipc
	goto	u9771
	goto	u9770
u9771:
	goto	l2971
u9770:
	line	228
	
l9678:	
;Switch_B1.c: 227: {
;Switch_B1.c: 228: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	229
	
l9680:	
;Switch_B1.c: 229: Sw->Debounce=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	230
	
l9682:	
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
	
l9684:	
;Switch_B1.c: 231: Sw->Hold1=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	232
	
l9686:	
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
	
l9688:	
;Switch_B1.c: 233: Sw->Hold2=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	234
	
l9690:	
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
	
l9692:	
;Switch_B1.c: 235: Sw->Hold3=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	238
	
l9694:	
;Switch_B1.c: 238: Sw_DimmerOffFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerOffFunc
	line	243
	
l9696:	
;Switch_B1.c: 243: setRF_Learn(1,0);
	movlb 0	; select bank0
	clrf	(setRF_Learn@command)
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l2971
	line	245
	
l2970:	
	goto	l2971
	line	246
	
l2969:	
	goto	l2971
	line	247
	
l2968:	
	goto	l2971
	line	248
	
l2947:	
	line	249
	
l2971:	
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
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	31
global __ptext12
__ptext12:	;psect for function _setRF_Learn
psect	text12
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
	
l9080:	
;RF_Control_B1.c: 33: RfPointSelect(rf);
	movf	(setRF_Learn@rf),w
	fcall	_RfPointSelect
	line	34
	
l9082:	
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
	
l2650:	
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
;;  sw              1   11[BANK0 ] unsigned char 
;;  Idle            1   10[BANK0 ] unsigned char 
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
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	251
global __ptext13
__ptext13:	;psect for function _Sw_DimmerOnFunc
psect	text13
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	251
	global	__size_of_Sw_DimmerOnFunc
	__size_of_Sw_DimmerOnFunc	equ	__end_of_Sw_DimmerOnFunc-_Sw_DimmerOnFunc
	
_Sw_DimmerOnFunc:	
;incstack = 0
	opt	stack 7
; Regs used in _Sw_DimmerOnFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerOnFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerOnFunc@sw)
	line	253
	
l9140:	
;Switch_B1.c: 253: char Idle=1;
	clrf	(Sw_DimmerOnFunc@Idle)
	incf	(Sw_DimmerOnFunc@Idle),f
	line	270
	
l9142:	
;Switch_B1.c: 270: if(sw == 1)
	movf	(Sw_DimmerOnFunc@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u8911
	goto	u8910
u8911:
	goto	l9146
u8910:
	line	272
	
l9144:	
;Switch_B1.c: 271: {
;Switch_B1.c: 272: Idle=(DimmerLights22->AdjGo)?0:1;
	movf	(_DimmerLights22),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrc
	btfss	indf1,2
	setc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(Sw_DimmerOnFunc@Idle)
	line	273
;Switch_B1.c: 273: }
	goto	l9150
	line	274
	
l2974:	
	
l9146:	
;Switch_B1.c: 274: else if(sw == 2)
	movf	(Sw_DimmerOnFunc@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u8921
	goto	u8920
u8921:
	goto	l9150
u8920:
	line	276
	
l9148:	
;Switch_B1.c: 275: {
;Switch_B1.c: 276: Idle=(DimmerLights11->AdjGo)?0:1;
	movf	(_DimmerLights11),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrc
	btfss	indf1,2
	setc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(Sw_DimmerOnFunc@Idle)
	goto	l9150
	line	277
	
l2976:	
	goto	l9150
	line	280
	
l2975:	
	
l9150:	
;Switch_B1.c: 277: }
;Switch_B1.c: 280: if(Idle)
	movf	(Sw_DimmerOnFunc@Idle),w
	skipz
	goto	u8930
	goto	l2980
u8930:
	line	282
	
l9152:	
;Switch_B1.c: 281: {
;Switch_B1.c: 282: Sw->Flag=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,7
	line	283
	
l9154:	
;Switch_B1.c: 283: setBuz(1,100);
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	284
	
l9156:	
;Switch_B1.c: 284: if(!Sw->Status)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u8941
	goto	u8940
u8941:
	goto	l9170
u8940:
	line	286
	
l9158:	
;Switch_B1.c: 285: {
;Switch_B1.c: 286: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	287
	
l9160:	
;Switch_B1.c: 287: setRFSW_Status(sw,1);
	clrf	(setRFSW_Status@command)
	incf	(setRFSW_Status@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRFSW_Status
	line	289
	
l9162:	
;Switch_B1.c: 289: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	290
	
l9164:	
;Switch_B1.c: 290: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	incf	(setDimmerLights_Switch@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	292
	
l9166:	
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
	
l9168:	
;Switch_B1.c: 293: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	294
;Switch_B1.c: 294: }
	movlb 0	; select bank0
	goto	l2980
	line	295
	
l2978:	
	line	297
	
l9170:	
;Switch_B1.c: 295: else
;Switch_B1.c: 296: {
;Switch_B1.c: 297: Sw->Status=0;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	line	298
	
l9172:	
;Switch_B1.c: 298: setRFSW_Status(sw,Sw->Status);
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
	goto	l2980
	line	299
	
l2979:	
	movlb 0	; select bank0
	goto	l2980
	line	300
	
l2977:	
	line	301
	
l2980:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerOnFunc
	__end_of_Sw_DimmerOnFunc:
	signat	_Sw_DimmerOnFunc,4216
	global	_Sw_DimmerOffFunc

;; *************** function _Sw_DimmerOffFunc *****************
;; Defined at:
;;		line 303 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   10[BANK0 ] unsigned char 
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
psect	text14,local,class=CODE,delta=2,merge=1
	line	303
global __ptext14
__ptext14:	;psect for function _Sw_DimmerOffFunc
psect	text14
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	303
	global	__size_of_Sw_DimmerOffFunc
	__size_of_Sw_DimmerOffFunc	equ	__end_of_Sw_DimmerOffFunc-_Sw_DimmerOffFunc
	
_Sw_DimmerOffFunc:	
;incstack = 0
	opt	stack 7
; Regs used in _Sw_DimmerOffFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerOffFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerOffFunc@sw)
	line	305
	
l9184:	
;Switch_B1.c: 305: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u8961
	goto	u8960
u8961:
	goto	l2987
u8960:
	line	307
	
l9186:	
;Switch_B1.c: 306: {
;Switch_B1.c: 307: Sw->Flag=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,7
	line	308
;Switch_B1.c: 308: if(Sw->Status)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u8971
	goto	u8970
u8971:
	goto	l9202
u8970:
	line	310
	
l9188:	
;Switch_B1.c: 309: {
;Switch_B1.c: 310: if(Sw->Adj)
	incf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u8981
	goto	u8980
u8981:
	goto	l2987
u8980:
	line	312
	
l9190:	
;Switch_B1.c: 311: {
;Switch_B1.c: 312: Sw->Adj=0;
	incf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	313
	
l9192:	
;Switch_B1.c: 313: setDimmerLights_TriggerAdj(sw,1);
	clrf	(setDimmerLights_TriggerAdj@command)
	incf	(setDimmerLights_TriggerAdj@command),f
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	314
	
l9194:	
;Switch_B1.c: 314: setDimmerLights_AdjGo(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_AdjGo@command)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	line	316
	
l9196:	
;Switch_B1.c: 316: Product->Data[17]=Product->Data[26+sw];
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
	line	317
	
l9198:	
;Switch_B1.c: 317: setRF_DimmerLights(sw,Sw->Status);
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
	line	318
	
l9200:	
;Switch_B1.c: 318: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l2987
	line	320
	
l2985:	
	line	321
;Switch_B1.c: 320: }
;Switch_B1.c: 321: }
	goto	l2987
	line	322
	
l2984:	
	line	324
	
l9202:	
;Switch_B1.c: 322: else
;Switch_B1.c: 323: {
;Switch_B1.c: 324: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	325
;Switch_B1.c: 325: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	327
;Switch_B1.c: 327: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(setDelayOff_GO@command)
	clrf	(setDelayOff_GO@value)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDelayOff_GO
	line	328
;Switch_B1.c: 328: setRF_DimmerLights(sw,Sw->Status);
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
	line	329
;Switch_B1.c: 329: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l2987
	line	330
	
l2986:	
	goto	l2987
	line	331
	
l2983:	
	line	332
	
l2987:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerOffFunc
	__end_of_Sw_DimmerOffFunc:
	signat	_Sw_DimmerOffFunc,4216
	global	_Sw_DimmerAdjFunc

;; *************** function _Sw_DimmerAdjFunc *****************
;; Defined at:
;;		line 334 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
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
;;		_setDimmerLights_AdjGo
;;		_setDimmerLights_TriggerAdj
;;		_setRFSW_Status
;; This function is called by:
;;		_setSw_Main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	334
global __ptext15
__ptext15:	;psect for function _Sw_DimmerAdjFunc
psect	text15
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	334
	global	__size_of_Sw_DimmerAdjFunc
	__size_of_Sw_DimmerAdjFunc	equ	__end_of_Sw_DimmerAdjFunc-_Sw_DimmerAdjFunc
	
_Sw_DimmerAdjFunc:	
;incstack = 0
	opt	stack 7
; Regs used in _Sw_DimmerAdjFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerAdjFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerAdjFunc@sw)
	line	336
	
l9174:	
;Switch_B1.c: 336: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u8951
	goto	u8950
u8951:
	goto	l2991
u8950:
	line	338
	
l9176:	
;Switch_B1.c: 337: {
;Switch_B1.c: 338: Sw->Adj=1;
	incf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	339
;Switch_B1.c: 339: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	340
	
l9178:	
;Switch_B1.c: 340: setRFSW_Status(sw,1);
	clrf	(setRFSW_Status@command)
	incf	(setRFSW_Status@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setRFSW_Status
	line	342
	
l9180:	
;Switch_B1.c: 342: setDimmerLights_TriggerAdj(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_TriggerAdj@command)
	incf	(setDimmerLights_TriggerAdj@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	343
	
l9182:	
;Switch_B1.c: 343: setDimmerLights_AdjGo(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_AdjGo@command)
	incf	(setDimmerLights_AdjGo@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	goto	l2991
	line	345
	
l2990:	
	line	346
	
l2991:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerAdjFunc
	__end_of_Sw_DimmerAdjFunc:
	signat	_Sw_DimmerAdjFunc,4216
	global	_setDimmerLights_TriggerAdj

;; *************** function _setDimmerLights_TriggerAdj *****************
;; Defined at:
;;		line 439 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	439
global __ptext16
__ptext16:	;psect for function _setDimmerLights_TriggerAdj
psect	text16
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	439
	global	__size_of_setDimmerLights_TriggerAdj
	__size_of_setDimmerLights_TriggerAdj	equ	__end_of_setDimmerLights_TriggerAdj-_setDimmerLights_TriggerAdj
	
_setDimmerLights_TriggerAdj:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_TriggerAdj: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_TriggerAdj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_TriggerAdj@lights)
	line	441
	
l8852:	
;Dimmer_B1.c: 441: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerAdj@lights),w
	fcall	_DimmerLightsPointSelect
	line	442
	
l8854:	
;Dimmer_B1.c: 442: DimmerLights->TriggerAdj=command;
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
	line	443
	
l968:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_TriggerAdj
	__end_of_setDimmerLights_TriggerAdj:
	signat	_setDimmerLights_TriggerAdj,8312
	global	_setDimmerLights_AdjGo

;; *************** function _setDimmerLights_AdjGo *****************
;; Defined at:
;;		line 429 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text17,local,class=CODE,delta=2,merge=1
	line	429
global __ptext17
__ptext17:	;psect for function _setDimmerLights_AdjGo
psect	text17
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	429
	global	__size_of_setDimmerLights_AdjGo
	__size_of_setDimmerLights_AdjGo	equ	__end_of_setDimmerLights_AdjGo-_setDimmerLights_AdjGo
	
_setDimmerLights_AdjGo:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_AdjGo: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_AdjGo@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjGo@lights)
	line	431
	
l8848:	
;Dimmer_B1.c: 431: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjGo@lights),w
	fcall	_DimmerLightsPointSelect
	line	432
	
l8850:	
;Dimmer_B1.c: 432: DimmerLights->AdjGo=command;
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
	line	433
	
l962:	
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
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	38
global __ptext18
__ptext18:	;psect for function _Switch_Initialization
psect	text18
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	38
	global	__size_of_Switch_Initialization
	__size_of_Switch_Initialization	equ	__end_of_Switch_Initialization-_Switch_Initialization
	
_Switch_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _Switch_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	40
	
l9780:	
;Switch_B1.c: 40: TouchPower();
	fcall	_TouchPower
	line	42
	
l9782:	
;Switch_B1.c: 42: WPUB1=0;
	movlb 4	; select bank4
	bcf	(4201/8)^0200h,(4201)&7	;volatile
	line	51
	
l9784:	
;Switch_B1.c: 51: setSw_Initialization(1);
	movlw	(01h)
	fcall	_setSw_Initialization
	line	54
	
l9786:	
;Switch_B1.c: 54: setSw_Initialization(2);
	movlw	(02h)
	fcall	_setSw_Initialization
	line	60
	
l2932:	
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
psect	text19,local,class=CODE,delta=2,merge=1
	line	78
global __ptext19
__ptext19:	;psect for function _setSw_Initialization
psect	text19
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
	
l9598:	
;Switch_B1.c: 80: setLED(sw,1);
	clrf	(setLED@command)
	incf	(setLED@command),f
	movf	(setSw_Initialization@sw),w
	fcall	_setLED
	line	84
	
l2938:	
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
psect	text20,local,class=CODE,delta=2,merge=1
	line	9
global __ptext20
__ptext20:	;psect for function _TouchPower
psect	text20
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	9
	global	__size_of_TouchPower
	__size_of_TouchPower	equ	__end_of_TouchPower-_TouchPower
	
_TouchPower:	
;incstack = 0
	opt	stack 10
; Regs used in _TouchPower: []
	line	11
	
l9596:	
;Switch_B1.c: 11: while(!RC5)
	goto	l2920
	
l2921:	
	line	12
;Switch_B1.c: 12: RC5=1;
	bsf	(117/8),(117)&7	;volatile
	
l2920:	
	line	11
	movlb 0	; select bank0
	btfss	(117/8),(117)&7	;volatile
	goto	u9581
	goto	u9580
u9581:
	goto	l2921
u9580:
	goto	l2923
	
l2922:	
	line	13
	
l2923:	
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
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	24
global __ptext21
__ptext21:	;psect for function _RF_Main
psect	text21
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	24
	global	__size_of_RF_Main
	__size_of_RF_Main	equ	__end_of_RF_Main-_RF_Main
	
_RF_Main:	
;incstack = 0
	opt	stack 2
; Regs used in _RF_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	27
	
l10020:	
;RF_Control_B1.c: 27: setRF_Main(1);
	movlw	(01h)
	fcall	_setRF_Main
	line	29
	
l2647:	
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
psect	text22,local,class=CODE,delta=2,merge=1
	line	58
global __ptext22
__ptext22:	;psect for function _setRF_Main
psect	text22
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
	
l9536:	
;RF_Control_B1.c: 60: RfPointSelect(rf);
	movf	(setRF_Main@rf),w
	fcall	_RfPointSelect
	line	61
	
l9538:	
;RF_Control_B1.c: 61: if(RF->Enable)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9451
	goto	u9450
u9451:
	goto	l2675
u9450:
	line	68
	
l9540:	
;RF_Control_B1.c: 62: {
;RF_Control_B1.c: 68: RF->Key=((RA6 || RA4 || RA0 || RB1 ) && !RF->Learn)?1:0;
	movlb 0	; select bank0
	clrf	(_setRF_Main$4352)
	
l9542:	
	btfsc	(102/8),(102)&7	;volatile
	goto	u9461
	goto	u9460
u9461:
	goto	l9550
u9460:
	
l9544:	
	btfsc	(100/8),(100)&7	;volatile
	goto	u9471
	goto	u9470
u9471:
	goto	l9550
u9470:
	
l9546:	
	btfsc	(96/8),(96)&7	;volatile
	goto	u9481
	goto	u9480
u9481:
	goto	l9550
u9480:
	
l9548:	
	btfss	(105/8),(105)&7	;volatile
	goto	u9491
	goto	u9490
u9491:
	goto	l9554
u9490:
	goto	l9550
	
l8606:	
	
l9550:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u9501
	goto	u9500
u9501:
	goto	l9554
u9500:
	
l9552:	
	clrf	(_setRF_Main$4352)
	incf	(_setRF_Main$4352),f
	goto	l9554
	
l2664:	
	
l9554:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_setRF_Main$4352),w
	bcf	indf1,7
	skipz
	bsf	indf1,7
	line	76
;RF_Control_B1.c: 76: if(!RF->Key)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,7
	goto	u9511
	goto	u9510
u9511:
	goto	l9576
u9510:
	line	78
	
l9556:	
;RF_Control_B1.c: 77: {
;RF_Control_B1.c: 78: if(RF->ReceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9521
	goto	u9520
u9521:
	goto	l9564
u9520:
	line	80
	
l9558:	
;RF_Control_B1.c: 79: {
;RF_Control_B1.c: 80: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	81
	
l9560:	
;RF_Control_B1.c: 81: CC2500_RxData();
	fcall	_CC2500_RxData
	line	87
	
l9562:	
;RF_Control_B1.c: 87: getRxData(1);
	movlw	(01h)
	fcall	_getRxData
	line	90
;RF_Control_B1.c: 90: }
	goto	l9578
	line	91
	
l2666:	
	line	93
	
l9564:	
;RF_Control_B1.c: 91: else
;RF_Control_B1.c: 92: {
;RF_Control_B1.c: 93: if(!RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u9531
	goto	u9530
u9531:
	goto	l9578
u9530:
	line	96
	
l9566:	
;RF_Control_B1.c: 94: {
;RF_Control_B1.c: 96: if(!RF->RxStatus)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u9541
	goto	u9540
u9541:
	goto	l9578
u9540:
	line	98
	
l9568:	
;RF_Control_B1.c: 97: {
;RF_Control_B1.c: 98: RF->RxStatus=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	99
	
l9570:	
;RF_Control_B1.c: 99: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	100
	
l9572:	
;RF_Control_B1.c: 100: CC2500_WriteCommand(0x34);
	movlw	(034h)
	fcall	_CC2500_WriteCommand
	line	101
	
l9574:	
;RF_Control_B1.c: 101: setINT_GO(1);
	movlw	(01h)
	fcall	_setINT_GO
	goto	l9578
	line	102
	
l2669:	
	goto	l9578
	line	104
	
l2668:	
	goto	l9578
	line	105
	
l2667:	
	line	106
;RF_Control_B1.c: 102: }
;RF_Control_B1.c: 104: }
;RF_Control_B1.c: 105: }
;RF_Control_B1.c: 106: }
	goto	l9578
	line	107
	
l2665:	
	line	109
	
l9576:	
;RF_Control_B1.c: 107: else
;RF_Control_B1.c: 108: {
;RF_Control_B1.c: 109: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	goto	l9578
	line	110
	
l2670:	
	line	111
	
l9578:	
;RF_Control_B1.c: 110: }
;RF_Control_B1.c: 111: if(RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u9551
	goto	u9550
u9551:
	goto	l2675
u9550:
	line	113
	
l9580:	
;RF_Control_B1.c: 112: {
;RF_Control_B1.c: 113: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	114
	
l9582:	
;RF_Control_B1.c: 114: if(!RF->Debounce)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u9561
	goto	u9560
u9561:
	goto	l9592
u9560:
	line	116
	
l9584:	
;RF_Control_B1.c: 115: {
;RF_Control_B1.c: 116: RF->DebounceTime++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_setRF_Main+0)+0
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setRF_Main+0)+0,w
	addwf	indf1,f
	line	117
	
l9586:	
;RF_Control_B1.c: 117: if(RF->DebounceTime == 25)
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	019h&0ffh
	skipz
	goto	u9571
	goto	u9570
u9571:
	goto	l2675
u9570:
	line	119
	
l9588:	
;RF_Control_B1.c: 118: {
;RF_Control_B1.c: 119: RF->DebounceTime=0;
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	120
	
l9590:	
;RF_Control_B1.c: 120: RF->Debounce=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	goto	l2675
	line	121
	
l2673:	
	line	122
;RF_Control_B1.c: 121: }
;RF_Control_B1.c: 122: }
	goto	l2675
	line	123
	
l2672:	
	line	125
	
l9592:	
;RF_Control_B1.c: 123: else
;RF_Control_B1.c: 124: {
;RF_Control_B1.c: 125: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	126
;RF_Control_B1.c: 126: RF->TransceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	127
	
l9594:	
;RF_Control_B1.c: 127: CC2500_TxData();
	fcall	_CC2500_TxData
	goto	l2675
	line	128
	
l2674:	
	goto	l2675
	line	129
	
l2671:	
	goto	l2675
	line	130
	
l2662:	
	line	131
	
l2675:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Main
	__end_of_setRF_Main:
	signat	_setRF_Main,4216
	global	_getRxData

;; *************** function _getRxData *****************
;; Defined at:
;;		line 207 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text23,local,class=CODE,delta=2,merge=1
	line	207
global __ptext23
__ptext23:	;psect for function _getRxData
psect	text23
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	207
	global	__size_of_getRxData
	__size_of_getRxData	equ	__end_of_getRxData-_getRxData
	
_getRxData:	
;incstack = 0
	opt	stack 2
; Regs used in _getRxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;getRxData@rf stored from wreg
	movlb 0	; select bank0
	movwf	(getRxData@rf)
	line	210
	
l9084:	
;RF_Control_B1.c: 209: unsigned char i;
;RF_Control_B1.c: 210: RfPointSelect(rf);
	movf	(getRxData@rf),w
	fcall	_RfPointSelect
	line	211
	
l9086:	
;RF_Control_B1.c: 211: if(RF->Learn)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,6
	goto	u8791
	goto	u8790
u8791:
	goto	l9094
u8790:
	line	213
	
l9088:	
;RF_Control_B1.c: 212: {
;RF_Control_B1.c: 213: if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u8801
	goto	u8800
u8801:
	goto	l2701
u8800:
	
l9090:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	064h&0ffh
	skipz
	goto	u8811
	goto	u8810
u8811:
	goto	l2701
u8810:
	line	215
	
l9092:	
;RF_Control_B1.c: 214: {
;RF_Control_B1.c: 215: setLog_Code(1);
	movlw	(01h)
	fcall	_setLog_Code
	goto	l2701
	line	216
	
l2691:	
	line	217
;RF_Control_B1.c: 216: }
;RF_Control_B1.c: 217: }
	goto	l2701
	line	218
	
l2690:	
	line	220
	
l9094:	
;RF_Control_B1.c: 218: else
;RF_Control_B1.c: 219: {
;RF_Control_B1.c: 220: if(RF_Data[0] == 0x00 && RF_Data[1] == 0x02)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u8821
	goto	u8820
u8821:
	goto	l2701
u8820:
	
l9096:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u8831
	goto	u8830
u8831:
	goto	l2701
u8830:
	line	222
	
l9098:	
;RF_Control_B1.c: 221: {
;RF_Control_B1.c: 222: if(RF_Data[12] == 0xff && RF_Data[13] == 0xff && RF_Data[14] == 0xff)
	movf	0+(_RF_Data)^080h+0Ch,w
	xorlw	0FFh&0ffh
	skipz
	goto	u8841
	goto	u8840
u8841:
	goto	l9106
u8840:
	
l9100:	
	movf	0+(_RF_Data)^080h+0Dh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u8851
	goto	u8850
u8851:
	goto	l9106
u8850:
	
l9102:	
	movf	0+(_RF_Data)^080h+0Eh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u8861
	goto	u8860
u8861:
	goto	l9106
u8860:
	line	224
	
l9104:	
;RF_Control_B1.c: 223: {
;RF_Control_B1.c: 224: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	225
;RF_Control_B1.c: 225: }
	goto	l2701
	line	226
	
l2694:	
	line	228
	
l9106:	
;RF_Control_B1.c: 226: else
;RF_Control_B1.c: 227: {
;RF_Control_B1.c: 228: if(RF_Data[12] == Product->Data[12] && RF_Data[13] == Product->Data[13] && RF_Data[14] == Product->Data[14])
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
	goto	u8871
	goto	u8870
u8871:
	goto	l2701
u8870:
	
l9108:	
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
	goto	u8881
	goto	u8880
u8881:
	goto	l2701
u8880:
	
l9110:	
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
	goto	u8891
	goto	u8890
u8891:
	goto	l2701
u8890:
	line	230
	
l9112:	
;RF_Control_B1.c: 229: {
;RF_Control_B1.c: 230: setControl_Lights_Table(1);
	movlw	(01h)
	fcall	_setControl_Lights_Table
	goto	l2701
	line	231
	
l2696:	
	goto	l2701
	line	232
	
l2695:	
	line	233
;RF_Control_B1.c: 231: }
;RF_Control_B1.c: 232: }
;RF_Control_B1.c: 233: }
	goto	l2701
	line	234
	
l2693:	
	goto	l2701
	
l9114:	
	goto	l2701
	
l9116:	
	goto	l2701
	line	237
	
l9118:	
;RF_Control_B1.c: 235: {
;RF_Control_B1.c: 236: ;
;RF_Control_B1.c: 237: }
	goto	l2701
	line	238
	
l2698:	
	goto	l2701
	
l9120:	
	goto	l2701
	
l9122:	
	goto	l2701
	line	241
;RF_Control_B1.c: 239: {
;RF_Control_B1.c: 240: ;
	
l2700:	
	goto	l2701
	line	246
	
l2699:	
	goto	l2701
	
l2697:	
	goto	l2701
	
l2692:	
	line	247
	
l2701:	
	return
	opt stack 0
GLOBAL	__end_of_getRxData
	__end_of_getRxData:
	signat	_getRxData,4216
	global	_setLog_Code

;; *************** function _setLog_Code *****************
;; Defined at:
;;		line 249 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text24,local,class=CODE,delta=2,merge=1
	line	249
global __ptext24
__ptext24:	;psect for function _setLog_Code
psect	text24
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	249
	global	__size_of_setLog_Code
	__size_of_setLog_Code	equ	__end_of_setLog_Code-_setLog_Code
	
_setLog_Code:	
;incstack = 0
	opt	stack 6
; Regs used in _setLog_Code: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLog_Code@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setLog_Code@rf)
	line	251
	
l8888:	
;RF_Control_B1.c: 251: RfPointSelect(rf);
	movf	(setLog_Code@rf),w
	fcall	_RfPointSelect
	line	252
	
l8890:	
;RF_Control_B1.c: 252: Product->Data[12]=RF_Data[12];
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
	line	253
	
l8892:	
;RF_Control_B1.c: 253: Product->Data[13]=RF_Data[13];
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
	line	254
	
l8894:	
;RF_Control_B1.c: 254: Product->Data[14]=RF_Data[14];
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
	line	255
	
l8896:	
;RF_Control_B1.c: 255: setBuz(1,100);
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	256
	
l8898:	
;RF_Control_B1.c: 256: RF->Learn=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	257
	
l8900:	
;RF_Control_B1.c: 257: if(TMain->First)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u8571
	goto	u8570
u8571:
	goto	l2704
u8570:
	line	259
	
l8902:	
;RF_Control_B1.c: 258: {
;RF_Control_B1.c: 259: Memory->LoopSave=1;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,2
	line	260
	
l2704:	
	line	261
;RF_Control_B1.c: 260: }
;RF_Control_B1.c: 261: Memory->Modify=1;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,0
	line	262
	
l2705:	
	return
	opt stack 0
GLOBAL	__end_of_setLog_Code
	__end_of_setLog_Code:
	signat	_setLog_Code,4216
	global	_setControl_Lights_Table

;; *************** function _setControl_Lights_Table *****************
;; Defined at:
;;		line 264 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text25,local,class=CODE,delta=2,merge=1
	line	264
global __ptext25
__ptext25:	;psect for function _setControl_Lights_Table
psect	text25
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	264
	global	__size_of_setControl_Lights_Table
	__size_of_setControl_Lights_Table	equ	__end_of_setControl_Lights_Table-_setControl_Lights_Table
	
_setControl_Lights_Table:	
;incstack = 0
	opt	stack 2
; Regs used in _setControl_Lights_Table: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setControl_Lights_Table@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setControl_Lights_Table@rf)
	line	266
	
l8904:	
;RF_Control_B1.c: 266: RfPointSelect(rf);
	movf	(setControl_Lights_Table@rf),w
	fcall	_RfPointSelect
	line	267
	
l8906:	
;RF_Control_B1.c: 267: if(RF_Data[15] == 0x00)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,f
	skipz
	goto	u8581
	goto	u8580
u8581:
	goto	l8918
u8580:
	line	270
	
l8908:	
;RF_Control_B1.c: 268: {
;RF_Control_B1.c: 270: setDimmerLights(1,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights@status)
	movlw	(01h)
	fcall	_setDimmerLights
	line	271
;RF_Control_B1.c: 271: setRFSW_Status(1,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movlw	(01h)
	fcall	_setRFSW_Status
	line	272
;RF_Control_B1.c: 272: setSw_Status(1,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movlw	(01h)
	fcall	_setSw_Status
	line	275
;RF_Control_B1.c: 275: setDimmerLights(2,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights@status)
	movlw	(02h)
	fcall	_setDimmerLights
	line	276
;RF_Control_B1.c: 276: setRFSW_Status(2,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movlw	(02h)
	fcall	_setRFSW_Status
	line	277
;RF_Control_B1.c: 277: setSw_Status(2,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movlw	(02h)
	fcall	_setSw_Status
	line	285
	
l8910:	
;RF_Control_B1.c: 285: Product->Data[9]=0;
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	286
	
l8912:	
;RF_Control_B1.c: 286: Product->Data[11]=0;
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	287
	
l8914:	
;RF_Control_B1.c: 287: Product->Data[15]=0;
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	288
	
l8916:	
;RF_Control_B1.c: 288: Product->Data[17]=0;
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	289
;RF_Control_B1.c: 289: setBuz(1,100);
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	290
;RF_Control_B1.c: 290: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	291
;RF_Control_B1.c: 291: }
	goto	l2719
	line	292
	
l2708:	
	
l8918:	
;RF_Control_B1.c: 292: else if(RF_Data[15] == 0x20)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	020h&0ffh
	skipz
	goto	u8591
	goto	u8590
u8591:
	goto	l8924
u8590:
	line	294
	
l8920:	
;RF_Control_B1.c: 293: {
;RF_Control_B1.c: 294: Product->Data[9]=0;
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	295
;RF_Control_B1.c: 295: Product->Data[11]=0;
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	296
;RF_Control_B1.c: 296: Product->Data[17]=0;
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	297
	
l8922:	
;RF_Control_B1.c: 297: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	298
;RF_Control_B1.c: 298: }
	goto	l2719
	line	300
	
l2710:	
	
l8924:	
;RF_Control_B1.c: 300: else if(RF_Data[15] == 0x01)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	01h&0ffh
	skipz
	goto	u8601
	goto	u8600
u8601:
	goto	l8928
u8600:
	line	302
	
l8926:	
;RF_Control_B1.c: 301: {
;RF_Control_B1.c: 302: setRFSW_Control(1);
	movlw	(01h)
	fcall	_setRFSW_Control
	line	303
;RF_Control_B1.c: 303: }
	goto	l2719
	line	305
	
l2712:	
	
l8928:	
;RF_Control_B1.c: 305: else if(RF_Data[15] == 0x11)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	011h&0ffh
	skipz
	goto	u8611
	goto	u8610
u8611:
	goto	l8932
u8610:
	line	307
	
l8930:	
;RF_Control_B1.c: 306: {
;RF_Control_B1.c: 307: setRFSW_AdjControl(1);
	movlw	(01h)
	fcall	_setRFSW_AdjControl
	line	308
;RF_Control_B1.c: 308: }
	goto	l2719
	line	313
	
l2714:	
	
l8932:	
;RF_Control_B1.c: 313: else if(RF_Data[15] == 0x02)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	02h&0ffh
	skipz
	goto	u8621
	goto	u8620
u8621:
	goto	l8936
u8620:
	line	315
	
l8934:	
;RF_Control_B1.c: 314: {
;RF_Control_B1.c: 315: setRFSW_Control(2);
	movlw	(02h)
	fcall	_setRFSW_Control
	line	316
;RF_Control_B1.c: 316: }
	goto	l2719
	line	318
	
l2716:	
	
l8936:	
;RF_Control_B1.c: 318: else if(RF_Data[15] == 0x21)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	021h&0ffh
	skipz
	goto	u8631
	goto	u8630
u8631:
	goto	l2719
u8630:
	line	320
	
l8938:	
;RF_Control_B1.c: 319: {
;RF_Control_B1.c: 320: setRFSW_AdjControl(2);
	movlw	(02h)
	fcall	_setRFSW_AdjControl
	goto	l2719
	line	321
	
l2718:	
	goto	l2719
	line	337
	
l2717:	
	goto	l2719
	
l2715:	
	goto	l2719
	
l2713:	
	goto	l2719
	
l2711:	
	goto	l2719
	
l2709:	
	
l2719:	
	return
	opt stack 0
GLOBAL	__end_of_setControl_Lights_Table
	__end_of_setControl_Lights_Table:
	signat	_setControl_Lights_Table,4216
	global	_setRFSW_Control

;; *************** function _setRFSW_Control *****************
;; Defined at:
;;		line 361 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   11[BANK0 ] unsigned char 
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
psect	text26,local,class=CODE,delta=2,merge=1
	line	361
global __ptext26
__ptext26:	;psect for function _setRFSW_Control
psect	text26
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	361
	global	__size_of_setRFSW_Control
	__size_of_setRFSW_Control	equ	__end_of_setRFSW_Control-_setRFSW_Control
	
_setRFSW_Control:	
;incstack = 0
	opt	stack 5
; Regs used in _setRFSW_Control: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRFSW_Control@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_Control@sw)
	line	363
	
l8788:	
;RF_Control_B1.c: 363: RfSWPointSelect(sw);
	movf	(setRFSW_Control@sw),w
	fcall	_RfSWPointSelect
	line	364
	
l8790:	
;RF_Control_B1.c: 364: if(!RFSW->Status)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u8491
	goto	u8490
u8491:
	goto	l8806
u8490:
	line	366
	
l8792:	
;RF_Control_B1.c: 365: {
;RF_Control_B1.c: 366: if(RF_Data[16] == 0x80)
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u8501
	goto	u8500
u8501:
	goto	l8796
u8500:
	line	368
	
l8794:	
;RF_Control_B1.c: 367: {
;RF_Control_B1.c: 368: setDelayOff_GO(sw,1,RF_Data[17]);
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
	goto	l8796
	line	369
	
l2728:	
	line	370
	
l8796:	
;RF_Control_B1.c: 369: }
;RF_Control_B1.c: 370: RFSW->Status=1;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	371
	
l8798:	
;RF_Control_B1.c: 371: setSw_Status(sw,1);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	incf	(setSw_Status@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	373
	
l8800:	
;RF_Control_B1.c: 373: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	374
	
l8802:	
;RF_Control_B1.c: 374: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	incf	(setDimmerLights_Switch@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Switch
	line	376
	
l8804:	
;RF_Control_B1.c: 376: setRF_DimmerLights(sw,RFSW->Status);
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
	line	377
;RF_Control_B1.c: 377: }
	goto	l8822
	line	378
	
l2727:	
	line	380
	
l8806:	
;RF_Control_B1.c: 378: else
;RF_Control_B1.c: 379: {
;RF_Control_B1.c: 380: if(RF_Data[16] == 0x80)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u8511
	goto	u8510
u8511:
	goto	l8810
u8510:
	line	382
	
l8808:	
;RF_Control_B1.c: 381: {
;RF_Control_B1.c: 382: setDelayOff_GO(sw,1,RF_Data[17]);
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
	line	383
;RF_Control_B1.c: 383: setRF_DimmerLights(sw,1);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	incf	(setRF_DimmerLights@on),f
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	384
;RF_Control_B1.c: 384: }
	goto	l8822
	line	385
	
l2730:	
	line	387
	
l8810:	
;RF_Control_B1.c: 385: else
;RF_Control_B1.c: 386: {
;RF_Control_B1.c: 387: RFSW->Status=0;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	388
	
l8812:	
;RF_Control_B1.c: 388: setSw_Status(sw,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	390
	
l8814:	
;RF_Control_B1.c: 390: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	391
	
l8816:	
;RF_Control_B1.c: 391: setDimmerLights_Switch(sw,RFSW->Status);
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
	line	393
	
l8818:	
;RF_Control_B1.c: 393: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(setDelayOff_GO@command)
	clrf	(setDelayOff_GO@value)
	movf	(setRFSW_Control@sw),w
	fcall	_setDelayOff_GO
	line	394
	
l8820:	
;RF_Control_B1.c: 394: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	goto	l8822
	line	395
	
l2731:	
	goto	l8822
	line	396
	
l2729:	
	line	397
	
l8822:	
;RF_Control_B1.c: 395: }
;RF_Control_B1.c: 396: }
;RF_Control_B1.c: 397: setBuz(1,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	398
	
l8824:	
;RF_Control_B1.c: 398: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	399
	
l2732:	
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
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	92
global __ptext27
__ptext27:	;psect for function _setDelayOff_GO
psect	text27
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
	
l6532:	
;DelayOff_B1.c: 94: DelayOffPointSelect(sw);
	movf	(setDelayOff_GO@sw),w
	fcall	_DelayOffPointSelect
	line	95
	
l6534:	
;DelayOff_B1.c: 95: if(DelayOff->Enable)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u5041
	goto	u5040
u5041:
	goto	l702
u5040:
	line	97
	
l6536:	
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
	
l6538:	
;DelayOff_B1.c: 98: if(command)
	movf	(setDelayOff_GO@command),w
	skipz
	goto	u5050
	goto	l6552
u5050:
	line	100
	
l6540:	
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
	
l6542:	
;DelayOff_B1.c: 101: if(((value%16)==5 || !(value%16)) && value <= 0x25)
	movlw	(0Fh)
	andwf	(setDelayOff_GO@value),w
	movwf	(??_setDelayOff_GO+0)+0
	movf	0+(??_setDelayOff_GO+0)+0,w
	xorlw	05h&0ffh
	skipnz
	goto	u5061
	goto	u5060
u5061:
	goto	l6546
u5060:
	
l6544:	
	movf	(setDelayOff_GO@value),w
	andlw	0Fh
	btfss	status,2
	goto	u5071
	goto	u5070
u5071:
	goto	l6550
u5070:
	goto	l6546
	
l698:	
	
l6546:	
	movlw	(026h)
	subwf	(setDelayOff_GO@value),w
	skipnc
	goto	u5081
	goto	u5080
u5081:
	goto	l6550
u5080:
	line	103
	
l6548:	
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
	goto	l6556
	line	105
	
l696:	
	line	107
	
l6550:	
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
	goto	l6556
	line	108
	
l699:	
	line	109
;DelayOff_B1.c: 108: }
;DelayOff_B1.c: 109: }
	goto	l6556
	line	110
	
l695:	
	
l6552:	
;DelayOff_B1.c: 110: else if(!command)
	movf	(setDelayOff_GO@command),f
	skipz
	goto	u5091
	goto	u5090
u5091:
	goto	l6556
u5090:
	line	112
	
l6554:	
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
	goto	l6556
	line	113
	
l701:	
	goto	l6556
	line	114
	
l700:	
	
l6556:	
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
	
l6558:	
;DelayOff_B1.c: 115: DelayOff->MinuteTime=0;
	movf	(_DelayOff)^080h,w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l702
	line	116
	
l694:	
	line	117
	
l702:	
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
psect	text28,local,class=CODE,delta=2,merge=1
	line	119
global __ptext28
__ptext28:	;psect for function _DelayTimejudge
psect	text28
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
	
l6392:	
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
	goto	u4781
	goto	u4780
u4781:
	goto	l6396
u4780:
	line	124
	
l6394:	
;DelayOff_B1.c: 123: {
;DelayOff_B1.c: 124: i=5;
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	125
;DelayOff_B1.c: 125: }
	goto	l706
	line	126
	
l705:	
	
l6396:	
;DelayOff_B1.c: 126: else if(value == 0x10)
	movf	(DelayTimejudge@value),w
	xorlw	010h&0ffh
	skipz
	goto	u4791
	goto	u4790
u4791:
	goto	l6400
u4790:
	line	128
	
l6398:	
;DelayOff_B1.c: 127: {
;DelayOff_B1.c: 128: i=10;
	movlw	(0Ah)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	129
;DelayOff_B1.c: 129: }
	goto	l706
	line	130
	
l707:	
	
l6400:	
;DelayOff_B1.c: 130: else if(value == 0x15)
	movf	(DelayTimejudge@value),w
	xorlw	015h&0ffh
	skipz
	goto	u4801
	goto	u4800
u4801:
	goto	l6404
u4800:
	line	132
	
l6402:	
;DelayOff_B1.c: 131: {
;DelayOff_B1.c: 132: i=15;
	movlw	(0Fh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	133
;DelayOff_B1.c: 133: }
	goto	l706
	line	134
	
l709:	
	
l6404:	
;DelayOff_B1.c: 134: else if(value == 0x20)
	movf	(DelayTimejudge@value),w
	xorlw	020h&0ffh
	skipz
	goto	u4811
	goto	u4810
u4811:
	goto	l6408
u4810:
	line	136
	
l6406:	
;DelayOff_B1.c: 135: {
;DelayOff_B1.c: 136: i=20;
	movlw	(014h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	137
;DelayOff_B1.c: 137: }
	goto	l706
	line	138
	
l711:	
	
l6408:	
;DelayOff_B1.c: 138: else if(value == 0x25)
	movf	(DelayTimejudge@value),w
	xorlw	025h&0ffh
	skipz
	goto	u4821
	goto	u4820
u4821:
	goto	l6412
u4820:
	line	140
	
l6410:	
;DelayOff_B1.c: 139: {
;DelayOff_B1.c: 140: i=25;
	movlw	(019h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	141
;DelayOff_B1.c: 141: }
	goto	l706
	line	142
	
l713:	
	
l6412:	
;DelayOff_B1.c: 142: else if(value == 0x30)
	movf	(DelayTimejudge@value),w
	xorlw	030h&0ffh
	skipz
	goto	u4831
	goto	u4830
u4831:
	goto	l706
u4830:
	line	144
	
l6414:	
;DelayOff_B1.c: 143: {
;DelayOff_B1.c: 144: i=30;
	movlw	(01Eh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l706
	line	145
	
l715:	
	goto	l706
	line	146
	
l714:	
	goto	l706
	
l712:	
	goto	l706
	
l710:	
	goto	l706
	
l708:	
	
l706:	
;DelayOff_B1.c: 145: }
;DelayOff_B1.c: 146: return i;
	movf	(DelayTimejudge@i),w
	goto	l716
	
l6416:	
	line	147
	
l716:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTimejudge
	__end_of_DelayTimejudge:
	signat	_DelayTimejudge,4217
	global	_setRFSW_AdjControl

;; *************** function _setRFSW_AdjControl *****************
;; Defined at:
;;		line 401 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	401
global __ptext29
__ptext29:	;psect for function _setRFSW_AdjControl
psect	text29
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	401
	global	__size_of_setRFSW_AdjControl
	__size_of_setRFSW_AdjControl	equ	__end_of_setRFSW_AdjControl-_setRFSW_AdjControl
	
_setRFSW_AdjControl:	
;incstack = 0
	opt	stack 2
; Regs used in _setRFSW_AdjControl: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRFSW_AdjControl@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_AdjControl@sw)
	line	403
	
l6796:	
;RF_Control_B1.c: 403: RfSWPointSelect(sw);
	movf	(setRFSW_AdjControl@sw),w
	fcall	_RfSWPointSelect
	line	404
	
l6798:	
;RF_Control_B1.c: 404: if(RFSW->Status)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u5461
	goto	u5460
u5461:
	goto	l6804
u5460:
	line	406
	
l6800:	
;RF_Control_B1.c: 405: {
;RF_Control_B1.c: 406: Memory->Modify=1;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,0
	line	407
	
l6802:	
;RF_Control_B1.c: 407: setRF_DimmerValue(sw);
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	fcall	_setRF_DimmerValue
	line	408
;RF_Control_B1.c: 408: }
	goto	l2736
	line	409
	
l2735:	
	line	411
	
l6804:	
;RF_Control_B1.c: 409: else
;RF_Control_B1.c: 410: {
;RF_Control_B1.c: 411: Product->Data[9]=Product->Data[20+sw];
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
	line	412
	
l2736:	
	line	413
;RF_Control_B1.c: 412: }
;RF_Control_B1.c: 413: Product->Data[17]=Product->Data[26+sw];
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
	line	414
	
l6806:	
;RF_Control_B1.c: 414: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	415
	
l2737:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_AdjControl
	__end_of_setRFSW_AdjControl:
	signat	_setRFSW_AdjControl,4216
	global	_setRF_DimmerValue

;; *************** function _setRF_DimmerValue *****************
;; Defined at:
;;		line 425 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text30,local,class=CODE,delta=2,merge=1
	line	425
global __ptext30
__ptext30:	;psect for function _setRF_DimmerValue
psect	text30
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	425
	global	__size_of_setRF_DimmerValue
	__size_of_setRF_DimmerValue	equ	__end_of_setRF_DimmerValue-_setRF_DimmerValue
	
_setRF_DimmerValue:	
;incstack = 0
	opt	stack 2
; Regs used in _setRF_DimmerValue: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_DimmerValue@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_DimmerValue@lights)
	line	427
	
l6642:	
;RF_Control_B1.c: 427: if(RF_Data[9] > 0x64)
	movlw	(065h)
	movlb 1	; select bank1
	subwf	0+(_RF_Data)^080h+09h,w
	skipc
	goto	u5291
	goto	u5290
u5291:
	goto	l6646
u5290:
	line	429
	
l6644:	
;RF_Control_B1.c: 428: {
;RF_Control_B1.c: 429: RF_Data[9]=0x64;
	movlw	(064h)
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(??_setRF_DimmerValue+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+09h
	goto	l6646
	line	430
	
l2743:	
	line	431
	
l6646:	
;RF_Control_B1.c: 430: }
;RF_Control_B1.c: 431: Product->Data[9]=RF_Data[9];
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
	line	432
	
l6648:	
;RF_Control_B1.c: 432: Product->Data[11]=lights;
	movf	(setRF_DimmerValue@lights),w
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	433
	
l6650:	
;RF_Control_B1.c: 433: Product->Data[(20+lights)]=Product->Data[9];
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
	line	434
	
l6652:	
;RF_Control_B1.c: 434: setDimmerLights_AdjRF(lights);
	movf	(setRF_DimmerValue@lights),w
	fcall	_setDimmerLights_AdjRF
	line	435
	
l2744:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerValue
	__end_of_setRF_DimmerValue:
	signat	_setRF_DimmerValue,4216
	global	_setDimmerLights_AdjRF

;; *************** function _setDimmerLights_AdjRF *****************
;; Defined at:
;;		line 412 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text31,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	412
global __ptext31
__ptext31:	;psect for function _setDimmerLights_AdjRF
psect	text31
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	412
	global	__size_of_setDimmerLights_AdjRF
	__size_of_setDimmerLights_AdjRF	equ	__end_of_setDimmerLights_AdjRF-_setDimmerLights_AdjRF
	
_setDimmerLights_AdjRF:	
;incstack = 0
	opt	stack 2
; Regs used in _setDimmerLights_AdjRF: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_AdjRF@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjRF@lights)
	line	414
	
l6418:	
;Dimmer_B1.c: 414: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjRF@lights),w
	fcall	_DimmerLightsPointSelect
	line	415
	
l6420:	
;Dimmer_B1.c: 415: DimmerLights->AdjRF=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	416
	
l6422:	
;Dimmer_B1.c: 416: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	417
	
l6424:	
;Dimmer_B1.c: 417: DimmerLights->MaxmumValue=getPercentValue(Product->Data[9]);
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
	line	418
	
l953:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_AdjRF
	__end_of_setDimmerLights_AdjRF:
	signat	_setDimmerLights_AdjRF,4216
	global	_getPercentValue

;; *************** function _getPercentValue *****************
;; Defined at:
;;		line 479 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text32,local,class=CODE,delta=2,merge=1
	line	479
global __ptext32
__ptext32:	;psect for function _getPercentValue
psect	text32
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	479
	global	__size_of_getPercentValue
	__size_of_getPercentValue	equ	__end_of_getPercentValue-_getPercentValue
	
_getPercentValue:	
;incstack = 0
	opt	stack 2
; Regs used in _getPercentValue: [wreg+status,2+status,0+pclath+cstack]
;getPercentValue@value stored from wreg
	movlb 0	; select bank0
	movwf	(getPercentValue@value)
	line	482
	
l6376:	
;Dimmer_B1.c: 482: float i=((char)((100-20)*1.5))-((char)((100-55)*1.5));
	movlw	0x0
	movwf	(getPercentValue@i)
	movlw	0x54
	movwf	(getPercentValue@i+1)
	movlw	0x42
	movwf	(getPercentValue@i+2)
	line	483
	
l6378:	
;Dimmer_B1.c: 483: i/=100;
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
	line	484
	
l6380:	
;Dimmer_B1.c: 484: return (char)(((100-value)*i)+((char)((100-55)*1.5)));
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
	goto	l974
	
l6382:	
	line	492
	
l974:	
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
psect	text33,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
	line	62
global __ptext33
__ptext33:	;psect for function ___ftmul
psect	text33
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l6276:	
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
	goto	u4521
	goto	u4520
u4521:
	goto	l6282
u4520:
	line	68
	
l6278:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l3459
	
l6280:	
	goto	l3459
	
l3458:	
	line	69
	
l6282:	
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
	goto	u4531
	goto	u4530
u4531:
	goto	l6288
u4530:
	line	70
	
l6284:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l3459
	
l6286:	
	goto	l3459
	
l3460:	
	line	71
	
l6288:	
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
u4545:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4540:
	decfsz	wreg,f
	goto	u4545
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
u4555:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4550:
	decfsz	wreg,f
	goto	u4555
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
	
l6290:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l6292:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l6294:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l6296:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l6298:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l6300
	line	135
	
l3461:	
	line	136
	
l6300:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4561
	goto	u4560
u4561:
	goto	l6304
u4560:
	line	137
	
l6302:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l6304
	
l3462:	
	line	138
	
l6304:	
	movlw	01h
u4575:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u4575

	line	139
	
l6306:	
	movlw	01h
u4585:
	lslf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	decfsz	wreg,f
	goto	u4585
	line	140
	
l6308:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4591
	goto	u4590
u4591:
	goto	l6300
u4590:
	goto	l6310
	
l3463:	
	line	143
	
l6310:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l6312
	line	144
	
l3464:	
	line	145
	
l6312:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4601
	goto	u4600
u4601:
	goto	l6316
u4600:
	line	146
	
l6314:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l6316
	
l3465:	
	line	147
	
l6316:	
	movlw	01h
u4615:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u4615

	line	148
	
l6318:	
	movlw	01h
u4625:
	lsrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	decfsz	wreg,f
	goto	u4625

	line	149
	
l6320:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4631
	goto	u4630
u4631:
	goto	l6312
u4630:
	goto	l6322
	
l3466:	
	line	156
	
l6322:	
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
	goto	l3459
	
l6324:	
	line	157
	
l3459:	
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
psect	text34,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
	line	86
global __ptext34
__ptext34:	;psect for function ___ftadd
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l6162:	
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
	
l6164:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u4210
	goto	l6170
u4210:
	
l6166:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u4221
	goto	u4220
u4221:
	goto	l6174
u4220:
	
l6168:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4231
	goto	u4230
u4231:
	goto	l6174
u4230:
	goto	l6170
	
l3412:	
	line	93
	
l6170:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3413
	
l6172:	
	goto	l3413
	
l3410:	
	line	94
	
l6174:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u4240
	goto	l3416
u4240:
	
l6176:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4251
	goto	u4250
u4251:
	goto	l6180
u4250:
	
l6178:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4261
	goto	u4260
u4261:
	goto	l6180
u4260:
	
l3416:	
	line	95
	goto	l3413
	
l3414:	
	line	96
	
l6180:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l6182:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u4271
	goto	u4270
u4271:
	goto	l3417
u4270:
	line	98
	
l6184:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3417:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l3418
u4280:
	line	100
	
l6186:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3418:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l6188:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l6190:	
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
	goto	u4291
	goto	u4290
u4291:
	goto	l6202
u4290:
	goto	l6192
	line	109
	
l3420:	
	line	110
	
l6192:	
	movlw	01h
u4305:
	lslf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	decfsz	wreg,f
	goto	u4305
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l6194:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4311
	goto	u4310
u4311:
	goto	l6200
u4310:
	
l6196:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4321
	goto	u4320
u4321:
	goto	l6192
u4320:
	goto	l6200
	
l3422:	
	goto	l6200
	
l3423:	
	line	113
	goto	l6200
	
l3425:	
	line	114
	
l6198:	
	movlw	01h
u4335:
	lsrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	decfsz	wreg,f
	goto	u4335

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l6200
	line	116
	
l3424:	
	line	113
	
l6200:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4341
	goto	u4340
u4341:
	goto	l6198
u4340:
	goto	l3427
	
l3426:	
	line	117
	goto	l3427
	
l3419:	
	
l6202:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4351
	goto	u4350
u4351:
	goto	l3427
u4350:
	goto	l6204
	line	120
	
l3429:	
	line	121
	
l6204:	
	movlw	01h
u4365:
	lslf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	decfsz	wreg,f
	goto	u4365
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l6206:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4371
	goto	u4370
u4371:
	goto	l6212
u4370:
	
l6208:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4381
	goto	u4380
u4381:
	goto	l6204
u4380:
	goto	l6212
	
l3431:	
	goto	l6212
	
l3432:	
	line	124
	goto	l6212
	
l3434:	
	line	125
	
l6210:	
	movlw	01h
u4395:
	lsrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	decfsz	wreg,f
	goto	u4395

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l6212
	line	127
	
l3433:	
	line	124
	
l6212:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l6210
u4400:
	goto	l3427
	
l3435:	
	goto	l3427
	line	128
	
l3428:	
	line	129
	
l3427:	
	btfss	(___ftadd@sign),(7)&7
	goto	u4411
	goto	u4410
u4411:
	goto	l6216
u4410:
	line	131
	
l6214:	
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
	goto	l6216
	line	133
	
l3436:	
	line	134
	
l6216:	
	btfss	(___ftadd@sign),(6)&7
	goto	u4421
	goto	u4420
u4421:
	goto	l6220
u4420:
	line	136
	
l6218:	
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
	goto	l6220
	line	138
	
l3437:	
	line	139
	
l6220:	
	clrf	(___ftadd@sign)
	line	140
	
l6222:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	addwfc	(___ftadd@f2+1),f
	movf	(___ftadd@f1+2),w
	addwfc	(___ftadd@f2+2),f
	line	141
	
l6224:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4431
	goto	u4430
u4431:
	goto	l6230
u4430:
	line	142
	
l6226:	
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
	
l6228:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l6230
	line	145
	
l3438:	
	line	146
	
l6230:	
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
	goto	l3413
	
l6232:	
	line	148
	
l3413:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	_RF_RxDisable

;; *************** function _RF_RxDisable *****************
;; Defined at:
;;		line 191 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text35,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	191
global __ptext35
__ptext35:	;psect for function _RF_RxDisable
psect	text35
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	191
	global	__size_of_RF_RxDisable
	__size_of_RF_RxDisable	equ	__end_of_RF_RxDisable-_RF_RxDisable
	
_RF_RxDisable:	
;incstack = 0
	opt	stack 7
; Regs used in _RF_RxDisable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;RF_RxDisable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(RF_RxDisable@rf)
	line	193
	
l9124:	
;RF_Control_B1.c: 193: RfPointSelect(rf);
	movf	(RF_RxDisable@rf),w
	fcall	_RfPointSelect
	line	195
	
l9126:	
;RF_Control_B1.c: 195: if(RF->RxStatus)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u8901
	goto	u8900
u8901:
	goto	l2687
u8900:
	line	197
	
l9128:	
;RF_Control_B1.c: 196: {
;RF_Control_B1.c: 197: RF->RxStatus=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	198
;RF_Control_B1.c: 198: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	199
	
l9130:	
;RF_Control_B1.c: 199: RF->DebounceTime=0;
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	200
	
l9132:	
;RF_Control_B1.c: 200: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	201
	
l9134:	
;RF_Control_B1.c: 201: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	202
	
l9136:	
;RF_Control_B1.c: 202: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	203
	
l9138:	
;RF_Control_B1.c: 203: setINT_GO(0);
	movlw	(0)
	fcall	_setINT_GO
	goto	l2687
	line	204
	
l2686:	
	line	205
	
l2687:	
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
psect	text36,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	30
global __ptext36
__ptext36:	;psect for function _CC2500_TxData
psect	text36
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	30
	global	__size_of_CC2500_TxData
	__size_of_CC2500_TxData	equ	__end_of_CC2500_TxData-_CC2500_TxData
	
_CC2500_TxData:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_TxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	34
	
l6940:	
;CC2500_B1.c: 32: unsigned char loop_e;
;CC2500_B1.c: 34: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	35
	
l6942:	
;CC2500_B1.c: 35: SPI0Buffer=0x3F+0x40;
	movlw	(07Fh)
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	36
;CC2500_B1.c: 36: while(RC2==1);
	goto	l307
	
l308:	
	
l307:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u5611
	goto	u5610
u5611:
	goto	l307
u5610:
	goto	l6944
	
l309:	
	line	37
	
l6944:	
;CC2500_B1.c: 37: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	38
	
l6946:	
;CC2500_B1.c: 38: SPI0Buffer=Tx_Length;
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	39
	
l6948:	
;CC2500_B1.c: 39: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l6950:	
;CC2500_B1.c: 40: for(loop_e=0;loop_e<Tx_Length;loop_e++)
	movlb 0	; select bank0
	clrf	(CC2500_TxData@loop_e)
	goto	l6958
	line	41
	
l311:	
	line	42
	
l6952:	
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
	
l6954:	
;CC2500_B1.c: 43: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l6956:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	addwf	(CC2500_TxData@loop_e),f
	goto	l6958
	
l310:	
	
l6958:	
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_TxData@loop_e),w
	skipc
	goto	u5621
	goto	u5620
u5621:
	goto	l6952
u5620:
	
l312:	
	line	45
;CC2500_B1.c: 44: }
;CC2500_B1.c: 45: RC4=1;
	bsf	(116/8),(116)&7	;volatile
	line	46
	
l6960:	
;CC2500_B1.c: 46: CC2500_WriteCommand(0x35);
	movlw	(035h)
	fcall	_CC2500_WriteCommand
	line	47
;CC2500_B1.c: 47: while(RB0==0);
	goto	l313
	
l314:	
	
l313:	
	movlb 0	; select bank0
	btfss	(104/8),(104)&7	;volatile
	goto	u5631
	goto	u5630
u5631:
	goto	l313
u5630:
	goto	l316
	
l315:	
	line	48
;CC2500_B1.c: 48: while(RB0==1);
	goto	l316
	
l317:	
	
l316:	
	btfsc	(104/8),(104)&7	;volatile
	goto	u5641
	goto	u5640
u5641:
	goto	l316
u5640:
	goto	l6962
	
l318:	
	line	49
	
l6962:	
;CC2500_B1.c: 49: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	50
;CC2500_B1.c: 50: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	51
	
l6964:	
;CC2500_B1.c: 51: Transceive_OK=1;
	bsf	(_Transceive_OK/8),(_Transceive_OK)&7
	line	52
	
l319:	
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
psect	text37,local,class=CODE,delta=2,merge=1
	line	56
global __ptext37
__ptext37:	;psect for function _CC2500_RxData
psect	text37
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	56
	global	__size_of_CC2500_RxData
	__size_of_CC2500_RxData	equ	__end_of_CC2500_RxData-_CC2500_RxData
	
_CC2500_RxData:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_RxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	62
	
l8940:	
;CC2500_B1.c: 58: unsigned char loop_f;
;CC2500_B1.c: 62: if(RB0 == 1)
	movlb 0	; select bank0
	btfss	(104/8),(104)&7	;volatile
	goto	u8641
	goto	u8640
u8641:
	goto	l8944
u8640:
	goto	l323
	line	64
	
l8942:	
;CC2500_B1.c: 63: {
;CC2500_B1.c: 64: while(RB0 == 1);
	goto	l323
	
l324:	
	
l323:	
	btfsc	(104/8),(104)&7	;volatile
	goto	u8651
	goto	u8650
u8651:
	goto	l323
u8650:
	goto	l8944
	
l325:	
	goto	l8944
	line	65
	
l322:	
	line	66
	
l8944:	
;CC2500_B1.c: 65: }
;CC2500_B1.c: 66: CC2500_ReadStatus(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_ReadStatus
	line	67
	
l8946:	
;CC2500_B1.c: 67: if(s_data != 0)
	movlb 1	; select bank1
	movf	(_s_data)^080h,w
	skipz
	goto	u8660
	goto	l8978
u8660:
	line	70
	
l8948:	
;CC2500_B1.c: 69: {
;CC2500_B1.c: 70: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	71
	
l8950:	
;CC2500_B1.c: 71: SPI0Buffer=0x3F+0xC0;
	movlw	(0FFh)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	72
;CC2500_B1.c: 72: while(RC2==1);
	goto	l327
	
l328:	
	
l327:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u8671
	goto	u8670
u8671:
	goto	l327
u8670:
	goto	l8952
	
l329:	
	line	73
	
l8952:	
;CC2500_B1.c: 73: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	75
;CC2500_B1.c: 75: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	76
	
l8954:	
;CC2500_B1.c: 76: Rx_Length=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_Rx_Length)^080h
	line	77
	
l8956:	
;CC2500_B1.c: 77: for(loop_f=0;loop_f<Rx_Length;loop_f++)
	movlb 0	; select bank0
	clrf	(CC2500_RxData@loop_f)
	goto	l8964
	line	78
	
l331:	
	line	79
	
l8958:	
;CC2500_B1.c: 78: {
;CC2500_B1.c: 79: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	80
	
l8960:	
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
	
l8962:	
	movlw	(01h)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	addwf	(CC2500_RxData@loop_f),f
	goto	l8964
	
l330:	
	
l8964:	
	movlb 1	; select bank1
	movf	(_Rx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_RxData@loop_f),w
	skipc
	goto	u8681
	goto	u8680
u8681:
	goto	l8958
u8680:
	goto	l8966
	
l332:	
	line	82
	
l8966:	
;CC2500_B1.c: 81: }
;CC2500_B1.c: 82: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	83
	
l8968:	
;CC2500_B1.c: 83: RSSI=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RSSI)^080h
	line	84
	
l8970:	
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
	
l8972:	
;CC2500_B1.c: 86: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	87
	
l8974:	
;CC2500_B1.c: 87: if(CRC & 0x80)
	movlb 1	; select bank1
	btfss	(_CRC)^080h,(7)&7
	goto	u8691
	goto	u8690
u8691:
	goto	l8978
u8690:
	line	88
	
l8976:	
;CC2500_B1.c: 88: Receive_OK=1;
	bsf	(_Receive_OK/8),(_Receive_OK)&7
	goto	l8978
	
l333:	
	goto	l8978
	line	89
	
l326:	
	line	90
	
l8978:	
;CC2500_B1.c: 89: }
;CC2500_B1.c: 90: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	91
;CC2500_B1.c: 91: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	92
	
l8980:	
;CC2500_B1.c: 92: setRF_RxStatus(1,0);
	movlb 0	; select bank0
	clrf	(setRF_RxStatus@command)
	movlw	(01h)
	fcall	_setRF_RxStatus
	line	93
	
l334:	
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
psect	text38,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	43
global __ptext38
__ptext38:	;psect for function _setRF_RxStatus
psect	text38
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
	
l8826:	
;RF_Control_B1.c: 45: RfPointSelect(rf);
	movf	(setRF_RxStatus@rf),w
	fcall	_RfPointSelect
	line	46
	
l8828:	
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
	
l2656:	
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
psect	text39,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	267
global __ptext39
__ptext39:	;psect for function _CC2500_ReadStatus
psect	text39
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
	
l6816:	
;CC2500_B1.c: 269: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	270
	
l6818:	
;CC2500_B1.c: 270: SPI0Buffer=status_addr+0xC0;
	movf	(CC2500_ReadStatus@status_addr),w
	addlw	0C0h
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	272
;CC2500_B1.c: 272: while(RC2==1);
	goto	l403
	
l404:	
	
l403:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u5481
	goto	u5480
u5481:
	goto	l403
u5480:
	goto	l6820
	
l405:	
	line	274
	
l6820:	
;CC2500_B1.c: 274: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	275
;CC2500_B1.c: 275: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	276
	
l6822:	
;CC2500_B1.c: 276: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	278
	
l6824:	
;CC2500_B1.c: 278: s_data=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_s_data)^080h
	line	279
	
l406:	
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
psect	text40,local,class=CODE,delta=2,merge=1
	line	210
global __ptext40
__ptext40:	;psect for function _CC2500_ReadByte
psect	text40
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	210
	global	__size_of_CC2500_ReadByte
	__size_of_CC2500_ReadByte	equ	__end_of_CC2500_ReadByte-_CC2500_ReadByte
	
_CC2500_ReadByte:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_ReadByte: [wreg+status,2+status,0]
	line	213
	
l6670:	
;CC2500_B1.c: 212: unsigned char loop_b;
;CC2500_B1.c: 213: for(loop_b=0;loop_b<8;loop_b++)
	movlb 0	; select bank0
	clrf	(CC2500_ReadByte@loop_b)
	
l6672:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u5331
	goto	u5330
u5331:
	goto	l378
u5330:
	goto	l382
	
l6674:	
	goto	l382
	line	214
	
l378:	
	line	215
;CC2500_B1.c: 214: {
;CC2500_B1.c: 215: RC1=1;
	bsf	(113/8),(113)&7	;volatile
	line	216
	
l6676:	
;CC2500_B1.c: 216: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	217
	
l6678:	
;CC2500_B1.c: 217: if(RC2 == 1)
	movlb 0	; select bank0
	btfss	(114/8),(114)&7	;volatile
	goto	u5341
	goto	u5340
u5341:
	goto	l6682
u5340:
	line	218
	
l6680:	
;CC2500_B1.c: 218: SPI0Buffer |= 0x01;
	movlb 1	; select bank1
	bsf	(_SPI0Buffer)^080h+(0/8),(0)&7
	goto	l6684
	line	219
	
l380:	
	line	220
	
l6682:	
;CC2500_B1.c: 219: else
;CC2500_B1.c: 220: SPI0Buffer &= 0xFE;
	movlw	(0FEh)
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	movlb 1	; select bank1
	andwf	(_SPI0Buffer)^080h,f
	goto	l6684
	
l381:	
	line	221
	
l6684:	
;CC2500_B1.c: 221: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
	line	213
	movlw	(01h)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	addwf	(CC2500_ReadByte@loop_b),f
	
l6686:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u5351
	goto	u5350
u5351:
	goto	l378
u5350:
	goto	l382
	
l379:	
	line	223
	
l382:	
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
psect	text41,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	17
global __ptext41
__ptext41:	;psect for function _RF_Initialization
psect	text41
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	17
	global	__size_of_RF_Initialization
	__size_of_RF_Initialization	equ	__end_of_RF_Initialization-_RF_Initialization
	
_RF_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _RF_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l9788:	
;RF_Control_B1.c: 20: setRF_Initialization(1);
	movlw	(01h)
	fcall	_setRF_Initialization
	line	22
	
l2644:	
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
psect	text42,local,class=CODE,delta=2,merge=1
	line	50
global __ptext42
__ptext42:	;psect for function _setRF_Initialization
psect	text42
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	50
	global	__size_of_setRF_Initialization
	__size_of_setRF_Initialization	equ	__end_of_setRF_Initialization-_setRF_Initialization
	
_setRF_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _setRF_Initialization: [wreg]
	line	54
	
l7706:	
;RF_Control_B1.c: 54: Tx_Length=21;
	movlw	(015h)
	movlb 0	; select bank0
	movwf	(??_setRF_Initialization+0)+0
	movf	(??_setRF_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Tx_Length)^080h
	line	56
	
l2659:	
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
psect	text43,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	22
global __ptext43
__ptext43:	;psect for function _PowerFault_Main
psect	text43
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	22
	global	__size_of_PowerFault_Main
	__size_of_PowerFault_Main	equ	__end_of_PowerFault_Main-_PowerFault_Main
	
_PowerFault_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _PowerFault_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	25
	
l10016:	
;PowerFault_B1.c: 25: setPowerFault_Main();
	fcall	_setPowerFault_Main
	line	27
	
l2423:	
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
psect	text44,local,class=CODE,delta=2,merge=1
	line	61
global __ptext44
__ptext44:	;psect for function _setPowerFault_Main
psect	text44
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	61
	global	__size_of_setPowerFault_Main
	__size_of_setPowerFault_Main	equ	__end_of_setPowerFault_Main-_setPowerFault_Main
	
_setPowerFault_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _setPowerFault_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	63
	
l9482:	
;PowerFault_B1.c: 63: if(PF->Enable)
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9311
	goto	u9310
u9311:
	goto	l2461
u9310:
	line	65
	
l9484:	
;PowerFault_B1.c: 64: {
;PowerFault_B1.c: 65: if(PF->ADtoGO == 0)
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u9321
	goto	u9320
u9321:
	goto	l9498
u9320:
	line	67
	
l9486:	
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
	
l9488:	
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
	goto	u9331
	goto	u9330
u9331:
	goto	l2461
u9330:
	line	70
	
l9490:	
;PowerFault_B1.c: 69: {
;PowerFault_B1.c: 70: if(getLoad_Safe() && getTemp_Safe())
	fcall	_getLoad_Safe
	xorlw	0&0ffh
	skipnz
	goto	u9341
	goto	u9340
u9341:
	goto	l9496
u9340:
	
l9492:	
	fcall	_getTemp_Safe
	xorlw	0&0ffh
	skipnz
	goto	u9351
	goto	u9350
u9351:
	goto	l9496
u9350:
	line	72
	
l9494:	
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
	goto	l2461
	line	76
	
l2446:	
	line	78
	
l9496:	
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
	goto	l2461
	line	79
	
l2447:	
	goto	l2461
	line	80
	
l2445:	
	line	81
;PowerFault_B1.c: 79: }
;PowerFault_B1.c: 80: }
;PowerFault_B1.c: 81: }
	goto	l2461
	line	82
	
l2444:	
	line	84
	
l9498:	
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
	
l9500:	
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
	goto	u9361
	goto	u9360
u9361:
	goto	l2461
u9360:
	line	87
	
l9502:	
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
	goto	u9371
	goto	u9370
u9371:
	goto	l9518
u9370:
	line	92
	
l9504:	
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
	goto	u9381
	goto	u9380
u9381:
	goto	l9516
u9380:
	
l9506:	
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
	goto	u9391
	goto	u9390
u9391:
	goto	l9516
u9390:
	line	94
	
l9508:	
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
	
l9510:	
;PowerFault_B1.c: 95: if(PF->Count > 1)
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u9401
	goto	u9400
u9401:
	goto	l9532
u9400:
	line	97
	
l9512:	
;PowerFault_B1.c: 96: {
;PowerFault_B1.c: 97: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	98
	
l9514:	
;PowerFault_B1.c: 98: setPowerFault_Exceptions(0);
	movlw	(0)
	fcall	_setPowerFault_Exceptions
	goto	l9532
	line	99
	
l2452:	
	line	100
;PowerFault_B1.c: 99: }
;PowerFault_B1.c: 100: }
	goto	l9532
	line	101
	
l2451:	
	line	103
	
l9516:	
;PowerFault_B1.c: 101: else
;PowerFault_B1.c: 102: {
;PowerFault_B1.c: 103: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l9532
	line	104
	
l2453:	
	line	105
;PowerFault_B1.c: 104: }
;PowerFault_B1.c: 105: }
	goto	l9532
	line	106
	
l2450:	
	line	108
	
l9518:	
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
	goto	u9411
	goto	u9410
u9411:
	goto	l9522
u9410:
	
l9520:	
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
	goto	u9421
	goto	u9420
u9421:
	goto	l9530
u9420:
	goto	l9522
	
l2457:	
	line	110
	
l9522:	
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
	
l9524:	
;PowerFault_B1.c: 111: if(PF->Count > 1)
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u9431
	goto	u9430
u9431:
	goto	l9532
u9430:
	line	113
	
l9526:	
;PowerFault_B1.c: 112: {
;PowerFault_B1.c: 113: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	114
	
l9528:	
;PowerFault_B1.c: 114: setPowerFault_Exceptions(1);
	movlw	(01h)
	fcall	_setPowerFault_Exceptions
	goto	l9532
	line	115
	
l2458:	
	line	116
;PowerFault_B1.c: 115: }
;PowerFault_B1.c: 116: }
	goto	l9532
	line	117
	
l2455:	
	line	119
	
l9530:	
;PowerFault_B1.c: 117: else
;PowerFault_B1.c: 118: {
;PowerFault_B1.c: 119: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l9532
	line	120
	
l2459:	
	goto	l9532
	line	122
	
l2454:	
	line	123
	
l9532:	
;PowerFault_B1.c: 120: }
;PowerFault_B1.c: 122: }
;PowerFault_B1.c: 123: if(PF->ERROR == 0)
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u9441
	goto	u9440
u9441:
	goto	l2460
u9440:
	line	125
	
l9534:	
;PowerFault_B1.c: 124: {
;PowerFault_B1.c: 125: PF->Safe=1;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	126
	
l2460:	
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
	goto	l2461
	line	128
	
l2449:	
	goto	l2461
	line	129
	
l2448:	
	goto	l2461
	line	130
	
l2443:	
	line	131
	
l2461:	
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
psect	text45,local,class=CODE,delta=2,merge=1
	line	133
global __ptext45
__ptext45:	;psect for function _setPowerFault_Exceptions
psect	text45
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
	
l9072:	
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
	
l9074:	
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
	
l9076:	
;PowerFault_B1.c: 137: if(command == 1)
	movf	(setPowerFault_Exceptions@command),w
	xorlw	01h&0ffh
	skipz
	goto	u8781
	goto	u8780
u8781:
	goto	l2464
u8780:
	line	139
	
l9078:	
;PowerFault_B1.c: 138: {
;PowerFault_B1.c: 139: DimmerLights_Exceptions(3);
	movlw	(03h)
	fcall	_DimmerLights_Exceptions
	line	140
	
l2464:	
	line	141
;PowerFault_B1.c: 140: }
;PowerFault_B1.c: 141: setLED(99,command+10);
	movlb 0	; select bank0
	movf	(setPowerFault_Exceptions@command),w
	addlw	0Ah
	movwf	(??_setPowerFault_Exceptions+0)+0
	movf	(??_setPowerFault_Exceptions+0)+0,w
	movwf	(setLED@command)
	movlw	(063h)
	fcall	_setLED
	line	143
;PowerFault_B1.c: 143: setSw_Enable((~command) & 0x01);
	movlb 0	; select bank0
	comf	(setPowerFault_Exceptions@command),w
	andlw	01h
	fcall	_setSw_Enable
	line	145
;PowerFault_B1.c: 145: setRF_Enable(1,(~command) & 0x01);
	movlb 0	; select bank0
	comf	(setPowerFault_Exceptions@command),w
	andlw	01h
	movwf	(??_setPowerFault_Exceptions+0)+0
	movf	(??_setPowerFault_Exceptions+0)+0,w
	movwf	(setRF_Enable@command)
	movlw	(01h)
	fcall	_setRF_Enable
	line	147
	
l2465:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_Exceptions
	__end_of_setPowerFault_Exceptions:
	signat	_setPowerFault_Exceptions,4216
	global	_getLoad_Safe

;; *************** function _getLoad_Safe *****************
;; Defined at:
;;		line 297 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
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
psect	text46,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	297
global __ptext46
__ptext46:	;psect for function _getLoad_Safe
psect	text46
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	297
	global	__size_of_getLoad_Safe
	__size_of_getLoad_Safe	equ	__end_of_getLoad_Safe-_getLoad_Safe
	
_getLoad_Safe:	
;incstack = 0
	opt	stack 9
; Regs used in _getLoad_Safe: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	299
	
l7118:	
;OverLoad_B1.c: 299: return Load->Safe;
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
	goto	l1964
	
l7120:	
	line	300
	
l1964:	
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
psect	text47,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	15
global __ptext47
__ptext47:	;psect for function _PowerFault_Initialization
psect	text47
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	15
	global	__size_of_PowerFault_Initialization
	__size_of_PowerFault_Initialization	equ	__end_of_PowerFault_Initialization-_PowerFault_Initialization
	
_PowerFault_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _PowerFault_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	18
	
l9778:	
;PowerFault_B1.c: 18: setPowerFault_Initialization();
	fcall	_setPowerFault_Initialization
	line	20
	
l2420:	
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
psect	text48,local,class=CODE,delta=2,merge=1
	line	29
global __ptext48
__ptext48:	;psect for function _setPowerFault_Initialization
psect	text48
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	29
	global	__size_of_setPowerFault_Initialization
	__size_of_setPowerFault_Initialization	equ	__end_of_setPowerFault_Initialization-_setPowerFault_Initialization
	
_setPowerFault_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _setPowerFault_Initialization: [wregfsr1]
	line	31
	
l7646:	
;PowerFault_B1.c: 31: PF=&PF1;
	movlw	(_PF1)&0ffh
	movlb 0	; select bank0
	movwf	(??_setPowerFault_Initialization+0)+0
	movf	(??_setPowerFault_Initialization+0)+0,w
	movwf	(_PF)
	line	32
	
l7648:	
;PowerFault_B1.c: 32: PF->Enable=1;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	33
	
l7650:	
;PowerFault_B1.c: 33: PF->Safe=1;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	34
	
l2426:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_Initialization
	__end_of_setPowerFault_Initialization:
	signat	_setPowerFault_Initialization,88
	global	_Mcu_Initialization

;; *************** function _Mcu_Initialization *****************
;; Defined at:
;;		line 11 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
;;		_ADC_Set
;;		_INT_Set
;;		_IOC_Set
;;		_IO_Set
;;		_TMR0_Set
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	11
global __ptext49
__ptext49:	;psect for function _Mcu_Initialization
psect	text49
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	11
	global	__size_of_Mcu_Initialization
	__size_of_Mcu_Initialization	equ	__end_of_Mcu_Initialization-_Mcu_Initialization
	
_Mcu_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Mcu_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l9714:	
;MCU_16f1518_B1.c: 14: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l9716:	
;MCU_16f1518_B1.c: 16: IO_Set();
	fcall	_IO_Set
	line	18
	
l9718:	
;MCU_16f1518_B1.c: 18: TMR0_Set();
	fcall	_TMR0_Set
	line	22
	
l9720:	
;MCU_16f1518_B1.c: 20: ;;
;MCU_16f1518_B1.c: 22: ADC_Set();
	fcall	_ADC_Set
	line	26
;MCU_16f1518_B1.c: 26: INT_Set();
	fcall	_INT_Set
	line	28
	
l9722:	
;MCU_16f1518_B1.c: 28: IOC_Set();
	fcall	_IOC_Set
	line	34
;MCU_16f1518_B1.c: 30: ;;
;MCU_16f1518_B1.c: 32: ;;
;MCU_16f1518_B1.c: 34: Memory=&VarMemory;
	movlw	(_VarMemory)&0ffh
	movlb 0	; select bank0
	movwf	(??_Mcu_Initialization+0)+0
	movf	(??_Mcu_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Memory)^080h
	line	35
	
l1618:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initialization
	__end_of_Mcu_Initialization:
	signat	_Mcu_Initialization,88
	global	_TMR0_Set

;; *************** function _TMR0_Set *****************
;; Defined at:
;;		line 73 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text50,local,class=CODE,delta=2,merge=1
	line	73
global __ptext50
__ptext50:	;psect for function _TMR0_Set
psect	text50
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	73
	global	__size_of_TMR0_Set
	__size_of_TMR0_Set	equ	__end_of_TMR0_Set-_TMR0_Set
	
_TMR0_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR0_Set: [wreg+status,2]
	line	75
	
l7484:	
;MCU_16f1518_B1.c: 75: Timer0=&VarTimer0;
	movlw	(_VarTimer0)&0ffh
	movlb 0	; select bank0
	movwf	(??_TMR0_Set+0)+0
	movf	(??_TMR0_Set+0)+0,w
	movlb 1	; select bank1
	movwf	(_Timer0)^080h
	line	76
	
l7486:	
;MCU_16f1518_B1.c: 76: OPTION_REG=0x00;
	clrf	(149)^080h	;volatile
	line	77
	
l7488:	
;MCU_16f1518_B1.c: 77: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	78
	
l7490:	
;MCU_16f1518_B1.c: 78: TMR0IE=1;
	bsf	(93/8),(93)&7	;volatile
	line	79
	
l7492:	
;MCU_16f1518_B1.c: 79: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	80
	
l1627:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_Set
	__end_of_TMR0_Set:
	signat	_TMR0_Set,88
	global	_IO_Set

;; *************** function _IO_Set *****************
;; Defined at:
;;		line 37 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text51,local,class=CODE,delta=2,merge=1
	line	37
global __ptext51
__ptext51:	;psect for function _IO_Set
psect	text51
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	37
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _IO_Set: [wreg+status,2]
	line	39
	
l9340:	
;MCU_16f1518_B1.c: 39: TRISA=0b01110111;;
	movlw	(077h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	40
;MCU_16f1518_B1.c: 40: TRISB=0b00000111;;
	movlw	(07h)
	movwf	(141)^080h	;volatile
	line	41
;MCU_16f1518_B1.c: 41: TRISC=0b00001100;;
	movlw	(0Ch)
	movwf	(142)^080h	;volatile
	line	42
	
l9342:	
;MCU_16f1518_B1.c: 42: LATA=0b00000000;;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	43
	
l9344:	
;MCU_16f1518_B1.c: 43: LATB=0b00000010;;
	movlw	(02h)
	movwf	(269)^0100h	;volatile
	line	44
;MCU_16f1518_B1.c: 44: LATC=0b00000000;;
	clrf	(270)^0100h	;volatile
	line	45
	
l9346:	
;MCU_16f1518_B1.c: 45: ANSELA=0b00100010;;
	movlw	(022h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	46
	
l9348:	
;MCU_16f1518_B1.c: 46: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	47
	
l9350:	
;MCU_16f1518_B1.c: 47: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	48
	
l9352:	
;MCU_16f1518_B1.c: 48: PORTA=0b01110111;;
	movlw	(077h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	49
	
l9354:	
;MCU_16f1518_B1.c: 49: PORTB=0b00000111;;
	movlw	(07h)
	movwf	(13)	;volatile
	line	50
	
l9356:	
;MCU_16f1518_B1.c: 50: PORTC=0b00001100;;
	movlw	(0Ch)
	movwf	(14)	;volatile
	line	51
	
l1621:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
	signat	_IO_Set,88
	global	_IOC_Set

;; *************** function _IOC_Set *****************
;; Defined at:
;;		line 246 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text52,local,class=CODE,delta=2,merge=1
	line	246
global __ptext52
__ptext52:	;psect for function _IOC_Set
psect	text52
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	246
	global	__size_of_IOC_Set
	__size_of_IOC_Set	equ	__end_of_IOC_Set-_IOC_Set
	
_IOC_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _IOC_Set: [wreg+status,2]
	line	248
	
l9362:	
;MCU_16f1518_B1.c: 248: WPUB2=0;
	movlb 4	; select bank4
	bcf	(4202/8)^0200h,(4202)&7	;volatile
	line	250
	
l9364:	
;MCU_16f1518_B1.c: 250: IOCBP=0b00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	251
;MCU_16f1518_B1.c: 251: IOCBN=0b00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	259
	
l9366:	
;MCU_16f1518_B1.c: 259: IOCBF=0b00000000;
	clrf	(918)^0380h	;volatile
	line	261
	
l9368:	
;MCU_16f1518_B1.c: 261: IOCIE=1;
	bsf	(91/8),(91)&7	;volatile
	line	262
	
l9370:	
;MCU_16f1518_B1.c: 262: IOCIF=0;
	bcf	(88/8),(88)&7	;volatile
	line	263
	
l9372:	
;MCU_16f1518_B1.c: 263: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	264
	
l9374:	
;MCU_16f1518_B1.c: 264: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	265
	
l1705:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_Set
	__end_of_IOC_Set:
	signat	_IOC_Set,88
	global	_INT_Set

;; *************** function _INT_Set *****************
;; Defined at:
;;		line 217 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text53,local,class=CODE,delta=2,merge=1
	line	217
global __ptext53
__ptext53:	;psect for function _INT_Set
psect	text53
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	217
	global	__size_of_INT_Set
	__size_of_INT_Set	equ	__end_of_INT_Set-_INT_Set
	
_INT_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _INT_Set: []
	line	219
	
l9360:	
;MCU_16f1518_B1.c: 219: WPUB0=0;
	movlb 4	; select bank4
	bcf	(4200/8)^0200h,(4200)&7	;volatile
	line	220
;MCU_16f1518_B1.c: 220: INTE=1;
	bsf	(92/8),(92)&7	;volatile
	line	221
;MCU_16f1518_B1.c: 221: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	222
;MCU_16f1518_B1.c: 222: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	223
	
l1695:	
	return
	opt stack 0
GLOBAL	__end_of_INT_Set
	__end_of_INT_Set:
	signat	_INT_Set,88
	global	_ADC_Set

;; *************** function _ADC_Set *****************
;; Defined at:
;;		line 303 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text54,local,class=CODE,delta=2,merge=1
	line	303
global __ptext54
__ptext54:	;psect for function _ADC_Set
psect	text54
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	303
	global	__size_of_ADC_Set
	__size_of_ADC_Set	equ	__end_of_ADC_Set-_ADC_Set
	
_ADC_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _ADC_Set: [wreg]
	line	305
	
l9358:	
;MCU_16f1518_B1.c: 305: ADCON1=0xf2;
	movlw	(0F2h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	306
;MCU_16f1518_B1.c: 306: FVRCON=0xc0;
	movlw	(0C0h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	line	307
	
l1715:	
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
psect	text55,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	92
global __ptext55
__ptext55:	;psect for function _MainT_Initialization
psect	text55
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	92
	global	__size_of_MainT_Initialization
	__size_of_MainT_Initialization	equ	__end_of_MainT_Initialization-_MainT_Initialization
	
_MainT_Initialization:	
;incstack = 0
	opt	stack 11
; Regs used in _MainT_Initialization: [wreg]
	line	95
	
l7972:	
;main.c: 95: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movwf	(_Product)
	line	98
;main.c: 98: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_TMain)^080h
	line	101
	
l1356:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initialization
	__end_of_MainT_Initialization:
	signat	_MainT_Initialization,88
	global	_MainT

;; *************** function _MainT *****************
;; Defined at:
;;		line 103 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
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
psect	text56,local,class=CODE,delta=2,merge=1
	line	103
global __ptext56
__ptext56:	;psect for function _MainT
psect	text56
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	103
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
;incstack = 0
	opt	stack 9
; Regs used in _MainT: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	106
	
l9848:	
;main.c: 106: if(!TMain->PowerON)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u9951
	goto	u9950
u9951:
	goto	l9864
u9950:
	line	108
	
l9850:	
;main.c: 107: {
;main.c: 108: TMain->PowerCount++;
	incf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	109
	
l9852:	
;main.c: 109: if(TMain->PowerCount == 150)
	incf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(096h)
	skipz
	goto	u9965
	moviw	[1]fsr1
	xorlw	high(096h)
u9965:
	skipz
	goto	u9961
	goto	u9960
u9961:
	goto	l1365
u9960:
	line	111
	
l9854:	
;main.c: 110: {
;main.c: 111: TMain->PowerCount=0;
	incf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	112
;main.c: 112: TMain->PowerON=1;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	115
	
l9856:	
;main.c: 115: setTemp_Enable(1);
	movlw	(01h)
	fcall	_setTemp_Enable
	line	119
	
l9858:	
;main.c: 119: setLoad_Enable(1);
	movlw	(01h)
	fcall	_setLoad_Enable
	line	125
	
l9860:	
;main.c: 125: setBuz(3,50);
	movlw	low(032h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(032h)
	movwf	((setBuz@time))+1
	movlw	(03h)
	fcall	_setBuz
	line	126
	
l9862:	
;main.c: 126: TMain->SelfTest=1;
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	128
;main.c: 128: setSw_Enable(1);
	movlw	(01h)
	fcall	_setSw_Enable
	line	131
;main.c: 131: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setRF_Enable@command)
	incf	(setRF_Enable@command),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l1365
	line	135
	
l1360:	
	line	136
;main.c: 135: }
;main.c: 136: }
	goto	l1365
	line	137
	
l1359:	
	line	146
	
l9864:	
;main.c: 137: else
;main.c: 138: {
;main.c: 146: TMain->Count1++;
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	147
	
l9866:	
;main.c: 147: if(TMain->Count1 == 1000)
	movf	(_TMain)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u9975
	moviw	[1]fsr1
	xorlw	high(03E8h)
u9975:
	skipz
	goto	u9971
	goto	u9970
u9971:
	goto	l1365
u9970:
	line	149
	
l9868:	
;main.c: 148: {
;main.c: 149: TMain->Count1=0;
	movf	(_TMain)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	160
;main.c: 160: if(TMain->Flag)
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9981
	goto	u9980
u9981:
	goto	l9872
u9980:
	goto	l1365
	line	169
	
l9870:	
;main.c: 161: {
;main.c: 169: }
	goto	l1365
	line	170
	
l1363:	
	line	172
	
l9872:	
;main.c: 170: else
;main.c: 171: {
;main.c: 172: TMain->Flag=1;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	goto	l1365
	line	180
	
l1364:	
	goto	l1365
	line	181
	
l1362:	
	goto	l1365
	line	183
	
l1361:	
	line	184
	
l1365:	
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
psect	text57,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	22
global __ptext57
__ptext57:	;psect for function _setTemp_Enable
psect	text57
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
	
l9336:	
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
	
l2118:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Enable
	__end_of_setTemp_Enable:
	signat	_setTemp_Enable,4216
	global	_setLoad_Enable

;; *************** function _setLoad_Enable *****************
;; Defined at:
;;		line 253 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
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
psect	text58,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	253
global __ptext58
__ptext58:	;psect for function _setLoad_Enable
psect	text58
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	253
	global	__size_of_setLoad_Enable
	__size_of_setLoad_Enable	equ	__end_of_setLoad_Enable-_setLoad_Enable
	
_setLoad_Enable:	
;incstack = 0
	opt	stack 10
; Regs used in _setLoad_Enable: [wregfsr1]
;setLoad_Enable@command stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Enable@command)
	line	255
	
l9338:	
;OverLoad_B1.c: 255: Load->Enable=command;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	256
;OverLoad_B1.c: 256: Load->GO=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	257
	
l1946:	
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
psect	text59,local,class=CODE,delta=2,merge=1
	line	45
global __ptext59
__ptext59:	;psect for function _Load_Main
psect	text59
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	45
	global	__size_of_Load_Main
	__size_of_Load_Main	equ	__end_of_Load_Main-_Load_Main
	
_Load_Main:	
;incstack = 0
	opt	stack 6
; Regs used in _Load_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	48
	
l9890:	
;OverLoad_B1.c: 47: char i;
;OverLoad_B1.c: 48: if(Load->ERROR)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u10021
	goto	u10020
u10021:
	goto	l9900
u10020:
	line	50
	
l9892:	
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
	
l9894:	
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
	goto	u10031
	goto	u10030
u10031:
	goto	l1936
u10030:
	line	53
	
l9896:	
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
	
l9898:	
;OverLoad_B1.c: 54: setLoad_Exceptions(0);
	movlw	(0)
	fcall	_setLoad_Exceptions
	goto	l1936
	line	55
	
l1910:	
	line	56
;OverLoad_B1.c: 55: }
;OverLoad_B1.c: 56: }
	goto	l1936
	line	57
	
l1909:	
	line	59
	
l9900:	
;OverLoad_B1.c: 57: else
;OverLoad_B1.c: 58: {
;OverLoad_B1.c: 59: if(Load->ADtoGO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u10041
	goto	u10040
u10041:
	goto	l9982
u10040:
	line	61
	
l9902:	
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
	
l9904:	
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
	goto	u10051
	goto	u10050
u10051:
	goto	l1936
u10050:
	line	64
	
l9906:	
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
	
l9908:	
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
	
l9910:	
;OverLoad_B1.c: 67: for(i=1 ; i<4 ; i++)
	clrf	(Load_Main@i)
	incf	(Load_Main@i),f
	
l9912:	
	movlw	(04h)
	subwf	(Load_Main@i),w
	skipc
	goto	u10061
	goto	u10060
u10061:
	goto	l9916
u10060:
	goto	l9922
	
l9914:	
	goto	l9922
	line	68
	
l1914:	
	line	69
	
l9916:	
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
	
l9918:	
	movlw	(01h)
	movwf	(??_Load_Main+0)+0
	movf	(??_Load_Main+0)+0,w
	addwf	(Load_Main@i),f
	
l9920:	
	movlw	(04h)
	subwf	(Load_Main@i),w
	skipc
	goto	u10071
	goto	u10070
u10071:
	goto	l9916
u10070:
	goto	l9922
	
l1915:	
	line	72
	
l9922:	
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
	
l9924:	
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
	goto	u10085
	movf	0+(??_Load_Main+0)+0,w
	subwf	0+(??_Load_Main+2)+0,w
u10085:
	skipnc
	goto	u10081
	goto	u10080
u10081:
	goto	l9980
u10080:
	line	76
	
l9926:	
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
	
l9928:	
;OverLoad_B1.c: 78: if(Load->Count < 2)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipnc
	goto	u10091
	goto	u10090
u10091:
	goto	l9944
u10090:
	line	80
	
l9930:	
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
	
l9932:	
;OverLoad_B1.c: 81: if(Load->Count == 1)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u10101
	goto	u10100
u10101:
	goto	l9936
u10100:
	line	83
	
l9934:	
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
	goto	l9944
	line	85
	
l1918:	
	
l9936:	
;OverLoad_B1.c: 85: else if(Load->Count == 2)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	02h&0ffh
	skipz
	goto	u10111
	goto	u10110
u10111:
	goto	l9944
u10110:
	line	87
	
l9938:	
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
	goto	u10121
	goto	u10120
u10121:
	goto	l9942
u10120:
	line	89
	
l9940:	
;OverLoad_B1.c: 88: {
;OverLoad_B1.c: 89: Load->JudgeValue=0x32;
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(032h)
	movwi	[0]fsr1
	movlw	high(032h)
	movwi	[1]fsr1
	line	90
;OverLoad_B1.c: 90: }
	goto	l9944
	line	91
	
l1921:	
	line	93
	
l9942:	
;OverLoad_B1.c: 91: else
;OverLoad_B1.c: 92: {
;OverLoad_B1.c: 93: Load->JudgeValue=(0x32+Load->TotalLoad)-0x08;
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
	addlw	low(02Ah)
	movwf	(??_Load_Main+2)+0
	movlw	high(02Ah)
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
	goto	l9944
	line	94
	
l1922:	
	goto	l9944
	line	95
	
l1920:	
	goto	l9944
	line	96
	
l1919:	
	goto	l9944
	
l1917:	
	line	98
	
l9944:	
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
	goto	u10135
	movf	0+(??_Load_Main+0)+0,w
	subwf	0+(??_Load_Main+2)+0,w
u10135:
	skipc
	goto	u10131
	goto	u10130
u10131:
	goto	l9954
u10130:
	line	100
	
l9946:	
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
	
l9948:	
;OverLoad_B1.c: 101: if(Load->ErrorCount >2)
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u10141
	goto	u10140
u10141:
	goto	l9980
u10140:
	line	103
	
l9950:	
;OverLoad_B1.c: 102: {
;OverLoad_B1.c: 103: Load->ErrorCount=0;
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	104
	
l9952:	
;OverLoad_B1.c: 104: setLoad_Exceptions(1);
	movlw	(01h)
	fcall	_setLoad_Exceptions
	goto	l9980
	line	113
	
l1924:	
	line	114
;OverLoad_B1.c: 113: }
;OverLoad_B1.c: 114: }
	goto	l9980
	line	115
	
l1923:	
	line	117
	
l9954:	
;OverLoad_B1.c: 115: else
;OverLoad_B1.c: 116: {
;OverLoad_B1.c: 117: Load->ErrorCount=0;
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	118
	
l9956:	
;OverLoad_B1.c: 118: if(Load->SafeCount < 10)
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(0Ah)
	subwf	indf1,w
	skipnc
	goto	u10151
	goto	u10150
u10151:
	goto	l9960
u10150:
	line	120
	
l9958:	
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
	goto	l9960
	line	121
	
l1926:	
	line	122
	
l9960:	
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
	goto	u10161
	goto	u10160
u10161:
	goto	l9980
u10160:
	line	124
	
l9962:	
;OverLoad_B1.c: 123: {
;OverLoad_B1.c: 124: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	127
	
l9964:	
;OverLoad_B1.c: 127: setDimmerLights_Clear(1,1);
	clrf	(setDimmerLights_Clear@command)
	incf	(setDimmerLights_Clear@command),f
	movlw	(01h)
	fcall	_setDimmerLights_Clear
	line	131
	
l9966:	
;OverLoad_B1.c: 131: setDimmerLights_Clear(2,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Clear@command)
	incf	(setDimmerLights_Clear@command),f
	movlw	(02h)
	fcall	_setDimmerLights_Clear
	line	138
;OverLoad_B1.c: 138: if(Load->StatusOn)
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10171
	goto	u10170
u10171:
	goto	l9972
u10170:
	line	140
	
l9968:	
;OverLoad_B1.c: 139: {
;OverLoad_B1.c: 140: Load->StatusOn=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	141
	
l9970:	
;OverLoad_B1.c: 141: Load->TotalLoad=Load->AD;
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
	goto	l9972
	line	143
	
l1928:	
	line	145
	
l9972:	
;OverLoad_B1.c: 143: }
;OverLoad_B1.c: 145: if(Load->StatusOff)
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10181
	goto	u10180
u10181:
	goto	l9980
u10180:
	line	147
	
l9974:	
;OverLoad_B1.c: 146: {
;OverLoad_B1.c: 147: Load->StatusOff=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	148
	
l9976:	
;OverLoad_B1.c: 148: Load->TotalLoad=Load->AD;
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
	line	149
	
l9978:	
;OverLoad_B1.c: 149: Load->JudgeValue=0x32*Load->LightsCount;
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
	movlw	low(032h)
	movwf	(___wmul@multiplicand)
	movlw	high(032h)
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
	goto	l9980
	line	150
	
l1929:	
	goto	l9980
	line	151
	
l1927:	
	goto	l9980
	line	152
	
l1925:	
	goto	l9980
	line	153
	
l1916:	
	line	154
	
l9980:	
;OverLoad_B1.c: 150: }
;OverLoad_B1.c: 151: }
;OverLoad_B1.c: 152: }
;OverLoad_B1.c: 153: }
;OverLoad_B1.c: 154: setLoad_AH_AL_Restore();
	fcall	_setLoad_AH_AL_Restore
	goto	l1936
	line	166
	
l1913:	
	line	167
;OverLoad_B1.c: 166: }
;OverLoad_B1.c: 167: }
	goto	l1936
	line	168
	
l1912:	
	line	170
	
l9982:	
;OverLoad_B1.c: 168: else
;OverLoad_B1.c: 169: {
;OverLoad_B1.c: 170: if(Load->GO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10191
	goto	u10190
u10191:
	goto	l9994
u10190:
	line	172
	
l9984:	
;OverLoad_B1.c: 171: {
;OverLoad_B1.c: 172: if(!Load->LightsON)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u10201
	goto	u10200
u10201:
	goto	l9988
u10200:
	line	174
	
l9986:	
;OverLoad_B1.c: 173: {
;OverLoad_B1.c: 174: Load->LightsON=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,2
	line	175
;OverLoad_B1.c: 175: Load->Safe=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,3
	goto	l9988
	line	176
	
l1932:	
	line	177
	
l9988:	
;OverLoad_B1.c: 176: }
;OverLoad_B1.c: 177: if(getTemp_Safe() && getPF_Safe())
	fcall	_getTemp_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10211
	goto	u10210
u10211:
	goto	l1936
u10210:
	
l9990:	
	fcall	_getPF_Safe
	xorlw	0&0ffh
	skipnz
	goto	u10221
	goto	u10220
u10221:
	goto	l1936
u10220:
	line	179
	
l9992:	
;OverLoad_B1.c: 178: {
;OverLoad_B1.c: 179: Load->ADtoGO=1;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l1936
	line	180
	
l1933:	
	line	181
;OverLoad_B1.c: 180: }
;OverLoad_B1.c: 181: }
	goto	l1936
	line	182
	
l1931:	
	line	184
	
l9994:	
;OverLoad_B1.c: 182: else
;OverLoad_B1.c: 183: {
;OverLoad_B1.c: 184: if(Load->LightsON)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u10231
	goto	u10230
u10231:
	goto	l1936
u10230:
	line	186
	
l9996:	
;OverLoad_B1.c: 185: {
;OverLoad_B1.c: 186: Load->LightsON=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,2
	line	187
;OverLoad_B1.c: 187: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	188
	
l9998:	
;OverLoad_B1.c: 188: Load->ErrorCount=0;
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	189
	
l10000:	
;OverLoad_B1.c: 189: Load->Count=0;
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	190
;OverLoad_B1.c: 190: Load->TotalLoad=0;
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	191
	
l10002:	
;OverLoad_B1.c: 191: Load->NumberCount=0;
	movf	(_Load),w
	addlw	03Fh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	192
	
l10004:	
;OverLoad_B1.c: 192: Load->StatusOn=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	193
	
l10006:	
;OverLoad_B1.c: 193: Load->StatusOff=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	194
	
l10008:	
;OverLoad_B1.c: 194: Load->AD=0;
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	195
	
l10010:	
;OverLoad_B1.c: 195: setLoad_AH_AL_Restore();
	fcall	_setLoad_AH_AL_Restore
	line	198
	
l10012:	
;OverLoad_B1.c: 198: setDimmerLights_Clear(1,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Clear@command)
	incf	(setDimmerLights_Clear@command),f
	movlw	(01h)
	fcall	_setDimmerLights_Clear
	line	202
	
l10014:	
;OverLoad_B1.c: 202: setDimmerLights_Clear(2,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Clear@command)
	incf	(setDimmerLights_Clear@command),f
	movlw	(02h)
	fcall	_setDimmerLights_Clear
	goto	l1936
	line	223
	
l1935:	
	goto	l1936
	line	224
	
l1934:	
	goto	l1936
	line	225
	
l1930:	
	goto	l1936
	line	226
	
l1911:	
	line	227
	
l1936:	
	return
	opt stack 0
GLOBAL	__end_of_Load_Main
	__end_of_Load_Main:
	signat	_Load_Main,88
	global	_setLoad_Exceptions

;; *************** function _setLoad_Exceptions *****************
;; Defined at:
;;		line 229 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
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
psect	text60,local,class=CODE,delta=2,merge=1
	line	229
global __ptext60
__ptext60:	;psect for function _setLoad_Exceptions
psect	text60
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	229
	global	__size_of_setLoad_Exceptions
	__size_of_setLoad_Exceptions	equ	__end_of_setLoad_Exceptions-_setLoad_Exceptions
	
_setLoad_Exceptions:	
;incstack = 0
	opt	stack 6
; Regs used in _setLoad_Exceptions: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLoad_Exceptions@command stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Exceptions@command)
	line	231
	
l9408:	
;OverLoad_B1.c: 231: Load->ERROR=command;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_Exceptions@command),w
	bcf	indf1,5
	skipz
	bsf	indf1,5
	line	232
	
l9410:	
;OverLoad_B1.c: 232: Load->Safe=(~command) & 0x01;
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
	line	233
	
l9412:	
;OverLoad_B1.c: 233: Load->ErrorStatus=command;
	movf	(setLoad_Exceptions@command),w
	movwf	(??_setLoad_Exceptions+0)+0
	movf	(_Load),w
	addlw	05h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Exceptions+0)+0,w
	movwf	indf1
	line	235
	
l9414:	
;OverLoad_B1.c: 235: if(command)
	movf	(setLoad_Exceptions@command),w
	skipz
	goto	u9180
	goto	l1939
u9180:
	line	237
	
l9416:	
;OverLoad_B1.c: 236: {
;OverLoad_B1.c: 237: DimmerLights_Exceptions(2);
	movlw	(02h)
	fcall	_DimmerLights_Exceptions
	line	238
	
l1939:	
	line	239
;OverLoad_B1.c: 238: }
;OverLoad_B1.c: 239: setLED(99,command+10);
	movlb 0	; select bank0
	movf	(setLoad_Exceptions@command),w
	addlw	0Ah
	movwf	(??_setLoad_Exceptions+0)+0
	movf	(??_setLoad_Exceptions+0)+0,w
	movwf	(setLED@command)
	movlw	(063h)
	fcall	_setLED
	line	241
;OverLoad_B1.c: 241: setSw_Enable((~command) & 0x01);
	movlb 0	; select bank0
	comf	(setLoad_Exceptions@command),w
	andlw	01h
	fcall	_setSw_Enable
	line	243
;OverLoad_B1.c: 243: setRF_Enable(1,(~command) & 0x01);
	movlb 0	; select bank0
	comf	(setLoad_Exceptions@command),w
	andlw	01h
	movwf	(??_setLoad_Exceptions+0)+0
	movf	(??_setLoad_Exceptions+0)+0,w
	movwf	(setRF_Enable@command)
	movlw	(01h)
	fcall	_setRF_Enable
	line	245
	
l1940:	
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
psect	text61,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	86
global __ptext61
__ptext61:	;psect for function _setSw_Enable
psect	text61
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
	
l8856:	
;Switch_B1.c: 90: SwPointSelect(1);
	movlw	(01h)
	fcall	_SwPointSelect
	line	91
	
l8858:	
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
	line	95
	
l8860:	
;Switch_B1.c: 95: SwPointSelect(2);
	movlw	(02h)
	fcall	_SwPointSelect
	line	96
;Switch_B1.c: 96: Sw->Enable=command;
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
	
l2941:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Enable
	__end_of_setSw_Enable:
	signat	_setSw_Enable,4216
	global	_setRF_Enable

;; *************** function _setRF_Enable *****************
;; Defined at:
;;		line 178 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text62,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	178
global __ptext62
__ptext62:	;psect for function _setRF_Enable
psect	text62
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	178
	global	__size_of_setRF_Enable
	__size_of_setRF_Enable	equ	__end_of_setRF_Enable-_setRF_Enable
	
_setRF_Enable:	
;incstack = 0
	opt	stack 7
; Regs used in _setRF_Enable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_Enable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Enable@rf)
	line	180
	
l8862:	
;RF_Control_B1.c: 180: RfPointSelect(rf);
	movf	(setRF_Enable@rf),w
	fcall	_RfPointSelect
	line	181
	
l8864:	
;RF_Control_B1.c: 181: RF->Enable=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRF_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	182
	
l8866:	
;RF_Control_B1.c: 182: RF->Learn=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	183
	
l8868:	
;RF_Control_B1.c: 183: RF->TransceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	184
	
l8870:	
;RF_Control_B1.c: 184: RF->RxStatus=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	185
	
l8872:	
;RF_Control_B1.c: 185: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	186
	
l8874:	
;RF_Control_B1.c: 186: RF->DebounceTime=0;
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	187
	
l8876:	
;RF_Control_B1.c: 187: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	188
	
l8878:	
;RF_Control_B1.c: 188: setINT_GO(0);
	movlw	(0)
	fcall	_setINT_GO
	line	189
	
l2683:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Enable
	__end_of_setRF_Enable:
	signat	_setRF_Enable,8312
	global	_setINT_GO

;; *************** function _setINT_GO *****************
;; Defined at:
;;		line 235 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text63,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	235
global __ptext63
__ptext63:	;psect for function _setINT_GO
psect	text63
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	235
	global	__size_of_setINT_GO
	__size_of_setINT_GO	equ	__end_of_setINT_GO-_setINT_GO
	
_setINT_GO:	
;incstack = 0
	opt	stack 7
; Regs used in _setINT_GO: [wreg]
;setINT_GO@command stored from wreg
	movlb 0	; select bank0
	movwf	(setINT_GO@command)
	line	237
	
l8784:	
;MCU_16f1518_B1.c: 237: INTF=0;
	bcf	(89/8),(89)&7	;volatile
	line	238
	
l8786:	
;MCU_16f1518_B1.c: 238: INTE=command;
	btfsc	(setINT_GO@command),0
	goto	u8471
	goto	u8470
	
u8471:
	bsf	(92/8),(92)&7	;volatile
	goto	u8484
u8470:
	bcf	(92/8),(92)&7	;volatile
u8484:
	line	239
	
l1702:	
	return
	opt stack 0
GLOBAL	__end_of_setINT_GO
	__end_of_setINT_GO:
	signat	_setINT_GO,4216
	global	_DimmerLights_Exceptions

;; *************** function _DimmerLights_Exceptions *****************
;; Defined at:
;;		line 237 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text64,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	237
global __ptext64
__ptext64:	;psect for function _DimmerLights_Exceptions
psect	text64
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	237
	global	__size_of_DimmerLights_Exceptions
	__size_of_DimmerLights_Exceptions	equ	__end_of_DimmerLights_Exceptions-_DimmerLights_Exceptions
	
_DimmerLights_Exceptions:	
;incstack = 0
	opt	stack 5
; Regs used in _DimmerLights_Exceptions: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;DimmerLights_Exceptions@status stored from wreg
	movlb 0	; select bank0
	movwf	(DimmerLights_Exceptions@status)
	line	239
	
l8830:	
;Dimmer_B1.c: 239: if(status == 1)
	movf	(DimmerLights_Exceptions@status),w
	xorlw	01h&0ffh
	skipz
	goto	u8521
	goto	u8520
u8521:
	goto	l8836
u8520:
	line	241
	
l8832:	
;Dimmer_B1.c: 240: {
;Dimmer_B1.c: 241: if(getDimmerLights_StatusFlag())
	fcall	_getDimmerLights_StatusFlag
	xorlw	0&0ffh
	skipnz
	goto	u8531
	goto	u8530
u8531:
	goto	l921
u8530:
	line	243
	
l8834:	
;Dimmer_B1.c: 242: {
;Dimmer_B1.c: 243: setBuz(10,300);
	movlw	low(012Ch)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(012Ch)
	movwf	((setBuz@time))+1
	movlw	(0Ah)
	fcall	_setBuz
	line	244
	
l921:	
	line	247
;Dimmer_B1.c: 244: }
;Dimmer_B1.c: 247: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	line	250
;Dimmer_B1.c: 250: setDimmerLights_ERROR(2);
	movlw	(02h)
	fcall	_setDimmerLights_ERROR
	line	255
;Dimmer_B1.c: 255: }
	goto	l922
	line	256
	
l920:	
	
l8836:	
;Dimmer_B1.c: 256: else if(status == 2)
	movlb 0	; select bank0
	movf	(DimmerLights_Exceptions@status),w
	xorlw	02h&0ffh
	skipz
	goto	u8541
	goto	u8540
u8541:
	goto	l8840
u8540:
	line	258
	
l8838:	
;Dimmer_B1.c: 257: {
;Dimmer_B1.c: 258: setBuz(5,300);
	movlw	low(012Ch)
	movwf	(setBuz@time)
	movlw	high(012Ch)
	movwf	((setBuz@time))+1
	movlw	(05h)
	fcall	_setBuz
	line	259
;Dimmer_B1.c: 259: setDimmerLights_ERROR(Dimmer->Load);
	movlb 1	; select bank1
	incf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	fcall	_setDimmerLights_ERROR
	line	260
;Dimmer_B1.c: 260: }
	goto	l922
	line	261
	
l923:	
	
l8840:	
;Dimmer_B1.c: 261: else if(status == 3)
	movlb 0	; select bank0
	movf	(DimmerLights_Exceptions@status),w
	xorlw	03h&0ffh
	skipz
	goto	u8551
	goto	u8550
u8551:
	goto	l922
u8550:
	line	264
	
l8842:	
;Dimmer_B1.c: 262: {
;Dimmer_B1.c: 264: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	line	267
;Dimmer_B1.c: 267: setDimmerLights_ERROR(2);
	movlw	(02h)
	fcall	_setDimmerLights_ERROR
	goto	l922
	line	272
	
l925:	
	goto	l922
	line	275
	
l924:	
	
l922:	
;Dimmer_B1.c: 272: }
;Dimmer_B1.c: 275: setDimmerLights_TriggerERROR(1,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_TriggerERROR@command)
	movlw	(01h)
	fcall	_setDimmerLights_TriggerERROR
	line	278
;Dimmer_B1.c: 278: setDimmerLights_TriggerERROR(2,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_TriggerERROR@command)
	movlw	(02h)
	fcall	_setDimmerLights_TriggerERROR
	line	284
	
l8844:	
;Dimmer_B1.c: 284: if(TMain->SelfTest == 0)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u8561
	goto	u8560
u8561:
	goto	l927
u8560:
	line	286
	
l8846:	
;Dimmer_B1.c: 285: {
;Dimmer_B1.c: 286: TMain->i=0;
	movf	(_TMain)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	287
;Dimmer_B1.c: 287: TMain->j=0;
	movf	(_TMain)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	288
;Dimmer_B1.c: 288: TMain->k=1;
	movf	(_TMain)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	289
;Dimmer_B1.c: 289: TMain->Count2=0;
	movf	(_TMain)^080h,w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l927
	line	290
	
l926:	
	line	291
	
l927:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Exceptions
	__end_of_DimmerLights_Exceptions:
	signat	_DimmerLights_Exceptions,4216
	global	_setDimmerLights_TriggerERROR

;; *************** function _setDimmerLights_TriggerERROR *****************
;; Defined at:
;;		line 311 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text65,local,class=CODE,delta=2,merge=1
	line	311
global __ptext65
__ptext65:	;psect for function _setDimmerLights_TriggerERROR
psect	text65
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	311
	global	__size_of_setDimmerLights_TriggerERROR
	__size_of_setDimmerLights_TriggerERROR	equ	__end_of_setDimmerLights_TriggerERROR-_setDimmerLights_TriggerERROR
	
_setDimmerLights_TriggerERROR:	
;incstack = 0
	opt	stack 6
; Regs used in _setDimmerLights_TriggerERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_TriggerERROR@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_TriggerERROR@lights)
	line	313
	
l8774:	
;Dimmer_B1.c: 313: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	314
	
l8776:	
;Dimmer_B1.c: 314: DimmerLights->Trigger=command;
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
	line	315
	
l8778:	
;Dimmer_B1.c: 315: DimmerLights->Switch=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	316
	
l8780:	
;Dimmer_B1.c: 316: DimmerLights->TriggerAdj=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	317
	
l8782:	
;Dimmer_B1.c: 317: DimmerLights->AdjGo=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,2
	skipz
	bsf	indf1,2
	line	318
	
l934:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_TriggerERROR
	__end_of_setDimmerLights_TriggerERROR:
	signat	_setDimmerLights_TriggerERROR,8312
	global	_setDimmerLights_ERROR

;; *************** function _setDimmerLights_ERROR *****************
;; Defined at:
;;		line 293 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text66,local,class=CODE,delta=2,merge=1
	line	293
global __ptext66
__ptext66:	;psect for function _setDimmerLights_ERROR
psect	text66
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	293
	global	__size_of_setDimmerLights_ERROR
	__size_of_setDimmerLights_ERROR	equ	__end_of_setDimmerLights_ERROR-_setDimmerLights_ERROR
	
_setDimmerLights_ERROR:	
;incstack = 0
	opt	stack 5
; Regs used in _setDimmerLights_ERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_ERROR@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_ERROR@lights)
	line	295
	
l8760:	
;Dimmer_B1.c: 295: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	296
	
l8762:	
;Dimmer_B1.c: 296: if(DimmerLights->Status)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u8461
	goto	u8460
u8461:
	goto	l931
u8460:
	line	298
	
l8764:	
;Dimmer_B1.c: 297: {
;Dimmer_B1.c: 298: DimmerLights->Signal=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	299
;Dimmer_B1.c: 299: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	300
;Dimmer_B1.c: 300: DimmerLights->AdjStatus=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	301
;Dimmer_B1.c: 301: DimmerLights->StatusFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	line	302
;Dimmer_B1.c: 302: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights_ERROR+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_ERROR+0)+0,w
	movwf	indf1
	line	303
;Dimmer_B1.c: 303: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
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
	line	304
;Dimmer_B1.c: 304: Dimmer->Detect=1;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	305
	
l8766:	
;Dimmer_B1.c: 305: setLoad_StatusOff(lights,1);
	movlb 0	; select bank0
	clrf	(setLoad_StatusOff@command)
	incf	(setLoad_StatusOff@command),f
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setLoad_StatusOff
	line	306
	
l8768:	
;Dimmer_B1.c: 306: setLED(lights,1);
	movlb 0	; select bank0
	clrf	(setLED@command)
	incf	(setLED@command),f
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setLED
	line	307
	
l8770:	
;Dimmer_B1.c: 307: setSw_Status(lights,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setSw_Status
	line	308
	
l8772:	
;Dimmer_B1.c: 308: setRFSW_Status(lights,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setRFSW_Status
	goto	l931
	line	309
	
l930:	
	line	310
	
l931:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_ERROR
	__end_of_setDimmerLights_ERROR:
	signat	_setDimmerLights_ERROR,4216
	global	_setDimmerLights_Clear

;; *************** function _setDimmerLights_Clear *****************
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
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text67,local,class=CODE,delta=2,merge=1
	line	445
global __ptext67
__ptext67:	;psect for function _setDimmerLights_Clear
psect	text67
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	445
	global	__size_of_setDimmerLights_Clear
	__size_of_setDimmerLights_Clear	equ	__end_of_setDimmerLights_Clear-_setDimmerLights_Clear
	
_setDimmerLights_Clear:	
;incstack = 0
	opt	stack 9
; Regs used in _setDimmerLights_Clear: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Clear@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Clear@lights)
	line	447
	
l9318:	
;Dimmer_B1.c: 447: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Clear@lights),w
	fcall	_DimmerLightsPointSelect
	line	448
	
l9320:	
;Dimmer_B1.c: 448: DimmerLights->Clear=command;
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
	line	449
	
l971:	
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
psect	text68,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	26
global __ptext68
__ptext68:	;psect for function _getTemp_Safe
psect	text68
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	26
	global	__size_of_getTemp_Safe
	__size_of_getTemp_Safe	equ	__end_of_getTemp_Safe-_getTemp_Safe
	
_getTemp_Safe:	
;incstack = 0
	opt	stack 9
; Regs used in _getTemp_Safe: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	28
	
l9054:	
;OverTemperature_B1.c: 28: return Temp->Safe;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	indf1,w
	andlw	(1<<1)-1
	goto	l2121
	
l9056:	
	line	29
	
l2121:	
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
psect	text69,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	40
global __ptext69
__ptext69:	;psect for function _getPF_Safe
psect	text69
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	40
	global	__size_of_getPF_Safe
	__size_of_getPF_Safe	equ	__end_of_getPF_Safe-_getPF_Safe
	
_getPF_Safe:	
;incstack = 0
	opt	stack 9
; Regs used in _getPF_Safe: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	42
	
l9058:	
;PowerFault_B1.c: 42: return PF->Safe;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	rrf	indf1,w
	rrf	wreg,f
	andlw	(1<<1)-1
	goto	l2432
	
l9060:	
	line	43
	
l2432:	
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
psect	text70,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
	line	6
global __ptext70
__ptext70:	;psect for function ___lwdiv
psect	text70
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 10
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l7870:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l7872:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u6941
	goto	u6940
u6941:
	goto	l7892
u6940:
	line	16
	
l7874:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l7880
	
l3568:	
	line	18
	
l7876:	
	movlw	01h
	
u6955:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u6955
	line	19
	
l7878:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l7880
	line	20
	
l3567:	
	line	17
	
l7880:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u6961
	goto	u6960
u6961:
	goto	l7876
u6960:
	goto	l7882
	
l3569:	
	goto	l7882
	line	21
	
l3570:	
	line	22
	
l7882:	
	movlw	01h
	
u6975:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u6975
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u6985
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u6985:
	skipc
	goto	u6981
	goto	u6980
u6981:
	goto	l7888
u6980:
	line	24
	
l7884:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	25
	
l7886:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l7888
	line	26
	
l3571:	
	line	27
	
l7888:	
	movlw	01h
	
u6995:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u6995
	line	28
	
l7890:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u7001
	goto	u7000
u7001:
	goto	l7882
u7000:
	goto	l7892
	
l3572:	
	goto	l7892
	line	29
	
l3566:	
	line	30
	
l7892:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l3573
	
l7894:	
	line	31
	
l3573:	
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
psect	text71,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	8
global __ptext71
__ptext71:	;psect for function _Load_Initialization
psect	text71
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	8
	global	__size_of_Load_Initialization
	__size_of_Load_Initialization	equ	__end_of_Load_Initialization-_Load_Initialization
	
_Load_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Load_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	10
	
l8038:	
;OverLoad_B1.c: 10: Load=&Load1;
	movlw	(_Load1)&0ffh
	movlb 0	; select bank0
	movwf	(??_Load_Initialization+0)+0
	movf	(??_Load_Initialization+0)+0,w
	movwf	(_Load)
	line	11
	
l8040:	
;OverLoad_B1.c: 11: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	12
	
l8042:	
;OverLoad_B1.c: 12: setLoad_AH_AL_Restore();
	fcall	_setLoad_AH_AL_Restore
	line	13
	
l1895:	
	return
	opt stack 0
GLOBAL	__end_of_Load_Initialization
	__end_of_Load_Initialization:
	signat	_Load_Initialization,88
	global	_setLoad_AH_AL_Restore

;; *************** function _setLoad_AH_AL_Restore *****************
;; Defined at:
;;		line 306 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
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
psect	text72,local,class=CODE,delta=2,merge=1
	line	306
global __ptext72
__ptext72:	;psect for function _setLoad_AH_AL_Restore
psect	text72
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	306
	global	__size_of_setLoad_AH_AL_Restore
	__size_of_setLoad_AH_AL_Restore	equ	__end_of_setLoad_AH_AL_Restore-_setLoad_AH_AL_Restore
	
_setLoad_AH_AL_Restore:	
;incstack = 0
	opt	stack 10
; Regs used in _setLoad_AH_AL_Restore: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	309
	
l7556:	
;OverLoad_B1.c: 308: char i;
;OverLoad_B1.c: 309: for(i=0 ; i<5 ;i++)
	movlb 0	; select bank0
	clrf	(setLoad_AH_AL_Restore@i)
	
l7558:	
	movlw	(05h)
	subwf	(setLoad_AH_AL_Restore@i),w
	skipc
	goto	u6321
	goto	u6320
u6321:
	goto	l7562
u6320:
	goto	l1972
	
l7560:	
	goto	l1972
	line	310
	
l1970:	
	line	311
	
l7562:	
;OverLoad_B1.c: 310: {
;OverLoad_B1.c: 311: Load->AH[i]=0;
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
	line	312
;OverLoad_B1.c: 312: Load->AL[i]=0xffff;
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
	line	309
	
l7564:	
	movlw	(01h)
	movwf	(??_setLoad_AH_AL_Restore+0)+0
	movf	(??_setLoad_AH_AL_Restore+0)+0,w
	addwf	(setLoad_AH_AL_Restore@i),f
	
l7566:	
	movlw	(05h)
	subwf	(setLoad_AH_AL_Restore@i),w
	skipc
	goto	u6331
	goto	u6330
u6331:
	goto	l7562
u6330:
	goto	l1972
	
l1971:	
	line	314
	
l1972:	
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
psect	text73,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	51
global __ptext73
__ptext73:	;psect for function _LED_Main
psect	text73
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	51
	global	__size_of_LED_Main
	__size_of_LED_Main	equ	__end_of_LED_Main-_LED_Main
	
_LED_Main:	
;incstack = 0
	opt	stack 9
; Regs used in _LED_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	54
	
l9712:	
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
	
l1124:	
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
psect	text74,local,class=CODE,delta=2,merge=1
	line	214
global __ptext74
__ptext74:	;psect for function _setLED_Main
psect	text74
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
	
l7440:	
;LED_B1.c: 216: LedPointSelect(led);
	movf	(setLED_Main@led),w
	fcall	_LedPointSelect
	line	217
	
l7442:	
;LED_B1.c: 217: if(LED->GO)
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u6211
	goto	u6210
u6211:
	goto	l1162
u6210:
	line	219
	
l7444:	
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
	
l7446:	
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
	goto	u6221
	goto	u6220
u6221:
	goto	l1162
u6220:
	line	222
	
l7448:	
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
	
l7450:	
;LED_B1.c: 224: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED_Main@led),w
	xorlw	01h&0ffh
	skipz
	goto	u6231
	goto	u6230
u6231:
	goto	l7454
u6230:
	line	226
	
l7452:	
;LED_B1.c: 225: {
;LED_B1.c: 226: RA3=~RA3;
	movlw	1<<((99)&7)
	xorwf	((99)/8),f
	line	227
;LED_B1.c: 227: }
	goto	l1162
	line	230
	
l1157:	
	
l7454:	
;LED_B1.c: 230: else if(led == 2)
	movf	(setLED_Main@led),w
	xorlw	02h&0ffh
	skipz
	goto	u6241
	goto	u6240
u6241:
	goto	l7458
u6240:
	line	232
	
l7456:	
;LED_B1.c: 231: {
;LED_B1.c: 232: RC7=~RC7;
	movlw	1<<((119)&7)
	xorwf	((119)/8),f
	line	233
;LED_B1.c: 233: }
	goto	l1162
	line	242
	
l1159:	
	
l7458:	
;LED_B1.c: 242: else if(led == 99)
	movf	(setLED_Main@led),w
	xorlw	063h&0ffh
	skipz
	goto	u6251
	goto	u6250
u6251:
	goto	l1162
u6250:
	line	244
	
l7460:	
;LED_B1.c: 243: {
;LED_B1.c: 244: RB5=~RB5;
	movlw	1<<((109)&7)
	xorwf	((109)/8),f
	goto	l1162
	line	245
	
l1161:	
	goto	l1162
	line	247
	
l1160:	
	goto	l1162
	
l1158:	
	goto	l1162
	
l1156:	
	goto	l1162
	line	248
	
l1155:	
	line	249
	
l1162:	
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
psect	text75,local,class=CODE,delta=2,merge=1
	line	35
global __ptext75
__ptext75:	;psect for function _LED_Initialization
psect	text75
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	35
	global	__size_of_LED_Initialization
	__size_of_LED_Initialization	equ	__end_of_LED_Initialization-_LED_Initialization
	
_LED_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _LED_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	38
	
l9710:	
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
	
l1121:	
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
psect	text76,local,class=CODE,delta=2,merge=1
	line	67
global __ptext76
__ptext76:	;psect for function _setLED_Initialization
psect	text76
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
	
l9330:	
;LED_B1.c: 69: LedPointSelect(led);
	movf	(setLED_Initialization@led),w
	fcall	_LedPointSelect
	line	70
	
l9332:	
;LED_B1.c: 70: LED->Enable=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	71
	
l9334:	
;LED_B1.c: 71: setLED(led,0);
	movlb 0	; select bank0
	clrf	(setLED@command)
	movf	(setLED_Initialization@led),w
	fcall	_setLED
	line	72
	
l1127:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Initialization
	__end_of_setLED_Initialization:
	signat	_setLED_Initialization,4216
	global	_Flash_Memory_Main

;; *************** function _Flash_Memory_Main *****************
;; Defined at:
;;		line 474 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text77,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	474
global __ptext77
__ptext77:	;psect for function _Flash_Memory_Main
psect	text77
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	474
	global	__size_of_Flash_Memory_Main
	__size_of_Flash_Memory_Main	equ	__end_of_Flash_Memory_Main-_Flash_Memory_Main
	
_Flash_Memory_Main:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	476
	
l9874:	
;MCU_16f1518_B1.c: 476: if(Memory->GO)
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9991
	goto	u9990
u9991:
	goto	l1734
u9990:
	line	478
	
l9876:	
;MCU_16f1518_B1.c: 477: {
;MCU_16f1518_B1.c: 478: if(Memory->Modify)
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10001
	goto	u10000
u10001:
	goto	l9886
u10000:
	line	480
	
l9878:	
;MCU_16f1518_B1.c: 479: {
;MCU_16f1518_B1.c: 480: Memory->Time++;
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	481
	
l9880:	
;MCU_16f1518_B1.c: 481: if(Memory->Time == 25)
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(019h)
	skipz
	goto	u10015
	moviw	[1]fsr1
	xorlw	high(019h)
u10015:
	skipz
	goto	u10011
	goto	u10010
u10011:
	goto	l1734
u10010:
	line	483
	
l9882:	
;MCU_16f1518_B1.c: 482: {
;MCU_16f1518_B1.c: 483: Memory->Time=0;
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	484
;MCU_16f1518_B1.c: 484: Memory->Modify=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	485
;MCU_16f1518_B1.c: 485: Memory->GO=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	486
	
l9884:	
;MCU_16f1518_B1.c: 486: Flash_Memory_Modify();
	fcall	_Flash_Memory_Modify
	goto	l1734
	line	488
	
l1732:	
	line	489
;MCU_16f1518_B1.c: 488: }
;MCU_16f1518_B1.c: 489: }
	goto	l1734
	line	490
	
l1731:	
	line	492
	
l9886:	
;MCU_16f1518_B1.c: 490: else
;MCU_16f1518_B1.c: 491: {
;MCU_16f1518_B1.c: 492: Memory->GO=0;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l1734
	line	493
	
l1733:	
	goto	l1734
	line	494
	
l1730:	
	line	495
	
l1734:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Main
	__end_of_Flash_Memory_Main:
	signat	_Flash_Memory_Main,88
	global	_Flash_Memory_Modify

;; *************** function _Flash_Memory_Modify *****************
;; Defined at:
;;		line 549 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text78,local,class=CODE,delta=2,merge=1
	line	549
global __ptext78
__ptext78:	;psect for function _Flash_Memory_Modify
psect	text78
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	549
	global	__size_of_Flash_Memory_Modify
	__size_of_Flash_Memory_Modify	equ	__end_of_Flash_Memory_Modify-_Flash_Memory_Modify
	
_Flash_Memory_Modify:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Modify: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	552
	
l9384:	
;MCU_16f1518_B1.c: 551: char i;
;MCU_16f1518_B1.c: 552: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Modify@i)
	
l9386:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u9151
	goto	u9150
u9151:
	goto	l9390
u9150:
	goto	l9396
	
l9388:	
	goto	l9396
	line	553
	
l1751:	
	line	554
	
l9390:	
;MCU_16f1518_B1.c: 553: {
;MCU_16f1518_B1.c: 554: Memory->Data[i]=Flash_Memory_Read(i);
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
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	552
	
l9392:	
	movlw	(01h)
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(??_Flash_Memory_Modify+0)+0,w
	addwf	(Flash_Memory_Modify@i),f
	
l9394:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u9161
	goto	u9160
u9161:
	goto	l9390
u9160:
	goto	l9396
	
l1752:	
	line	556
	
l9396:	
;MCU_16f1518_B1.c: 555: }
;MCU_16f1518_B1.c: 556: Memory->Data[0]=Product->Data[12];
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
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	557
;MCU_16f1518_B1.c: 557: Memory->Data[1]=Product->Data[13];
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
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	558
;MCU_16f1518_B1.c: 558: Memory->Data[2]=Product->Data[14];
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
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	564
;MCU_16f1518_B1.c: 564: if(Memory->LoopSave)
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9171
	goto	u9170
u9171:
	goto	l9400
u9170:
	line	566
	
l9398:	
;MCU_16f1518_B1.c: 565: {
;MCU_16f1518_B1.c: 566: Memory->LoopSave=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,2
	line	567
;MCU_16f1518_B1.c: 567: TMain->FirstOpen=0;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	568
;MCU_16f1518_B1.c: 568: TMain->First=0;
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l9400
	line	570
	
l1753:	
	line	571
	
l9400:	
;MCU_16f1518_B1.c: 570: }
;MCU_16f1518_B1.c: 571: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	572
	
l9402:	
;MCU_16f1518_B1.c: 572: Flash_Memory_Erasing();
	fcall	_Flash_Memory_Erasing
	line	573
	
l9404:	
;MCU_16f1518_B1.c: 573: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	574
	
l9406:	
;MCU_16f1518_B1.c: 574: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	575
	
l1754:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Modify
	__end_of_Flash_Memory_Modify:
	signat	_Flash_Memory_Modify,88
	global	_Flash_Memory_Erasing

;; *************** function _Flash_Memory_Erasing *****************
;; Defined at:
;;		line 538 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text79,local,class=CODE,delta=2,merge=1
	line	538
global __ptext79
__ptext79:	;psect for function _Flash_Memory_Erasing
psect	text79
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	538
	global	__size_of_Flash_Memory_Erasing
	__size_of_Flash_Memory_Erasing	equ	__end_of_Flash_Memory_Erasing-_Flash_Memory_Erasing
	
_Flash_Memory_Erasing:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Erasing: [wreg+status,2+status,0+pclath+cstack]
	line	540
	
l9040:	
;MCU_16f1518_B1.c: 540: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	541
	
l9042:	
;MCU_16f1518_B1.c: 541: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	542
	
l9044:	
;MCU_16f1518_B1.c: 542: PMADRL=0x00;
	clrf	(401)^0180h	;volatile
	line	543
	
l9046:	
;MCU_16f1518_B1.c: 543: FREE=1;
	bsf	(3244/8)^0180h,(3244)&7	;volatile
	line	544
	
l9048:	
;MCU_16f1518_B1.c: 544: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7	;volatile
	line	545
	
l9050:	
;MCU_16f1518_B1.c: 545: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	546
	
l9052:	
;MCU_16f1518_B1.c: 546: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7	;volatile
	line	547
	
l1748:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Erasing
	__end_of_Flash_Memory_Erasing:
	signat	_Flash_Memory_Erasing,88
	global	_Flash_Memory_Initialization

;; *************** function _Flash_Memory_Initialization *****************
;; Defined at:
;;		line 429 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text80,local,class=CODE,delta=2,merge=1
	line	429
global __ptext80
__ptext80:	;psect for function _Flash_Memory_Initialization
psect	text80
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	429
	global	__size_of_Flash_Memory_Initialization
	__size_of_Flash_Memory_Initialization	equ	__end_of_Flash_Memory_Initialization-_Flash_Memory_Initialization
	
_Flash_Memory_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	432
	
l9724:	
;MCU_16f1518_B1.c: 431: char i;
;MCU_16f1518_B1.c: 432: if(Flash_Memory_Read(31) == 0xaa)
	movlw	(01Fh)
	fcall	_Flash_Memory_Read
	xorlw	0AAh&0ffh
	skipz
	goto	u9781
	goto	u9780
u9781:
	goto	l9744
u9780:
	line	434
	
l9726:	
;MCU_16f1518_B1.c: 433: {
;MCU_16f1518_B1.c: 434: Product->Data[12]=Flash_Memory_Read(0);
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
	line	435
;MCU_16f1518_B1.c: 435: Product->Data[13]=Flash_Memory_Read(1);
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
	line	436
;MCU_16f1518_B1.c: 436: Product->Data[14]=Flash_Memory_Read(2);
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
	line	442
	
l9728:	
;MCU_16f1518_B1.c: 442: i=setPercentValue(((char)((100-55)*1.5)));
	movlw	(043h)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	443
	
l9730:	
;MCU_16f1518_B1.c: 443: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	444
	
l9732:	
;MCU_16f1518_B1.c: 444: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	445
	
l9734:	
;MCU_16f1518_B1.c: 445: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	447
	
l9736:	
;MCU_16f1518_B1.c: 447: if(Product->Data[12]==0xff && Product->Data[13]==0xff && Product->Data[14]==0xff)
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0FFh&0ffh
	skipz
	goto	u9791
	goto	u9790
u9791:
	goto	l1727
u9790:
	
l9738:	
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0FFh&0ffh
	skipz
	goto	u9801
	goto	u9800
u9801:
	goto	l1727
u9800:
	
l9740:	
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0FFh&0ffh
	skipz
	goto	u9811
	goto	u9810
u9811:
	goto	l1727
u9810:
	line	449
	
l9742:	
;MCU_16f1518_B1.c: 448: {
;MCU_16f1518_B1.c: 449: TMain->FirstOpen=1;
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	450
;MCU_16f1518_B1.c: 450: TMain->First=1;
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l1727
	line	451
	
l1725:	
	line	452
;MCU_16f1518_B1.c: 451: }
;MCU_16f1518_B1.c: 452: }
	goto	l1727
	line	453
	
l1724:	
	line	455
	
l9744:	
;MCU_16f1518_B1.c: 453: else
;MCU_16f1518_B1.c: 454: {
;MCU_16f1518_B1.c: 455: i=setPercentValue(((char)((100-55)*1.5)));
	movlw	(043h)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	456
	
l9746:	
;MCU_16f1518_B1.c: 456: Memory->Data[0]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	457
	
l9748:	
;MCU_16f1518_B1.c: 457: Memory->Data[1]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	incf	(_Memory)^080h,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	458
	
l9750:	
;MCU_16f1518_B1.c: 458: Memory->Data[2]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	02h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	459
	
l9752:	
;MCU_16f1518_B1.c: 459: Memory->Data[3]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	460
	
l9754:	
;MCU_16f1518_B1.c: 460: Memory->Data[4]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	04h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	461
	
l9756:	
;MCU_16f1518_B1.c: 461: Memory->Data[5]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	462
	
l9758:	
;MCU_16f1518_B1.c: 462: Memory->Data[31]=0xaa;
	movlw	(0AAh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	01Fh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	463
	
l9760:	
;MCU_16f1518_B1.c: 463: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	464
	
l9762:	
;MCU_16f1518_B1.c: 464: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	465
	
l9764:	
;MCU_16f1518_B1.c: 465: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	466
	
l9766:	
;MCU_16f1518_B1.c: 466: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	467
	
l9768:	
;MCU_16f1518_B1.c: 467: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	468
	
l9770:	
;MCU_16f1518_B1.c: 468: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	469
	
l9772:	
;MCU_16f1518_B1.c: 469: TMain->FirstOpen=1;
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	470
	
l9774:	
;MCU_16f1518_B1.c: 470: TMain->First=1;
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l1727
	line	471
	
l1726:	
	line	472
	
l1727:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Initialization
	__end_of_Flash_Memory_Initialization:
	signat	_Flash_Memory_Initialization,88
	global	_setPercentValue

;; *************** function _setPercentValue *****************
;; Defined at:
;;		line 494 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
;; This function uses a non-reentrant model
;;
psect	text81,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	494
global __ptext81
__ptext81:	;psect for function _setPercentValue
psect	text81
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	494
	global	__size_of_setPercentValue
	__size_of_setPercentValue	equ	__end_of_setPercentValue-_setPercentValue
	
_setPercentValue:	
;incstack = 0
	opt	stack 8
; Regs used in _setPercentValue: [wreg+status,2+status,0+pclath+cstack]
;setPercentValue@value stored from wreg
	movlb 0	; select bank0
	movwf	(setPercentValue@value)
	line	497
	
l9322:	
;Dimmer_B1.c: 497: float i=((char)((100-20)*1.5))-((char)((100-55)*1.5));
	movlw	0x0
	movwf	(setPercentValue@i)
	movlw	0x54
	movwf	(setPercentValue@i+1)
	movlw	0x42
	movwf	(setPercentValue@i+2)
	line	498
	
l9324:	
;Dimmer_B1.c: 498: i/=100;
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
	line	499
	
l9326:	
;Dimmer_B1.c: 499: return (100-(char)((value-((char)((100-55)*1.5)))/i));
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
	goto	l977
	
l9328:	
	line	507
	
l977:	
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
psect	text82,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
global __ptext82
__ptext82:	;psect for function ___fttol
psect	text82
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6326:	
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
	goto	u4641
	goto	u4640
u4641:
	goto	l6332
u4640:
	line	50
	
l6328:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3479
	
l6330:	
	goto	l3479
	
l3478:	
	line	51
	
l6332:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u4655:
	lsrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u4650:
	decfsz	wreg,f
	goto	u4655
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6334:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6336:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6338:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6340:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6342:	
	btfss	(___fttol@exp1),7
	goto	u4661
	goto	u4660
u4661:
	goto	l6352
u4660:
	line	57
	
l6344:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4671
	goto	u4670
u4671:
	goto	l6350
u4670:
	line	58
	
l6346:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3479
	
l6348:	
	goto	l3479
	
l3481:	
	goto	l6350
	line	59
	
l3482:	
	line	60
	
l6350:	
	movlw	01h
u4685:
	lsrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	decfsz	wreg,f
	goto	u4685

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u4691
	goto	u4690
u4691:
	goto	l6350
u4690:
	goto	l6362
	
l3483:	
	line	62
	goto	l6362
	
l3480:	
	line	63
	
l6352:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u4701
	goto	u4700
u4701:
	goto	l6360
u4700:
	line	64
	
l6354:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3479
	
l6356:	
	goto	l3479
	
l3485:	
	line	65
	goto	l6360
	
l3487:	
	line	66
	
l6358:	
	movlw	01h
u4715:
	lslf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	wreg,f
	goto	u4715
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l6360
	line	68
	
l3486:	
	line	65
	
l6360:	
	movf	(___fttol@exp1),f
	skipz
	goto	u4721
	goto	u4720
u4721:
	goto	l6358
u4720:
	goto	l6362
	
l3488:	
	goto	l6362
	line	69
	
l3484:	
	line	70
	
l6362:	
	movf	(___fttol@sign1),w
	skipz
	goto	u4730
	goto	l6366
u4730:
	line	71
	
l6364:	
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
	goto	l6366
	
l3489:	
	line	72
	
l6366:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l3479
	
l6368:	
	line	73
	
l3479:	
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
psect	text83,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\ftdiv.c"
	line	49
global __ptext83
__ptext83:	;psect for function ___ftdiv
psect	text83
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l6234:	
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
	goto	u4441
	goto	u4440
u4441:
	goto	l6240
u4440:
	line	56
	
l6236:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l3444
	
l6238:	
	goto	l3444
	
l3443:	
	line	57
	
l6240:	
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
	goto	u4451
	goto	u4450
u4451:
	goto	l6246
u4450:
	line	58
	
l6242:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l3444
	
l6244:	
	goto	l3444
	
l3445:	
	line	59
	
l6246:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l6248:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l6250:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4465:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4460:
	decfsz	wreg,f
	goto	u4465
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l6252:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4475:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4470:
	decfsz	wreg,f
	goto	u4475
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l6254:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l6256:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l6258:	
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
	goto	l6260
	line	69
	
l3446:	
	line	70
	
l6260:	
	movlw	01h
u4485:
	lslf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	decfsz	wreg,f
	goto	u4485
	line	71
	
l6262:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4495
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4495
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4495:
	skipc
	goto	u4491
	goto	u4490
u4491:
	goto	l6268
u4490:
	line	72
	
l6264:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	subwfb	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	subwfb	(___ftdiv@f1+2),f
	line	73
	
l6266:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l6268
	line	74
	
l3447:	
	line	75
	
l6268:	
	movlw	01h
u4505:
	lslf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	decfsz	wreg,f
	goto	u4505
	line	76
	
l6270:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u4511
	goto	u4510
u4511:
	goto	l6260
u4510:
	goto	l6272
	
l3448:	
	line	77
	
l6272:	
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
	goto	l3444
	
l6274:	
	line	78
	
l3444:	
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
psect	text84,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
	line	32
global __ptext84
__ptext84:	;psect for function ___awtoft
psect	text84
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l6150:	
	movlb 0	; select bank0
	clrf	(___awtoft@sign)
	line	37
	
l6152:	
	btfss	(___awtoft@c+1),7
	goto	u4201
	goto	u4200
u4201:
	goto	l6158
u4200:
	line	38
	
l6154:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l6156:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l6158
	line	40
	
l3387:	
	line	41
	
l6158:	
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
	goto	l3388
	
l6160:	
	line	42
	
l3388:	
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
psect	text85,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
global __ptext85
__ptext85:	;psect for function ___ftpack
psect	text85
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l6120:	
	movlb 0	; select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u4090
	goto	l6124
u4090:
	
l6122:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l6130
u4100:
	goto	l6124
	
l3393:	
	line	65
	
l6124:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l3394
	
l6126:	
	goto	l3394
	
l3391:	
	line	66
	goto	l6130
	
l3396:	
	line	67
	
l6128:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u4115:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u4115

	goto	l6130
	line	69
	
l3395:	
	line	66
	
l6130:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4121
	goto	u4120
u4121:
	goto	l6128
u4120:
	goto	l3398
	
l3397:	
	line	70
	goto	l3398
	
l3399:	
	line	71
	
l6132:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l6134:	
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
	
l6136:	
	movlw	01h
u4135:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u4135

	line	74
	
l3398:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4141
	goto	u4140
u4141:
	goto	l6132
u4140:
	goto	l6140
	
l3400:	
	line	75
	goto	l6140
	
l3402:	
	line	76
	
l6138:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u4155:
	lslf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	decfsz	wreg,f
	goto	u4155
	goto	l6140
	line	78
	
l3401:	
	line	75
	
l6140:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l6138
u4160:
	
l3403:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u4171
	goto	u4170
u4171:
	goto	l3404
u4170:
	line	80
	
l6142:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l3404:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l6144:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u4185:
	lslf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u4180:
	decfsz	wreg,f
	goto	u4185
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l6146:	
	movf	(___ftpack@sign),w
	skipz
	goto	u4190
	goto	l3405
u4190:
	line	84
	
l6148:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3405:	
	line	85
	line	86
	
l3394:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_Flash_Memory_Write

;; *************** function _Flash_Memory_Write *****************
;; Defined at:
;;		line 518 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text86,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	518
global __ptext86
__ptext86:	;psect for function _Flash_Memory_Write
psect	text86
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	518
	global	__size_of_Flash_Memory_Write
	__size_of_Flash_Memory_Write	equ	__end_of_Flash_Memory_Write-_Flash_Memory_Write
	
_Flash_Memory_Write:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Write: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	521
	
l9010:	
;MCU_16f1518_B1.c: 520: char i;
;MCU_16f1518_B1.c: 521: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	522
	
l9012:	
;MCU_16f1518_B1.c: 522: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	523
	
l9014:	
;MCU_16f1518_B1.c: 523: PMDATH=0;
	clrf	(404)^0180h	;volatile
	line	524
	
l9016:	
;MCU_16f1518_B1.c: 524: FREE=0;
	bcf	(3244/8)^0180h,(3244)&7	;volatile
	line	525
	
l9018:	
;MCU_16f1518_B1.c: 525: LWLO=1;
	bsf	(3245/8)^0180h,(3245)&7	;volatile
	line	526
	
l9020:	
;MCU_16f1518_B1.c: 526: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7	;volatile
	line	527
	
l9022:	
;MCU_16f1518_B1.c: 527: for(i=0 ; i<32 ; i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Write@i)
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u8751
	goto	u8750
u8751:
	goto	l9026
u8750:
	goto	l1744
	
l9024:	
	goto	l1744
	line	528
	
l1743:	
	line	529
	
l9026:	
;MCU_16f1518_B1.c: 528: {
;MCU_16f1518_B1.c: 529: PMADRL=i;
	movf	(Flash_Memory_Write@i),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	530
	
l9028:	
;MCU_16f1518_B1.c: 530: PMDATL=Memory->Data[i];
	movlb 0	; select bank0
	movf	(Flash_Memory_Write@i),w
	movlb 1	; select bank1
	addwf	(_Memory)^080h,w
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Write+0)+0
	movf	0+(??_Flash_Memory_Write+0)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movlb 3	; select bank3
	movwf	(403)^0180h	;volatile
	line	531
	
l9030:	
;MCU_16f1518_B1.c: 531: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	527
	
l9032:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Write+0)+0
	movf	(??_Flash_Memory_Write+0)+0,w
	addwf	(Flash_Memory_Write@i),f
	
l9034:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u8761
	goto	u8760
u8761:
	goto	l9026
u8760:
	
l1744:	
	line	533
;MCU_16f1518_B1.c: 532: }
;MCU_16f1518_B1.c: 533: LWLO=0;
	movlb 3	; select bank3
	bcf	(3245/8)^0180h,(3245)&7	;volatile
	line	534
	
l9036:	
;MCU_16f1518_B1.c: 534: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	535
	
l9038:	
;MCU_16f1518_B1.c: 535: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7	;volatile
	line	536
	
l1745:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Write
	__end_of_Flash_Memory_Write:
	signat	_Flash_Memory_Write,88
	global	_Flash_Memory_Unlock

;; *************** function _Flash_Memory_Unlock *****************
;; Defined at:
;;		line 497 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text87,local,class=CODE,delta=2,merge=1
	line	497
global __ptext87
__ptext87:	;psect for function _Flash_Memory_Unlock
psect	text87
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	497
	global	__size_of_Flash_Memory_Unlock
	__size_of_Flash_Memory_Unlock	equ	__end_of_Flash_Memory_Unlock-_Flash_Memory_Unlock
	
_Flash_Memory_Unlock:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Unlock: [wreg]
	line	499
	
l8880:	
;MCU_16f1518_B1.c: 499: PMCON2=0x55;
	movlw	(055h)
	movlb 3	; select bank3
	movwf	(406)^0180h	;volatile
	line	500
;MCU_16f1518_B1.c: 500: PMCON2=0xaa;
	movlw	(0AAh)
	movwf	(406)^0180h	;volatile
	line	501
	
l8882:	
;MCU_16f1518_B1.c: 501: WR=1;
	bsf	(3241/8)^0180h,(3241)&7	;volatile
	line	502
	
l8884:	
;MCU_16f1518_B1.c: 502: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	503
	
l8886:	
;MCU_16f1518_B1.c: 503: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	504
	
l1737:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Unlock
	__end_of_Flash_Memory_Unlock:
	signat	_Flash_Memory_Unlock,88
	global	_Flash_Memory_Read

;; *************** function _Flash_Memory_Read *****************
;; Defined at:
;;		line 506 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text88,local,class=CODE,delta=2,merge=1
	line	506
global __ptext88
__ptext88:	;psect for function _Flash_Memory_Read
psect	text88
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	506
	global	__size_of_Flash_Memory_Read
	__size_of_Flash_Memory_Read	equ	__end_of_Flash_Memory_Read-_Flash_Memory_Read
	
_Flash_Memory_Read:	
;incstack = 0
	opt	stack 9
; Regs used in _Flash_Memory_Read: [wreg+status,2]
;Flash_Memory_Read@address stored from wreg
	movlb 0	; select bank0
	movwf	(Flash_Memory_Read@address)
	line	508
	
l7048:	
;MCU_16f1518_B1.c: 508: char i,ret=0;
	clrf	(Flash_Memory_Read@ret)
	line	509
	
l7050:	
;MCU_16f1518_B1.c: 509: PMADRH=0x30;
	movlw	(030h)
	movlb 3	; select bank3
	movwf	(402)^0180h	;volatile
	line	510
	
l7052:	
;MCU_16f1518_B1.c: 510: PMADRL=address;
	movlb 0	; select bank0
	movf	(Flash_Memory_Read@address),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	511
	
l7054:	
;MCU_16f1518_B1.c: 511: CFGS=0;
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	512
	
l7056:	
;MCU_16f1518_B1.c: 512: RD=1;
	bsf	(3240/8)^0180h,(3240)&7	;volatile
	line	513
	
l7058:	
;MCU_16f1518_B1.c: 513: i=PMDATH;
	movf	(404)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@i)
	line	514
	
l7060:	
;MCU_16f1518_B1.c: 514: ret=PMDATL;
	movlb 3	; select bank3
	movf	(403)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@ret)
	line	515
	
l7062:	
;MCU_16f1518_B1.c: 515: return ret;
	movf	(Flash_Memory_Read@ret),w
	goto	l1740
	
l7064:	
	line	516
	
l1740:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Read
	__end_of_Flash_Memory_Read:
	signat	_Flash_Memory_Read,4217
	global	_DimmerLights_Main

;; *************** function _DimmerLights_Main *****************
;; Defined at:
;;		line 105 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_DimmerLights_Close
;;		_setDimmerLights_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text89,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	105
global __ptext89
__ptext89:	;psect for function _DimmerLights_Main
psect	text89
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	105
	global	__size_of_DimmerLights_Main
	__size_of_DimmerLights_Main	equ	__end_of_DimmerLights_Main-_DimmerLights_Main
	
_DimmerLights_Main:	
;incstack = 0
	opt	stack 7
; Regs used in _DimmerLights_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	108
	
l9708:	
;Dimmer_B1.c: 108: setDimmerLights_Main(1);
	movlw	(01h)
	fcall	_setDimmerLights_Main
	line	112
;Dimmer_B1.c: 112: setDimmerLights_Main(2);
	movlw	(02h)
	fcall	_setDimmerLights_Main
	line	119
;Dimmer_B1.c: 119: DimmerLights_Close();
	fcall	_DimmerLights_Close
	line	120
	
l892:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Main
	__end_of_DimmerLights_Main:
	signat	_DimmerLights_Main,88
	global	_setDimmerLights_Main

;; *************** function _setDimmerLights_Main *****************
;; Defined at:
;;		line 122 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   11[BANK0 ] unsigned char 
;;  clear           1   10[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_setBuz
;;		_setDimmerLights
;;		_setDimmerLights_Adj
;; This function is called by:
;;		_DimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text90,local,class=CODE,delta=2,merge=1
	line	122
global __ptext90
__ptext90:	;psect for function _setDimmerLights_Main
psect	text90
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	122
	global	__size_of_setDimmerLights_Main
	__size_of_setDimmerLights_Main	equ	__end_of_setDimmerLights_Main-_setDimmerLights_Main
	
_setDimmerLights_Main:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Main@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Main@lights)
	line	124
	
l9274:	
;Dimmer_B1.c: 124: char clear=1;
	clrf	(setDimmerLights_Main@clear)
	incf	(setDimmerLights_Main@clear),f
	line	125
	
l9276:	
;Dimmer_B1.c: 125: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	143
	
l9278:	
;Dimmer_B1.c: 143: if(lights == 1)
	movlb 0	; select bank0
	movf	(setDimmerLights_Main@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u9061
	goto	u9060
u9061:
	goto	l9282
u9060:
	line	145
	
l9280:	
;Dimmer_B1.c: 144: {
;Dimmer_B1.c: 145: clear=(!DimmerLights22->Clear)?0:1;
	movf	(_DimmerLights22),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,0
	movlw	1
	movwf	(setDimmerLights_Main@clear)
	line	146
;Dimmer_B1.c: 146: }
	goto	l9286
	line	147
	
l895:	
	
l9282:	
;Dimmer_B1.c: 147: else if(lights == 2)
	movf	(setDimmerLights_Main@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u9071
	goto	u9070
u9071:
	goto	l9286
u9070:
	line	149
	
l9284:	
;Dimmer_B1.c: 148: {
;Dimmer_B1.c: 149: clear=(!DimmerLights11->Clear)?0:1;
	movf	(_DimmerLights11),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,0
	movlw	1
	movwf	(setDimmerLights_Main@clear)
	goto	l9286
	line	150
	
l897:	
	goto	l9286
	line	153
	
l896:	
	
l9286:	
;Dimmer_B1.c: 150: }
;Dimmer_B1.c: 153: if(DimmerLights->Trigger)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9081
	goto	u9080
u9081:
	goto	l9304
u9080:
	line	155
	
l9288:	
;Dimmer_B1.c: 154: {
;Dimmer_B1.c: 155: if(clear)
	movf	(setDimmerLights_Main@clear),w
	skipz
	goto	u9090
	goto	l907
u9090:
	line	157
	
l9290:	
;Dimmer_B1.c: 156: {
;Dimmer_B1.c: 157: if(DimmerLights->Switch)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9101
	goto	u9100
u9101:
	goto	l9298
u9100:
	line	159
	
l9292:	
;Dimmer_B1.c: 158: {
;Dimmer_B1.c: 159: DimmerLights->Trigger=0;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	160
	
l9294:	
;Dimmer_B1.c: 160: setDimmerLights(lights,1);
	clrf	(setDimmerLights@status)
	incf	(setDimmerLights@status),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	line	163
	
l9296:	
;Dimmer_B1.c: 163: DimmerLights->Clear=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	165
;Dimmer_B1.c: 165: }
	goto	l907
	line	166
	
l900:	
	line	168
	
l9298:	
;Dimmer_B1.c: 166: else
;Dimmer_B1.c: 167: {
;Dimmer_B1.c: 168: DimmerLights->Trigger=0;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	169
	
l9300:	
;Dimmer_B1.c: 169: setDimmerLights(lights,0);
	clrf	(setDimmerLights@status)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	line	172
	
l9302:	
;Dimmer_B1.c: 172: DimmerLights->Clear=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	goto	l907
	line	174
	
l901:	
	goto	l907
	line	175
	
l899:	
	line	176
;Dimmer_B1.c: 174: }
;Dimmer_B1.c: 175: }
;Dimmer_B1.c: 176: }
	goto	l907
	line	177
	
l898:	
	line	179
	
l9304:	
;Dimmer_B1.c: 177: else
;Dimmer_B1.c: 178: {
;Dimmer_B1.c: 179: if(DimmerLights->TriggerAdj)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9111
	goto	u9110
u9111:
	goto	l907
u9110:
	line	181
	
l9306:	
;Dimmer_B1.c: 180: {
;Dimmer_B1.c: 181: if(clear)
	movf	(setDimmerLights_Main@clear),w
	skipz
	goto	u9120
	goto	l907
u9120:
	line	183
	
l9308:	
;Dimmer_B1.c: 182: {
;Dimmer_B1.c: 183: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	184
	
l9310:	
;Dimmer_B1.c: 184: DimmerLights->TriggerAdj=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	185
	
l9312:	
;Dimmer_B1.c: 185: if(DimmerLights->AdjGo)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9131
	goto	u9130
u9131:
	goto	l9316
u9130:
	line	187
	
l9314:	
;Dimmer_B1.c: 186: {
;Dimmer_B1.c: 187: setDimmerLights_Adj(lights,1);
	clrf	(setDimmerLights_Adj@status)
	incf	(setDimmerLights_Adj@status),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	line	188
;Dimmer_B1.c: 188: setBuz(1,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	189
;Dimmer_B1.c: 189: }
	movlb 0	; select bank0
	goto	l907
	line	190
	
l905:	
	line	192
	
l9316:	
;Dimmer_B1.c: 190: else
;Dimmer_B1.c: 191: {
;Dimmer_B1.c: 192: setDimmerLights_Adj(lights,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Adj@status)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	movlb 0	; select bank0
	goto	l907
	line	193
	
l906:	
	movlb 0	; select bank0
	goto	l907
	line	194
	
l904:	
	movlb 0	; select bank0
	goto	l907
	line	195
	
l903:	
	movlb 0	; select bank0
	goto	l907
	line	196
	
l902:	
	line	197
	
l907:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Main
	__end_of_setDimmerLights_Main:
	signat	_setDimmerLights_Main,4216
	global	_setDimmerLights_Adj

;; *************** function _setDimmerLights_Adj *****************
;; Defined at:
;;		line 379 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  status          1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    7[BANK0 ] unsigned char 
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
;;		_setLoad_StatusOff
;;		_setRF_DimmerLights
;;		_setTxData
;; This function is called by:
;;		_setDimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text91,local,class=CODE,delta=2,merge=1
	line	379
global __ptext91
__ptext91:	;psect for function _setDimmerLights_Adj
psect	text91
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	379
	global	__size_of_setDimmerLights_Adj
	__size_of_setDimmerLights_Adj	equ	__end_of_setDimmerLights_Adj-_setDimmerLights_Adj
	
_setDimmerLights_Adj:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_Adj: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Adj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Adj@lights)
	line	381
	
l8996:	
;Dimmer_B1.c: 381: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Adj@lights),w
	fcall	_DimmerLightsPointSelect
	line	382
	
l8998:	
;Dimmer_B1.c: 382: if(status)
	movlb 0	; select bank0
	movf	(setDimmerLights_Adj@status),w
	skipz
	goto	u8730
	goto	l9002
u8730:
	line	384
	
l9000:	
;Dimmer_B1.c: 383: {
;Dimmer_B1.c: 384: DimmerLights->AdjFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	385
;Dimmer_B1.c: 385: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	386
;Dimmer_B1.c: 386: }
	goto	l947
	line	387
	
l944:	
	line	389
	
l9002:	
;Dimmer_B1.c: 387: else
;Dimmer_B1.c: 388: {
;Dimmer_B1.c: 389: if(DimmerLights->AdjFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u8741
	goto	u8740
u8741:
	goto	l947
u8740:
	line	391
	
l9004:	
;Dimmer_B1.c: 390: {
;Dimmer_B1.c: 391: DimmerLights->Signal=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	392
;Dimmer_B1.c: 392: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	393
	
l9006:	
;Dimmer_B1.c: 393: setLoad_StatusOff(0,1);
	clrf	(setLoad_StatusOff@command)
	incf	(setLoad_StatusOff@command),f
	movlw	(0)
	fcall	_setLoad_StatusOff
	line	394
	
l9008:	
;Dimmer_B1.c: 394: DimmerLights->MaxmumValue=DimmerLights->DimmingValue;
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
	line	400
;Dimmer_B1.c: 400: setRF_DimmerLights(lights,1);
	clrf	(setRF_DimmerLights@on)
	incf	(setRF_DimmerLights@on),f
	movf	(setDimmerLights_Adj@lights),w
	fcall	_setRF_DimmerLights
	line	401
;Dimmer_B1.c: 401: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l947
	line	402
	
l946:	
	goto	l947
	line	403
	
l945:	
	line	404
	
l947:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Adj
	__end_of_setDimmerLights_Adj:
	signat	_setDimmerLights_Adj,8312
	global	_setLoad_StatusOff

;; *************** function _setLoad_StatusOff *****************
;; Defined at:
;;		line 280 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
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
psect	text92,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	280
global __ptext92
__ptext92:	;psect for function _setLoad_StatusOff
psect	text92
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	280
	global	__size_of_setLoad_StatusOff
	__size_of_setLoad_StatusOff	equ	__end_of_setLoad_StatusOff-_setLoad_StatusOff
	
_setLoad_StatusOff:	
;incstack = 0
	opt	stack 6
; Regs used in _setLoad_StatusOff: [wreg+fsr1l+fsr1h+status,2+status,0]
;setLoad_StatusOff@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_StatusOff@lights)
	line	282
	
l8654:	
;OverLoad_B1.c: 282: Load->StatusOff=command;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_StatusOff@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	283
	
l8656:	
;OverLoad_B1.c: 283: Load->SafeCount-=2;
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(02h)
	subwf	indf1,f
	line	284
	
l8658:	
;OverLoad_B1.c: 284: if(lights == 1)
	movf	(setLoad_StatusOff@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u8251
	goto	u8250
u8251:
	goto	l8662
u8250:
	line	286
	
l8660:	
;OverLoad_B1.c: 285: {
;OverLoad_B1.c: 286: Load->Lights1Status=0;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l8662
	line	287
	
l1958:	
	line	288
	
l8662:	
;OverLoad_B1.c: 287: }
;OverLoad_B1.c: 288: if(lights == 2)
	movf	(setLoad_StatusOff@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u8261
	goto	u8260
u8261:
	goto	l8666
u8260:
	line	290
	
l8664:	
;OverLoad_B1.c: 289: {
;OverLoad_B1.c: 290: Load->Lights2Status=0;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l8666
	line	291
	
l1959:	
	line	292
	
l8666:	
;OverLoad_B1.c: 291: }
;OverLoad_B1.c: 292: if(lights == 3)
	movf	(setLoad_StatusOff@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u8271
	goto	u8270
u8271:
	goto	l1961
u8270:
	line	294
	
l8668:	
;OverLoad_B1.c: 293: {
;OverLoad_B1.c: 294: Load->Lights3Status=0;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l1961
	line	295
	
l1960:	
	line	296
	
l1961:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_StatusOff
	__end_of_setLoad_StatusOff:
	signat	_setLoad_StatusOff,8312
	global	_setDimmerLights

;; *************** function _setDimmerLights *****************
;; Defined at:
;;		line 321 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text93,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	321
global __ptext93
__ptext93:	;psect for function _setDimmerLights
psect	text93
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	321
	global	__size_of_setDimmerLights
	__size_of_setDimmerLights	equ	__end_of_setDimmerLights-_setDimmerLights
	
_setDimmerLights:	
;incstack = 0
	opt	stack 5
; Regs used in _setDimmerLights: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights@lights)
	line	323
	
l8734:	
;Dimmer_B1.c: 323: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights@lights),w
	fcall	_DimmerLightsPointSelect
	line	324
	
l8736:	
;Dimmer_B1.c: 324: Dimmer->Load=lights;
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
	line	325
	
l8738:	
;Dimmer_B1.c: 325: if(status)
	movf	(setDimmerLights@status),w
	skipz
	goto	u8440
	goto	l8758
u8440:
	line	327
	
l8740:	
;Dimmer_B1.c: 326: {
;Dimmer_B1.c: 327: DimmerLights->Status=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	328
	
l8742:	
;Dimmer_B1.c: 328: setLED(lights,0);
	clrf	(setLED@command)
	movf	(setDimmerLights@lights),w
	fcall	_setLED
	line	330
	
l8744:	
;Dimmer_B1.c: 330: setLoad_Count(0);
	movlw	(0)
	fcall	_setLoad_Count
	line	332
;Dimmer_B1.c: 332: DimmerLights->Signal=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	333
;Dimmer_B1.c: 333: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	line	335
;Dimmer_B1.c: 335: if(!DimmerLights->StatusFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u8451
	goto	u8450
u8451:
	goto	l941
u8450:
	line	337
	
l8746:	
;Dimmer_B1.c: 336: {
;Dimmer_B1.c: 337: DimmerLights->StatusFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	338
	
l8748:	
;Dimmer_B1.c: 338: setLoad_StatusOn(lights,1);
	clrf	(setLoad_StatusOn@command)
	incf	(setLoad_StatusOn@command),f
	movf	(setDimmerLights@lights),w
	fcall	_setLoad_StatusOn
	line	339
	
l8750:	
;Dimmer_B1.c: 339: Memory->GO=0; if(!0) { Memory->Time=0; } ;;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	
l8752:	
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l8754
	
l939:	
	line	342
	
l8754:	
;Dimmer_B1.c: 342: DimmerLights->DimmingValue=DimmerLights->MaxmumValue;
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
	line	346
	
l8756:	
;Dimmer_B1.c: 346: DimmerLights->DimmingValue=((char)((100-55)*1.5));
	movlw	(043h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	goto	l941
	line	348
	
l938:	
	line	349
;Dimmer_B1.c: 348: }
;Dimmer_B1.c: 349: }
	goto	l941
	line	350
	
l937:	
	line	352
	
l8758:	
;Dimmer_B1.c: 350: else
;Dimmer_B1.c: 351: {
;Dimmer_B1.c: 352: DimmerLights->Status=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	354
;Dimmer_B1.c: 354: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
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
	line	361
;Dimmer_B1.c: 361: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	362
;Dimmer_B1.c: 362: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	363
;Dimmer_B1.c: 363: DimmerLights->AdjStatus=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	364
;Dimmer_B1.c: 364: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	goto	l941
	line	376
	
l940:	
	line	377
	
l941:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights
	__end_of_setDimmerLights:
	signat	_setDimmerLights,8312
	global	_setLoad_StatusOn

;; *************** function _setLoad_StatusOn *****************
;; Defined at:
;;		line 262 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
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
psect	text94,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	262
global __ptext94
__ptext94:	;psect for function _setLoad_StatusOn
psect	text94
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	262
	global	__size_of_setLoad_StatusOn
	__size_of_setLoad_StatusOn	equ	__end_of_setLoad_StatusOn-_setLoad_StatusOn
	
_setLoad_StatusOn:	
;incstack = 0
	opt	stack 6
; Regs used in _setLoad_StatusOn: [wregfsr1]
;setLoad_StatusOn@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_StatusOn@lights)
	line	264
	
l8720:	
;OverLoad_B1.c: 264: Load->GO=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,1
	line	265
;OverLoad_B1.c: 265: Load->StatusOn=command;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_StatusOn@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	267
	
l8722:	
;OverLoad_B1.c: 267: if(lights == 1)
	movf	(setLoad_StatusOn@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u8411
	goto	u8410
u8411:
	goto	l8726
u8410:
	line	269
	
l8724:	
;OverLoad_B1.c: 268: {
;OverLoad_B1.c: 269: Load->Lights1Status=1;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	goto	l8726
	line	270
	
l1952:	
	line	271
	
l8726:	
;OverLoad_B1.c: 270: }
;OverLoad_B1.c: 271: if(lights == 2)
	movf	(setLoad_StatusOn@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u8421
	goto	u8420
u8421:
	goto	l8730
u8420:
	line	273
	
l8728:	
;OverLoad_B1.c: 272: {
;OverLoad_B1.c: 273: Load->Lights2Status=1;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	goto	l8730
	line	274
	
l1953:	
	line	275
	
l8730:	
;OverLoad_B1.c: 274: }
;OverLoad_B1.c: 275: if(lights == 3)
	movf	(setLoad_StatusOn@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u8431
	goto	u8430
u8431:
	goto	l1955
u8430:
	line	277
	
l8732:	
;OverLoad_B1.c: 276: {
;OverLoad_B1.c: 277: Load->Lights3Status=1;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	goto	l1955
	line	278
	
l1954:	
	line	279
	
l1955:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_StatusOn
	__end_of_setLoad_StatusOn:
	signat	_setLoad_StatusOn,8312
	global	_setLoad_Count

;; *************** function _setLoad_Count *****************
;; Defined at:
;;		line 247 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
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
psect	text95,local,class=CODE,delta=2,merge=1
	line	247
global __ptext95
__ptext95:	;psect for function _setLoad_Count
psect	text95
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	247
	global	__size_of_setLoad_Count
	__size_of_setLoad_Count	equ	__end_of_setLoad_Count-_setLoad_Count
	
_setLoad_Count:	
;incstack = 0
	opt	stack 6
; Regs used in _setLoad_Count: [wregfsr1]
;setLoad_Count@command stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Count@command)
	line	249
	
l6626:	
;OverLoad_B1.c: 249: Load->Count=command;
	movf	(setLoad_Count@command),w
	movwf	(??_setLoad_Count+0)+0
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Count+0)+0,w
	movwf	indf1
	line	250
;OverLoad_B1.c: 250: Load->SafeCount=command;
	movf	(setLoad_Count@command),w
	movwf	(??_setLoad_Count+0)+0
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Count+0)+0,w
	movwf	indf1
	line	251
	
l1943:	
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
psect	text96,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	74
global __ptext96
__ptext96:	;psect for function _setLED
psect	text96
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
	
l8670:	
;LED_B1.c: 76: LedPointSelect(led);
	movf	(setLED@led),w
	fcall	_LedPointSelect
	line	77
	
l8672:	
;LED_B1.c: 77: if(command == 0)
	movlb 0	; select bank0
	movf	(setLED@command),f
	skipz
	goto	u8281
	goto	u8280
u8281:
	goto	l8686
u8280:
	line	80
	
l8674:	
;LED_B1.c: 78: {
;LED_B1.c: 80: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u8291
	goto	u8290
u8291:
	goto	l8678
u8290:
	line	85
	
l8676:	
;LED_B1.c: 81: {
;LED_B1.c: 85: RA3=1;
	bsf	(99/8),(99)&7	;volatile
	line	87
;LED_B1.c: 87: }
	goto	l1152
	line	90
	
l1131:	
	
l8678:	
;LED_B1.c: 90: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u8301
	goto	u8300
u8301:
	goto	l8682
u8300:
	line	95
	
l8680:	
;LED_B1.c: 91: {
;LED_B1.c: 95: RC7=1;
	bsf	(119/8),(119)&7	;volatile
	line	97
;LED_B1.c: 97: }
	goto	l1152
	line	110
	
l1133:	
	
l8682:	
;LED_B1.c: 110: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u8311
	goto	u8310
u8311:
	goto	l1152
u8310:
	line	115
	
l8684:	
;LED_B1.c: 111: {
;LED_B1.c: 115: RB5=1;
	bsf	(109/8),(109)&7	;volatile
	goto	l1152
	line	117
	
l1135:	
	goto	l1152
	line	119
	
l1134:	
	goto	l1152
	
l1132:	
;LED_B1.c: 117: }
;LED_B1.c: 119: }
	goto	l1152
	line	120
	
l1130:	
	
l8686:	
;LED_B1.c: 120: else if(command == 1)
	movf	(setLED@command),w
	xorlw	01h&0ffh
	skipz
	goto	u8321
	goto	u8320
u8321:
	goto	l8700
u8320:
	line	123
	
l8688:	
;LED_B1.c: 121: {
;LED_B1.c: 123: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u8331
	goto	u8330
u8331:
	goto	l8692
u8330:
	line	128
	
l8690:	
;LED_B1.c: 124: {
;LED_B1.c: 128: RA3=0;
	bcf	(99/8),(99)&7	;volatile
	line	130
;LED_B1.c: 130: }
	goto	l1152
	line	133
	
l1138:	
	
l8692:	
;LED_B1.c: 133: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u8341
	goto	u8340
u8341:
	goto	l8696
u8340:
	line	138
	
l8694:	
;LED_B1.c: 134: {
;LED_B1.c: 138: RC7=0;
	bcf	(119/8),(119)&7	;volatile
	line	140
;LED_B1.c: 140: }
	goto	l1152
	line	153
	
l1140:	
	
l8696:	
;LED_B1.c: 153: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u8351
	goto	u8350
u8351:
	goto	l1152
u8350:
	line	158
	
l8698:	
;LED_B1.c: 154: {
;LED_B1.c: 158: RB5=0;
	bcf	(109/8),(109)&7	;volatile
	goto	l1152
	line	160
	
l1142:	
	goto	l1152
	line	162
	
l1141:	
	goto	l1152
	
l1139:	
;LED_B1.c: 160: }
;LED_B1.c: 162: }
	goto	l1152
	line	163
	
l1137:	
	
l8700:	
;LED_B1.c: 163: else if(command == 10)
	movf	(setLED@command),w
	xorlw	0Ah&0ffh
	skipz
	goto	u8361
	goto	u8360
u8361:
	goto	l8716
u8360:
	line	165
	
l8702:	
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
	
l8704:	
;LED_B1.c: 168: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u8371
	goto	u8370
u8371:
	goto	l8708
u8370:
	line	173
	
l8706:	
;LED_B1.c: 169: {
;LED_B1.c: 173: RA3=1;
	bsf	(99/8),(99)&7	;volatile
	line	175
;LED_B1.c: 175: }
	goto	l1152
	line	178
	
l1145:	
	
l8708:	
;LED_B1.c: 178: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u8381
	goto	u8380
u8381:
	goto	l8712
u8380:
	line	183
	
l8710:	
;LED_B1.c: 179: {
;LED_B1.c: 183: RC7=1;
	bsf	(119/8),(119)&7	;volatile
	line	185
;LED_B1.c: 185: }
	goto	l1152
	line	198
	
l1147:	
	
l8712:	
;LED_B1.c: 198: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u8391
	goto	u8390
u8391:
	goto	l1152
u8390:
	line	203
	
l8714:	
;LED_B1.c: 199: {
;LED_B1.c: 203: RB5=1;
	bsf	(109/8),(109)&7	;volatile
	goto	l1152
	line	205
	
l1149:	
	goto	l1152
	line	207
	
l1148:	
	goto	l1152
	
l1146:	
;LED_B1.c: 205: }
;LED_B1.c: 207: }
	goto	l1152
	line	208
	
l1144:	
	
l8716:	
;LED_B1.c: 208: else if(command == 11)
	movf	(setLED@command),w
	xorlw	0Bh&0ffh
	skipz
	goto	u8401
	goto	u8400
u8401:
	goto	l1152
u8400:
	line	210
	
l8718:	
;LED_B1.c: 209: {
;LED_B1.c: 210: LED->GO=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l1152
	line	211
	
l1151:	
	goto	l1152
	line	212
	
l1150:	
	goto	l1152
	
l1143:	
	goto	l1152
	
l1136:	
	
l1152:	
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
psect	text97,local,class=CODE,delta=2,merge=1
	line	7
global __ptext97
__ptext97:	;psect for function _LedPointSelect
psect	text97
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
	
l6426:	
;LED_B1.c: 10: if(led == 1)
	movf	(LedPointSelect@led),w
	xorlw	01h&0ffh
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l6430
u4840:
	line	12
	
l6428:	
;LED_B1.c: 11: {
;LED_B1.c: 12: LED=&VarLED1;
	movlw	(_VarLED1)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	13
;LED_B1.c: 13: }
	goto	l1118
	line	16
	
l1113:	
	
l6430:	
;LED_B1.c: 16: else if(led == 2)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	02h&0ffh
	skipz
	goto	u4851
	goto	u4850
u4851:
	goto	l6434
u4850:
	line	18
	
l6432:	
;LED_B1.c: 17: {
;LED_B1.c: 18: LED=&VarLED2;
	movlw	(_VarLED2)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	19
;LED_B1.c: 19: }
	goto	l1118
	line	28
	
l1115:	
	
l6434:	
;LED_B1.c: 28: else if(led == 99)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	063h&0ffh
	skipz
	goto	u4861
	goto	u4860
u4861:
	goto	l1118
u4860:
	line	30
	
l6436:	
;LED_B1.c: 29: {
;LED_B1.c: 30: LED=&VarErrLED;
	movlw	(_VarErrLED)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	goto	l1118
	line	31
	
l1117:	
	goto	l1118
	line	33
	
l1116:	
	goto	l1118
	
l1114:	
	
l1118:	
	return
	opt stack 0
GLOBAL	__end_of_LedPointSelect
	__end_of_LedPointSelect:
	signat	_LedPointSelect,4216
	global	_DimmerLights_Close

;; *************** function _DimmerLights_Close *****************
;; Defined at:
;;		line 92 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text98,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	92
global __ptext98
__ptext98:	;psect for function _DimmerLights_Close
psect	text98
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	92
	global	__size_of_DimmerLights_Close
	__size_of_DimmerLights_Close	equ	__end_of_DimmerLights_Close-_DimmerLights_Close
	
_DimmerLights_Close:	
;incstack = 0
	opt	stack 9
; Regs used in _DimmerLights_Close: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	94
	
l9262:	
;Dimmer_B1.c: 94: if(Dimmer->Detect)
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9041
	goto	u9040
u9041:
	goto	l889
u9040:
	line	96
	
l9264:	
;Dimmer_B1.c: 95: {
;Dimmer_B1.c: 96: Dimmer->Detect=0;
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	97
	
l9266:	
;Dimmer_B1.c: 97: if(!getDimmerLights_StatusFlag())
	fcall	_getDimmerLights_StatusFlag
	iorlw	0
	skipz
	goto	u9051
	goto	u9050
u9051:
	goto	l889
u9050:
	line	99
	
l9268:	
;Dimmer_B1.c: 98: {
;Dimmer_B1.c: 99: setLoad_GO(0);
	movlw	(0)
	fcall	_setLoad_GO
	line	100
	
l9270:	
;Dimmer_B1.c: 100: Memory->GO=1; if(!1) { Memory->Time=1; } ;;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l889
	
l9272:	
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(01h)
	movwi	[0]fsr1
	movlw	high(01h)
	movwi	[1]fsr1
	goto	l889
	
l888:	
	goto	l889
	line	101
	
l887:	
	goto	l889
	line	102
	
l886:	
	line	103
	
l889:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Close
	__end_of_DimmerLights_Close:
	signat	_DimmerLights_Close,88
	global	_setLoad_GO

;; *************** function _setLoad_GO *****************
;; Defined at:
;;		line 258 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
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
psect	text99,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	258
global __ptext99
__ptext99:	;psect for function _setLoad_GO
psect	text99
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	258
	global	__size_of_setLoad_GO
	__size_of_setLoad_GO	equ	__end_of_setLoad_GO-_setLoad_GO
	
_setLoad_GO:	
;incstack = 0
	opt	stack 9
; Regs used in _setLoad_GO: [wregfsr1]
;setLoad_GO@command stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_GO@command)
	line	260
	
l8994:	
;OverLoad_B1.c: 260: Load->GO=command;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_GO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	261
	
l1949:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_GO
	__end_of_setLoad_GO:
	signat	_setLoad_GO,4216
	global	_getDimmerLights_StatusFlag

;; *************** function _getDimmerLights_StatusFlag *****************
;; Defined at:
;;		line 199 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Status          1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DimmerLights_Close
;;		_DimmerLights_Exceptions
;; This function uses a non-reentrant model
;;
psect	text100,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	199
global __ptext100
__ptext100:	;psect for function _getDimmerLights_StatusFlag
psect	text100
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	199
	global	__size_of_getDimmerLights_StatusFlag
	__size_of_getDimmerLights_StatusFlag	equ	__end_of_getDimmerLights_StatusFlag-_getDimmerLights_StatusFlag
	
_getDimmerLights_StatusFlag:	
;incstack = 0
	opt	stack 7
; Regs used in _getDimmerLights_StatusFlag: [wreg+fsr1l+fsr1h+status,2]
	line	201
	
l6688:	
;Dimmer_B1.c: 201: char Status=0;
	movlb 0	; select bank0
	clrf	(getDimmerLights_StatusFlag@Status)
	line	208
	
l6690:	
;Dimmer_B1.c: 208: Status=(DimmerLights11->StatusFlag || DimmerLights22->StatusFlag)?1:0;
	clrf	(_getDimmerLights_StatusFlag$1814)
	incf	(_getDimmerLights_StatusFlag$1814),f
	
l6692:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u5361
	goto	u5360
u5361:
	goto	l6698
u5360:
	
l6694:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u5371
	goto	u5370
u5371:
	goto	l6698
u5370:
	
l6696:	
	clrf	(_getDimmerLights_StatusFlag$1814)
	goto	l6698
	
l911:	
	
l6698:	
	movf	(_getDimmerLights_StatusFlag$1814),w
	movwf	(??_getDimmerLights_StatusFlag+0)+0
	movf	(??_getDimmerLights_StatusFlag+0)+0,w
	movwf	(getDimmerLights_StatusFlag@Status)
	line	215
	
l6700:	
;Dimmer_B1.c: 215: return Status;
	movf	(getDimmerLights_StatusFlag@Status),w
	goto	l912
	
l6702:	
	line	216
	
l912:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmerLights_StatusFlag
	__end_of_getDimmerLights_StatusFlag:
	signat	_getDimmerLights_StatusFlag,89
	global	_DimmerLights_Initialization

;; *************** function _DimmerLights_Initialization *****************
;; Defined at:
;;		line 32 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text101,local,class=CODE,delta=2,merge=1
	line	32
global __ptext101
__ptext101:	;psect for function _DimmerLights_Initialization
psect	text101
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	32
	global	__size_of_DimmerLights_Initialization
	__size_of_DimmerLights_Initialization	equ	__end_of_DimmerLights_Initialization-_DimmerLights_Initialization
	
_DimmerLights_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _DimmerLights_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	35
	
l7958:	
;Dimmer_B1.c: 35: DimmerLights11=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movlb 0	; select bank0
	movwf	(??_DimmerLights_Initialization+0)+0
	movf	(??_DimmerLights_Initialization+0)+0,w
	movwf	(_DimmerLights11)
	line	36
	
l7960:	
;Dimmer_B1.c: 36: setDimmerLights_Initialization(1);
	movlw	(01h)
	fcall	_setDimmerLights_Initialization
	line	40
	
l7962:	
;Dimmer_B1.c: 40: DimmerLights22=&DimmerLights2;
	movlw	(_DimmerLights2)&0ffh
	movlb 0	; select bank0
	movwf	(??_DimmerLights_Initialization+0)+0
	movf	(??_DimmerLights_Initialization+0)+0,w
	movwf	(_DimmerLights22)
	line	41
;Dimmer_B1.c: 41: setDimmerLights_Initialization(2);
	movlw	(02h)
	fcall	_setDimmerLights_Initialization
	line	50
	
l7964:	
;Dimmer_B1.c: 50: Dimmer_Initialization();
	fcall	_Dimmer_Initialization
	line	53
	
l880:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Initialization
	__end_of_DimmerLights_Initialization:
	signat	_DimmerLights_Initialization,88
	global	_setDimmerLights_Initialization

;; *************** function _setDimmerLights_Initialization *****************
;; Defined at:
;;		line 54 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text102,local,class=CODE,delta=2,merge=1
	line	54
global __ptext102
__ptext102:	;psect for function _setDimmerLights_Initialization
psect	text102
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	54
	global	__size_of_setDimmerLights_Initialization
	__size_of_setDimmerLights_Initialization	equ	__end_of_setDimmerLights_Initialization-_setDimmerLights_Initialization
	
_setDimmerLights_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _setDimmerLights_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Initialization@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Initialization@lights)
	line	56
	
l7354:	
;Dimmer_B1.c: 56: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Initialization@lights),w
	fcall	_DimmerLightsPointSelect
	line	57
	
l7356:	
;Dimmer_B1.c: 57: DimmerLights->Clear=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	63
	
l7358:	
;Dimmer_B1.c: 63: DimmerLights->MaxmumValue=((char)((100-55)*1.5));
	movlw	(043h)
	movwf	(??_setDimmerLights_Initialization+0)+0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Initialization+0)+0,w
	movwf	indf1
	line	64
	
l7360:	
;Dimmer_B1.c: 64: DimmerLights->MinimumValue=((char)((100-20)*1.5));
	movlw	(078h)
	movwf	(??_setDimmerLights_Initialization+0)+0
	movf	(_DimmerLights),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Initialization+0)+0,w
	movwf	indf1
	line	74
	
l7362:	
;Dimmer_B1.c: 74: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
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
	line	90
	
l883:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Initialization
	__end_of_setDimmerLights_Initialization:
	signat	_setDimmerLights_Initialization,4216
	global	_Dimmer_Initialization

;; *************** function _Dimmer_Initialization *****************
;; Defined at:
;;		line 509 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text103,local,class=CODE,delta=2,merge=1
	line	509
global __ptext103
__ptext103:	;psect for function _Dimmer_Initialization
psect	text103
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	509
	global	__size_of_Dimmer_Initialization
	__size_of_Dimmer_Initialization	equ	__end_of_Dimmer_Initialization-_Dimmer_Initialization
	
_Dimmer_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Dimmer_Initialization: [wreg]
	line	511
	
l7364:	
;Dimmer_B1.c: 511: Dimmer=&Dimmer1;
	movlw	(_Dimmer1)&0ffh
	movlb 0	; select bank0
	movwf	(??_Dimmer_Initialization+0)+0
	movf	(??_Dimmer_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Dimmer)^080h
	line	512
	
l980:	
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DlyOff_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text104,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	45
global __ptext104
__ptext104:	;psect for function _DelayOff_Main
psect	text104
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	45
	global	__size_of_DelayOff_Main
	__size_of_DelayOff_Main	equ	__end_of_DelayOff_Main-_DelayOff_Main
	
_DelayOff_Main:	
;incstack = 0
	opt	stack 8
; Regs used in _DelayOff_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	48
	
l9706:	
;DelayOff_B1.c: 48: DlyOff_Main(1);
	movlw	(01h)
	fcall	_DlyOff_Main
	line	52
;DelayOff_B1.c: 52: DlyOff_Main(2);
	movlw	(02h)
	fcall	_DlyOff_Main
	line	58
	
l682:	
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
;;  sw              1   12[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    6
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
psect	text105,local,class=CODE,delta=2,merge=1
	line	66
global __ptext105
__ptext105:	;psect for function _DlyOff_Main
psect	text105
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	66
	global	__size_of_DlyOff_Main
	__size_of_DlyOff_Main	equ	__end_of_DlyOff_Main-_DlyOff_Main
	
_DlyOff_Main:	
;incstack = 0
	opt	stack 8
; Regs used in _DlyOff_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;DlyOff_Main@sw stored from wreg
	movlb 0	; select bank0
	movwf	(DlyOff_Main@sw)
	line	68
	
l9230:	
;DelayOff_B1.c: 68: DelayOffPointSelect(sw);
	movf	(DlyOff_Main@sw),w
	fcall	_DelayOffPointSelect
	line	69
	
l9232:	
;DelayOff_B1.c: 69: if(DelayOff->GO)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9011
	goto	u9010
u9011:
	goto	l691
u9010:
	line	71
	
l9234:	
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
	
l9236:	
;DelayOff_B1.c: 72: if(DelayOff->SecondTime >= 5650)
	movf	(_DelayOff)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_DlyOff_Main+0)+0+1
	movlw	high(01612h)
	subwf	1+(??_DlyOff_Main+0)+0,w
	movlw	low(01612h)
	skipnz
	subwf	0+(??_DlyOff_Main+0)+0,w
	skipc
	goto	u9021
	goto	u9020
u9021:
	goto	l691
u9020:
	line	74
	
l9238:	
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
	
l9240:	
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
	
l9242:	
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
	goto	u9031
	goto	u9030
u9031:
	goto	l691
u9030:
	line	78
	
l9244:	
;DelayOff_B1.c: 77: {
;DelayOff_B1.c: 78: DelayOff->MinuteTime=0;
	movf	(_DelayOff)^080h,w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	79
	
l9246:	
;DelayOff_B1.c: 79: DelayOff->GO=0;
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	80
	
l9248:	
;DelayOff_B1.c: 80: setSw_Status(sw,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setSw_Status
	line	81
	
l9250:	
;DelayOff_B1.c: 81: setRFSW_Status(sw,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setRFSW_Status
	line	82
	
l9252:	
;DelayOff_B1.c: 82: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	movf	(DlyOff_Main@sw),w
	fcall	_setRF_DimmerLights
	line	83
	
l9254:	
;DelayOff_B1.c: 83: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Trigger
	line	84
	
l9256:	
;DelayOff_B1.c: 84: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Switch
	line	85
	
l9258:	
;DelayOff_B1.c: 85: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	86
	
l9260:	
;DelayOff_B1.c: 86: setBuz(1,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	goto	l691
	line	87
	
l690:	
	goto	l691
	line	88
	
l689:	
	goto	l691
	line	89
	
l688:	
	line	90
	
l691:	
	return
	opt stack 0
GLOBAL	__end_of_DlyOff_Main
	__end_of_DlyOff_Main:
	signat	_DlyOff_Main,4216
	global	_setTxData

;; *************** function _setTxData *****************
;; Defined at:
;;		line 133 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text106,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	133
global __ptext106
__ptext106:	;psect for function _setTxData
psect	text106
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	133
	global	__size_of_setTxData
	__size_of_setTxData	equ	__end_of_setTxData-_setTxData
	
_setTxData:	
;incstack = 0
	opt	stack 7
; Regs used in _setTxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setTxData@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setTxData@rf)
	line	136
	
l6518:	
;RF_Control_B1.c: 135: char i;
;RF_Control_B1.c: 136: RfPointSelect(rf);
	movf	(setTxData@rf),w
	fcall	_RfPointSelect
	line	137
	
l6520:	
;RF_Control_B1.c: 137: if(RF->Enable)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u5021
	goto	u5020
u5021:
	goto	l2680
u5020:
	line	140
	
l6522:	
;RF_Control_B1.c: 138: {
;RF_Control_B1.c: 140: if(!RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u5031
	goto	u5030
u5031:
	goto	l2680
u5030:
	line	142
	
l6524:	
;RF_Control_B1.c: 141: {
;RF_Control_B1.c: 142: RF->TransceiveGO=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	151
	
l6526:	
;RF_Control_B1.c: 151: RF_Data[0]=0x63;
	movlw	(063h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RF_Data)^080h
	line	152
	
l6528:	
;RF_Control_B1.c: 152: RF_Data[1]=0x02;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+01h
	line	153
;RF_Control_B1.c: 153: RF_Data[2]=Product->Data[2];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[02h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+02h
	line	154
;RF_Control_B1.c: 154: RF_Data[3]=Product->Data[3];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[03h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+03h
	line	155
;RF_Control_B1.c: 155: RF_Data[4]=Product->Data[4];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[04h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+04h
	line	156
;RF_Control_B1.c: 156: RF_Data[5]=Product->Data[5];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[05h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+05h
	line	157
;RF_Control_B1.c: 157: RF_Data[6]=Product->Data[6];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[06h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+06h
	line	158
;RF_Control_B1.c: 158: RF_Data[7]=Product->Data[7];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[07h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+07h
	line	159
;RF_Control_B1.c: 159: RF_Data[8]=Product->Data[8];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[08h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+08h
	line	160
;RF_Control_B1.c: 160: RF_Data[9]=Product->Data[9];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[09h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+09h
	line	161
;RF_Control_B1.c: 161: RF_Data[10]=Product->Data[10];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Ah]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Ah
	line	162
;RF_Control_B1.c: 162: RF_Data[11]=Product->Data[11];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Bh]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Bh
	line	163
;RF_Control_B1.c: 163: RF_Data[12]=Product->Data[12];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Ch]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Ch
	line	164
;RF_Control_B1.c: 164: RF_Data[13]=Product->Data[13];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Dh]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Dh
	line	165
;RF_Control_B1.c: 165: RF_Data[14]=Product->Data[14];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Eh]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Eh
	line	166
;RF_Control_B1.c: 166: RF_Data[15]=Product->Data[15];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Fh]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Fh
	line	167
;RF_Control_B1.c: 167: RF_Data[16]=Product->Data[16];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[010h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+010h
	line	168
;RF_Control_B1.c: 168: RF_Data[17]=Product->Data[17];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[011h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+011h
	line	169
;RF_Control_B1.c: 169: RF_Data[18]=Product->Data[18];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[012h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+012h
	line	170
;RF_Control_B1.c: 170: RF_Data[19]=Product->Data[19];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[013h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+013h
	line	171
	
l6530:	
;RF_Control_B1.c: 171: RF_Data[20]=2;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+014h
	goto	l2680
	line	173
	
l2679:	
	goto	l2680
	line	175
	
l2678:	
	line	176
	
l2680:	
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
psect	text107,local,class=CODE,delta=2,merge=1
	line	7
global __ptext107
__ptext107:	;psect for function _RfPointSelect
psect	text107
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
	
l6438:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u4871
	goto	u4870
u4871:
	goto	l2641
u4870:
	line	12
	
l6440:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??_RfPointSelect+0)+0
	movf	(??_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	l2641
	line	13
	
l2640:	
	line	15
	
l2641:	
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
psect	text108,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	106
global __ptext108
__ptext108:	;psect for function _setSw_Status
psect	text108
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
	
l8638:	
;Switch_B1.c: 108: SwPointSelect(sw);
	movf	(setSw_Status@sw),w
	fcall	_SwPointSelect
	line	109
	
l8640:	
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
	
l2944:	
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
psect	text109,local,class=CODE,delta=2,merge=1
	line	16
global __ptext109
__ptext109:	;psect for function _SwPointSelect
psect	text109
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
	
l6448:	
;Switch_B1.c: 19: if(sw == 1)
	movf	(SwPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u4901
	goto	u4900
u4901:
	goto	l6452
u4900:
	line	21
	
l6450:	
;Switch_B1.c: 20: {
;Switch_B1.c: 21: Sw=&Sw1;
	movlw	(_Sw1)&0ffh
	movwf	(??_SwPointSelect+0)+0
	movf	(??_SwPointSelect+0)+0,w
	movwf	(_Sw)
	line	22
;Switch_B1.c: 22: }
	goto	l2929
	line	25
	
l2926:	
	
l6452:	
;Switch_B1.c: 25: else if(sw == 2)
	movf	(SwPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u4911
	goto	u4910
u4911:
	goto	l2929
u4910:
	line	27
	
l6454:	
;Switch_B1.c: 26: {
;Switch_B1.c: 27: Sw=&Sw2;
	movlw	(_Sw2)&0ffh
	movwf	(??_SwPointSelect+0)+0
	movf	(??_SwPointSelect+0)+0,w
	movwf	(_Sw)
	goto	l2929
	line	28
	
l2928:	
	goto	l2929
	line	36
	
l2927:	
	
l2929:	
	return
	opt stack 0
GLOBAL	__end_of_SwPointSelect
	__end_of_SwPointSelect:
	signat	_SwPointSelect,4216
	global	_setRF_DimmerLights

;; *************** function _setRF_DimmerLights *****************
;; Defined at:
;;		line 437 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  on              1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    4[BANK0 ] unsigned char 
;;  status          1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_Adj
;;		_setRFSW_Control
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerOffFunc
;; This function uses a non-reentrant model
;;
psect	text110,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	437
global __ptext110
__ptext110:	;psect for function _setRF_DimmerLights
psect	text110
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	437
	global	__size_of_setRF_DimmerLights
	__size_of_setRF_DimmerLights	equ	__end_of_setRF_DimmerLights-_setRF_DimmerLights
	
_setRF_DimmerLights:	
;incstack = 0
	opt	stack 8
; Regs used in _setRF_DimmerLights: [wreg+fsr1l+fsr1h+status,2+status,0]
;setRF_DimmerLights@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_DimmerLights@lights)
	line	440
	
l6494:	
;RF_Control_B1.c: 439: char status;
;RF_Control_B1.c: 440: status=1;
	clrf	(setRF_DimmerLights@status)
	incf	(setRF_DimmerLights@status),f
	line	441
	
l6496:	
;RF_Control_B1.c: 441: status<<=(lights-1);
	movf	(setRF_DimmerLights@lights),w
	addlw	-1
	incf	wreg,f
	
	goto	u5000
u5005:
	clrc
	rlf	(setRF_DimmerLights@status),f
u5000:
	addlw	-1
	skipz
	goto	u5005
	line	442
	
l6498:	
;RF_Control_B1.c: 442: Product->Data[11]=lights;
	movf	(setRF_DimmerLights@lights),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	line	443
	
l6500:	
;RF_Control_B1.c: 443: Product->Data[9]=Product->Data[20+lights];
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
	line	444
	
l6502:	
;RF_Control_B1.c: 444: Product->Data[17]=Product->Data[26+lights];
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
	line	445
	
l6504:	
;RF_Control_B1.c: 445: if(on)
	movf	(setRF_DimmerLights@on),w
	skipz
	goto	u5010
	goto	l6508
u5010:
	line	447
	
l6506:	
;RF_Control_B1.c: 446: {
;RF_Control_B1.c: 447: Product->Data[15]=(Product->Data[15]|status);
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
	line	448
;RF_Control_B1.c: 448: }
	goto	l2749
	line	449
	
l2747:	
	line	451
	
l6508:	
;RF_Control_B1.c: 449: else
;RF_Control_B1.c: 450: {
;RF_Control_B1.c: 451: Product->Data[15]=(Product->Data[15]&(~status));
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
	goto	l2749
	line	452
	
l2748:	
	line	453
	
l2749:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerLights
	__end_of_setRF_DimmerLights:
	signat	_setRF_DimmerLights,8312
	global	_setRFSW_Status

;; *************** function _setRFSW_Status *****************
;; Defined at:
;;		line 417 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text111,local,class=CODE,delta=2,merge=1
	line	417
global __ptext111
__ptext111:	;psect for function _setRFSW_Status
psect	text111
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	417
	global	__size_of_setRFSW_Status
	__size_of_setRFSW_Status	equ	__end_of_setRFSW_Status-_setRFSW_Status
	
_setRFSW_Status:	
;incstack = 0
	opt	stack 5
; Regs used in _setRFSW_Status: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRFSW_Status@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_Status@sw)
	line	419
	
l8642:	
;RF_Control_B1.c: 419: RfSWPointSelect(sw);
	movf	(setRFSW_Status@sw),w
	fcall	_RfSWPointSelect
	line	420
	
l8644:	
;RF_Control_B1.c: 420: RFSW->Status=command;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRFSW_Status@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	421
	
l2740:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_Status
	__end_of_setRFSW_Status:
	signat	_setRFSW_Status,8312
	global	_RfSWPointSelect

;; *************** function _RfSWPointSelect *****************
;; Defined at:
;;		line 339 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text112,local,class=CODE,delta=2,merge=1
	line	339
global __ptext112
__ptext112:	;psect for function _RfSWPointSelect
psect	text112
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	339
	global	__size_of_RfSWPointSelect
	__size_of_RfSWPointSelect	equ	__end_of_RfSWPointSelect-_RfSWPointSelect
	
_RfSWPointSelect:	
;incstack = 0
	opt	stack 5
; Regs used in _RfSWPointSelect: [wreg]
;RfSWPointSelect@sw stored from wreg
	movlb 0	; select bank0
	movwf	(RfSWPointSelect@sw)
	line	342
	
l6442:	
;RF_Control_B1.c: 342: if(sw == 1)
	movf	(RfSWPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u4881
	goto	u4880
u4881:
	goto	l2722
u4880:
	line	344
	
l6444:	
;RF_Control_B1.c: 343: {
;RF_Control_B1.c: 344: RFSW=&RFSW1;
	movlw	(_RFSW1)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	line	345
	
l2722:	
	line	348
;RF_Control_B1.c: 345: }
;RF_Control_B1.c: 348: if(sw == 2)
	movlb 0	; select bank0
	movf	(RfSWPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u4891
	goto	u4890
u4891:
	goto	l2724
u4890:
	line	350
	
l6446:	
;RF_Control_B1.c: 349: {
;RF_Control_B1.c: 350: RFSW=&RFSW2;
	movlw	(_RFSW2)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	goto	l2724
	line	351
	
l2723:	
	line	359
	
l2724:	
	return
	opt stack 0
GLOBAL	__end_of_RfSWPointSelect
	__end_of_RfSWPointSelect:
	signat	_RfSWPointSelect,4216
	global	_setDimmerLights_Trigger

;; *************** function _setDimmerLights_Trigger *****************
;; Defined at:
;;		line 434 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text113,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	434
global __ptext113
__ptext113:	;psect for function _setDimmerLights_Trigger
psect	text113
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	434
	global	__size_of_setDimmerLights_Trigger
	__size_of_setDimmerLights_Trigger	equ	__end_of_setDimmerLights_Trigger-_setDimmerLights_Trigger
	
_setDimmerLights_Trigger:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_Trigger: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Trigger@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Trigger@lights)
	line	436
	
l8646:	
;Dimmer_B1.c: 436: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Trigger@lights),w
	fcall	_DimmerLightsPointSelect
	line	437
	
l8648:	
;Dimmer_B1.c: 437: DimmerLights->Trigger=command;
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
	line	438
	
l965:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Trigger
	__end_of_setDimmerLights_Trigger:
	signat	_setDimmerLights_Trigger,8312
	global	_setDimmerLights_Switch

;; *************** function _setDimmerLights_Switch *****************
;; Defined at:
;;		line 424 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text114,local,class=CODE,delta=2,merge=1
	line	424
global __ptext114
__ptext114:	;psect for function _setDimmerLights_Switch
psect	text114
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	424
	global	__size_of_setDimmerLights_Switch
	__size_of_setDimmerLights_Switch	equ	__end_of_setDimmerLights_Switch-_setDimmerLights_Switch
	
_setDimmerLights_Switch:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_Switch: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Switch@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Switch@lights)
	line	426
	
l8650:	
;Dimmer_B1.c: 426: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Switch@lights),w
	fcall	_DimmerLightsPointSelect
	line	427
	
l8652:	
;Dimmer_B1.c: 427: DimmerLights->Switch=command;
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
	line	428
	
l959:	
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
psect	text115,local,class=CODE,delta=2,merge=1
	line	7
global __ptext115
__ptext115:	;psect for function _DimmerLightsPointSelect
psect	text115
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
	
l6370:	
;Dimmer_B1.c: 10: if(lights == 1)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u4741
	goto	u4740
u4741:
	goto	l875
u4740:
	line	12
	
l6372:	
;Dimmer_B1.c: 11: {
;Dimmer_B1.c: 12: DimmerLights=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	line	13
	
l875:	
	line	17
;Dimmer_B1.c: 13: }
;Dimmer_B1.c: 17: if(lights == 2)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u4751
	goto	u4750
u4751:
	goto	l877
u4750:
	line	19
	
l6374:	
;Dimmer_B1.c: 18: {
;Dimmer_B1.c: 19: DimmerLights=&DimmerLights2;
	movlw	(_DimmerLights2)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	goto	l877
	line	20
	
l876:	
	line	29
	
l877:	
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
psect	text116,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	22
global __ptext116
__ptext116:	;psect for function _setBuz
psect	text116
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
	
l8620:	
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
	
l8622:	
;Buzzer_B1.c: 25: if(Buz->Enable)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u8211
	goto	u8210
u8211:
	goto	l135
u8210:
	line	27
	
l8624:	
;Buzzer_B1.c: 26: {
;Buzzer_B1.c: 27: if(!Buz->GO)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u8221
	goto	u8220
u8221:
	goto	l8630
u8220:
	line	29
	
l8626:	
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
	
l8628:	
;Buzzer_B1.c: 33: RB3=1;
	bsf	(107/8),(107)&7	;volatile
	line	34
;Buzzer_B1.c: 34: }
	goto	l135
	line	35
	
l130:	
	line	37
	
l8630:	
;Buzzer_B1.c: 35: else
;Buzzer_B1.c: 36: {
;Buzzer_B1.c: 37: if(!Buz->BufferStatus1)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u8231
	goto	u8230
u8231:
	goto	l8634
u8230:
	line	39
	
l8632:	
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
	goto	l135
	line	43
	
l132:	
	
l8634:	
;Buzzer_B1.c: 43: else if(!Buz->BufferStatus2)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u8241
	goto	u8240
u8241:
	goto	l135
u8240:
	line	45
	
l8636:	
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
	goto	l135
	line	48
	
l134:	
	goto	l135
	line	49
	
l133:	
	goto	l135
	
l131:	
	goto	l135
	line	50
	
l129:	
	line	51
	
l135:	
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
psect	text117,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul16.c"
	line	15
global __ptext117
__ptext117:	;psect for function ___wmul
psect	text117
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l8608:	
	movlb 0	; select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l8610
	line	44
	
l3236:	
	line	45
	
l8610:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u8171
	goto	u8170
u8171:
	goto	l3237
u8170:
	line	46
	
l8612:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	
l3237:	
	line	47
	movlw	01h
	
u8185:
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	decfsz	wreg,f
	goto	u8185
	line	48
	
l8614:	
	movlw	01h
	
u8195:
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	decfsz	wreg,f
	goto	u8195
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u8201
	goto	u8200
u8201:
	goto	l8610
u8200:
	goto	l8616
	
l3238:	
	line	52
	
l8616:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l3239
	
l8618:	
	line	53
	
l3239:	
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
psect	text118,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	30
global __ptext118
__ptext118:	;psect for function _DelayOff_Initialization
psect	text118
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	30
	global	__size_of_DelayOff_Initialization
	__size_of_DelayOff_Initialization	equ	__end_of_DelayOff_Initialization-_DelayOff_Initialization
	
_DelayOff_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _DelayOff_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	33
	
l9704:	
;DelayOff_B1.c: 33: DlyOff_Initialization(1);
	movlw	(01h)
	fcall	_DlyOff_Initialization
	line	37
;DelayOff_B1.c: 37: DlyOff_Initialization(2);
	movlw	(02h)
	fcall	_DlyOff_Initialization
	line	43
	
l679:	
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
psect	text119,local,class=CODE,delta=2,merge=1
	line	60
global __ptext119
__ptext119:	;psect for function _DlyOff_Initialization
psect	text119
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
	
l9226:	
;DelayOff_B1.c: 62: DelayOffPointSelect(sw);
	movf	(DlyOff_Initialization@sw),w
	fcall	_DelayOffPointSelect
	line	63
	
l9228:	
;DelayOff_B1.c: 63: DelayOff->Enable=1;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	64
	
l685:	
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
psect	text120,local,class=CODE,delta=2,merge=1
	line	8
global __ptext120
__ptext120:	;psect for function _DelayOffPointSelect
psect	text120
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
	
l6384:	
;DelayOff_B1.c: 11: if(sw == 1)
	movf	(DelayOffPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u4761
	goto	u4760
u4761:
	goto	l6388
u4760:
	line	13
	
l6386:	
;DelayOff_B1.c: 12: {
;DelayOff_B1.c: 13: DelayOff=&DlySw1;
	movlw	(_DlySw1)&0ffh
	movwf	(??_DelayOffPointSelect+0)+0
	movf	(??_DelayOffPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_DelayOff)^080h
	line	14
;DelayOff_B1.c: 14: }
	goto	l676
	line	17
	
l673:	
	
l6388:	
;DelayOff_B1.c: 17: else if(sw == 2)
	movlb 0	; select bank0
	movf	(DelayOffPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u4771
	goto	u4770
u4771:
	goto	l676
u4770:
	line	19
	
l6390:	
;DelayOff_B1.c: 18: {
;DelayOff_B1.c: 19: DelayOff=&DlySw2;
	movlw	(_DlySw2)&0ffh
	movwf	(??_DelayOffPointSelect+0)+0
	movf	(??_DelayOffPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_DelayOff)^080h
	goto	l676
	line	20
	
l675:	
	goto	l676
	line	28
	
l674:	
	
l676:	
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
psect	text121,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	97
global __ptext121
__ptext121:	;psect for function _CC2500_PowerOnInitial
psect	text121
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	97
	global	__size_of_CC2500_PowerOnInitial
	__size_of_CC2500_PowerOnInitial	equ	__end_of_CC2500_PowerOnInitial-_CC2500_PowerOnInitial
	
_CC2500_PowerOnInitial:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_PowerOnInitial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	99
	
l9698:	
;CC2500_B1.c: 99: CC2500_PowerRST();
	fcall	_CC2500_PowerRST
	line	100
	
l9700:	
;CC2500_B1.c: 100: CC2500_InitSetREG();
	fcall	_CC2500_InitSetREG
	line	101
	
l9702:	
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
	
l337:	
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
psect	text122,local,class=CODE,delta=2,merge=1
	line	183
global __ptext122
__ptext122:	;psect for function _CC2500_SIDLEMode
psect	text122
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	183
	global	__size_of_CC2500_SIDLEMode
	__size_of_CC2500_SIDLEMode	equ	__end_of_CC2500_SIDLEMode-_CC2500_SIDLEMode
	
_CC2500_SIDLEMode:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_SIDLEMode: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l9224:	
;CC2500_B1.c: 185: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	186
	
l368:	
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
psect	text123,local,class=CODE,delta=2,merge=1
	line	110
global __ptext123
__ptext123:	;psect for function _CC2500_PowerRST
psect	text123
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	110
	global	__size_of_CC2500_PowerRST
	__size_of_CC2500_PowerRST	equ	__end_of_CC2500_PowerRST-_CC2500_PowerRST
	
_CC2500_PowerRST:	
;incstack = 0
	opt	stack 9
; Regs used in _CC2500_PowerRST: [wreg+status,2+status,0+pclath+cstack]
	line	112
	
l9204:	
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
	
l9206:	
;CC2500_B1.c: 115: DelayTime_1us(10);
	movlw	low(0Ah)
	movwf	(DelayTime_1us@count)
	movlw	high(0Ah)
	movwf	((DelayTime_1us@count))+1
	fcall	_DelayTime_1us
	line	116
	
l9208:	
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
	
l9210:	
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
	
l9212:	
;CC2500_B1.c: 120: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	121
	
l9214:	
;CC2500_B1.c: 121: SPI0Buffer=0x30;
	movlw	(030h)
	movwf	(??_CC2500_PowerRST+0)+0
	movf	(??_CC2500_PowerRST+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	122
;CC2500_B1.c: 122: while(RC2==1);
	goto	l340
	
l341:	
	
l340:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u8991
	goto	u8990
u8991:
	goto	l340
u8990:
	goto	l9216
	
l342:	
	line	123
	
l9216:	
;CC2500_B1.c: 123: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	124
;CC2500_B1.c: 124: while(RC2==1);
	goto	l343
	
l344:	
	
l343:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u9001
	goto	u9000
u9001:
	goto	l343
u9000:
	
l345:	
	line	125
;CC2500_B1.c: 125: RC0=0;
	bcf	(112/8),(112)&7	;volatile
	line	126
;CC2500_B1.c: 126: RC4=1;
	bsf	(116/8),(116)&7	;volatile
	line	127
	
l346:	
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
psect	text124,local,class=CODE,delta=2,merge=1
	line	131
global __ptext124
__ptext124:	;psect for function _CC2500_InitSetREG
psect	text124
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	131
	global	__size_of_CC2500_InitSetREG
	__size_of_CC2500_InitSetREG	equ	__end_of_CC2500_InitSetREG-_CC2500_InitSetREG
	
_CC2500_InitSetREG:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_InitSetREG: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	136
	
l7282:	
;CC2500_B1.c: 133: unsigned char loop_c;
;CC2500_B1.c: 134: unsigned char temp1,temp2;
;CC2500_B1.c: 136: for(loop_c=0;loop_c<47;loop_c++)
	movlb 0	; select bank0
	clrf	(CC2500_InitSetREG@loop_c)
	
l7284:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u6041
	goto	u6040
u6041:
	goto	l7288
u6040:
	goto	l351
	
l7286:	
	goto	l351
	line	137
	
l349:	
	line	138
	
l7288:	
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
	
l7290:	
;CC2500_B1.c: 141: CC2500_WriteREG(temp1,temp2);
	movf	(CC2500_InitSetREG@temp2),w
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(CC2500_WriteREG@value)
	movf	(CC2500_InitSetREG@temp1),w
	fcall	_CC2500_WriteREG
	line	136
	
l7292:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	addwf	(CC2500_InitSetREG@loop_c),f
	
l7294:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u6051
	goto	u6050
u6051:
	goto	l7288
u6050:
	goto	l351
	
l350:	
	line	143
	
l351:	
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
psect	text125,local,class=CODE,delta=2,merge=1
	line	147
global __ptext125
__ptext125:	;psect for function _CC2500_InitPATable
psect	text125
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	147
	global	__size_of_CC2500_InitPATable
	__size_of_CC2500_InitPATable	equ	__end_of_CC2500_InitPATable-_CC2500_InitPATable
	
_CC2500_InitPATable:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_InitPATable: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	152
	
l7296:	
;CC2500_B1.c: 149: unsigned char loop_d;
;CC2500_B1.c: 150: unsigned char temp;
;CC2500_B1.c: 152: for(loop_d=0;loop_d<8;loop_d++)
	movlb 0	; select bank0
	clrf	(CC2500_InitPATable@loop_d)
	
l7298:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u6061
	goto	u6060
u6061:
	goto	l7302
u6060:
	goto	l356
	
l7300:	
	goto	l356
	line	153
	
l354:	
	line	154
	
l7302:	
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
	
l7304:	
;CC2500_B1.c: 155: CC2500_WriteREG(0x3E,temp);
	movf	(CC2500_InitPATable@temp),w
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(CC2500_WriteREG@value)
	movlw	(03Eh)
	fcall	_CC2500_WriteREG
	line	152
	
l7306:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	addwf	(CC2500_InitPATable@loop_d),f
	
l7308:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u6071
	goto	u6070
u6071:
	goto	l7302
u6070:
	goto	l356
	
l355:	
	line	157
	
l356:	
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
psect	text126,local,class=CODE,delta=2,merge=1
	line	227
global __ptext126
__ptext126:	;psect for function _CC2500_WriteREG
psect	text126
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
	
l7020:	
;CC2500_B1.c: 229: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	230
	
l7022:	
;CC2500_B1.c: 230: SPI0Buffer=w_addr;
	movf	(CC2500_WriteREG@w_addr),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	231
;CC2500_B1.c: 231: while(RC2==1);
	goto	l385
	
l386:	
	
l385:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u5741
	goto	u5740
u5741:
	goto	l385
u5740:
	goto	l7024
	
l387:	
	line	232
	
l7024:	
;CC2500_B1.c: 232: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	233
	
l7026:	
;CC2500_B1.c: 233: SPI0Buffer=value;
	movlb 0	; select bank0
	movf	(CC2500_WriteREG@value),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	234
	
l7028:	
;CC2500_B1.c: 234: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	235
	
l7030:	
;CC2500_B1.c: 235: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	236
	
l388:	
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
psect	text127,local,class=CODE,delta=2,merge=1
	line	175
global __ptext127
__ptext127:	;psect for function _CC2500_FrequencyCabr
psect	text127
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	175
	global	__size_of_CC2500_FrequencyCabr
	__size_of_CC2500_FrequencyCabr	equ	__end_of_CC2500_FrequencyCabr-_CC2500_FrequencyCabr
	
_CC2500_FrequencyCabr:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_FrequencyCabr: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
l9222:	
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
	
l365:	
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
psect	text128,local,class=CODE,delta=2,merge=1
	line	283
global __ptext128
__ptext128:	;psect for function _DelayTime_1us
psect	text128
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	283
	global	__size_of_DelayTime_1us
	__size_of_DelayTime_1us	equ	__end_of_DelayTime_1us-_DelayTime_1us
	
_DelayTime_1us:	
;incstack = 0
	opt	stack 9
; Regs used in _DelayTime_1us: [wreg+status,2]
	line	286
	
l8982:	
;CC2500_B1.c: 285: unsigned int i,j;
;CC2500_B1.c: 286: for(i=1;i<count;i++)
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(DelayTime_1us@i)
	movlw	high(01h)
	movwf	((DelayTime_1us@i))+1
	goto	l409
	line	287
	
l410:	
	
l8984:	
;CC2500_B1.c: 287: for(j=0;j<=1;j++);
	clrf	(DelayTime_1us@j)
	clrf	(DelayTime_1us@j+1)
	
l8986:	
	movlw	high(02h)
	subwf	(DelayTime_1us@j+1),w
	movlw	low(02h)
	skipnz
	subwf	(DelayTime_1us@j),w
	skipc
	goto	u8701
	goto	u8700
u8701:
	goto	l8990
u8700:
	goto	l8992
	
l8988:	
	goto	l8992
	
l411:	
	
l8990:	
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
	goto	u8711
	goto	u8710
u8711:
	goto	l8990
u8710:
	goto	l8992
	
l412:	
	line	286
	
l8992:	
	movlw	low(01h)
	addwf	(DelayTime_1us@i),f
	movlw	high(01h)
	addwfc	(DelayTime_1us@i+1),f
	
l409:	
	movf	(DelayTime_1us@count+1),w
	subwf	(DelayTime_1us@i+1),w
	skipz
	goto	u8725
	movf	(DelayTime_1us@count),w
	subwf	(DelayTime_1us@i),w
u8725:
	skipc
	goto	u8721
	goto	u8720
u8721:
	goto	l8984
u8720:
	goto	l414
	
l413:	
	line	288
	
l414:	
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
psect	text129,local,class=CODE,delta=2,merge=1
	line	161
global __ptext129
__ptext129:	;psect for function _CC2500_ClearTXFIFO
psect	text129
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	161
	global	__size_of_CC2500_ClearTXFIFO
	__size_of_CC2500_ClearTXFIFO	equ	__end_of_CC2500_ClearTXFIFO-_CC2500_ClearTXFIFO
	
_CC2500_ClearTXFIFO:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_ClearTXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	163
	
l9218:	
;CC2500_B1.c: 163: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	164
	
l359:	
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
psect	text130,local,class=CODE,delta=2,merge=1
	line	168
global __ptext130
__ptext130:	;psect for function _CC2500_ClearRXFIFO
psect	text130
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	168
	global	__size_of_CC2500_ClearRXFIFO
	__size_of_CC2500_ClearRXFIFO	equ	__end_of_CC2500_ClearRXFIFO-_CC2500_ClearRXFIFO
	
_CC2500_ClearRXFIFO:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_ClearRXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	170
	
l9220:	
;CC2500_B1.c: 170: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	171
	
l362:	
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
psect	text131,local,class=CODE,delta=2,merge=1
	line	253
global __ptext131
__ptext131:	;psect for function _CC2500_WriteCommand
psect	text131
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
	
l6808:	
;CC2500_B1.c: 255: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	256
	
l6810:	
;CC2500_B1.c: 256: SPI0Buffer=command;
	movf	(CC2500_WriteCommand@command),w
	movwf	(??_CC2500_WriteCommand+0)+0
	movf	(??_CC2500_WriteCommand+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	258
;CC2500_B1.c: 258: while(RC2==1);
	goto	l397
	
l398:	
	
l397:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u5471
	goto	u5470
u5471:
	goto	l397
u5470:
	goto	l6812
	
l399:	
	line	260
	
l6812:	
;CC2500_B1.c: 260: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	261
	
l6814:	
;CC2500_B1.c: 261: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	263
	
l400:	
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
psect	text132,local,class=CODE,delta=2,merge=1
	line	193
global __ptext132
__ptext132:	;psect for function _CC2500_WriteByte
psect	text132
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	193
	global	__size_of_CC2500_WriteByte
	__size_of_CC2500_WriteByte	equ	__end_of_CC2500_WriteByte-_CC2500_WriteByte
	
_CC2500_WriteByte:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_WriteByte: [wreg+status,2+status,0]
	line	196
	
l6654:	
;CC2500_B1.c: 195: unsigned char loop_a;
;CC2500_B1.c: 196: for(loop_a=0;loop_a<8;loop_a++)
	movlb 0	; select bank0
	clrf	(CC2500_WriteByte@loop_a)
	
l6656:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u5301
	goto	u5300
u5301:
	goto	l371
u5300:
	goto	l375
	
l6658:	
	goto	l375
	line	197
	
l371:	
	line	198
;CC2500_B1.c: 197: {
;CC2500_B1.c: 198: if(SPI0Buffer&0x80)
	movlb 1	; select bank1
	btfss	(_SPI0Buffer)^080h,(7)&7
	goto	u5311
	goto	u5310
u5311:
	goto	l373
u5310:
	line	199
	
l6660:	
;CC2500_B1.c: 199: RC0=1;
	movlb 0	; select bank0
	bsf	(112/8),(112)&7	;volatile
	goto	l374
	line	200
	
l373:	
	line	201
;CC2500_B1.c: 200: else
;CC2500_B1.c: 201: RC0=0;
	movlb 0	; select bank0
	bcf	(112/8),(112)&7	;volatile
	
l374:	
	line	202
;CC2500_B1.c: 202: RC1=1;
	bsf	(113/8),(113)&7	;volatile
	line	203
	
l6662:	
;CC2500_B1.c: 203: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	204
	
l6664:	
;CC2500_B1.c: 204: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
	line	196
	
l6666:	
	movlw	(01h)
	movwf	(??_CC2500_WriteByte+0)+0
	movf	(??_CC2500_WriteByte+0)+0,w
	addwf	(CC2500_WriteByte@loop_a),f
	
l6668:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u5321
	goto	u5320
u5321:
	goto	l371
u5320:
	goto	l375
	
l372:	
	line	206
	
l375:	
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
psect	text133,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	53
global __ptext133
__ptext133:	;psect for function _Buzzer_Main
psect	text133
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	53
	global	__size_of_Buzzer_Main
	__size_of_Buzzer_Main	equ	__end_of_Buzzer_Main-_Buzzer_Main
	
_Buzzer_Main:	
;incstack = 0
	opt	stack 11
; Regs used in _Buzzer_Main: [wreg-fsr1h+status,2+status,0]
	line	55
	
l7916:	
;Buzzer_B1.c: 55: Buz->Switch=(RB3)?1:0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	movlb 0	; select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u7045
	bsf	indf1,5
u7045:

	line	57
;Buzzer_B1.c: 57: if(Buz->GO)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u7051
	goto	u7050
u7051:
	goto	l148
u7050:
	line	60
	
l7918:	
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
	goto	u7065
	movf	0+(??_Buzzer_Main+0)+0,w
	subwf	0+(??_Buzzer_Main+2)+0,w
u7065:
	skipc
	goto	u7061
	goto	u7060
u7061:
	goto	l148
u7060:
	line	62
	
l7920:	
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
	goto	u7071
	goto	u7070
u7071:
	goto	l7942
u7070:
	line	65
	
l7922:	
;Buzzer_B1.c: 64: {
;Buzzer_B1.c: 65: if(Buz->Count == 0)
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u7081
	goto	u7080
u7081:
	goto	l7938
u7080:
	line	67
	
l7924:	
;Buzzer_B1.c: 66: {
;Buzzer_B1.c: 67: if(Buz->BufferStatus1)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u7091
	goto	u7090
u7091:
	goto	l7930
u7090:
	line	69
	
l7926:	
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
	
l7928:	
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
	goto	l148
	line	73
	
l142:	
	
l7930:	
;Buzzer_B1.c: 73: else if(Buz->BufferStatus2)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u7101
	goto	u7100
u7101:
	goto	l7936
u7100:
	line	75
	
l7932:	
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
	
l7934:	
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
	goto	l148
	line	79
	
l144:	
	line	81
	
l7936:	
;Buzzer_B1.c: 79: else
;Buzzer_B1.c: 80: {
;Buzzer_B1.c: 81: Buz->GO=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l148
	line	82
	
l145:	
	goto	l148
	
l143:	
	line	83
;Buzzer_B1.c: 82: }
;Buzzer_B1.c: 83: }
	goto	l148
	line	84
	
l141:	
	line	86
	
l7938:	
;Buzzer_B1.c: 84: else
;Buzzer_B1.c: 85: {
;Buzzer_B1.c: 86: Buz->Switch=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	88
	
l7940:	
;Buzzer_B1.c: 88: RB3=1;
	bsf	(107/8),(107)&7	;volatile
	goto	l148
	line	89
	
l146:	
	line	90
;Buzzer_B1.c: 89: }
;Buzzer_B1.c: 90: }
	goto	l148
	line	91
	
l140:	
	line	93
	
l7942:	
;Buzzer_B1.c: 91: else
;Buzzer_B1.c: 92: {
;Buzzer_B1.c: 93: Buz->Switch=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	95
	
l7944:	
;Buzzer_B1.c: 95: RB3=0;
	bcf	(107/8),(107)&7	;volatile
	line	97
	
l7946:	
;Buzzer_B1.c: 97: Buz->Count--;
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	l148
	line	98
	
l147:	
	goto	l148
	line	99
	
l139:	
	goto	l148
	line	100
	
l138:	
	line	101
	
l148:	
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
psect	text134,local,class=CODE,delta=2,merge=1
	line	10
global __ptext134
__ptext134:	;psect for function _Buzzer_Initialization
psect	text134
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	10
	global	__size_of_Buzzer_Initialization
	__size_of_Buzzer_Initialization	equ	__end_of_Buzzer_Initialization-_Buzzer_Initialization
	
_Buzzer_Initialization:	
;incstack = 0
	opt	stack 11
; Regs used in _Buzzer_Initialization: [wregfsr1]
	line	12
	
l7912:	
;Buzzer_B1.c: 12: Buz=&Buz1;
	movlw	(_Buz1)&0ffh
	movlb 0	; select bank0
	movwf	(??_Buzzer_Initialization+0)+0
	movf	(??_Buzzer_Initialization+0)+0,w
	movwf	(_Buz)
	line	13
	
l7914:	
;Buzzer_B1.c: 13: Buz->Enable=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	14
	
l123:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Initialization
	__end_of_Buzzer_Initialization:
	signat	_Buzzer_Initialization,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 56 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	56
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
	line	58
	
i1l8578:	
;MCU_16f1518_B1.c: 58: IOC_ISR();
	fcall	_IOC_ISR
	line	60
	
i1l8580:	
;MCU_16f1518_B1.c: 60: TMR0_ISR();
	fcall	_TMR0_ISR
	line	66
	
i1l8582:	
;MCU_16f1518_B1.c: 62: ;;
;MCU_16f1518_B1.c: 66: INT_ISR();
	fcall	_INT_ISR
	line	69
	
i1l1624:	
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
;;		line 82 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text136,local,class=CODE,delta=2,merge=1
	line	82
global __ptext136
__ptext136:	;psect for function _TMR0_ISR
psect	text136
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	82
	global	__size_of_TMR0_ISR
	__size_of_TMR0_ISR	equ	__end_of_TMR0_ISR-_TMR0_ISR
	
_TMR0_ISR:	
;incstack = 0
	opt	stack 3
; Regs used in _TMR0_ISR: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	84
	
i1l8304:	
;MCU_16f1518_B1.c: 84: if(TMR0IE && TMR0IF)
	btfss	(93/8),(93)&7	;volatile
	goto	u761_21
	goto	u761_20
u761_21:
	goto	i1l1687
u761_20:
	
i1l8306:	
	btfss	(90/8),(90)&7	;volatile
	goto	u762_21
	goto	u762_20
u762_21:
	goto	i1l1687
u762_20:
	line	86
	
i1l8308:	
;MCU_16f1518_B1.c: 85: {
;MCU_16f1518_B1.c: 86: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	87
	
i1l8310:	
;MCU_16f1518_B1.c: 87: TMR0IF=0;
	bcf	(90/8),(90)&7	;volatile
	line	100
	
i1l8312:	
;MCU_16f1518_B1.c: 100: if(DimmerLights11->GO) { DimmerLights11->Count++; if(DimmerLights11->Count >= (DimmerLights11->DimmingValue-Dimmer->Correction)) { DimmerLights11->Count=0; DimmerLights11->GO=0; DimmerLights11->Flag=1; if(DimmerLights11->StatusFlag) { RA7=1; ;; } } }
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u763_21
	goto	u763_20
u763_21:
	goto	i1l8326
u763_20:
	
i1l8314:	
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
	goto	u764_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u764_25:

	skipc
	goto	u764_21
	goto	u764_20
u764_21:
	goto	i1l8392
u764_20:
	
i1l8316:	
	movf	(_DimmerLights11),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8318:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	
i1l8320:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
i1l8322:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u765_21
	goto	u765_20
u765_21:
	goto	i1l8392
u765_20:
	
i1l8324:	
	movlb 0	; select bank0
	bsf	(103/8),(103)&7	;volatile
	goto	i1l8392
	
i1l1633:	
	goto	i1l8392
	
i1l1632:	
	goto	i1l8392
	
i1l1631:	
	
i1l8326:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u766_21
	goto	u766_20
u766_21:
	goto	i1l8384
u766_20:
	
i1l8328:	
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
	goto	u767_21
	goto	u767_20
u767_21:
	goto	i1l8384
u767_20:
	
i1l8330:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	incf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l8332:	
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
	goto	u768_21
	goto	u768_20
u768_21:
	goto	i1l8384
u768_20:
	
i1l8334:	
	incf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8336:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u769_21
	goto	u769_20
u769_21:
	goto	i1l8352
u769_20:
	
i1l8338:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u770_21
	goto	u770_20
u770_21:
	goto	i1l8346
u770_20:
	
i1l8340:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(044h)
	subwf	indf1,w
	skipc
	goto	u771_21
	goto	u771_20
u771_21:
	goto	i1l8344
u771_20:
	
i1l8342:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l8384
	
i1l1640:	
	
i1l8344:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l8384
	
i1l1641:	
	goto	i1l8384
	
i1l1639:	
	
i1l8346:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u772_21
	goto	u772_20
u772_21:
	goto	i1l8350
u772_20:
	
i1l8348:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l8384
	
i1l1643:	
	
i1l8350:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l8384
	
i1l1644:	
	goto	i1l8384
	
i1l1642:	
	goto	i1l8384
	
i1l1638:	
	
i1l8352:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u773_21
	goto	u773_20
u773_21:
	goto	i1l8366
u773_20:
	
i1l8354:	
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
	goto	u774_21
	goto	u774_20
u774_21:
	goto	i1l8358
u774_20:
	
i1l8356:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l8362
	
i1l1647:	
	
i1l8358:	
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
	goto	u775_21
	goto	u775_20
u775_21:
	goto	i1l8362
u775_20:
	
i1l8360:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l8362
	
i1l1649:	
	goto	i1l8362
	
i1l1648:	
	
i1l8362:	
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
	goto	u776_21
	goto	u776_20
u776_21:
	goto	i1l8384
u776_20:
	
i1l8364:	
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
	goto	i1l8384
	
i1l1650:	
	goto	i1l8384
	
i1l1646:	
	
i1l8366:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u777_21
	goto	u777_20
u777_21:
	goto	i1l8374
u777_20:
	
i1l8368:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l8370:	
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
	goto	u778_21
	goto	u778_20
u778_21:
	goto	i1l8384
u778_20:
	
i1l8372:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l8384
	
i1l1653:	
	goto	i1l8384
	
i1l1652:	
	
i1l8374:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l8376:	
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
	goto	u779_21
	goto	u779_20
u779_21:
	goto	i1l8384
u779_20:
	
i1l8378:	
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
	
i1l8380:	
	movlb 0	; select bank0
	bcf	(99/8),(99)&7	;volatile
	
i1l8382:	
	clrf	(i1setLoad_StatusOff@command)
	incf	(i1setLoad_StatusOff@command),f
	movlw	(01h)
	fcall	i1_setLoad_StatusOff
	goto	i1l8384
	
i1l1655:	
	goto	i1l8384
	
i1l1654:	
	goto	i1l8384
	
i1l1651:	
	goto	i1l8384
	
i1l1645:	
	goto	i1l8384
	
i1l1637:	
	goto	i1l8384
	
i1l1636:	
	goto	i1l8384
	
i1l1635:	
	
i1l8384:	
	movlb 0	; select bank0
	btfss	(103/8),(103)&7	;volatile
	goto	u780_21
	goto	u780_20
u780_21:
	goto	i1l8392
u780_20:
	
i1l8386:	
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
	goto	u781_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u781_25:

	skipc
	goto	u781_21
	goto	u781_20
u781_21:
	goto	i1l8392
u781_20:
	
i1l8388:	
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8390:	
	movlb 0	; select bank0
	bcf	(103/8),(103)&7	;volatile
	goto	i1l8392
	
i1l1657:	
	goto	i1l8392
	
i1l1656:	
	goto	i1l8392
	
i1l1634:	
	line	104
	
i1l8392:	
;MCU_16f1518_B1.c: 104: if(DimmerLights22->GO) { DimmerLights22->Count++; if(DimmerLights22->Count >= (DimmerLights22->DimmingValue-Dimmer->Correction)) { DimmerLights22->Count=0; DimmerLights22->GO=0; DimmerLights22->Flag=1; if(DimmerLights22->StatusFlag) { RB4=1; } } } el
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u782_21
	goto	u782_20
u782_21:
	goto	i1l8406
u782_20:
	
i1l8394:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
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
	movf	(_DimmerLights22),w
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
	movf	(_DimmerLights22),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	1+(??_TMR0_ISR+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u783_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u783_25:

	skipc
	goto	u783_21
	goto	u783_20
u783_21:
	goto	i1l8472
u783_20:
	
i1l8396:	
	movf	(_DimmerLights22),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8398:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	
i1l8400:	
	movf	(_DimmerLights22),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
i1l8402:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u784_21
	goto	u784_20
u784_21:
	goto	i1l8472
u784_20:
	
i1l8404:	
	movlb 0	; select bank0
	bsf	(108/8),(108)&7	;volatile
	goto	i1l8472
	
i1l1660:	
	goto	i1l8472
	
i1l1659:	
	goto	i1l8472
	
i1l1658:	
	
i1l8406:	
	movf	(_DimmerLights22),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u785_21
	goto	u785_20
u785_21:
	goto	i1l8464
u785_20:
	
i1l8408:	
	movf	(_DimmerLights22),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u786_21
	goto	u786_20
u786_21:
	goto	i1l8464
u786_20:
	
i1l8410:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	incf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l8412:	
	incf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights22),w
	addlw	02h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u787_21
	goto	u787_20
u787_21:
	goto	i1l8464
u787_20:
	
i1l8414:	
	incf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8416:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u788_21
	goto	u788_20
u788_21:
	goto	i1l8432
u788_20:
	
i1l8418:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u789_21
	goto	u789_20
u789_21:
	goto	i1l8426
u789_20:
	
i1l8420:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(044h)
	subwf	indf1,w
	skipc
	goto	u790_21
	goto	u790_20
u790_21:
	goto	i1l8424
u790_20:
	
i1l8422:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l8464
	
i1l1667:	
	
i1l8424:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l8464
	
i1l1668:	
	goto	i1l8464
	
i1l1666:	
	
i1l8426:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u791_21
	goto	u791_20
u791_21:
	goto	i1l8430
u791_20:
	
i1l8428:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l8464
	
i1l1670:	
	
i1l8430:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l8464
	
i1l1671:	
	goto	i1l8464
	
i1l1669:	
	goto	i1l8464
	
i1l1665:	
	
i1l8432:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u792_21
	goto	u792_20
u792_21:
	goto	i1l8446
u792_20:
	
i1l8434:	
	movf	(_DimmerLights22),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u793_21
	goto	u793_20
u793_21:
	goto	i1l8438
u793_20:
	
i1l8436:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l8442
	
i1l1674:	
	
i1l8438:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights22),w
	addlw	05h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u794_21
	goto	u794_20
u794_21:
	goto	i1l8442
u794_20:
	
i1l8440:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l8442
	
i1l1676:	
	goto	i1l8442
	
i1l1675:	
	
i1l8442:	
	movf	(_DimmerLights22),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	xorwf	indf1,w
	skipz
	goto	u795_21
	goto	u795_20
u795_21:
	goto	i1l8464
u795_20:
	
i1l8444:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l8464
	
i1l1677:	
	goto	i1l8464
	
i1l1673:	
	
i1l8446:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u796_21
	goto	u796_20
u796_21:
	goto	i1l8454
u796_20:
	
i1l8448:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l8450:	
	movf	(_DimmerLights22),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u797_21
	goto	u797_20
u797_21:
	goto	i1l8464
u797_20:
	
i1l8452:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l8464
	
i1l1680:	
	goto	i1l8464
	
i1l1679:	
	
i1l8454:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l8456:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_DimmerLights22),w
	addlw	06h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u798_21
	goto	u798_20
u798_21:
	goto	i1l8464
u798_20:
	
i1l8458:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	movf	(_DimmerLights22),w
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
	
i1l8460:	
	movlb 0	; select bank0
	bcf	(119/8),(119)&7	;volatile
	
i1l8462:	
	clrf	(i1setLoad_StatusOff@command)
	incf	(i1setLoad_StatusOff@command),f
	movlw	(02h)
	fcall	i1_setLoad_StatusOff
	goto	i1l8464
	
i1l1682:	
	goto	i1l8464
	
i1l1681:	
	goto	i1l8464
	
i1l1678:	
	goto	i1l8464
	
i1l1672:	
	goto	i1l8464
	
i1l1664:	
	goto	i1l8464
	
i1l1663:	
	goto	i1l8464
	
i1l1662:	
	
i1l8464:	
	movlb 0	; select bank0
	btfss	(108/8),(108)&7	;volatile
	goto	u799_21
	goto	u799_20
u799_21:
	goto	i1l8472
u799_20:
	
i1l8466:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	movf	(_DimmerLights22),w
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
	movf	(_DimmerLights22),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	1+(??_TMR0_ISR+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u800_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u800_25:

	skipc
	goto	u800_21
	goto	u800_20
u800_21:
	goto	i1l8472
u800_20:
	
i1l8468:	
	movf	(_DimmerLights22),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8470:	
	movlb 0	; select bank0
	bcf	(108/8),(108)&7	;volatile
	goto	i1l8472
	
i1l1684:	
	goto	i1l8472
	
i1l1683:	
	goto	i1l8472
	
i1l1661:	
	line	113
	
i1l8472:	
;MCU_16f1518_B1.c: 113: Timer0->Count++;
	movlb 1	; select bank1
	incf	(_Timer0)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	114
	
i1l8474:	
;MCU_16f1518_B1.c: 114: if(Timer0->Count == 200)
	incf	(_Timer0)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(0C8h)
	skipz
	goto	u801_25
	moviw	[1]fsr1
	xorlw	high(0C8h)
u801_25:
	skipz
	goto	u801_21
	goto	u801_20
u801_21:
	goto	i1l1685
u801_20:
	line	116
	
i1l8476:	
;MCU_16f1518_B1.c: 115: {
;MCU_16f1518_B1.c: 116: Timer0->Count=0;
	incf	(_Timer0)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	117
;MCU_16f1518_B1.c: 117: TMain->T0_Timerout=1;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	118
	
i1l1685:	
	line	121
;MCU_16f1518_B1.c: 118: }
;MCU_16f1518_B1.c: 121: if(Buz->GO)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u802_21
	goto	u802_20
u802_21:
	goto	i1l1687
u802_20:
	line	123
	
i1l8478:	
;MCU_16f1518_B1.c: 122: {
;MCU_16f1518_B1.c: 123: Buz->Time++;
	incf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	goto	i1l1687
	line	124
	
i1l1686:	
	goto	i1l1687
	line	126
	
i1l1630:	
	line	127
	
i1l1687:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_ISR
	__end_of_TMR0_ISR:
	signat	_TMR0_ISR,88
	global	i1_setLoad_StatusOff

;; *************** function i1_setLoad_StatusOff *****************
;; Defined at:
;;		line 280 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
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
psect	text137,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	280
global __ptext137
__ptext137:	;psect for function i1_setLoad_StatusOff
psect	text137
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverLoad_B1.c"
	line	280
	global	__size_ofi1_setLoad_StatusOff
	__size_ofi1_setLoad_StatusOff	equ	__end_ofi1_setLoad_StatusOff-i1_setLoad_StatusOff
	
i1_setLoad_StatusOff:	
;incstack = 0
	opt	stack 3
; Regs used in i1_setLoad_StatusOff: [wreg+fsr1l+fsr1h+status,2+status,0]
;i1setLoad_StatusOff@lights stored from wreg
	movwf	(i1setLoad_StatusOff@lights)
	line	282
	
i1l7896:	
;OverLoad_B1.c: 282: Load->StatusOff=command;
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
	line	283
	
i1l7898:	
;OverLoad_B1.c: 283: Load->SafeCount-=2;
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(02h)
	subwf	indf1,f
	line	284
	
i1l7900:	
;OverLoad_B1.c: 284: if(lights == 1)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u701_21
	goto	u701_20
u701_21:
	goto	i1l7904
u701_20:
	line	286
	
i1l7902:	
;OverLoad_B1.c: 285: {
;OverLoad_B1.c: 286: Load->Lights1Status=0;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l7904
	line	287
	
i1l1958:	
	line	288
	
i1l7904:	
;OverLoad_B1.c: 287: }
;OverLoad_B1.c: 288: if(lights == 2)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u702_21
	goto	u702_20
u702_21:
	goto	i1l7908
u702_20:
	line	290
	
i1l7906:	
;OverLoad_B1.c: 289: {
;OverLoad_B1.c: 290: Load->Lights2Status=0;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l7908
	line	291
	
i1l1959:	
	line	292
	
i1l7908:	
;OverLoad_B1.c: 291: }
;OverLoad_B1.c: 292: if(lights == 3)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u703_21
	goto	u703_20
u703_21:
	goto	i1l1961
u703_20:
	line	294
	
i1l7910:	
;OverLoad_B1.c: 293: {
;OverLoad_B1.c: 294: Load->Lights3Status=0;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l1961
	line	295
	
i1l1960:	
	line	296
	
i1l1961:	
	return
	opt stack 0
GLOBAL	__end_ofi1_setLoad_StatusOff
	__end_ofi1_setLoad_StatusOff:
	signat	i1_setLoad_StatusOff,88
	global	_IOC_ISR

;; *************** function _IOC_ISR *****************
;; Defined at:
;;		line 267 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text138,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	267
global __ptext138
__ptext138:	;psect for function _IOC_ISR
psect	text138
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	267
	global	__size_of_IOC_ISR
	__size_of_IOC_ISR	equ	__end_of_IOC_ISR-_IOC_ISR
	
_IOC_ISR:	
;incstack = 0
	opt	stack 3
; Regs used in _IOC_ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	269
	
i1l8288:	
;MCU_16f1518_B1.c: 269: if(IOCIE && IOCBF2)
	btfss	(91/8),(91)&7	;volatile
	goto	u757_21
	goto	u757_20
u757_21:
	goto	i1l1712
u757_20:
	
i1l8290:	
	movlb 7	; select bank7
	btfss	(7346/8)^0380h,(7346)&7	;volatile
	goto	u758_21
	goto	u758_20
u758_21:
	goto	i1l1712
u758_20:
	line	271
	
i1l8292:	
;MCU_16f1518_B1.c: 270: {
;MCU_16f1518_B1.c: 271: IOCBF2=0;
	bcf	(7346/8)^0380h,(7346)&7	;volatile
	line	272
;MCU_16f1518_B1.c: 272: IOCIF=0;
	bcf	(88/8),(88)&7	;volatile
	line	273
	
i1l8294:	
;MCU_16f1518_B1.c: 273: if(TMain->PowerON)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u759_21
	goto	u759_20
u759_21:
	goto	i1l1712
u759_20:
	line	278
	
i1l8296:	
;MCU_16f1518_B1.c: 274: {
;MCU_16f1518_B1.c: 278: setDimmerReClock();
	fcall	_setDimmerReClock
	line	279
	
i1l8298:	
;MCU_16f1518_B1.c: 279: if(RB2)
	movlb 0	; select bank0
	btfss	(106/8),(106)&7	;volatile
	goto	u760_21
	goto	u760_20
u760_21:
	goto	i1l8302
u760_20:
	line	281
	
i1l8300:	
;MCU_16f1518_B1.c: 280: {
;MCU_16f1518_B1.c: 281: Dimmer->Correction=0;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	282
;MCU_16f1518_B1.c: 282: }
	goto	i1l1712
	line	283
	
i1l1710:	
	line	285
	
i1l8302:	
;MCU_16f1518_B1.c: 283: else
;MCU_16f1518_B1.c: 284: {
;MCU_16f1518_B1.c: 285: Dimmer->Correction=8;
	movlw	(08h)
	movwf	(??_IOC_ISR+0)+0
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_IOC_ISR+0)+0,w
	movwf	indf1
	goto	i1l1712
	line	286
	
i1l1711:	
	goto	i1l1712
	line	293
	
i1l1709:	
	goto	i1l1712
	line	294
	
i1l1708:	
	line	295
	
i1l1712:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_ISR
	__end_of_IOC_ISR:
	signat	_IOC_ISR,88
	global	_setDimmerReClock

;; *************** function _setDimmerReClock *****************
;; Defined at:
;;		line 129 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text139,local,class=CODE,delta=2,merge=1
	line	129
global __ptext139
__ptext139:	;psect for function _setDimmerReClock
psect	text139
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	129
	global	__size_of_setDimmerReClock
	__size_of_setDimmerReClock	equ	__end_of_setDimmerReClock-_setDimmerReClock
	
_setDimmerReClock:	
;incstack = 0
	opt	stack 3
; Regs used in _setDimmerReClock: [wregfsr1]
	line	131
	
i1l7512:	
;MCU_16f1518_B1.c: 131: TMR0=255;
	movlw	(0FFh)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	136
	
i1l7514:	
;MCU_16f1518_B1.c: 136: if(!DimmerLights11->GO)
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u626_21
	goto	u626_20
u626_21:
	goto	i1l1690
u626_20:
	line	138
	
i1l7516:	
;MCU_16f1518_B1.c: 137: {
;MCU_16f1518_B1.c: 138: DimmerLights11->GO=1;
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	139
	
i1l1690:	
	line	158
;MCU_16f1518_B1.c: 139: }
;MCU_16f1518_B1.c: 158: if(!DimmerLights22->GO)
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u627_21
	goto	u627_20
u627_21:
	goto	i1l1692
u627_20:
	line	160
	
i1l7518:	
;MCU_16f1518_B1.c: 159: {
;MCU_16f1518_B1.c: 160: DimmerLights22->GO=1;
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l1692
	line	161
	
i1l1691:	
	line	174
	
i1l1692:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerReClock
	__end_of_setDimmerReClock:
	signat	_setDimmerReClock,88
	global	_INT_ISR

;; *************** function _INT_ISR *****************
;; Defined at:
;;		line 225 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text140,local,class=CODE,delta=2,merge=1
	line	225
global __ptext140
__ptext140:	;psect for function _INT_ISR
psect	text140
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	225
	global	__size_of_INT_ISR
	__size_of_INT_ISR	equ	__end_of_INT_ISR-_INT_ISR
	
_INT_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _INT_ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	227
	
i1l8480:	
;MCU_16f1518_B1.c: 227: if(INTE && INTF)
	btfss	(92/8),(92)&7	;volatile
	goto	u803_21
	goto	u803_20
u803_21:
	goto	i1l1699
u803_20:
	
i1l8482:	
	btfss	(89/8),(89)&7	;volatile
	goto	u804_21
	goto	u804_20
u804_21:
	goto	i1l1699
u804_20:
	line	229
	
i1l8484:	
;MCU_16f1518_B1.c: 228: {
;MCU_16f1518_B1.c: 229: INTF=0;
	bcf	(89/8),(89)&7	;volatile
	line	230
;MCU_16f1518_B1.c: 230: INTE=0;
	bcf	(92/8),(92)&7	;volatile
	line	231
	
i1l8486:	
;MCU_16f1518_B1.c: 231: setRF_ReceiveGO(1,1);
	clrf	(setRF_ReceiveGO@command)
	incf	(setRF_ReceiveGO@command),f
	movlw	(01h)
	fcall	_setRF_ReceiveGO
	goto	i1l1699
	line	232
	
i1l1698:	
	line	233
	
i1l1699:	
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
psect	text141,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	37
global __ptext141
__ptext141:	;psect for function _setRF_ReceiveGO
psect	text141
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
	
i1l7520:	
;RF_Control_B1.c: 39: RfPointSelect(rf);
	movf	(setRF_ReceiveGO@rf),w
	fcall	i1_RfPointSelect
	line	40
	
i1l7522:	
;RF_Control_B1.c: 40: RF->ReceiveGO=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setRF_ReceiveGO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	41
	
i1l2653:	
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
psect	text142,local,class=CODE,delta=2,merge=1
	line	7
global __ptext142
__ptext142:	;psect for function i1_RfPointSelect
psect	text142
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
	
i1l7264:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(i1RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u601_21
	goto	u601_20
u601_21:
	goto	i1l2641
u601_20:
	line	12
	
i1l7266:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??i1_RfPointSelect+0)+0
	movf	(??i1_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	i1l2641
	line	13
	
i1l2640:	
	line	15
	
i1l2641:	
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

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
	FNCALL	_main,_MainT
	FNCALL	_main,_MainT_Initialization
	FNCALL	_main,_MainT_ResetClock
	FNCALL	_main,_Mcu_Initialization
	FNCALL	_main,_PowerFault_Initialization
	FNCALL	_main,_PowerFault_Main
	FNCALL	_main,_RF_Initialization
	FNCALL	_main,_RF_Main
	FNCALL	_main,_Switch_Initialization
	FNCALL	_main,_Switch_Main
	FNCALL	_main,_Temp_Initialization
	FNCALL	_main,_Temp_Main
	FNCALL	_main,_getPowerFault_AD
	FNCALL	_main,_getTemp_AD
	FNCALL	_getTemp_AD,_getAD
	FNCALL	_getPowerFault_AD,_getAD
	FNCALL	_Temp_Main,_setTemp_Main
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
	FNCALL	_setPowerFault_Main,_getTemp_Safe
	FNCALL	_setPowerFault_Main,_setPowerFault_Exceptions
	FNCALL	_setPowerFault_Exceptions,_DimmerLights_Exceptions
	FNCALL	_setPowerFault_Exceptions,_setLED
	FNCALL	_setPowerFault_Exceptions,_setRF_Enable
	FNCALL	_setPowerFault_Exceptions,_setSw_Enable
	FNCALL	_DimmerLights_Exceptions,_getDimmerLights_StatusFlag
	FNCALL	_DimmerLights_Exceptions,_setBuz
	FNCALL	_DimmerLights_Exceptions,_setDimmerLights_ERROR
	FNCALL	_DimmerLights_Exceptions,_setDimmerLights_TriggerERROR
	FNCALL	_setDimmerLights_TriggerERROR,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_ERROR,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_ERROR,_setLED
	FNCALL	_setDimmerLights_ERROR,_setRFSW_Status
	FNCALL	_setDimmerLights_ERROR,_setSw_Status
	FNCALL	_PowerFault_Initialization,_setPowerFault_Initialization
	FNCALL	_Mcu_Initialization,_ADC_Set
	FNCALL	_Mcu_Initialization,_INT_Set
	FNCALL	_Mcu_Initialization,_IOC_Set
	FNCALL	_Mcu_Initialization,_IO_Set
	FNCALL	_Mcu_Initialization,_TMR0_Set
	FNCALL	_MainT,_setBuz
	FNCALL	_MainT,_setRF_Enable
	FNCALL	_MainT,_setSw_Enable
	FNCALL	_MainT,_setTemp_Enable
	FNCALL	_setSw_Enable,_SwPointSelect
	FNCALL	_setRF_Enable,_RfPointSelect
	FNCALL	_setRF_Enable,_setINT_GO
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
	FNCALL	_setDimmerLights_Adj,_setRF_DimmerLights
	FNCALL	_setDimmerLights_Adj,_setTxData
	FNCALL	_setDimmerLights,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights,_setLED
	FNCALL	_setLED,_LedPointSelect
	FNCALL	_DimmerLights_Close,_getDimmerLights_StatusFlag
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
	global	_PF
	global	_RF
	global	_Sw
	global	_Temp
	global	_CC2500_Enable
	global	_Receive_GO
	global	_Receive_OK
	global	_RxStatus
	global	_Transceive_GO
	global	_Transceive_OK
	global	_TxStatus
	global	_Buz
	global	_DelayOff
	global	_DimmerLights
	global	_DimmerLights11
	global	_DimmerLights22
	global	_RF_Data
	global	_RF_Count
	global	_CRC
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
	global	_DimmerLights1
	global	_DimmerLights2
	global	_Temp1
	global	_Buz1
	global	_Sw1
	global	_Sw2
	global	_PF1
	global	_VarTMain
	global	_VarMemory
	global	_Memory
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_Memory:
       ds      1

	global	_Product
_Product:
       ds      1

	global	_TMain
_TMain:
       ds      1

	global	_Timer0
psect	nvBANK1,class=BANK1,space=1,noexec
global __pnvBANK1
__pnvBANK1:
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
	file	"Switch_2Key_Dimmer_V1.3.1.2.1.as"
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
_PF:
       ds      1

_RF:
       ds      1

_Sw:
       ds      1

_Temp:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_Buz:
       ds      1

_DelayOff:
       ds      1

_DimmerLights:
       ds      1

_DimmerLights11:
       ds      1

_DimmerLights22:
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
       ds      3

_RFSW1:
       ds      1

_RFSW2:
       ds      1

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_DimmerLights1:
       ds      14

_DimmerLights2:
       ds      14

_Temp1:
       ds      14

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
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Header_File\Main_B1.h"
	line	14
_VarProduct:
       ds      32

psect	bssBANK4,class=BANK4,space=1,noexec
global __pbssBANK4
__pbssBANK4:
_VarMemory:
       ds      37

	file	"Switch_2Key_Dimmer_V1.3.1.2.1.as"
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	04Ah
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	050h
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
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	getRxData@rf
getRxData@rf:	; 1 bytes @ 0x0
	global	_setSw_Main$4153
_setSw_Main$4153:	; 1 bytes @ 0x0
	ds	1
??_setRF_Main:	; 0 bytes @ 0x1
	global	_setSw_Main$4154
_setSw_Main$4154:	; 1 bytes @ 0x1
	ds	1
	global	setRF_Main@rf
setRF_Main@rf:	; 1 bytes @ 0x2
	global	setSw_Main@sw
setSw_Main@sw:	; 1 bytes @ 0x2
	ds	1
	global	_setRF_Main$3833
_setRF_Main$3833:	; 1 bytes @ 0x3
	ds	1
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
?_setDimmerLights_Main:	; 0 bytes @ 0x0
?_setDimmerLights_ERROR:	; 0 bytes @ 0x0
?_setLED_Initialization:	; 0 bytes @ 0x0
?_setLED_Main:	; 0 bytes @ 0x0
?_MainT_Initialization:	; 0 bytes @ 0x0
?_Mcu_Initialization:	; 0 bytes @ 0x0
?_Flash_Memory_Initialization:	; 0 bytes @ 0x0
?_Temp_Initialization:	; 0 bytes @ 0x0
?_PowerFault_Initialization:	; 0 bytes @ 0x0
?_Switch_Initialization:	; 0 bytes @ 0x0
?_RF_Initialization:	; 0 bytes @ 0x0
?_getTemp_AD:	; 0 bytes @ 0x0
?_getPowerFault_AD:	; 0 bytes @ 0x0
?_MainT:	; 0 bytes @ 0x0
?_MainT_ResetClock:	; 0 bytes @ 0x0
?_Flash_Memory_Main:	; 0 bytes @ 0x0
?_Temp_Main:	; 0 bytes @ 0x0
?_PowerFault_Main:	; 0 bytes @ 0x0
?_Switch_Main:	; 0 bytes @ 0x0
?_RF_Main:	; 0 bytes @ 0x0
?_setTemp_Enable:	; 0 bytes @ 0x0
?_setSw_Enable:	; 0 bytes @ 0x0
?_IO_Set:	; 0 bytes @ 0x0
?_TMR0_Set:	; 0 bytes @ 0x0
?_ADC_Set:	; 0 bytes @ 0x0
?_INT_Set:	; 0 bytes @ 0x0
?_IOC_Set:	; 0 bytes @ 0x0
?_IOC_ISR:	; 0 bytes @ 0x0
??_IOC_ISR:	; 0 bytes @ 0x0
?_TMR0_ISR:	; 0 bytes @ 0x0
??_TMR0_ISR:	; 0 bytes @ 0x0
?_INT_ISR:	; 0 bytes @ 0x0
?_Flash_Memory_Write:	; 0 bytes @ 0x0
?_Flash_Memory_Modify:	; 0 bytes @ 0x0
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
?i1_RfPointSelect:	; 0 bytes @ 0x0
??i1_RfPointSelect:	; 0 bytes @ 0x0
?_DelayTimejudge:	; 1 bytes @ 0x0
?_getDimmerLights_StatusFlag:	; 1 bytes @ 0x0
?_getPercentValue:	; 1 bytes @ 0x0
?_Flash_Memory_Read:	; 1 bytes @ 0x0
?_getPF_Safe:	; 1 bytes @ 0x0
?_setPercentValue:	; 1 bytes @ 0x0
?_getTemp_Safe:	; 1 bytes @ 0x0
setRF_Initialization@rf:	; 1 bytes @ 0x0
	ds	1
	global	i1RfPointSelect@rf
i1RfPointSelect@rf:	; 1 bytes @ 0x1
	ds	1
?_setRF_ReceiveGO:	; 0 bytes @ 0x2
	global	setRF_ReceiveGO@command
setRF_ReceiveGO@command:	; 1 bytes @ 0x2
	ds	1
??_setRF_ReceiveGO:	; 0 bytes @ 0x3
	global	setRF_ReceiveGO@rf
setRF_ReceiveGO@rf:	; 1 bytes @ 0x3
	ds	1
??_INT_ISR:	; 0 bytes @ 0x4
??_ISR:	; 0 bytes @ 0x4
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
??_MainT_Initialization:	; 0 bytes @ 0x0
??_MainT_ResetClock:	; 0 bytes @ 0x0
??_setTemp_Enable:	; 0 bytes @ 0x0
??_IO_Set:	; 0 bytes @ 0x0
??_TMR0_Set:	; 0 bytes @ 0x0
??_ADC_Set:	; 0 bytes @ 0x0
??_INT_Set:	; 0 bytes @ 0x0
??_IOC_Set:	; 0 bytes @ 0x0
??_Flash_Memory_Read:	; 0 bytes @ 0x0
??_Flash_Memory_Write:	; 0 bytes @ 0x0
??_setTemp_Initialization:	; 0 bytes @ 0x0
??_getPF_Safe:	; 0 bytes @ 0x0
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
??_getTemp_Safe:	; 0 bytes @ 0x0
??_RfPointSelect:	; 0 bytes @ 0x0
??_RfSWPointSelect:	; 0 bytes @ 0x0
??_TouchPower:	; 0 bytes @ 0x0
??_SwPointSelect:	; 0 bytes @ 0x0
	global	?_getAD
?_getAD:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	setINT_GO@command
setINT_GO@command:	; 1 bytes @ 0x0
	global	getAD@adcon1
getAD@adcon1:	; 1 bytes @ 0x0
	global	setTemp_Enable@command
setTemp_Enable@command:	; 1 bytes @ 0x0
	global	DelayTime_1us@count
DelayTime_1us@count:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
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
	global	MainT_ResetClock@i
MainT_ResetClock@i:	; 1 bytes @ 0x1
	global	Flash_Memory_Read@i
Flash_Memory_Read@i:	; 1 bytes @ 0x1
	global	Flash_Memory_Write@i
Flash_Memory_Write@i:	; 1 bytes @ 0x1
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
??_setSw_Enable:	; 0 bytes @ 0x2
?_setRF_Enable:	; 0 bytes @ 0x2
?_setDimmerLights_AdjGo:	; 0 bytes @ 0x2
?_setDimmerLights_TriggerAdj:	; 0 bytes @ 0x2
?_setRF_Learn:	; 0 bytes @ 0x2
	global	CC2500_WriteREG@value
CC2500_WriteREG@value:	; 1 bytes @ 0x2
	global	DlyOff_Initialization@sw
DlyOff_Initialization@sw:	; 1 bytes @ 0x2
	global	DelayTimejudge@value
DelayTimejudge@value:	; 1 bytes @ 0x2
	global	_getDimmerLights_StatusFlag$1623
_getDimmerLights_StatusFlag$1623:	; 1 bytes @ 0x2
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
	ds	1
??_MainT:	; 0 bytes @ 0xA
??_setLog_Code:	; 0 bytes @ 0xA
??_DimmerLights_Exceptions:	; 0 bytes @ 0xA
	global	DimmerLights_Exceptions@status
DimmerLights_Exceptions@status:	; 1 bytes @ 0xA
	ds	1
??_setOverTemp_Exceptions:	; 0 bytes @ 0xB
??_setPowerFault_Exceptions:	; 0 bytes @ 0xB
??___awtoft:	; 0 bytes @ 0xB
	global	setLog_Code@rf
setLog_Code@rf:	; 1 bytes @ 0xB
	ds	1
	global	setOverTemp_Exceptions@command
setOverTemp_Exceptions@command:	; 1 bytes @ 0xC
	global	setPowerFault_Exceptions@command
setPowerFault_Exceptions@command:	; 1 bytes @ 0xC
	ds	1
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
??_Switch_Main:	; 0 bytes @ 0x47
??_setControl_Lights_Table:	; 0 bytes @ 0x47
??_DimmerLights_Main:	; 0 bytes @ 0x47
	global	setControl_Lights_Table@rf
setControl_Lights_Table@rf:	; 1 bytes @ 0x47
	ds	1
??_RF_Main:	; 0 bytes @ 0x48
??_getRxData:	; 0 bytes @ 0x48
??_main:	; 0 bytes @ 0x48
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    102
;!    Data        32
;!    BSS         216
;!    Persistent  4
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      10
;!    BANK0            80     72      80
;!    BANK1            80      4      79
;!    BANK2            80      0      80
;!    BANK3            80      0      48
;!    BANK4            80      0      37
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
;!		 -> NULL(NULL[0]), Sw2(BANK2[9]), Sw1(BANK2[9]), 
;!
;!    RFSW	PTR struct RFSW size(1) Largest target is 1
;!		 -> NULL(NULL[0]), RFSW2(BANK1[1]), RFSW1(BANK1[1]), 
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
;!    Timer0	PTR struct Timer0 size(1) Largest target is 9
;!		 -> NULL(NULL[0]), VarTimer0(BANK1[9]), 
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
;!    DimmerLights22	PTR struct DimmerLights size(1) Largest target is 14
;!		 -> NULL(NULL[0]), DimmerLights2(BANK2[14]), 
;!
;!    DimmerLights11	PTR struct DimmerLights size(1) Largest target is 14
;!		 -> NULL(NULL[0]), DimmerLights1(BANK2[14]), 
;!
;!    DimmerLights	PTR struct DimmerLights size(1) Largest target is 14
;!		 -> NULL(NULL[0]), DimmerLights2(BANK2[14]), DimmerLights1(BANK2[14]), 
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
;!    _INT_ISR->_setRF_ReceiveGO
;!    _setRF_ReceiveGO->i1_RfPointSelect
;!
;!Critical Paths under _main in BANK0
;!
;!    _getTemp_AD->_getAD
;!    _getPowerFault_AD->_getAD
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
;!    _DimmerLights_Exceptions->_setBuz
;!    _setDimmerLights_TriggerERROR->_DimmerLightsPointSelect
;!    _setDimmerLights_ERROR->_setLED
;!    _setDimmerLights_ERROR->_setRFSW_Status
;!    _setDimmerLights_ERROR->_setSw_Status
;!    _PowerFault_Initialization->_setPowerFault_Initialization
;!    _Mcu_Initialization->_TMR0_Set
;!    _MainT->_setBuz
;!    _setSw_Enable->_SwPointSelect
;!    _setRF_Enable->_RfPointSelect
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
;!    _Switch_Main->_setSw_Main
;!    _RF_Main->_setRF_Main
;!    _setRF_Main->_getRxData
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
;! (0) _main                                                 0     0      0   96816
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
;!                              _MainT
;!               _MainT_Initialization
;!                   _MainT_ResetClock
;!                 _Mcu_Initialization
;!          _PowerFault_Initialization
;!                    _PowerFault_Main
;!                  _RF_Initialization
;!                            _RF_Main
;!              _Switch_Initialization
;!                        _Switch_Main
;!                _Temp_Initialization
;!                          _Temp_Main
;!                   _getPowerFault_AD
;!                         _getTemp_AD
;! ---------------------------------------------------------------------------------
;! (1) _getTemp_AD                                           5     5      0     223
;!                                              4 BANK0      5     5      0
;!                              _getAD
;! ---------------------------------------------------------------------------------
;! (1) _getPowerFault_AD                                     5     5      0     223
;!                                              4 BANK0      5     5      0
;!                              _getAD
;! ---------------------------------------------------------------------------------
;! (2) _getAD                                                4     1      3     192
;!                                              0 BANK0      4     1      3
;! ---------------------------------------------------------------------------------
;! (1) _Temp_Main                                            0     0      0    6658
;!                       _setTemp_Main
;! ---------------------------------------------------------------------------------
;! (2) _setTemp_Main                                         3     3      0    6658
;!                                             13 BANK0      3     3      0
;!                         _getPF_Safe
;!             _setOverTemp_Exceptions
;! ---------------------------------------------------------------------------------
;! (3) _setOverTemp_Exceptions                               2     2      0    6658
;!                                             11 BANK0      2     2      0
;!            _DimmerLights_Exceptions
;!                             _setBuz
;!                             _setLED
;!                       _setRF_Enable
;!                       _setSw_Enable
;! ---------------------------------------------------------------------------------
;! (3) _getPF_Safe                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Temp_Initialization                                  0     0      0       0
;!             _setTemp_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setTemp_Initialization                               1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Switch_Main                                          0     0      0   22040
;!                         _setSw_Main
;! ---------------------------------------------------------------------------------
;! (2) _setSw_Main                                           5     5      0   22040
;!                                             69 BANK0      2     2      0
;!                                              0 BANK1      3     3      0
;!                      _SwPointSelect
;!                   _Sw_DimmerAdjFunc
;!                   _Sw_DimmerOffFunc
;!                    _Sw_DimmerOnFunc
;!                             _setBuz
;!                        _setRF_Learn
;! ---------------------------------------------------------------------------------
;! (3) _setRF_Learn                                          2     1      1     288
;!                                              2 BANK0      2     1      1
;!                      _RfPointSelect
;! ---------------------------------------------------------------------------------
;! (3) _Sw_DimmerOnFunc                                      2     2      0    9518
;!                                             66 BANK0      2     2      0
;!                             _setBuz
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!                     _setRFSW_Status
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (3) _Sw_DimmerOffFunc                                     3     3      0    9429
;!                                             66 BANK0      3     3      0
;!                     _setDelayOff_GO
;!              _setDimmerLights_AdjGo
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!         _setDimmerLights_TriggerAdj
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (3) _Sw_DimmerAdjFunc                                     2     2      0    1282
;!                                              4 BANK0      2     2      0
;!              _setDimmerLights_AdjGo
;!         _setDimmerLights_TriggerAdj
;!                     _setRFSW_Status
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_TriggerAdj                           2     1      1     254
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_AdjGo                                2     1      1     254
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _Switch_Initialization                                0     0      0     948
;!                         _TouchPower
;!               _setSw_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setSw_Initialization                                 1     1      0     948
;!                                              4 BANK0      1     1      0
;!                             _setLED
;! ---------------------------------------------------------------------------------
;! (2) _TouchPower                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _RF_Main                                              0     0      0   29561
;!                         _setRF_Main
;! ---------------------------------------------------------------------------------
;! (2) _setRF_Main                                           3     3      0   29561
;!                                              1 BANK1      3     3      0
;!                      _CC2500_RxData
;!                      _CC2500_TxData
;!                _CC2500_WriteCommand
;!                       _RF_RxDisable
;!                      _RfPointSelect
;!                          _getRxData
;!                          _setINT_GO
;! ---------------------------------------------------------------------------------
;! (3) _getRxData                                            2     2      0   28277
;!                                              0 BANK1      1     1      0
;!                      _RfPointSelect
;!            _setControl_Lights_Table
;!                        _setLog_Code
;! ---------------------------------------------------------------------------------
;! (4) _setLog_Code                                          2     2      0    1263
;!                                             10 BANK0      2     2      0
;!                      _RfPointSelect
;!                             _setBuz
;! ---------------------------------------------------------------------------------
;! (4) _setControl_Lights_Table                              1     1      0   26952
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
;! (5) _setRFSW_Control                                      2     2      0   10853
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
;! (4) _setDelayOff_GO                                       5     3      2    1192
;!                                              3 BANK0      5     3      2
;!                _DelayOffPointSelect
;!                     _DelayTimejudge
;! ---------------------------------------------------------------------------------
;! (5) _DelayTimejudge                                       3     3      0     238
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (5) _setRFSW_AdjControl                                   3     3      0   12318
;!                                             68 BANK0      3     3      0
;!                    _RfSWPointSelect
;!                  _setRF_DimmerValue
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (6) _setRF_DimmerValue                                    3     3      0   12070
;!                                             65 BANK0      3     3      0
;!              _setDimmerLights_AdjRF
;! ---------------------------------------------------------------------------------
;! (7) _setDimmerLights_AdjRF                                2     2      0   11977
;!                                             63 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;!                    _getPercentValue
;! ---------------------------------------------------------------------------------
;! (8) _getPercentValue                                      6     6      0   11884
;!                                             57 BANK0      6     6      0
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (9) ___ftmul                                             16    10      6    2655
;!                                             14 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (9) ___ftadd                                             13     7      6    3482
;!                                             30 BANK0     13     7      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) _RF_RxDisable                                         1     1      0     192
;!                                              4 BANK0      1     1      0
;!                _CC2500_WriteCommand
;!                      _RfPointSelect
;!                          _setINT_GO
;! ---------------------------------------------------------------------------------
;! (3) _CC2500_TxData                                        2     2      0     235
;!                                              4 BANK0      2     2      0
;!                   _CC2500_WriteByte
;!                _CC2500_WriteCommand
;! ---------------------------------------------------------------------------------
;! (3) _CC2500_RxData                                        2     2      0     628
;!                                              4 BANK0      2     2      0
;!                    _CC2500_ReadByte
;!                  _CC2500_ReadStatus
;!                   _CC2500_WriteByte
;!                _CC2500_WriteCommand
;!                     _setRF_RxStatus
;! ---------------------------------------------------------------------------------
;! (4) _setRF_RxStatus                                       2     1      1     158
;!                                              2 BANK0      2     1      1
;!                      _RfPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _CC2500_ReadStatus                                    2     2      0     167
;!                                              2 BANK0      2     2      0
;!                    _CC2500_ReadByte
;!                   _CC2500_WriteByte
;! ---------------------------------------------------------------------------------
;! (5) _CC2500_ReadByte                                      2     2      0      68
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _RF_Initialization                                    0     0      0       0
;!               _setRF_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setRF_Initialization                                 2     2      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _PowerFault_Main                                      0     0      0    5457
;!                 _setPowerFault_Main
;! ---------------------------------------------------------------------------------
;! (2) _setPowerFault_Main                                   2     2      0    5457
;!                                             13 BANK0      2     2      0
;!                       _getTemp_Safe
;!           _setPowerFault_Exceptions
;! ---------------------------------------------------------------------------------
;! (3) _setPowerFault_Exceptions                             2     2      0    5457
;!                                             11 BANK0      2     2      0
;!            _DimmerLights_Exceptions
;!                             _setLED
;!                       _setRF_Enable
;!                       _setSw_Enable
;! ---------------------------------------------------------------------------------
;! (4) _DimmerLights_Exceptions                              1     1      0    3911
;!                                             10 BANK0      1     1      0
;!         _getDimmerLights_StatusFlag
;!                             _setBuz
;!              _setDimmerLights_ERROR
;!       _setDimmerLights_TriggerERROR
;! ---------------------------------------------------------------------------------
;! (5) _setDimmerLights_TriggerERROR                         2     1      1     347
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _setDimmerLights_ERROR                                2     2      0    2196
;!                                              4 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;!                             _setLED
;!                     _setRFSW_Status
;!                       _setSw_Status
;! ---------------------------------------------------------------------------------
;! (3) _getTemp_Safe                                         0     0      0       0
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
;! (1) _MainT_ResetClock                                     2     2      0      68
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _MainT_Initialization                                 1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _MainT                                                0     0      0    1675
;!                             _setBuz
;!                       _setRF_Enable
;!                       _setSw_Enable
;!                     _setTemp_Enable
;! ---------------------------------------------------------------------------------
;! (2) _setTemp_Enable                                       1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _setSw_Enable                                         1     1      0     124
;!                                              2 BANK0      1     1      0
;!                      _SwPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _setRF_Enable                                         2     1      1     319
;!                                              2 BANK0      2     1      1
;!                      _RfPointSelect
;!                          _setINT_GO
;! ---------------------------------------------------------------------------------
;! (5) _setINT_GO                                            1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _LED_Main                                             0     0      0     217
;!                        _setLED_Main
;! ---------------------------------------------------------------------------------
;! (2) _setLED_Main                                          3     3      0     217
;!                                              2 BANK0      3     3      0
;!                     _LedPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _LED_Initialization                                   0     0      0    1072
;!              _setLED_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setLED_Initialization                                1     1      0    1072
;!                                              4 BANK0      1     1      0
;!                     _LedPointSelect
;!                             _setLED
;! ---------------------------------------------------------------------------------
;! (1) _Flash_Memory_Main                                    0     0      0     331
;!                _Flash_Memory_Modify
;! ---------------------------------------------------------------------------------
;! (2) _Flash_Memory_Modify                                  3     3      0     331
;!                                              4 BANK0      3     3      0
;!               _Flash_Memory_Erasing
;!                  _Flash_Memory_Read
;!                 _Flash_Memory_Write
;! ---------------------------------------------------------------------------------
;! (3) _Flash_Memory_Erasing                                 0     0      0       0
;!                _Flash_Memory_Unlock
;! ---------------------------------------------------------------------------------
;! (1) _Flash_Memory_Initialization                          2     2      0    6140
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
;! (3) _Flash_Memory_Read                                    4     4      0      71
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _DimmerLights_Main                                    0     0      0    9887
;!                 _DimmerLights_Close
;!               _setDimmerLights_Main
;! ---------------------------------------------------------------------------------
;! (2) _setDimmerLights_Main                                 2     2      0    9813
;!                                             69 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;!                             _setBuz
;!                    _setDimmerLights
;!                _setDimmerLights_Adj
;! ---------------------------------------------------------------------------------
;! (3) _setDimmerLights_Adj                                  3     2      1    6868
;!                                             66 BANK0      3     2      1
;!            _DimmerLightsPointSelect
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (5) _setDimmerLights                                      3     2      1    1363
;!                                              4 BANK0      3     2      1
;!            _DimmerLightsPointSelect
;!                             _setLED
;! ---------------------------------------------------------------------------------
;! (4) _setLED                                               2     1      1     917
;!                                              2 BANK0      2     1      1
;!                     _LedPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _LedPointSelect                                       2     2      0      93
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _DimmerLights_Close                                   0     0      0      74
;!         _getDimmerLights_StatusFlag
;! ---------------------------------------------------------------------------------
;! (5) _getDimmerLights_StatusFlag                           3     3      0      74
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _DimmerLights_Initialization                          1     1      0      93
;!                                              4 BANK0      1     1      0
;!              _Dimmer_Initialization
;!     _setDimmerLights_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setDimmerLights_Initialization                       2     2      0      93
;!                                              2 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (2) _Dimmer_Initialization                                1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _DelayOff_Main                                        0     0      0   10023
;!                        _DlyOff_Main
;! ---------------------------------------------------------------------------------
;! (2) _DlyOff_Main                                          3     3      0   10023
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
;! (4) _setTxData                                            3     3      0      62
;!                                              2 BANK0      2     2      0
;!                      _RfPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _RfPointSelect                                        2     2      0      31
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (6) _setSw_Status                                         2     1      1     514
;!                                              2 BANK0      2     1      1
;!                      _SwPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _SwPointSelect                                        2     2      0      62
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _setRF_DimmerLights                                   5     4      1    6521
;!                                             61 BANK0      5     4      1
;!                    _setPercentValue
;! ---------------------------------------------------------------------------------
;! (5) _setPercentValue                                      4     4      0    5747
;!                                             57 BANK0      4     4      0
;!                           ___awtoft
;!                            ___ftdiv
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (6) ___fttol                                             14    10      4     501
;!                                             43 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___ftdiv                                             16    10      6    2847
;!                                             14 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (6) ___awtoft                                             6     3      3    2300
;!                                              8 BANK0      6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (7) ___ftpack                                             8     3      5    2037
;!                                              0 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! (6) _setRFSW_Status                                       2     1      1     579
;!                                              2 BANK0      2     1      1
;!                    _RfSWPointSelect
;! ---------------------------------------------------------------------------------
;! (7) _RfSWPointSelect                                      2     2      0      62
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_Trigger                              2     1      1     449
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_Switch                               2     1      1     449
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (6) _DimmerLightsPointSelect                              2     2      0      62
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _setBuz                                               4     2      2    1201
;!                                              6 BANK0      4     2      2
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (5) ___wmul                                               6     2      4     266
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _DelayOff_Initialization                              0     0      0      93
;!              _DlyOff_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _DlyOff_Initialization                                1     1      0      93
;!                                              2 BANK0      1     1      0
;!                _DelayOffPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _DelayOffPointSelect                                  2     2      0      62
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _CC2500_PowerOnInitial                                0     0      0    2107
;!                 _CC2500_ClearRXFIFO
;!                 _CC2500_ClearTXFIFO
;!               _CC2500_FrequencyCabr
;!                 _CC2500_InitPATable
;!                  _CC2500_InitSetREG
;!                    _CC2500_PowerRST
;!                   _CC2500_SIDLEMode
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_SIDLEMode                                     0     0      0      99
;!                _CC2500_WriteCommand
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_PowerRST                                      1     1      0     464
;!                                              6 BANK0      1     1      0
;!                   _CC2500_WriteByte
;!                      _DelayTime_1us
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_InitSetREG                                    4     4      0     458
;!                                              5 BANK0      4     4      0
;!                    _CC2500_WriteREG
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_InitPATable                                   3     3      0     393
;!                                              5 BANK0      3     3      0
;!                    _CC2500_WriteREG
;! ---------------------------------------------------------------------------------
;! (3) _CC2500_WriteREG                                      3     2      1     260
;!                                              2 BANK0      3     2      1
;!                   _CC2500_WriteByte
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_FrequencyCabr                                 0     0      0     495
;!                _CC2500_WriteCommand
;!                      _DelayTime_1us
;! ---------------------------------------------------------------------------------
;! (3) _DelayTime_1us                                        6     4      2     396
;!                                              0 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_ClearTXFIFO                                   0     0      0      99
;!                _CC2500_WriteCommand
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_ClearRXFIFO                                   0     0      0      99
;!                _CC2500_WriteCommand
;! ---------------------------------------------------------------------------------
;! (4) _CC2500_WriteCommand                                  2     2      0      99
;!                                              2 BANK0      2     2      0
;!                   _CC2500_WriteByte
;! ---------------------------------------------------------------------------------
;! (5) _CC2500_WriteByte                                     2     2      0      68
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
;! (11) _ISR                                                 1     1      0     119
;!                                              4 COMMON     1     1      0
;!                            _INT_ISR
;!                            _IOC_ISR
;!                           _TMR0_ISR
;! ---------------------------------------------------------------------------------
;! (12) _TMR0_ISR                                            4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! (12) _IOC_ISR                                             1     1      0       0
;!                                              0 COMMON     1     1      0
;!                   _setDimmerReClock
;! ---------------------------------------------------------------------------------
;! (13) _setDimmerReClock                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (12) _INT_ISR                                             0     0      0     119
;!                    _setRF_ReceiveGO
;! ---------------------------------------------------------------------------------
;! (13) _setRF_ReceiveGO                                     2     1      1     119
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
;!     _setDimmerLights_Main
;!       _DimmerLightsPointSelect
;!       _setBuz
;!         ___wmul
;!       _setDimmerLights
;!         _DimmerLightsPointSelect
;!         _setLED
;!           _LedPointSelect
;!       _setDimmerLights_Adj
;!         _DimmerLightsPointSelect
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
;!   _MainT
;!     _setBuz
;!       ___wmul
;!     _setRF_Enable
;!       _RfPointSelect
;!       _setINT_GO
;!     _setSw_Enable
;!       _SwPointSelect
;!     _setTemp_Enable
;!   _MainT_Initialization
;!   _MainT_ResetClock
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
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             3F0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       1       1        7.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      5       A       2       71.4%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     48      50       5      100.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BANK1               50      4      4F       7       98.8%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BANK2               50      0      50       9      100.0%
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
;!ABS                  0      0     14E      20        0.0%
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
;!DATA                 0      0     14E      31        0.0%
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
;;		_MainT
;;		_MainT_Initialization
;;		_MainT_ResetClock
;;		_Mcu_Initialization
;;		_PowerFault_Initialization
;;		_PowerFault_Main
;;		_RF_Initialization
;;		_RF_Main
;;		_Switch_Initialization
;;		_Switch_Main
;;		_Temp_Initialization
;;		_Temp_Main
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
	
l9819:	
;main.c: 9: MainT_Initialization();
	fcall	_MainT_Initialization
	line	10
	
l9821:	
;main.c: 10: Mcu_Initialization();
	fcall	_Mcu_Initialization
	line	11
	
l9823:	
;main.c: 11: Flash_Memory_Initialization();
	fcall	_Flash_Memory_Initialization
	line	12
	
l9825:	
;main.c: 12: LED_Initialization();
	fcall	_LED_Initialization
	line	13
	
l9827:	
;main.c: 13: Buzzer_Initialization();
	fcall	_Buzzer_Initialization
	line	16
	
l9829:	
;main.c: 15: ;;
;main.c: 16: Temp_Initialization();
	fcall	_Temp_Initialization
	line	18
	
l9831:	
;main.c: 17: ;;
;main.c: 18: PowerFault_Initialization();
	fcall	_PowerFault_Initialization
	line	19
	
l9833:	
;main.c: 19: DelayOff_Initialization();
	fcall	_DelayOff_Initialization
	line	21
	
l9835:	
;main.c: 21: DimmerLights_Initialization();
	fcall	_DimmerLights_Initialization
	line	26
	
l9837:	
;main.c: 22: ;;
;main.c: 23: ;;
;main.c: 24: ;;
;main.c: 26: Switch_Initialization();
	fcall	_Switch_Initialization
	line	27
	
l9839:	
;main.c: 27: RF_Initialization();
	fcall	_RF_Initialization
	line	28
	
l9841:	
;main.c: 28: CC2500_PowerOnInitial();
	fcall	_CC2500_PowerOnInitial
	goto	l9843
	line	30
;main.c: 30: while(1)
	
l1307:	
	line	32
	
l9843:	
;main.c: 31: {
;main.c: 32: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10291
	goto	u10290
u10291:
	goto	l9847
u10290:
	line	43
	
l9845:	
;main.c: 33: {
;main.c: 35: ;;
;main.c: 39: ;;
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
	goto	l9847
	line	61
	
l1308:	
	line	63
	
l9847:	
;main.c: 61: }
;main.c: 63: if(TMain->T0_Timerout)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10301
	goto	u10300
u10301:
	goto	l9843
u10300:
	line	65
	
l9849:	
;main.c: 64: {
;main.c: 65: TMain->T0_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	66
	
l9851:	
;main.c: 66: MainT();
	fcall	_MainT
	line	67
	
l9853:	
;main.c: 67: MainT_ResetClock();
	fcall	_MainT_ResetClock
	line	68
;main.c: 68: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10311
	goto	u10310
u10311:
	goto	l9843
u10310:
	line	70
	
l9855:	
;main.c: 69: {
;main.c: 70: Flash_Memory_Main();
	fcall	_Flash_Memory_Main
	line	72
;main.c: 72: LED_Main();
	fcall	_LED_Main
	line	75
	
l9857:	
;main.c: 74: ;;
;main.c: 75: Temp_Main();
	fcall	_Temp_Main
	line	77
	
l9859:	
;main.c: 76: ;;
;main.c: 77: PowerFault_Main();
	fcall	_PowerFault_Main
	line	80
	
l9861:	
;main.c: 79: ;;
;main.c: 80: DimmerLights_Main();
	fcall	_DimmerLights_Main
	line	81
	
l9863:	
;main.c: 81: Switch_Main();
	fcall	_Switch_Main
	line	85
	
l9865:	
;main.c: 82: ;;
;main.c: 83: ;;
;main.c: 85: RF_Main();
	fcall	_RF_Main
	line	86
	
l9867:	
;main.c: 86: DelayOff_Main();
	fcall	_DelayOff_Main
	goto	l9843
	line	87
	
l1310:	
	goto	l9843
	line	88
	
l1309:	
	goto	l9843
	line	89
	
l1311:	
	line	30
	goto	l9843
	
l1312:	
	line	90
	
l1313:	
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
	
l9713:	
;OverTemperature_B1.c: 37: if(Temp->ADtoGO)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u10121
	goto	u10120
u10121:
	goto	l1982
u10120:
	line	39
	
l9715:	
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
	
l9717:	
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
	goto	u10135
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u10135:
	skipnc
	goto	u10131
	goto	u10130
u10131:
	goto	l9721
u10130:
	line	42
	
l9719:	
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
	goto	l1982
	line	44
	
l1979:	
	
l9721:	
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
	goto	u10145
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u10145:
	skipnc
	goto	u10141
	goto	u10140
u10141:
	goto	l1982
u10140:
	line	46
	
l9723:	
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
	goto	l1982
	line	47
	
l1981:	
	goto	l1982
	line	48
	
l1980:	
	goto	l1982
	
l1978:	
	line	49
	
l1982:	
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
	
l9725:	
;PowerFault_B1.c: 51: if(PF->ADtoGO)
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u10151
	goto	u10150
u10151:
	goto	l2281
u10150:
	line	53
	
l9727:	
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
	
l9729:	
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
	goto	u10165
	movf	0+(??_getPowerFault_AD+0)+0,w
	subwf	0+(??_getPowerFault_AD+2)+0,w
u10165:
	skipnc
	goto	u10161
	goto	u10160
u10161:
	goto	l2281
u10160:
	line	56
	
l9731:	
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
	goto	l2281
	line	57
	
l2280:	
	goto	l2281
	line	58
	
l2279:	
	line	59
	
l2281:	
	return
	opt stack 0
GLOBAL	__end_of_getPowerFault_AD
	__end_of_getPowerFault_AD:
	signat	_getPowerFault_AD,4216
	global	_getAD

;; *************** function _getAD *****************
;; Defined at:
;;		line 381 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;;		_getTemp_AD
;;		_getPowerFault_AD
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	381
global __ptext3
__ptext3:	;psect for function _getAD
psect	text3
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	381
	global	__size_of_getAD
	__size_of_getAD	equ	__end_of_getAD-_getAD
	
_getAD:	
;incstack = 0
	opt	stack 10
; Regs used in _getAD: [wreg+status,2+status,0]
;getAD@adcon0 stored from wreg
	movlb 0	; select bank0
	movwf	(getAD@adcon0)
	line	383
	
l9253:	
;MCU_B1.c: 383: ADCON0=adcon0;
	movf	(getAD@adcon0),w
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	384
;MCU_B1.c: 384: ADCON1=adcon1;
	movlb 0	; select bank0
	movf	(getAD@adcon1),w
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	385
	
l9255:	
;MCU_B1.c: 385: GO_nDONE=1;
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	386
;MCU_B1.c: 386: while(GO_nDONE);
	goto	l1679
	
l1680:	
	
l1679:	
	btfsc	(1257/8)^080h,(1257)&7	;volatile
	goto	u9401
	goto	u9400
u9401:
	goto	l1679
u9400:
	goto	l9257
	
l1681:	
	line	387
	
l9257:	
;MCU_B1.c: 387: return ((ADRESH*256)+ADRESL);
	movf	(156)^080h,w	;volatile
	movlb 0	; select bank0
	clrf	(?_getAD+1)
	addwf	(?_getAD+1)
	movlb 1	; select bank1
	movf	(155)^080h,w	;volatile
	movlb 0	; select bank0
	clrf	(?_getAD)
	addwf	(?_getAD)

	goto	l1682
	
l9259:	
	line	388
	
l1682:	
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
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	57
global __ptext4
__ptext4:	;psect for function _Temp_Main
psect	text4
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	57
	global	__size_of_Temp_Main
	__size_of_Temp_Main	equ	__end_of_Temp_Main-_Temp_Main
	
_Temp_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _Temp_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	60
	
l9789:	
;OverTemperature_B1.c: 60: setTemp_Main();
	fcall	_setTemp_Main
	line	62
	
l1988:	
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
;;		_getPF_Safe
;;		_setOverTemp_Exceptions
;; This function is called by:
;;		_Temp_Main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	64
global __ptext5
__ptext5:	;psect for function _setTemp_Main
psect	text5
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	64
	global	__size_of_setTemp_Main
	__size_of_setTemp_Main	equ	__end_of_setTemp_Main-_setTemp_Main
	
_setTemp_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _setTemp_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	66
	
l9289:	
;OverTemperature_B1.c: 66: if(Temp->Enable)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9441
	goto	u9440
u9441:
	goto	l2007
u9440:
	line	68
	
l9291:	
;OverTemperature_B1.c: 67: {
;OverTemperature_B1.c: 68: if(Temp->ADtoGO == 0)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u9451
	goto	u9450
u9451:
	goto	l9303
u9450:
	line	70
	
l9293:	
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
	
l9295:	
;OverTemperature_B1.c: 72: {
;OverTemperature_B1.c: 73: if(1 && getPF_Safe())
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
	goto	u9461
	goto	u9460
u9461:
	goto	l2007
u9460:
	line	73
	
l9297:	
	fcall	_getPF_Safe
	xorlw	0&0ffh
	skipnz
	goto	u9471
	goto	u9470
u9471:
	goto	l9301
u9470:
	line	75
	
l9299:	
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
	goto	l2007
	line	79
	
l1994:	
	line	81
	
l9301:	
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
	goto	l2007
	line	82
	
l1995:	
	goto	l2007
	line	83
	
l1993:	
	line	84
;OverTemperature_B1.c: 82: }
;OverTemperature_B1.c: 83: }
;OverTemperature_B1.c: 84: }
	goto	l2007
	line	85
	
l1992:	
	line	87
	
l9303:	
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
	
l9305:	
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
	goto	u9481
	goto	u9480
u9481:
	goto	l2007
u9480:
	line	90
	
l9307:	
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
	
l9309:	
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
	
l9311:	
;OverTemperature_B1.c: 93: if(Temp->ERROR)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9491
	goto	u9490
u9491:
	goto	l9325
u9490:
	line	95
	
l9313:	
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
	goto	u9501
	goto	u9500
u9501:
	goto	l9323
u9500:
	line	97
	
l9315:	
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
	
l9317:	
;OverTemperature_B1.c: 98: if(Temp->Count >= 3)
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u9511
	goto	u9510
u9511:
	goto	l9337
u9510:
	line	100
	
l9319:	
;OverTemperature_B1.c: 99: {
;OverTemperature_B1.c: 100: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	101
	
l9321:	
;OverTemperature_B1.c: 101: setOverTemp_Exceptions(0);
	movlw	(0)
	fcall	_setOverTemp_Exceptions
	goto	l9337
	line	102
	
l2000:	
	line	103
;OverTemperature_B1.c: 102: }
;OverTemperature_B1.c: 103: }
	goto	l9337
	line	104
	
l1999:	
	line	106
	
l9323:	
;OverTemperature_B1.c: 104: else
;OverTemperature_B1.c: 105: {
;OverTemperature_B1.c: 106: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l9337
	line	107
	
l2001:	
	line	108
;OverTemperature_B1.c: 107: }
;OverTemperature_B1.c: 108: }
	goto	l9337
	line	109
	
l1998:	
	line	111
	
l9325:	
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
	goto	u9521
	goto	u9520
u9521:
	goto	l9335
u9520:
	line	113
	
l9327:	
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
	
l9329:	
;OverTemperature_B1.c: 114: if(Temp->Count >= 3)
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u9531
	goto	u9530
u9531:
	goto	l9337
u9530:
	line	116
	
l9331:	
;OverTemperature_B1.c: 115: {
;OverTemperature_B1.c: 116: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	117
	
l9333:	
;OverTemperature_B1.c: 117: setOverTemp_Exceptions(1);
	movlw	(01h)
	fcall	_setOverTemp_Exceptions
	goto	l9337
	line	118
	
l2004:	
	line	119
;OverTemperature_B1.c: 118: }
;OverTemperature_B1.c: 119: }
	goto	l9337
	line	120
	
l2003:	
	line	122
	
l9335:	
;OverTemperature_B1.c: 120: else
;OverTemperature_B1.c: 121: {
;OverTemperature_B1.c: 122: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l9337
	line	123
	
l2005:	
	goto	l9337
	line	124
	
l2002:	
	line	125
	
l9337:	
;OverTemperature_B1.c: 123: }
;OverTemperature_B1.c: 124: }
;OverTemperature_B1.c: 125: if(Temp->ERROR == 0)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u9541
	goto	u9540
u9541:
	goto	l9341
u9540:
	line	127
	
l9339:	
;OverTemperature_B1.c: 126: {
;OverTemperature_B1.c: 127: Temp->Safe=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l9341
	line	128
	
l2006:	
	line	129
	
l9341:	
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
	
l9343:	
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
	
l9345:	
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
	
l9347:	
;OverTemperature_B1.c: 132: Temp->ADH[1]=0;
	movf	(_Temp),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l2007
	line	133
	
l1997:	
	goto	l2007
	line	134
	
l1996:	
	goto	l2007
	line	135
	
l1991:	
	line	136
	
l2007:	
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
psect	text6,local,class=CODE,delta=2,merge=1
	line	138
global __ptext6
__ptext6:	;psect for function _setOverTemp_Exceptions
psect	text6
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
	
l8875:	
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
	
l8877:	
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
	
l8879:	
;OverTemperature_B1.c: 142: if(command)
	movf	(setOverTemp_Exceptions@command),w
	skipz
	goto	u8910
	goto	l8883
u8910:
	line	144
	
l8881:	
;OverTemperature_B1.c: 143: {
;OverTemperature_B1.c: 144: DimmerLights_Exceptions(1);
	movlw	(01h)
	fcall	_DimmerLights_Exceptions
	line	148
;OverTemperature_B1.c: 148: }
	goto	l2011
	line	149
	
l2010:	
	line	151
	
l8883:	
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
	
l2011:	
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
	
l2012:	
	return
	opt stack 0
GLOBAL	__end_of_setOverTemp_Exceptions
	__end_of_setOverTemp_Exceptions:
	signat	_setOverTemp_Exceptions,4216
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
;;		_setTemp_Main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	40
global __ptext7
__ptext7:	;psect for function _getPF_Safe
psect	text7
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	40
	global	__size_of_getPF_Safe
	__size_of_getPF_Safe	equ	__end_of_getPF_Safe-_getPF_Safe
	
_getPF_Safe:	
;incstack = 0
	opt	stack 9
; Regs used in _getPF_Safe: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	42
	
l8871:	
;PowerFault_B1.c: 42: return PF->Safe;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	rrf	indf1,w
	rrf	wreg,f
	andlw	(1<<1)-1
	goto	l2273
	
l8873:	
	line	43
	
l2273:	
	return
	opt stack 0
GLOBAL	__end_of_getPF_Safe
	__end_of_getPF_Safe:
	signat	_getPF_Safe,89
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
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
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
	
l9699:	
;OverTemperature_B1.c: 18: setTemp_Initialization();
	fcall	_setTemp_Initialization
	line	20
	
l1966:	
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
	
l9285:	
;OverTemperature_B1.c: 53: Temp=&Temp1;
	movlw	(_Temp1)&0ffh
	movlb 0	; select bank0
	movwf	(??_setTemp_Initialization+0)+0
	movf	(??_setTemp_Initialization+0)+0,w
	movwf	(_Temp)
	line	54
	
l9287:	
;OverTemperature_B1.c: 54: Temp->Safe=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	55
	
l1985:	
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
	opt	stack 5
; Regs used in _Switch_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	65
	
l9793:	
;Switch_B1.c: 65: setSw_Main(1);
	movlw	(01h)
	fcall	_setSw_Main
	line	69
;Switch_B1.c: 69: setSw_Main(2);
	movlw	(02h)
	fcall	_setSw_Main
	line	76
	
l2768:	
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
;;  sw              1    2[BANK1 ] unsigned char 
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
;;      Locals:         0       0       3       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       3       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
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
	opt	stack 5
; Regs used in _setSw_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setSw_Main@sw stored from wreg
	movlb 1	; select bank1
	movwf	(setSw_Main@sw)^080h
	line	114
	
l9473:	
;Switch_B1.c: 114: if(Sw->Enable)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9821
	goto	u9820
u9821:
	goto	l2804
u9820:
	line	116
	
l9475:	
;Switch_B1.c: 115: {
;Switch_B1.c: 116: SwPointSelect(sw);
	movf	(setSw_Main@sw)^080h,w
	fcall	_SwPointSelect
	line	133
	
l9477:	
;Switch_B1.c: 133: if(sw == 1)
	movlb 1	; select bank1
	movf	(setSw_Main@sw)^080h,w
	xorlw	01h&0ffh
	skipz
	goto	u9831
	goto	u9830
u9831:
	goto	l9487
u9830:
	line	135
	
l9479:	
;Switch_B1.c: 134: {
;Switch_B1.c: 135: Sw->Touch=(RA6 || RA4)?1:0;
	clrf	(_setSw_Main$4153)^080h
	incf	(_setSw_Main$4153)^080h,f
	movlb 0	; select bank0
	btfsc	(102/8),(102)&7	;volatile
	goto	u9841
	goto	u9840
u9841:
	goto	l9485
u9840:
	
l9481:	
	btfsc	(100/8),(100)&7	;volatile
	goto	u9851
	goto	u9850
u9851:
	goto	l9485
u9850:
	
l9483:	
	movlb 1	; select bank1
	clrf	(_setSw_Main$4153)^080h
	goto	l9485
	
l2783:	
	
l9485:	
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 1	; select bank1
	movf	(_setSw_Main$4153)^080h,w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	136
;Switch_B1.c: 136: }
	goto	l9497
	line	137
	
l2781:	
	
l9487:	
;Switch_B1.c: 137: else if(sw == 2)
	movf	(setSw_Main@sw)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u9861
	goto	u9860
u9861:
	goto	l9497
u9860:
	line	139
	
l9489:	
;Switch_B1.c: 138: {
;Switch_B1.c: 139: Sw->Touch=(RA0 || RB1)?1:0;
	clrf	(_setSw_Main$4154)^080h
	incf	(_setSw_Main$4154)^080h,f
	movlb 0	; select bank0
	btfsc	(96/8),(96)&7	;volatile
	goto	u9871
	goto	u9870
u9871:
	goto	l9495
u9870:
	
l9491:	
	btfsc	(105/8),(105)&7	;volatile
	goto	u9881
	goto	u9880
u9881:
	goto	l9495
u9880:
	
l9493:	
	movlb 1	; select bank1
	clrf	(_setSw_Main$4154)^080h
	goto	l9495
	
l2787:	
	
l9495:	
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 1	; select bank1
	movf	(_setSw_Main$4154)^080h,w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	goto	l9497
	line	140
	
l2785:	
	goto	l9497
	line	148
	
l2784:	
	
l9497:	
;Switch_B1.c: 140: }
;Switch_B1.c: 148: if(Sw->Touch)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9891
	goto	u9890
u9891:
	goto	l9545
u9890:
	line	150
	
l9499:	
;Switch_B1.c: 149: {
;Switch_B1.c: 150: if(!Sw->Debounce)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u9901
	goto	u9900
u9901:
	goto	l9511
u9900:
	line	152
	
l9501:	
;Switch_B1.c: 151: {
;Switch_B1.c: 152: Sw->DebounceTime++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	153
	
l9503:	
;Switch_B1.c: 153: if(Sw->DebounceTime >= 5)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(05h)
	subwf	indf1,w
	skipc
	goto	u9911
	goto	u9910
u9911:
	goto	l2804
u9910:
	line	155
	
l9505:	
;Switch_B1.c: 154: {
;Switch_B1.c: 155: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	156
	
l9507:	
;Switch_B1.c: 156: Sw->Debounce=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	159
	
l9509:	
;Switch_B1.c: 159: Sw_DimmerOnFunc(sw);
	movlb 1	; select bank1
	movf	(setSw_Main@sw)^080h,w
	fcall	_Sw_DimmerOnFunc
	goto	l2804
	line	162
	
l2790:	
	line	163
;Switch_B1.c: 162: }
;Switch_B1.c: 163: }
	goto	l2804
	line	164
	
l2789:	
	line	166
	
l9511:	
;Switch_B1.c: 164: else
;Switch_B1.c: 165: {
;Switch_B1.c: 166: if(!Sw->Hold1)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u9921
	goto	u9920
u9921:
	goto	l9521
u9920:
	line	168
	
l9513:	
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
	
l9515:	
;Switch_B1.c: 169: if(Sw->Hold1Time >= 150)
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setSw_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setSw_Main+0)+0+1
	movlw	high(096h)
	subwf	1+(??_setSw_Main+0)+0,w
	movlw	low(096h)
	skipnz
	subwf	0+(??_setSw_Main+0)+0,w
	skipc
	goto	u9931
	goto	u9930
u9931:
	goto	l2804
u9930:
	line	171
	
l9517:	
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
	
l9519:	
;Switch_B1.c: 175: Sw_DimmerAdjFunc(sw);
	movlb 1	; select bank1
	movf	(setSw_Main@sw)^080h,w
	fcall	_Sw_DimmerAdjFunc
	goto	l2804
	line	178
	
l2793:	
	line	179
;Switch_B1.c: 178: }
;Switch_B1.c: 179: }
	goto	l2804
	line	180
	
l2792:	
	line	182
	
l9521:	
;Switch_B1.c: 180: else
;Switch_B1.c: 181: {
;Switch_B1.c: 182: if(!Sw->Hold2)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u9941
	goto	u9940
u9941:
	goto	l9535
u9940:
	line	184
	
l9523:	
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
	
l9525:	
;Switch_B1.c: 185: if(Sw->Hold2Time >= 150)
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setSw_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setSw_Main+0)+0+1
	movlw	high(096h)
	subwf	1+(??_setSw_Main+0)+0,w
	movlw	low(096h)
	skipnz
	subwf	0+(??_setSw_Main+0)+0,w
	skipc
	goto	u9951
	goto	u9950
u9951:
	goto	l2804
u9950:
	line	187
	
l9527:	
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
	
l9529:	
;Switch_B1.c: 192: setRF_Learn(1,1);
	clrf	(setRF_Learn@command)
	incf	(setRF_Learn@command),f
	movlw	(01h)
	fcall	_setRF_Learn
	line	194
	
l9531:	
;Switch_B1.c: 194: if(TMain->First)
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9961
	goto	u9960
u9961:
	goto	l2804
u9960:
	line	196
	
l9533:	
;Switch_B1.c: 195: {
;Switch_B1.c: 196: setBuz(2,100);
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(02h)
	fcall	_setBuz
	goto	l2804
	line	197
	
l2797:	
	goto	l2804
	line	199
	
l2796:	
	line	200
;Switch_B1.c: 197: }
;Switch_B1.c: 199: }
;Switch_B1.c: 200: }
	goto	l2804
	line	201
	
l2795:	
	line	203
	
l9535:	
;Switch_B1.c: 201: else
;Switch_B1.c: 202: {
;Switch_B1.c: 203: if(!Sw->Hold3)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u9971
	goto	u9970
u9971:
	goto	l2804
u9970:
	line	205
	
l9537:	
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
	
l9539:	
;Switch_B1.c: 206: if(Sw->Hold3Time >= 300)
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setSw_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setSw_Main+0)+0+1
	movlw	high(012Ch)
	subwf	1+(??_setSw_Main+0)+0,w
	movlw	low(012Ch)
	skipnz
	subwf	0+(??_setSw_Main+0)+0,w
	skipc
	goto	u9981
	goto	u9980
u9981:
	goto	l2804
u9980:
	line	208
	
l9541:	
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
	
l9543:	
;Switch_B1.c: 212: setRF_Learn(1,0);
	clrf	(setRF_Learn@command)
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l2804
	line	215
	
l2800:	
	goto	l2804
	line	216
	
l2799:	
	goto	l2804
	line	217
	
l2798:	
	goto	l2804
	line	218
	
l2794:	
	goto	l2804
	line	219
	
l2791:	
	line	220
;Switch_B1.c: 215: }
;Switch_B1.c: 216: }
;Switch_B1.c: 217: }
;Switch_B1.c: 218: }
;Switch_B1.c: 219: }
;Switch_B1.c: 220: }
	goto	l2804
	line	221
	
l2788:	
	line	223
	
l9545:	
;Switch_B1.c: 221: else
;Switch_B1.c: 222: {
;Switch_B1.c: 223: if(Sw->Debounce)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9991
	goto	u9990
u9991:
	goto	l2804
u9990:
	line	225
	
l9547:	
;Switch_B1.c: 224: {
;Switch_B1.c: 225: Sw->DebounceTime++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	226
	
l9549:	
;Switch_B1.c: 226: if(Sw->DebounceTime >= 5)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(05h)
	subwf	indf1,w
	skipc
	goto	u10001
	goto	u10000
u10001:
	goto	l2804
u10000:
	line	228
	
l9551:	
;Switch_B1.c: 227: {
;Switch_B1.c: 228: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	229
	
l9553:	
;Switch_B1.c: 229: Sw->Debounce=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	230
	
l9555:	
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
	
l9557:	
;Switch_B1.c: 231: Sw->Hold1=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	232
	
l9559:	
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
	
l9561:	
;Switch_B1.c: 233: Sw->Hold2=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	234
	
l9563:	
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
	
l9565:	
;Switch_B1.c: 235: Sw->Hold3=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	238
	
l9567:	
;Switch_B1.c: 238: Sw_DimmerOffFunc(sw);
	movlb 1	; select bank1
	movf	(setSw_Main@sw)^080h,w
	fcall	_Sw_DimmerOffFunc
	line	243
	
l9569:	
;Switch_B1.c: 243: setRF_Learn(1,0);
	movlb 0	; select bank0
	clrf	(setRF_Learn@command)
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l2804
	line	245
	
l2803:	
	goto	l2804
	line	246
	
l2802:	
	goto	l2804
	line	247
	
l2801:	
	goto	l2804
	line	248
	
l2780:	
	line	249
	
l2804:	
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
	
l8893:	
;RF_Control_B1.c: 33: RfPointSelect(rf);
	movf	(setRF_Learn@rf),w
	fcall	_RfPointSelect
	line	34
	
l8895:	
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
	
l2489:	
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
	opt	stack 5
; Regs used in _Sw_DimmerOnFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerOnFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerOnFunc@sw)
	line	253
	
l8953:	
;Switch_B1.c: 253: char Idle=1;
	clrf	(Sw_DimmerOnFunc@Idle)
	incf	(Sw_DimmerOnFunc@Idle),f
	line	270
	
l8955:	
;Switch_B1.c: 270: if(sw == 1)
	movf	(Sw_DimmerOnFunc@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u9051
	goto	u9050
u9051:
	goto	l8959
u9050:
	line	272
	
l8957:	
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
	goto	l8963
	line	274
	
l2807:	
	
l8959:	
;Switch_B1.c: 274: else if(sw == 2)
	movf	(Sw_DimmerOnFunc@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u9061
	goto	u9060
u9061:
	goto	l8963
u9060:
	line	276
	
l8961:	
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
	goto	l8963
	line	277
	
l2809:	
	goto	l8963
	line	280
	
l2808:	
	
l8963:	
;Switch_B1.c: 277: }
;Switch_B1.c: 280: if(Idle)
	movf	(Sw_DimmerOnFunc@Idle),w
	skipz
	goto	u9070
	goto	l2813
u9070:
	line	282
	
l8965:	
;Switch_B1.c: 281: {
;Switch_B1.c: 282: Sw->Flag=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,7
	line	283
	
l8967:	
;Switch_B1.c: 283: setBuz(1,100);
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	284
	
l8969:	
;Switch_B1.c: 284: if(!Sw->Status)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u9081
	goto	u9080
u9081:
	goto	l8983
u9080:
	line	286
	
l8971:	
;Switch_B1.c: 285: {
;Switch_B1.c: 286: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	287
	
l8973:	
;Switch_B1.c: 287: setRFSW_Status(sw,1);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	incf	(setRFSW_Status@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRFSW_Status
	line	289
	
l8975:	
;Switch_B1.c: 289: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	290
	
l8977:	
;Switch_B1.c: 290: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	incf	(setDimmerLights_Switch@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	292
	
l8979:	
;Switch_B1.c: 292: setRF_DimmerLights(sw,Sw->Status);
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movlb 0	; select bank0
	movwf	(setRF_DimmerLights@on)
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRF_DimmerLights
	line	293
	
l8981:	
;Switch_B1.c: 293: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	294
;Switch_B1.c: 294: }
	movlb 0	; select bank0
	goto	l2813
	line	295
	
l2811:	
	line	297
	
l8983:	
;Switch_B1.c: 295: else
;Switch_B1.c: 296: {
;Switch_B1.c: 297: Sw->Status=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	line	298
	
l8985:	
;Switch_B1.c: 298: setRFSW_Status(sw,Sw->Status);
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movlb 0	; select bank0
	movwf	(setRFSW_Status@command)
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRFSW_Status
	movlb 0	; select bank0
	goto	l2813
	line	299
	
l2812:	
	movlb 0	; select bank0
	goto	l2813
	line	300
	
l2810:	
	line	301
	
l2813:	
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
	opt	stack 5
; Regs used in _Sw_DimmerOffFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerOffFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerOffFunc@sw)
	line	305
	
l9009:	
;Switch_B1.c: 305: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u9131
	goto	u9130
u9131:
	goto	l2820
u9130:
	line	307
	
l9011:	
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
	goto	u9141
	goto	u9140
u9141:
	goto	l9027
u9140:
	line	310
	
l9013:	
;Switch_B1.c: 309: {
;Switch_B1.c: 310: if(Sw->Adj)
	incf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9151
	goto	u9150
u9151:
	goto	l2820
u9150:
	line	312
	
l9015:	
;Switch_B1.c: 311: {
;Switch_B1.c: 312: Sw->Adj=0;
	incf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	313
	
l9017:	
;Switch_B1.c: 313: setDimmerLights_TriggerAdj(sw,1);
	clrf	(setDimmerLights_TriggerAdj@command)
	incf	(setDimmerLights_TriggerAdj@command),f
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	314
	
l9019:	
;Switch_B1.c: 314: setDimmerLights_AdjGo(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_AdjGo@command)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	line	316
	
l9021:	
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
	
l9023:	
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
	
l9025:	
;Switch_B1.c: 318: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l2820
	line	320
	
l2818:	
	line	321
;Switch_B1.c: 320: }
;Switch_B1.c: 321: }
	goto	l2820
	line	322
	
l2817:	
	line	324
	
l9027:	
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
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,6
	movlw	1
	movlb 0	; select bank0
	movwf	(setRF_DimmerLights@on)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setRF_DimmerLights
	line	329
;Switch_B1.c: 329: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l2820
	line	330
	
l2819:	
	goto	l2820
	line	331
	
l2816:	
	line	332
	
l2820:	
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
	
l8987:	
;Switch_B1.c: 336: char Idle=1;
	clrf	(Sw_DimmerAdjFunc@Idle)
	incf	(Sw_DimmerAdjFunc@Idle),f
	line	353
	
l8989:	
;Switch_B1.c: 353: if(sw == 1)
	movf	(Sw_DimmerAdjFunc@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u9091
	goto	u9090
u9091:
	goto	l8993
u9090:
	line	355
	
l8991:	
;Switch_B1.c: 354: {
;Switch_B1.c: 355: Idle=(DimmerLights22->AdjGo)?0:1;
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
	movwf	(Sw_DimmerAdjFunc@Idle)
	line	356
;Switch_B1.c: 356: }
	goto	l8997
	line	357
	
l2823:	
	
l8993:	
;Switch_B1.c: 357: else if(sw == 2)
	movf	(Sw_DimmerAdjFunc@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u9101
	goto	u9100
u9101:
	goto	l8997
u9100:
	line	359
	
l8995:	
;Switch_B1.c: 358: {
;Switch_B1.c: 359: Idle=(DimmerLights11->AdjGo)?0:1;
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
	movwf	(Sw_DimmerAdjFunc@Idle)
	goto	l8997
	line	360
	
l2825:	
	goto	l8997
	line	363
	
l2824:	
	
l8997:	
;Switch_B1.c: 360: }
;Switch_B1.c: 363: if(Idle)
	movf	(Sw_DimmerAdjFunc@Idle),w
	skipz
	goto	u9110
	goto	l2828
u9110:
	line	365
	
l8999:	
;Switch_B1.c: 364: {
;Switch_B1.c: 365: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u9121
	goto	u9120
u9121:
	goto	l2828
u9120:
	line	367
	
l9001:	
;Switch_B1.c: 366: {
;Switch_B1.c: 367: Sw->Adj=1;
	incf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	368
;Switch_B1.c: 368: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	369
	
l9003:	
;Switch_B1.c: 369: setRFSW_Status(sw,1);
	clrf	(setRFSW_Status@command)
	incf	(setRFSW_Status@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setRFSW_Status
	line	371
	
l9005:	
;Switch_B1.c: 371: setDimmerLights_TriggerAdj(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_TriggerAdj@command)
	incf	(setDimmerLights_TriggerAdj@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	372
	
l9007:	
;Switch_B1.c: 372: setDimmerLights_AdjGo(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_AdjGo@command)
	incf	(setDimmerLights_AdjGo@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	movlb 0	; select bank0
	goto	l2828
	line	374
	
l2827:	
	movlb 0	; select bank0
	goto	l2828
	line	375
	
l2826:	
	line	376
	
l2828:	
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
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	450
global __ptext16
__ptext16:	;psect for function _setDimmerLights_TriggerAdj
psect	text16
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
	
l8609:	
;Dimmer_B1.c: 452: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerAdj@lights),w
	fcall	_DimmerLightsPointSelect
	line	453
	
l8611:	
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
	
l940:	
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
psect	text17,local,class=CODE,delta=2,merge=1
	line	440
global __ptext17
__ptext17:	;psect for function _setDimmerLights_AdjGo
psect	text17
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
	
l8605:	
;Dimmer_B1.c: 442: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjGo@lights),w
	fcall	_DimmerLightsPointSelect
	line	443
	
l8607:	
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
	
l934:	
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
	
l9703:	
;Switch_B1.c: 40: TouchPower();
	fcall	_TouchPower
	line	42
	
l9705:	
;Switch_B1.c: 42: WPUB1=0;
	movlb 4	; select bank4
	bcf	(4201/8)^0200h,(4201)&7	;volatile
	line	51
	
l9707:	
;Switch_B1.c: 51: setSw_Initialization(1);
	movlw	(01h)
	fcall	_setSw_Initialization
	line	54
	
l9709:	
;Switch_B1.c: 54: setSw_Initialization(2);
	movlw	(02h)
	fcall	_setSw_Initialization
	line	60
	
l2765:	
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
	
l9471:	
;Switch_B1.c: 80: setLED(sw,1);
	clrf	(setLED@command)
	incf	(setLED@command),f
	movf	(setSw_Initialization@sw),w
	fcall	_setLED
	line	84
	
l2771:	
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
	
l9469:	
;Switch_B1.c: 11: while(!RC5)
	goto	l2753
	
l2754:	
	line	12
;Switch_B1.c: 12: RC5=1;
	bsf	(117/8),(117)&7	;volatile
	
l2753:	
	line	11
	movlb 0	; select bank0
	btfss	(117/8),(117)&7	;volatile
	goto	u9811
	goto	u9810
u9811:
	goto	l2754
u9810:
	goto	l2756
	
l2755:	
	line	13
	
l2756:	
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
	
l9795:	
;RF_Control_B1.c: 27: setRF_Main(1);
	movlw	(01h)
	fcall	_setRF_Main
	line	29
	
l2486:	
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
;;  rf              1    2[BANK1 ] unsigned char 
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
;;      Locals:         0       0       2       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       1       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       3       0       0       0       0       0       0       0       0       0       0       0
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
	movlb 1	; select bank1
	movwf	(setRF_Main@rf)^080h
	line	60
	
l9409:	
;RF_Control_B1.c: 60: RfPointSelect(rf);
	movf	(setRF_Main@rf)^080h,w
	fcall	_RfPointSelect
	line	61
	
l9411:	
;RF_Control_B1.c: 61: if(RF->Enable)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9681
	goto	u9680
u9681:
	goto	l2514
u9680:
	line	69
	
l9413:	
;RF_Control_B1.c: 62: {
;RF_Control_B1.c: 69: RF->Key=((RA6 || RA4 || RA0 || RB1 ) && !RF->Learn)?1:0;
	movlb 1	; select bank1
	clrf	(_setRF_Main$3833)^080h
	
l9415:	
	movlb 0	; select bank0
	btfsc	(102/8),(102)&7	;volatile
	goto	u9691
	goto	u9690
u9691:
	goto	l9423
u9690:
	
l9417:	
	btfsc	(100/8),(100)&7	;volatile
	goto	u9701
	goto	u9700
u9701:
	goto	l9423
u9700:
	
l9419:	
	btfsc	(96/8),(96)&7	;volatile
	goto	u9711
	goto	u9710
u9711:
	goto	l9423
u9710:
	
l9421:	
	btfss	(105/8),(105)&7	;volatile
	goto	u9721
	goto	u9720
u9721:
	goto	l9427
u9720:
	goto	l9423
	
l7905:	
	
l9423:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u9731
	goto	u9730
u9731:
	goto	l9427
u9730:
	
l9425:	
	movlb 1	; select bank1
	clrf	(_setRF_Main$3833)^080h
	incf	(_setRF_Main$3833)^080h,f
	goto	l9427
	
l2503:	
	
l9427:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 1	; select bank1
	movf	(_setRF_Main$3833)^080h,w
	bcf	indf1,7
	skipz
	bsf	indf1,7
	line	77
;RF_Control_B1.c: 77: if(!RF->Key)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,7
	goto	u9741
	goto	u9740
u9741:
	goto	l9449
u9740:
	line	79
	
l9429:	
;RF_Control_B1.c: 78: {
;RF_Control_B1.c: 79: if(RF->ReceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9751
	goto	u9750
u9751:
	goto	l9437
u9750:
	line	81
	
l9431:	
;RF_Control_B1.c: 80: {
;RF_Control_B1.c: 81: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	82
	
l9433:	
;RF_Control_B1.c: 82: CC2500_RxData();
	fcall	_CC2500_RxData
	line	88
	
l9435:	
;RF_Control_B1.c: 88: getRxData(1);
	movlw	(01h)
	fcall	_getRxData
	line	91
;RF_Control_B1.c: 91: }
	goto	l9451
	line	92
	
l2505:	
	line	94
	
l9437:	
;RF_Control_B1.c: 92: else
;RF_Control_B1.c: 93: {
;RF_Control_B1.c: 94: if(!RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u9761
	goto	u9760
u9761:
	goto	l9451
u9760:
	line	97
	
l9439:	
;RF_Control_B1.c: 95: {
;RF_Control_B1.c: 97: if(!RF->RxStatus)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u9771
	goto	u9770
u9771:
	goto	l9451
u9770:
	line	99
	
l9441:	
;RF_Control_B1.c: 98: {
;RF_Control_B1.c: 99: RF->RxStatus=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	100
	
l9443:	
;RF_Control_B1.c: 100: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	101
	
l9445:	
;RF_Control_B1.c: 101: CC2500_WriteCommand(0x34);
	movlw	(034h)
	fcall	_CC2500_WriteCommand
	line	102
	
l9447:	
;RF_Control_B1.c: 102: setINT_GO(1);
	movlw	(01h)
	fcall	_setINT_GO
	goto	l9451
	line	103
	
l2508:	
	goto	l9451
	line	105
	
l2507:	
	goto	l9451
	line	106
	
l2506:	
	line	107
;RF_Control_B1.c: 103: }
;RF_Control_B1.c: 105: }
;RF_Control_B1.c: 106: }
;RF_Control_B1.c: 107: }
	goto	l9451
	line	108
	
l2504:	
	line	110
	
l9449:	
;RF_Control_B1.c: 108: else
;RF_Control_B1.c: 109: {
;RF_Control_B1.c: 110: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	goto	l9451
	line	111
	
l2509:	
	line	112
	
l9451:	
;RF_Control_B1.c: 111: }
;RF_Control_B1.c: 112: if(RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u9781
	goto	u9780
u9781:
	goto	l2514
u9780:
	line	114
	
l9453:	
;RF_Control_B1.c: 113: {
;RF_Control_B1.c: 114: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	115
	
l9455:	
;RF_Control_B1.c: 115: if(!RF->Debounce)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u9791
	goto	u9790
u9791:
	goto	l9465
u9790:
	line	117
	
l9457:	
;RF_Control_B1.c: 116: {
;RF_Control_B1.c: 117: RF->DebounceTime++;
	movlw	(01h)
	movlb 1	; select bank1
	movwf	(??_setRF_Main+0)^080h+0
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setRF_Main+0)^080h+0,w
	addwf	indf1,f
	line	118
	
l9459:	
;RF_Control_B1.c: 118: if(RF->DebounceTime == 25)
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	019h&0ffh
	skipz
	goto	u9801
	goto	u9800
u9801:
	goto	l2514
u9800:
	line	120
	
l9461:	
;RF_Control_B1.c: 119: {
;RF_Control_B1.c: 120: RF->DebounceTime=0;
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	121
	
l9463:	
;RF_Control_B1.c: 121: RF->Debounce=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	goto	l2514
	line	122
	
l2512:	
	line	123
;RF_Control_B1.c: 122: }
;RF_Control_B1.c: 123: }
	goto	l2514
	line	124
	
l2511:	
	line	126
	
l9465:	
;RF_Control_B1.c: 124: else
;RF_Control_B1.c: 125: {
;RF_Control_B1.c: 126: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	127
;RF_Control_B1.c: 127: RF->TransceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	128
	
l9467:	
;RF_Control_B1.c: 128: CC2500_TxData();
	fcall	_CC2500_TxData
	goto	l2514
	line	129
	
l2513:	
	goto	l2514
	line	130
	
l2510:	
	goto	l2514
	line	137
	
l2501:	
	line	138
	
l2514:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Main
	__end_of_setRF_Main:
	signat	_setRF_Main,4216
	global	_getRxData

;; *************** function _getRxData *****************
;; Defined at:
;;		line 214 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    0[BANK1 ] unsigned char 
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
;;      Locals:         0       0       1       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       1       0       0       0       0       0       0       0       0       0       0       0
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
	line	214
global __ptext23
__ptext23:	;psect for function _getRxData
psect	text23
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	214
	global	__size_of_getRxData
	__size_of_getRxData	equ	__end_of_getRxData-_getRxData
	
_getRxData:	
;incstack = 0
	opt	stack 2
; Regs used in _getRxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;getRxData@rf stored from wreg
	movlb 1	; select bank1
	movwf	(getRxData@rf)^080h
	line	217
	
l8897:	
;RF_Control_B1.c: 216: unsigned char i;
;RF_Control_B1.c: 217: RfPointSelect(rf);
	movf	(getRxData@rf)^080h,w
	fcall	_RfPointSelect
	line	218
	
l8899:	
;RF_Control_B1.c: 218: if(RF->Learn)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,6
	goto	u8931
	goto	u8930
u8931:
	goto	l8907
u8930:
	line	220
	
l8901:	
;RF_Control_B1.c: 219: {
;RF_Control_B1.c: 220: if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u8941
	goto	u8940
u8941:
	goto	l2540
u8940:
	
l8903:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	064h&0ffh
	skipz
	goto	u8951
	goto	u8950
u8951:
	goto	l2540
u8950:
	line	222
	
l8905:	
;RF_Control_B1.c: 221: {
;RF_Control_B1.c: 222: setLog_Code(1);
	movlw	(01h)
	fcall	_setLog_Code
	goto	l2540
	line	223
	
l2530:	
	line	224
;RF_Control_B1.c: 223: }
;RF_Control_B1.c: 224: }
	goto	l2540
	line	225
	
l2529:	
	line	227
	
l8907:	
;RF_Control_B1.c: 225: else
;RF_Control_B1.c: 226: {
;RF_Control_B1.c: 227: if(RF_Data[0] == 0x00 && RF_Data[1] == 0x02)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u8961
	goto	u8960
u8961:
	goto	l2540
u8960:
	
l8909:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u8971
	goto	u8970
u8971:
	goto	l2540
u8970:
	line	229
	
l8911:	
;RF_Control_B1.c: 228: {
;RF_Control_B1.c: 229: if(RF_Data[12] == 0xff && RF_Data[13] == 0xff && RF_Data[14] == 0xff)
	movf	0+(_RF_Data)^080h+0Ch,w
	xorlw	0FFh&0ffh
	skipz
	goto	u8981
	goto	u8980
u8981:
	goto	l8919
u8980:
	
l8913:	
	movf	0+(_RF_Data)^080h+0Dh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u8991
	goto	u8990
u8991:
	goto	l8919
u8990:
	
l8915:	
	movf	0+(_RF_Data)^080h+0Eh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u9001
	goto	u9000
u9001:
	goto	l8919
u9000:
	line	231
	
l8917:	
;RF_Control_B1.c: 230: {
;RF_Control_B1.c: 231: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	232
;RF_Control_B1.c: 232: }
	goto	l2540
	line	233
	
l2533:	
	line	235
	
l8919:	
;RF_Control_B1.c: 233: else
;RF_Control_B1.c: 234: {
;RF_Control_B1.c: 235: if(RF_Data[12] == Product->Data[12] && RF_Data[13] == Product->Data[13] && RF_Data[14] == Product->Data[14])
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
	goto	u9011
	goto	u9010
u9011:
	goto	l2540
u9010:
	
l8921:	
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
	goto	u9021
	goto	u9020
u9021:
	goto	l2540
u9020:
	
l8923:	
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
	goto	u9031
	goto	u9030
u9031:
	goto	l2540
u9030:
	line	237
	
l8925:	
;RF_Control_B1.c: 236: {
;RF_Control_B1.c: 237: setControl_Lights_Table(1);
	movlw	(01h)
	fcall	_setControl_Lights_Table
	goto	l2540
	line	238
	
l2535:	
	goto	l2540
	line	239
	
l2534:	
	line	240
;RF_Control_B1.c: 238: }
;RF_Control_B1.c: 239: }
;RF_Control_B1.c: 240: }
	goto	l2540
	line	241
	
l2532:	
	goto	l2540
	
l8927:	
	goto	l2540
	
l8929:	
	goto	l2540
	line	244
	
l8931:	
;RF_Control_B1.c: 242: {
;RF_Control_B1.c: 243: ;
;RF_Control_B1.c: 244: }
	goto	l2540
	line	245
	
l2537:	
	goto	l2540
	
l8933:	
	goto	l2540
	
l8935:	
	goto	l2540
	line	248
;RF_Control_B1.c: 246: {
;RF_Control_B1.c: 247: ;
	
l2539:	
	goto	l2540
	line	253
	
l2538:	
	goto	l2540
	
l2536:	
	goto	l2540
	
l2531:	
	line	254
	
l2540:	
	return
	opt stack 0
GLOBAL	__end_of_getRxData
	__end_of_getRxData:
	signat	_getRxData,4216
	global	_setLog_Code

;; *************** function _setLog_Code *****************
;; Defined at:
;;		line 256 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
	line	256
global __ptext24
__ptext24:	;psect for function _setLog_Code
psect	text24
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	256
	global	__size_of_setLog_Code
	__size_of_setLog_Code	equ	__end_of_setLog_Code-_setLog_Code
	
_setLog_Code:	
;incstack = 0
	opt	stack 6
; Regs used in _setLog_Code: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLog_Code@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setLog_Code@rf)
	line	258
	
l8645:	
;RF_Control_B1.c: 258: RfPointSelect(rf);
	movf	(setLog_Code@rf),w
	fcall	_RfPointSelect
	line	259
	
l8647:	
;RF_Control_B1.c: 259: Product->Data[12]=RF_Data[12];
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
	line	260
	
l8649:	
;RF_Control_B1.c: 260: Product->Data[13]=RF_Data[13];
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
	line	261
	
l8651:	
;RF_Control_B1.c: 261: Product->Data[14]=RF_Data[14];
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
	line	262
	
l8653:	
;RF_Control_B1.c: 262: setBuz(1,100);
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	263
	
l8655:	
;RF_Control_B1.c: 263: RF->Learn=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	264
	
l8657:	
;RF_Control_B1.c: 264: if(TMain->First)
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u8661
	goto	u8660
u8661:
	goto	l2543
u8660:
	line	266
	
l8659:	
;RF_Control_B1.c: 265: {
;RF_Control_B1.c: 266: Memory->LoopSave=1;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,2
	line	267
	
l2543:	
	line	268
;RF_Control_B1.c: 267: }
;RF_Control_B1.c: 268: Memory->Modify=1;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,0
	line	269
	
l2544:	
	return
	opt stack 0
GLOBAL	__end_of_setLog_Code
	__end_of_setLog_Code:
	signat	_setLog_Code,4216
	global	_setControl_Lights_Table

;; *************** function _setControl_Lights_Table *****************
;; Defined at:
;;		line 271 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
	line	271
global __ptext25
__ptext25:	;psect for function _setControl_Lights_Table
psect	text25
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	271
	global	__size_of_setControl_Lights_Table
	__size_of_setControl_Lights_Table	equ	__end_of_setControl_Lights_Table-_setControl_Lights_Table
	
_setControl_Lights_Table:	
;incstack = 0
	opt	stack 2
; Regs used in _setControl_Lights_Table: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setControl_Lights_Table@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setControl_Lights_Table@rf)
	line	273
	
l8661:	
;RF_Control_B1.c: 273: RfPointSelect(rf);
	movf	(setControl_Lights_Table@rf),w
	fcall	_RfPointSelect
	line	274
	
l8663:	
;RF_Control_B1.c: 274: if(RF_Data[15] == 0x00)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,f
	skipz
	goto	u8671
	goto	u8670
u8671:
	goto	l8675
u8670:
	line	277
	
l8665:	
;RF_Control_B1.c: 275: {
;RF_Control_B1.c: 277: setDimmerLights(1,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights@status)
	movlw	(01h)
	fcall	_setDimmerLights
	line	278
;RF_Control_B1.c: 278: setRFSW_Status(1,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movlw	(01h)
	fcall	_setRFSW_Status
	line	279
;RF_Control_B1.c: 279: setSw_Status(1,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movlw	(01h)
	fcall	_setSw_Status
	line	282
;RF_Control_B1.c: 282: setDimmerLights(2,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights@status)
	movlw	(02h)
	fcall	_setDimmerLights
	line	283
;RF_Control_B1.c: 283: setRFSW_Status(2,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movlw	(02h)
	fcall	_setRFSW_Status
	line	284
;RF_Control_B1.c: 284: setSw_Status(2,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movlw	(02h)
	fcall	_setSw_Status
	line	292
	
l8667:	
;RF_Control_B1.c: 292: Product->Data[9]=0;
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	293
	
l8669:	
;RF_Control_B1.c: 293: Product->Data[11]=0;
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	294
	
l8671:	
;RF_Control_B1.c: 294: Product->Data[15]=0;
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	295
	
l8673:	
;RF_Control_B1.c: 295: Product->Data[17]=0;
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	296
;RF_Control_B1.c: 296: setBuz(1,100);
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	297
;RF_Control_B1.c: 297: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	298
;RF_Control_B1.c: 298: }
	goto	l2558
	line	299
	
l2547:	
	
l8675:	
;RF_Control_B1.c: 299: else if(RF_Data[15] == 0x20)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	020h&0ffh
	skipz
	goto	u8681
	goto	u8680
u8681:
	goto	l8681
u8680:
	line	301
	
l8677:	
;RF_Control_B1.c: 300: {
;RF_Control_B1.c: 301: Product->Data[9]=0;
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	302
;RF_Control_B1.c: 302: Product->Data[11]=0;
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	303
;RF_Control_B1.c: 303: Product->Data[17]=0;
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	304
	
l8679:	
;RF_Control_B1.c: 304: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	305
;RF_Control_B1.c: 305: }
	goto	l2558
	line	307
	
l2549:	
	
l8681:	
;RF_Control_B1.c: 307: else if(RF_Data[15] == 0x01)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	01h&0ffh
	skipz
	goto	u8691
	goto	u8690
u8691:
	goto	l8685
u8690:
	line	309
	
l8683:	
;RF_Control_B1.c: 308: {
;RF_Control_B1.c: 309: setRFSW_Control(1);
	movlw	(01h)
	fcall	_setRFSW_Control
	line	310
;RF_Control_B1.c: 310: }
	goto	l2558
	line	312
	
l2551:	
	
l8685:	
;RF_Control_B1.c: 312: else if(RF_Data[15] == 0x11)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	011h&0ffh
	skipz
	goto	u8701
	goto	u8700
u8701:
	goto	l8691
u8700:
	line	314
	
l8687:	
;RF_Control_B1.c: 313: {
;RF_Control_B1.c: 314: setRFSW_AdjControl(1);
	movlw	(01h)
	fcall	_setRFSW_AdjControl
	line	315
	
l8689:	
;RF_Control_B1.c: 315: TMain->ClockStop=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	316
;RF_Control_B1.c: 316: }
	goto	l2558
	line	321
	
l2553:	
	
l8691:	
;RF_Control_B1.c: 321: else if(RF_Data[15] == 0x02)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	02h&0ffh
	skipz
	goto	u8711
	goto	u8710
u8711:
	goto	l8695
u8710:
	line	323
	
l8693:	
;RF_Control_B1.c: 322: {
;RF_Control_B1.c: 323: setRFSW_Control(2);
	movlw	(02h)
	fcall	_setRFSW_Control
	line	324
;RF_Control_B1.c: 324: }
	goto	l2558
	line	326
	
l2555:	
	
l8695:	
;RF_Control_B1.c: 326: else if(RF_Data[15] == 0x21)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	021h&0ffh
	skipz
	goto	u8721
	goto	u8720
u8721:
	goto	l2558
u8720:
	line	328
	
l8697:	
;RF_Control_B1.c: 327: {
;RF_Control_B1.c: 328: setRFSW_AdjControl(2);
	movlw	(02h)
	fcall	_setRFSW_AdjControl
	goto	l2558
	line	329
	
l2557:	
	goto	l2558
	line	345
	
l2556:	
	goto	l2558
	
l2554:	
	goto	l2558
	
l2552:	
	goto	l2558
	
l2550:	
	goto	l2558
	
l2548:	
	
l2558:	
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
psect	text26,local,class=CODE,delta=2,merge=1
	line	369
global __ptext26
__ptext26:	;psect for function _setRFSW_Control
psect	text26
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
	
l8515:	
;RF_Control_B1.c: 371: RfSWPointSelect(sw);
	movf	(setRFSW_Control@sw),w
	fcall	_RfSWPointSelect
	line	372
	
l8517:	
;RF_Control_B1.c: 372: if(!RFSW->Status)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u8551
	goto	u8550
u8551:
	goto	l8533
u8550:
	line	374
	
l8519:	
;RF_Control_B1.c: 373: {
;RF_Control_B1.c: 374: if(RF_Data[16] == 0x80)
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u8561
	goto	u8560
u8561:
	goto	l8523
u8560:
	line	376
	
l8521:	
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
	goto	l8523
	line	377
	
l2567:	
	line	378
	
l8523:	
;RF_Control_B1.c: 377: }
;RF_Control_B1.c: 378: RFSW->Status=1;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	379
	
l8525:	
;RF_Control_B1.c: 379: setSw_Status(sw,1);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	incf	(setSw_Status@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	381
	
l8527:	
;RF_Control_B1.c: 381: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	382
	
l8529:	
;RF_Control_B1.c: 382: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	incf	(setDimmerLights_Switch@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Switch
	line	384
	
l8531:	
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
	goto	l8549
	line	386
	
l2566:	
	line	388
	
l8533:	
;RF_Control_B1.c: 386: else
;RF_Control_B1.c: 387: {
;RF_Control_B1.c: 388: if(RF_Data[16] == 0x80)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u8571
	goto	u8570
u8571:
	goto	l8537
u8570:
	line	390
	
l8535:	
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
	goto	l8549
	line	393
	
l2569:	
	line	395
	
l8537:	
;RF_Control_B1.c: 393: else
;RF_Control_B1.c: 394: {
;RF_Control_B1.c: 395: RFSW->Status=0;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	396
	
l8539:	
;RF_Control_B1.c: 396: setSw_Status(sw,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	398
	
l8541:	
;RF_Control_B1.c: 398: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	399
	
l8543:	
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
	
l8545:	
;RF_Control_B1.c: 401: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(setDelayOff_GO@command)
	clrf	(setDelayOff_GO@value)
	movf	(setRFSW_Control@sw),w
	fcall	_setDelayOff_GO
	line	402
	
l8547:	
;RF_Control_B1.c: 402: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	goto	l8549
	line	403
	
l2570:	
	goto	l8549
	line	404
	
l2568:	
	line	405
	
l8549:	
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
	
l8551:	
;RF_Control_B1.c: 406: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	407
	
l2571:	
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
	
l8329:	
;DelayOff_B1.c: 94: DelayOffPointSelect(sw);
	movf	(setDelayOff_GO@sw),w
	fcall	_DelayOffPointSelect
	line	95
	
l8331:	
;DelayOff_B1.c: 95: if(DelayOff->Enable)
	movlb 0	; select bank0
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u8221
	goto	u8220
u8221:
	goto	l686
u8220:
	line	97
	
l8333:	
;DelayOff_B1.c: 96: {
;DelayOff_B1.c: 97: DelayOff->GO=command;
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setDelayOff_GO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	98
	
l8335:	
;DelayOff_B1.c: 98: if(command)
	movf	(setDelayOff_GO@command),w
	skipz
	goto	u8230
	goto	l8349
u8230:
	line	100
	
l8337:	
;DelayOff_B1.c: 99: {
;DelayOff_B1.c: 100: DelayOff->Value=DelayTimejudge(value);
	movf	(setDelayOff_GO@value),w
	fcall	_DelayTimejudge
	movlb 0	; select bank0
	movwf	(??_setDelayOff_GO+0)+0
	incf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setDelayOff_GO+0)+0,w
	movwf	indf1
	line	101
	
l8339:	
;DelayOff_B1.c: 101: if(((value%16)==5 || !(value%16)) && value <= 0x25)
	movlw	(0Fh)
	andwf	(setDelayOff_GO@value),w
	movwf	(??_setDelayOff_GO+0)+0
	movf	0+(??_setDelayOff_GO+0)+0,w
	xorlw	05h&0ffh
	skipnz
	goto	u8241
	goto	u8240
u8241:
	goto	l8343
u8240:
	
l8341:	
	movf	(setDelayOff_GO@value),w
	andlw	0Fh
	btfss	status,2
	goto	u8251
	goto	u8250
u8251:
	goto	l8347
u8250:
	goto	l8343
	
l682:	
	
l8343:	
	movlw	(026h)
	subwf	(setDelayOff_GO@value),w
	skipnc
	goto	u8261
	goto	u8260
u8261:
	goto	l8347
u8260:
	line	103
	
l8345:	
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
	goto	l8353
	line	105
	
l680:	
	line	107
	
l8347:	
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
	goto	l8353
	line	108
	
l683:	
	line	109
;DelayOff_B1.c: 108: }
;DelayOff_B1.c: 109: }
	goto	l8353
	line	110
	
l679:	
	
l8349:	
;DelayOff_B1.c: 110: else if(!command)
	movf	(setDelayOff_GO@command),f
	skipz
	goto	u8271
	goto	u8270
u8271:
	goto	l8353
u8270:
	line	112
	
l8351:	
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
	goto	l8353
	line	113
	
l685:	
	goto	l8353
	line	114
	
l684:	
	
l8353:	
;DelayOff_B1.c: 113: }
;DelayOff_B1.c: 114: DelayOff->SecondTime=0;
	movf	(_DelayOff),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	115
	
l8355:	
;DelayOff_B1.c: 115: DelayOff->MinuteTime=0;
	movf	(_DelayOff),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l686
	line	116
	
l678:	
	line	117
	
l686:	
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
	
l8179:	
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
	goto	u7961
	goto	u7960
u7961:
	goto	l8183
u7960:
	line	124
	
l8181:	
;DelayOff_B1.c: 123: {
;DelayOff_B1.c: 124: i=5;
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	125
;DelayOff_B1.c: 125: }
	goto	l690
	line	126
	
l689:	
	
l8183:	
;DelayOff_B1.c: 126: else if(value == 0x10)
	movf	(DelayTimejudge@value),w
	xorlw	010h&0ffh
	skipz
	goto	u7971
	goto	u7970
u7971:
	goto	l8187
u7970:
	line	128
	
l8185:	
;DelayOff_B1.c: 127: {
;DelayOff_B1.c: 128: i=10;
	movlw	(0Ah)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	129
;DelayOff_B1.c: 129: }
	goto	l690
	line	130
	
l691:	
	
l8187:	
;DelayOff_B1.c: 130: else if(value == 0x15)
	movf	(DelayTimejudge@value),w
	xorlw	015h&0ffh
	skipz
	goto	u7981
	goto	u7980
u7981:
	goto	l8191
u7980:
	line	132
	
l8189:	
;DelayOff_B1.c: 131: {
;DelayOff_B1.c: 132: i=15;
	movlw	(0Fh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	133
;DelayOff_B1.c: 133: }
	goto	l690
	line	134
	
l693:	
	
l8191:	
;DelayOff_B1.c: 134: else if(value == 0x20)
	movf	(DelayTimejudge@value),w
	xorlw	020h&0ffh
	skipz
	goto	u7991
	goto	u7990
u7991:
	goto	l8195
u7990:
	line	136
	
l8193:	
;DelayOff_B1.c: 135: {
;DelayOff_B1.c: 136: i=20;
	movlw	(014h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	137
;DelayOff_B1.c: 137: }
	goto	l690
	line	138
	
l695:	
	
l8195:	
;DelayOff_B1.c: 138: else if(value == 0x25)
	movf	(DelayTimejudge@value),w
	xorlw	025h&0ffh
	skipz
	goto	u8001
	goto	u8000
u8001:
	goto	l8199
u8000:
	line	140
	
l8197:	
;DelayOff_B1.c: 139: {
;DelayOff_B1.c: 140: i=25;
	movlw	(019h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	141
;DelayOff_B1.c: 141: }
	goto	l690
	line	142
	
l697:	
	
l8199:	
;DelayOff_B1.c: 142: else if(value == 0x30)
	movf	(DelayTimejudge@value),w
	xorlw	030h&0ffh
	skipz
	goto	u8011
	goto	u8010
u8011:
	goto	l690
u8010:
	line	144
	
l8201:	
;DelayOff_B1.c: 143: {
;DelayOff_B1.c: 144: i=30;
	movlw	(01Eh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l690
	line	145
	
l699:	
	goto	l690
	line	146
	
l698:	
	goto	l690
	
l696:	
	goto	l690
	
l694:	
	goto	l690
	
l692:	
	
l690:	
;DelayOff_B1.c: 145: }
;DelayOff_B1.c: 146: return i;
	movf	(DelayTimejudge@i),w
	goto	l700
	
l8203:	
	line	147
	
l700:	
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
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	409
global __ptext29
__ptext29:	;psect for function _setRFSW_AdjControl
psect	text29
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
	
l8553:	
;RF_Control_B1.c: 411: RfSWPointSelect(sw);
	movf	(setRFSW_AdjControl@sw),w
	fcall	_RfSWPointSelect
	line	412
	
l8555:	
;RF_Control_B1.c: 412: if(RFSW->Status)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u8581
	goto	u8580
u8581:
	goto	l8561
u8580:
	line	414
	
l8557:	
;RF_Control_B1.c: 413: {
;RF_Control_B1.c: 414: Memory->Modify=1;
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,0
	line	415
	
l8559:	
;RF_Control_B1.c: 415: setRF_DimmerValue(sw);
	movf	(setRFSW_AdjControl@sw),w
	fcall	_setRF_DimmerValue
	line	416
;RF_Control_B1.c: 416: }
	goto	l2575
	line	417
	
l2574:	
	line	419
	
l8561:	
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
	
l2575:	
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
	
l8563:	
;RF_Control_B1.c: 422: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	423
	
l2576:	
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
psect	text30,local,class=CODE,delta=2,merge=1
	line	433
global __ptext30
__ptext30:	;psect for function _setRF_DimmerValue
psect	text30
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
	
l8407:	
;RF_Control_B1.c: 435: if(RF_Data[9] > 0x64)
	movlw	(065h)
	movlb 1	; select bank1
	subwf	0+(_RF_Data)^080h+09h,w
	skipc
	goto	u8411
	goto	u8410
u8411:
	goto	l8411
u8410:
	line	437
	
l8409:	
;RF_Control_B1.c: 436: {
;RF_Control_B1.c: 437: RF_Data[9]=0x64;
	movlw	(064h)
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(??_setRF_DimmerValue+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+09h
	goto	l8411
	line	438
	
l2582:	
	line	439
	
l8411:	
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
	
l8413:	
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
	
l8415:	
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
	
l8417:	
;RF_Control_B1.c: 442: setDimmerLights_AdjRF(lights);
	movf	(setRF_DimmerValue@lights),w
	fcall	_setDimmerLights_AdjRF
	line	443
	
l2583:	
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
psect	text31,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	423
global __ptext31
__ptext31:	;psect for function _setDimmerLights_AdjRF
psect	text31
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
	
l8205:	
;Dimmer_B1.c: 425: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjRF@lights),w
	fcall	_DimmerLightsPointSelect
	line	426
	
l8207:	
;Dimmer_B1.c: 426: DimmerLights->AdjRF=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	427
	
l8209:	
;Dimmer_B1.c: 427: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	428
	
l8211:	
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
	
l925:	
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
psect	text32,local,class=CODE,delta=2,merge=1
	line	490
global __ptext32
__ptext32:	;psect for function _getPercentValue
psect	text32
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
	
l8163:	
;Dimmer_B1.c: 493: float i=((char)((100-20)*1.5))-((char)((100-55)*1.5));
	movlw	0x0
	movwf	(getPercentValue@i)
	movlw	0x54
	movwf	(getPercentValue@i+1)
	movlw	0x42
	movwf	(getPercentValue@i+2)
	line	494
	
l8165:	
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
	
l8167:	
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
	goto	l946
	
l8169:	
	line	503
	
l946:	
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
	
l8063:	
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
	goto	u7701
	goto	u7700
u7701:
	goto	l8069
u7700:
	line	68
	
l8065:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l3288
	
l8067:	
	goto	l3288
	
l3287:	
	line	69
	
l8069:	
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
	goto	u7711
	goto	u7710
u7711:
	goto	l8075
u7710:
	line	70
	
l8071:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l3288
	
l8073:	
	goto	l3288
	
l3289:	
	line	71
	
l8075:	
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
u7725:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u7720:
	decfsz	wreg,f
	goto	u7725
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
u7735:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u7730:
	decfsz	wreg,f
	goto	u7735
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
	
l8077:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l8079:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l8081:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l8083:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l8085:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l8087
	line	135
	
l3290:	
	line	136
	
l8087:	
	btfss	(___ftmul@f1),(0)&7
	goto	u7741
	goto	u7740
u7741:
	goto	l8091
u7740:
	line	137
	
l8089:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l8091
	
l3291:	
	line	138
	
l8091:	
	movlw	01h
u7755:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u7755

	line	139
	
l8093:	
	movlw	01h
u7765:
	lslf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	decfsz	wreg,f
	goto	u7765
	line	140
	
l8095:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u7771
	goto	u7770
u7771:
	goto	l8087
u7770:
	goto	l8097
	
l3292:	
	line	143
	
l8097:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l8099
	line	144
	
l3293:	
	line	145
	
l8099:	
	btfss	(___ftmul@f1),(0)&7
	goto	u7781
	goto	u7780
u7781:
	goto	l8103
u7780:
	line	146
	
l8101:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l8103
	
l3294:	
	line	147
	
l8103:	
	movlw	01h
u7795:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u7795

	line	148
	
l8105:	
	movlw	01h
u7805:
	lsrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	decfsz	wreg,f
	goto	u7805

	line	149
	
l8107:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u7811
	goto	u7810
u7811:
	goto	l8099
u7810:
	goto	l8109
	
l3295:	
	line	156
	
l8109:	
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
	goto	l3288
	
l8111:	
	line	157
	
l3288:	
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
	
l7949:	
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
	
l7951:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u7390
	goto	l7957
u7390:
	
l7953:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u7401
	goto	u7400
u7401:
	goto	l7961
u7400:
	
l7955:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u7411
	goto	u7410
u7411:
	goto	l7961
u7410:
	goto	l7957
	
l3241:	
	line	93
	
l7957:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3242
	
l7959:	
	goto	l3242
	
l3239:	
	line	94
	
l7961:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u7420
	goto	l3245
u7420:
	
l7963:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u7431
	goto	u7430
u7431:
	goto	l7967
u7430:
	
l7965:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u7441
	goto	u7440
u7441:
	goto	l7967
u7440:
	
l3245:	
	line	95
	goto	l3242
	
l3243:	
	line	96
	
l7967:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l7969:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u7451
	goto	u7450
u7451:
	goto	l3246
u7450:
	line	98
	
l7971:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3246:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u7461
	goto	u7460
u7461:
	goto	l3247
u7460:
	line	100
	
l7973:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3247:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l7975:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l7977:	
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
	goto	u7471
	goto	u7470
u7471:
	goto	l7989
u7470:
	goto	l7979
	line	109
	
l3249:	
	line	110
	
l7979:	
	movlw	01h
u7485:
	lslf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	decfsz	wreg,f
	goto	u7485
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l7981:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u7491
	goto	u7490
u7491:
	goto	l7987
u7490:
	
l7983:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u7501
	goto	u7500
u7501:
	goto	l7979
u7500:
	goto	l7987
	
l3251:	
	goto	l7987
	
l3252:	
	line	113
	goto	l7987
	
l3254:	
	line	114
	
l7985:	
	movlw	01h
u7515:
	lsrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	decfsz	wreg,f
	goto	u7515

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l7987
	line	116
	
l3253:	
	line	113
	
l7987:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u7521
	goto	u7520
u7521:
	goto	l7985
u7520:
	goto	l3256
	
l3255:	
	line	117
	goto	l3256
	
l3248:	
	
l7989:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u7531
	goto	u7530
u7531:
	goto	l3256
u7530:
	goto	l7991
	line	120
	
l3258:	
	line	121
	
l7991:	
	movlw	01h
u7545:
	lslf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	decfsz	wreg,f
	goto	u7545
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l7993:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u7551
	goto	u7550
u7551:
	goto	l7999
u7550:
	
l7995:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u7561
	goto	u7560
u7561:
	goto	l7991
u7560:
	goto	l7999
	
l3260:	
	goto	l7999
	
l3261:	
	line	124
	goto	l7999
	
l3263:	
	line	125
	
l7997:	
	movlw	01h
u7575:
	lsrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	decfsz	wreg,f
	goto	u7575

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l7999
	line	127
	
l3262:	
	line	124
	
l7999:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u7581
	goto	u7580
u7581:
	goto	l7997
u7580:
	goto	l3256
	
l3264:	
	goto	l3256
	line	128
	
l3257:	
	line	129
	
l3256:	
	btfss	(___ftadd@sign),(7)&7
	goto	u7591
	goto	u7590
u7591:
	goto	l8003
u7590:
	line	131
	
l8001:	
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
	goto	l8003
	line	133
	
l3265:	
	line	134
	
l8003:	
	btfss	(___ftadd@sign),(6)&7
	goto	u7601
	goto	u7600
u7601:
	goto	l8007
u7600:
	line	136
	
l8005:	
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
	goto	l8007
	line	138
	
l3266:	
	line	139
	
l8007:	
	clrf	(___ftadd@sign)
	line	140
	
l8009:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	addwfc	(___ftadd@f2+1),f
	movf	(___ftadd@f1+2),w
	addwfc	(___ftadd@f2+2),f
	line	141
	
l8011:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u7611
	goto	u7610
u7611:
	goto	l8017
u7610:
	line	142
	
l8013:	
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
	
l8015:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l8017
	line	145
	
l3267:	
	line	146
	
l8017:	
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
	goto	l3242
	
l8019:	
	line	148
	
l3242:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	_RF_RxDisable

;; *************** function _RF_RxDisable *****************
;; Defined at:
;;		line 198 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
	line	198
global __ptext35
__ptext35:	;psect for function _RF_RxDisable
psect	text35
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	198
	global	__size_of_RF_RxDisable
	__size_of_RF_RxDisable	equ	__end_of_RF_RxDisable-_RF_RxDisable
	
_RF_RxDisable:	
;incstack = 0
	opt	stack 7
; Regs used in _RF_RxDisable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;RF_RxDisable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(RF_RxDisable@rf)
	line	200
	
l8937:	
;RF_Control_B1.c: 200: RfPointSelect(rf);
	movf	(RF_RxDisable@rf),w
	fcall	_RfPointSelect
	line	202
	
l8939:	
;RF_Control_B1.c: 202: if(RF->RxStatus)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u9041
	goto	u9040
u9041:
	goto	l2526
u9040:
	line	204
	
l8941:	
;RF_Control_B1.c: 203: {
;RF_Control_B1.c: 204: RF->RxStatus=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	205
;RF_Control_B1.c: 205: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	206
	
l8943:	
;RF_Control_B1.c: 206: RF->DebounceTime=0;
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	207
	
l8945:	
;RF_Control_B1.c: 207: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	208
	
l8947:	
;RF_Control_B1.c: 208: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	209
	
l8949:	
;RF_Control_B1.c: 209: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	210
	
l8951:	
;RF_Control_B1.c: 210: setINT_GO(0);
	movlw	(0)
	fcall	_setINT_GO
	goto	l2526
	line	211
	
l2525:	
	line	212
	
l2526:	
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
	
l8699:	
;CC2500_B1.c: 32: unsigned char loop_e;
;CC2500_B1.c: 34: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	35
	
l8701:	
;CC2500_B1.c: 35: SPI0Buffer=0x3F+0x40;
	movlw	(07Fh)
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	36
;CC2500_B1.c: 36: while(RC2==1);
	goto	l299
	
l300:	
	
l299:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u8731
	goto	u8730
u8731:
	goto	l299
u8730:
	goto	l8703
	
l301:	
	line	37
	
l8703:	
;CC2500_B1.c: 37: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	38
	
l8705:	
;CC2500_B1.c: 38: SPI0Buffer=Tx_Length;
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	39
	
l8707:	
;CC2500_B1.c: 39: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l8709:	
;CC2500_B1.c: 40: for(loop_e=0;loop_e<Tx_Length;loop_e++)
	movlb 0	; select bank0
	clrf	(CC2500_TxData@loop_e)
	goto	l8717
	line	41
	
l303:	
	line	42
	
l8711:	
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
	
l8713:	
;CC2500_B1.c: 43: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l8715:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	addwf	(CC2500_TxData@loop_e),f
	goto	l8717
	
l302:	
	
l8717:	
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_TxData@loop_e),w
	skipc
	goto	u8741
	goto	u8740
u8741:
	goto	l8711
u8740:
	
l304:	
	line	45
;CC2500_B1.c: 44: }
;CC2500_B1.c: 45: RC4=1;
	bsf	(116/8),(116)&7	;volatile
	line	46
	
l8719:	
;CC2500_B1.c: 46: CC2500_WriteCommand(0x35);
	movlw	(035h)
	fcall	_CC2500_WriteCommand
	line	47
;CC2500_B1.c: 47: while(RB0==0);
	goto	l305
	
l306:	
	
l305:	
	movlb 0	; select bank0
	btfss	(104/8),(104)&7	;volatile
	goto	u8751
	goto	u8750
u8751:
	goto	l305
u8750:
	goto	l308
	
l307:	
	line	48
;CC2500_B1.c: 48: while(RB0==1);
	goto	l308
	
l309:	
	
l308:	
	btfsc	(104/8),(104)&7	;volatile
	goto	u8761
	goto	u8760
u8761:
	goto	l308
u8760:
	goto	l8721
	
l310:	
	line	49
	
l8721:	
;CC2500_B1.c: 49: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	50
;CC2500_B1.c: 50: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	51
	
l8723:	
;CC2500_B1.c: 51: Transceive_OK=1;
	bsf	(_Transceive_OK/8),(_Transceive_OK)&7
	line	52
	
l311:	
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
	
l8725:	
;CC2500_B1.c: 58: unsigned char loop_f;
;CC2500_B1.c: 62: if(RB0 == 1)
	movlb 0	; select bank0
	btfss	(104/8),(104)&7	;volatile
	goto	u8771
	goto	u8770
u8771:
	goto	l8729
u8770:
	goto	l315
	line	64
	
l8727:	
;CC2500_B1.c: 63: {
;CC2500_B1.c: 64: while(RB0 == 1);
	goto	l315
	
l316:	
	
l315:	
	btfsc	(104/8),(104)&7	;volatile
	goto	u8781
	goto	u8780
u8781:
	goto	l315
u8780:
	goto	l8729
	
l317:	
	goto	l8729
	line	65
	
l314:	
	line	66
	
l8729:	
;CC2500_B1.c: 65: }
;CC2500_B1.c: 66: CC2500_ReadStatus(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_ReadStatus
	line	67
	
l8731:	
;CC2500_B1.c: 67: if(s_data != 0)
	movlb 1	; select bank1
	movf	(_s_data)^080h,w
	skipz
	goto	u8790
	goto	l8763
u8790:
	line	70
	
l8733:	
;CC2500_B1.c: 69: {
;CC2500_B1.c: 70: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	71
	
l8735:	
;CC2500_B1.c: 71: SPI0Buffer=0x3F+0xC0;
	movlw	(0FFh)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	72
;CC2500_B1.c: 72: while(RC2==1);
	goto	l319
	
l320:	
	
l319:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u8801
	goto	u8800
u8801:
	goto	l319
u8800:
	goto	l8737
	
l321:	
	line	73
	
l8737:	
;CC2500_B1.c: 73: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	75
;CC2500_B1.c: 75: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	76
	
l8739:	
;CC2500_B1.c: 76: Rx_Length=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_Rx_Length)^080h
	line	77
	
l8741:	
;CC2500_B1.c: 77: for(loop_f=0;loop_f<Rx_Length;loop_f++)
	movlb 0	; select bank0
	clrf	(CC2500_RxData@loop_f)
	goto	l8749
	line	78
	
l323:	
	line	79
	
l8743:	
;CC2500_B1.c: 78: {
;CC2500_B1.c: 79: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	80
	
l8745:	
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
	
l8747:	
	movlw	(01h)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	addwf	(CC2500_RxData@loop_f),f
	goto	l8749
	
l322:	
	
l8749:	
	movlb 1	; select bank1
	movf	(_Rx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_RxData@loop_f),w
	skipc
	goto	u8811
	goto	u8810
u8811:
	goto	l8743
u8810:
	goto	l8751
	
l324:	
	line	82
	
l8751:	
;CC2500_B1.c: 81: }
;CC2500_B1.c: 82: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	83
	
l8753:	
;CC2500_B1.c: 83: RSSI=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RSSI)^080h
	line	84
	
l8755:	
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
	
l8757:	
;CC2500_B1.c: 86: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	87
	
l8759:	
;CC2500_B1.c: 87: if(CRC & 0x80)
	movlb 1	; select bank1
	btfss	(_CRC)^080h,(7)&7
	goto	u8821
	goto	u8820
u8821:
	goto	l8763
u8820:
	line	88
	
l8761:	
;CC2500_B1.c: 88: Receive_OK=1;
	bsf	(_Receive_OK/8),(_Receive_OK)&7
	goto	l8763
	
l325:	
	goto	l8763
	line	89
	
l318:	
	line	90
	
l8763:	
;CC2500_B1.c: 89: }
;CC2500_B1.c: 90: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	91
;CC2500_B1.c: 91: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	92
	
l8765:	
;CC2500_B1.c: 92: setRF_RxStatus(1,0);
	movlb 0	; select bank0
	clrf	(setRF_RxStatus@command)
	movlw	(01h)
	fcall	_setRF_RxStatus
	line	93
	
l326:	
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
	
l8583:	
;RF_Control_B1.c: 45: RfPointSelect(rf);
	movf	(setRF_RxStatus@rf),w
	fcall	_RfPointSelect
	line	46
	
l8585:	
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
	
l2495:	
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
	
l8573:	
;CC2500_B1.c: 269: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	270
	
l8575:	
;CC2500_B1.c: 270: SPI0Buffer=status_addr+0xC0;
	movf	(CC2500_ReadStatus@status_addr),w
	addlw	0C0h
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	272
;CC2500_B1.c: 272: while(RC2==1);
	goto	l395
	
l396:	
	
l395:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u8601
	goto	u8600
u8601:
	goto	l395
u8600:
	goto	l8577
	
l397:	
	line	274
	
l8577:	
;CC2500_B1.c: 274: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	275
;CC2500_B1.c: 275: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	276
	
l8579:	
;CC2500_B1.c: 276: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	278
	
l8581:	
;CC2500_B1.c: 278: s_data=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_s_data)^080h
	line	279
	
l398:	
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
	
l8435:	
;CC2500_B1.c: 212: unsigned char loop_b;
;CC2500_B1.c: 213: for(loop_b=0;loop_b<8;loop_b++)
	movlb 0	; select bank0
	clrf	(CC2500_ReadByte@loop_b)
	
l8437:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u8451
	goto	u8450
u8451:
	goto	l370
u8450:
	goto	l374
	
l8439:	
	goto	l374
	line	214
	
l370:	
	line	215
;CC2500_B1.c: 214: {
;CC2500_B1.c: 215: RC1=1;
	bsf	(113/8),(113)&7	;volatile
	line	216
	
l8441:	
;CC2500_B1.c: 216: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	217
	
l8443:	
;CC2500_B1.c: 217: if(RC2 == 1)
	movlb 0	; select bank0
	btfss	(114/8),(114)&7	;volatile
	goto	u8461
	goto	u8460
u8461:
	goto	l8447
u8460:
	line	218
	
l8445:	
;CC2500_B1.c: 218: SPI0Buffer |= 0x01;
	movlb 1	; select bank1
	bsf	(_SPI0Buffer)^080h+(0/8),(0)&7
	goto	l8449
	line	219
	
l372:	
	line	220
	
l8447:	
;CC2500_B1.c: 219: else
;CC2500_B1.c: 220: SPI0Buffer &= 0xFE;
	movlw	(0FEh)
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	movlb 1	; select bank1
	andwf	(_SPI0Buffer)^080h,f
	goto	l8449
	
l373:	
	line	221
	
l8449:	
;CC2500_B1.c: 221: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
	line	213
	movlw	(01h)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	addwf	(CC2500_ReadByte@loop_b),f
	
l8451:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u8471
	goto	u8470
u8471:
	goto	l370
u8470:
	goto	l374
	
l371:	
	line	223
	
l374:	
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
	
l9711:	
;RF_Control_B1.c: 20: setRF_Initialization(1);
	movlw	(01h)
	fcall	_setRF_Initialization
	line	22
	
l2483:	
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
	
l9407:	
;RF_Control_B1.c: 54: Tx_Length=21;
	movlw	(015h)
	movlb 0	; select bank0
	movwf	(??_setRF_Initialization+0)+0
	movf	(??_setRF_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Tx_Length)^080h
	line	56
	
l2498:	
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
	
l9791:	
;PowerFault_B1.c: 25: setPowerFault_Main();
	fcall	_setPowerFault_Main
	line	27
	
l2264:	
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
	
l9355:	
;PowerFault_B1.c: 63: if(PF->Enable)
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9551
	goto	u9550
u9551:
	goto	l2302
u9550:
	line	65
	
l9357:	
;PowerFault_B1.c: 64: {
;PowerFault_B1.c: 65: if(PF->ADtoGO == 0)
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u9561
	goto	u9560
u9561:
	goto	l9369
u9560:
	line	67
	
l9359:	
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
	
l9361:	
;PowerFault_B1.c: 69: {
;PowerFault_B1.c: 70: if(1 && getTemp_Safe())
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
	goto	u9571
	goto	u9570
u9571:
	goto	l2302
u9570:
	line	70
	
l9363:	
	fcall	_getTemp_Safe
	xorlw	0&0ffh
	skipnz
	goto	u9581
	goto	u9580
u9581:
	goto	l9367
u9580:
	line	72
	
l9365:	
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
	goto	l2302
	line	76
	
l2287:	
	line	78
	
l9367:	
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
	goto	l2302
	line	79
	
l2288:	
	goto	l2302
	line	80
	
l2286:	
	line	81
;PowerFault_B1.c: 79: }
;PowerFault_B1.c: 80: }
;PowerFault_B1.c: 81: }
	goto	l2302
	line	82
	
l2285:	
	line	84
	
l9369:	
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
	
l9371:	
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
	goto	u9591
	goto	u9590
u9591:
	goto	l2302
u9590:
	line	87
	
l9373:	
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
	goto	u9601
	goto	u9600
u9601:
	goto	l9389
u9600:
	line	92
	
l9375:	
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
	goto	u9611
	goto	u9610
u9611:
	goto	l9387
u9610:
	
l9377:	
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
	goto	u9621
	goto	u9620
u9621:
	goto	l9387
u9620:
	line	94
	
l9379:	
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
	
l9381:	
;PowerFault_B1.c: 95: if(PF->Count > 1)
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u9631
	goto	u9630
u9631:
	goto	l9403
u9630:
	line	97
	
l9383:	
;PowerFault_B1.c: 96: {
;PowerFault_B1.c: 97: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	98
	
l9385:	
;PowerFault_B1.c: 98: setPowerFault_Exceptions(0);
	movlw	(0)
	fcall	_setPowerFault_Exceptions
	goto	l9403
	line	99
	
l2293:	
	line	100
;PowerFault_B1.c: 99: }
;PowerFault_B1.c: 100: }
	goto	l9403
	line	101
	
l2292:	
	line	103
	
l9387:	
;PowerFault_B1.c: 101: else
;PowerFault_B1.c: 102: {
;PowerFault_B1.c: 103: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l9403
	line	104
	
l2294:	
	line	105
;PowerFault_B1.c: 104: }
;PowerFault_B1.c: 105: }
	goto	l9403
	line	106
	
l2291:	
	line	108
	
l9389:	
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
	goto	u9641
	goto	u9640
u9641:
	goto	l9393
u9640:
	
l9391:	
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
	goto	u9651
	goto	u9650
u9651:
	goto	l9401
u9650:
	goto	l9393
	
l2298:	
	line	110
	
l9393:	
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
	
l9395:	
;PowerFault_B1.c: 111: if(PF->Count > 1)
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u9661
	goto	u9660
u9661:
	goto	l9403
u9660:
	line	113
	
l9397:	
;PowerFault_B1.c: 112: {
;PowerFault_B1.c: 113: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	114
	
l9399:	
;PowerFault_B1.c: 114: setPowerFault_Exceptions(1);
	movlw	(01h)
	fcall	_setPowerFault_Exceptions
	goto	l9403
	line	115
	
l2299:	
	line	116
;PowerFault_B1.c: 115: }
;PowerFault_B1.c: 116: }
	goto	l9403
	line	117
	
l2296:	
	line	119
	
l9401:	
;PowerFault_B1.c: 117: else
;PowerFault_B1.c: 118: {
;PowerFault_B1.c: 119: PF->Count=0;
	movf	(_PF),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l9403
	line	120
	
l2300:	
	goto	l9403
	line	122
	
l2295:	
	line	123
	
l9403:	
;PowerFault_B1.c: 120: }
;PowerFault_B1.c: 122: }
;PowerFault_B1.c: 123: if(PF->ERROR == 0)
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u9671
	goto	u9670
u9671:
	goto	l2301
u9670:
	line	125
	
l9405:	
;PowerFault_B1.c: 124: {
;PowerFault_B1.c: 125: PF->Safe=1;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	126
	
l2301:	
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
	goto	l2302
	line	128
	
l2290:	
	goto	l2302
	line	129
	
l2289:	
	goto	l2302
	line	130
	
l2284:	
	line	131
	
l2302:	
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
	
l8885:	
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
	
l8887:	
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
	
l8889:	
;PowerFault_B1.c: 137: if(command == 1)
	movf	(setPowerFault_Exceptions@command),w
	xorlw	01h&0ffh
	skipz
	goto	u8921
	goto	u8920
u8921:
	goto	l2305
u8920:
	line	139
	
l8891:	
;PowerFault_B1.c: 138: {
;PowerFault_B1.c: 139: DimmerLights_Exceptions(3);
	movlw	(03h)
	fcall	_DimmerLights_Exceptions
	line	143
	
l2305:	
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
	
l2306:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_Exceptions
	__end_of_setPowerFault_Exceptions:
	signat	_setPowerFault_Exceptions,4216
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
;;		_setOverTemp_Exceptions
;;		_setPowerFault_Exceptions
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	246
global __ptext46
__ptext46:	;psect for function _DimmerLights_Exceptions
psect	text46
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
	
l8587:	
;Dimmer_B1.c: 248: if(status == 1)
	movf	(DimmerLights_Exceptions@status),w
	xorlw	01h&0ffh
	skipz
	goto	u8611
	goto	u8610
u8611:
	goto	l8593
u8610:
	line	250
	
l8589:	
;Dimmer_B1.c: 249: {
;Dimmer_B1.c: 250: if(getDimmerLights_StatusFlag())
	fcall	_getDimmerLights_StatusFlag
	xorlw	0&0ffh
	skipnz
	goto	u8621
	goto	u8620
u8621:
	goto	l893
u8620:
	line	252
	
l8591:	
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
	
l893:	
	line	256
;Dimmer_B1.c: 253: }
;Dimmer_B1.c: 256: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	line	259
;Dimmer_B1.c: 259: setDimmerLights_ERROR(2);
	movlw	(02h)
	fcall	_setDimmerLights_ERROR
	line	264
;Dimmer_B1.c: 264: }
	goto	l894
	line	265
	
l892:	
	
l8593:	
;Dimmer_B1.c: 265: else if(status == 2)
	movlb 0	; select bank0
	movf	(DimmerLights_Exceptions@status),w
	xorlw	02h&0ffh
	skipz
	goto	u8631
	goto	u8630
u8631:
	goto	l8597
u8630:
	line	267
	
l8595:	
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
	goto	l894
	line	270
	
l895:	
	
l8597:	
;Dimmer_B1.c: 270: else if(status == 3)
	movlb 0	; select bank0
	movf	(DimmerLights_Exceptions@status),w
	xorlw	03h&0ffh
	skipz
	goto	u8641
	goto	u8640
u8641:
	goto	l894
u8640:
	line	273
	
l8599:	
;Dimmer_B1.c: 271: {
;Dimmer_B1.c: 273: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	line	276
;Dimmer_B1.c: 276: setDimmerLights_ERROR(2);
	movlw	(02h)
	fcall	_setDimmerLights_ERROR
	goto	l894
	line	281
	
l897:	
	goto	l894
	line	284
	
l896:	
	
l894:	
;Dimmer_B1.c: 281: }
;Dimmer_B1.c: 284: setDimmerLights_TriggerERROR(1,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_TriggerERROR@command)
	movlw	(01h)
	fcall	_setDimmerLights_TriggerERROR
	line	287
;Dimmer_B1.c: 287: setDimmerLights_TriggerERROR(2,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_TriggerERROR@command)
	movlw	(02h)
	fcall	_setDimmerLights_TriggerERROR
	line	293
	
l8601:	
;Dimmer_B1.c: 293: if(TMain->SelfTest == 0)
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u8651
	goto	u8650
u8651:
	goto	l899
u8650:
	line	295
	
l8603:	
;Dimmer_B1.c: 294: {
;Dimmer_B1.c: 295: TMain->i=0;
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	296
;Dimmer_B1.c: 296: TMain->j=0;
	movf	(_TMain),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	297
;Dimmer_B1.c: 297: TMain->k=1;
	movf	(_TMain),w
	addlw	0Eh
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
	goto	l899
	line	299
	
l898:	
	line	300
	
l899:	
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
psect	text47,local,class=CODE,delta=2,merge=1
	line	320
global __ptext47
__ptext47:	;psect for function _setDimmerLights_TriggerERROR
psect	text47
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
	
l8501:	
;Dimmer_B1.c: 322: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	323
	
l8503:	
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
	
l8505:	
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
	
l8507:	
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
	
l8509:	
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
	
l906:	
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
;;		_setRFSW_Status
;;		_setSw_Status
;; This function is called by:
;;		_DimmerLights_Exceptions
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1
	line	302
global __ptext48
__ptext48:	;psect for function _setDimmerLights_ERROR
psect	text48
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
	
l8489:	
;Dimmer_B1.c: 304: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	305
	
l8491:	
;Dimmer_B1.c: 305: if(DimmerLights->Status)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u8521
	goto	u8520
u8521:
	goto	l903
u8520:
	line	307
	
l8493:	
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
	line	315
	
l8495:	
;Dimmer_B1.c: 314: ;;
;Dimmer_B1.c: 315: setLED(lights,1);
	movlb 0	; select bank0
	clrf	(setLED@command)
	incf	(setLED@command),f
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setLED
	line	316
	
l8497:	
;Dimmer_B1.c: 316: setSw_Status(lights,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setSw_Status
	line	317
	
l8499:	
;Dimmer_B1.c: 317: setRFSW_Status(lights,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setRFSW_Status
	goto	l903
	line	318
	
l902:	
	line	319
	
l903:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_ERROR
	__end_of_setDimmerLights_ERROR:
	signat	_setDimmerLights_ERROR,4216
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
;;		_setPowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	26
global __ptext49
__ptext49:	;psect for function _getTemp_Safe
psect	text49
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	26
	global	__size_of_getTemp_Safe
	__size_of_getTemp_Safe	equ	__end_of_getTemp_Safe-_getTemp_Safe
	
_getTemp_Safe:	
;incstack = 0
	opt	stack 9
; Regs used in _getTemp_Safe: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	28
	
l8867:	
;OverTemperature_B1.c: 28: return Temp->Safe;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	indf1,w
	andlw	(1<<1)-1
	goto	l1972
	
l8869:	
	line	29
	
l1972:	
	return
	opt stack 0
GLOBAL	__end_of_getTemp_Safe
	__end_of_getTemp_Safe:
	signat	_getTemp_Safe,89
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
psect	text50,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	15
global __ptext50
__ptext50:	;psect for function _PowerFault_Initialization
psect	text50
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	15
	global	__size_of_PowerFault_Initialization
	__size_of_PowerFault_Initialization	equ	__end_of_PowerFault_Initialization-_PowerFault_Initialization
	
_PowerFault_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _PowerFault_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	18
	
l9701:	
;PowerFault_B1.c: 18: setPowerFault_Initialization();
	fcall	_setPowerFault_Initialization
	line	20
	
l2261:	
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
psect	text51,local,class=CODE,delta=2,merge=1
	line	29
global __ptext51
__ptext51:	;psect for function _setPowerFault_Initialization
psect	text51
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\PowerFault_B1.c"
	line	29
	global	__size_of_setPowerFault_Initialization
	__size_of_setPowerFault_Initialization	equ	__end_of_setPowerFault_Initialization-_setPowerFault_Initialization
	
_setPowerFault_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _setPowerFault_Initialization: [wregfsr1]
	line	31
	
l9349:	
;PowerFault_B1.c: 31: PF=&PF1;
	movlw	(_PF1)&0ffh
	movlb 0	; select bank0
	movwf	(??_setPowerFault_Initialization+0)+0
	movf	(??_setPowerFault_Initialization+0)+0,w
	movwf	(_PF)
	line	32
	
l9351:	
;PowerFault_B1.c: 32: PF->Enable=1;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	33
	
l9353:	
;PowerFault_B1.c: 33: PF->Safe=1;
	movf	(_PF),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	34
	
l2267:	
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
psect	text52,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	24
global __ptext52
__ptext52:	;psect for function _Mcu_Initialization
psect	text52
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	24
	global	__size_of_Mcu_Initialization
	__size_of_Mcu_Initialization	equ	__end_of_Mcu_Initialization-_Mcu_Initialization
	
_Mcu_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Mcu_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	27
	
l9637:	
;MCU_B1.c: 27: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	29
	
l9639:	
;MCU_B1.c: 29: IO_Set();
	fcall	_IO_Set
	line	31
	
l9641:	
;MCU_B1.c: 31: TMR0_Set();
	fcall	_TMR0_Set
	line	35
	
l9643:	
;MCU_B1.c: 33: ;;
;MCU_B1.c: 35: ADC_Set();
	fcall	_ADC_Set
	line	39
;MCU_B1.c: 39: INT_Set();
	fcall	_INT_Set
	line	41
	
l9645:	
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
	movwf	(_Memory)
	line	48
	
l1579:	
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
	line	114
global __ptext53
__ptext53:	;psect for function _TMR0_Set
psect	text53
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	114
	global	__size_of_TMR0_Set
	__size_of_TMR0_Set	equ	__end_of_TMR0_Set-_TMR0_Set
	
_TMR0_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR0_Set: [wreg+status,2]
	line	116
	
l9225:	
;MCU_B1.c: 116: Timer0=&VarTimer0;
	movlw	(_VarTimer0)&0ffh
	movlb 0	; select bank0
	movwf	(??_TMR0_Set+0)+0
	movf	(??_TMR0_Set+0)+0,w
	movlb 1	; select bank1
	movwf	(_Timer0)^080h
	line	117
	
l9227:	
;MCU_B1.c: 117: OPTION_REG=0x00;
	clrf	(149)^080h	;volatile
	line	118
	
l9229:	
;MCU_B1.c: 118: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	119
	
l9231:	
;MCU_B1.c: 119: TMR0IE=1;
	bsf	(93/8),(93)&7	;volatile
	line	120
	
l9233:	
;MCU_B1.c: 120: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	121
	
l1588:	
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
	line	50
global __ptext54
__ptext54:	;psect for function _IO_Set
psect	text54
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	50
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _IO_Set: [wreg+status,2]
	line	79
	
l9207:	
;MCU_B1.c: 79: TRISA=0b01110111;;
	movlw	(077h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	80
;MCU_B1.c: 80: TRISB=0b00000111;;
	movlw	(07h)
	movwf	(141)^080h	;volatile
	line	81
;MCU_B1.c: 81: TRISC=0b00001100;;
	movlw	(0Ch)
	movwf	(142)^080h	;volatile
	line	82
	
l9209:	
;MCU_B1.c: 82: LATA=0b00000000;;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	83
	
l9211:	
;MCU_B1.c: 83: LATB=0b00000010;;
	movlw	(02h)
	movwf	(269)^0100h	;volatile
	line	84
;MCU_B1.c: 84: LATC=0b00000000;;
	clrf	(270)^0100h	;volatile
	line	85
	
l9213:	
;MCU_B1.c: 85: ANSELA=0b00100010;;
	movlw	(022h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	86
	
l9215:	
;MCU_B1.c: 86: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	87
	
l9217:	
;MCU_B1.c: 87: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	88
	
l9219:	
;MCU_B1.c: 88: PORTA=0b01110111;;
	movlw	(077h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	89
	
l9221:	
;MCU_B1.c: 89: PORTB=0b00000111;;
	movlw	(07h)
	movwf	(13)	;volatile
	line	90
	
l9223:	
;MCU_B1.c: 90: PORTC=0b00001100;;
	movlw	(0Ch)
	movwf	(14)	;volatile
	line	92
	
l1582:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
	signat	_IO_Set,88
	global	_IOC_Set

;; *************** function _IOC_Set *****************
;; Defined at:
;;		line 310 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
	line	310
global __ptext55
__ptext55:	;psect for function _IOC_Set
psect	text55
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	310
	global	__size_of_IOC_Set
	__size_of_IOC_Set	equ	__end_of_IOC_Set-_IOC_Set
	
_IOC_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _IOC_Set: [wreg+status,2]
	line	312
	
l9239:	
;MCU_B1.c: 312: WPUB2=0;
	movlb 4	; select bank4
	bcf	(4202/8)^0200h,(4202)&7	;volatile
	line	314
	
l9241:	
;MCU_B1.c: 314: IOCBP=0b00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	315
;MCU_B1.c: 315: IOCBN=0b00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	330
	
l9243:	
;MCU_B1.c: 330: IOCBF=0b00000000;
	clrf	(918)^0380h	;volatile
	line	332
	
l9245:	
;MCU_B1.c: 332: IOCIE=1;
	bsf	(91/8),(91)&7	;volatile
	line	333
	
l9247:	
;MCU_B1.c: 333: IOCIF=0;
	bcf	(88/8),(88)&7	;volatile
	line	334
	
l9249:	
;MCU_B1.c: 334: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	335
	
l9251:	
;MCU_B1.c: 335: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	336
	
l1666:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_Set
	__end_of_IOC_Set:
	signat	_IOC_Set,88
	global	_INT_Set

;; *************** function _INT_Set *****************
;; Defined at:
;;		line 281 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
	line	281
global __ptext56
__ptext56:	;psect for function _INT_Set
psect	text56
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	281
	global	__size_of_INT_Set
	__size_of_INT_Set	equ	__end_of_INT_Set-_INT_Set
	
_INT_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _INT_Set: []
	line	283
	
l9237:	
;MCU_B1.c: 283: WPUB0=0;
	movlb 4	; select bank4
	bcf	(4200/8)^0200h,(4200)&7	;volatile
	line	284
;MCU_B1.c: 284: INTE=1;
	bsf	(92/8),(92)&7	;volatile
	line	285
;MCU_B1.c: 285: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	286
;MCU_B1.c: 286: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	287
	
l1656:	
	return
	opt stack 0
GLOBAL	__end_of_INT_Set
	__end_of_INT_Set:
	signat	_INT_Set,88
	global	_ADC_Set

;; *************** function _ADC_Set *****************
;; Defined at:
;;		line 375 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
	line	375
global __ptext57
__ptext57:	;psect for function _ADC_Set
psect	text57
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	375
	global	__size_of_ADC_Set
	__size_of_ADC_Set	equ	__end_of_ADC_Set-_ADC_Set
	
_ADC_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _ADC_Set: [wreg]
	line	377
	
l9235:	
;MCU_B1.c: 377: ADCON1=0xf2;
	movlw	(0F2h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	378
;MCU_B1.c: 378: FVRCON=0xc0;
	movlw	(0C0h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	line	379
	
l1676:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Set
	__end_of_ADC_Set:
	signat	_ADC_Set,88
	global	_MainT_ResetClock

;; *************** function _MainT_ResetClock *****************
;; Defined at:
;;		line 193 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text58,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	193
global __ptext58
__ptext58:	;psect for function _MainT_ResetClock
psect	text58
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	193
	global	__size_of_MainT_ResetClock
	__size_of_MainT_ResetClock	equ	__end_of_MainT_ResetClock-_MainT_ResetClock
	
_MainT_ResetClock:	
;incstack = 0
	opt	stack 11
; Regs used in _MainT_ResetClock: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	195
	
l9759:	
;main.c: 194: char i;
;main.c: 195: if(!TMain->ClockStop){
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u10211
	goto	u10210
u10211:
	goto	l1332
u10210:
	line	197
	
l9761:	
;main.c: 197: if(RB5){
	btfss	(109/8),(109)&7	;volatile
	goto	u10221
	goto	u10220
u10221:
	goto	l1332
u10220:
	line	198
	
l9763:	
;main.c: 198: RB5=0;
	bcf	(109/8),(109)&7	;volatile
	line	199
	
l9765:	
;main.c: 199: for(i=0 ;i<10 ; i++);
	clrf	(MainT_ResetClock@i)
	
l9767:	
	movlw	(0Ah)
	subwf	(MainT_ResetClock@i),w
	skipc
	goto	u10231
	goto	u10230
u10231:
	goto	l9771
u10230:
	goto	l1331
	
l9769:	
	goto	l1331
	
l1330:	
	
l9771:	
	movlw	(01h)
	movwf	(??_MainT_ResetClock+0)+0
	movf	(??_MainT_ResetClock+0)+0,w
	addwf	(MainT_ResetClock@i),f
	
l9773:	
	movlw	(0Ah)
	subwf	(MainT_ResetClock@i),w
	skipc
	goto	u10241
	goto	u10240
u10241:
	goto	l9771
u10240:
	
l1331:	
	line	200
;main.c: 200: RB5=1;
	bsf	(109/8),(109)&7	;volatile
	goto	l1332
	line	201
	
l1329:	
	goto	l1332
	line	209
	
l1328:	
	line	210
	
l1332:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_ResetClock
	__end_of_MainT_ResetClock:
	signat	_MainT_ResetClock,88
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
psect	text59,local,class=CODE,delta=2,merge=1
	line	93
global __ptext59
__ptext59:	;psect for function _MainT_Initialization
psect	text59
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	93
	global	__size_of_MainT_Initialization
	__size_of_MainT_Initialization	equ	__end_of_MainT_Initialization-_MainT_Initialization
	
_MainT_Initialization:	
;incstack = 0
	opt	stack 11
; Regs used in _MainT_Initialization: [wregfsr1]
	line	96
	
l9631:	
;main.c: 96: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movwf	(_Product)
	line	97
	
l9633:	
;main.c: 97: Product->Data[20]=210;
	movlw	(0D2h)
	movwf	(??_MainT_Initialization+0)+0
	movf	(_Product),w
	addlw	014h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_MainT_Initialization+0)+0,w
	movwf	indf1
	line	100
	
l9635:	
;main.c: 100: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movwf	(_TMain)
	line	103
	
l1316:	
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
;;		_setRF_Enable
;;		_setSw_Enable
;;		_setTemp_Enable
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text60,local,class=CODE,delta=2,merge=1
	line	105
global __ptext60
__ptext60:	;psect for function _MainT
psect	text60
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	105
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
;incstack = 0
	opt	stack 9
; Regs used in _MainT: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	108
	
l9733:	
;main.c: 108: if(!TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u10171
	goto	u10170
u10171:
	goto	l9749
u10170:
	line	110
	
l9735:	
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
	
l9737:	
;main.c: 111: if(TMain->PowerCount == 150)
	incf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(096h)
	skipz
	goto	u10185
	moviw	[1]fsr1
	xorlw	high(096h)
u10185:
	skipz
	goto	u10181
	goto	u10180
u10181:
	goto	l1325
u10180:
	line	113
	
l9739:	
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
	
l9741:	
;main.c: 117: setTemp_Enable(1);
	movlw	(01h)
	fcall	_setTemp_Enable
	line	127
	
l9743:	
;main.c: 121: ;;
;main.c: 127: setBuz(3,50);
	movlw	low(032h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(032h)
	movwf	((setBuz@time))+1
	movlw	(03h)
	fcall	_setBuz
	line	128
;main.c: 128: TMain->SelfTest=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	130
	
l9745:	
;main.c: 130: setSw_Enable(1);
	movlw	(01h)
	fcall	_setSw_Enable
	line	133
	
l9747:	
;main.c: 133: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setRF_Enable@command)
	incf	(setRF_Enable@command),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l1325
	line	137
	
l1320:	
	line	138
;main.c: 137: }
;main.c: 138: }
	goto	l1325
	line	139
	
l1319:	
	line	148
	
l9749:	
;main.c: 139: else
;main.c: 140: {
;main.c: 148: TMain->Count1++;
	movlb 0	; select bank0
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
	
l9751:	
;main.c: 149: if(TMain->Count1 == 100)
	movf	(_TMain),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(064h)
	skipz
	goto	u10195
	moviw	[1]fsr1
	xorlw	high(064h)
u10195:
	skipz
	goto	u10191
	goto	u10190
u10191:
	goto	l1325
u10190:
	line	151
	
l9753:	
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
	goto	u10201
	goto	u10200
u10201:
	goto	l9757
u10200:
	line	166
	
l9755:	
;main.c: 165: {
;main.c: 166: TMain->Flag=0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	175
;main.c: 175: }
	goto	l1325
	line	176
	
l1323:	
	line	178
	
l9757:	
;main.c: 176: else
;main.c: 177: {
;main.c: 178: TMain->Flag=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	goto	l1325
	line	187
	
l1324:	
	goto	l1325
	line	188
	
l1322:	
	goto	l1325
	line	190
	
l1321:	
	line	191
	
l1325:	
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
psect	text61,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\OverTemperature_B1.c"
	line	22
global __ptext61
__ptext61:	;psect for function _setTemp_Enable
psect	text61
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
	
l9205:	
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
	
l1969:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Enable
	__end_of_setTemp_Enable:
	signat	_setTemp_Enable,4216
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
;;		_setOverTemp_Exceptions
;;		_setPowerFault_Exceptions
;; This function uses a non-reentrant model
;;
psect	text62,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	86
global __ptext62
__ptext62:	;psect for function _setSw_Enable
psect	text62
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
	
l8613:	
;Switch_B1.c: 90: SwPointSelect(1);
	movlw	(01h)
	fcall	_SwPointSelect
	line	91
	
l8615:	
;Switch_B1.c: 91: Sw->Enable=command;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setSw_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	95
	
l8617:	
;Switch_B1.c: 95: SwPointSelect(2);
	movlw	(02h)
	fcall	_SwPointSelect
	line	96
;Switch_B1.c: 96: Sw->Enable=command;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setSw_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	104
	
l2774:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Enable
	__end_of_setSw_Enable:
	signat	_setSw_Enable,4216
	global	_setRF_Enable

;; *************** function _setRF_Enable *****************
;; Defined at:
;;		line 185 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;;		_setOverTemp_Exceptions
;;		_setPowerFault_Exceptions
;; This function uses a non-reentrant model
;;
psect	text63,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	185
global __ptext63
__ptext63:	;psect for function _setRF_Enable
psect	text63
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	185
	global	__size_of_setRF_Enable
	__size_of_setRF_Enable	equ	__end_of_setRF_Enable-_setRF_Enable
	
_setRF_Enable:	
;incstack = 0
	opt	stack 7
; Regs used in _setRF_Enable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_Enable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Enable@rf)
	line	187
	
l8619:	
;RF_Control_B1.c: 187: RfPointSelect(rf);
	movf	(setRF_Enable@rf),w
	fcall	_RfPointSelect
	line	188
	
l8621:	
;RF_Control_B1.c: 188: RF->Enable=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRF_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	189
	
l8623:	
;RF_Control_B1.c: 189: RF->Learn=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	190
	
l8625:	
;RF_Control_B1.c: 190: RF->TransceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	191
	
l8627:	
;RF_Control_B1.c: 191: RF->RxStatus=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	192
	
l8629:	
;RF_Control_B1.c: 192: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	193
	
l8631:	
;RF_Control_B1.c: 193: RF->DebounceTime=0;
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	194
	
l8633:	
;RF_Control_B1.c: 194: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	195
	
l8635:	
;RF_Control_B1.c: 195: setINT_GO(0);
	movlw	(0)
	fcall	_setINT_GO
	line	196
	
l2522:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Enable
	__end_of_setRF_Enable:
	signat	_setRF_Enable,8312
	global	_setINT_GO

;; *************** function _setINT_GO *****************
;; Defined at:
;;		line 299 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text64,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	299
global __ptext64
__ptext64:	;psect for function _setINT_GO
psect	text64
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	299
	global	__size_of_setINT_GO
	__size_of_setINT_GO	equ	__end_of_setINT_GO-_setINT_GO
	
_setINT_GO:	
;incstack = 0
	opt	stack 7
; Regs used in _setINT_GO: [wreg]
;setINT_GO@command stored from wreg
	movlb 0	; select bank0
	movwf	(setINT_GO@command)
	line	301
	
l8511:	
;MCU_B1.c: 301: INTF=0;
	bcf	(89/8),(89)&7	;volatile
	line	302
	
l8513:	
;MCU_B1.c: 302: INTE=command;
	btfsc	(setINT_GO@command),0
	goto	u8531
	goto	u8530
	
u8531:
	bsf	(92/8),(92)&7	;volatile
	goto	u8544
u8530:
	bcf	(92/8),(92)&7	;volatile
u8544:
	line	303
	
l1663:	
	return
	opt stack 0
GLOBAL	__end_of_setINT_GO
	__end_of_setINT_GO:
	signat	_setINT_GO,4216
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
psect	text65,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	51
global __ptext65
__ptext65:	;psect for function _LED_Main
psect	text65
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	51
	global	__size_of_LED_Main
	__size_of_LED_Main	equ	__end_of_LED_Main-_LED_Main
	
_LED_Main:	
;incstack = 0
	opt	stack 9
; Regs used in _LED_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	54
	
l9629:	
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
	
l1092:	
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
psect	text66,local,class=CODE,delta=2,merge=1
	line	214
global __ptext66
__ptext66:	;psect for function _setLED_Main
psect	text66
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
	
l9183:	
;LED_B1.c: 216: LedPointSelect(led);
	movf	(setLED_Main@led),w
	fcall	_LedPointSelect
	line	217
	
l9185:	
;LED_B1.c: 217: if(LED->GO)
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9351
	goto	u9350
u9351:
	goto	l1130
u9350:
	line	219
	
l9187:	
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
	
l9189:	
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
	goto	u9361
	goto	u9360
u9361:
	goto	l1130
u9360:
	line	222
	
l9191:	
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
	
l9193:	
;LED_B1.c: 224: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED_Main@led),w
	xorlw	01h&0ffh
	skipz
	goto	u9371
	goto	u9370
u9371:
	goto	l9197
u9370:
	line	226
	
l9195:	
;LED_B1.c: 225: {
;LED_B1.c: 226: RA3=~RA3;
	movlw	1<<((99)&7)
	xorwf	((99)/8),f
	line	227
;LED_B1.c: 227: }
	goto	l1130
	line	230
	
l1125:	
	
l9197:	
;LED_B1.c: 230: else if(led == 2)
	movf	(setLED_Main@led),w
	xorlw	02h&0ffh
	skipz
	goto	u9381
	goto	u9380
u9381:
	goto	l9201
u9380:
	line	232
	
l9199:	
;LED_B1.c: 231: {
;LED_B1.c: 232: RC7=~RC7;
	movlw	1<<((119)&7)
	xorwf	((119)/8),f
	line	233
;LED_B1.c: 233: }
	goto	l1130
	line	242
	
l1127:	
	
l9201:	
;LED_B1.c: 242: else if(led == 99)
	movf	(setLED_Main@led),w
	xorlw	063h&0ffh
	skipz
	goto	u9391
	goto	u9390
u9391:
	goto	l1130
u9390:
	line	244
	
l9203:	
;LED_B1.c: 243: {
;LED_B1.c: 244: RB5=~RB5;
	movlw	1<<((109)&7)
	xorwf	((109)/8),f
	goto	l1130
	line	245
	
l1129:	
	goto	l1130
	line	247
	
l1128:	
	goto	l1130
	
l1126:	
	goto	l1130
	
l1124:	
	goto	l1130
	line	248
	
l1123:	
	line	249
	
l1130:	
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
psect	text67,local,class=CODE,delta=2,merge=1
	line	35
global __ptext67
__ptext67:	;psect for function _LED_Initialization
psect	text67
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	35
	global	__size_of_LED_Initialization
	__size_of_LED_Initialization	equ	__end_of_LED_Initialization-_LED_Initialization
	
_LED_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _LED_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	38
	
l9627:	
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
	
l1089:	
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
psect	text68,local,class=CODE,delta=2,merge=1
	line	67
global __ptext68
__ptext68:	;psect for function _setLED_Initialization
psect	text68
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
	
l9177:	
;LED_B1.c: 69: LedPointSelect(led);
	movf	(setLED_Initialization@led),w
	fcall	_LedPointSelect
	line	70
	
l9179:	
;LED_B1.c: 70: LED->Enable=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	71
	
l9181:	
;LED_B1.c: 71: setLED(led,0);
	movlb 0	; select bank0
	clrf	(setLED@command)
	movf	(setLED_Initialization@led),w
	fcall	_setLED
	line	72
	
l1095:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Initialization
	__end_of_setLED_Initialization:
	signat	_setLED_Initialization,4216
	global	_Flash_Memory_Main

;; *************** function _Flash_Memory_Main *****************
;; Defined at:
;;		line 852 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text69,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	852
global __ptext69
__ptext69:	;psect for function _Flash_Memory_Main
psect	text69
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	852
	global	__size_of_Flash_Memory_Main
	__size_of_Flash_Memory_Main	equ	__end_of_Flash_Memory_Main-_Flash_Memory_Main
	
_Flash_Memory_Main:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	854
	
l9775:	
;MCU_B1.c: 854: if(Memory->GO)
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10251
	goto	u10250
u10251:
	goto	l1695
u10250:
	line	856
	
l9777:	
;MCU_B1.c: 855: {
;MCU_B1.c: 856: if(Memory->Modify)
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u10261
	goto	u10260
u10261:
	goto	l9787
u10260:
	line	858
	
l9779:	
;MCU_B1.c: 857: {
;MCU_B1.c: 858: Memory->Time++;
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	859
	
l9781:	
;MCU_B1.c: 859: if(Memory->Time == 25)
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(019h)
	skipz
	goto	u10275
	moviw	[1]fsr1
	xorlw	high(019h)
u10275:
	skipz
	goto	u10271
	goto	u10270
u10271:
	goto	l1695
u10270:
	line	861
	
l9783:	
;MCU_B1.c: 860: {
;MCU_B1.c: 861: Memory->Time=0;
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	862
;MCU_B1.c: 862: Memory->Modify=0;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	863
;MCU_B1.c: 863: Memory->GO=0;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	864
	
l9785:	
;MCU_B1.c: 864: Flash_Memory_Modify();
	fcall	_Flash_Memory_Modify
	goto	l1695
	line	866
	
l1693:	
	line	867
;MCU_B1.c: 866: }
;MCU_B1.c: 867: }
	goto	l1695
	line	868
	
l1692:	
	line	870
	
l9787:	
;MCU_B1.c: 868: else
;MCU_B1.c: 869: {
;MCU_B1.c: 870: Memory->GO=0;
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l1695
	line	871
	
l1694:	
	goto	l1695
	line	872
	
l1691:	
	line	873
	
l1695:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Main
	__end_of_Flash_Memory_Main:
	signat	_Flash_Memory_Main,88
	global	_Flash_Memory_Modify

;; *************** function _Flash_Memory_Modify *****************
;; Defined at:
;;		line 927 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text70,local,class=CODE,delta=2,merge=1
	line	927
global __ptext70
__ptext70:	;psect for function _Flash_Memory_Modify
psect	text70
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	927
	global	__size_of_Flash_Memory_Modify
	__size_of_Flash_Memory_Modify	equ	__end_of_Flash_Memory_Modify-_Flash_Memory_Modify
	
_Flash_Memory_Modify:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Modify: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	930
	
l9261:	
;MCU_B1.c: 929: char i;
;MCU_B1.c: 930: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Modify@i)
	
l9263:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u9411
	goto	u9410
u9411:
	goto	l9267
u9410:
	goto	l9273
	
l9265:	
	goto	l9273
	line	931
	
l1712:	
	line	932
	
l9267:	
;MCU_B1.c: 931: {
;MCU_B1.c: 932: Memory->Data[i]=Flash_Memory_Read(i);
	movf	(Flash_Memory_Modify@i),w
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(Flash_Memory_Modify@i),w
	addwf	(_Memory),w
	movwf	(??_Flash_Memory_Modify+1)+0
	movf	0+(??_Flash_Memory_Modify+1)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	930
	
l9269:	
	movlw	(01h)
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(??_Flash_Memory_Modify+0)+0,w
	addwf	(Flash_Memory_Modify@i),f
	
l9271:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u9421
	goto	u9420
u9421:
	goto	l9267
u9420:
	goto	l9273
	
l1713:	
	line	934
	
l9273:	
;MCU_B1.c: 933: }
;MCU_B1.c: 934: Memory->Data[0]=Product->Data[12];
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(_Memory),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	935
;MCU_B1.c: 935: Memory->Data[1]=Product->Data[13];
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	incf	(_Memory),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	936
;MCU_B1.c: 936: Memory->Data[2]=Product->Data[14];
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(_Memory),w
	addlw	02h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	942
;MCU_B1.c: 942: if(Memory->LoopSave)
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9431
	goto	u9430
u9431:
	goto	l9277
u9430:
	line	944
	
l9275:	
;MCU_B1.c: 943: {
;MCU_B1.c: 944: Memory->LoopSave=0;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,2
	line	945
;MCU_B1.c: 945: TMain->FirstOpen=0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	946
;MCU_B1.c: 946: TMain->First=0;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l9277
	line	948
	
l1714:	
	line	949
	
l9277:	
;MCU_B1.c: 948: }
;MCU_B1.c: 949: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	950
	
l9279:	
;MCU_B1.c: 950: Flash_Memory_Erasing();
	fcall	_Flash_Memory_Erasing
	line	951
	
l9281:	
;MCU_B1.c: 951: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	952
	
l9283:	
;MCU_B1.c: 952: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	953
	
l1715:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Modify
	__end_of_Flash_Memory_Modify:
	signat	_Flash_Memory_Modify,88
	global	_Flash_Memory_Erasing

;; *************** function _Flash_Memory_Erasing *****************
;; Defined at:
;;		line 916 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text71,local,class=CODE,delta=2,merge=1
	line	916
global __ptext71
__ptext71:	;psect for function _Flash_Memory_Erasing
psect	text71
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	916
	global	__size_of_Flash_Memory_Erasing
	__size_of_Flash_Memory_Erasing	equ	__end_of_Flash_Memory_Erasing-_Flash_Memory_Erasing
	
_Flash_Memory_Erasing:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Erasing: [wreg+status,2+status,0+pclath+cstack]
	line	918
	
l8853:	
;MCU_B1.c: 918: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	919
	
l8855:	
;MCU_B1.c: 919: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	920
	
l8857:	
;MCU_B1.c: 920: PMADRL=0x00;
	clrf	(401)^0180h	;volatile
	line	921
	
l8859:	
;MCU_B1.c: 921: FREE=1;
	bsf	(3244/8)^0180h,(3244)&7	;volatile
	line	922
	
l8861:	
;MCU_B1.c: 922: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7	;volatile
	line	923
	
l8863:	
;MCU_B1.c: 923: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	924
	
l8865:	
;MCU_B1.c: 924: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7	;volatile
	line	925
	
l1709:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Erasing
	__end_of_Flash_Memory_Erasing:
	signat	_Flash_Memory_Erasing,88
	global	_Flash_Memory_Initialization

;; *************** function _Flash_Memory_Initialization *****************
;; Defined at:
;;		line 807 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text72,local,class=CODE,delta=2,merge=1
	line	807
global __ptext72
__ptext72:	;psect for function _Flash_Memory_Initialization
psect	text72
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	807
	global	__size_of_Flash_Memory_Initialization
	__size_of_Flash_Memory_Initialization	equ	__end_of_Flash_Memory_Initialization-_Flash_Memory_Initialization
	
_Flash_Memory_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	810
	
l9647:	
;MCU_B1.c: 809: char i;
;MCU_B1.c: 810: if(Flash_Memory_Read(31) == 0xaa)
	movlw	(01Fh)
	fcall	_Flash_Memory_Read
	xorlw	0AAh&0ffh
	skipz
	goto	u10081
	goto	u10080
u10081:
	goto	l9667
u10080:
	line	812
	
l9649:	
;MCU_B1.c: 811: {
;MCU_B1.c: 812: Product->Data[12]=Flash_Memory_Read(0);
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
	line	813
;MCU_B1.c: 813: Product->Data[13]=Flash_Memory_Read(1);
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
	line	814
;MCU_B1.c: 814: Product->Data[14]=Flash_Memory_Read(2);
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
	line	820
	
l9651:	
;MCU_B1.c: 820: i=setPercentValue(((char)((100-55)*1.5)));
	movlw	(043h)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	821
	
l9653:	
;MCU_B1.c: 821: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	822
	
l9655:	
;MCU_B1.c: 822: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	823
	
l9657:	
;MCU_B1.c: 823: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	825
	
l9659:	
;MCU_B1.c: 825: if(Product->Data[12]==0xff && Product->Data[13]==0xff && Product->Data[14]==0xff)
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0FFh&0ffh
	skipz
	goto	u10091
	goto	u10090
u10091:
	goto	l1688
u10090:
	
l9661:	
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0FFh&0ffh
	skipz
	goto	u10101
	goto	u10100
u10101:
	goto	l1688
u10100:
	
l9663:	
	movf	(_Product),w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	0FFh&0ffh
	skipz
	goto	u10111
	goto	u10110
u10111:
	goto	l1688
u10110:
	line	827
	
l9665:	
;MCU_B1.c: 826: {
;MCU_B1.c: 827: TMain->FirstOpen=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	828
;MCU_B1.c: 828: TMain->First=1;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l1688
	line	829
	
l1686:	
	line	830
;MCU_B1.c: 829: }
;MCU_B1.c: 830: }
	goto	l1688
	line	831
	
l1685:	
	line	833
	
l9667:	
;MCU_B1.c: 831: else
;MCU_B1.c: 832: {
;MCU_B1.c: 833: i=setPercentValue(((char)((100-55)*1.5)));
	movlw	(043h)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	834
	
l9669:	
;MCU_B1.c: 834: Memory->Data[0]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Memory),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	835
	
l9671:	
;MCU_B1.c: 835: Memory->Data[1]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	incf	(_Memory),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	836
	
l9673:	
;MCU_B1.c: 836: Memory->Data[2]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Memory),w
	addlw	02h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	837
	
l9675:	
;MCU_B1.c: 837: Memory->Data[3]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Memory),w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	838
	
l9677:	
;MCU_B1.c: 838: Memory->Data[4]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Memory),w
	addlw	04h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	839
	
l9679:	
;MCU_B1.c: 839: Memory->Data[5]=0xff;
	movlw	(0FFh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Memory),w
	addlw	05h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	840
	
l9681:	
;MCU_B1.c: 840: Memory->Data[31]=0xaa;
	movlw	(0AAh)
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Memory),w
	addlw	01Fh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	841
	
l9683:	
;MCU_B1.c: 841: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	842
	
l9685:	
;MCU_B1.c: 842: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	843
	
l9687:	
;MCU_B1.c: 843: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	844
	
l9689:	
;MCU_B1.c: 844: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	845
	
l9691:	
;MCU_B1.c: 845: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	846
	
l9693:	
;MCU_B1.c: 846: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	847
	
l9695:	
;MCU_B1.c: 847: TMain->FirstOpen=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	848
	
l9697:	
;MCU_B1.c: 848: TMain->First=1;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l1688
	line	849
	
l1687:	
	line	850
	
l1688:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Initialization
	__end_of_Flash_Memory_Initialization:
	signat	_Flash_Memory_Initialization,88
	global	_Flash_Memory_Write

;; *************** function _Flash_Memory_Write *****************
;; Defined at:
;;		line 896 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text73,local,class=CODE,delta=2,merge=1
	line	896
global __ptext73
__ptext73:	;psect for function _Flash_Memory_Write
psect	text73
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	896
	global	__size_of_Flash_Memory_Write
	__size_of_Flash_Memory_Write	equ	__end_of_Flash_Memory_Write-_Flash_Memory_Write
	
_Flash_Memory_Write:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Write: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	899
	
l8823:	
;MCU_B1.c: 898: char i;
;MCU_B1.c: 899: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	900
	
l8825:	
;MCU_B1.c: 900: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	901
	
l8827:	
;MCU_B1.c: 901: PMDATH=0;
	clrf	(404)^0180h	;volatile
	line	902
	
l8829:	
;MCU_B1.c: 902: FREE=0;
	bcf	(3244/8)^0180h,(3244)&7	;volatile
	line	903
	
l8831:	
;MCU_B1.c: 903: LWLO=1;
	bsf	(3245/8)^0180h,(3245)&7	;volatile
	line	904
	
l8833:	
;MCU_B1.c: 904: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7	;volatile
	line	905
	
l8835:	
;MCU_B1.c: 905: for(i=0 ; i<32 ; i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Write@i)
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u8891
	goto	u8890
u8891:
	goto	l8839
u8890:
	goto	l1705
	
l8837:	
	goto	l1705
	line	906
	
l1704:	
	line	907
	
l8839:	
;MCU_B1.c: 906: {
;MCU_B1.c: 907: PMADRL=i;
	movf	(Flash_Memory_Write@i),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	908
	
l8841:	
;MCU_B1.c: 908: PMDATL=Memory->Data[i];
	movlb 0	; select bank0
	movf	(Flash_Memory_Write@i),w
	addwf	(_Memory),w
	movwf	(??_Flash_Memory_Write+0)+0
	movf	0+(??_Flash_Memory_Write+0)+0,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movlb 3	; select bank3
	movwf	(403)^0180h	;volatile
	line	909
	
l8843:	
;MCU_B1.c: 909: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	905
	
l8845:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Write+0)+0
	movf	(??_Flash_Memory_Write+0)+0,w
	addwf	(Flash_Memory_Write@i),f
	
l8847:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u8901
	goto	u8900
u8901:
	goto	l8839
u8900:
	
l1705:	
	line	911
;MCU_B1.c: 910: }
;MCU_B1.c: 911: LWLO=0;
	movlb 3	; select bank3
	bcf	(3245/8)^0180h,(3245)&7	;volatile
	line	912
	
l8849:	
;MCU_B1.c: 912: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	913
	
l8851:	
;MCU_B1.c: 913: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7	;volatile
	line	914
	
l1706:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Write
	__end_of_Flash_Memory_Write:
	signat	_Flash_Memory_Write,88
	global	_Flash_Memory_Unlock

;; *************** function _Flash_Memory_Unlock *****************
;; Defined at:
;;		line 875 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text74,local,class=CODE,delta=2,merge=1
	line	875
global __ptext74
__ptext74:	;psect for function _Flash_Memory_Unlock
psect	text74
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	875
	global	__size_of_Flash_Memory_Unlock
	__size_of_Flash_Memory_Unlock	equ	__end_of_Flash_Memory_Unlock-_Flash_Memory_Unlock
	
_Flash_Memory_Unlock:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Unlock: [wreg]
	line	877
	
l8637:	
;MCU_B1.c: 877: PMCON2=0x55;
	movlw	(055h)
	movlb 3	; select bank3
	movwf	(406)^0180h	;volatile
	line	878
;MCU_B1.c: 878: PMCON2=0xaa;
	movlw	(0AAh)
	movwf	(406)^0180h	;volatile
	line	879
	
l8639:	
;MCU_B1.c: 879: WR=1;
	bsf	(3241/8)^0180h,(3241)&7	;volatile
	line	880
	
l8641:	
;MCU_B1.c: 880: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	881
	
l8643:	
;MCU_B1.c: 881: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	882
	
l1698:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Unlock
	__end_of_Flash_Memory_Unlock:
	signat	_Flash_Memory_Unlock,88
	global	_Flash_Memory_Read

;; *************** function _Flash_Memory_Read *****************
;; Defined at:
;;		line 884 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text75,local,class=CODE,delta=2,merge=1
	line	884
global __ptext75
__ptext75:	;psect for function _Flash_Memory_Read
psect	text75
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	884
	global	__size_of_Flash_Memory_Read
	__size_of_Flash_Memory_Read	equ	__end_of_Flash_Memory_Read-_Flash_Memory_Read
	
_Flash_Memory_Read:	
;incstack = 0
	opt	stack 9
; Regs used in _Flash_Memory_Read: [wreg+status,2]
;Flash_Memory_Read@address stored from wreg
	movlb 0	; select bank0
	movwf	(Flash_Memory_Read@address)
	line	886
	
l8805:	
;MCU_B1.c: 886: char i,ret=0;
	clrf	(Flash_Memory_Read@ret)
	line	887
	
l8807:	
;MCU_B1.c: 887: PMADRH=0x30;
	movlw	(030h)
	movlb 3	; select bank3
	movwf	(402)^0180h	;volatile
	line	888
	
l8809:	
;MCU_B1.c: 888: PMADRL=address;
	movlb 0	; select bank0
	movf	(Flash_Memory_Read@address),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	889
	
l8811:	
;MCU_B1.c: 889: CFGS=0;
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	890
	
l8813:	
;MCU_B1.c: 890: RD=1;
	bsf	(3240/8)^0180h,(3240)&7	;volatile
	line	891
	
l8815:	
;MCU_B1.c: 891: i=PMDATH;
	movf	(404)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@i)
	line	892
	
l8817:	
;MCU_B1.c: 892: ret=PMDATL;
	movlb 3	; select bank3
	movf	(403)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@ret)
	line	893
	
l8819:	
;MCU_B1.c: 893: return ret;
	movf	(Flash_Memory_Read@ret),w
	goto	l1701
	
l8821:	
	line	894
	
l1701:	
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
psect	text76,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	114
global __ptext76
__ptext76:	;psect for function _DimmerLights_Main
psect	text76
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	114
	global	__size_of_DimmerLights_Main
	__size_of_DimmerLights_Main	equ	__end_of_DimmerLights_Main-_DimmerLights_Main
	
_DimmerLights_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _DimmerLights_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	117
	
l9625:	
;Dimmer_B1.c: 117: setDimmerLights_Main(1);
	movlw	(01h)
	fcall	_setDimmerLights_Main
	line	121
;Dimmer_B1.c: 121: setDimmerLights_Main(2);
	movlw	(02h)
	fcall	_setDimmerLights_Main
	line	128
;Dimmer_B1.c: 128: DimmerLights_Close();
	fcall	_DimmerLights_Close
	line	129
	
l864:	
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
psect	text77,local,class=CODE,delta=2,merge=1
	line	131
global __ptext77
__ptext77:	;psect for function _setDimmerLights_Main
psect	text77
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
	
l9137:	
;Dimmer_B1.c: 133: char clear=1;
	clrf	(setDimmerLights_Main@clear)
	incf	(setDimmerLights_Main@clear),f
	line	134
	
l9139:	
;Dimmer_B1.c: 134: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	152
	
l9141:	
;Dimmer_B1.c: 152: if(lights == 1)
	movlb 0	; select bank0
	movf	(setDimmerLights_Main@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u9271
	goto	u9270
u9271:
	goto	l9145
u9270:
	line	154
	
l9143:	
;Dimmer_B1.c: 153: {
;Dimmer_B1.c: 154: clear=(!DimmerLights22->Clear)?0:1;
	movf	(_DimmerLights22),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,0
	movlw	1
	movwf	(setDimmerLights_Main@clear)
	line	155
;Dimmer_B1.c: 155: }
	goto	l9149
	line	156
	
l867:	
	
l9145:	
;Dimmer_B1.c: 156: else if(lights == 2)
	movf	(setDimmerLights_Main@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u9281
	goto	u9280
u9281:
	goto	l9149
u9280:
	line	158
	
l9147:	
;Dimmer_B1.c: 157: {
;Dimmer_B1.c: 158: clear=(!DimmerLights11->Clear)?0:1;
	movf	(_DimmerLights11),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	btfsc	indf1,0
	movlw	1
	movwf	(setDimmerLights_Main@clear)
	goto	l9149
	line	159
	
l869:	
	goto	l9149
	line	162
	
l868:	
	
l9149:	
;Dimmer_B1.c: 159: }
;Dimmer_B1.c: 162: if(DimmerLights->Trigger)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9291
	goto	u9290
u9291:
	goto	l9163
u9290:
	line	164
	
l9151:	
;Dimmer_B1.c: 163: {
;Dimmer_B1.c: 164: if(clear)
	movf	(setDimmerLights_Main@clear),w
	skipz
	goto	u9300
	goto	l879
u9300:
	line	166
	
l9153:	
;Dimmer_B1.c: 165: {
;Dimmer_B1.c: 166: if(DimmerLights->Switch)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9311
	goto	u9310
u9311:
	goto	l9159
u9310:
	line	168
	
l9155:	
;Dimmer_B1.c: 167: {
;Dimmer_B1.c: 168: DimmerLights->Trigger=0;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	169
	
l9157:	
;Dimmer_B1.c: 169: setDimmerLights(lights,1);
	clrf	(setDimmerLights@status)
	incf	(setDimmerLights@status),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	line	174
;Dimmer_B1.c: 174: }
	movlb 0	; select bank0
	goto	l879
	line	175
	
l872:	
	line	177
	
l9159:	
;Dimmer_B1.c: 175: else
;Dimmer_B1.c: 176: {
;Dimmer_B1.c: 177: DimmerLights->Trigger=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	178
	
l9161:	
;Dimmer_B1.c: 178: setDimmerLights(lights,0);
	clrf	(setDimmerLights@status)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	movlb 0	; select bank0
	goto	l879
	line	183
	
l873:	
	movlb 0	; select bank0
	goto	l879
	line	184
	
l871:	
	line	185
;Dimmer_B1.c: 183: }
;Dimmer_B1.c: 184: }
;Dimmer_B1.c: 185: }
	movlb 0	; select bank0
	goto	l879
	line	186
	
l870:	
	line	188
	
l9163:	
;Dimmer_B1.c: 186: else
;Dimmer_B1.c: 187: {
;Dimmer_B1.c: 188: if(DimmerLights->TriggerAdj)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9321
	goto	u9320
u9321:
	goto	l879
u9320:
	line	190
	
l9165:	
;Dimmer_B1.c: 189: {
;Dimmer_B1.c: 190: if(clear)
	movf	(setDimmerLights_Main@clear),w
	skipz
	goto	u9330
	goto	l879
u9330:
	line	192
	
l9167:	
;Dimmer_B1.c: 191: {
;Dimmer_B1.c: 192: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	193
	
l9169:	
;Dimmer_B1.c: 193: DimmerLights->TriggerAdj=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	194
	
l9171:	
;Dimmer_B1.c: 194: if(DimmerLights->AdjGo)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u9341
	goto	u9340
u9341:
	goto	l9175
u9340:
	line	196
	
l9173:	
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
	goto	l879
	line	199
	
l877:	
	line	201
	
l9175:	
;Dimmer_B1.c: 199: else
;Dimmer_B1.c: 200: {
;Dimmer_B1.c: 201: setDimmerLights_Adj(lights,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Adj@status)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	movlb 0	; select bank0
	goto	l879
	line	202
	
l878:	
	movlb 0	; select bank0
	goto	l879
	line	203
	
l876:	
	movlb 0	; select bank0
	goto	l879
	line	204
	
l875:	
	movlb 0	; select bank0
	goto	l879
	line	205
	
l874:	
	line	206
	
l879:	
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
;;		_setRF_DimmerLights
;;		_setTxData
;; This function is called by:
;;		_setDimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text78,local,class=CODE,delta=2,merge=1
	line	388
global __ptext78
__ptext78:	;psect for function _setDimmerLights_Adj
psect	text78
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
	
l8791:	
;Dimmer_B1.c: 390: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Adj@lights),w
	fcall	_DimmerLightsPointSelect
	line	391
	
l8793:	
;Dimmer_B1.c: 391: if(status)
	movlb 0	; select bank0
	movf	(setDimmerLights_Adj@status),w
	skipz
	goto	u8870
	goto	l8797
u8870:
	line	393
	
l8795:	
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
	goto	l919
	line	396
	
l916:	
	line	398
	
l8797:	
;Dimmer_B1.c: 396: else
;Dimmer_B1.c: 397: {
;Dimmer_B1.c: 398: if(DimmerLights->AdjFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u8881
	goto	u8880
u8881:
	goto	l919
u8880:
	line	400
	
l8799:	
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
	line	403
;Dimmer_B1.c: 402: ;;
;Dimmer_B1.c: 403: DimmerLights->MaxmumValue=DimmerLights->DimmingValue;
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
	
l8801:	
;Dimmer_B1.c: 411: setRF_DimmerLights(lights,1);
	clrf	(setRF_DimmerLights@on)
	incf	(setRF_DimmerLights@on),f
	movf	(setDimmerLights_Adj@lights),w
	fcall	_setRF_DimmerLights
	line	412
	
l8803:	
;Dimmer_B1.c: 412: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l919
	line	413
	
l918:	
	goto	l919
	line	414
	
l917:	
	line	415
	
l919:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Adj
	__end_of_setDimmerLights_Adj:
	signat	_setDimmerLights_Adj,8312
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
;; This function is called by:
;;		_setDimmerLights_Main
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text79,local,class=CODE,delta=2,merge=1
	line	330
global __ptext79
__ptext79:	;psect for function _setDimmerLights
psect	text79
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
	
l8469:	
;Dimmer_B1.c: 332: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights@lights),w
	fcall	_DimmerLightsPointSelect
	line	333
	
l8471:	
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
	
l8473:	
;Dimmer_B1.c: 334: if(status)
	movf	(setDimmerLights@status),w
	skipz
	goto	u8500
	goto	l8487
u8500:
	line	336
	
l8475:	
;Dimmer_B1.c: 335: {
;Dimmer_B1.c: 336: DimmerLights->Status=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	337
	
l8477:	
;Dimmer_B1.c: 337: setLED(lights,0);
	clrf	(setLED@command)
	movf	(setDimmerLights@lights),w
	fcall	_setLED
	line	341
	
l8479:	
;Dimmer_B1.c: 339: ;;
;Dimmer_B1.c: 341: DimmerLights->Signal=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	342
	
l8481:	
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
	
l8483:	
;Dimmer_B1.c: 344: if(!DimmerLights->StatusFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u8511
	goto	u8510
u8511:
	goto	l913
u8510:
	line	346
	
l8485:	
;Dimmer_B1.c: 345: {
;Dimmer_B1.c: 346: DimmerLights->StatusFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	348
;Dimmer_B1.c: 347: ;;
;Dimmer_B1.c: 348: Memory->GO=0; if(!0) { Memory->Time=0; } ;;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	
l911:	
	line	351
;Dimmer_B1.c: 351: DimmerLights->DimmingValue=DimmerLights->MaxmumValue;
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
	goto	l913
	line	357
	
l910:	
	line	358
;Dimmer_B1.c: 357: }
;Dimmer_B1.c: 358: }
	goto	l913
	line	359
	
l909:	
	line	361
	
l8487:	
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
	goto	l913
	line	385
	
l912:	
	line	386
	
l913:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights
	__end_of_setDimmerLights:
	signat	_setDimmerLights,8312
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
;;		_setOverTemp_Exceptions
;;		_setPowerFault_Exceptions
;;		_setSw_Initialization
;; This function uses a non-reentrant model
;;
psect	text80,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	74
global __ptext80
__ptext80:	;psect for function _setLED
psect	text80
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
	
l8357:	
;LED_B1.c: 76: LedPointSelect(led);
	movf	(setLED@led),w
	fcall	_LedPointSelect
	line	77
	
l8359:	
;LED_B1.c: 77: if(command == 0)
	movlb 0	; select bank0
	movf	(setLED@command),f
	skipz
	goto	u8281
	goto	u8280
u8281:
	goto	l8373
u8280:
	line	80
	
l8361:	
;LED_B1.c: 78: {
;LED_B1.c: 80: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u8291
	goto	u8290
u8291:
	goto	l8365
u8290:
	line	85
	
l8363:	
;LED_B1.c: 81: {
;LED_B1.c: 85: RA3=1;
	bsf	(99/8),(99)&7	;volatile
	line	87
;LED_B1.c: 87: }
	goto	l1120
	line	90
	
l1099:	
	
l8365:	
;LED_B1.c: 90: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u8301
	goto	u8300
u8301:
	goto	l8369
u8300:
	line	95
	
l8367:	
;LED_B1.c: 91: {
;LED_B1.c: 95: RC7=1;
	bsf	(119/8),(119)&7	;volatile
	line	97
;LED_B1.c: 97: }
	goto	l1120
	line	110
	
l1101:	
	
l8369:	
;LED_B1.c: 110: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u8311
	goto	u8310
u8311:
	goto	l1120
u8310:
	line	115
	
l8371:	
;LED_B1.c: 111: {
;LED_B1.c: 115: RB5=1;
	bsf	(109/8),(109)&7	;volatile
	goto	l1120
	line	117
	
l1103:	
	goto	l1120
	line	119
	
l1102:	
	goto	l1120
	
l1100:	
;LED_B1.c: 117: }
;LED_B1.c: 119: }
	goto	l1120
	line	120
	
l1098:	
	
l8373:	
;LED_B1.c: 120: else if(command == 1)
	movf	(setLED@command),w
	xorlw	01h&0ffh
	skipz
	goto	u8321
	goto	u8320
u8321:
	goto	l8387
u8320:
	line	123
	
l8375:	
;LED_B1.c: 121: {
;LED_B1.c: 123: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u8331
	goto	u8330
u8331:
	goto	l8379
u8330:
	line	128
	
l8377:	
;LED_B1.c: 124: {
;LED_B1.c: 128: RA3=0;
	bcf	(99/8),(99)&7	;volatile
	line	130
;LED_B1.c: 130: }
	goto	l1120
	line	133
	
l1106:	
	
l8379:	
;LED_B1.c: 133: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u8341
	goto	u8340
u8341:
	goto	l8383
u8340:
	line	138
	
l8381:	
;LED_B1.c: 134: {
;LED_B1.c: 138: RC7=0;
	bcf	(119/8),(119)&7	;volatile
	line	140
;LED_B1.c: 140: }
	goto	l1120
	line	153
	
l1108:	
	
l8383:	
;LED_B1.c: 153: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u8351
	goto	u8350
u8351:
	goto	l1120
u8350:
	line	158
	
l8385:	
;LED_B1.c: 154: {
;LED_B1.c: 158: RB5=0;
	bcf	(109/8),(109)&7	;volatile
	goto	l1120
	line	160
	
l1110:	
	goto	l1120
	line	162
	
l1109:	
	goto	l1120
	
l1107:	
;LED_B1.c: 160: }
;LED_B1.c: 162: }
	goto	l1120
	line	163
	
l1105:	
	
l8387:	
;LED_B1.c: 163: else if(command == 10)
	movf	(setLED@command),w
	xorlw	0Ah&0ffh
	skipz
	goto	u8361
	goto	u8360
u8361:
	goto	l8403
u8360:
	line	165
	
l8389:	
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
	
l8391:	
;LED_B1.c: 168: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u8371
	goto	u8370
u8371:
	goto	l8395
u8370:
	line	173
	
l8393:	
;LED_B1.c: 169: {
;LED_B1.c: 173: RA3=1;
	bsf	(99/8),(99)&7	;volatile
	line	175
;LED_B1.c: 175: }
	goto	l1120
	line	178
	
l1113:	
	
l8395:	
;LED_B1.c: 178: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u8381
	goto	u8380
u8381:
	goto	l8399
u8380:
	line	183
	
l8397:	
;LED_B1.c: 179: {
;LED_B1.c: 183: RC7=1;
	bsf	(119/8),(119)&7	;volatile
	line	185
;LED_B1.c: 185: }
	goto	l1120
	line	198
	
l1115:	
	
l8399:	
;LED_B1.c: 198: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u8391
	goto	u8390
u8391:
	goto	l1120
u8390:
	line	203
	
l8401:	
;LED_B1.c: 199: {
;LED_B1.c: 203: RB5=1;
	bsf	(109/8),(109)&7	;volatile
	goto	l1120
	line	205
	
l1117:	
	goto	l1120
	line	207
	
l1116:	
	goto	l1120
	
l1114:	
;LED_B1.c: 205: }
;LED_B1.c: 207: }
	goto	l1120
	line	208
	
l1112:	
	
l8403:	
;LED_B1.c: 208: else if(command == 11)
	movf	(setLED@command),w
	xorlw	0Bh&0ffh
	skipz
	goto	u8401
	goto	u8400
u8401:
	goto	l1120
u8400:
	line	210
	
l8405:	
;LED_B1.c: 209: {
;LED_B1.c: 210: LED->GO=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l1120
	line	211
	
l1119:	
	goto	l1120
	line	212
	
l1118:	
	goto	l1120
	
l1111:	
	goto	l1120
	
l1104:	
	
l1120:	
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
psect	text81,local,class=CODE,delta=2,merge=1
	line	7
global __ptext81
__ptext81:	;psect for function _LedPointSelect
psect	text81
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
	
l8221:	
;LED_B1.c: 10: if(led == 1)
	movf	(LedPointSelect@led),w
	xorlw	01h&0ffh
	skipz
	goto	u8021
	goto	u8020
u8021:
	goto	l8225
u8020:
	line	12
	
l8223:	
;LED_B1.c: 11: {
;LED_B1.c: 12: LED=&VarLED1;
	movlw	(_VarLED1)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	13
;LED_B1.c: 13: }
	goto	l1086
	line	16
	
l1081:	
	
l8225:	
;LED_B1.c: 16: else if(led == 2)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	02h&0ffh
	skipz
	goto	u8031
	goto	u8030
u8031:
	goto	l8229
u8030:
	line	18
	
l8227:	
;LED_B1.c: 17: {
;LED_B1.c: 18: LED=&VarLED2;
	movlw	(_VarLED2)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	19
;LED_B1.c: 19: }
	goto	l1086
	line	28
	
l1083:	
	
l8229:	
;LED_B1.c: 28: else if(led == 99)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	063h&0ffh
	skipz
	goto	u8041
	goto	u8040
u8041:
	goto	l1086
u8040:
	line	30
	
l8231:	
;LED_B1.c: 29: {
;LED_B1.c: 30: LED=&VarErrLED;
	movlw	(_VarErrLED)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	goto	l1086
	line	31
	
l1085:	
	goto	l1086
	line	33
	
l1084:	
	goto	l1086
	
l1082:	
	
l1086:	
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
;; This function is called by:
;;		_DimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text82,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	101
global __ptext82
__ptext82:	;psect for function _DimmerLights_Close
psect	text82
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	101
	global	__size_of_DimmerLights_Close
	__size_of_DimmerLights_Close	equ	__end_of_DimmerLights_Close-_DimmerLights_Close
	
_DimmerLights_Close:	
;incstack = 0
	opt	stack 9
; Regs used in _DimmerLights_Close: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	103
	
l9127:	
;Dimmer_B1.c: 103: if(Dimmer->Detect)
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u9251
	goto	u9250
u9251:
	goto	l861
u9250:
	line	105
	
l9129:	
;Dimmer_B1.c: 104: {
;Dimmer_B1.c: 105: Dimmer->Detect=0;
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	106
	
l9131:	
;Dimmer_B1.c: 106: if(!getDimmerLights_StatusFlag())
	fcall	_getDimmerLights_StatusFlag
	iorlw	0
	skipz
	goto	u9261
	goto	u9260
u9261:
	goto	l861
u9260:
	line	109
	
l9133:	
;Dimmer_B1.c: 107: {
;Dimmer_B1.c: 108: ;;
;Dimmer_B1.c: 109: Memory->GO=1; if(!1) { Memory->Time=1; } ;;
	movlb 0	; select bank0
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l861
	
l9135:	
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(01h)
	movwi	[0]fsr1
	movlw	high(01h)
	movwi	[1]fsr1
	goto	l861
	
l860:	
	goto	l861
	line	110
	
l859:	
	goto	l861
	line	111
	
l858:	
	line	112
	
l861:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Close
	__end_of_DimmerLights_Close:
	signat	_DimmerLights_Close,88
	global	_getDimmerLights_StatusFlag

;; *************** function _getDimmerLights_StatusFlag *****************
;; Defined at:
;;		line 208 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text83,local,class=CODE,delta=2,merge=1
	line	208
global __ptext83
__ptext83:	;psect for function _getDimmerLights_StatusFlag
psect	text83
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	208
	global	__size_of_getDimmerLights_StatusFlag
	__size_of_getDimmerLights_StatusFlag	equ	__end_of_getDimmerLights_StatusFlag-_getDimmerLights_StatusFlag
	
_getDimmerLights_StatusFlag:	
;incstack = 0
	opt	stack 7
; Regs used in _getDimmerLights_StatusFlag: [wreg+fsr1l+fsr1h+status,2]
	line	210
	
l8453:	
;Dimmer_B1.c: 210: char Status=0;
	movlb 0	; select bank0
	clrf	(getDimmerLights_StatusFlag@Status)
	line	217
	
l8455:	
;Dimmer_B1.c: 217: Status=(DimmerLights11->StatusFlag || DimmerLights22->StatusFlag)?1:0;
	clrf	(_getDimmerLights_StatusFlag$1623)
	incf	(_getDimmerLights_StatusFlag$1623),f
	
l8457:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u8481
	goto	u8480
u8481:
	goto	l8463
u8480:
	
l8459:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u8491
	goto	u8490
u8491:
	goto	l8463
u8490:
	
l8461:	
	clrf	(_getDimmerLights_StatusFlag$1623)
	goto	l8463
	
l883:	
	
l8463:	
	movf	(_getDimmerLights_StatusFlag$1623),w
	movwf	(??_getDimmerLights_StatusFlag+0)+0
	movf	(??_getDimmerLights_StatusFlag+0)+0,w
	movwf	(getDimmerLights_StatusFlag@Status)
	line	224
	
l8465:	
;Dimmer_B1.c: 224: return Status;
	movf	(getDimmerLights_StatusFlag@Status),w
	goto	l884
	
l8467:	
	line	225
	
l884:	
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
psect	text84,local,class=CODE,delta=2,merge=1
	line	41
global __ptext84
__ptext84:	;psect for function _DimmerLights_Initialization
psect	text84
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	41
	global	__size_of_DimmerLights_Initialization
	__size_of_DimmerLights_Initialization	equ	__end_of_DimmerLights_Initialization-_DimmerLights_Initialization
	
_DimmerLights_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _DimmerLights_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	44
	
l9617:	
;Dimmer_B1.c: 44: DimmerLights11=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movlb 0	; select bank0
	movwf	(??_DimmerLights_Initialization+0)+0
	movf	(??_DimmerLights_Initialization+0)+0,w
	movwf	(_DimmerLights11)
	line	45
	
l9619:	
;Dimmer_B1.c: 45: setDimmerLights_Initialization(1);
	movlw	(01h)
	fcall	_setDimmerLights_Initialization
	line	49
	
l9621:	
;Dimmer_B1.c: 49: DimmerLights22=&DimmerLights2;
	movlw	(_DimmerLights2)&0ffh
	movlb 0	; select bank0
	movwf	(??_DimmerLights_Initialization+0)+0
	movf	(??_DimmerLights_Initialization+0)+0,w
	movwf	(_DimmerLights22)
	line	50
;Dimmer_B1.c: 50: setDimmerLights_Initialization(2);
	movlw	(02h)
	fcall	_setDimmerLights_Initialization
	line	59
	
l9623:	
;Dimmer_B1.c: 59: Dimmer_Initialization();
	fcall	_Dimmer_Initialization
	line	62
	
l852:	
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
psect	text85,local,class=CODE,delta=2,merge=1
	line	63
global __ptext85
__ptext85:	;psect for function _setDimmerLights_Initialization
psect	text85
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
	
l9115:	
;Dimmer_B1.c: 65: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Initialization@lights),w
	fcall	_DimmerLightsPointSelect
	line	66
	
l9117:	
;Dimmer_B1.c: 66: DimmerLights->Clear=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	72
	
l9119:	
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
	
l9121:	
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
	
l9123:	
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
	
l855:	
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
psect	text86,local,class=CODE,delta=2,merge=1
	line	520
global __ptext86
__ptext86:	;psect for function _Dimmer_Initialization
psect	text86
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	520
	global	__size_of_Dimmer_Initialization
	__size_of_Dimmer_Initialization	equ	__end_of_Dimmer_Initialization-_Dimmer_Initialization
	
_Dimmer_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Dimmer_Initialization: [wreg]
	line	522
	
l9125:	
;Dimmer_B1.c: 522: Dimmer=&Dimmer1;
	movlw	(_Dimmer1)&0ffh
	movlb 0	; select bank0
	movwf	(??_Dimmer_Initialization+0)+0
	movf	(??_Dimmer_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Dimmer)^080h
	line	523
	
l952:	
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
psect	text87,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	45
global __ptext87
__ptext87:	;psect for function _DelayOff_Main
psect	text87
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	45
	global	__size_of_DelayOff_Main
	__size_of_DelayOff_Main	equ	__end_of_DelayOff_Main-_DelayOff_Main
	
_DelayOff_Main:	
;incstack = 0
	opt	stack 6
; Regs used in _DelayOff_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	48
	
l9615:	
;DelayOff_B1.c: 48: DlyOff_Main(1);
	movlw	(01h)
	fcall	_DlyOff_Main
	line	52
;DelayOff_B1.c: 52: DlyOff_Main(2);
	movlw	(02h)
	fcall	_DlyOff_Main
	line	58
	
l666:	
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
psect	text88,local,class=CODE,delta=2,merge=1
	line	66
global __ptext88
__ptext88:	;psect for function _DlyOff_Main
psect	text88
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
	
l9083:	
;DelayOff_B1.c: 68: DelayOffPointSelect(sw);
	movf	(DlyOff_Main@sw),w
	fcall	_DelayOffPointSelect
	line	69
	
l9085:	
;DelayOff_B1.c: 69: if(DelayOff->GO)
	movlb 0	; select bank0
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u9221
	goto	u9220
u9221:
	goto	l675
u9220:
	line	71
	
l9087:	
;DelayOff_B1.c: 70: {
;DelayOff_B1.c: 71: DelayOff->SecondTime++;
	movf	(_DelayOff),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	72
	
l9089:	
;DelayOff_B1.c: 72: if(DelayOff->SecondTime >= 5650)
	movf	(_DelayOff),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_DlyOff_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_DlyOff_Main+0)+0+1
	movlw	high(01612h)
	subwf	1+(??_DlyOff_Main+0)+0,w
	movlw	low(01612h)
	skipnz
	subwf	0+(??_DlyOff_Main+0)+0,w
	skipc
	goto	u9231
	goto	u9230
u9231:
	goto	l675
u9230:
	line	74
	
l9091:	
;DelayOff_B1.c: 73: {
;DelayOff_B1.c: 74: DelayOff->SecondTime=0;
	movf	(_DelayOff),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	75
	
l9093:	
;DelayOff_B1.c: 75: DelayOff->MinuteTime++;
	movlw	(01h)
	movwf	(??_DlyOff_Main+0)+0
	movf	(_DelayOff),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_DlyOff_Main+0)+0,w
	addwf	indf1,f
	line	76
	
l9095:	
;DelayOff_B1.c: 76: if(DelayOff->MinuteTime >= DelayOff->Value)
	movf	(_DelayOff),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	incf	(_DelayOff),w
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipc
	goto	u9241
	goto	u9240
u9241:
	goto	l675
u9240:
	line	78
	
l9097:	
;DelayOff_B1.c: 77: {
;DelayOff_B1.c: 78: DelayOff->MinuteTime=0;
	movf	(_DelayOff),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	79
	
l9099:	
;DelayOff_B1.c: 79: DelayOff->GO=0;
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	80
	
l9101:	
;DelayOff_B1.c: 80: setSw_Status(sw,0);
	clrf	(setSw_Status@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setSw_Status
	line	81
	
l9103:	
;DelayOff_B1.c: 81: setRFSW_Status(sw,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setRFSW_Status
	line	82
	
l9105:	
;DelayOff_B1.c: 82: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	movf	(DlyOff_Main@sw),w
	fcall	_setRF_DimmerLights
	line	83
	
l9107:	
;DelayOff_B1.c: 83: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Trigger
	line	84
	
l9109:	
;DelayOff_B1.c: 84: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Switch
	line	85
	
l9111:	
;DelayOff_B1.c: 85: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	86
	
l9113:	
;DelayOff_B1.c: 86: setBuz(1,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	goto	l675
	line	87
	
l674:	
	goto	l675
	line	88
	
l673:	
	goto	l675
	line	89
	
l672:	
	line	90
	
l675:	
	return
	opt stack 0
GLOBAL	__end_of_DlyOff_Main
	__end_of_DlyOff_Main:
	signat	_DlyOff_Main,4216
	global	_setTxData

;; *************** function _setTxData *****************
;; Defined at:
;;		line 140 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text89,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	140
global __ptext89
__ptext89:	;psect for function _setTxData
psect	text89
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	140
	global	__size_of_setTxData
	__size_of_setTxData	equ	__end_of_setTxData-_setTxData
	
_setTxData:	
;incstack = 0
	opt	stack 7
; Regs used in _setTxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setTxData@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setTxData@rf)
	line	143
	
l8315:	
;RF_Control_B1.c: 142: char i;
;RF_Control_B1.c: 143: RfPointSelect(rf);
	movf	(setTxData@rf),w
	fcall	_RfPointSelect
	line	144
	
l8317:	
;RF_Control_B1.c: 144: if(RF->Enable)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u8201
	goto	u8200
u8201:
	goto	l2519
u8200:
	line	147
	
l8319:	
;RF_Control_B1.c: 145: {
;RF_Control_B1.c: 147: if(!RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u8211
	goto	u8210
u8211:
	goto	l2519
u8210:
	line	149
	
l8321:	
;RF_Control_B1.c: 148: {
;RF_Control_B1.c: 149: RF->TransceiveGO=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	158
	
l8323:	
;RF_Control_B1.c: 158: RF_Data[0]=0x63;
	movlw	(063h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RF_Data)^080h
	line	159
	
l8325:	
;RF_Control_B1.c: 159: RF_Data[1]=0x02;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+01h
	line	160
;RF_Control_B1.c: 160: RF_Data[2]=Product->Data[2];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[02h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+02h
	line	161
;RF_Control_B1.c: 161: RF_Data[3]=Product->Data[3];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[03h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+03h
	line	162
;RF_Control_B1.c: 162: RF_Data[4]=Product->Data[4];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[04h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+04h
	line	163
;RF_Control_B1.c: 163: RF_Data[5]=Product->Data[5];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[05h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+05h
	line	164
;RF_Control_B1.c: 164: RF_Data[6]=Product->Data[6];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[06h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+06h
	line	165
;RF_Control_B1.c: 165: RF_Data[7]=Product->Data[7];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[07h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+07h
	line	166
;RF_Control_B1.c: 166: RF_Data[8]=Product->Data[8];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[08h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+08h
	line	167
;RF_Control_B1.c: 167: RF_Data[9]=Product->Data[9];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[09h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+09h
	line	168
;RF_Control_B1.c: 168: RF_Data[10]=Product->Data[10];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Ah]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Ah
	line	169
;RF_Control_B1.c: 169: RF_Data[11]=Product->Data[11];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Bh]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Bh
	line	170
;RF_Control_B1.c: 170: RF_Data[12]=Product->Data[12];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Ch]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Ch
	line	171
;RF_Control_B1.c: 171: RF_Data[13]=Product->Data[13];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Dh]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Dh
	line	172
;RF_Control_B1.c: 172: RF_Data[14]=Product->Data[14];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Eh]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Eh
	line	173
;RF_Control_B1.c: 173: RF_Data[15]=Product->Data[15];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[0Fh]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+0Fh
	line	174
;RF_Control_B1.c: 174: RF_Data[16]=Product->Data[16];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[010h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+010h
	line	175
;RF_Control_B1.c: 175: RF_Data[17]=Product->Data[17];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[011h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+011h
	line	176
;RF_Control_B1.c: 176: RF_Data[18]=Product->Data[18];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[012h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+012h
	line	177
;RF_Control_B1.c: 177: RF_Data[19]=Product->Data[19];
	movlb 0	; select bank0
	movf	(_Product),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw 1	; select bank2/3
	moviw	[013h]fsr1
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+013h
	line	178
	
l8327:	
;RF_Control_B1.c: 178: RF_Data[20]=210;
	movlw	(0D2h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+014h
	goto	l2519
	line	180
	
l2518:	
	goto	l2519
	line	182
	
l2517:	
	line	183
	
l2519:	
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
psect	text90,local,class=CODE,delta=2,merge=1
	line	7
global __ptext90
__ptext90:	;psect for function _RfPointSelect
psect	text90
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
	
l8233:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u8051
	goto	u8050
u8051:
	goto	l2480
u8050:
	line	12
	
l8235:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??_RfPointSelect+0)+0
	movf	(??_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	l2480
	line	13
	
l2479:	
	line	15
	
l2480:	
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
psect	text91,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	106
global __ptext91
__ptext91:	;psect for function _setSw_Status
psect	text91
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
	
l8281:	
;Switch_B1.c: 108: SwPointSelect(sw);
	movf	(setSw_Status@sw),w
	fcall	_SwPointSelect
	line	109
	
l8283:	
;Switch_B1.c: 109: Sw->Status=command;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setSw_Status@command),w
	bcf	indf1,6
	skipz
	bsf	indf1,6
	line	110
	
l2777:	
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
psect	text92,local,class=CODE,delta=2,merge=1
	line	16
global __ptext92
__ptext92:	;psect for function _SwPointSelect
psect	text92
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
	
l8243:	
;Switch_B1.c: 19: if(sw == 1)
	movf	(SwPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u8081
	goto	u8080
u8081:
	goto	l8247
u8080:
	line	21
	
l8245:	
;Switch_B1.c: 20: {
;Switch_B1.c: 21: Sw=&Sw1;
	movlw	(_Sw1)&0ffh
	movwf	(??_SwPointSelect+0)+0
	movf	(??_SwPointSelect+0)+0,w
	movwf	(_Sw)
	line	22
;Switch_B1.c: 22: }
	goto	l2762
	line	25
	
l2759:	
	
l8247:	
;Switch_B1.c: 25: else if(sw == 2)
	movf	(SwPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u8091
	goto	u8090
u8091:
	goto	l2762
u8090:
	line	27
	
l8249:	
;Switch_B1.c: 26: {
;Switch_B1.c: 27: Sw=&Sw2;
	movlw	(_Sw2)&0ffh
	movwf	(??_SwPointSelect+0)+0
	movf	(??_SwPointSelect+0)+0,w
	movwf	(_Sw)
	goto	l2762
	line	28
	
l2761:	
	goto	l2762
	line	36
	
l2760:	
	
l2762:	
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
psect	text93,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	445
global __ptext93
__ptext93:	;psect for function _setRF_DimmerLights
psect	text93
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
	
l8289:	
;RF_Control_B1.c: 447: char status;
;RF_Control_B1.c: 448: status=1;
	clrf	(setRF_DimmerLights@status)
	incf	(setRF_DimmerLights@status),f
	line	449
	
l8291:	
;RF_Control_B1.c: 449: status<<=(lights-1);
	movf	(setRF_DimmerLights@lights),w
	addlw	-1
	incf	wreg,f
	
	goto	u8180
u8185:
	clrc
	rlf	(setRF_DimmerLights@status),f
u8180:
	addlw	-1
	skipz
	goto	u8185
	line	450
	
l8293:	
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
	
l8295:	
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
	
l8297:	
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
	
l8299:	
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
	
l8301:	
;RF_Control_B1.c: 458: if(on)
	movf	(setRF_DimmerLights@on),w
	skipz
	goto	u8190
	goto	l8305
u8190:
	line	460
	
l8303:	
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
	goto	l2588
	line	462
	
l2586:	
	line	464
	
l8305:	
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
	goto	l2588
	line	465
	
l2587:	
	line	466
	
l2588:	
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
psect	text94,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	505
global __ptext94
__ptext94:	;psect for function _setPercentValue
psect	text94
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
	
l8213:	
;Dimmer_B1.c: 508: float i=((char)((100-20)*1.5))-((char)((100-55)*1.5));
	movlw	0x0
	movwf	(setPercentValue@i)
	movlw	0x54
	movwf	(setPercentValue@i+1)
	movlw	0x42
	movwf	(setPercentValue@i+2)
	line	509
	
l8215:	
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
	
l8217:	
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
	goto	l949
	
l8219:	
	line	518
	
l949:	
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
psect	text95,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
global __ptext95
__ptext95:	;psect for function ___fttol
psect	text95
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l8113:	
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
	goto	u7821
	goto	u7820
u7821:
	goto	l8119
u7820:
	line	50
	
l8115:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3308
	
l8117:	
	goto	l3308
	
l3307:	
	line	51
	
l8119:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u7835:
	lsrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u7830:
	decfsz	wreg,f
	goto	u7835
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l8121:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l8123:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l8125:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l8127:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l8129:	
	btfss	(___fttol@exp1),7
	goto	u7841
	goto	u7840
u7841:
	goto	l8139
u7840:
	line	57
	
l8131:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u7851
	goto	u7850
u7851:
	goto	l8137
u7850:
	line	58
	
l8133:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3308
	
l8135:	
	goto	l3308
	
l3310:	
	goto	l8137
	line	59
	
l3311:	
	line	60
	
l8137:	
	movlw	01h
u7865:
	lsrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	decfsz	wreg,f
	goto	u7865

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u7871
	goto	u7870
u7871:
	goto	l8137
u7870:
	goto	l8149
	
l3312:	
	line	62
	goto	l8149
	
l3309:	
	line	63
	
l8139:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u7881
	goto	u7880
u7881:
	goto	l8147
u7880:
	line	64
	
l8141:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3308
	
l8143:	
	goto	l3308
	
l3314:	
	line	65
	goto	l8147
	
l3316:	
	line	66
	
l8145:	
	movlw	01h
u7895:
	lslf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	wreg,f
	goto	u7895
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l8147
	line	68
	
l3315:	
	line	65
	
l8147:	
	movf	(___fttol@exp1),f
	skipz
	goto	u7901
	goto	u7900
u7901:
	goto	l8145
u7900:
	goto	l8149
	
l3317:	
	goto	l8149
	line	69
	
l3313:	
	line	70
	
l8149:	
	movf	(___fttol@sign1),w
	skipz
	goto	u7910
	goto	l8153
u7910:
	line	71
	
l8151:	
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
	goto	l8153
	
l3318:	
	line	72
	
l8153:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l3308
	
l8155:	
	line	73
	
l3308:	
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
psect	text96,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\ftdiv.c"
	line	49
global __ptext96
__ptext96:	;psect for function ___ftdiv
psect	text96
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l8021:	
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
	goto	u7621
	goto	u7620
u7621:
	goto	l8027
u7620:
	line	56
	
l8023:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l3273
	
l8025:	
	goto	l3273
	
l3272:	
	line	57
	
l8027:	
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
	goto	u7631
	goto	u7630
u7631:
	goto	l8033
u7630:
	line	58
	
l8029:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l3273
	
l8031:	
	goto	l3273
	
l3274:	
	line	59
	
l8033:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l8035:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l8037:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u7645:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u7640:
	decfsz	wreg,f
	goto	u7645
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l8039:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u7655:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u7650:
	decfsz	wreg,f
	goto	u7655
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l8041:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l8043:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l8045:	
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
	goto	l8047
	line	69
	
l3275:	
	line	70
	
l8047:	
	movlw	01h
u7665:
	lslf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	decfsz	wreg,f
	goto	u7665
	line	71
	
l8049:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u7675
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u7675
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u7675:
	skipc
	goto	u7671
	goto	u7670
u7671:
	goto	l8055
u7670:
	line	72
	
l8051:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	subwfb	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	subwfb	(___ftdiv@f1+2),f
	line	73
	
l8053:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l8055
	line	74
	
l3276:	
	line	75
	
l8055:	
	movlw	01h
u7685:
	lslf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	decfsz	wreg,f
	goto	u7685
	line	76
	
l8057:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u7691
	goto	u7690
u7691:
	goto	l8047
u7690:
	goto	l8059
	
l3277:	
	line	77
	
l8059:	
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
	goto	l3273
	
l8061:	
	line	78
	
l3273:	
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
psect	text97,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
	line	32
global __ptext97
__ptext97:	;psect for function ___awtoft
psect	text97
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l7937:	
	movlb 0	; select bank0
	clrf	(___awtoft@sign)
	line	37
	
l7939:	
	btfss	(___awtoft@c+1),7
	goto	u7381
	goto	u7380
u7381:
	goto	l7945
u7380:
	line	38
	
l7941:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l7943:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l7945
	line	40
	
l3216:	
	line	41
	
l7945:	
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
	goto	l3217
	
l7947:	
	line	42
	
l3217:	
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
psect	text98,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
global __ptext98
__ptext98:	;psect for function ___ftpack
psect	text98
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l7907:	
	movlb 0	; select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u7270
	goto	l7911
u7270:
	
l7909:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u7281
	goto	u7280
u7281:
	goto	l7917
u7280:
	goto	l7911
	
l3222:	
	line	65
	
l7911:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l3223
	
l7913:	
	goto	l3223
	
l3220:	
	line	66
	goto	l7917
	
l3225:	
	line	67
	
l7915:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u7295:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u7295

	goto	l7917
	line	69
	
l3224:	
	line	66
	
l7917:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u7301
	goto	u7300
u7301:
	goto	l7915
u7300:
	goto	l3227
	
l3226:	
	line	70
	goto	l3227
	
l3228:	
	line	71
	
l7919:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l7921:	
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
	
l7923:	
	movlw	01h
u7315:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u7315

	line	74
	
l3227:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u7321
	goto	u7320
u7321:
	goto	l7919
u7320:
	goto	l7927
	
l3229:	
	line	75
	goto	l7927
	
l3231:	
	line	76
	
l7925:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u7335:
	lslf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	decfsz	wreg,f
	goto	u7335
	goto	l7927
	line	78
	
l3230:	
	line	75
	
l7927:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u7341
	goto	u7340
u7341:
	goto	l7925
u7340:
	
l3232:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u7351
	goto	u7350
u7351:
	goto	l3233
u7350:
	line	80
	
l7929:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l3233:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l7931:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u7365:
	lslf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u7360:
	decfsz	wreg,f
	goto	u7365
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l7933:	
	movf	(___ftpack@sign),w
	skipz
	goto	u7370
	goto	l3234
u7370:
	line	84
	
l7935:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3234:	
	line	85
	line	86
	
l3223:	
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
psect	text99,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	425
global __ptext99
__ptext99:	;psect for function _setRFSW_Status
psect	text99
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
	
l8285:	
;RF_Control_B1.c: 427: RfSWPointSelect(sw);
	movf	(setRFSW_Status@sw),w
	fcall	_RfSWPointSelect
	line	428
	
l8287:	
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
	
l2579:	
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
psect	text100,local,class=CODE,delta=2,merge=1
	line	347
global __ptext100
__ptext100:	;psect for function _RfSWPointSelect
psect	text100
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
	
l8237:	
;RF_Control_B1.c: 350: if(sw == 1)
	movf	(RfSWPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u8061
	goto	u8060
u8061:
	goto	l2561
u8060:
	line	352
	
l8239:	
;RF_Control_B1.c: 351: {
;RF_Control_B1.c: 352: RFSW=&RFSW1;
	movlw	(_RFSW1)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	line	353
	
l2561:	
	line	356
;RF_Control_B1.c: 353: }
;RF_Control_B1.c: 356: if(sw == 2)
	movlb 0	; select bank0
	movf	(RfSWPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u8071
	goto	u8070
u8071:
	goto	l2563
u8070:
	line	358
	
l8241:	
;RF_Control_B1.c: 357: {
;RF_Control_B1.c: 358: RFSW=&RFSW2;
	movlw	(_RFSW2)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	goto	l2563
	line	359
	
l2562:	
	line	367
	
l2563:	
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
psect	text101,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	445
global __ptext101
__ptext101:	;psect for function _setDimmerLights_Trigger
psect	text101
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
	
l8307:	
;Dimmer_B1.c: 447: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Trigger@lights),w
	fcall	_DimmerLightsPointSelect
	line	448
	
l8309:	
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
	
l937:	
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
psect	text102,local,class=CODE,delta=2,merge=1
	line	435
global __ptext102
__ptext102:	;psect for function _setDimmerLights_Switch
psect	text102
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
	
l8311:	
;Dimmer_B1.c: 437: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Switch@lights),w
	fcall	_DimmerLightsPointSelect
	line	438
	
l8313:	
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
	
l931:	
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
;;		_setDimmerLights_GO
;;		_setDimmerLights_MaxmumValue
;;		_setDimmerLights_Clear
;; This function uses a non-reentrant model
;;
psect	text103,local,class=CODE,delta=2,merge=1
	line	7
global __ptext103
__ptext103:	;psect for function _DimmerLightsPointSelect
psect	text103
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
	
l8157:	
;Dimmer_B1.c: 10: if(lights == 1)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u7921
	goto	u7920
u7921:
	goto	l847
u7920:
	line	12
	
l8159:	
;Dimmer_B1.c: 11: {
;Dimmer_B1.c: 12: DimmerLights=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	line	13
	
l847:	
	line	20
;Dimmer_B1.c: 13: }
;Dimmer_B1.c: 20: if(lights == 2)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u7931
	goto	u7930
u7931:
	goto	l849
u7930:
	line	22
	
l8161:	
;Dimmer_B1.c: 21: {
;Dimmer_B1.c: 22: DimmerLights=&DimmerLights2;
	movlw	(_DimmerLights2)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	goto	l849
	line	23
	
l848:	
	line	38
	
l849:	
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
psect	text104,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	22
global __ptext104
__ptext104:	;psect for function _setBuz
psect	text104
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
	
l8263:	
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
	
l8265:	
;Buzzer_B1.c: 25: if(Buz->Enable)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u8141
	goto	u8140
u8141:
	goto	l131
u8140:
	line	27
	
l8267:	
;Buzzer_B1.c: 26: {
;Buzzer_B1.c: 27: if(!Buz->GO)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u8151
	goto	u8150
u8151:
	goto	l8273
u8150:
	line	29
	
l8269:	
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
	
l8271:	
;Buzzer_B1.c: 33: RB3=1;
	bsf	(107/8),(107)&7	;volatile
	line	34
;Buzzer_B1.c: 34: }
	goto	l131
	line	35
	
l126:	
	line	37
	
l8273:	
;Buzzer_B1.c: 35: else
;Buzzer_B1.c: 36: {
;Buzzer_B1.c: 37: if(!Buz->BufferStatus1)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u8161
	goto	u8160
u8161:
	goto	l8277
u8160:
	line	39
	
l8275:	
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
	goto	l131
	line	43
	
l128:	
	
l8277:	
;Buzzer_B1.c: 43: else if(!Buz->BufferStatus2)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u8171
	goto	u8170
u8171:
	goto	l131
u8170:
	line	45
	
l8279:	
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
	goto	l131
	line	48
	
l130:	
	goto	l131
	line	49
	
l129:	
	goto	l131
	
l127:	
	goto	l131
	line	50
	
l125:	
	line	51
	
l131:	
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
;; This function uses a non-reentrant model
;;
psect	text105,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul16.c"
	line	15
global __ptext105
__ptext105:	;psect for function ___wmul
psect	text105
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l8251:	
	movlb 0	; select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l8253
	line	44
	
l3065:	
	line	45
	
l8253:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u8101
	goto	u8100
u8101:
	goto	l3066
u8100:
	line	46
	
l8255:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	
l3066:	
	line	47
	movlw	01h
	
u8115:
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	decfsz	wreg,f
	goto	u8115
	line	48
	
l8257:	
	movlw	01h
	
u8125:
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	decfsz	wreg,f
	goto	u8125
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u8131
	goto	u8130
u8131:
	goto	l8253
u8130:
	goto	l8259
	
l3067:	
	line	52
	
l8259:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l3068
	
l8261:	
	line	53
	
l3068:	
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
psect	text106,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	30
global __ptext106
__ptext106:	;psect for function _DelayOff_Initialization
psect	text106
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	30
	global	__size_of_DelayOff_Initialization
	__size_of_DelayOff_Initialization	equ	__end_of_DelayOff_Initialization-_DelayOff_Initialization
	
_DelayOff_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _DelayOff_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	33
	
l9613:	
;DelayOff_B1.c: 33: DlyOff_Initialization(1);
	movlw	(01h)
	fcall	_DlyOff_Initialization
	line	37
;DelayOff_B1.c: 37: DlyOff_Initialization(2);
	movlw	(02h)
	fcall	_DlyOff_Initialization
	line	43
	
l663:	
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
psect	text107,local,class=CODE,delta=2,merge=1
	line	60
global __ptext107
__ptext107:	;psect for function _DlyOff_Initialization
psect	text107
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
	
l9079:	
;DelayOff_B1.c: 62: DelayOffPointSelect(sw);
	movf	(DlyOff_Initialization@sw),w
	fcall	_DelayOffPointSelect
	line	63
	
l9081:	
;DelayOff_B1.c: 63: DelayOff->Enable=1;
	movlb 0	; select bank0
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	64
	
l669:	
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
psect	text108,local,class=CODE,delta=2,merge=1
	line	8
global __ptext108
__ptext108:	;psect for function _DelayOffPointSelect
psect	text108
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
	
l8171:	
;DelayOff_B1.c: 11: if(sw == 1)
	movf	(DelayOffPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u7941
	goto	u7940
u7941:
	goto	l8175
u7940:
	line	13
	
l8173:	
;DelayOff_B1.c: 12: {
;DelayOff_B1.c: 13: DelayOff=&DlySw1;
	movlw	(_DlySw1)&0ffh
	movwf	(??_DelayOffPointSelect+0)+0
	movf	(??_DelayOffPointSelect+0)+0,w
	movwf	(_DelayOff)
	line	14
;DelayOff_B1.c: 14: }
	goto	l660
	line	17
	
l657:	
	
l8175:	
;DelayOff_B1.c: 17: else if(sw == 2)
	movf	(DelayOffPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u7951
	goto	u7950
u7951:
	goto	l660
u7950:
	line	19
	
l8177:	
;DelayOff_B1.c: 18: {
;DelayOff_B1.c: 19: DelayOff=&DlySw2;
	movlw	(_DlySw2)&0ffh
	movwf	(??_DelayOffPointSelect+0)+0
	movf	(??_DelayOffPointSelect+0)+0,w
	movwf	(_DelayOff)
	goto	l660
	line	20
	
l659:	
	goto	l660
	line	28
	
l658:	
	
l660:	
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
psect	text109,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	97
global __ptext109
__ptext109:	;psect for function _CC2500_PowerOnInitial
psect	text109
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	97
	global	__size_of_CC2500_PowerOnInitial
	__size_of_CC2500_PowerOnInitial	equ	__end_of_CC2500_PowerOnInitial-_CC2500_PowerOnInitial
	
_CC2500_PowerOnInitial:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_PowerOnInitial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	99
	
l9607:	
;CC2500_B1.c: 99: CC2500_PowerRST();
	fcall	_CC2500_PowerRST
	line	100
	
l9609:	
;CC2500_B1.c: 100: CC2500_InitSetREG();
	fcall	_CC2500_InitSetREG
	line	101
	
l9611:	
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
	
l329:	
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
psect	text110,local,class=CODE,delta=2,merge=1
	line	183
global __ptext110
__ptext110:	;psect for function _CC2500_SIDLEMode
psect	text110
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	183
	global	__size_of_CC2500_SIDLEMode
	__size_of_CC2500_SIDLEMode	equ	__end_of_CC2500_SIDLEMode-_CC2500_SIDLEMode
	
_CC2500_SIDLEMode:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_SIDLEMode: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l9077:	
;CC2500_B1.c: 185: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	186
	
l360:	
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
psect	text111,local,class=CODE,delta=2,merge=1
	line	110
global __ptext111
__ptext111:	;psect for function _CC2500_PowerRST
psect	text111
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	110
	global	__size_of_CC2500_PowerRST
	__size_of_CC2500_PowerRST	equ	__end_of_CC2500_PowerRST-_CC2500_PowerRST
	
_CC2500_PowerRST:	
;incstack = 0
	opt	stack 9
; Regs used in _CC2500_PowerRST: [wreg+status,2+status,0+pclath+cstack]
	line	112
	
l9029:	
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
	
l9031:	
;CC2500_B1.c: 115: DelayTime_1us(10);
	movlw	low(0Ah)
	movwf	(DelayTime_1us@count)
	movlw	high(0Ah)
	movwf	((DelayTime_1us@count))+1
	fcall	_DelayTime_1us
	line	116
	
l9033:	
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
	
l9035:	
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
	
l9037:	
;CC2500_B1.c: 120: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	121
	
l9039:	
;CC2500_B1.c: 121: SPI0Buffer=0x30;
	movlw	(030h)
	movwf	(??_CC2500_PowerRST+0)+0
	movf	(??_CC2500_PowerRST+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	122
;CC2500_B1.c: 122: while(RC2==1);
	goto	l332
	
l333:	
	
l332:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u9161
	goto	u9160
u9161:
	goto	l332
u9160:
	goto	l9041
	
l334:	
	line	123
	
l9041:	
;CC2500_B1.c: 123: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	124
;CC2500_B1.c: 124: while(RC2==1);
	goto	l335
	
l336:	
	
l335:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u9171
	goto	u9170
u9171:
	goto	l335
u9170:
	
l337:	
	line	125
;CC2500_B1.c: 125: RC0=0;
	bcf	(112/8),(112)&7	;volatile
	line	126
;CC2500_B1.c: 126: RC4=1;
	bsf	(116/8),(116)&7	;volatile
	line	127
	
l338:	
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
psect	text112,local,class=CODE,delta=2,merge=1
	line	131
global __ptext112
__ptext112:	;psect for function _CC2500_InitSetREG
psect	text112
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	131
	global	__size_of_CC2500_InitSetREG
	__size_of_CC2500_InitSetREG	equ	__end_of_CC2500_InitSetREG-_CC2500_InitSetREG
	
_CC2500_InitSetREG:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_InitSetREG: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	136
	
l9043:	
;CC2500_B1.c: 133: unsigned char loop_c;
;CC2500_B1.c: 134: unsigned char temp1,temp2;
;CC2500_B1.c: 136: for(loop_c=0;loop_c<47;loop_c++)
	movlb 0	; select bank0
	clrf	(CC2500_InitSetREG@loop_c)
	
l9045:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u9181
	goto	u9180
u9181:
	goto	l9049
u9180:
	goto	l343
	
l9047:	
	goto	l343
	line	137
	
l341:	
	line	138
	
l9049:	
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
	
l9051:	
;CC2500_B1.c: 141: CC2500_WriteREG(temp1,temp2);
	movf	(CC2500_InitSetREG@temp2),w
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(CC2500_WriteREG@value)
	movf	(CC2500_InitSetREG@temp1),w
	fcall	_CC2500_WriteREG
	line	136
	
l9053:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	addwf	(CC2500_InitSetREG@loop_c),f
	
l9055:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u9191
	goto	u9190
u9191:
	goto	l9049
u9190:
	goto	l343
	
l342:	
	line	143
	
l343:	
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
psect	text113,local,class=CODE,delta=2,merge=1
	line	147
global __ptext113
__ptext113:	;psect for function _CC2500_InitPATable
psect	text113
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	147
	global	__size_of_CC2500_InitPATable
	__size_of_CC2500_InitPATable	equ	__end_of_CC2500_InitPATable-_CC2500_InitPATable
	
_CC2500_InitPATable:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_InitPATable: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	152
	
l9057:	
;CC2500_B1.c: 149: unsigned char loop_d;
;CC2500_B1.c: 150: unsigned char temp;
;CC2500_B1.c: 152: for(loop_d=0;loop_d<8;loop_d++)
	movlb 0	; select bank0
	clrf	(CC2500_InitPATable@loop_d)
	
l9059:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u9201
	goto	u9200
u9201:
	goto	l9063
u9200:
	goto	l348
	
l9061:	
	goto	l348
	line	153
	
l346:	
	line	154
	
l9063:	
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
	
l9065:	
;CC2500_B1.c: 155: CC2500_WriteREG(0x3E,temp);
	movf	(CC2500_InitPATable@temp),w
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(CC2500_WriteREG@value)
	movlw	(03Eh)
	fcall	_CC2500_WriteREG
	line	152
	
l9067:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	addwf	(CC2500_InitPATable@loop_d),f
	
l9069:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u9211
	goto	u9210
u9211:
	goto	l9063
u9210:
	goto	l348
	
l347:	
	line	157
	
l348:	
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
psect	text114,local,class=CODE,delta=2,merge=1
	line	227
global __ptext114
__ptext114:	;psect for function _CC2500_WriteREG
psect	text114
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
	
l8779:	
;CC2500_B1.c: 229: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	230
	
l8781:	
;CC2500_B1.c: 230: SPI0Buffer=w_addr;
	movf	(CC2500_WriteREG@w_addr),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	231
;CC2500_B1.c: 231: while(RC2==1);
	goto	l377
	
l378:	
	
l377:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u8861
	goto	u8860
u8861:
	goto	l377
u8860:
	goto	l8783
	
l379:	
	line	232
	
l8783:	
;CC2500_B1.c: 232: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	233
	
l8785:	
;CC2500_B1.c: 233: SPI0Buffer=value;
	movlb 0	; select bank0
	movf	(CC2500_WriteREG@value),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	234
	
l8787:	
;CC2500_B1.c: 234: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	235
	
l8789:	
;CC2500_B1.c: 235: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	236
	
l380:	
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
psect	text115,local,class=CODE,delta=2,merge=1
	line	175
global __ptext115
__ptext115:	;psect for function _CC2500_FrequencyCabr
psect	text115
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	175
	global	__size_of_CC2500_FrequencyCabr
	__size_of_CC2500_FrequencyCabr	equ	__end_of_CC2500_FrequencyCabr-_CC2500_FrequencyCabr
	
_CC2500_FrequencyCabr:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_FrequencyCabr: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
l9075:	
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
	
l357:	
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
psect	text116,local,class=CODE,delta=2,merge=1
	line	283
global __ptext116
__ptext116:	;psect for function _DelayTime_1us
psect	text116
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	283
	global	__size_of_DelayTime_1us
	__size_of_DelayTime_1us	equ	__end_of_DelayTime_1us-_DelayTime_1us
	
_DelayTime_1us:	
;incstack = 0
	opt	stack 9
; Regs used in _DelayTime_1us: [wreg+status,2]
	line	286
	
l8767:	
;CC2500_B1.c: 285: unsigned int i,j;
;CC2500_B1.c: 286: for(i=1;i<count;i++)
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(DelayTime_1us@i)
	movlw	high(01h)
	movwf	((DelayTime_1us@i))+1
	goto	l401
	line	287
	
l402:	
	
l8769:	
;CC2500_B1.c: 287: for(j=0;j<=1;j++);
	clrf	(DelayTime_1us@j)
	clrf	(DelayTime_1us@j+1)
	
l8771:	
	movlw	high(02h)
	subwf	(DelayTime_1us@j+1),w
	movlw	low(02h)
	skipnz
	subwf	(DelayTime_1us@j),w
	skipc
	goto	u8831
	goto	u8830
u8831:
	goto	l8775
u8830:
	goto	l8777
	
l8773:	
	goto	l8777
	
l403:	
	
l8775:	
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
	goto	u8841
	goto	u8840
u8841:
	goto	l8775
u8840:
	goto	l8777
	
l404:	
	line	286
	
l8777:	
	movlw	low(01h)
	addwf	(DelayTime_1us@i),f
	movlw	high(01h)
	addwfc	(DelayTime_1us@i+1),f
	
l401:	
	movf	(DelayTime_1us@count+1),w
	subwf	(DelayTime_1us@i+1),w
	skipz
	goto	u8855
	movf	(DelayTime_1us@count),w
	subwf	(DelayTime_1us@i),w
u8855:
	skipc
	goto	u8851
	goto	u8850
u8851:
	goto	l8769
u8850:
	goto	l406
	
l405:	
	line	288
	
l406:	
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
psect	text117,local,class=CODE,delta=2,merge=1
	line	161
global __ptext117
__ptext117:	;psect for function _CC2500_ClearTXFIFO
psect	text117
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	161
	global	__size_of_CC2500_ClearTXFIFO
	__size_of_CC2500_ClearTXFIFO	equ	__end_of_CC2500_ClearTXFIFO-_CC2500_ClearTXFIFO
	
_CC2500_ClearTXFIFO:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_ClearTXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	163
	
l9071:	
;CC2500_B1.c: 163: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	164
	
l351:	
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
psect	text118,local,class=CODE,delta=2,merge=1
	line	168
global __ptext118
__ptext118:	;psect for function _CC2500_ClearRXFIFO
psect	text118
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	168
	global	__size_of_CC2500_ClearRXFIFO
	__size_of_CC2500_ClearRXFIFO	equ	__end_of_CC2500_ClearRXFIFO-_CC2500_ClearRXFIFO
	
_CC2500_ClearRXFIFO:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_ClearRXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	170
	
l9073:	
;CC2500_B1.c: 170: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	171
	
l354:	
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
psect	text119,local,class=CODE,delta=2,merge=1
	line	253
global __ptext119
__ptext119:	;psect for function _CC2500_WriteCommand
psect	text119
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
	
l8565:	
;CC2500_B1.c: 255: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	256
	
l8567:	
;CC2500_B1.c: 256: SPI0Buffer=command;
	movf	(CC2500_WriteCommand@command),w
	movwf	(??_CC2500_WriteCommand+0)+0
	movf	(??_CC2500_WriteCommand+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	258
;CC2500_B1.c: 258: while(RC2==1);
	goto	l389
	
l390:	
	
l389:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u8591
	goto	u8590
u8591:
	goto	l389
u8590:
	goto	l8569
	
l391:	
	line	260
	
l8569:	
;CC2500_B1.c: 260: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	261
	
l8571:	
;CC2500_B1.c: 261: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	263
	
l392:	
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
psect	text120,local,class=CODE,delta=2,merge=1
	line	193
global __ptext120
__ptext120:	;psect for function _CC2500_WriteByte
psect	text120
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	193
	global	__size_of_CC2500_WriteByte
	__size_of_CC2500_WriteByte	equ	__end_of_CC2500_WriteByte-_CC2500_WriteByte
	
_CC2500_WriteByte:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_WriteByte: [wreg+status,2+status,0]
	line	196
	
l8419:	
;CC2500_B1.c: 195: unsigned char loop_a;
;CC2500_B1.c: 196: for(loop_a=0;loop_a<8;loop_a++)
	movlb 0	; select bank0
	clrf	(CC2500_WriteByte@loop_a)
	
l8421:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u8421
	goto	u8420
u8421:
	goto	l363
u8420:
	goto	l367
	
l8423:	
	goto	l367
	line	197
	
l363:	
	line	198
;CC2500_B1.c: 197: {
;CC2500_B1.c: 198: if(SPI0Buffer&0x80)
	movlb 1	; select bank1
	btfss	(_SPI0Buffer)^080h,(7)&7
	goto	u8431
	goto	u8430
u8431:
	goto	l365
u8430:
	line	199
	
l8425:	
;CC2500_B1.c: 199: RC0=1;
	movlb 0	; select bank0
	bsf	(112/8),(112)&7	;volatile
	goto	l366
	line	200
	
l365:	
	line	201
;CC2500_B1.c: 200: else
;CC2500_B1.c: 201: RC0=0;
	movlb 0	; select bank0
	bcf	(112/8),(112)&7	;volatile
	
l366:	
	line	202
;CC2500_B1.c: 202: RC1=1;
	bsf	(113/8),(113)&7	;volatile
	line	203
	
l8427:	
;CC2500_B1.c: 203: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	204
	
l8429:	
;CC2500_B1.c: 204: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
	line	196
	
l8431:	
	movlw	(01h)
	movwf	(??_CC2500_WriteByte+0)+0
	movf	(??_CC2500_WriteByte+0)+0,w
	addwf	(CC2500_WriteByte@loop_a),f
	
l8433:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u8441
	goto	u8440
u8441:
	goto	l363
u8440:
	goto	l367
	
l364:	
	line	206
	
l367:	
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
psect	text121,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	53
global __ptext121
__ptext121:	;psect for function _Buzzer_Main
psect	text121
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	53
	global	__size_of_Buzzer_Main
	__size_of_Buzzer_Main	equ	__end_of_Buzzer_Main-_Buzzer_Main
	
_Buzzer_Main:	
;incstack = 0
	opt	stack 11
; Regs used in _Buzzer_Main: [wreg-fsr1h+status,2+status,0]
	line	55
	
l9575:	
;Buzzer_B1.c: 55: Buz->Switch=(RB3)?1:0;
	movlb 0	; select bank0
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	btfss	(107/8),(107)&7	;volatile
	goto	u10015
	bsf	indf1,5
u10015:

	line	57
;Buzzer_B1.c: 57: if(Buz->GO)
	movlb 0	; select bank0
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u10021
	goto	u10020
u10021:
	goto	l144
u10020:
	line	60
	
l9577:	
;Buzzer_B1.c: 58: {
;Buzzer_B1.c: 60: if(Buz->Time >= Buz->TimeValue)
	movf	(_Buz),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
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
	goto	u10035
	movf	0+(??_Buzzer_Main+0)+0,w
	subwf	0+(??_Buzzer_Main+2)+0,w
u10035:
	skipc
	goto	u10031
	goto	u10030
u10031:
	goto	l144
u10030:
	line	62
	
l9579:	
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
	goto	u10041
	goto	u10040
u10041:
	goto	l9601
u10040:
	line	65
	
l9581:	
;Buzzer_B1.c: 64: {
;Buzzer_B1.c: 65: if(Buz->Count == 0)
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u10051
	goto	u10050
u10051:
	goto	l9597
u10050:
	line	67
	
l9583:	
;Buzzer_B1.c: 66: {
;Buzzer_B1.c: 67: if(Buz->BufferStatus1)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u10061
	goto	u10060
u10061:
	goto	l9589
u10060:
	line	69
	
l9585:	
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
	
l9587:	
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
	goto	l144
	line	73
	
l138:	
	
l9589:	
;Buzzer_B1.c: 73: else if(Buz->BufferStatus2)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u10071
	goto	u10070
u10071:
	goto	l9595
u10070:
	line	75
	
l9591:	
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
	
l9593:	
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
	goto	l144
	line	79
	
l140:	
	line	81
	
l9595:	
;Buzzer_B1.c: 79: else
;Buzzer_B1.c: 80: {
;Buzzer_B1.c: 81: Buz->GO=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l144
	line	82
	
l141:	
	goto	l144
	
l139:	
	line	83
;Buzzer_B1.c: 82: }
;Buzzer_B1.c: 83: }
	goto	l144
	line	84
	
l137:	
	line	86
	
l9597:	
;Buzzer_B1.c: 84: else
;Buzzer_B1.c: 85: {
;Buzzer_B1.c: 86: Buz->Switch=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	88
	
l9599:	
;Buzzer_B1.c: 88: RB3=1;
	bsf	(107/8),(107)&7	;volatile
	goto	l144
	line	89
	
l142:	
	line	90
;Buzzer_B1.c: 89: }
;Buzzer_B1.c: 90: }
	goto	l144
	line	91
	
l136:	
	line	93
	
l9601:	
;Buzzer_B1.c: 91: else
;Buzzer_B1.c: 92: {
;Buzzer_B1.c: 93: Buz->Switch=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	95
	
l9603:	
;Buzzer_B1.c: 95: RB3=0;
	bcf	(107/8),(107)&7	;volatile
	line	97
	
l9605:	
;Buzzer_B1.c: 97: Buz->Count--;
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	l144
	line	98
	
l143:	
	goto	l144
	line	99
	
l135:	
	goto	l144
	line	100
	
l134:	
	line	101
	
l144:	
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
psect	text122,local,class=CODE,delta=2,merge=1
	line	10
global __ptext122
__ptext122:	;psect for function _Buzzer_Initialization
psect	text122
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	10
	global	__size_of_Buzzer_Initialization
	__size_of_Buzzer_Initialization	equ	__end_of_Buzzer_Initialization-_Buzzer_Initialization
	
_Buzzer_Initialization:	
;incstack = 0
	opt	stack 11
; Regs used in _Buzzer_Initialization: [wregfsr1]
	line	12
	
l9571:	
;Buzzer_B1.c: 12: Buz=&Buz1;
	movlw	(_Buz1)&0ffh
	movlb 0	; select bank0
	movwf	(??_Buzzer_Initialization+0)+0
	movf	(??_Buzzer_Initialization+0)+0,w
	movwf	(_Buz)
	line	13
	
l9573:	
;Buzzer_B1.c: 13: Buz->Enable=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	14
	
l119:	
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
	line	97
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
	line	99
	
i1l7879:	
;MCU_B1.c: 99: IOC_ISR();
	fcall	_IOC_ISR
	line	101
	
i1l7881:	
;MCU_B1.c: 101: TMR0_ISR();
	fcall	_TMR0_ISR
	line	107
	
i1l7883:	
;MCU_B1.c: 103: ;;
;MCU_B1.c: 107: INT_ISR();
	fcall	_INT_ISR
	line	110
	
i1l1585:	
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
;;		line 123 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text124,local,class=CODE,delta=2,merge=1
	line	123
global __ptext124
__ptext124:	;psect for function _TMR0_ISR
psect	text124
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	123
	global	__size_of_TMR0_ISR
	__size_of_TMR0_ISR	equ	__end_of_TMR0_ISR-_TMR0_ISR
	
_TMR0_ISR:	
;incstack = 0
	opt	stack 4
; Regs used in _TMR0_ISR: [wreg-fsr1h+status,2+status,0]
	line	125
	
i1l7603:	
;MCU_B1.c: 125: if(TMR0IE && TMR0IF)
	btfss	(93/8),(93)&7	;volatile
	goto	u672_21
	goto	u672_20
u672_21:
	goto	i1l1648
u672_20:
	
i1l7605:	
	btfss	(90/8),(90)&7	;volatile
	goto	u673_21
	goto	u673_20
u673_21:
	goto	i1l1648
u673_20:
	line	127
	
i1l7607:	
;MCU_B1.c: 126: {
;MCU_B1.c: 127: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	128
	
i1l7609:	
;MCU_B1.c: 128: TMR0IF=0;
	bcf	(90/8),(90)&7	;volatile
	line	133
	
i1l7611:	
;MCU_B1.c: 133: if(DimmerLights11->GO) { DimmerLights11->Count++; if(DimmerLights11->Count >= (DimmerLights11->DimmingValue-Dimmer->Correction)) { DimmerLights11->Count=0; DimmerLights11->GO=0; DimmerLights11->Flag=1; if(DimmerLights11->StatusFlag) { RA7=1; ;; } } }
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u674_21
	goto	u674_20
u674_21:
	goto	i1l7625
u674_20:
	
i1l7613:	
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
	movlb 0	; select bank0
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
	goto	u675_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u675_25:

	skipc
	goto	u675_21
	goto	u675_20
u675_21:
	goto	i1l7689
u675_20:
	
i1l7615:	
	movlb 0	; select bank0
	movf	(_DimmerLights11),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l7617:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	
i1l7619:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
i1l7621:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u676_21
	goto	u676_20
u676_21:
	goto	i1l7689
u676_20:
	
i1l7623:	
	bsf	(103/8),(103)&7	;volatile
	goto	i1l7689
	
i1l1594:	
	goto	i1l7689
	
i1l1593:	
	goto	i1l7689
	
i1l1592:	
	
i1l7625:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u677_21
	goto	u677_20
u677_21:
	goto	i1l7681
u677_20:
	
i1l7627:	
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
	goto	u678_21
	goto	u678_20
u678_21:
	goto	i1l7681
u678_20:
	
i1l7629:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	incf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l7631:	
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
	goto	u679_21
	goto	u679_20
u679_21:
	goto	i1l7681
u679_20:
	
i1l7633:	
	incf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l7635:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u680_21
	goto	u680_20
u680_21:
	goto	i1l7651
u680_20:
	
i1l7637:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u681_21
	goto	u681_20
u681_21:
	goto	i1l7645
u681_20:
	
i1l7639:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(044h)
	subwf	indf1,w
	skipc
	goto	u682_21
	goto	u682_20
u682_21:
	goto	i1l7643
u682_20:
	
i1l7641:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l7681
	
i1l1601:	
	
i1l7643:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l7681
	
i1l1602:	
	goto	i1l7681
	
i1l1600:	
	
i1l7645:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u683_21
	goto	u683_20
u683_21:
	goto	i1l7649
u683_20:
	
i1l7647:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l7681
	
i1l1604:	
	
i1l7649:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l7681
	
i1l1605:	
	goto	i1l7681
	
i1l1603:	
	goto	i1l7681
	
i1l1599:	
	
i1l7651:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u684_21
	goto	u684_20
u684_21:
	goto	i1l7665
u684_20:
	
i1l7653:	
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
	goto	u685_21
	goto	u685_20
u685_21:
	goto	i1l7657
u685_20:
	
i1l7655:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l7661
	
i1l1608:	
	
i1l7657:	
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
	goto	u686_21
	goto	u686_20
u686_21:
	goto	i1l7661
u686_20:
	
i1l7659:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l7661
	
i1l1610:	
	goto	i1l7661
	
i1l1609:	
	
i1l7661:	
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
	goto	u687_21
	goto	u687_20
u687_21:
	goto	i1l7681
u687_20:
	
i1l7663:	
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
	goto	i1l7681
	
i1l1611:	
	goto	i1l7681
	
i1l1607:	
	
i1l7665:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u688_21
	goto	u688_20
u688_21:
	goto	i1l7673
u688_20:
	
i1l7667:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l7669:	
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
	goto	u689_21
	goto	u689_20
u689_21:
	goto	i1l7681
u689_20:
	
i1l7671:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l7681
	
i1l1614:	
	goto	i1l7681
	
i1l1613:	
	
i1l7673:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l7675:	
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
	goto	u690_21
	goto	u690_20
u690_21:
	goto	i1l7681
u690_20:
	
i1l7677:	
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
	
i1l7679:	
	movlb 0	; select bank0
	bcf	(99/8),(99)&7	;volatile
	goto	i1l7681
	
i1l1616:	
	goto	i1l7681
	
i1l1615:	
	goto	i1l7681
	
i1l1612:	
	goto	i1l7681
	
i1l1606:	
	goto	i1l7681
	
i1l1598:	
	goto	i1l7681
	
i1l1597:	
	goto	i1l7681
	
i1l1596:	
	
i1l7681:	
	btfss	(103/8),(103)&7	;volatile
	goto	u691_21
	goto	u691_20
u691_21:
	goto	i1l7689
u691_20:
	
i1l7683:	
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
	goto	u692_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u692_25:

	skipc
	goto	u692_21
	goto	u692_20
u692_21:
	goto	i1l7689
u692_20:
	
i1l7685:	
	movlb 0	; select bank0
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l7687:	
	bcf	(103/8),(103)&7	;volatile
	goto	i1l7689
	
i1l1618:	
	goto	i1l7689
	
i1l1617:	
	goto	i1l7689
	
i1l1595:	
	line	137
	
i1l7689:	
;MCU_B1.c: 137: if(DimmerLights22->GO) { DimmerLights22->Count++; if(DimmerLights22->Count >= (DimmerLights22->DimmingValue-Dimmer->Correction)) { DimmerLights22->Count=0; DimmerLights22->GO=0; DimmerLights22->Flag=1; if(DimmerLights22->StatusFlag) { RB4=1; } } } el
	movlb 0	; select bank0
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u693_21
	goto	u693_20
u693_21:
	goto	i1l7703
u693_20:
	
i1l7691:	
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
	movlb 0	; select bank0
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
	goto	u694_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u694_25:

	skipc
	goto	u694_21
	goto	u694_20
u694_21:
	goto	i1l7767
u694_20:
	
i1l7693:	
	movlb 0	; select bank0
	movf	(_DimmerLights22),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l7695:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	
i1l7697:	
	movf	(_DimmerLights22),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
i1l7699:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u695_21
	goto	u695_20
u695_21:
	goto	i1l7767
u695_20:
	
i1l7701:	
	bsf	(108/8),(108)&7	;volatile
	goto	i1l7767
	
i1l1621:	
	goto	i1l7767
	
i1l1620:	
	goto	i1l7767
	
i1l1619:	
	
i1l7703:	
	movf	(_DimmerLights22),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u696_21
	goto	u696_20
u696_21:
	goto	i1l7759
u696_20:
	
i1l7705:	
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
	goto	u697_21
	goto	u697_20
u697_21:
	goto	i1l7759
u697_20:
	
i1l7707:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	incf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l7709:	
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
	goto	u698_21
	goto	u698_20
u698_21:
	goto	i1l7759
u698_20:
	
i1l7711:	
	incf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l7713:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u699_21
	goto	u699_20
u699_21:
	goto	i1l7729
u699_20:
	
i1l7715:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u700_21
	goto	u700_20
u700_21:
	goto	i1l7723
u700_20:
	
i1l7717:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(044h)
	subwf	indf1,w
	skipc
	goto	u701_21
	goto	u701_20
u701_21:
	goto	i1l7721
u701_20:
	
i1l7719:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l7759
	
i1l1628:	
	
i1l7721:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l7759
	
i1l1629:	
	goto	i1l7759
	
i1l1627:	
	
i1l7723:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u702_21
	goto	u702_20
u702_21:
	goto	i1l7727
u702_20:
	
i1l7725:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l7759
	
i1l1631:	
	
i1l7727:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l7759
	
i1l1632:	
	goto	i1l7759
	
i1l1630:	
	goto	i1l7759
	
i1l1626:	
	
i1l7729:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u703_21
	goto	u703_20
u703_21:
	goto	i1l7743
u703_20:
	
i1l7731:	
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
	goto	u704_21
	goto	u704_20
u704_21:
	goto	i1l7735
u704_20:
	
i1l7733:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l7739
	
i1l1635:	
	
i1l7735:	
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
	goto	u705_21
	goto	u705_20
u705_21:
	goto	i1l7739
u705_20:
	
i1l7737:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l7739
	
i1l1637:	
	goto	i1l7739
	
i1l1636:	
	
i1l7739:	
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
	goto	u706_21
	goto	u706_20
u706_21:
	goto	i1l7759
u706_20:
	
i1l7741:	
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
	goto	i1l7759
	
i1l1638:	
	goto	i1l7759
	
i1l1634:	
	
i1l7743:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u707_21
	goto	u707_20
u707_21:
	goto	i1l7751
u707_20:
	
i1l7745:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l7747:	
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
	goto	u708_21
	goto	u708_20
u708_21:
	goto	i1l7759
u708_20:
	
i1l7749:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l7759
	
i1l1641:	
	goto	i1l7759
	
i1l1640:	
	
i1l7751:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l7753:	
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
	goto	u709_21
	goto	u709_20
u709_21:
	goto	i1l7759
u709_20:
	
i1l7755:	
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
	
i1l7757:	
	movlb 0	; select bank0
	bcf	(119/8),(119)&7	;volatile
	goto	i1l7759
	
i1l1643:	
	goto	i1l7759
	
i1l1642:	
	goto	i1l7759
	
i1l1639:	
	goto	i1l7759
	
i1l1633:	
	goto	i1l7759
	
i1l1625:	
	goto	i1l7759
	
i1l1624:	
	goto	i1l7759
	
i1l1623:	
	
i1l7759:	
	btfss	(108/8),(108)&7	;volatile
	goto	u710_21
	goto	u710_20
u710_21:
	goto	i1l7767
u710_20:
	
i1l7761:	
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
	goto	u711_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u711_25:

	skipc
	goto	u711_21
	goto	u711_20
u711_21:
	goto	i1l7767
u711_20:
	
i1l7763:	
	movlb 0	; select bank0
	movf	(_DimmerLights22),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l7765:	
	bcf	(108/8),(108)&7	;volatile
	goto	i1l7767
	
i1l1645:	
	goto	i1l7767
	
i1l1644:	
	goto	i1l7767
	
i1l1622:	
	line	146
	
i1l7767:	
;MCU_B1.c: 146: Timer0->Count++;
	movlb 1	; select bank1
	incf	(_Timer0)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	147
	
i1l7769:	
;MCU_B1.c: 147: if(Timer0->Count == 200)
	incf	(_Timer0)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(0C8h)
	skipz
	goto	u712_25
	moviw	[1]fsr1
	xorlw	high(0C8h)
u712_25:
	skipz
	goto	u712_21
	goto	u712_20
u712_21:
	goto	i1l1646
u712_20:
	line	149
	
i1l7771:	
;MCU_B1.c: 148: {
;MCU_B1.c: 149: Timer0->Count=0;
	incf	(_Timer0)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	150
;MCU_B1.c: 150: TMain->T0_Timerout=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	151
	
i1l1646:	
	line	154
;MCU_B1.c: 151: }
;MCU_B1.c: 154: if(Buz->GO)
	movlb 0	; select bank0
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u713_21
	goto	u713_20
u713_21:
	goto	i1l1648
u713_20:
	line	156
	
i1l7773:	
;MCU_B1.c: 155: {
;MCU_B1.c: 156: Buz->Time++;
	incf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	goto	i1l1648
	line	157
	
i1l1647:	
	goto	i1l1648
	line	161
	
i1l1591:	
	line	162
	
i1l1648:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_ISR
	__end_of_TMR0_ISR:
	signat	_TMR0_ISR,88
	global	_IOC_ISR

;; *************** function _IOC_ISR *****************
;; Defined at:
;;		line 338 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text125,local,class=CODE,delta=2,merge=1
	line	338
global __ptext125
__ptext125:	;psect for function _IOC_ISR
psect	text125
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	338
	global	__size_of_IOC_ISR
	__size_of_IOC_ISR	equ	__end_of_IOC_ISR-_IOC_ISR
	
_IOC_ISR:	
;incstack = 0
	opt	stack 3
; Regs used in _IOC_ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	340
	
i1l7587:	
;MCU_B1.c: 340: if(IOCIE && IOCBF2)
	btfss	(91/8),(91)&7	;volatile
	goto	u668_21
	goto	u668_20
u668_21:
	goto	i1l1673
u668_20:
	
i1l7589:	
	movlb 7	; select bank7
	btfss	(7346/8)^0380h,(7346)&7	;volatile
	goto	u669_21
	goto	u669_20
u669_21:
	goto	i1l1673
u669_20:
	line	342
	
i1l7591:	
;MCU_B1.c: 341: {
;MCU_B1.c: 342: IOCBF2=0;
	bcf	(7346/8)^0380h,(7346)&7	;volatile
	line	343
;MCU_B1.c: 343: IOCIF=0;
	bcf	(88/8),(88)&7	;volatile
	line	344
	
i1l7593:	
;MCU_B1.c: 344: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u670_21
	goto	u670_20
u670_21:
	goto	i1l1673
u670_20:
	line	349
	
i1l7595:	
;MCU_B1.c: 345: {
;MCU_B1.c: 349: setDimmerReClock();
	fcall	_setDimmerReClock
	line	350
	
i1l7597:	
;MCU_B1.c: 350: if(RB2)
	movlb 0	; select bank0
	btfss	(106/8),(106)&7	;volatile
	goto	u671_21
	goto	u671_20
u671_21:
	goto	i1l7601
u671_20:
	line	352
	
i1l7599:	
;MCU_B1.c: 351: {
;MCU_B1.c: 352: Dimmer->Correction=0;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	353
;MCU_B1.c: 353: }
	goto	i1l1673
	line	354
	
i1l1671:	
	line	356
	
i1l7601:	
;MCU_B1.c: 354: else
;MCU_B1.c: 355: {
;MCU_B1.c: 356: Dimmer->Correction=8;
	movlw	(08h)
	movwf	(??_IOC_ISR+0)+0
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_IOC_ISR+0)+0,w
	movwf	indf1
	goto	i1l1673
	line	357
	
i1l1672:	
	goto	i1l1673
	line	365
	
i1l1670:	
	goto	i1l1673
	line	366
	
i1l1669:	
	line	367
	
i1l1673:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_ISR
	__end_of_IOC_ISR:
	signat	_IOC_ISR,88
	global	_setDimmerReClock

;; *************** function _setDimmerReClock *****************
;; Defined at:
;;		line 164 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text126,local,class=CODE,delta=2,merge=1
	line	164
global __ptext126
__ptext126:	;psect for function _setDimmerReClock
psect	text126
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	164
	global	__size_of_setDimmerReClock
	__size_of_setDimmerReClock	equ	__end_of_setDimmerReClock-_setDimmerReClock
	
_setDimmerReClock:	
;incstack = 0
	opt	stack 3
; Regs used in _setDimmerReClock: [wregfsr1]
	line	166
	
i1l7031:	
;MCU_B1.c: 166: TMR0=255;
	movlw	(0FFh)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	171
	
i1l7033:	
;MCU_B1.c: 171: if(!DimmerLights11->GO)
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u578_21
	goto	u578_20
u578_21:
	goto	i1l1651
u578_20:
	line	173
	
i1l7035:	
;MCU_B1.c: 172: {
;MCU_B1.c: 173: DimmerLights11->GO=1;
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	174
	
i1l1651:	
	line	198
;MCU_B1.c: 174: }
;MCU_B1.c: 198: if(!DimmerLights22->GO)
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u579_21
	goto	u579_20
u579_21:
	goto	i1l1653
u579_20:
	line	200
	
i1l7037:	
;MCU_B1.c: 199: {
;MCU_B1.c: 200: DimmerLights22->GO=1;
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l1653
	line	201
	
i1l1652:	
	line	231
	
i1l1653:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerReClock
	__end_of_setDimmerReClock:
	signat	_setDimmerReClock,88
	global	_INT_ISR

;; *************** function _INT_ISR *****************
;; Defined at:
;;		line 289 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text127,local,class=CODE,delta=2,merge=1
	line	289
global __ptext127
__ptext127:	;psect for function _INT_ISR
psect	text127
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	289
	global	__size_of_INT_ISR
	__size_of_INT_ISR	equ	__end_of_INT_ISR-_INT_ISR
	
_INT_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _INT_ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	291
	
i1l7775:	
;MCU_B1.c: 291: if(INTE && INTF)
	btfss	(92/8),(92)&7	;volatile
	goto	u714_21
	goto	u714_20
u714_21:
	goto	i1l1660
u714_20:
	
i1l7777:	
	btfss	(89/8),(89)&7	;volatile
	goto	u715_21
	goto	u715_20
u715_21:
	goto	i1l1660
u715_20:
	line	293
	
i1l7779:	
;MCU_B1.c: 292: {
;MCU_B1.c: 293: INTF=0;
	bcf	(89/8),(89)&7	;volatile
	line	294
;MCU_B1.c: 294: INTE=0;
	bcf	(92/8),(92)&7	;volatile
	line	295
	
i1l7781:	
;MCU_B1.c: 295: setRF_ReceiveGO(1,1);
	clrf	(setRF_ReceiveGO@command)
	incf	(setRF_ReceiveGO@command),f
	movlw	(01h)
	fcall	_setRF_ReceiveGO
	goto	i1l1660
	line	296
	
i1l1659:	
	line	297
	
i1l1660:	
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
psect	text128,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	37
global __ptext128
__ptext128:	;psect for function _setRF_ReceiveGO
psect	text128
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
	
i1l7039:	
;RF_Control_B1.c: 39: RfPointSelect(rf);
	movf	(setRF_ReceiveGO@rf),w
	fcall	i1_RfPointSelect
	line	40
	
i1l7041:	
;RF_Control_B1.c: 40: RF->ReceiveGO=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setRF_ReceiveGO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	41
	
i1l2492:	
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
psect	text129,local,class=CODE,delta=2,merge=1
	line	7
global __ptext129
__ptext129:	;psect for function i1_RfPointSelect
psect	text129
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
	
i1l6803:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(i1RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u553_21
	goto	u553_20
u553_21:
	goto	i1l2480
u553_20:
	line	12
	
i1l6805:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??i1_RfPointSelect+0)+0
	movf	(??i1_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	i1l2480
	line	13
	
i1l2479:	
	line	15
	
i1l2480:	
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

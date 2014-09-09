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
	FNCALL	_getTemp_AD,_TempPointSelect
	FNCALL	_getTemp_AD,_getAD
	FNCALL	_getPowerFault_AD,_PowerFaultPointSelect
	FNCALL	_getPowerFault_AD,_getAD
	FNCALL	_getLoad_AD,_LoadPointSelect
	FNCALL	_getLoad_AD,_getAD
	FNCALL	_Temp_Main,_setTemp_Main
	FNCALL	_setTemp_Main,_TempPointSelect
	FNCALL	_setTemp_Main,_getLoad_Safe
	FNCALL	_setTemp_Main,_getPF_Safe
	FNCALL	_setTemp_Main,_setOverTemp_ERROR
	FNCALL	_setOverTemp_ERROR,_DimmerLights_ERROR
	FNCALL	_setOverTemp_ERROR,_TempPointSelect
	FNCALL	_setOverTemp_ERROR,_setDimmer_TempERROR
	FNCALL	_setOverTemp_ERROR,_setLED
	FNCALL	_setOverTemp_ERROR,_setRF_Enable
	FNCALL	_setOverTemp_ERROR,_setSw_Enable
	FNCALL	_setDimmer_TempERROR,_DimmerPointSelect
	FNCALL	_Temp_Initialization,_setTemp_Initialization
	FNCALL	_setTemp_Initialization,_TempPointSelect
	FNCALL	_Switch_Main,_setSw_Main
	FNCALL	_setSw_Main,_SwPointSelect
	FNCALL	_setSw_Main,_Sw_DimmerAdjFunc
	FNCALL	_setSw_Main,_Sw_DimmerOffFunc
	FNCALL	_setSw_Main,_Sw_DimmerOnFunc
	FNCALL	_setSw_Main,_setBuz
	FNCALL	_setSw_Main,_setRF_Learn
	FNCALL	_setRF_Learn,_RfPointSelect
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
	FNCALL	_setPowerFault_Main,_PowerFaultPointSelect
	FNCALL	_setPowerFault_Main,_getLoad_Safe
	FNCALL	_setPowerFault_Main,_getTemp_Safe
	FNCALL	_setPowerFault_Main,_setPowerFault_ERROR
	FNCALL	_setPowerFault_ERROR,_DimmerLights_ERROR
	FNCALL	_setPowerFault_ERROR,_PowerFaultPointSelect
	FNCALL	_setPowerFault_ERROR,_setDimmer_PFERROR
	FNCALL	_setPowerFault_ERROR,_setLED
	FNCALL	_setPowerFault_ERROR,_setRF_Enable
	FNCALL	_setPowerFault_ERROR,_setSw_Enable
	FNCALL	_setDimmer_PFERROR,_DimmerPointSelect
	FNCALL	_getLoad_Safe,_LoadPointSelect
	FNCALL	_PowerFault_Initialization,_setPowerFault_Initialization
	FNCALL	_setPowerFault_Initialization,_PowerFaultPointSelect
	FNCALL	_Mcu_Initialization,_ADC_Set
	FNCALL	_Mcu_Initialization,_INT_Set
	FNCALL	_Mcu_Initialization,_IOC_Set
	FNCALL	_Mcu_Initialization,_IO_Set
	FNCALL	_Mcu_Initialization,_TMR0_Set
	FNCALL	_MainT,_setBuz
	FNCALL	_MainT,_setLED
	FNCALL	_MainT,_setLoad_Enable
	FNCALL	_MainT,_setRF_Enable
	FNCALL	_MainT,_setSw_Enable
	FNCALL	_MainT,_setTemp_Enable
	FNCALL	_setTemp_Enable,_TempPointSelect
	FNCALL	_setLoad_Enable,_LoadPointSelect
	FNCALL	_Load_Main,_setLoad_Main
	FNCALL	_setLoad_Main,_LoadPointSelect
	FNCALL	_setLoad_Main,___lwdiv
	FNCALL	_setLoad_Main,___wmul
	FNCALL	_setLoad_Main,_getPF_Safe
	FNCALL	_setLoad_Main,_getTemp_Safe
	FNCALL	_setLoad_Main,_setDimmerLights_Clear
	FNCALL	_setLoad_Main,_setLoad_AH_AL_Restore
	FNCALL	_setLoad_Main,_setLoad_ERROR
	FNCALL	_setLoad_ERROR,_DimmerLights_ERROR
	FNCALL	_setLoad_ERROR,_LoadPointSelect
	FNCALL	_setLoad_ERROR,_setDimmer_LoadERROR
	FNCALL	_setLoad_ERROR,_setLED
	FNCALL	_setLoad_ERROR,_setRF_Enable
	FNCALL	_setLoad_ERROR,_setSw_Enable
	FNCALL	_setSw_Enable,_SwPointSelect
	FNCALL	_setRF_Enable,_CC2500_WriteCommand
	FNCALL	_setRF_Enable,_RF_RxDisable
	FNCALL	_setRF_Enable,_RfPointSelect
	FNCALL	_RF_RxDisable,_CC2500_WriteCommand
	FNCALL	_RF_RxDisable,_RfPointSelect
	FNCALL	_RF_RxDisable,_setINT_GO
	FNCALL	_setDimmer_LoadERROR,_DimmerPointSelect
	FNCALL	_DimmerLights_ERROR,_getDimmerLights_StatusFlag
	FNCALL	_DimmerLights_ERROR,_getDimmer_LoadERROR
	FNCALL	_DimmerLights_ERROR,_getDimmer_PFERROR
	FNCALL	_DimmerLights_ERROR,_getDimmer_TempERROR
	FNCALL	_DimmerLights_ERROR,_setBuz
	FNCALL	_DimmerLights_ERROR,_setDimmerLights_ERROR
	FNCALL	_DimmerLights_ERROR,_setDimmerLights_TriggerERROR
	FNCALL	_setDimmerLights_TriggerERROR,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_ERROR,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_ERROR,_setLED
	FNCALL	_setDimmerLights_ERROR,_setLoad_StatusOff
	FNCALL	_setDimmerLights_ERROR,_setRFSW_Status
	FNCALL	_setDimmerLights_ERROR,_setSw_Status
	FNCALL	_getDimmer_TempERROR,_DimmerPointSelect
	FNCALL	_getDimmer_PFERROR,_DimmerPointSelect
	FNCALL	_getDimmer_LoadERROR,_DimmerPointSelect
	FNCALL	_setDimmerLights_Clear,_DimmerLightsPointSelect
	FNCALL	_getTemp_Safe,_TempPointSelect
	FNCALL	_getPF_Safe,_PowerFaultPointSelect
	FNCALL	_Load_Initialization,_setLoad_Initialization
	FNCALL	_setLoad_Initialization,_LoadPointSelect
	FNCALL	_setLoad_Initialization,_setLoad_AH_AL_Restore
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
	FNCALL	_setDimmerLights_Main,_getDimmerLights_Trigger
	FNCALL	_setDimmerLights_Main,_setBuz
	FNCALL	_setDimmerLights_Main,_setDimmerLights
	FNCALL	_setDimmerLights_Main,_setDimmerLights_Adj
	FNCALL	_setDimmerLights_Adj,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_Adj,_setLoad_StatusOff
	FNCALL	_setDimmerLights_Adj,_setPercentValue
	FNCALL	_setDimmerLights_Adj,_setRF_DimmerLights
	FNCALL	_setDimmerLights_Adj,_setTxData
	FNCALL	_setPercentValue,___awtoft
	FNCALL	_setPercentValue,___ftdiv
	FNCALL	_setPercentValue,___fttol
	FNCALL	_setLoad_StatusOff,_LoadPointSelect
	FNCALL	_setDimmerLights,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights,_setDimmer_Detect
	FNCALL	_setDimmerLights,_setLED
	FNCALL	_setDimmerLights,_setLoad_Count
	FNCALL	_setDimmerLights,_setLoad_GO
	FNCALL	_setDimmerLights,_setLoad_LightsStatus
	FNCALL	_setDimmerLights,_setLoad_StatusOn
	FNCALL	_setLoad_StatusOn,_LoadPointSelect
	FNCALL	_setLoad_LightsStatus,_LoadPointSelect
	FNCALL	_setLED,_LedPointSelect
	FNCALL	_getDimmerLights_Trigger,_DimmerLightsPointSelect
	FNCALL	_DimmerLights_Close,_getDimmerLights_StatusFlag
	FNCALL	_DimmerLights_Close,_getDimmer_Detect
	FNCALL	_DimmerLights_Close,_setDimmer_Detect
	FNCALL	_DimmerLights_Close,_setLoad_GO
	FNCALL	_setLoad_GO,_LoadPointSelect
	FNCALL	_setDimmer_Detect,_DimmerPointSelect
	FNCALL	_getDimmer_Detect,_DimmerPointSelect
	FNCALL	_getDimmerLights_StatusFlag,_DimmerLightsPointSelect
	FNCALL	_DimmerLights_Initialization,_setDimmerLights_Initialization
	FNCALL	_setDimmerLights_Initialization,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights_Initialization,_getPercentValue
	FNCALL	_getPercentValue,___awtoft
	FNCALL	_getPercentValue,___ftadd
	FNCALL	_getPercentValue,___ftdiv
	FNCALL	_getPercentValue,___ftmul
	FNCALL	_getPercentValue,___fttol
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___awtoft,___ftpack
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
	FNCALL	_setBuz,_BuzPointSelect
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
	FNCALL	_Buzzer_Main,_setBuz_Main
	FNCALL	_setBuz_Main,_BuzPointSelect
	FNCALL	_Buzzer_Initialization,_setBuz_Initialization
	FNCALL	_setBuz_Initialization,_setBuz_Enable
	FNCALL	_setBuz_Enable,_BuzPointSelect
	FNROOT	_main
	FNCALL	_ISR,_INT_ISR
	FNCALL	_ISR,_IOC_ISR
	FNCALL	_ISR,_TMR0_ISR
	FNCALL	_TMR0_ISR,i1_setLoad_StatusOff
	FNCALL	i1_setLoad_StatusOff,i1_LoadPointSelect
	FNCALL	_IOC_ISR,_setDimmerReClock
	FNCALL	_INT_ISR,_setRF_ReceiveGO
	FNCALL	_setRF_ReceiveGO,i1_RfPointSelect
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarProduct
	global	_VarMemory
psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	file	"G:\Program\PIC\9.Switch_2Key_Dimmer\Switch_2Key_Dimmer_V2.1.2\Release\Switch_2key_Dimmer_V2.1.2.h"
	line	254

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
psect	idataBANK4,class=CODE,space=0,delta=2,noexec
global __pidataBANK4
__pidataBANK4:
	file	"G:\Program\PIC\Header_File\MCU_16F1518_B1.h"
	line	435

;initializer for _VarMemory
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
	retlw	0AAh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_CC2500_registers_address
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
	file	"G:\Program\PIC\Header_File\CC2500_B1.h"
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
	file	"G:\Program\PIC\Header_File\CC2500_B1.h"
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
	file	"G:\Program\PIC\Header_File\CC2500_B1.h"
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
	global	_DimmerLights11
	global	_DimmerLights22
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
	global	_Buz
	global	_CRC
	global	_DelayOff
	global	_Dimmer
	global	_DimmerLightsIntr
	global	_LED
	global	_PF
	global	_RF
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
	global	_Load1
	global	_Memory
psect	nvBANK1,class=BANK1,space=1,noexec
global __pnvBANK1
__pnvBANK1:
_Memory:
       ds      1

	global	_Product
_Product:
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
global __CFG_WRT$BOOT
__CFG_WRT$BOOT equ 0x0
	file	"Switch_2Key_Dimmer_V2.1.2.as"
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
_DimmerLights11:
       ds      1

_DimmerLights22:
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

_Buz:
       ds      1

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

_PF:
       ds      1

_RF:
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
	file	"G:\Program\PIC\9.Switch_2Key_Dimmer\Switch_2Key_Dimmer_V2.1.2\Release\Switch_2key_Dimmer_V2.1.2.h"
	line	254
_VarProduct:
       ds      30

psect	dataBANK4,class=BANK4,space=1,noexec
global __pdataBANK4
__pdataBANK4:
	file	"G:\Program\PIC\Header_File\MCU_16F1518_B1.h"
	line	435
_VarMemory:
       ds      37

psect	bssBANK5,class=BANK5,space=1,noexec
global __pbssBANK5
__pbssBANK5:
_Load1:
       ds      71

	file	"Switch_2Key_Dimmer_V2.1.2.as"
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
	movlw	04Bh
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
	movlw 01Eh
	fcall init_ram
; Initialize objects allocated to BANK4
	global __pidataBANK4,__pdataBANK4
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK4)
	movwf fsr0l
	movlw high(__pidataBANK4)|80h
	movwf fsr0h
	movlw low(__pdataBANK4)
	movwf fsr1l
	movlw high(__pdataBANK4)
	movwf fsr1h
	movlw 025h
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
?_setBuz_Initialization:	; 0 bytes @ 0x0
?_setBuz_Main:	; 0 bytes @ 0x0
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
?_setDimmerLights_Main:	; 0 bytes @ 0x0
?_setDimmerLights_ERROR:	; 0 bytes @ 0x0
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
?_MainT:	; 0 bytes @ 0x0
?_Flash_Memory_Main:	; 0 bytes @ 0x0
?_Temp_Main:	; 0 bytes @ 0x0
?_Load_Main:	; 0 bytes @ 0x0
?_PowerFault_Main:	; 0 bytes @ 0x0
?_Switch_Main:	; 0 bytes @ 0x0
?_RF_Main:	; 0 bytes @ 0x0
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
?_setLoad_Initialization:	; 0 bytes @ 0x0
?_setLoad_Main:	; 0 bytes @ 0x0
?_setLoad_AH_AL_Restore:	; 0 bytes @ 0x0
?_setTemp_Main:	; 0 bytes @ 0x0
?_setTemp_Initialization:	; 0 bytes @ 0x0
?_setPowerFault_Initialization:	; 0 bytes @ 0x0
?_setPowerFault_Main:	; 0 bytes @ 0x0
?_setRF_Initialization:	; 0 bytes @ 0x0
?_setRF_Main:	; 0 bytes @ 0x0
?_RF_RxDisable:	; 0 bytes @ 0x0
?_getRxData:	; 0 bytes @ 0x0
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
?_BuzPointSelect:	; 0 bytes @ 0x0
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
?_DimmerLights_ERROR:	; 0 bytes @ 0x0
?_setDimmerLights_AdjRF:	; 0 bytes @ 0x0
?_DimmerPointSelect:	; 0 bytes @ 0x0
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
?_LoadPointSelect:	; 0 bytes @ 0x0
?_TempPointSelect:	; 0 bytes @ 0x0
?_PowerFaultPointSelect:	; 0 bytes @ 0x0
?_RfPointSelect:	; 0 bytes @ 0x0
?_RfSWPointSelect:	; 0 bytes @ 0x0
?_TouchPower:	; 0 bytes @ 0x0
?_SwPointSelect:	; 0 bytes @ 0x0
?i1_LoadPointSelect:	; 0 bytes @ 0x0
??i1_LoadPointSelect:	; 0 bytes @ 0x0
?i1_RfPointSelect:	; 0 bytes @ 0x0
??i1_RfPointSelect:	; 0 bytes @ 0x0
?_DelayTimejudge:	; 1 bytes @ 0x0
?_getPercentValue:	; 1 bytes @ 0x0
?_getDimmer_Detect:	; 1 bytes @ 0x0
?_getDimmerLights_StatusFlag:	; 1 bytes @ 0x0
?_getDimmerLights_Trigger:	; 1 bytes @ 0x0
?_getDimmer_TempERROR:	; 1 bytes @ 0x0
?_getDimmer_LoadERROR:	; 1 bytes @ 0x0
?_getDimmer_PFERROR:	; 1 bytes @ 0x0
?_setPercentValue:	; 1 bytes @ 0x0
?_Flash_Memory_Read:	; 1 bytes @ 0x0
?_getTemp_Safe:	; 1 bytes @ 0x0
?_getPF_Safe:	; 1 bytes @ 0x0
?_getLoad_Safe:	; 1 bytes @ 0x0
setBuz_Initialization@buz:	; 1 bytes @ 0x0
setLoad_Count@load:	; 1 bytes @ 0x0
setLoad_AH_AL_Restore@load:	; 1 bytes @ 0x0
TempPointSelect@temp:	; 1 bytes @ 0x0
PowerFaultPointSelect@pf:	; 1 bytes @ 0x0
setRF_Initialization@rf:	; 1 bytes @ 0x0
	ds	1
	global	i1LoadPointSelect@load
i1LoadPointSelect@load:	; 1 bytes @ 0x1
	global	i1RfPointSelect@rf
i1RfPointSelect@rf:	; 1 bytes @ 0x1
	ds	1
?_setRF_ReceiveGO:	; 0 bytes @ 0x2
?i1_setLoad_StatusOff:	; 0 bytes @ 0x2
	global	setRF_ReceiveGO@command
setRF_ReceiveGO@command:	; 1 bytes @ 0x2
	global	i1setLoad_StatusOff@lights
i1setLoad_StatusOff@lights:	; 1 bytes @ 0x2
	ds	1
??_setRF_ReceiveGO:	; 0 bytes @ 0x3
	global	setRF_ReceiveGO@rf
setRF_ReceiveGO@rf:	; 1 bytes @ 0x3
	global	i1setLoad_StatusOff@command
i1setLoad_StatusOff@command:	; 1 bytes @ 0x3
	ds	1
??_INT_ISR:	; 0 bytes @ 0x4
??i1_setLoad_StatusOff:	; 0 bytes @ 0x4
	global	i1setLoad_StatusOff@load
i1setLoad_StatusOff@load:	; 1 bytes @ 0x4
	ds	1
??_TMR0_ISR:	; 0 bytes @ 0x5
	ds	4
??_ISR:	; 0 bytes @ 0x9
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_CC2500_WriteByte:	; 0 bytes @ 0x0
??_CC2500_ReadByte:	; 0 bytes @ 0x0
?_DelayTime_1us:	; 0 bytes @ 0x0
?_setRF_DimmerLights:	; 0 bytes @ 0x0
??_DelayTimejudge:	; 0 bytes @ 0x0
?_setLoad_Count:	; 0 bytes @ 0x0
??_MainT_Initialization:	; 0 bytes @ 0x0
??_IO_Set:	; 0 bytes @ 0x0
??_TMR0_Set:	; 0 bytes @ 0x0
??_ADC_Set:	; 0 bytes @ 0x0
??_INT_Set:	; 0 bytes @ 0x0
??_IOC_Set:	; 0 bytes @ 0x0
??_Flash_Memory_Read:	; 0 bytes @ 0x0
??_Flash_Memory_Write:	; 0 bytes @ 0x0
??_setLoad_AH_AL_Restore:	; 0 bytes @ 0x0
??_setRF_Initialization:	; 0 bytes @ 0x0
??_BuzPointSelect:	; 0 bytes @ 0x0
??_DelayOffPointSelect:	; 0 bytes @ 0x0
??_DimmerLightsPointSelect:	; 0 bytes @ 0x0
??_DimmerPointSelect:	; 0 bytes @ 0x0
??_LedPointSelect:	; 0 bytes @ 0x0
??_setINT_GO:	; 0 bytes @ 0x0
??_Flash_Memory_Unlock:	; 0 bytes @ 0x0
??_Flash_Memory_Erasing:	; 0 bytes @ 0x0
??_LoadPointSelect:	; 0 bytes @ 0x0
??_TempPointSelect:	; 0 bytes @ 0x0
??_PowerFaultPointSelect:	; 0 bytes @ 0x0
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
	global	setLoad_Count@command
setLoad_Count@command:	; 1 bytes @ 0x0
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
??_setLoad_Count:	; 0 bytes @ 0x1
??_Mcu_Initialization:	; 0 bytes @ 0x1
??_RF_Initialization:	; 0 bytes @ 0x1
?_setTemp_Enable:	; 0 bytes @ 0x1
??_getTemp_Safe:	; 0 bytes @ 0x1
??_getPF_Safe:	; 0 bytes @ 0x1
??_setTemp_Initialization:	; 0 bytes @ 0x1
??_setPowerFault_Initialization:	; 0 bytes @ 0x1
	global	BuzPointSelect@buz
BuzPointSelect@buz:	; 1 bytes @ 0x1
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
	global	DimmerPointSelect@dimmer
DimmerPointSelect@dimmer:	; 1 bytes @ 0x1
	global	LedPointSelect@led
LedPointSelect@led:	; 1 bytes @ 0x1
	global	Flash_Memory_Read@i
Flash_Memory_Read@i:	; 1 bytes @ 0x1
	global	Flash_Memory_Write@i
Flash_Memory_Write@i:	; 1 bytes @ 0x1
	global	LoadPointSelect@load
LoadPointSelect@load:	; 1 bytes @ 0x1
	global	setLoad_AH_AL_Restore@i
setLoad_AH_AL_Restore@i:	; 1 bytes @ 0x1
	global	setTemp_Enable@command
setTemp_Enable@command:	; 1 bytes @ 0x1
	global	getTemp_Safe@temp
getTemp_Safe@temp:	; 1 bytes @ 0x1
	global	setTemp_Initialization@temp
setTemp_Initialization@temp:	; 1 bytes @ 0x1
	global	setPowerFault_Initialization@pf
setPowerFault_Initialization@pf:	; 1 bytes @ 0x1
	global	getPF_Safe@pf
getPF_Safe@pf:	; 1 bytes @ 0x1
	global	RfPointSelect@rf
RfPointSelect@rf:	; 1 bytes @ 0x1
	global	RfSWPointSelect@sw
RfSWPointSelect@sw:	; 1 bytes @ 0x1
	global	SwPointSelect@sw
SwPointSelect@sw:	; 1 bytes @ 0x1
	ds	1
??_setBuz_Main:	; 0 bytes @ 0x2
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
??_getDimmer_Detect:	; 0 bytes @ 0x2
?_setDimmer_Detect:	; 0 bytes @ 0x2
??_getDimmerLights_StatusFlag:	; 0 bytes @ 0x2
?_setLoad_GO:	; 0 bytes @ 0x2
??_getDimmerLights_Trigger:	; 0 bytes @ 0x2
??_getDimmer_TempERROR:	; 0 bytes @ 0x2
??_getDimmer_LoadERROR:	; 0 bytes @ 0x2
??_getDimmer_PFERROR:	; 0 bytes @ 0x2
?_setDimmerLights_TriggerERROR:	; 0 bytes @ 0x2
?_setLoad_StatusOff:	; 0 bytes @ 0x2
?_setLED:	; 0 bytes @ 0x2
?_setLoad_StatusOn:	; 0 bytes @ 0x2
?_setLoad_LightsStatus:	; 0 bytes @ 0x2
??_setLED_Main:	; 0 bytes @ 0x2
??_Temp_Initialization:	; 0 bytes @ 0x2
??_PowerFault_Initialization:	; 0 bytes @ 0x2
??_setTemp_Enable:	; 0 bytes @ 0x2
?_setLoad_Enable:	; 0 bytes @ 0x2
?_setSw_Enable:	; 0 bytes @ 0x2
??_setLoad_Initialization:	; 0 bytes @ 0x2
?_setBuz_Enable:	; 0 bytes @ 0x2
?_setDimmerLights_AdjGo:	; 0 bytes @ 0x2
?_setDimmerLights_TriggerAdj:	; 0 bytes @ 0x2
?_setDimmerLights_Clear:	; 0 bytes @ 0x2
?_setDimmer_TempERROR:	; 0 bytes @ 0x2
?_setDimmer_LoadERROR:	; 0 bytes @ 0x2
?_setDimmer_PFERROR:	; 0 bytes @ 0x2
??_getLoad_Safe:	; 0 bytes @ 0x2
?_setRF_Learn:	; 0 bytes @ 0x2
	global	setBuz_Enable@command
setBuz_Enable@command:	; 1 bytes @ 0x2
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
	global	setDimmer_TempERROR@command
setDimmer_TempERROR@command:	; 1 bytes @ 0x2
	global	setDimmer_LoadERROR@command
setDimmer_LoadERROR@command:	; 1 bytes @ 0x2
	global	setDimmer_PFERROR@command
setDimmer_PFERROR@command:	; 1 bytes @ 0x2
	global	setDimmer_Detect@command
setDimmer_Detect@command:	; 1 bytes @ 0x2
	global	getDimmer_TempERROR@dimmer
getDimmer_TempERROR@dimmer:	; 1 bytes @ 0x2
	global	getDimmer_LoadERROR@dimmer
getDimmer_LoadERROR@dimmer:	; 1 bytes @ 0x2
	global	getDimmer_PFERROR@dimmer
getDimmer_PFERROR@dimmer:	; 1 bytes @ 0x2
	global	setLED@command
setLED@command:	; 1 bytes @ 0x2
	global	Flash_Memory_Read@address
Flash_Memory_Read@address:	; 1 bytes @ 0x2
	global	setLoad_Initialization@load
setLoad_Initialization@load:	; 1 bytes @ 0x2
	global	setLoad_LightsStatus@lights
setLoad_LightsStatus@lights:	; 1 bytes @ 0x2
	global	setLoad_Enable@command
setLoad_Enable@command:	; 1 bytes @ 0x2
	global	setLoad_GO@command
setLoad_GO@command:	; 1 bytes @ 0x2
	global	setLoad_StatusOn@command
setLoad_StatusOn@command:	; 1 bytes @ 0x2
	global	setLoad_StatusOff@lights
setLoad_StatusOff@lights:	; 1 bytes @ 0x2
	global	setTemp_Enable@temp
setTemp_Enable@temp:	; 1 bytes @ 0x2
	global	setRF_Learn@command
setRF_Learn@command:	; 1 bytes @ 0x2
	global	setRF_RxStatus@command
setRF_RxStatus@command:	; 1 bytes @ 0x2
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
??_setDimmer_Detect:	; 0 bytes @ 0x3
??_setLoad_GO:	; 0 bytes @ 0x3
??_setDimmerLights_TriggerERROR:	; 0 bytes @ 0x3
??_setLED:	; 0 bytes @ 0x3
??_setLoad_StatusOn:	; 0 bytes @ 0x3
??_Load_Initialization:	; 0 bytes @ 0x3
??_setLoad_Enable:	; 0 bytes @ 0x3
??_setSw_Enable:	; 0 bytes @ 0x3
??_setBuz_Enable:	; 0 bytes @ 0x3
??_DelayOff_Initialization:	; 0 bytes @ 0x3
?_setDelayOff_GO:	; 0 bytes @ 0x3
??_setDimmerLights_AdjGo:	; 0 bytes @ 0x3
??_setDimmerLights_TriggerAdj:	; 0 bytes @ 0x3
??_setDimmerLights_Clear:	; 0 bytes @ 0x3
??_setDimmer_TempERROR:	; 0 bytes @ 0x3
??_setDimmer_LoadERROR:	; 0 bytes @ 0x3
??_setDimmer_PFERROR:	; 0 bytes @ 0x3
??_getAD:	; 0 bytes @ 0x3
??_setRF_Learn:	; 0 bytes @ 0x3
	global	setBuz_Enable@buz
setBuz_Enable@buz:	; 1 bytes @ 0x3
	global	CC2500_WriteCommand@command
CC2500_WriteCommand@command:	; 1 bytes @ 0x3
	global	CC2500_ReadStatus@status_addr
CC2500_ReadStatus@status_addr:	; 1 bytes @ 0x3
	global	setDelayOff_GO@command
setDelayOff_GO@command:	; 1 bytes @ 0x3
	global	getDimmerLights_StatusFlag@length
getDimmerLights_StatusFlag@length:	; 1 bytes @ 0x3
	global	getDimmerLights_Trigger@length
getDimmerLights_Trigger@length:	; 1 bytes @ 0x3
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
	global	setDimmer_TempERROR@dimmer
setDimmer_TempERROR@dimmer:	; 1 bytes @ 0x3
	global	setDimmer_LoadERROR@dimmer
setDimmer_LoadERROR@dimmer:	; 1 bytes @ 0x3
	global	setDimmer_PFERROR@dimmer
setDimmer_PFERROR@dimmer:	; 1 bytes @ 0x3
	global	setDimmer_Detect@dimmer
setDimmer_Detect@dimmer:	; 1 bytes @ 0x3
	global	getDimmer_Detect@dimmer
getDimmer_Detect@dimmer:	; 1 bytes @ 0x3
	global	setLED@led
setLED@led:	; 1 bytes @ 0x3
	global	getAD@adcon0
getAD@adcon0:	; 1 bytes @ 0x3
	global	Flash_Memory_Read@ret
Flash_Memory_Read@ret:	; 1 bytes @ 0x3
	global	setLoad_LightsStatus@command
setLoad_LightsStatus@command:	; 1 bytes @ 0x3
	global	setLoad_Enable@load
setLoad_Enable@load:	; 1 bytes @ 0x3
	global	setLoad_GO@load
setLoad_GO@load:	; 1 bytes @ 0x3
	global	setLoad_StatusOn@load
setLoad_StatusOn@load:	; 1 bytes @ 0x3
	global	setLoad_StatusOff@command
setLoad_StatusOff@command:	; 1 bytes @ 0x3
	global	getLoad_Safe@load
getLoad_Safe@load:	; 1 bytes @ 0x3
	global	setRF_Learn@rf
setRF_Learn@rf:	; 1 bytes @ 0x3
	global	setRF_RxStatus@rf
setRF_RxStatus@rf:	; 1 bytes @ 0x3
	global	setRFSW_Status@sw
setRFSW_Status@sw:	; 1 bytes @ 0x3
	global	setRF_DimmerLights@status
setRF_DimmerLights@status:	; 1 bytes @ 0x3
	global	setSw_Enable@sw
setSw_Enable@sw:	; 1 bytes @ 0x3
	global	setSw_Status@sw
setSw_Status@sw:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
??_setBuz_Initialization:	; 0 bytes @ 0x4
??_CC2500_ClearTXFIFO:	; 0 bytes @ 0x4
??_CC2500_ClearRXFIFO:	; 0 bytes @ 0x4
??_CC2500_SIDLEMode:	; 0 bytes @ 0x4
??_setLoad_StatusOff:	; 0 bytes @ 0x4
??_setLoad_LightsStatus:	; 0 bytes @ 0x4
??_setLED_Initialization:	; 0 bytes @ 0x4
?_getLoad_AD:	; 0 bytes @ 0x4
?_getTemp_AD:	; 0 bytes @ 0x4
?_getPowerFault_AD:	; 0 bytes @ 0x4
??_Flash_Memory_Modify:	; 0 bytes @ 0x4
??_RF_RxDisable:	; 0 bytes @ 0x4
??_setSw_Initialization:	; 0 bytes @ 0x4
??_Sw_DimmerAdjFunc:	; 0 bytes @ 0x4
??_Buzzer_Initialization:	; 0 bytes @ 0x4
??_CC2500_TxData:	; 0 bytes @ 0x4
??_CC2500_RxData:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	CC2500_WriteREG@w_addr
CC2500_WriteREG@w_addr:	; 1 bytes @ 0x4
	global	setDelayOff_GO@value
setDelayOff_GO@value:	; 1 bytes @ 0x4
	global	getDimmerLights_StatusFlag@Status
getDimmerLights_StatusFlag@Status:	; 1 bytes @ 0x4
	global	getDimmerLights_Trigger@Status
getDimmerLights_Trigger@Status:	; 1 bytes @ 0x4
	global	setLED_Initialization@led
setLED_Initialization@led:	; 1 bytes @ 0x4
	global	setLED_Main@led
setLED_Main@led:	; 1 bytes @ 0x4
	global	getLoad_AD@channel
getLoad_AD@channel:	; 1 bytes @ 0x4
	global	setLoad_StatusOff@load
setLoad_StatusOff@load:	; 1 bytes @ 0x4
	global	getTemp_AD@channel
getTemp_AD@channel:	; 1 bytes @ 0x4
	global	getPowerFault_AD@channel
getPowerFault_AD@channel:	; 1 bytes @ 0x4
	global	setTxData@rf
setTxData@rf:	; 1 bytes @ 0x4
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
??_setDimmerLights_ERROR:	; 0 bytes @ 0x5
??_Switch_Initialization:	; 0 bytes @ 0x5
??_getLoad_AD:	; 0 bytes @ 0x5
??_getTemp_AD:	; 0 bytes @ 0x5
??_getPowerFault_AD:	; 0 bytes @ 0x5
?_setRF_Enable:	; 0 bytes @ 0x5
??___ftpack:	; 0 bytes @ 0x5
??_setDelayOff_GO:	; 0 bytes @ 0x5
??_LED_Initialization:	; 0 bytes @ 0x5
??_LED_Main:	; 0 bytes @ 0x5
	global	CC2500_TxData@loop_e
CC2500_TxData@loop_e:	; 1 bytes @ 0x5
	global	CC2500_RxData@loop_f
CC2500_RxData@loop_f:	; 1 bytes @ 0x5
	global	getDimmerLights_StatusFlag@i
getDimmerLights_StatusFlag@i:	; 1 bytes @ 0x5
	global	getDimmerLights_Trigger@i
getDimmerLights_Trigger@i:	; 1 bytes @ 0x5
	global	setLoad_LightsStatus@load
setLoad_LightsStatus@load:	; 1 bytes @ 0x5
	global	setTxData@i
setTxData@i:	; 1 bytes @ 0x5
	global	setRF_Enable@command
setRF_Enable@command:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??_CC2500_PowerRST:	; 0 bytes @ 0x6
??_CC2500_FrequencyCabr:	; 0 bytes @ 0x6
?_setDimmerLights:	; 0 bytes @ 0x6
??_setRF_Enable:	; 0 bytes @ 0x6
??_Sw_DimmerOnFunc:	; 0 bytes @ 0x6
?_setBuz:	; 0 bytes @ 0x6
??_DimmerLights_Close:	; 0 bytes @ 0x6
	global	setBuz@count
setBuz@count:	; 1 bytes @ 0x6
	global	setBuz_Main@buz
setBuz_Main@buz:	; 1 bytes @ 0x6
	global	CC2500_InitSetREG@temp1
CC2500_InitSetREG@temp1:	; 1 bytes @ 0x6
	global	CC2500_InitPATable@temp
CC2500_InitPATable@temp:	; 1 bytes @ 0x6
	global	setDelayOff_GO@sw
setDelayOff_GO@sw:	; 1 bytes @ 0x6
	global	setDimmerLights_ERROR@lights
setDimmerLights_ERROR@lights:	; 1 bytes @ 0x6
	global	setDimmerLights@status
setDimmerLights@status:	; 1 bytes @ 0x6
	global	Flash_Memory_Modify@i
Flash_Memory_Modify@i:	; 1 bytes @ 0x6
	global	setRF_Enable@rf
setRF_Enable@rf:	; 1 bytes @ 0x6
	global	Sw_DimmerOnFunc@sw
Sw_DimmerOnFunc@sw:	; 1 bytes @ 0x6
	ds	1
??_setDimmerLights:	; 0 bytes @ 0x7
??_Flash_Memory_Main:	; 0 bytes @ 0x7
??_Sw_DimmerOffFunc:	; 0 bytes @ 0x7
??_Buzzer_Main:	; 0 bytes @ 0x7
	global	CC2500_InitSetREG@temp2
CC2500_InitSetREG@temp2:	; 1 bytes @ 0x7
	global	CC2500_InitPATable@loop_d
CC2500_InitPATable@loop_d:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	setBuz@time
setBuz@time:	; 2 bytes @ 0x7
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	CC2500_InitSetREG@loop_c
CC2500_InitSetREG@loop_c:	; 1 bytes @ 0x8
	global	setDimmerLights@lights
setDimmerLights@lights:	; 1 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	ds	1
??_setBuz:	; 0 bytes @ 0x9
??_CC2500_PowerOnInitial:	; 0 bytes @ 0x9
	global	getTemp_AD@temp
getTemp_AD@temp:	; 1 bytes @ 0x9
	global	getPowerFault_AD@pf
getPowerFault_AD@pf:	; 1 bytes @ 0x9
	global	Sw_DimmerOffFunc@sw
Sw_DimmerOffFunc@sw:	; 1 bytes @ 0x9
	ds	1
	global	setBuz@buz
setBuz@buz:	; 1 bytes @ 0xA
	global	getLoad_AD@load
getLoad_AD@load:	; 1 bytes @ 0xA
	ds	1
??_DlyOff_Main:	; 0 bytes @ 0xB
??_MainT:	; 0 bytes @ 0xB
??_setLog_Code:	; 0 bytes @ 0xB
??_setRFSW_Control:	; 0 bytes @ 0xB
??_setSw_Main:	; 0 bytes @ 0xB
??_DimmerLights_ERROR:	; 0 bytes @ 0xB
??___awtoft:	; 0 bytes @ 0xB
	global	getLoad_AD@j
getLoad_AD@j:	; 1 bytes @ 0xB
	ds	1
?_setLoad_ERROR:	; 0 bytes @ 0xC
?_setOverTemp_ERROR:	; 0 bytes @ 0xC
?_setPowerFault_ERROR:	; 0 bytes @ 0xC
	global	getLoad_AD@i
getLoad_AD@i:	; 1 bytes @ 0xC
	global	setLoad_ERROR@command
setLoad_ERROR@command:	; 1 bytes @ 0xC
	global	setOverTemp_ERROR@command
setOverTemp_ERROR@command:	; 1 bytes @ 0xC
	global	setPowerFault_ERROR@command
setPowerFault_ERROR@command:	; 1 bytes @ 0xC
	global	setLog_Code@rf
setLog_Code@rf:	; 1 bytes @ 0xC
	ds	1
??_setLoad_ERROR:	; 0 bytes @ 0xD
??_setOverTemp_ERROR:	; 0 bytes @ 0xD
??_setPowerFault_ERROR:	; 0 bytes @ 0xD
	global	DlyOff_Main@sw
DlyOff_Main@sw:	; 1 bytes @ 0xD
	global	setRFSW_Control@sw
setRFSW_Control@sw:	; 1 bytes @ 0xD
	global	_setSw_Main$4431
_setSw_Main$4431:	; 1 bytes @ 0xD
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
??_DelayOff_Main:	; 0 bytes @ 0xE
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xE
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xE
	global	setLoad_ERROR@load
setLoad_ERROR@load:	; 1 bytes @ 0xE
	global	setOverTemp_ERROR@temp
setOverTemp_ERROR@temp:	; 1 bytes @ 0xE
	global	setPowerFault_ERROR@pf
setPowerFault_ERROR@pf:	; 1 bytes @ 0xE
	global	_setSw_Main$4432
_setSw_Main$4432:	; 1 bytes @ 0xE
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xE
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xE
	ds	1
??_setLoad_Main:	; 0 bytes @ 0xF
??_setTemp_Main:	; 0 bytes @ 0xF
??_setPowerFault_Main:	; 0 bytes @ 0xF
	global	setSw_Main@sw
setSw_Main@sw:	; 1 bytes @ 0xF
	ds	1
??_Switch_Main:	; 0 bytes @ 0x10
	ds	1
	global	setPowerFault_Main@pf
setPowerFault_Main@pf:	; 1 bytes @ 0x11
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x11
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x11
	ds	1
??_PowerFault_Main:	; 0 bytes @ 0x12
	global	setTemp_Main@temp
setTemp_Main@temp:	; 1 bytes @ 0x12
	ds	1
??_Temp_Main:	; 0 bytes @ 0x13
	global	setLoad_Main@load
setLoad_Main@load:	; 1 bytes @ 0x13
	ds	1
??_Load_Main:	; 0 bytes @ 0x14
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
?_setDimmerLights_Adj:	; 0 bytes @ 0x3D
??_Flash_Memory_Initialization:	; 0 bytes @ 0x3D
	global	setDimmerLights_Adj@status
setDimmerLights_Adj@status:	; 1 bytes @ 0x3D
	ds	1
??_setDimmerLights_Adj:	; 0 bytes @ 0x3E
	global	Flash_Memory_Initialization@i
Flash_Memory_Initialization@i:	; 1 bytes @ 0x3E
	ds	1
??_setDimmerLights_Initialization:	; 0 bytes @ 0x3F
??_setDimmerLights_AdjRF:	; 0 bytes @ 0x3F
	ds	1
	global	setDimmerLights_Adj@lights
setDimmerLights_Adj@lights:	; 1 bytes @ 0x40
	global	setDimmerLights_AdjRF@lights
setDimmerLights_AdjRF@lights:	; 1 bytes @ 0x40
	ds	1
??_setDimmerLights_Main:	; 0 bytes @ 0x41
??_setRF_DimmerValue:	; 0 bytes @ 0x41
	global	setDimmerLights_Initialization@lights
setDimmerLights_Initialization@lights:	; 1 bytes @ 0x41
	global	setDimmerLights_Main@clear
setDimmerLights_Main@clear:	; 1 bytes @ 0x41
	ds	1
??_DimmerLights_Initialization:	; 0 bytes @ 0x42
	global	setDimmerLights_Main@lights
setDimmerLights_Main@lights:	; 1 bytes @ 0x42
	ds	1
??_DimmerLights_Main:	; 0 bytes @ 0x43
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
	global	_setRF_Main$4076
_setRF_Main$4076:	; 1 bytes @ 0x4B
	ds	1
??_RF_Main:	; 0 bytes @ 0x4C
??_main:	; 0 bytes @ 0x4C
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    102
;!    Data        67
;!    BSS         246
;!    Persistent  4
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      14
;!    BANK0            80     77      80
;!    BANK1            80      0      79
;!    BANK2            80      0      78
;!    BANK3            80      0      46
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
;!    Dimmer	PTR struct Dimmer size(1) Largest target is 3
;!		 -> NULL(NULL[0]), Dimmer1(BANK1[3]), 
;!
;!    Memory	PTR struct FlashMemory size(1) Largest target is 37
;!		 -> NULL(NULL[0]), VarMemory(BANK4[37]), 
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
;!    Product	PTR struct Product size(1) Largest target is 30
;!		 -> NULL(NULL[0]), VarProduct(BANK3[30]), 
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
;!    i1_setLoad_StatusOff->i1_LoadPointSelect
;!    _INT_ISR->_setRF_ReceiveGO
;!    _setRF_ReceiveGO->i1_RfPointSelect
;!
;!Critical Paths under _main in BANK0
;!
;!    _getTemp_AD->_getAD
;!    _getPowerFault_AD->_getAD
;!    _getLoad_AD->_getAD
;!    _Temp_Main->_setTemp_Main
;!    _setTemp_Main->_setOverTemp_ERROR
;!    _setOverTemp_ERROR->_DimmerLights_ERROR
;!    _setDimmer_TempERROR->_DimmerPointSelect
;!    _Temp_Initialization->_setTemp_Initialization
;!    _setTemp_Initialization->_TempPointSelect
;!    _Switch_Main->_setSw_Main
;!    _setSw_Main->_setBuz
;!    _setRF_Learn->_RfPointSelect
;!    _Sw_DimmerOnFunc->_setTxData
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
;!    _CC2500_TxData->_CC2500_WriteCommand
;!    _CC2500_RxData->_CC2500_ReadStatus
;!    _CC2500_RxData->_CC2500_WriteCommand
;!    _CC2500_RxData->_setRF_RxStatus
;!    _setRF_RxStatus->_RfPointSelect
;!    _CC2500_ReadStatus->_CC2500_ReadByte
;!    _CC2500_ReadStatus->_CC2500_WriteByte
;!    _RF_Initialization->_setRF_Initialization
;!    _PowerFault_Main->_setPowerFault_Main
;!    _setPowerFault_Main->_setPowerFault_ERROR
;!    _setPowerFault_ERROR->_DimmerLights_ERROR
;!    _setDimmer_PFERROR->_DimmerPointSelect
;!    _getLoad_Safe->_LoadPointSelect
;!    _PowerFault_Initialization->_setPowerFault_Initialization
;!    _setPowerFault_Initialization->_PowerFaultPointSelect
;!    _Mcu_Initialization->_TMR0_Set
;!    _MainT->_setBuz
;!    _setTemp_Enable->_TempPointSelect
;!    _setLoad_Enable->_LoadPointSelect
;!    _Load_Main->_setLoad_Main
;!    _setLoad_Main->_setLoad_ERROR
;!    _setLoad_ERROR->_DimmerLights_ERROR
;!    _setSw_Enable->_SwPointSelect
;!    _setRF_Enable->_RF_RxDisable
;!    _RF_RxDisable->_CC2500_WriteCommand
;!    _setDimmer_LoadERROR->_DimmerPointSelect
;!    _DimmerLights_ERROR->_setBuz
;!    _setDimmerLights_TriggerERROR->_DimmerLightsPointSelect
;!    _setDimmerLights_ERROR->_setLoad_StatusOff
;!    _getDimmer_TempERROR->_DimmerPointSelect
;!    _getDimmer_PFERROR->_DimmerPointSelect
;!    _getDimmer_LoadERROR->_DimmerPointSelect
;!    _setDimmerLights_Clear->_DimmerLightsPointSelect
;!    _getTemp_Safe->_TempPointSelect
;!    _getPF_Safe->_PowerFaultPointSelect
;!    _Load_Initialization->_setLoad_Initialization
;!    _setLoad_Initialization->_LoadPointSelect
;!    _setLoad_Initialization->_setLoad_AH_AL_Restore
;!    _LED_Main->_setLED_Main
;!    _setLED_Main->_LedPointSelect
;!    _LED_Initialization->_setLED_Initialization
;!    _setLED_Initialization->_setLED
;!    _Flash_Memory_Main->_Flash_Memory_Modify
;!    _Flash_Memory_Modify->_Flash_Memory_Read
;!    _Flash_Memory_Initialization->_setPercentValue
;!    _DimmerLights_Main->_setDimmerLights_Main
;!    _setDimmerLights_Main->_setDimmerLights_Adj
;!    _setDimmerLights_Adj->_setPercentValue
;!    _setPercentValue->___fttol
;!    _setLoad_StatusOff->_LoadPointSelect
;!    _setDimmerLights->_setLoad_LightsStatus
;!    _setLoad_StatusOn->_LoadPointSelect
;!    _setLoad_LightsStatus->_LoadPointSelect
;!    _setLED->_LedPointSelect
;!    _getDimmerLights_Trigger->_DimmerLightsPointSelect
;!    _DimmerLights_Close->_getDimmerLights_StatusFlag
;!    _setLoad_GO->_LoadPointSelect
;!    _setDimmer_Detect->_DimmerPointSelect
;!    _getDimmer_Detect->_DimmerPointSelect
;!    _getDimmerLights_StatusFlag->_DimmerLightsPointSelect
;!    _DimmerLights_Initialization->_setDimmerLights_Initialization
;!    _setDimmerLights_Initialization->_getPercentValue
;!    _getPercentValue->___fttol
;!    ___fttol->___ftadd
;!    ___ftmul->___awtoft
;!    ___ftdiv->___awtoft
;!    ___ftadd->___ftmul
;!    ___awtoft->___ftpack
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
;!    _Buzzer_Main->_setBuz_Main
;!    _setBuz_Main->_BuzPointSelect
;!    _setBuz_Initialization->_setBuz_Enable
;!    _setBuz_Enable->_BuzPointSelect
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0  104750
;!                                             76 BANK0      1     1      0
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
;! (1) _getTemp_AD                                           6     5      1     344
;!                                              4 BANK0      6     5      1
;!                    _TempPointSelect
;!                              _getAD
;! ---------------------------------------------------------------------------------
;! (1) _getPowerFault_AD                                     6     5      1     344
;!                                              4 BANK0      6     5      1
;!              _PowerFaultPointSelect
;!                              _getAD
;! ---------------------------------------------------------------------------------
;! (1) _getLoad_AD                                           9     8      1     571
;!                                              4 BANK0      9     8      1
;!                    _LoadPointSelect
;!                              _getAD
;! ---------------------------------------------------------------------------------
;! (2) _getAD                                                4     1      3     236
;!                                              0 BANK0      4     1      3
;! ---------------------------------------------------------------------------------
;! (1) _Temp_Main                                            0     0      0    8434
;!                       _setTemp_Main
;! ---------------------------------------------------------------------------------
;! (2) _setTemp_Main                                         4     4      0    8434
;!                                             15 BANK0      4     4      0
;!                    _TempPointSelect
;!                       _getLoad_Safe
;!                         _getPF_Safe
;!                  _setOverTemp_ERROR
;! ---------------------------------------------------------------------------------
;! (3) _setOverTemp_ERROR                                    3     2      1    8346
;!                                             12 BANK0      3     2      1
;!                 _DimmerLights_ERROR
;!                    _TempPointSelect
;!                _setDimmer_TempERROR
;!                             _setLED
;!                       _setRF_Enable
;!                       _setSw_Enable
;! ---------------------------------------------------------------------------------
;! (4) _setDimmer_TempERROR                                  2     1      1     194
;!                                              2 BANK0      2     1      1
;!                  _DimmerPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _Temp_Initialization                                  0     0      0      22
;!             _setTemp_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setTemp_Initialization                               1     1      0      22
;!                                              1 BANK0      1     1      0
;!                    _TempPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _Switch_Main                                          0     0      0    8576
;!                         _setSw_Main
;! ---------------------------------------------------------------------------------
;! (2) _setSw_Main                                           5     5      0    8576
;!                                             11 BANK0      5     5      0
;!                      _SwPointSelect
;!                   _Sw_DimmerAdjFunc
;!                   _Sw_DimmerOffFunc
;!                    _Sw_DimmerOnFunc
;!                             _setBuz
;!                        _setRF_Learn
;! ---------------------------------------------------------------------------------
;! (3) _setRF_Learn                                          2     1      1     258
;!                                              2 BANK0      2     1      1
;!                      _RfPointSelect
;! ---------------------------------------------------------------------------------
;! (3) _Sw_DimmerOnFunc                                      1     1      0    2264
;!                                              6 BANK0      1     1      0
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!                     _setRFSW_Status
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (3) _Sw_DimmerOffFunc                                     3     3      0    2947
;!                                              7 BANK0      3     3      0
;!                     _setDelayOff_GO
;!              _setDimmerLights_AdjGo
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!         _setDimmerLights_TriggerAdj
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (3) _Sw_DimmerAdjFunc                                     1     1      0    1034
;!                                              4 BANK0      1     1      0
;!              _setDimmerLights_AdjGo
;!         _setDimmerLights_TriggerAdj
;!                     _setRFSW_Status
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_TriggerAdj                           2     1      1     216
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_AdjGo                                2     1      1     216
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _Switch_Initialization                                0     0      0    1100
;!                         _TouchPower
;!               _setSw_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setSw_Initialization                                 1     1      0    1100
;!                                              4 BANK0      1     1      0
;!                             _setLED
;! ---------------------------------------------------------------------------------
;! (2) _TouchPower                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _RF_Main                                              0     0      0   24727
;!                         _setRF_Main
;! ---------------------------------------------------------------------------------
;! (2) _setRF_Main                                           3     3      0   24727
;!                                             73 BANK0      3     3      0
;!                      _CC2500_RxData
;!                      _CC2500_TxData
;!                _CC2500_WriteCommand
;!                       _RF_RxDisable
;!                      _RfPointSelect
;!                          _getRxData
;!                          _setINT_GO
;! ---------------------------------------------------------------------------------
;! (3) _getRxData                                            2     2      0   23825
;!                                             72 BANK0      1     1      0
;!                      _RfPointSelect
;!            _setControl_Lights_Table
;!                        _setLog_Code
;! ---------------------------------------------------------------------------------
;! (4) _setLog_Code                                          2     2      0    1893
;!                                             11 BANK0      2     2      0
;!                      _RfPointSelect
;!                             _setBuz
;! ---------------------------------------------------------------------------------
;! (4) _setControl_Lights_Table                              1     1      0   21888
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
;! (5) _setRFSW_Control                                      3     3      0    4990
;!                                             11 BANK0      3     3      0
;!                    _RfSWPointSelect
;!                             _setBuz
;!                     _setDelayOff_GO
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!                 _setRF_DimmerLights
;!                       _setSw_Status
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (4) _setDelayOff_GO                                       4     2      2     721
;!                                              3 BANK0      4     2      2
;!                _DelayOffPointSelect
;!                     _DelayTimejudge
;! ---------------------------------------------------------------------------------
;! (5) _DelayTimejudge                                       3     3      0     161
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (5) _setRFSW_AdjControl                                   3     3      0   11445
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
;! (3) _CC2500_TxData                                        2     2      0     160
;!                                              4 BANK0      2     2      0
;!                   _CC2500_WriteByte
;!                _CC2500_WriteCommand
;! ---------------------------------------------------------------------------------
;! (3) _CC2500_RxData                                        2     2      0     450
;!                                              4 BANK0      2     2      0
;!                    _CC2500_ReadByte
;!                  _CC2500_ReadStatus
;!                   _CC2500_WriteByte
;!                _CC2500_WriteCommand
;!                     _setRF_RxStatus
;! ---------------------------------------------------------------------------------
;! (4) _setRF_RxStatus                                       2     1      1     130
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
;! (1) _PowerFault_Main                                      0     0      0    8412
;!                 _setPowerFault_Main
;! ---------------------------------------------------------------------------------
;! (2) _setPowerFault_Main                                   3     3      0    8412
;!                                             15 BANK0      3     3      0
;!              _PowerFaultPointSelect
;!                       _getLoad_Safe
;!                       _getTemp_Safe
;!                _setPowerFault_ERROR
;! ---------------------------------------------------------------------------------
;! (3) _setPowerFault_ERROR                                  3     2      1    8324
;!                                             12 BANK0      3     2      1
;!                 _DimmerLights_ERROR
;!              _PowerFaultPointSelect
;!                  _setDimmer_PFERROR
;!                             _setLED
;!                       _setRF_Enable
;!                       _setSw_Enable
;! ---------------------------------------------------------------------------------
;! (4) _setDimmer_PFERROR                                    2     1      1     194
;!                                              2 BANK0      2     1      1
;!                  _DimmerPointSelect
;! ---------------------------------------------------------------------------------
;! (3) _getLoad_Safe                                         2     2      0      44
;!                                              2 BANK0      2     2      0
;!                    _LoadPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _PowerFault_Initialization                            0     0      0      22
;!       _setPowerFault_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setPowerFault_Initialization                         1     1      0      22
;!                                              1 BANK0      1     1      0
;!              _PowerFaultPointSelect
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
;! (1) _MainT                                                1     1      0    4865
;!                                             11 BANK0      1     1      0
;!                             _setBuz
;!                             _setLED
;!                     _setLoad_Enable
;!                       _setRF_Enable
;!                       _setSw_Enable
;!                     _setTemp_Enable
;! ---------------------------------------------------------------------------------
;! (2) _setTemp_Enable                                       2     1      1     108
;!                                              1 BANK0      2     1      1
;!                    _TempPointSelect
;! ---------------------------------------------------------------------------------
;! (2) _setLoad_Enable                                       2     1      1     130
;!                                              2 BANK0      2     1      1
;!                    _LoadPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _Load_Main                                            0     0      0    9850
;!                       _setLoad_Main
;! ---------------------------------------------------------------------------------
;! (2) _setLoad_Main                                         6     6      0    9850
;!                                             15 BANK0      5     5      0
;!                    _LoadPointSelect
;!                            ___lwdiv
;!                             ___wmul
;!                         _getPF_Safe
;!                       _getTemp_Safe
;!              _setDimmerLights_Clear
;!              _setLoad_AH_AL_Restore
;!                      _setLoad_ERROR
;! ---------------------------------------------------------------------------------
;! (3) _setLoad_ERROR                                        3     2      1    8368
;!                                             12 BANK0      3     2      1
;!                 _DimmerLights_ERROR
;!                    _LoadPointSelect
;!                _setDimmer_LoadERROR
;!                             _setLED
;!                       _setRF_Enable
;!                       _setSw_Enable
;! ---------------------------------------------------------------------------------
;! (4) _setSw_Enable                                         2     1      1     984
;!                                              2 BANK0      2     1      1
;!                      _SwPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _setRF_Enable                                         2     1      1     716
;!                                              5 BANK0      2     1      1
;!                _CC2500_WriteCommand
;!                       _RF_RxDisable
;!                      _RfPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _RF_RxDisable                                         1     1      0     134
;!                                              4 BANK0      1     1      0
;!                _CC2500_WriteCommand
;!                      _RfPointSelect
;!                          _setINT_GO
;! ---------------------------------------------------------------------------------
;! (6) _setINT_GO                                            1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _setDimmer_LoadERROR                                  2     1      1     194
;!                                              2 BANK0      2     1      1
;!                  _DimmerPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _DimmerLights_ERROR                                   1     1      0    5180
;!                                             11 BANK0      1     1      0
;!         _getDimmerLights_StatusFlag
;!                _getDimmer_LoadERROR
;!                  _getDimmer_PFERROR
;!                _getDimmer_TempERROR
;!                             _setBuz
;!              _setDimmerLights_ERROR
;!       _setDimmerLights_TriggerERROR
;! ---------------------------------------------------------------------------------
;! (5) _setDimmerLights_TriggerERROR                         2     1      1     282
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _setDimmerLights_ERROR                                2     2      0    2780
;!                                              5 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;!                             _setLED
;!                  _setLoad_StatusOff
;!                     _setRFSW_Status
;!                       _setSw_Status
;! ---------------------------------------------------------------------------------
;! (5) _getDimmer_TempERROR                                  1     1      0      44
;!                                              2 BANK0      1     1      0
;!                  _DimmerPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _getDimmer_PFERROR                                    1     1      0      44
;!                                              2 BANK0      1     1      0
;!                  _DimmerPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _getDimmer_LoadERROR                                  1     1      0      44
;!                                              2 BANK0      1     1      0
;!                  _DimmerPointSelect
;! ---------------------------------------------------------------------------------
;! (3) _setDimmerLights_Clear                                2     1      1     344
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (3) _getTemp_Safe                                         1     1      0      22
;!                                              1 BANK0      1     1      0
;!                    _TempPointSelect
;! ---------------------------------------------------------------------------------
;! (2) _TempPointSelect                                      2     2      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _getPF_Safe                                           1     1      0      22
;!                                              1 BANK0      1     1      0
;!              _PowerFaultPointSelect
;! ---------------------------------------------------------------------------------
;! (2) _PowerFaultPointSelect                                2     2      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     418
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _Load_Initialization                                  0     0      0     156
;!             _setLoad_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setLoad_Initialization                               1     1      0     156
;!                                              2 BANK0      1     1      0
;!                    _LoadPointSelect
;!              _setLoad_AH_AL_Restore
;! ---------------------------------------------------------------------------------
;! (3) _setLoad_AH_AL_Restore                                3     3      0      90
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _LED_Main                                             0     0      0     154
;!                        _setLED_Main
;! ---------------------------------------------------------------------------------
;! (2) _setLED_Main                                          3     3      0     154
;!                                              2 BANK0      3     3      0
;!                     _LedPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _LED_Initialization                                   0     0      0    1188
;!              _setLED_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setLED_Initialization                                1     1      0    1188
;!                                              4 BANK0      1     1      0
;!                     _LedPointSelect
;!                             _setLED
;! ---------------------------------------------------------------------------------
;! (1) _Flash_Memory_Main                                    0     0      0     227
;!                _Flash_Memory_Modify
;! ---------------------------------------------------------------------------------
;! (2) _Flash_Memory_Modify                                  3     3      0     227
;!                                              4 BANK0      3     3      0
;!               _Flash_Memory_Erasing
;!                  _Flash_Memory_Read
;!                 _Flash_Memory_Write
;! ---------------------------------------------------------------------------------
;! (3) _Flash_Memory_Erasing                                 0     0      0       0
;!                _Flash_Memory_Unlock
;! ---------------------------------------------------------------------------------
;! (1) _Flash_Memory_Initialization                          2     2      0    5764
;!                                             61 BANK0      2     2      0
;!                  _Flash_Memory_Read
;!                 _Flash_Memory_Write
;!                    _setPercentValue
;! ---------------------------------------------------------------------------------
;! (3) _Flash_Memory_Write                                   2     2      0      90
;!                                              0 BANK0      2     2      0
;!                _Flash_Memory_Unlock
;! ---------------------------------------------------------------------------------
;! (4) _Flash_Memory_Unlock                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _Flash_Memory_Read                                    4     4      0      47
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _DimmerLights_Main                                    0     0      0   12247
;!                 _DimmerLights_Close
;!               _setDimmerLights_Main
;! ---------------------------------------------------------------------------------
;! (2) _setDimmerLights_Main                                 2     2      0   11678
;!                                             65 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;!            _getDimmerLights_Trigger
;!                             _setBuz
;!                    _setDimmerLights
;!                _setDimmerLights_Adj
;! ---------------------------------------------------------------------------------
;! (3) _setDimmerLights_Adj                                  4     3      1    7029
;!                                             61 BANK0      4     3      1
;!            _DimmerLightsPointSelect
;!                  _setLoad_StatusOff
;!                    _setPercentValue
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (2) _setPercentValue                                      4     4      0    5427
;!                                             57 BANK0      4     4      0
;!                           ___awtoft
;!                            ___ftdiv
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (6) _setLoad_StatusOff                                    3     1      2     540
;!                                              2 BANK0      3     1      2
;!                    _LoadPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _setDimmerLights                                      3     2      1    2418
;!                                              6 BANK0      3     2      1
;!            _DimmerLightsPointSelect
;!                   _setDimmer_Detect
;!                             _setLED
;!                      _setLoad_Count
;!                         _setLoad_GO
;!               _setLoad_LightsStatus
;!                   _setLoad_StatusOn
;! ---------------------------------------------------------------------------------
;! (6) _setLoad_StatusOn                                     2     1      1     130
;!                                              2 BANK0      2     1      1
;!                    _LoadPointSelect
;! ---------------------------------------------------------------------------------
;! (6) _setLoad_LightsStatus                                 4     2      2     304
;!                                              2 BANK0      4     2      2
;!                    _LoadPointSelect
;! ---------------------------------------------------------------------------------
;! (6) _setLoad_Count                                        3     2      1     108
;!                                              0 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (4) _setLED                                               2     1      1    1078
;!                                              2 BANK0      2     1      1
;!                     _LedPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _LedPointSelect                                       2     2      0      66
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _getDimmerLights_Trigger                              4     4      0     137
;!                                              2 BANK0      4     4      0
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (2) _DimmerLights_Close                                   0     0      0     569
;!         _getDimmerLights_StatusFlag
;!                   _getDimmer_Detect
;!                   _setDimmer_Detect
;!                         _setLoad_GO
;! ---------------------------------------------------------------------------------
;! (6) _setLoad_GO                                           2     1      1     194
;!                                              2 BANK0      2     1      1
;!                    _LoadPointSelect
;! ---------------------------------------------------------------------------------
;! (2) _LoadPointSelect                                      2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (6) _setDimmer_Detect                                     2     1      1     194
;!                                              2 BANK0      2     1      1
;!                  _DimmerPointSelect
;! ---------------------------------------------------------------------------------
;! (3) _getDimmer_Detect                                     2     2      0      44
;!                                              2 BANK0      2     2      0
;!                  _DimmerPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _DimmerPointSelect                                    2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (5) _getDimmerLights_StatusFlag                           4     4      0     137
;!                                              2 BANK0      4     4      0
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _DimmerLights_Initialization                          1     1      0   11135
;!                                             66 BANK0      1     1      0
;!     _setDimmerLights_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setDimmerLights_Initialization                       3     3      0   11135
;!                                             63 BANK0      3     3      0
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
;! (9) ___fttol                                             14    10      4     380
;!                                             43 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (9) ___ftmul                                             16    10      6    2502
;!                                             14 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (9) ___ftdiv                                             16    10      6    2712
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
;! (9) ___awtoft                                             6     3      3    2267
;!                                              8 BANK0      6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (10) ___ftpack                                            8     3      5    2048
;!                                              0 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _DelayOff_Main                                        0     0      0    4651
;!                        _DlyOff_Main
;! ---------------------------------------------------------------------------------
;! (2) _DlyOff_Main                                          3     3      0    4651
;!                                             11 BANK0      3     3      0
;!                _DelayOffPointSelect
;!                             _setBuz
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!                     _setRFSW_Status
;!                 _setRF_DimmerLights
;!                       _setSw_Status
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (4) _setTxData                                            4     4      0     134
;!                                              2 BANK0      4     4      0
;!                      _RfPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _RfPointSelect                                        2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (6) _setSw_Status                                         2     1      1     472
;!                                              2 BANK0      2     1      1
;!                      _SwPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _SwPointSelect                                        2     2      0      44
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _setRF_DimmerLights                                   5     4      1     668
;!                                              0 BANK0      5     4      1
;! ---------------------------------------------------------------------------------
;! (6) _setRFSW_Status                                       2     1      1     536
;!                                              2 BANK0      2     1      1
;!                    _RfSWPointSelect
;! ---------------------------------------------------------------------------------
;! (7) _RfSWPointSelect                                      2     2      0      44
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_Trigger                              2     1      1     408
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _setDimmerLights_Switch                               2     1      1     408
;!                                              2 BANK0      2     1      1
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (6) _DimmerLightsPointSelect                              2     2      0      44
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (5) _setBuz                                               5     2      3    1849
;!                                              6 BANK0      5     2      3
;!                     _BuzPointSelect
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (6) ___wmul                                               6     2      4     476
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _DelayOff_Initialization                              0     0      0      66
;!              _DlyOff_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _DlyOff_Initialization                                1     1      0      66
;!                                              2 BANK0      1     1      0
;!                _DelayOffPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _DelayOffPointSelect                                  2     2      0      44
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _CC2500_PowerOnInitial                                0     0      0    1677
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
;! (2) _CC2500_PowerRST                                      1     1      0     394
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
;! (2) _CC2500_FrequencyCabr                                 0     0      0     416
;!                _CC2500_WriteCommand
;!                      _DelayTime_1us
;! ---------------------------------------------------------------------------------
;! (3) _DelayTime_1us                                        6     4      2     348
;!                                              0 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_ClearTXFIFO                                   0     0      0      68
;!                _CC2500_WriteCommand
;! ---------------------------------------------------------------------------------
;! (2) _CC2500_ClearRXFIFO                                   0     0      0      68
;!                _CC2500_WriteCommand
;! ---------------------------------------------------------------------------------
;! (6) _CC2500_WriteCommand                                  2     2      0      68
;!                                              2 BANK0      2     2      0
;!                   _CC2500_WriteByte
;! ---------------------------------------------------------------------------------
;! (7) _CC2500_WriteByte                                     2     2      0      46
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _Buzzer_Main                                          0     0      0      88
;!                        _setBuz_Main
;! ---------------------------------------------------------------------------------
;! (2) _setBuz_Main                                          5     5      0      88
;!                                              2 BANK0      5     5      0
;!                     _BuzPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _Buzzer_Initialization                                0     0      0     130
;!              _setBuz_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setBuz_Initialization                                1     1      0     130
;!                      _setBuz_Enable
;! ---------------------------------------------------------------------------------
;! (3) _setBuz_Enable                                        2     1      1     130
;!                                              2 BANK0      2     1      1
;!                     _BuzPointSelect
;! ---------------------------------------------------------------------------------
;! (6) _BuzPointSelect                                       2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 10
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (11) _ISR                                                 1     1      0     366
;!                                              9 COMMON     1     1      0
;!                            _INT_ISR
;!                            _IOC_ISR
;!                           _TMR0_ISR
;! ---------------------------------------------------------------------------------
;! (12) _TMR0_ISR                                            4     4      0     236
;!                                              5 COMMON     4     4      0
;!                i1_setLoad_StatusOff
;! ---------------------------------------------------------------------------------
;! (13) i1_setLoad_StatusOff                                 3     1      2     236
;!                                              2 COMMON     3     1      2
;!                  i1_LoadPointSelect
;! ---------------------------------------------------------------------------------
;! (14) i1_LoadPointSelect                                   2     2      0      22
;!                                              0 COMMON     2     2      0
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
;!     _setBuz_Initialization
;!       _setBuz_Enable
;!         _BuzPointSelect
;!   _Buzzer_Main
;!     _setBuz_Main
;!       _BuzPointSelect
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
;!         _BuzPointSelect
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
;!     _setDimmerLights_Initialization
;!       _DimmerLightsPointSelect
;!       _getPercentValue
;!         ___awtoft
;!           ___ftpack
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftdiv
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!         ___fttol
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!   _DimmerLights_Main
;!     _DimmerLights_Close
;!       _getDimmerLights_StatusFlag
;!         _DimmerLightsPointSelect
;!       _getDimmer_Detect
;!         _DimmerPointSelect
;!       _setDimmer_Detect
;!         _DimmerPointSelect
;!       _setLoad_GO
;!         _LoadPointSelect
;!     _setDimmerLights_Main
;!       _DimmerLightsPointSelect
;!       _getDimmerLights_Trigger
;!         _DimmerLightsPointSelect
;!       _setBuz
;!         _BuzPointSelect
;!         ___wmul
;!       _setDimmerLights
;!         _DimmerLightsPointSelect
;!         _setDimmer_Detect
;!           _DimmerPointSelect
;!         _setLED
;!           _LedPointSelect
;!         _setLoad_Count
;!         _setLoad_GO
;!           _LoadPointSelect
;!         _setLoad_LightsStatus
;!           _LoadPointSelect
;!         _setLoad_StatusOn
;!           _LoadPointSelect
;!       _setDimmerLights_Adj
;!         _DimmerLightsPointSelect
;!         _setLoad_StatusOff
;!           _LoadPointSelect
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
;!     _setLoad_Initialization
;!       _LoadPointSelect
;!       _setLoad_AH_AL_Restore
;!   _Load_Main
;!     _setLoad_Main
;!       _LoadPointSelect
;!       ___lwdiv
;!       ___wmul
;!       _getPF_Safe
;!         _PowerFaultPointSelect
;!       _getTemp_Safe
;!         _TempPointSelect
;!       _setDimmerLights_Clear
;!         _DimmerLightsPointSelect
;!       _setLoad_AH_AL_Restore
;!       _setLoad_ERROR
;!         _DimmerLights_ERROR
;!           _getDimmerLights_StatusFlag
;!             _DimmerLightsPointSelect
;!           _getDimmer_LoadERROR
;!             _DimmerPointSelect
;!           _getDimmer_PFERROR
;!             _DimmerPointSelect
;!           _getDimmer_TempERROR
;!             _DimmerPointSelect
;!           _setBuz
;!             _BuzPointSelect
;!             ___wmul
;!           _setDimmerLights_ERROR
;!             _DimmerLightsPointSelect
;!             _setLED
;!               _LedPointSelect
;!             _setLoad_StatusOff
;!               _LoadPointSelect
;!             _setRFSW_Status
;!               _RfSWPointSelect
;!             _setSw_Status
;!               _SwPointSelect
;!           _setDimmerLights_TriggerERROR
;!             _DimmerLightsPointSelect
;!         _LoadPointSelect
;!         _setDimmer_LoadERROR
;!           _DimmerPointSelect
;!         _setLED
;!           _LedPointSelect
;!         _setRF_Enable
;!           _CC2500_WriteCommand
;!             _CC2500_WriteByte
;!           _RF_RxDisable
;!             _CC2500_WriteCommand
;!               _CC2500_WriteByte
;!             _RfPointSelect
;!             _setINT_GO
;!           _RfPointSelect
;!         _setSw_Enable
;!           _SwPointSelect
;!   _MainT
;!     _setBuz
;!       _BuzPointSelect
;!       ___wmul
;!     _setLED
;!       _LedPointSelect
;!     _setLoad_Enable
;!       _LoadPointSelect
;!     _setRF_Enable
;!       _CC2500_WriteCommand
;!         _CC2500_WriteByte
;!       _RF_RxDisable
;!         _CC2500_WriteCommand
;!           _CC2500_WriteByte
;!         _RfPointSelect
;!         _setINT_GO
;!       _RfPointSelect
;!     _setSw_Enable
;!       _SwPointSelect
;!     _setTemp_Enable
;!       _TempPointSelect
;!   _MainT_Initialization
;!   _Mcu_Initialization
;!     _ADC_Set
;!     _INT_Set
;!     _IOC_Set
;!     _IO_Set
;!     _TMR0_Set
;!   _PowerFault_Initialization
;!     _setPowerFault_Initialization
;!       _PowerFaultPointSelect
;!   _PowerFault_Main
;!     _setPowerFault_Main
;!       _PowerFaultPointSelect
;!       _getLoad_Safe
;!         _LoadPointSelect
;!       _getTemp_Safe
;!         _TempPointSelect
;!       _setPowerFault_ERROR
;!         _DimmerLights_ERROR
;!           _getDimmerLights_StatusFlag
;!             _DimmerLightsPointSelect
;!           _getDimmer_LoadERROR
;!             _DimmerPointSelect
;!           _getDimmer_PFERROR
;!             _DimmerPointSelect
;!           _getDimmer_TempERROR
;!             _DimmerPointSelect
;!           _setBuz
;!             _BuzPointSelect
;!             ___wmul
;!           _setDimmerLights_ERROR
;!             _DimmerLightsPointSelect
;!             _setLED
;!               _LedPointSelect
;!             _setLoad_StatusOff
;!               _LoadPointSelect
;!             _setRFSW_Status
;!               _RfSWPointSelect
;!             _setSw_Status
;!               _SwPointSelect
;!           _setDimmerLights_TriggerERROR
;!             _DimmerLightsPointSelect
;!         _PowerFaultPointSelect
;!         _setDimmer_PFERROR
;!           _DimmerPointSelect
;!         _setLED
;!           _LedPointSelect
;!         _setRF_Enable
;!           _CC2500_WriteCommand
;!             _CC2500_WriteByte
;!           _RF_RxDisable
;!             _CC2500_WriteCommand
;!               _CC2500_WriteByte
;!             _RfPointSelect
;!             _setINT_GO
;!           _RfPointSelect
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
;!             _BuzPointSelect
;!             ___wmul
;!           _setDimmerLights
;!             _DimmerLightsPointSelect
;!             _setDimmer_Detect
;!               _DimmerPointSelect
;!             _setLED
;!               _LedPointSelect
;!             _setLoad_Count
;!             _setLoad_GO
;!               _LoadPointSelect
;!             _setLoad_LightsStatus
;!               _LoadPointSelect
;!             _setLoad_StatusOn
;!               _LoadPointSelect
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
;!               _BuzPointSelect
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
;!             _BuzPointSelect
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
;!         _BuzPointSelect
;!         ___wmul
;!       _setRF_Learn
;!         _RfPointSelect
;!   _Temp_Initialization
;!     _setTemp_Initialization
;!       _TempPointSelect
;!   _Temp_Main
;!     _setTemp_Main
;!       _TempPointSelect
;!       _getLoad_Safe
;!         _LoadPointSelect
;!       _getPF_Safe
;!         _PowerFaultPointSelect
;!       _setOverTemp_ERROR
;!         _DimmerLights_ERROR
;!           _getDimmerLights_StatusFlag
;!             _DimmerLightsPointSelect
;!           _getDimmer_LoadERROR
;!             _DimmerPointSelect
;!           _getDimmer_PFERROR
;!             _DimmerPointSelect
;!           _getDimmer_TempERROR
;!             _DimmerPointSelect
;!           _setBuz
;!             _BuzPointSelect
;!             ___wmul
;!           _setDimmerLights_ERROR
;!             _DimmerLightsPointSelect
;!             _setLED
;!               _LedPointSelect
;!             _setLoad_StatusOff
;!               _LoadPointSelect
;!             _setRFSW_Status
;!               _RfSWPointSelect
;!             _setSw_Status
;!               _SwPointSelect
;!           _setDimmerLights_TriggerERROR
;!             _DimmerLightsPointSelect
;!         _TempPointSelect
;!         _setDimmer_TempERROR
;!           _DimmerPointSelect
;!         _setLED
;!           _LedPointSelect
;!         _setRF_Enable
;!           _CC2500_WriteCommand
;!             _CC2500_WriteByte
;!           _RF_RxDisable
;!             _CC2500_WriteCommand
;!               _CC2500_WriteByte
;!             _RfPointSelect
;!             _setINT_GO
;!           _RfPointSelect
;!         _setSw_Enable
;!           _SwPointSelect
;!   _getLoad_AD
;!     _LoadPointSelect
;!     _getAD
;!   _getPowerFault_AD
;!     _PowerFaultPointSelect
;!     _getAD
;!   _getTemp_AD
;!     _TempPointSelect
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
;!       i1_LoadPointSelect
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             3F0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       1       1        7.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      A       E       2      100.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     4D      50       5      100.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BANK1               50      0      4F       7       98.8%
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
;!BANK3               50      0      2E      11       57.5%
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
;!ABS                  0      0     195      20        0.0%
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
;!DATA                 0      0     195      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 7 in file "G:\Program\PIC\Source_File\main.c"
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
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
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
	file	"G:\Program\PIC\Source_File\main.c"
	line	7
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"G:\Program\PIC\Source_File\main.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	9
	
l8997:	
;main.c: 9: MainT_Initialization();
	fcall	_MainT_Initialization
	line	10
	
l8999:	
;main.c: 10: Mcu_Initialization();
	fcall	_Mcu_Initialization
	line	11
	
l9001:	
;main.c: 11: Flash_Memory_Initialization();
	fcall	_Flash_Memory_Initialization
	line	12
	
l9003:	
;main.c: 12: LED_Initialization();
	fcall	_LED_Initialization
	line	13
	
l9005:	
;main.c: 13: Buzzer_Initialization();
	fcall	_Buzzer_Initialization
	line	16
	
l9007:	
;main.c: 15: ;;
;main.c: 16: Temp_Initialization();
	fcall	_Temp_Initialization
	line	17
	
l9009:	
;main.c: 17: Load_Initialization();
	fcall	_Load_Initialization
	line	18
	
l9011:	
;main.c: 18: PowerFault_Initialization();
	fcall	_PowerFault_Initialization
	line	19
	
l9013:	
;main.c: 19: DelayOff_Initialization();
	fcall	_DelayOff_Initialization
	line	21
	
l9015:	
;main.c: 21: DimmerLights_Initialization();
	fcall	_DimmerLights_Initialization
	line	26
	
l9017:	
;main.c: 22: ;;
;main.c: 23: ;;
;main.c: 24: ;;
;main.c: 26: Switch_Initialization();
	fcall	_Switch_Initialization
	line	27
;main.c: 27: RF_Initialization();
	fcall	_RF_Initialization
	line	28
	
l9019:	
;main.c: 28: CC2500_PowerOnInitial();
	fcall	_CC2500_PowerOnInitial
	goto	l9021
	line	30
;main.c: 30: while(1)
	
l1292:	
	line	32
	
l9021:	
;main.c: 31: {
;main.c: 32: if(TMain->PowerON)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u8191
	goto	u8190
u8191:
	goto	l9025
u8190:
	line	39
	
l9023:	
;main.c: 33: {
;main.c: 35: ;;
;main.c: 39: getLoad_AD(1,0x05);
	movlw	(05h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(getLoad_AD@channel)
	movlw	(01h)
	fcall	_getLoad_AD
	line	43
;main.c: 43: getTemp_AD(1,0x09);
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(getTemp_AD@channel)
	movlw	(01h)
	fcall	_getTemp_AD
	line	47
;main.c: 47: getPowerFault_AD(1,0x11);
	movlw	(011h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(getPowerFault_AD@channel)
	movlw	(01h)
	fcall	_getPowerFault_AD
	line	59
;main.c: 59: Buzzer_Main();
	fcall	_Buzzer_Main
	goto	l9025
	line	61
	
l1293:	
	line	63
	
l9025:	
;main.c: 61: }
;main.c: 63: if(TMain->T0_Timerout)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u8201
	goto	u8200
u8201:
	goto	l9021
u8200:
	line	65
	
l9027:	
;main.c: 64: {
;main.c: 65: TMain->T0_Timerout = 0;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	66
	
l9029:	
;main.c: 66: MainT();
	fcall	_MainT
	line	67
	
l9031:	
;main.c: 67: if(TMain->PowerON)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u8211
	goto	u8210
u8211:
	goto	l9021
u8210:
	line	69
	
l9033:	
;main.c: 68: {
;main.c: 69: Flash_Memory_Main();
	fcall	_Flash_Memory_Main
	line	71
;main.c: 71: LED_Main();
	fcall	_LED_Main
	line	74
	
l9035:	
;main.c: 73: ;;
;main.c: 74: Temp_Main();
	fcall	_Temp_Main
	line	75
	
l9037:	
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
	
l9039:	
;main.c: 85: DelayOff_Main();
	fcall	_DelayOff_Main
	goto	l9021
	line	86
	
l1295:	
	goto	l9021
	line	87
	
l1294:	
	goto	l9021
	line	88
	
l1296:	
	line	30
	goto	l9021
	
l1297:	
	line	89
	
l1298:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_getTemp_AD

;; *************** function _getTemp_AD *****************
;; Defined at:
;;		line 45 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;;  channel         1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_TempPointSelect
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	45
global __ptext1
__ptext1:	;psect for function _getTemp_AD
psect	text1
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	45
	global	__size_of_getTemp_AD
	__size_of_getTemp_AD	equ	__end_of_getTemp_AD-_getTemp_AD
	
_getTemp_AD:	
;incstack = 0
	opt	stack 10
; Regs used in _getTemp_AD: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;getTemp_AD@temp stored from wreg
	movlb 0	; select bank0
	movwf	(getTemp_AD@temp)
	line	47
	
l8677:	
;OverTemperature_B1.c: 47: TempPointSelect(temp);
	movf	(getTemp_AD@temp),w
	fcall	_TempPointSelect
	line	48
	
l8679:	
;OverTemperature_B1.c: 48: if(Temp->ADtoGO)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u7581
	goto	u7580
u7581:
	goto	l2113
u7580:
	line	50
	
l8681:	
;OverTemperature_B1.c: 49: {
;OverTemperature_B1.c: 50: Temp->ADRES=getAD(channel,0xf0);
	movlw	(0F0h)
	movlb 0	; select bank0
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
	line	51
	
l8683:	
;OverTemperature_B1.c: 51: if(Temp->ADH[0] < Temp->ADRES)
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
	goto	u7595
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u7595:
	skipnc
	goto	u7591
	goto	u7590
u7591:
	goto	l8687
u7590:
	line	53
	
l8685:	
;OverTemperature_B1.c: 52: {
;OverTemperature_B1.c: 53: Temp->ADH[0]=Temp->ADRES;
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
	line	54
;OverTemperature_B1.c: 54: }
	goto	l2113
	line	55
	
l2110:	
	
l8687:	
;OverTemperature_B1.c: 55: else if(Temp->ADH[1] < Temp->ADRES)
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
	goto	u7605
	movf	0+(??_getTemp_AD+0)+0,w
	subwf	0+(??_getTemp_AD+2)+0,w
u7605:
	skipnc
	goto	u7601
	goto	u7600
u7601:
	goto	l2113
u7600:
	line	57
	
l8689:	
;OverTemperature_B1.c: 56: {
;OverTemperature_B1.c: 57: Temp->ADH[1]=Temp->ADRES;
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
	goto	l2113
	line	58
	
l2112:	
	goto	l2113
	line	59
	
l2111:	
	goto	l2113
	
l2109:	
	line	60
	
l2113:	
	return
	opt stack 0
GLOBAL	__end_of_getTemp_AD
	__end_of_getTemp_AD:
	signat	_getTemp_AD,8312
	global	_getPowerFault_AD

;; *************** function _getPowerFault_AD *****************
;; Defined at:
;;		line 52 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  pf              1    wreg     unsigned char 
;;  channel         1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pf              1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_PowerFaultPointSelect
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	52
global __ptext2
__ptext2:	;psect for function _getPowerFault_AD
psect	text2
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	52
	global	__size_of_getPowerFault_AD
	__size_of_getPowerFault_AD	equ	__end_of_getPowerFault_AD-_getPowerFault_AD
	
_getPowerFault_AD:	
;incstack = 0
	opt	stack 10
; Regs used in _getPowerFault_AD: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;getPowerFault_AD@pf stored from wreg
	movlb 0	; select bank0
	movwf	(getPowerFault_AD@pf)
	line	54
	
l8691:	
;PowerFault_B1.c: 54: PowerFaultPointSelect(pf);
	movf	(getPowerFault_AD@pf),w
	fcall	_PowerFaultPointSelect
	line	55
	
l8693:	
;PowerFault_B1.c: 55: if(PF->ADtoGO)
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u7611
	goto	u7610
u7611:
	goto	l2307
u7610:
	line	57
	
l8695:	
;PowerFault_B1.c: 56: {
;PowerFault_B1.c: 57: PF->ADRES=getAD(channel,0xf0);
	movlw	(0F0h)
	movlb 0	; select bank0
	movwf	(??_getPowerFault_AD+0)+0
	movf	(??_getPowerFault_AD+0)+0,w
	movwf	(getAD@adcon1)
	movf	(getPowerFault_AD@channel),w
	fcall	_getAD
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(0+(?_getAD)),w
	movwi	[0]fsr1
	movf	(1+(?_getAD)),w
	movwi	[1]fsr1
	line	58
	
l8697:	
;PowerFault_B1.c: 58: if(PF->AD < PF->ADRES)
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_getPowerFault_AD+0)+0
	moviw	[1]fsr1
	movwf	(??_getPowerFault_AD+0)+0+1
	movlb 1	; select bank1
	incf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_getPowerFault_AD+2)+0
	moviw	[1]fsr1
	movwf	(??_getPowerFault_AD+2)+0+1
	movf	1+(??_getPowerFault_AD+0)+0,w
	subwf	1+(??_getPowerFault_AD+2)+0,w
	skipz
	goto	u7625
	movf	0+(??_getPowerFault_AD+0)+0,w
	subwf	0+(??_getPowerFault_AD+2)+0,w
u7625:
	skipnc
	goto	u7621
	goto	u7620
u7621:
	goto	l2307
u7620:
	line	60
	
l8699:	
;PowerFault_B1.c: 59: {
;PowerFault_B1.c: 60: PF->AD=PF->ADRES;
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	incf	(_PF)^080h,w
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	goto	l2307
	line	61
	
l2306:	
	goto	l2307
	line	62
	
l2305:	
	line	63
	
l2307:	
	return
	opt stack 0
GLOBAL	__end_of_getPowerFault_AD
	__end_of_getPowerFault_AD:
	signat	_getPowerFault_AD,8312
	global	_getLoad_AD

;; *************** function _getLoad_AD *****************
;; Defined at:
;;		line 38 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  channel         1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1   10[BANK0 ] unsigned char 
;;  i               1   12[BANK0 ] unsigned char 
;;  j               1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LoadPointSelect
;;		_getAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	38
global __ptext3
__ptext3:	;psect for function _getLoad_AD
psect	text3
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	38
	global	__size_of_getLoad_AD
	__size_of_getLoad_AD	equ	__end_of_getLoad_AD-_getLoad_AD
	
_getLoad_AD:	
;incstack = 0
	opt	stack 10
; Regs used in _getLoad_AD: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;getLoad_AD@load stored from wreg
	movlb 0	; select bank0
	movwf	(getLoad_AD@load)
	line	40
	
l8637:	
;OverLoad_B1.c: 40: char i=0,j=0;
	clrf	(getLoad_AD@i)
	clrf	(getLoad_AD@j)
	line	41
	
l8639:	
;OverLoad_B1.c: 41: LoadPointSelect(load);
	movf	(getLoad_AD@load),w
	fcall	_LoadPointSelect
	line	42
	
l8641:	
;OverLoad_B1.c: 42: if(Load->ADtoGO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u7501
	goto	u7500
u7501:
	goto	l1873
u7500:
	line	44
	
l8643:	
;OverLoad_B1.c: 43: {
;OverLoad_B1.c: 44: Load->ADRES=getAD(channel,0xc0);
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
	line	45
	
l8645:	
;OverLoad_B1.c: 45: for(i=0 ; i<5 ;i++)
	clrf	(getLoad_AD@i)
	
l8647:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u7511
	goto	u7510
u7511:
	goto	l8651
u7510:
	goto	l8661
	
l8649:	
	goto	l8661
	line	46
	
l1866:	
	line	47
	
l8651:	
;OverLoad_B1.c: 46: {
;OverLoad_B1.c: 47: if(Load->AH[i] < Load->ADRES)
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
	goto	u7525
	movf	0+(??_getLoad_AD+0)+0,w
	subwf	0+(??_getLoad_AD+3)+0,w
u7525:
	skipnc
	goto	u7521
	goto	u7520
u7521:
	goto	l8657
u7520:
	line	49
	
l8653:	
;OverLoad_B1.c: 48: {
;OverLoad_B1.c: 49: Load->AH[i]=Load->ADRES;
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
	line	50
	
l8655:	
;OverLoad_B1.c: 50: j=1;
	clrf	(getLoad_AD@j)
	incf	(getLoad_AD@j),f
	line	51
;OverLoad_B1.c: 51: break;
	goto	l8661
	line	52
	
l1868:	
	line	45
	
l8657:	
	movlw	(01h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	addwf	(getLoad_AD@i),f
	
l8659:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u7531
	goto	u7530
u7531:
	goto	l8651
u7530:
	goto	l8661
	
l1867:	
	line	54
	
l8661:	
;OverLoad_B1.c: 52: }
;OverLoad_B1.c: 53: }
;OverLoad_B1.c: 54: if(j == 0)
	movf	(getLoad_AD@j),f
	skipz
	goto	u7541
	goto	u7540
u7541:
	goto	l1873
u7540:
	line	56
	
l8663:	
;OverLoad_B1.c: 55: {
;OverLoad_B1.c: 56: for(i=0 ; i<5 ;i++)
	clrf	(getLoad_AD@i)
	
l8665:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u7551
	goto	u7550
u7551:
	goto	l8669
u7550:
	goto	l1873
	
l8667:	
	goto	l1873
	line	57
	
l1870:	
	line	58
	
l8669:	
;OverLoad_B1.c: 57: {
;OverLoad_B1.c: 58: if(Load->AL[i] > Load->ADRES)
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
	goto	u7565
	movf	0+(??_getLoad_AD+1)+0,w
	subwf	0+(??_getLoad_AD+3)+0,w
u7565:
	skipnc
	goto	u7561
	goto	u7560
u7561:
	goto	l8673
u7560:
	line	60
	
l8671:	
;OverLoad_B1.c: 59: {
;OverLoad_B1.c: 60: Load->AL[i]=Load->ADRES;
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
	line	61
;OverLoad_B1.c: 61: break;
	goto	l1873
	line	62
	
l1872:	
	line	56
	
l8673:	
	movlw	(01h)
	movwf	(??_getLoad_AD+0)+0
	movf	(??_getLoad_AD+0)+0,w
	addwf	(getLoad_AD@i),f
	
l8675:	
	movlw	(05h)
	subwf	(getLoad_AD@i),w
	skipc
	goto	u7571
	goto	u7570
u7571:
	goto	l8669
u7570:
	goto	l1873
	
l1871:	
	goto	l1873
	line	64
	
l1869:	
	goto	l1873
	line	65
	
l1865:	
	line	66
	
l1873:	
	return
	opt stack 0
GLOBAL	__end_of_getLoad_AD
	__end_of_getLoad_AD:
	signat	_getLoad_AD,8312
	global	_getAD

;; *************** function _getAD *****************
;; Defined at:
;;		line 309 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	309
global __ptext4
__ptext4:	;psect for function _getAD
psect	text4
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
	
l8077:	
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
	
l8079:	
;MCU_16f1518_B1.c: 313: GO_nDONE=1;
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	314
;MCU_16f1518_B1.c: 314: while(GO_nDONE);
	goto	l1663
	
l1664:	
	
l1663:	
	btfsc	(1257/8)^080h,(1257)&7	;volatile
	goto	u6631
	goto	u6630
u6631:
	goto	l1663
u6630:
	goto	l8081
	
l1665:	
	line	315
	
l8081:	
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

	goto	l1666
	
l8083:	
	line	316
	
l1666:	
	return
	opt stack 0
GLOBAL	__end_of_getAD
	__end_of_getAD:
	signat	_getAD,8314
	global	_Temp_Main

;; *************** function _Temp_Main *****************
;; Defined at:
;;		line 15 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
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
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	15
global __ptext5
__ptext5:	;psect for function _Temp_Main
psect	text5
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	15
	global	__size_of_Temp_Main
	__size_of_Temp_Main	equ	__end_of_Temp_Main-_Temp_Main
	
_Temp_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _Temp_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	18
	
l8747:	
;OverTemperature_B1.c: 18: setTemp_Main(1);
	movlw	(01h)
	fcall	_setTemp_Main
	line	20
	
l2094:	
	return
	opt stack 0
GLOBAL	__end_of_Temp_Main
	__end_of_Temp_Main:
	signat	_Temp_Main,88
	global	_setTemp_Main

;; *************** function _setTemp_Main *****************
;; Defined at:
;;		line 68 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1   18[BANK0 ] unsigned char 
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
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_TempPointSelect
;;		_getLoad_Safe
;;		_getPF_Safe
;;		_setOverTemp_ERROR
;; This function is called by:
;;		_Temp_Main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	68
global __ptext6
__ptext6:	;psect for function _setTemp_Main
psect	text6
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	68
	global	__size_of_setTemp_Main
	__size_of_setTemp_Main	equ	__end_of_setTemp_Main-_setTemp_Main
	
_setTemp_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _setTemp_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;setTemp_Main@temp stored from wreg
	movlb 0	; select bank0
	movwf	(setTemp_Main@temp)
	line	70
	
l8235:	
;OverTemperature_B1.c: 70: TempPointSelect(temp);
	movf	(setTemp_Main@temp),w
	fcall	_TempPointSelect
	line	71
	
l8237:	
;OverTemperature_B1.c: 71: if(Temp->Enable)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u6881
	goto	u6880
u6881:
	goto	l2135
u6880:
	line	73
	
l8239:	
;OverTemperature_B1.c: 72: {
;OverTemperature_B1.c: 73: if(Temp->ADtoGO == 0)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u6891
	goto	u6890
u6891:
	goto	l8253
u6890:
	line	75
	
l8241:	
;OverTemperature_B1.c: 74: {
;OverTemperature_B1.c: 75: Temp->Time++;
	incf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	76
	
l8243:	
;OverTemperature_B1.c: 76: if(Temp->Time >= 500)
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
	goto	u6901
	goto	u6900
u6901:
	goto	l2135
u6900:
	line	78
	
l8245:	
;OverTemperature_B1.c: 77: {
;OverTemperature_B1.c: 78: if(getLoad_Safe(1) && getPF_Safe(1))
	movlw	(01h)
	fcall	_getLoad_Safe
	xorlw	0&0ffh
	skipnz
	goto	u6911
	goto	u6910
u6911:
	goto	l8251
u6910:
	
l8247:	
	movlw	(01h)
	fcall	_getPF_Safe
	xorlw	0&0ffh
	skipnz
	goto	u6921
	goto	u6920
u6921:
	goto	l8251
u6920:
	line	80
	
l8249:	
;OverTemperature_B1.c: 79: {
;OverTemperature_B1.c: 80: Temp->Time=0;
	incf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	81
;OverTemperature_B1.c: 81: Temp->ADtoGO=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	82
;OverTemperature_B1.c: 82: Temp->Safe=0;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	83
;OverTemperature_B1.c: 83: }
	goto	l2135
	line	84
	
l2122:	
	line	86
	
l8251:	
;OverTemperature_B1.c: 84: else
;OverTemperature_B1.c: 85: {
;OverTemperature_B1.c: 86: Temp->Time=1000;
	incf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(03E8h)
	movwi	[0]fsr1
	movlw	high(03E8h)
	movwi	[1]fsr1
	goto	l2135
	line	87
	
l2123:	
	goto	l2135
	line	88
	
l2121:	
	line	89
;OverTemperature_B1.c: 87: }
;OverTemperature_B1.c: 88: }
;OverTemperature_B1.c: 89: }
	goto	l2135
	line	90
	
l2120:	
	line	92
	
l8253:	
;OverTemperature_B1.c: 90: else
;OverTemperature_B1.c: 91: {
;OverTemperature_B1.c: 92: Temp->Time++;
	incf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	93
	
l8255:	
;OverTemperature_B1.c: 93: if(Temp->Time >= 4)
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
	goto	u6931
	goto	u6930
u6931:
	goto	l2135
u6930:
	line	95
	
l8257:	
;OverTemperature_B1.c: 94: {
;OverTemperature_B1.c: 95: Temp->Time=0;
	incf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	96
;OverTemperature_B1.c: 96: Temp->ADtoGO=0;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	97
	
l8259:	
;OverTemperature_B1.c: 97: Temp->AD=Temp->ADH[1];
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
	line	98
	
l8261:	
;OverTemperature_B1.c: 98: if(Temp->ERROR)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u6941
	goto	u6940
u6941:
	goto	l8275
u6940:
	line	100
	
l8263:	
;OverTemperature_B1.c: 99: {
;OverTemperature_B1.c: 100: if(Temp->AD >= 540)
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setTemp_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setTemp_Main+0)+0+1
	movlw	high(021Ch)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(021Ch)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipc
	goto	u6951
	goto	u6950
u6951:
	goto	l8273
u6950:
	line	102
	
l8265:	
;OverTemperature_B1.c: 101: {
;OverTemperature_B1.c: 102: Temp->Count++;
	movlw	(01h)
	movwf	(??_setTemp_Main+0)+0
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+0)+0,w
	addwf	indf1,f
	line	103
	
l8267:	
;OverTemperature_B1.c: 103: if(Temp->Count >= 3)
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u6961
	goto	u6960
u6961:
	goto	l8287
u6960:
	line	105
	
l8269:	
;OverTemperature_B1.c: 104: {
;OverTemperature_B1.c: 105: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	106
	
l8271:	
;OverTemperature_B1.c: 106: setOverTemp_ERROR(1,0);
	clrf	(setOverTemp_ERROR@command)
	movlw	(01h)
	fcall	_setOverTemp_ERROR
	goto	l8287
	line	107
	
l2128:	
	line	108
;OverTemperature_B1.c: 107: }
;OverTemperature_B1.c: 108: }
	goto	l8287
	line	109
	
l2127:	
	line	111
	
l8273:	
;OverTemperature_B1.c: 109: else
;OverTemperature_B1.c: 110: {
;OverTemperature_B1.c: 111: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l8287
	line	112
	
l2129:	
	line	113
;OverTemperature_B1.c: 112: }
;OverTemperature_B1.c: 113: }
	goto	l8287
	line	114
	
l2126:	
	line	116
	
l8275:	
;OverTemperature_B1.c: 114: else
;OverTemperature_B1.c: 115: {
;OverTemperature_B1.c: 116: if(Temp->AD <= 475)
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
	movlw	high(01DCh)
	subwf	1+(??_setTemp_Main+0)+0,w
	movlw	low(01DCh)
	skipnz
	subwf	0+(??_setTemp_Main+0)+0,w
	skipnc
	goto	u6971
	goto	u6970
u6971:
	goto	l8285
u6970:
	line	118
	
l8277:	
;OverTemperature_B1.c: 117: {
;OverTemperature_B1.c: 118: Temp->Count++;
	movlw	(01h)
	movwf	(??_setTemp_Main+0)+0
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setTemp_Main+0)+0,w
	addwf	indf1,f
	line	119
	
l8279:	
;OverTemperature_B1.c: 119: if(Temp->Count >= 3)
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u6981
	goto	u6980
u6981:
	goto	l8287
u6980:
	line	121
	
l8281:	
;OverTemperature_B1.c: 120: {
;OverTemperature_B1.c: 121: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	122
	
l8283:	
;OverTemperature_B1.c: 122: setOverTemp_ERROR(1,1);
	clrf	(setOverTemp_ERROR@command)
	incf	(setOverTemp_ERROR@command),f
	movlw	(01h)
	fcall	_setOverTemp_ERROR
	goto	l8287
	line	123
	
l2132:	
	line	124
;OverTemperature_B1.c: 123: }
;OverTemperature_B1.c: 124: }
	goto	l8287
	line	125
	
l2131:	
	line	127
	
l8285:	
;OverTemperature_B1.c: 125: else
;OverTemperature_B1.c: 126: {
;OverTemperature_B1.c: 127: Temp->Count=0;
	movf	(_Temp),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l8287
	line	128
	
l2133:	
	goto	l8287
	line	129
	
l2130:	
	line	130
	
l8287:	
;OverTemperature_B1.c: 128: }
;OverTemperature_B1.c: 129: }
;OverTemperature_B1.c: 130: if(Temp->ERROR == 0)
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u6991
	goto	u6990
u6991:
	goto	l8291
u6990:
	line	132
	
l8289:	
;OverTemperature_B1.c: 131: {
;OverTemperature_B1.c: 132: Temp->Safe=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l8291
	line	133
	
l2134:	
	line	134
	
l8291:	
;OverTemperature_B1.c: 133: }
;OverTemperature_B1.c: 134: Product->Data[24]=Temp->AD >> 8;
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
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	018h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setTemp_Main+2)+0,w
	movwf	indf1
	line	135
	
l8293:	
;OverTemperature_B1.c: 135: Product->Data[25]=Temp->AD;
	movf	(_Temp),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTemp_Main+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	019h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setTemp_Main+0)+0,w
	movwf	indf1
	line	136
	
l8295:	
;OverTemperature_B1.c: 136: Temp->ADH[0]=0;
	movf	(_Temp),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	137
	
l8297:	
;OverTemperature_B1.c: 137: Temp->ADH[1]=0;
	movf	(_Temp),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l2135
	line	138
	
l2125:	
	goto	l2135
	line	139
	
l2124:	
	goto	l2135
	line	140
	
l2119:	
	line	141
	
l2135:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Main
	__end_of_setTemp_Main:
	signat	_setTemp_Main,4216
	global	_setOverTemp_ERROR

;; *************** function _setOverTemp_ERROR *****************
;; Defined at:
;;		line 143 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;;  command         1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1   14[BANK0 ] unsigned char 
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
;;		_DimmerLights_ERROR
;;		_TempPointSelect
;;		_setDimmer_TempERROR
;;		_setLED
;;		_setRF_Enable
;;		_setSw_Enable
;; This function is called by:
;;		_setTemp_Main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	143
global __ptext7
__ptext7:	;psect for function _setOverTemp_ERROR
psect	text7
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	143
	global	__size_of_setOverTemp_ERROR
	__size_of_setOverTemp_ERROR	equ	__end_of_setOverTemp_ERROR-_setOverTemp_ERROR
	
_setOverTemp_ERROR:	
;incstack = 0
	opt	stack 5
; Regs used in _setOverTemp_ERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setOverTemp_ERROR@temp stored from wreg
	movlb 0	; select bank0
	movwf	(setOverTemp_ERROR@temp)
	line	145
	
l7603:	
;OverTemperature_B1.c: 145: TempPointSelect(temp);
	movf	(setOverTemp_ERROR@temp),w
	fcall	_TempPointSelect
	line	146
	
l7605:	
;OverTemperature_B1.c: 146: if(command)
	movlb 0	; select bank0
	movf	(setOverTemp_ERROR@command),w
	skipz
	goto	u5980
	goto	l7621
u5980:
	line	148
	
l7607:	
;OverTemperature_B1.c: 147: {
;OverTemperature_B1.c: 148: Temp->ERROR=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	149
	
l7609:	
;OverTemperature_B1.c: 149: setDimmer_TempERROR(1,1);
	clrf	(setDimmer_TempERROR@command)
	incf	(setDimmer_TempERROR@command),f
	movlw	(01h)
	fcall	_setDimmer_TempERROR
	line	150
	
l7611:	
;OverTemperature_B1.c: 150: DimmerLights_ERROR();
	fcall	_DimmerLights_ERROR
	line	152
	
l7613:	
;OverTemperature_B1.c: 152: setLED(99,11);
	movlw	(0Bh)
	movlb 0	; select bank0
	movwf	(??_setOverTemp_ERROR+0)+0
	movf	(??_setOverTemp_ERROR+0)+0,w
	movwf	(setLED@command)
	movlw	(063h)
	fcall	_setLED
	line	155
	
l7615:	
;OverTemperature_B1.c: 155: setSw_Enable(1,0);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	movlw	(01h)
	fcall	_setSw_Enable
	line	158
	
l7617:	
;OverTemperature_B1.c: 158: setSw_Enable(2,0);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	movlw	(02h)
	fcall	_setSw_Enable
	line	165
	
l7619:	
;OverTemperature_B1.c: 165: setRF_Enable(1,0);
	movlb 0	; select bank0
	clrf	(setRF_Enable@command)
	movlw	(01h)
	fcall	_setRF_Enable
	line	167
;OverTemperature_B1.c: 167: }
	goto	l2141
	line	168
	
l2138:	
	
l7621:	
;OverTemperature_B1.c: 168: else if(command == 0)
	movlb 0	; select bank0
	movf	(setOverTemp_ERROR@command),f
	skipz
	goto	u5991
	goto	u5990
u5991:
	goto	l2141
u5990:
	line	170
	
l7623:	
;OverTemperature_B1.c: 169: {
;OverTemperature_B1.c: 170: Temp->ERROR=0;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	171
	
l7625:	
;OverTemperature_B1.c: 171: setDimmer_TempERROR(1,0);
	clrf	(setDimmer_TempERROR@command)
	movlw	(01h)
	fcall	_setDimmer_TempERROR
	line	172
	
l7627:	
;OverTemperature_B1.c: 172: Temp->Safe=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	173
;OverTemperature_B1.c: 173: setLED(99,10);
	movlw	(0Ah)
	movlb 0	; select bank0
	movwf	(??_setOverTemp_ERROR+0)+0
	movf	(??_setOverTemp_ERROR+0)+0,w
	movwf	(setLED@command)
	movlw	(063h)
	fcall	_setLED
	line	177
;OverTemperature_B1.c: 177: setSw_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	incf	(setSw_Enable@command),f
	movlw	(01h)
	fcall	_setSw_Enable
	line	181
;OverTemperature_B1.c: 181: setSw_Enable(2,1);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	incf	(setSw_Enable@command),f
	movlw	(02h)
	fcall	_setSw_Enable
	line	189
;OverTemperature_B1.c: 189: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setRF_Enable@command)
	incf	(setRF_Enable@command),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l2141
	line	191
	
l2140:	
	goto	l2141
	line	192
	
l2139:	
	
l2141:	
	return
	opt stack 0
GLOBAL	__end_of_setOverTemp_ERROR
	__end_of_setOverTemp_ERROR:
	signat	_setOverTemp_ERROR,8312
	global	_setDimmer_TempERROR

;; *************** function _setDimmer_TempERROR *****************
;; Defined at:
;;		line 531 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    3[BANK0 ] unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_setOverTemp_ERROR
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	531
global __ptext8
__ptext8:	;psect for function _setDimmer_TempERROR
psect	text8
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	531
	global	__size_of_setDimmer_TempERROR
	__size_of_setDimmer_TempERROR	equ	__end_of_setDimmer_TempERROR-_setDimmer_TempERROR
	
_setDimmer_TempERROR:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmer_TempERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmer_TempERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmer_TempERROR@dimmer)
	line	533
	
l7231:	
;Dimmer_B1.c: 533: DimmerPointSelect(dimmer);
	movf	(setDimmer_TempERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	534
	
l7233:	
;Dimmer_B1.c: 534: Dimmer->TempERROR=command;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDimmer_TempERROR@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	535
	
l900:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmer_TempERROR
	__end_of_setDimmer_TempERROR:
	signat	_setDimmer_TempERROR,8312
	global	_Temp_Initialization

;; *************** function _Temp_Initialization *****************
;; Defined at:
;;		line 22 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
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
;;		_setTemp_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	22
global __ptext9
__ptext9:	;psect for function _Temp_Initialization
psect	text9
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	22
	global	__size_of_Temp_Initialization
	__size_of_Temp_Initialization	equ	__end_of_Temp_Initialization-_Temp_Initialization
	
_Temp_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _Temp_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	25
	
l8621:	
;OverTemperature_B1.c: 25: setTemp_Initialization(1);
	movlw	(01h)
	fcall	_setTemp_Initialization
	line	27
	
l2097:	
	return
	opt stack 0
GLOBAL	__end_of_Temp_Initialization
	__end_of_Temp_Initialization:
	signat	_Temp_Initialization,88
	global	_setTemp_Initialization

;; *************** function _setTemp_Initialization *****************
;; Defined at:
;;		line 62 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1    1[BANK0 ] unsigned char 
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
;;		_TempPointSelect
;; This function is called by:
;;		_Temp_Initialization
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	62
global __ptext10
__ptext10:	;psect for function _setTemp_Initialization
psect	text10
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	62
	global	__size_of_setTemp_Initialization
	__size_of_setTemp_Initialization	equ	__end_of_setTemp_Initialization-_setTemp_Initialization
	
_setTemp_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _setTemp_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setTemp_Initialization@temp stored from wreg
	movlb 0	; select bank0
	movwf	(setTemp_Initialization@temp)
	line	64
	
l8299:	
;OverTemperature_B1.c: 64: TempPointSelect(temp);
	movf	(setTemp_Initialization@temp),w
	fcall	_TempPointSelect
	line	65
	
l8301:	
;OverTemperature_B1.c: 65: Temp->Safe=1;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	66
	
l2116:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Initialization
	__end_of_setTemp_Initialization:
	signat	_setTemp_Initialization,4216
	global	_Switch_Main

;; *************** function _Switch_Main *****************
;; Defined at:
;;		line 62 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text11,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	62
global __ptext11
__ptext11:	;psect for function _Switch_Main
psect	text11
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	62
	global	__size_of_Switch_Main
	__size_of_Switch_Main	equ	__end_of_Switch_Main-_Switch_Main
	
_Switch_Main:	
;incstack = 0
	opt	stack 7
; Regs used in _Switch_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	65
	
l8753:	
;Switch_B1.c: 65: setSw_Main(1);
	movlw	(01h)
	fcall	_setSw_Main
	line	69
;Switch_B1.c: 69: setSw_Main(2);
	movlw	(02h)
	fcall	_setSw_Main
	line	76
	
l2811:	
	return
	opt stack 0
GLOBAL	__end_of_Switch_Main
	__end_of_Switch_Main:
	signat	_Switch_Main,88
	global	_setSw_Main

;; *************** function _setSw_Main *****************
;; Defined at:
;;		line 98 in file "G:\Program\PIC\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   15[BANK0 ] unsigned char 
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
psect	text12,local,class=CODE,delta=2,merge=1
	line	98
global __ptext12
__ptext12:	;psect for function _setSw_Main
psect	text12
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	98
	global	__size_of_setSw_Main
	__size_of_setSw_Main	equ	__end_of_setSw_Main-_setSw_Main
	
_setSw_Main:	
;incstack = 0
	opt	stack 7
; Regs used in _setSw_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setSw_Main@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Main@sw)
	line	100
	
l8431:	
;Switch_B1.c: 100: SwPointSelect(sw);
	movf	(setSw_Main@sw),w
	fcall	_SwPointSelect
	line	117
	
l8433:	
;Switch_B1.c: 117: if(sw == 1)
	movlb 0	; select bank0
	movf	(setSw_Main@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u7271
	goto	u7270
u7271:
	goto	l8443
u7270:
	line	119
	
l8435:	
;Switch_B1.c: 118: {
;Switch_B1.c: 119: Sw->Touch=(RA0 || RB1)?1:0;
	clrf	(_setSw_Main$4431)
	incf	(_setSw_Main$4431),f
	btfsc	(96/8),(96)&7	;volatile
	goto	u7281
	goto	u7280
u7281:
	goto	l8441
u7280:
	
l8437:	
	btfsc	(105/8),(105)&7	;volatile
	goto	u7291
	goto	u7290
u7291:
	goto	l8441
u7290:
	
l8439:	
	clrf	(_setSw_Main$4431)
	goto	l8441
	
l2825:	
	
l8441:	
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_setSw_Main$4431),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	120
;Switch_B1.c: 120: }
	goto	l8453
	line	121
	
l2823:	
	
l8443:	
;Switch_B1.c: 121: else if(sw == 2)
	movf	(setSw_Main@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u7301
	goto	u7300
u7301:
	goto	l8453
u7300:
	line	123
	
l8445:	
;Switch_B1.c: 122: {
;Switch_B1.c: 123: Sw->Touch=(RA6 || RA4)?1:0;
	clrf	(_setSw_Main$4432)
	incf	(_setSw_Main$4432),f
	btfsc	(102/8),(102)&7	;volatile
	goto	u7311
	goto	u7310
u7311:
	goto	l8451
u7310:
	
l8447:	
	btfsc	(100/8),(100)&7	;volatile
	goto	u7321
	goto	u7320
u7321:
	goto	l8451
u7320:
	
l8449:	
	clrf	(_setSw_Main$4432)
	goto	l8451
	
l2829:	
	
l8451:	
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_setSw_Main$4432),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	goto	l8453
	line	124
	
l2827:	
	goto	l8453
	line	131
	
l2826:	
	
l8453:	
;Switch_B1.c: 124: }
;Switch_B1.c: 131: if(Sw->Enable)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u7331
	goto	u7330
u7331:
	goto	l2846
u7330:
	line	133
	
l8455:	
;Switch_B1.c: 132: {
;Switch_B1.c: 133: if(Sw->Touch)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u7341
	goto	u7340
u7341:
	goto	l8501
u7340:
	line	135
	
l8457:	
;Switch_B1.c: 134: {
;Switch_B1.c: 135: if(!Sw->Debounce)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u7351
	goto	u7350
u7351:
	goto	l8471
u7350:
	line	137
	
l8459:	
;Switch_B1.c: 136: {
;Switch_B1.c: 137: Sw->DebounceTime++;
	movlw	(01h)
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	138
	
l8461:	
;Switch_B1.c: 138: if(Sw->DebounceTime >= 5)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(05h)
	subwf	indf1,w
	skipc
	goto	u7361
	goto	u7360
u7361:
	goto	l2846
u7360:
	line	140
	
l8463:	
;Switch_B1.c: 139: {
;Switch_B1.c: 140: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	141
	
l8465:	
;Switch_B1.c: 141: Sw->Debounce=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	142
	
l8467:	
;Switch_B1.c: 142: setBuz(1,1,100);
	clrf	(setBuz@count)
	incf	(setBuz@count),f
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	145
	
l8469:	
;Switch_B1.c: 145: Sw_DimmerOnFunc(sw);
	movlb 0	; select bank0
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerOnFunc
	goto	l2846
	line	148
	
l2833:	
	line	149
;Switch_B1.c: 148: }
;Switch_B1.c: 149: }
	goto	l2846
	line	150
	
l2832:	
	line	152
	
l8471:	
;Switch_B1.c: 150: else
;Switch_B1.c: 151: {
;Switch_B1.c: 152: if(!Sw->Hold1)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u7371
	goto	u7370
u7371:
	goto	l8481
u7370:
	line	154
	
l8473:	
;Switch_B1.c: 153: {
;Switch_B1.c: 154: Sw->Hold1Time++;
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
	line	155
	
l8475:	
;Switch_B1.c: 155: if(Sw->Hold1Time >= 150)
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
	goto	u7381
	goto	u7380
u7381:
	goto	l2846
u7380:
	line	157
	
l8477:	
;Switch_B1.c: 156: {
;Switch_B1.c: 157: Sw->Hold1Time=0;
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	158
;Switch_B1.c: 158: Sw->Hold1=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	161
	
l8479:	
;Switch_B1.c: 161: Sw_DimmerAdjFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerAdjFunc
	goto	l2846
	line	164
	
l2836:	
	line	165
;Switch_B1.c: 164: }
;Switch_B1.c: 165: }
	goto	l2846
	line	166
	
l2835:	
	line	168
	
l8481:	
;Switch_B1.c: 166: else
;Switch_B1.c: 167: {
;Switch_B1.c: 168: if(!Sw->Hold2)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u7391
	goto	u7390
u7391:
	goto	l8491
u7390:
	line	170
	
l8483:	
;Switch_B1.c: 169: {
;Switch_B1.c: 170: Sw->Hold2Time++;
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
	line	171
	
l8485:	
;Switch_B1.c: 171: if(Sw->Hold2Time >= 150)
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
	goto	u7401
	goto	u7400
u7401:
	goto	l2846
u7400:
	line	173
	
l8487:	
;Switch_B1.c: 172: {
;Switch_B1.c: 173: Sw->Hold2Time=0;
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	174
;Switch_B1.c: 174: Sw->Hold2=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	176
	
l8489:	
;Switch_B1.c: 176: setRF_Learn(1,1);
	clrf	(setRF_Learn@command)
	incf	(setRF_Learn@command),f
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l2846
	line	184
	
l2839:	
	line	185
;Switch_B1.c: 184: }
;Switch_B1.c: 185: }
	goto	l2846
	line	186
	
l2838:	
	line	188
	
l8491:	
;Switch_B1.c: 186: else
;Switch_B1.c: 187: {
;Switch_B1.c: 188: if(!Sw->Hold3)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u7411
	goto	u7410
u7411:
	goto	l2846
u7410:
	line	190
	
l8493:	
;Switch_B1.c: 189: {
;Switch_B1.c: 190: Sw->Hold3Time++;
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
	line	191
	
l8495:	
;Switch_B1.c: 191: if(Sw->Hold3Time >= 300)
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
	goto	u7421
	goto	u7420
u7421:
	goto	l2846
u7420:
	line	193
	
l8497:	
;Switch_B1.c: 192: {
;Switch_B1.c: 193: Sw->Hold3Time=0;
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	194
;Switch_B1.c: 194: Sw->Hold3=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	196
	
l8499:	
;Switch_B1.c: 196: setRF_Learn(1,0);
	clrf	(setRF_Learn@command)
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l2846
	line	198
	
l2842:	
	goto	l2846
	line	199
	
l2841:	
	goto	l2846
	line	200
	
l2840:	
	goto	l2846
	line	201
	
l2837:	
	goto	l2846
	line	202
	
l2834:	
	line	203
;Switch_B1.c: 198: }
;Switch_B1.c: 199: }
;Switch_B1.c: 200: }
;Switch_B1.c: 201: }
;Switch_B1.c: 202: }
;Switch_B1.c: 203: }
	goto	l2846
	line	204
	
l2831:	
	line	206
	
l8501:	
;Switch_B1.c: 204: else
;Switch_B1.c: 205: {
;Switch_B1.c: 206: if(Sw->Debounce)
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u7431
	goto	u7430
u7431:
	goto	l2846
u7430:
	line	208
	
l8503:	
;Switch_B1.c: 207: {
;Switch_B1.c: 208: Sw->DebounceTime++;
	movlw	(01h)
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	209
	
l8505:	
;Switch_B1.c: 209: if(Sw->DebounceTime >= 5)
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(05h)
	subwf	indf1,w
	skipc
	goto	u7441
	goto	u7440
u7441:
	goto	l2846
u7440:
	line	211
	
l8507:	
;Switch_B1.c: 210: {
;Switch_B1.c: 211: Sw->DebounceTime=0;
	movf	(_Sw),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	212
	
l8509:	
;Switch_B1.c: 212: Sw->Debounce=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	213
	
l8511:	
;Switch_B1.c: 213: Sw->Hold1Time=0;
	movf	(_Sw),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	214
	
l8513:	
;Switch_B1.c: 214: Sw->Hold1=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	215
	
l8515:	
;Switch_B1.c: 215: Sw->Hold2Time=0;
	movf	(_Sw),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	216
	
l8517:	
;Switch_B1.c: 216: Sw->Hold2=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	217
	
l8519:	
;Switch_B1.c: 217: Sw->Hold3Time=0;
	movf	(_Sw),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	218
	
l8521:	
;Switch_B1.c: 218: Sw->Hold3=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	219
	
l8523:	
;Switch_B1.c: 219: setRF_Learn(1,0);
	clrf	(setRF_Learn@command)
	movlw	(01h)
	fcall	_setRF_Learn
	line	222
	
l8525:	
;Switch_B1.c: 222: Sw_DimmerOffFunc(sw);
	movlb 0	; select bank0
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerOffFunc
	goto	l2846
	line	225
	
l2845:	
	goto	l2846
	line	226
	
l2844:	
	goto	l2846
	line	227
	
l2843:	
	goto	l2846
	line	228
	
l2830:	
	line	229
	
l2846:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Main
	__end_of_setSw_Main:
	signat	_setSw_Main,4216
	global	_setRF_Learn

;; *************** function _setRF_Learn *****************
;; Defined at:
;;		line 31 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text13,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	31
global __ptext13
__ptext13:	;psect for function _setRF_Learn
psect	text13
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
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
	
l7661:	
;RF_Control_B1.c: 33: RfPointSelect(rf);
	movf	(setRF_Learn@rf),w
	fcall	_RfPointSelect
	line	34
	
l7663:	
;RF_Control_B1.c: 34: RF->Learn=command;
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRF_Learn@command),w
	bcf	indf1,6
	skipz
	bsf	indf1,6
	line	35
	
l2520:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Learn
	__end_of_setRF_Learn:
	signat	_setRF_Learn,8312
	global	_Sw_DimmerOnFunc

;; *************** function _Sw_DimmerOnFunc *****************
;; Defined at:
;;		line 231 in file "G:\Program\PIC\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    6[BANK0 ] unsigned char 
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
;;		_setDimmerLights_Switch
;;		_setDimmerLights_Trigger
;;		_setRFSW_Status
;;		_setRF_DimmerLights
;;		_setTxData
;; This function is called by:
;;		_setSw_Main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	231
global __ptext14
__ptext14:	;psect for function _Sw_DimmerOnFunc
psect	text14
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	231
	global	__size_of_Sw_DimmerOnFunc
	__size_of_Sw_DimmerOnFunc	equ	__end_of_Sw_DimmerOnFunc-_Sw_DimmerOnFunc
	
_Sw_DimmerOnFunc:	
;incstack = 0
	opt	stack 7
; Regs used in _Sw_DimmerOnFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerOnFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerOnFunc@sw)
	line	233
	
l7705:	
;Switch_B1.c: 233: Sw->Flag=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,7
	line	234
;Switch_B1.c: 234: if(!Sw->Status)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u6121
	goto	u6120
u6121:
	goto	l7719
u6120:
	line	236
	
l7707:	
;Switch_B1.c: 235: {
;Switch_B1.c: 236: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	237
	
l7709:	
;Switch_B1.c: 237: setRFSW_Status(sw,1);
	clrf	(setRFSW_Status@command)
	incf	(setRFSW_Status@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRFSW_Status
	line	239
	
l7711:	
;Switch_B1.c: 239: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	240
	
l7713:	
;Switch_B1.c: 240: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	incf	(setDimmerLights_Switch@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	242
	
l7715:	
;Switch_B1.c: 242: setRF_DimmerLights(sw,Sw->Status);
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
	line	243
	
l7717:	
;Switch_B1.c: 243: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	244
;Switch_B1.c: 244: }
	goto	l2851
	line	245
	
l2849:	
	line	247
	
l7719:	
;Switch_B1.c: 245: else
;Switch_B1.c: 246: {
;Switch_B1.c: 247: Sw->Status=0;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	line	248
	
l7721:	
;Switch_B1.c: 248: setRFSW_Status(sw,Sw->Status);
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
	goto	l2851
	line	249
	
l2850:	
	line	250
	
l2851:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerOnFunc
	__end_of_Sw_DimmerOnFunc:
	signat	_Sw_DimmerOnFunc,4216
	global	_Sw_DimmerOffFunc

;; *************** function _Sw_DimmerOffFunc *****************
;; Defined at:
;;		line 252 in file "G:\Program\PIC\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    9[BANK0 ] unsigned char 
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
psect	text15,local,class=CODE,delta=2,merge=1
	line	252
global __ptext15
__ptext15:	;psect for function _Sw_DimmerOffFunc
psect	text15
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	252
	global	__size_of_Sw_DimmerOffFunc
	__size_of_Sw_DimmerOffFunc	equ	__end_of_Sw_DimmerOffFunc-_Sw_DimmerOffFunc
	
_Sw_DimmerOffFunc:	
;incstack = 0
	opt	stack 7
; Regs used in _Sw_DimmerOffFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerOffFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerOffFunc@sw)
	line	254
	
l7733:	
;Switch_B1.c: 254: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u6141
	goto	u6140
u6141:
	goto	l2858
u6140:
	line	256
	
l7735:	
;Switch_B1.c: 255: {
;Switch_B1.c: 256: Sw->Flag=0;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,7
	line	257
;Switch_B1.c: 257: if(Sw->Status)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u6151
	goto	u6150
u6151:
	goto	l7751
u6150:
	line	259
	
l7737:	
;Switch_B1.c: 258: {
;Switch_B1.c: 259: if(Sw->Adj)
	incf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u6161
	goto	u6160
u6161:
	goto	l2858
u6160:
	line	261
	
l7739:	
;Switch_B1.c: 260: {
;Switch_B1.c: 261: Sw->Adj=0;
	incf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	262
	
l7741:	
;Switch_B1.c: 262: setDimmerLights_TriggerAdj(sw,1);
	clrf	(setDimmerLights_TriggerAdj@command)
	incf	(setDimmerLights_TriggerAdj@command),f
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	263
	
l7743:	
;Switch_B1.c: 263: setDimmerLights_AdjGo(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_AdjGo@command)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	line	265
	
l7745:	
;Switch_B1.c: 265: Product->Data[17]=Product->Data[26+sw];
	movlb 0	; select bank0
	movf	(Sw_DimmerOffFunc@sw),w
	addlw	01Ah
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_Sw_DimmerOffFunc+0)+0
	movf	0+(??_Sw_DimmerOffFunc+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Sw_DimmerOffFunc+1)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Sw_DimmerOffFunc+1)+0,w
	movwf	indf1
	line	266
	
l7747:	
;Switch_B1.c: 266: setRF_DimmerLights(sw,Sw->Status);
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
	line	267
	
l7749:	
;Switch_B1.c: 267: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l2858
	line	269
	
l2856:	
	line	270
;Switch_B1.c: 269: }
;Switch_B1.c: 270: }
	goto	l2858
	line	271
	
l2855:	
	line	273
	
l7751:	
;Switch_B1.c: 271: else
;Switch_B1.c: 272: {
;Switch_B1.c: 273: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	274
;Switch_B1.c: 274: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	276
;Switch_B1.c: 276: setRF_DimmerLights(sw,Sw->Status);
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
	line	277
;Switch_B1.c: 277: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(setDelayOff_GO@command)
	clrf	(setDelayOff_GO@value)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDelayOff_GO
	line	278
;Switch_B1.c: 278: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l2858
	line	279
	
l2857:	
	goto	l2858
	line	280
	
l2854:	
	line	281
	
l2858:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerOffFunc
	__end_of_Sw_DimmerOffFunc:
	signat	_Sw_DimmerOffFunc,4216
	global	_Sw_DimmerAdjFunc

;; *************** function _Sw_DimmerAdjFunc *****************
;; Defined at:
;;		line 283 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text16,local,class=CODE,delta=2,merge=1
	line	283
global __ptext16
__ptext16:	;psect for function _Sw_DimmerAdjFunc
psect	text16
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	283
	global	__size_of_Sw_DimmerAdjFunc
	__size_of_Sw_DimmerAdjFunc	equ	__end_of_Sw_DimmerAdjFunc-_Sw_DimmerAdjFunc
	
_Sw_DimmerAdjFunc:	
;incstack = 0
	opt	stack 7
; Regs used in _Sw_DimmerAdjFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerAdjFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerAdjFunc@sw)
	line	285
	
l7723:	
;Switch_B1.c: 285: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,7
	goto	u6131
	goto	u6130
u6131:
	goto	l2862
u6130:
	line	287
	
l7725:	
;Switch_B1.c: 286: {
;Switch_B1.c: 287: Sw->Adj=1;
	incf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	288
;Switch_B1.c: 288: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	289
	
l7727:	
;Switch_B1.c: 289: setRFSW_Status(sw,1);
	clrf	(setRFSW_Status@command)
	incf	(setRFSW_Status@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setRFSW_Status
	line	291
	
l7729:	
;Switch_B1.c: 291: setDimmerLights_TriggerAdj(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_TriggerAdj@command)
	incf	(setDimmerLights_TriggerAdj@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	292
	
l7731:	
;Switch_B1.c: 292: setDimmerLights_AdjGo(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_AdjGo@command)
	incf	(setDimmerLights_AdjGo@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	goto	l2862
	line	294
	
l2861:	
	line	295
	
l2862:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerAdjFunc
	__end_of_Sw_DimmerAdjFunc:
	signat	_Sw_DimmerAdjFunc,4216
	global	_setDimmerLights_TriggerAdj

;; *************** function _setDimmerLights_TriggerAdj *****************
;; Defined at:
;;		line 451 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	451
global __ptext17
__ptext17:	;psect for function _setDimmerLights_TriggerAdj
psect	text17
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	451
	global	__size_of_setDimmerLights_TriggerAdj
	__size_of_setDimmerLights_TriggerAdj	equ	__end_of_setDimmerLights_TriggerAdj-_setDimmerLights_TriggerAdj
	
_setDimmerLights_TriggerAdj:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_TriggerAdj: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_TriggerAdj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_TriggerAdj@lights)
	line	453
	
l7227:	
;Dimmer_B1.c: 453: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerAdj@lights),w
	fcall	_DimmerLightsPointSelect
	line	454
	
l7229:	
;Dimmer_B1.c: 454: DimmerLights->TriggerAdj=command;
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
	line	455
	
l881:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_TriggerAdj
	__end_of_setDimmerLights_TriggerAdj:
	signat	_setDimmerLights_TriggerAdj,8312
	global	_setDimmerLights_AdjGo

;; *************** function _setDimmerLights_AdjGo *****************
;; Defined at:
;;		line 441 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
	line	441
global __ptext18
__ptext18:	;psect for function _setDimmerLights_AdjGo
psect	text18
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	441
	global	__size_of_setDimmerLights_AdjGo
	__size_of_setDimmerLights_AdjGo	equ	__end_of_setDimmerLights_AdjGo-_setDimmerLights_AdjGo
	
_setDimmerLights_AdjGo:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_AdjGo: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_AdjGo@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjGo@lights)
	line	443
	
l7223:	
;Dimmer_B1.c: 443: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjGo@lights),w
	fcall	_DimmerLightsPointSelect
	line	444
	
l7225:	
;Dimmer_B1.c: 444: DimmerLights->AdjGo=command;
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
	line	445
	
l875:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_AdjGo
	__end_of_setDimmerLights_AdjGo:
	signat	_setDimmerLights_AdjGo,8312
	global	_Switch_Initialization

;; *************** function _Switch_Initialization *****************
;; Defined at:
;;		line 38 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text19,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	38
global __ptext19
__ptext19:	;psect for function _Switch_Initialization
psect	text19
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	38
	global	__size_of_Switch_Initialization
	__size_of_Switch_Initialization	equ	__end_of_Switch_Initialization-_Switch_Initialization
	
_Switch_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _Switch_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	40
	
l8627:	
;Switch_B1.c: 40: TouchPower();
	fcall	_TouchPower
	line	42
	
l8629:	
;Switch_B1.c: 42: WPUB1=0;
	movlb 4	; select bank4
	bcf	(4201/8)^0200h,(4201)&7	;volatile
	line	51
	
l8631:	
;Switch_B1.c: 51: setSw_Initialization(1);
	movlw	(01h)
	fcall	_setSw_Initialization
	line	54
	
l8633:	
;Switch_B1.c: 54: setSw_Initialization(2);
	movlw	(02h)
	fcall	_setSw_Initialization
	line	60
	
l2808:	
	return
	opt stack 0
GLOBAL	__end_of_Switch_Initialization
	__end_of_Switch_Initialization:
	signat	_Switch_Initialization,88
	global	_setSw_Initialization

;; *************** function _setSw_Initialization *****************
;; Defined at:
;;		line 78 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text20,local,class=CODE,delta=2,merge=1
	line	78
global __ptext20
__ptext20:	;psect for function _setSw_Initialization
psect	text20
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
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
	
l8429:	
;Switch_B1.c: 80: setLED(sw,1);
	clrf	(setLED@command)
	incf	(setLED@command),f
	movf	(setSw_Initialization@sw),w
	fcall	_setLED
	line	84
	
l2814:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Initialization
	__end_of_setSw_Initialization:
	signat	_setSw_Initialization,4216
	global	_TouchPower

;; *************** function _TouchPower *****************
;; Defined at:
;;		line 9 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text21,local,class=CODE,delta=2,merge=1
	line	9
global __ptext21
__ptext21:	;psect for function _TouchPower
psect	text21
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	9
	global	__size_of_TouchPower
	__size_of_TouchPower	equ	__end_of_TouchPower-_TouchPower
	
_TouchPower:	
;incstack = 0
	opt	stack 10
; Regs used in _TouchPower: []
	line	11
	
l8427:	
;Switch_B1.c: 11: while(RC5 == 0)
	goto	l2796
	
l2797:	
	line	12
;Switch_B1.c: 12: RC5=1;
	bsf	(117/8),(117)&7	;volatile
	
l2796:	
	line	11
	movlb 0	; select bank0
	btfss	(117/8),(117)&7	;volatile
	goto	u7261
	goto	u7260
u7261:
	goto	l2797
u7260:
	goto	l2799
	
l2798:	
	line	13
	
l2799:	
	return
	opt stack 0
GLOBAL	__end_of_TouchPower
	__end_of_TouchPower:
	signat	_TouchPower,88
	global	_RF_Main

;; *************** function _RF_Main *****************
;; Defined at:
;;		line 24 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text22,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	24
global __ptext22
__ptext22:	;psect for function _RF_Main
psect	text22
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	24
	global	__size_of_RF_Main
	__size_of_RF_Main	equ	__end_of_RF_Main-_RF_Main
	
_RF_Main:	
;incstack = 0
	opt	stack 2
; Regs used in _RF_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	27
	
l8755:	
;RF_Control_B1.c: 27: setRF_Main(1);
	movlw	(01h)
	fcall	_setRF_Main
	line	29
	
l2517:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Main
	__end_of_RF_Main:
	signat	_RF_Main,88
	global	_setRF_Main

;; *************** function _setRF_Main *****************
;; Defined at:
;;		line 58 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text23,local,class=CODE,delta=2,merge=1
	line	58
global __ptext23
__ptext23:	;psect for function _setRF_Main
psect	text23
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
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
	
l8367:	
;RF_Control_B1.c: 60: RfPointSelect(rf);
	movf	(setRF_Main@rf),w
	fcall	_RfPointSelect
	line	61
	
l8369:	
;RF_Control_B1.c: 61: if(RF->Enable)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u7141
	goto	u7140
u7141:
	goto	l2545
u7140:
	line	68
	
l8371:	
;RF_Control_B1.c: 62: {
;RF_Control_B1.c: 68: RF->Key=((RA0 || RB1 || RA6 || RA4 ) && RF->Learn == 0)?1:0;
	movlb 0	; select bank0
	clrf	(_setRF_Main$4076)
	
l8373:	
	btfsc	(96/8),(96)&7	;volatile
	goto	u7151
	goto	u7150
u7151:
	goto	l8381
u7150:
	
l8375:	
	btfsc	(105/8),(105)&7	;volatile
	goto	u7161
	goto	u7160
u7161:
	goto	l8381
u7160:
	
l8377:	
	btfsc	(102/8),(102)&7	;volatile
	goto	u7171
	goto	u7170
u7171:
	goto	l8381
u7170:
	
l8379:	
	btfss	(100/8),(100)&7	;volatile
	goto	u7181
	goto	u7180
u7181:
	goto	l8385
u7180:
	goto	l8381
	
l6411:	
	
l8381:	
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u7191
	goto	u7190
u7191:
	goto	l8385
u7190:
	
l8383:	
	movlb 0	; select bank0
	clrf	(_setRF_Main$4076)
	incf	(_setRF_Main$4076),f
	goto	l8385
	
l2534:	
	
l8385:	
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(_setRF_Main$4076),w
	bcf	indf1,7
	skipz
	bsf	indf1,7
	line	75
;RF_Control_B1.c: 75: if(RF->Key)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u7201
	goto	u7200
u7201:
	goto	l8389
u7200:
	line	77
	
l8387:	
;RF_Control_B1.c: 76: {
;RF_Control_B1.c: 77: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	78
;RF_Control_B1.c: 78: }
	goto	l2545
	line	79
	
l2535:	
	line	81
	
l8389:	
;RF_Control_B1.c: 79: else
;RF_Control_B1.c: 80: {
;RF_Control_B1.c: 81: if(RF->ReceiveGO)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u7211
	goto	u7210
u7211:
	goto	l8399
u7210:
	line	83
	
l8391:	
;RF_Control_B1.c: 82: {
;RF_Control_B1.c: 83: RF->ReceiveGO=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	84
	
l8393:	
;RF_Control_B1.c: 84: CC2500_RxData();
	fcall	_CC2500_RxData
	line	90
	
l8395:	
;RF_Control_B1.c: 90: getRxData(1);
	movlw	(01h)
	fcall	_getRxData
	line	91
	
l8397:	
;RF_Control_B1.c: 91: RB5=~RB5;
	movlw	1<<((109)&7)
	movlb 0	; select bank0
	xorwf	((109)/8),f
	line	93
;RF_Control_B1.c: 93: }
	goto	l2545
	line	94
	
l2537:	
	line	96
	
l8399:	
;RF_Control_B1.c: 94: else
;RF_Control_B1.c: 95: {
;RF_Control_B1.c: 96: if(RF->TransceiveGO)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u7221
	goto	u7220
u7221:
	goto	l8417
u7220:
	line	98
	
l8401:	
;RF_Control_B1.c: 97: {
;RF_Control_B1.c: 98: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	99
	
l8403:	
;RF_Control_B1.c: 99: if(RF->Debounce == 0)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u7231
	goto	u7230
u7231:
	goto	l8413
u7230:
	line	101
	
l8405:	
;RF_Control_B1.c: 100: {
;RF_Control_B1.c: 101: RF->DebounceTime++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_setRF_Main+0)+0
	movlb 1	; select bank1
	incf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_Main+0)+0,w
	addwf	indf1,f
	line	102
	
l8407:	
;RF_Control_B1.c: 102: if(RF->DebounceTime == 25)
	movlb 1	; select bank1
	incf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	019h&0ffh
	skipz
	goto	u7241
	goto	u7240
u7241:
	goto	l2545
u7240:
	line	104
	
l8409:	
;RF_Control_B1.c: 103: {
;RF_Control_B1.c: 104: RF->DebounceTime=0;
	incf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	105
	
l8411:	
;RF_Control_B1.c: 105: RF->Debounce=1;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	goto	l2545
	line	106
	
l2541:	
	line	107
;RF_Control_B1.c: 106: }
;RF_Control_B1.c: 107: }
	goto	l2545
	line	108
	
l2540:	
	line	110
	
l8413:	
;RF_Control_B1.c: 108: else
;RF_Control_B1.c: 109: {
;RF_Control_B1.c: 110: RF->Debounce=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	111
;RF_Control_B1.c: 111: RF->TransceiveGO=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	112
	
l8415:	
;RF_Control_B1.c: 112: CC2500_TxData();
	fcall	_CC2500_TxData
	goto	l2545
	line	113
	
l2542:	
	line	114
;RF_Control_B1.c: 113: }
;RF_Control_B1.c: 114: }
	goto	l2545
	line	115
	
l2539:	
	line	117
	
l8417:	
;RF_Control_B1.c: 115: else
;RF_Control_B1.c: 116: {
;RF_Control_B1.c: 117: if(RF->RxStatus == 0 && 1)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u7251
	goto	u7250
u7251:
	goto	l2545
u7250:
	line	119
	
l8419:	
;RF_Control_B1.c: 118: {
;RF_Control_B1.c: 119: RF->RxStatus=1;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	120
	
l8421:	
;RF_Control_B1.c: 120: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	121
	
l8423:	
;RF_Control_B1.c: 121: CC2500_WriteCommand(0x34);
	movlw	(034h)
	fcall	_CC2500_WriteCommand
	line	122
	
l8425:	
;RF_Control_B1.c: 122: setINT_GO(1);
	movlw	(01h)
	fcall	_setINT_GO
	goto	l2545
	line	123
	
l2544:	
	goto	l2545
	line	124
	
l2543:	
	goto	l2545
	line	125
	
l2538:	
	goto	l2545
	line	126
	
l2536:	
	goto	l2545
	line	127
	
l2532:	
	line	128
	
l2545:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Main
	__end_of_setRF_Main:
	signat	_setRF_Main,4216
	global	_getRxData

;; *************** function _getRxData *****************
;; Defined at:
;;		line 206 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text24,local,class=CODE,delta=2,merge=1
	line	206
global __ptext24
__ptext24:	;psect for function _getRxData
psect	text24
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	206
	global	__size_of_getRxData
	__size_of_getRxData	equ	__end_of_getRxData-_getRxData
	
_getRxData:	
;incstack = 0
	opt	stack 2
; Regs used in _getRxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;getRxData@rf stored from wreg
	movlb 0	; select bank0
	movwf	(getRxData@rf)
	line	209
	
l7665:	
;RF_Control_B1.c: 208: unsigned char i;
;RF_Control_B1.c: 209: RfPointSelect(rf);
	movf	(getRxData@rf),w
	fcall	_RfPointSelect
	line	210
	
l7667:	
;RF_Control_B1.c: 210: if(RF->Learn)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,6
	goto	u6011
	goto	u6010
u6011:
	goto	l7675
u6010:
	line	212
	
l7669:	
;RF_Control_B1.c: 211: {
;RF_Control_B1.c: 212: if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64)
	movf	(_RF_Data)^080h,f
	skipz
	goto	u6021
	goto	u6020
u6021:
	goto	l2577
u6020:
	
l7671:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	064h&0ffh
	skipz
	goto	u6031
	goto	u6030
u6031:
	goto	l2577
u6030:
	line	214
	
l7673:	
;RF_Control_B1.c: 213: {
;RF_Control_B1.c: 214: setLog_Code(1);
	movlw	(01h)
	fcall	_setLog_Code
	goto	l2577
	line	215
	
l2567:	
	line	216
;RF_Control_B1.c: 215: }
;RF_Control_B1.c: 216: }
	goto	l2577
	line	217
	
l2566:	
	line	219
	
l7675:	
;RF_Control_B1.c: 217: else
;RF_Control_B1.c: 218: {
;RF_Control_B1.c: 219: if(RF_Data[0] == 0x00 && RF_Data[1] == 0x02)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u6041
	goto	u6040
u6041:
	goto	l2577
u6040:
	
l7677:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u6051
	goto	u6050
u6051:
	goto	l2577
u6050:
	line	221
	
l7679:	
;RF_Control_B1.c: 220: {
;RF_Control_B1.c: 221: if(RF_Data[12] == 0xff && RF_Data[13] == 0xff && RF_Data[14] == 0xff)
	movf	0+(_RF_Data)^080h+0Ch,w
	xorlw	0FFh&0ffh
	skipz
	goto	u6061
	goto	u6060
u6061:
	goto	l7687
u6060:
	
l7681:	
	movf	0+(_RF_Data)^080h+0Dh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u6071
	goto	u6070
u6071:
	goto	l7687
u6070:
	
l7683:	
	movf	0+(_RF_Data)^080h+0Eh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u6081
	goto	u6080
u6081:
	goto	l7687
u6080:
	line	223
	
l7685:	
;RF_Control_B1.c: 222: {
;RF_Control_B1.c: 223: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	224
;RF_Control_B1.c: 224: }
	goto	l2577
	line	225
	
l2570:	
	line	227
	
l7687:	
;RF_Control_B1.c: 225: else
;RF_Control_B1.c: 226: {
;RF_Control_B1.c: 227: if(RF_Data[12] == Product->Data[12] && RF_Data[13] == Product->Data[13] && RF_Data[14] == Product->Data[14])
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(_RF_Data)^080h+0Ch,w
	xorwf	indf1,w
	skipz
	goto	u6091
	goto	u6090
u6091:
	goto	l2577
u6090:
	
l7689:	
	movf	(_Product)^080h,w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(_RF_Data)^080h+0Dh,w
	xorwf	indf1,w
	skipz
	goto	u6101
	goto	u6100
u6101:
	goto	l2577
u6100:
	
l7691:	
	movf	(_Product)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	0+(_RF_Data)^080h+0Eh,w
	xorwf	indf1,w
	skipz
	goto	u6111
	goto	u6110
u6111:
	goto	l2577
u6110:
	line	229
	
l7693:	
;RF_Control_B1.c: 228: {
;RF_Control_B1.c: 229: setControl_Lights_Table(1);
	movlw	(01h)
	fcall	_setControl_Lights_Table
	goto	l2577
	line	230
	
l2572:	
	goto	l2577
	line	231
	
l2571:	
	line	232
;RF_Control_B1.c: 230: }
;RF_Control_B1.c: 231: }
;RF_Control_B1.c: 232: }
	goto	l2577
	line	233
	
l2569:	
	goto	l2577
	
l7695:	
	goto	l2577
	
l7697:	
	goto	l2577
	line	236
	
l7699:	
;RF_Control_B1.c: 234: {
;RF_Control_B1.c: 235: ;
;RF_Control_B1.c: 236: }
	goto	l2577
	line	237
	
l2574:	
	goto	l2577
	
l7701:	
	goto	l2577
	
l7703:	
	goto	l2577
	line	240
;RF_Control_B1.c: 238: {
;RF_Control_B1.c: 239: ;
	
l2576:	
	goto	l2577
	line	245
	
l2575:	
	goto	l2577
	
l2573:	
	goto	l2577
	
l2568:	
	line	246
	
l2577:	
	return
	opt stack 0
GLOBAL	__end_of_getRxData
	__end_of_getRxData:
	signat	_getRxData,4216
	global	_setLog_Code

;; *************** function _setLog_Code *****************
;; Defined at:
;;		line 248 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1   12[BANK0 ] unsigned char 
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
psect	text25,local,class=CODE,delta=2,merge=1
	line	248
global __ptext25
__ptext25:	;psect for function _setLog_Code
psect	text25
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	248
	global	__size_of_setLog_Code
	__size_of_setLog_Code	equ	__end_of_setLog_Code-_setLog_Code
	
_setLog_Code:	
;incstack = 0
	opt	stack 6
; Regs used in _setLog_Code: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLog_Code@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setLog_Code@rf)
	line	250
	
l7275:	
;RF_Control_B1.c: 250: RfPointSelect(rf);
	movf	(setLog_Code@rf),w
	fcall	_RfPointSelect
	line	251
	
l7277:	
;RF_Control_B1.c: 251: Product->Data[12]=RF_Data[12];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Ch,w
	movlb 0	; select bank0
	movwf	(??_setLog_Code+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setLog_Code+0)+0,w
	movwf	indf1
	line	252
	
l7279:	
;RF_Control_B1.c: 252: Product->Data[13]=RF_Data[13];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Dh,w
	movlb 0	; select bank0
	movwf	(??_setLog_Code+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setLog_Code+0)+0,w
	movwf	indf1
	line	253
	
l7281:	
;RF_Control_B1.c: 253: Product->Data[14]=RF_Data[14];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Eh,w
	movlb 0	; select bank0
	movwf	(??_setLog_Code+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setLog_Code+0)+0,w
	movwf	indf1
	line	254
	
l7283:	
;RF_Control_B1.c: 254: setBuz(1,1,100);
	clrf	(setBuz@count)
	incf	(setBuz@count),f
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	255
	
l7285:	
;RF_Control_B1.c: 255: RF->Learn=0;
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	256
	
l7287:	
;RF_Control_B1.c: 256: if(TMain->First)
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u5671
	goto	u5670
u5671:
	goto	l2580
u5670:
	line	258
	
l7289:	
;RF_Control_B1.c: 257: {
;RF_Control_B1.c: 258: Memory->LoopSave=1;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,2
	line	259
	
l2580:	
	line	260
;RF_Control_B1.c: 259: }
;RF_Control_B1.c: 260: Memory->Modify=1;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,0
	line	261
	
l2581:	
	return
	opt stack 0
GLOBAL	__end_of_setLog_Code
	__end_of_setLog_Code:
	signat	_setLog_Code,4216
	global	_setControl_Lights_Table

;; *************** function _setControl_Lights_Table *****************
;; Defined at:
;;		line 263 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text26,local,class=CODE,delta=2,merge=1
	line	263
global __ptext26
__ptext26:	;psect for function _setControl_Lights_Table
psect	text26
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	263
	global	__size_of_setControl_Lights_Table
	__size_of_setControl_Lights_Table	equ	__end_of_setControl_Lights_Table-_setControl_Lights_Table
	
_setControl_Lights_Table:	
;incstack = 0
	opt	stack 2
; Regs used in _setControl_Lights_Table: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setControl_Lights_Table@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setControl_Lights_Table@rf)
	line	265
	
l7291:	
;RF_Control_B1.c: 265: RfPointSelect(rf);
	movf	(setControl_Lights_Table@rf),w
	fcall	_RfPointSelect
	line	266
	
l7293:	
;RF_Control_B1.c: 266: if(RF_Data[15] == 0x00)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,f
	skipz
	goto	u5681
	goto	u5680
u5681:
	goto	l7305
u5680:
	line	269
	
l7295:	
;RF_Control_B1.c: 267: {
;RF_Control_B1.c: 269: setDimmerLights(1,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights@status)
	movlw	(01h)
	fcall	_setDimmerLights
	line	270
;RF_Control_B1.c: 270: setRFSW_Status(1,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movlw	(01h)
	fcall	_setRFSW_Status
	line	271
;RF_Control_B1.c: 271: setSw_Status(1,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movlw	(01h)
	fcall	_setSw_Status
	line	274
;RF_Control_B1.c: 274: setDimmerLights(2,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights@status)
	movlw	(02h)
	fcall	_setDimmerLights
	line	275
;RF_Control_B1.c: 275: setRFSW_Status(2,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movlw	(02h)
	fcall	_setRFSW_Status
	line	276
;RF_Control_B1.c: 276: setSw_Status(2,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movlw	(02h)
	fcall	_setSw_Status
	line	284
	
l7297:	
;RF_Control_B1.c: 284: Product->Data[9]=0;
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	285
	
l7299:	
;RF_Control_B1.c: 285: Product->Data[11]=0;
	movf	(_Product)^080h,w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	286
	
l7301:	
;RF_Control_B1.c: 286: Product->Data[15]=0;
	movf	(_Product)^080h,w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	287
	
l7303:	
;RF_Control_B1.c: 287: Product->Data[17]=0;
	movf	(_Product)^080h,w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	288
;RF_Control_B1.c: 288: setBuz(1,1,100);
	movlb 0	; select bank0
	clrf	(setBuz@count)
	incf	(setBuz@count),f
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	289
;RF_Control_B1.c: 289: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	290
;RF_Control_B1.c: 290: }
	goto	l2595
	line	291
	
l2584:	
	
l7305:	
;RF_Control_B1.c: 291: else if(RF_Data[15] == 0x20)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	020h&0ffh
	skipz
	goto	u5691
	goto	u5690
u5691:
	goto	l7311
u5690:
	line	293
	
l7307:	
;RF_Control_B1.c: 292: {
;RF_Control_B1.c: 293: Product->Data[9]=0;
	movf	(_Product)^080h,w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	294
;RF_Control_B1.c: 294: Product->Data[11]=0;
	movf	(_Product)^080h,w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	295
;RF_Control_B1.c: 295: Product->Data[17]=0;
	movf	(_Product)^080h,w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	296
	
l7309:	
;RF_Control_B1.c: 296: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	297
;RF_Control_B1.c: 297: }
	goto	l2595
	line	299
	
l2586:	
	
l7311:	
;RF_Control_B1.c: 299: else if(RF_Data[15] == 0x01)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	01h&0ffh
	skipz
	goto	u5701
	goto	u5700
u5701:
	goto	l7315
u5700:
	line	301
	
l7313:	
;RF_Control_B1.c: 300: {
;RF_Control_B1.c: 301: setRFSW_Control(1);
	movlw	(01h)
	fcall	_setRFSW_Control
	line	302
;RF_Control_B1.c: 302: }
	goto	l2595
	line	304
	
l2588:	
	
l7315:	
;RF_Control_B1.c: 304: else if(RF_Data[15] == 0x11)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	011h&0ffh
	skipz
	goto	u5711
	goto	u5710
u5711:
	goto	l7319
u5710:
	line	306
	
l7317:	
;RF_Control_B1.c: 305: {
;RF_Control_B1.c: 306: setRFSW_AdjControl(1);
	movlw	(01h)
	fcall	_setRFSW_AdjControl
	line	307
;RF_Control_B1.c: 307: }
	goto	l2595
	line	312
	
l2590:	
	
l7319:	
;RF_Control_B1.c: 312: else if(RF_Data[15] == 0x02)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	02h&0ffh
	skipz
	goto	u5721
	goto	u5720
u5721:
	goto	l7323
u5720:
	line	314
	
l7321:	
;RF_Control_B1.c: 313: {
;RF_Control_B1.c: 314: setRFSW_Control(2);
	movlw	(02h)
	fcall	_setRFSW_Control
	line	315
;RF_Control_B1.c: 315: }
	goto	l2595
	line	317
	
l2592:	
	
l7323:	
;RF_Control_B1.c: 317: else if(RF_Data[15] == 0x21)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	021h&0ffh
	skipz
	goto	u5731
	goto	u5730
u5731:
	goto	l2595
u5730:
	line	319
	
l7325:	
;RF_Control_B1.c: 318: {
;RF_Control_B1.c: 319: setRFSW_AdjControl(2);
	movlw	(02h)
	fcall	_setRFSW_AdjControl
	goto	l2595
	line	320
	
l2594:	
	goto	l2595
	line	336
	
l2593:	
	goto	l2595
	
l2591:	
	goto	l2595
	
l2589:	
	goto	l2595
	
l2587:	
	goto	l2595
	
l2585:	
	
l2595:	
	return
	opt stack 0
GLOBAL	__end_of_setControl_Lights_Table
	__end_of_setControl_Lights_Table:
	signat	_setControl_Lights_Table,4216
	global	_setRFSW_Control

;; *************** function _setRFSW_Control *****************
;; Defined at:
;;		line 360 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   13[BANK0 ] unsigned char 
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
psect	text27,local,class=CODE,delta=2,merge=1
	line	360
global __ptext27
__ptext27:	;psect for function _setRFSW_Control
psect	text27
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	360
	global	__size_of_setRFSW_Control
	__size_of_setRFSW_Control	equ	__end_of_setRFSW_Control-_setRFSW_Control
	
_setRFSW_Control:	
;incstack = 0
	opt	stack 5
; Regs used in _setRFSW_Control: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRFSW_Control@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_Control@sw)
	line	362
	
l7131:	
;RF_Control_B1.c: 362: RfSWPointSelect(sw);
	movf	(setRFSW_Control@sw),w
	fcall	_RfSWPointSelect
	line	363
	
l7133:	
;RF_Control_B1.c: 363: if(RF_Data[16] == 0x80)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u5561
	goto	u5560
u5561:
	goto	l7139
u5560:
	line	365
	
l7135:	
;RF_Control_B1.c: 364: {
;RF_Control_B1.c: 365: setDelayOff_GO(sw,1,RF_Data[17]);
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
	line	366
	
l7137:	
;RF_Control_B1.c: 366: Product->Data[26+sw]=RF_Data[17];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+011h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_Control+0)+0
	movf	(setRFSW_Control@sw),w
	addlw	01Ah
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_Control+1)+0
	movf	0+(??_setRFSW_Control+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRFSW_Control+0)+0,w
	movwf	indf1
	goto	l7139
	line	367
	
l2603:	
	line	368
	
l7139:	
;RF_Control_B1.c: 367: }
;RF_Control_B1.c: 368: if(RFSW->Status == 0)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u5571
	goto	u5570
u5571:
	goto	l7151
u5570:
	line	370
	
l7141:	
;RF_Control_B1.c: 369: {
;RF_Control_B1.c: 370: RFSW->Status=1;
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	371
	
l7143:	
;RF_Control_B1.c: 371: setSw_Status(sw,1);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	incf	(setSw_Status@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	373
	
l7145:	
;RF_Control_B1.c: 373: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	374
	
l7147:	
;RF_Control_B1.c: 374: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	incf	(setDimmerLights_Switch@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Switch
	line	375
	
l7149:	
;RF_Control_B1.c: 375: setRF_DimmerLights(sw,RFSW->Status);
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
	line	376
;RF_Control_B1.c: 376: }
	goto	l7167
	line	377
	
l2604:	
	line	379
	
l7151:	
;RF_Control_B1.c: 377: else
;RF_Control_B1.c: 378: {
;RF_Control_B1.c: 379: if(RF_Data[16] == 0x80)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u5581
	goto	u5580
u5581:
	goto	l7155
u5580:
	line	381
	
l7153:	
;RF_Control_B1.c: 380: {
;RF_Control_B1.c: 381: setRF_DimmerLights(sw,1);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	incf	(setRF_DimmerLights@on),f
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	382
;RF_Control_B1.c: 382: }
	goto	l7167
	line	383
	
l2606:	
	line	385
	
l7155:	
;RF_Control_B1.c: 383: else
;RF_Control_B1.c: 384: {
;RF_Control_B1.c: 385: RFSW->Status=0;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	386
	
l7157:	
;RF_Control_B1.c: 386: setSw_Status(sw,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	388
	
l7159:	
;RF_Control_B1.c: 388: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	389
	
l7161:	
;RF_Control_B1.c: 389: setDimmerLights_Switch(sw,RFSW->Status);
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
	line	391
	
l7163:	
;RF_Control_B1.c: 391: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	392
	
l7165:	
;RF_Control_B1.c: 392: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(setDelayOff_GO@command)
	clrf	(setDelayOff_GO@value)
	movf	(setRFSW_Control@sw),w
	fcall	_setDelayOff_GO
	goto	l7167
	line	393
	
l2607:	
	goto	l7167
	line	394
	
l2605:	
	line	395
	
l7167:	
;RF_Control_B1.c: 393: }
;RF_Control_B1.c: 394: }
;RF_Control_B1.c: 395: setBuz(1,1,100);
	movlb 0	; select bank0
	clrf	(setBuz@count)
	incf	(setBuz@count),f
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	396
	
l7169:	
;RF_Control_B1.c: 396: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	397
	
l2608:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_Control
	__end_of_setRFSW_Control:
	signat	_setRFSW_Control,4216
	global	_setDelayOff_GO

;; *************** function _setDelayOff_GO *****************
;; Defined at:
;;		line 92 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;;  command         1    3[BANK0 ] unsigned char 
;;  value           1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1    6[BANK0 ] unsigned char 
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
;;		_DelayOffPointSelect
;;		_DelayTimejudge
;; This function is called by:
;;		_setRFSW_Control
;;		_Sw_DimmerOffFunc
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	92
global __ptext28
__ptext28:	;psect for function _setDelayOff_GO
psect	text28
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
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
	
l6873:	
;DelayOff_B1.c: 94: DelayOffPointSelect(sw);
	movf	(setDelayOff_GO@sw),w
	fcall	_DelayOffPointSelect
	line	95
	
l6875:	
;DelayOff_B1.c: 95: if(DelayOff->Enable)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u5211
	goto	u5210
u5211:
	goto	l597
u5210:
	line	97
	
l6877:	
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
	
l6879:	
;DelayOff_B1.c: 98: if(command)
	movf	(setDelayOff_GO@command),w
	skipz
	goto	u5220
	goto	l6883
u5220:
	line	100
	
l6881:	
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
;DelayOff_B1.c: 101: }
	goto	l6887
	line	102
	
l594:	
	
l6883:	
;DelayOff_B1.c: 102: else if(command == 0)
	movf	(setDelayOff_GO@command),f
	skipz
	goto	u5231
	goto	u5230
u5231:
	goto	l6887
u5230:
	line	104
	
l6885:	
;DelayOff_B1.c: 103: {
;DelayOff_B1.c: 104: Product->Data[sw+26]=0;
	movf	(setDelayOff_GO@sw),w
	addlw	01Ah
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setDelayOff_GO+0)+0
	movf	0+(??_setDelayOff_GO+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l6887
	line	105
	
l596:	
	goto	l6887
	line	106
	
l595:	
	
l6887:	
;DelayOff_B1.c: 105: }
;DelayOff_B1.c: 106: DelayOff->SecondTime=0;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	107
	
l6889:	
;DelayOff_B1.c: 107: DelayOff->MinuteTime=0;
	movf	(_DelayOff)^080h,w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l597
	line	108
	
l593:	
	line	109
	
l597:	
	return
	opt stack 0
GLOBAL	__end_of_setDelayOff_GO
	__end_of_setDelayOff_GO:
	signat	_setDelayOff_GO,12408
	global	_DelayTimejudge

;; *************** function _DelayTimejudge *****************
;; Defined at:
;;		line 111 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
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
psect	text29,local,class=CODE,delta=2,merge=1
	line	111
global __ptext29
__ptext29:	;psect for function _DelayTimejudge
psect	text29
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	111
	global	__size_of_DelayTimejudge
	__size_of_DelayTimejudge	equ	__end_of_DelayTimejudge-_DelayTimejudge
	
_DelayTimejudge:	
;incstack = 0
	opt	stack 7
; Regs used in _DelayTimejudge: [wreg]
;DelayTimejudge@value stored from wreg
	movlb 0	; select bank0
	movwf	(DelayTimejudge@value)
	line	113
	
l6705:	
;DelayOff_B1.c: 113: char i=5;
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	114
;DelayOff_B1.c: 114: if(value == 0x05)
	movf	(DelayTimejudge@value),w
	xorlw	05h&0ffh
	skipz
	goto	u4891
	goto	u4890
u4891:
	goto	l6709
u4890:
	line	116
	
l6707:	
;DelayOff_B1.c: 115: {
;DelayOff_B1.c: 116: i=5;
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	117
;DelayOff_B1.c: 117: }
	goto	l601
	line	118
	
l600:	
	
l6709:	
;DelayOff_B1.c: 118: else if(value == 0x10)
	movf	(DelayTimejudge@value),w
	xorlw	010h&0ffh
	skipz
	goto	u4901
	goto	u4900
u4901:
	goto	l6713
u4900:
	line	120
	
l6711:	
;DelayOff_B1.c: 119: {
;DelayOff_B1.c: 120: i=10;
	movlw	(0Ah)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	121
;DelayOff_B1.c: 121: }
	goto	l601
	line	122
	
l602:	
	
l6713:	
;DelayOff_B1.c: 122: else if(value == 0x15)
	movf	(DelayTimejudge@value),w
	xorlw	015h&0ffh
	skipz
	goto	u4911
	goto	u4910
u4911:
	goto	l6717
u4910:
	line	124
	
l6715:	
;DelayOff_B1.c: 123: {
;DelayOff_B1.c: 124: i=15;
	movlw	(0Fh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	125
;DelayOff_B1.c: 125: }
	goto	l601
	line	126
	
l604:	
	
l6717:	
;DelayOff_B1.c: 126: else if(value == 0x20)
	movf	(DelayTimejudge@value),w
	xorlw	020h&0ffh
	skipz
	goto	u4921
	goto	u4920
u4921:
	goto	l6721
u4920:
	line	128
	
l6719:	
;DelayOff_B1.c: 127: {
;DelayOff_B1.c: 128: i=20;
	movlw	(014h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	129
;DelayOff_B1.c: 129: }
	goto	l601
	line	130
	
l606:	
	
l6721:	
;DelayOff_B1.c: 130: else if(value == 0x25)
	movf	(DelayTimejudge@value),w
	xorlw	025h&0ffh
	skipz
	goto	u4931
	goto	u4930
u4931:
	goto	l6725
u4930:
	line	132
	
l6723:	
;DelayOff_B1.c: 131: {
;DelayOff_B1.c: 132: i=25;
	movlw	(019h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	133
;DelayOff_B1.c: 133: }
	goto	l601
	line	134
	
l608:	
	
l6725:	
;DelayOff_B1.c: 134: else if(value == 0x30)
	movf	(DelayTimejudge@value),w
	xorlw	030h&0ffh
	skipz
	goto	u4941
	goto	u4940
u4941:
	goto	l601
u4940:
	line	136
	
l6727:	
;DelayOff_B1.c: 135: {
;DelayOff_B1.c: 136: i=30;
	movlw	(01Eh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l601
	line	137
	
l610:	
	goto	l601
	line	138
	
l609:	
	goto	l601
	
l607:	
	goto	l601
	
l605:	
	goto	l601
	
l603:	
	
l601:	
;DelayOff_B1.c: 137: }
;DelayOff_B1.c: 138: return i;
	movf	(DelayTimejudge@i),w
	goto	l611
	
l6729:	
	line	139
	
l611:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTimejudge
	__end_of_DelayTimejudge:
	signat	_DelayTimejudge,4217
	global	_setRFSW_AdjControl

;; *************** function _setRFSW_AdjControl *****************
;; Defined at:
;;		line 399 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text30,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	399
global __ptext30
__ptext30:	;psect for function _setRFSW_AdjControl
psect	text30
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	399
	global	__size_of_setRFSW_AdjControl
	__size_of_setRFSW_AdjControl	equ	__end_of_setRFSW_AdjControl-_setRFSW_AdjControl
	
_setRFSW_AdjControl:	
;incstack = 0
	opt	stack 2
; Regs used in _setRFSW_AdjControl: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRFSW_AdjControl@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_AdjControl@sw)
	line	401
	
l7171:	
;RF_Control_B1.c: 401: RfSWPointSelect(sw);
	movf	(setRFSW_AdjControl@sw),w
	fcall	_RfSWPointSelect
	line	402
	
l7173:	
;RF_Control_B1.c: 402: if(RFSW->Status)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u5591
	goto	u5590
u5591:
	goto	l7179
u5590:
	line	404
	
l7175:	
;RF_Control_B1.c: 403: {
;RF_Control_B1.c: 404: Memory->Modify=1;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,0
	line	405
	
l7177:	
;RF_Control_B1.c: 405: setRF_DimmerValue(sw);
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	fcall	_setRF_DimmerValue
	line	406
;RF_Control_B1.c: 406: }
	goto	l2612
	line	407
	
l2611:	
	line	409
	
l7179:	
;RF_Control_B1.c: 407: else
;RF_Control_B1.c: 408: {
;RF_Control_B1.c: 409: Product->Data[9]=Product->Data[20+sw];
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	addlw	014h
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_AdjControl+0)+0
	movf	0+(??_setRFSW_AdjControl+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRFSW_AdjControl+1)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRFSW_AdjControl+1)+0,w
	movwf	indf1
	line	410
	
l2612:	
	line	411
;RF_Control_B1.c: 410: }
;RF_Control_B1.c: 411: Product->Data[17]=Product->Data[26+sw];
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	addlw	01Ah
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_AdjControl+0)+0
	movf	0+(??_setRFSW_AdjControl+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRFSW_AdjControl+1)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRFSW_AdjControl+1)+0,w
	movwf	indf1
	line	412
	
l7181:	
;RF_Control_B1.c: 412: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	413
	
l2613:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_AdjControl
	__end_of_setRFSW_AdjControl:
	signat	_setRFSW_AdjControl,4216
	global	_setRF_DimmerValue

;; *************** function _setRF_DimmerValue *****************
;; Defined at:
;;		line 423 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text31,local,class=CODE,delta=2,merge=1
	line	423
global __ptext31
__ptext31:	;psect for function _setRF_DimmerValue
psect	text31
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	423
	global	__size_of_setRF_DimmerValue
	__size_of_setRF_DimmerValue	equ	__end_of_setRF_DimmerValue-_setRF_DimmerValue
	
_setRF_DimmerValue:	
;incstack = 0
	opt	stack 2
; Regs used in _setRF_DimmerValue: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_DimmerValue@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_DimmerValue@lights)
	line	425
	
l6989:	
;RF_Control_B1.c: 425: if(RF_Data[9] > 0x64)
	movlw	(065h)
	movlb 1	; select bank1
	subwf	0+(_RF_Data)^080h+09h,w
	skipc
	goto	u5451
	goto	u5450
u5451:
	goto	l6993
u5450:
	line	427
	
l6991:	
;RF_Control_B1.c: 426: {
;RF_Control_B1.c: 427: RF_Data[9]=0x64;
	movlw	(064h)
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(??_setRF_DimmerValue+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+09h
	goto	l6993
	line	428
	
l2619:	
	line	429
	
l6993:	
;RF_Control_B1.c: 428: }
;RF_Control_B1.c: 429: Product->Data[9]=RF_Data[9];
	movf	0+(_RF_Data)^080h+09h,w
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	430
	
l6995:	
;RF_Control_B1.c: 430: Product->Data[11]=lights;
	movf	(setRF_DimmerValue@lights),w
	movwf	(??_setRF_DimmerValue+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	431
	
l6997:	
;RF_Control_B1.c: 431: Product->Data[(20+lights)]=Product->Data[9];
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(setRF_DimmerValue@lights),w
	addlw	014h
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+1)+0
	movf	0+(??_setRF_DimmerValue+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	432
	
l6999:	
;RF_Control_B1.c: 432: setDimmerLights_AdjRF(lights);
	movf	(setRF_DimmerValue@lights),w
	fcall	_setDimmerLights_AdjRF
	line	433
	
l2620:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerValue
	__end_of_setRF_DimmerValue:
	signat	_setRF_DimmerValue,4216
	global	_setDimmerLights_AdjRF

;; *************** function _setDimmerLights_AdjRF *****************
;; Defined at:
;;		line 424 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
psect	text32,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	424
global __ptext32
__ptext32:	;psect for function _setDimmerLights_AdjRF
psect	text32
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	424
	global	__size_of_setDimmerLights_AdjRF
	__size_of_setDimmerLights_AdjRF	equ	__end_of_setDimmerLights_AdjRF-_setDimmerLights_AdjRF
	
_setDimmerLights_AdjRF:	
;incstack = 0
	opt	stack 2
; Regs used in _setDimmerLights_AdjRF: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_AdjRF@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjRF@lights)
	line	426
	
l6731:	
;Dimmer_B1.c: 426: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjRF@lights),w
	fcall	_DimmerLightsPointSelect
	line	427
	
l6733:	
;Dimmer_B1.c: 427: DimmerLights->AdjRF=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	428
	
l6735:	
;Dimmer_B1.c: 428: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	429
	
l6737:	
;Dimmer_B1.c: 429: DimmerLights->MaxmumValue=getPercentValue(Product->Data[9]);
	movlb 1	; select bank1
	movf	(_Product)^080h,w
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
	line	430
	
l866:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_AdjRF
	__end_of_setDimmerLights_AdjRF:
	signat	_setDimmerLights_AdjRF,4216
	global	_CC2500_TxData

;; *************** function _CC2500_TxData *****************
;; Defined at:
;;		line 30 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text33,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	30
global __ptext33
__ptext33:	;psect for function _CC2500_TxData
psect	text33
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	30
	global	__size_of_CC2500_TxData
	__size_of_CC2500_TxData	equ	__end_of_CC2500_TxData-_CC2500_TxData
	
_CC2500_TxData:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_TxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	34
	
l7331:	
;CC2500_B1.c: 32: unsigned char loop_e;
;CC2500_B1.c: 34: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	35
	
l7333:	
;CC2500_B1.c: 35: SPI0Buffer=0x3F+0x40;
	movlw	(07Fh)
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	36
;CC2500_B1.c: 36: while(RC2==1);
	goto	l324
	
l325:	
	
l324:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u5741
	goto	u5740
u5741:
	goto	l324
u5740:
	goto	l7335
	
l326:	
	line	37
	
l7335:	
;CC2500_B1.c: 37: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	38
	
l7337:	
;CC2500_B1.c: 38: SPI0Buffer=Tx_Length;
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	39
	
l7339:	
;CC2500_B1.c: 39: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l7341:	
;CC2500_B1.c: 40: for(loop_e=0;loop_e<Tx_Length;loop_e++)
	movlb 0	; select bank0
	clrf	(CC2500_TxData@loop_e)
	goto	l7349
	line	41
	
l328:	
	line	42
	
l7343:	
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
	
l7345:	
;CC2500_B1.c: 43: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l7347:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	addwf	(CC2500_TxData@loop_e),f
	goto	l7349
	
l327:	
	
l7349:	
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_TxData@loop_e),w
	skipc
	goto	u5751
	goto	u5750
u5751:
	goto	l7343
u5750:
	
l329:	
	line	45
;CC2500_B1.c: 44: }
;CC2500_B1.c: 45: RC4=1;
	bsf	(116/8),(116)&7	;volatile
	line	46
	
l7351:	
;CC2500_B1.c: 46: CC2500_WriteCommand(0x35);
	movlw	(035h)
	fcall	_CC2500_WriteCommand
	line	47
;CC2500_B1.c: 47: while(RB0==0);
	goto	l330
	
l331:	
	
l330:	
	movlb 0	; select bank0
	btfss	(104/8),(104)&7	;volatile
	goto	u5761
	goto	u5760
u5761:
	goto	l330
u5760:
	goto	l333
	
l332:	
	line	48
;CC2500_B1.c: 48: while(RB0==1);
	goto	l333
	
l334:	
	
l333:	
	btfsc	(104/8),(104)&7	;volatile
	goto	u5771
	goto	u5770
u5771:
	goto	l333
u5770:
	goto	l7353
	
l335:	
	line	49
	
l7353:	
;CC2500_B1.c: 49: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	50
;CC2500_B1.c: 50: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	51
	
l7355:	
;CC2500_B1.c: 51: Transceive_OK=1;
	bsf	(_Transceive_OK/8),(_Transceive_OK)&7
	line	52
	
l336:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_TxData
	__end_of_CC2500_TxData:
	signat	_CC2500_TxData,88
	global	_CC2500_RxData

;; *************** function _CC2500_RxData *****************
;; Defined at:
;;		line 56 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text34,local,class=CODE,delta=2,merge=1
	line	56
global __ptext34
__ptext34:	;psect for function _CC2500_RxData
psect	text34
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	56
	global	__size_of_CC2500_RxData
	__size_of_CC2500_RxData	equ	__end_of_CC2500_RxData-_CC2500_RxData
	
_CC2500_RxData:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_RxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	62
	
l7357:	
;CC2500_B1.c: 58: unsigned char loop_f;
;CC2500_B1.c: 62: if(RB0 == 1)
	movlb 0	; select bank0
	btfss	(104/8),(104)&7	;volatile
	goto	u5781
	goto	u5780
u5781:
	goto	l7361
u5780:
	goto	l340
	line	64
	
l7359:	
;CC2500_B1.c: 63: {
;CC2500_B1.c: 64: while(RB0 == 1);
	goto	l340
	
l341:	
	
l340:	
	btfsc	(104/8),(104)&7	;volatile
	goto	u5791
	goto	u5790
u5791:
	goto	l340
u5790:
	goto	l7361
	
l342:	
	goto	l7361
	line	65
	
l339:	
	line	66
	
l7361:	
;CC2500_B1.c: 65: }
;CC2500_B1.c: 66: CC2500_ReadStatus(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_ReadStatus
	line	67
	
l7363:	
;CC2500_B1.c: 67: if(s_data != 0)
	movlb 1	; select bank1
	movf	(_s_data)^080h,w
	skipz
	goto	u5800
	goto	l7395
u5800:
	line	70
	
l7365:	
;CC2500_B1.c: 69: {
;CC2500_B1.c: 70: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	71
	
l7367:	
;CC2500_B1.c: 71: SPI0Buffer=0x3F+0xC0;
	movlw	(0FFh)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	72
;CC2500_B1.c: 72: while(RC2==1);
	goto	l344
	
l345:	
	
l344:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u5811
	goto	u5810
u5811:
	goto	l344
u5810:
	goto	l7369
	
l346:	
	line	73
	
l7369:	
;CC2500_B1.c: 73: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	75
;CC2500_B1.c: 75: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	76
	
l7371:	
;CC2500_B1.c: 76: Rx_Length=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_Rx_Length)^080h
	line	77
	
l7373:	
;CC2500_B1.c: 77: for(loop_f=0;loop_f<Rx_Length;loop_f++)
	movlb 0	; select bank0
	clrf	(CC2500_RxData@loop_f)
	goto	l7381
	line	78
	
l348:	
	line	79
	
l7375:	
;CC2500_B1.c: 78: {
;CC2500_B1.c: 79: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	80
	
l7377:	
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
	
l7379:	
	movlw	(01h)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	addwf	(CC2500_RxData@loop_f),f
	goto	l7381
	
l347:	
	
l7381:	
	movlb 1	; select bank1
	movf	(_Rx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_RxData@loop_f),w
	skipc
	goto	u5821
	goto	u5820
u5821:
	goto	l7375
u5820:
	goto	l7383
	
l349:	
	line	82
	
l7383:	
;CC2500_B1.c: 81: }
;CC2500_B1.c: 82: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	83
	
l7385:	
;CC2500_B1.c: 83: RSSI=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RSSI)^080h
	line	84
	
l7387:	
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
	
l7389:	
;CC2500_B1.c: 86: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	87
	
l7391:	
;CC2500_B1.c: 87: if(CRC & 0x80)
	movlb 1	; select bank1
	btfss	(_CRC)^080h,(7)&7
	goto	u5831
	goto	u5830
u5831:
	goto	l7395
u5830:
	line	88
	
l7393:	
;CC2500_B1.c: 88: Receive_OK=1;
	bsf	(_Receive_OK/8),(_Receive_OK)&7
	goto	l7395
	
l350:	
	goto	l7395
	line	89
	
l343:	
	line	90
	
l7395:	
;CC2500_B1.c: 89: }
;CC2500_B1.c: 90: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	91
;CC2500_B1.c: 91: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	92
	
l7397:	
;CC2500_B1.c: 92: setRF_RxStatus(1,0);
	movlb 0	; select bank0
	clrf	(setRF_RxStatus@command)
	movlw	(01h)
	fcall	_setRF_RxStatus
	line	93
	
l351:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_RxData
	__end_of_CC2500_RxData:
	signat	_CC2500_RxData,88
	global	_setRF_RxStatus

;; *************** function _setRF_RxStatus *****************
;; Defined at:
;;		line 43 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text35,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	43
global __ptext35
__ptext35:	;psect for function _setRF_RxStatus
psect	text35
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
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
	
l7193:	
;RF_Control_B1.c: 45: RfPointSelect(rf);
	movf	(setRF_RxStatus@rf),w
	fcall	_RfPointSelect
	line	46
	
l7195:	
;RF_Control_B1.c: 46: RF->RxStatus=command;
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRF_RxStatus@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	47
	
l2526:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_RxStatus
	__end_of_setRF_RxStatus:
	signat	_setRF_RxStatus,8312
	global	_CC2500_ReadStatus

;; *************** function _CC2500_ReadStatus *****************
;; Defined at:
;;		line 267 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text36,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	267
global __ptext36
__ptext36:	;psect for function _CC2500_ReadStatus
psect	text36
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
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
	
l7183:	
;CC2500_B1.c: 269: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	270
	
l7185:	
;CC2500_B1.c: 270: SPI0Buffer=status_addr+0xC0;
	movf	(CC2500_ReadStatus@status_addr),w
	addlw	0C0h
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	272
;CC2500_B1.c: 272: while(RC2==1);
	goto	l420
	
l421:	
	
l420:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u5601
	goto	u5600
u5601:
	goto	l420
u5600:
	goto	l7187
	
l422:	
	line	274
	
l7187:	
;CC2500_B1.c: 274: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	275
;CC2500_B1.c: 275: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	276
	
l7189:	
;CC2500_B1.c: 276: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	278
	
l7191:	
;CC2500_B1.c: 278: s_data=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_s_data)^080h
	line	279
	
l423:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadStatus
	__end_of_CC2500_ReadStatus:
	signat	_CC2500_ReadStatus,4216
	global	_CC2500_ReadByte

;; *************** function _CC2500_ReadByte *****************
;; Defined at:
;;		line 210 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text37,local,class=CODE,delta=2,merge=1
	line	210
global __ptext37
__ptext37:	;psect for function _CC2500_ReadByte
psect	text37
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	210
	global	__size_of_CC2500_ReadByte
	__size_of_CC2500_ReadByte	equ	__end_of_CC2500_ReadByte-_CC2500_ReadByte
	
_CC2500_ReadByte:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_ReadByte: [wreg+status,2+status,0]
	line	213
	
l7001:	
;CC2500_B1.c: 212: unsigned char loop_b;
;CC2500_B1.c: 213: for(loop_b=0;loop_b<8;loop_b++)
	movlb 0	; select bank0
	clrf	(CC2500_ReadByte@loop_b)
	
l7003:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u5461
	goto	u5460
u5461:
	goto	l395
u5460:
	goto	l399
	
l7005:	
	goto	l399
	line	214
	
l395:	
	line	215
;CC2500_B1.c: 214: {
;CC2500_B1.c: 215: RC1=1;
	bsf	(113/8),(113)&7	;volatile
	line	216
	
l7007:	
;CC2500_B1.c: 216: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	217
	
l7009:	
;CC2500_B1.c: 217: if(RC2 == 1)
	movlb 0	; select bank0
	btfss	(114/8),(114)&7	;volatile
	goto	u5471
	goto	u5470
u5471:
	goto	l7013
u5470:
	line	218
	
l7011:	
;CC2500_B1.c: 218: SPI0Buffer |= 0x01;
	movlb 1	; select bank1
	bsf	(_SPI0Buffer)^080h+(0/8),(0)&7
	goto	l7015
	line	219
	
l397:	
	line	220
	
l7013:	
;CC2500_B1.c: 219: else
;CC2500_B1.c: 220: SPI0Buffer &= 0xFE;
	movlw	(0FEh)
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	movlb 1	; select bank1
	andwf	(_SPI0Buffer)^080h,f
	goto	l7015
	
l398:	
	line	221
	
l7015:	
;CC2500_B1.c: 221: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
	line	213
	movlw	(01h)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	addwf	(CC2500_ReadByte@loop_b),f
	
l7017:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u5481
	goto	u5480
u5481:
	goto	l395
u5480:
	goto	l399
	
l396:	
	line	223
	
l399:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ReadByte
	__end_of_CC2500_ReadByte:
	signat	_CC2500_ReadByte,88
	global	_RF_Initialization

;; *************** function _RF_Initialization *****************
;; Defined at:
;;		line 17 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text38,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	17
global __ptext38
__ptext38:	;psect for function _RF_Initialization
psect	text38
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	17
	global	__size_of_RF_Initialization
	__size_of_RF_Initialization	equ	__end_of_RF_Initialization-_RF_Initialization
	
_RF_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _RF_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l8635:	
;RF_Control_B1.c: 20: setRF_Initialization(1);
	movlw	(01h)
	fcall	_setRF_Initialization
	line	22
	
l2514:	
	return
	opt stack 0
GLOBAL	__end_of_RF_Initialization
	__end_of_RF_Initialization:
	signat	_RF_Initialization,88
	global	_setRF_Initialization

;; *************** function _setRF_Initialization *****************
;; Defined at:
;;		line 50 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text39,local,class=CODE,delta=2,merge=1
	line	50
global __ptext39
__ptext39:	;psect for function _setRF_Initialization
psect	text39
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	50
	global	__size_of_setRF_Initialization
	__size_of_setRF_Initialization	equ	__end_of_setRF_Initialization-_setRF_Initialization
	
_setRF_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _setRF_Initialization: [wreg]
	line	54
	
l8365:	
;RF_Control_B1.c: 54: Tx_Length=21;
	movlw	(015h)
	movlb 0	; select bank0
	movwf	(??_setRF_Initialization+0)+0
	movf	(??_setRF_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Tx_Length)^080h
	line	56
	
l2529:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Initialization
	__end_of_setRF_Initialization:
	signat	_setRF_Initialization,4216
	global	_PowerFault_Main

;; *************** function _PowerFault_Main *****************
;; Defined at:
;;		line 22 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
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
psect	text40,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	22
global __ptext40
__ptext40:	;psect for function _PowerFault_Main
psect	text40
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	22
	global	__size_of_PowerFault_Main
	__size_of_PowerFault_Main	equ	__end_of_PowerFault_Main-_PowerFault_Main
	
_PowerFault_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _PowerFault_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	25
	
l8751:	
;PowerFault_B1.c: 25: setPowerFault_Main(1);
	movlw	(01h)
	fcall	_setPowerFault_Main
	line	27
	
l2290:	
	return
	opt stack 0
GLOBAL	__end_of_PowerFault_Main
	__end_of_PowerFault_Main:
	signat	_PowerFault_Main,88
	global	_setPowerFault_Main

;; *************** function _setPowerFault_Main *****************
;; Defined at:
;;		line 65 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  pf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pf              1   17[BANK0 ] unsigned char 
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
;;		_PowerFaultPointSelect
;;		_getLoad_Safe
;;		_getTemp_Safe
;;		_setPowerFault_ERROR
;; This function is called by:
;;		_PowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1
	line	65
global __ptext41
__ptext41:	;psect for function _setPowerFault_Main
psect	text41
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	65
	global	__size_of_setPowerFault_Main
	__size_of_setPowerFault_Main	equ	__end_of_setPowerFault_Main-_setPowerFault_Main
	
_setPowerFault_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _setPowerFault_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setPowerFault_Main@pf stored from wreg
	movlb 0	; select bank0
	movwf	(setPowerFault_Main@pf)
	line	67
	
l8309:	
;PowerFault_B1.c: 67: PowerFaultPointSelect(pf);
	movf	(setPowerFault_Main@pf),w
	fcall	_PowerFaultPointSelect
	line	68
	
l8311:	
;PowerFault_B1.c: 68: if(PF->Enable)
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u7001
	goto	u7000
u7001:
	goto	l2328
u7000:
	line	70
	
l8313:	
;PowerFault_B1.c: 69: {
;PowerFault_B1.c: 70: if(PF->ADtoGO == 0)
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u7011
	goto	u7010
u7011:
	goto	l8327
u7010:
	line	72
	
l8315:	
;PowerFault_B1.c: 71: {
;PowerFault_B1.c: 72: PF->Time++;
	movf	(_PF)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	73
	
l8317:	
;PowerFault_B1.c: 73: if(PF->Time >= 700)
	movf	(_PF)^080h,w
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
	goto	u7021
	goto	u7020
u7021:
	goto	l2328
u7020:
	line	75
	
l8319:	
;PowerFault_B1.c: 74: {
;PowerFault_B1.c: 75: if(getLoad_Safe(1) && getTemp_Safe(1))
	movlw	(01h)
	fcall	_getLoad_Safe
	xorlw	0&0ffh
	skipnz
	goto	u7031
	goto	u7030
u7031:
	goto	l8325
u7030:
	
l8321:	
	movlw	(01h)
	fcall	_getTemp_Safe
	xorlw	0&0ffh
	skipnz
	goto	u7041
	goto	u7040
u7041:
	goto	l8325
u7040:
	line	77
	
l8323:	
;PowerFault_B1.c: 76: {
;PowerFault_B1.c: 77: PF->Time=0;
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	78
;PowerFault_B1.c: 78: PF->ADtoGO=1;
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	79
;PowerFault_B1.c: 79: PF->Safe=0;
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	80
;PowerFault_B1.c: 80: }
	goto	l2328
	line	81
	
l2313:	
	line	83
	
l8325:	
;PowerFault_B1.c: 81: else
;PowerFault_B1.c: 82: {
;PowerFault_B1.c: 83: PF->Time=700;
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(02BCh)
	movwi	[0]fsr1
	movlw	high(02BCh)
	movwi	[1]fsr1
	goto	l2328
	line	84
	
l2314:	
	goto	l2328
	line	85
	
l2312:	
	line	86
;PowerFault_B1.c: 84: }
;PowerFault_B1.c: 85: }
;PowerFault_B1.c: 86: }
	goto	l2328
	line	87
	
l2311:	
	line	89
	
l8327:	
;PowerFault_B1.c: 87: else
;PowerFault_B1.c: 88: {
;PowerFault_B1.c: 89: PF->Time++;
	movf	(_PF)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	90
	
l8329:	
;PowerFault_B1.c: 90: if(PF->Time >= 2)
	movf	(_PF)^080h,w
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
	goto	u7051
	goto	u7050
u7051:
	goto	l2328
u7050:
	line	92
	
l8331:	
;PowerFault_B1.c: 91: {
;PowerFault_B1.c: 92: PF->Time=0;
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	93
;PowerFault_B1.c: 93: PF->ADtoGO=0;
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	95
;PowerFault_B1.c: 95: if(PF->ERROR)
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u7061
	goto	u7060
u7061:
	goto	l8347
u7060:
	line	97
	
l8333:	
;PowerFault_B1.c: 96: {
;PowerFault_B1.c: 97: if(PF->AD <= (300+100) && PF->AD >= (300-100))
	incf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(0191h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(0191h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipnc
	goto	u7071
	goto	u7070
u7071:
	goto	l8345
u7070:
	
l8335:	
	movlb 1	; select bank1
	incf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(0C8h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(0C8h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipc
	goto	u7081
	goto	u7080
u7081:
	goto	l8345
u7080:
	line	99
	
l8337:	
;PowerFault_B1.c: 98: {
;PowerFault_B1.c: 99: PF->Count++;
	movlw	(01h)
	movwf	(??_setPowerFault_Main+0)+0
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setPowerFault_Main+0)+0,w
	addwf	indf1,f
	line	100
	
l8339:	
;PowerFault_B1.c: 100: if(PF->Count > 1)
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u7091
	goto	u7090
u7091:
	goto	l8361
u7090:
	line	102
	
l8341:	
;PowerFault_B1.c: 101: {
;PowerFault_B1.c: 102: PF->Count=0;
	movf	(_PF)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	103
	
l8343:	
;PowerFault_B1.c: 103: setPowerFault_ERROR(1,0);
	movlb 0	; select bank0
	clrf	(setPowerFault_ERROR@command)
	movlw	(01h)
	fcall	_setPowerFault_ERROR
	goto	l8361
	line	104
	
l2319:	
	line	105
;PowerFault_B1.c: 104: }
;PowerFault_B1.c: 105: }
	goto	l8361
	line	106
	
l2318:	
	line	108
	
l8345:	
;PowerFault_B1.c: 106: else
;PowerFault_B1.c: 107: {
;PowerFault_B1.c: 108: PF->Count=0;
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l8361
	line	109
	
l2320:	
	line	110
;PowerFault_B1.c: 109: }
;PowerFault_B1.c: 110: }
	goto	l8361
	line	111
	
l2317:	
	line	113
	
l8347:	
;PowerFault_B1.c: 111: else
;PowerFault_B1.c: 112: {
;PowerFault_B1.c: 113: if(PF->AD >= (300+100) || PF->AD <= (310-100))
	incf	(_PF)^080h,w
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
	goto	u7101
	goto	u7100
u7101:
	goto	l8351
u7100:
	
l8349:	
	movlb 1	; select bank1
	incf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setPowerFault_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setPowerFault_Main+0)+0+1
	movlw	high(0D3h)
	subwf	1+(??_setPowerFault_Main+0)+0,w
	movlw	low(0D3h)
	skipnz
	subwf	0+(??_setPowerFault_Main+0)+0,w
	skipnc
	goto	u7111
	goto	u7110
u7111:
	goto	l8359
u7110:
	goto	l8351
	
l2324:	
	line	115
	
l8351:	
;PowerFault_B1.c: 114: {
;PowerFault_B1.c: 115: PF->Count++;
	movlw	(01h)
	movwf	(??_setPowerFault_Main+0)+0
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setPowerFault_Main+0)+0,w
	addwf	indf1,f
	line	116
	
l8353:	
;PowerFault_B1.c: 116: if(PF->Count > 1)
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u7121
	goto	u7120
u7121:
	goto	l8361
u7120:
	line	118
	
l8355:	
;PowerFault_B1.c: 117: {
;PowerFault_B1.c: 118: PF->Count=0;
	movf	(_PF)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	119
	
l8357:	
;PowerFault_B1.c: 119: setPowerFault_ERROR(1,1);
	movlb 0	; select bank0
	clrf	(setPowerFault_ERROR@command)
	incf	(setPowerFault_ERROR@command),f
	movlw	(01h)
	fcall	_setPowerFault_ERROR
	goto	l8361
	line	120
	
l2325:	
	line	121
;PowerFault_B1.c: 120: }
;PowerFault_B1.c: 121: }
	goto	l8361
	line	122
	
l2322:	
	line	124
	
l8359:	
;PowerFault_B1.c: 122: else
;PowerFault_B1.c: 123: {
;PowerFault_B1.c: 124: PF->Count=0;
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l8361
	line	125
	
l2326:	
	goto	l8361
	line	127
	
l2321:	
	line	128
	
l8361:	
;PowerFault_B1.c: 125: }
;PowerFault_B1.c: 127: }
;PowerFault_B1.c: 128: if(PF->ERROR == 0)
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u7131
	goto	u7130
u7131:
	goto	l2327
u7130:
	line	130
	
l8363:	
;PowerFault_B1.c: 129: {
;PowerFault_B1.c: 130: PF->Safe=1;
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	131
	
l2327:	
	line	132
;PowerFault_B1.c: 131: }
;PowerFault_B1.c: 132: PF->AD=0;
	incf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l2328
	line	133
	
l2316:	
	goto	l2328
	line	134
	
l2315:	
	goto	l2328
	line	135
	
l2310:	
	line	136
	
l2328:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_Main
	__end_of_setPowerFault_Main:
	signat	_setPowerFault_Main,4216
	global	_setPowerFault_ERROR

;; *************** function _setPowerFault_ERROR *****************
;; Defined at:
;;		line 138 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  pf              1    wreg     unsigned char 
;;  command         1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pf              1   14[BANK0 ] unsigned char 
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
;;		_DimmerLights_ERROR
;;		_PowerFaultPointSelect
;;		_setDimmer_PFERROR
;;		_setLED
;;		_setRF_Enable
;;		_setSw_Enable
;; This function is called by:
;;		_setPowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1
	line	138
global __ptext42
__ptext42:	;psect for function _setPowerFault_ERROR
psect	text42
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	138
	global	__size_of_setPowerFault_ERROR
	__size_of_setPowerFault_ERROR	equ	__end_of_setPowerFault_ERROR-_setPowerFault_ERROR
	
_setPowerFault_ERROR:	
;incstack = 0
	opt	stack 5
; Regs used in _setPowerFault_ERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setPowerFault_ERROR@pf stored from wreg
	movlb 0	; select bank0
	movwf	(setPowerFault_ERROR@pf)
	line	140
	
l7629:	
;PowerFault_B1.c: 140: PowerFaultPointSelect(pf);
	movf	(setPowerFault_ERROR@pf),w
	fcall	_PowerFaultPointSelect
	line	141
	
l7631:	
;PowerFault_B1.c: 141: if(command == 1)
	movlb 0	; select bank0
	movf	(setPowerFault_ERROR@command),w
	xorlw	01h&0ffh
	skipz
	goto	u6001
	goto	u6000
u6001:
	goto	l7647
u6000:
	line	143
	
l7633:	
;PowerFault_B1.c: 142: {
;PowerFault_B1.c: 143: PF->ERROR=1;
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	144
	
l7635:	
;PowerFault_B1.c: 144: setDimmer_PFERROR(1,1);
	movlb 0	; select bank0
	clrf	(setDimmer_PFERROR@command)
	incf	(setDimmer_PFERROR@command),f
	movlw	(01h)
	fcall	_setDimmer_PFERROR
	line	145
	
l7637:	
;PowerFault_B1.c: 145: DimmerLights_ERROR();
	fcall	_DimmerLights_ERROR
	line	146
	
l7639:	
;PowerFault_B1.c: 146: setLED(99,11);
	movlw	(0Bh)
	movlb 0	; select bank0
	movwf	(??_setPowerFault_ERROR+0)+0
	movf	(??_setPowerFault_ERROR+0)+0,w
	movwf	(setLED@command)
	movlw	(063h)
	fcall	_setLED
	line	149
	
l7641:	
;PowerFault_B1.c: 149: setSw_Enable(1,0);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	movlw	(01h)
	fcall	_setSw_Enable
	line	152
	
l7643:	
;PowerFault_B1.c: 152: setSw_Enable(2,0);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	movlw	(02h)
	fcall	_setSw_Enable
	line	159
	
l7645:	
;PowerFault_B1.c: 159: setRF_Enable(1,0);
	movlb 0	; select bank0
	clrf	(setRF_Enable@command)
	movlw	(01h)
	fcall	_setRF_Enable
	line	161
;PowerFault_B1.c: 161: }
	goto	l2333
	line	162
	
l2331:	
	line	164
	
l7647:	
;PowerFault_B1.c: 162: else
;PowerFault_B1.c: 163: {
;PowerFault_B1.c: 164: PF->ERROR=0;
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	165
;PowerFault_B1.c: 165: PF->Safe=1;
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	166
	
l7649:	
;PowerFault_B1.c: 166: setDimmer_PFERROR(1,0);
	movlb 0	; select bank0
	clrf	(setDimmer_PFERROR@command)
	movlw	(01h)
	fcall	_setDimmer_PFERROR
	line	167
	
l7651:	
;PowerFault_B1.c: 167: DimmerLights_ERROR();
	fcall	_DimmerLights_ERROR
	line	168
	
l7653:	
;PowerFault_B1.c: 168: setLED(99,10);
	movlw	(0Ah)
	movlb 0	; select bank0
	movwf	(??_setPowerFault_ERROR+0)+0
	movf	(??_setPowerFault_ERROR+0)+0,w
	movwf	(setLED@command)
	movlw	(063h)
	fcall	_setLED
	line	171
	
l7655:	
;PowerFault_B1.c: 171: setSw_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	incf	(setSw_Enable@command),f
	movlw	(01h)
	fcall	_setSw_Enable
	line	175
	
l7657:	
;PowerFault_B1.c: 175: setSw_Enable(2,1);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	incf	(setSw_Enable@command),f
	movlw	(02h)
	fcall	_setSw_Enable
	line	182
	
l7659:	
;PowerFault_B1.c: 182: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setRF_Enable@command)
	incf	(setRF_Enable@command),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l2333
	line	184
	
l2332:	
	line	185
	
l2333:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_ERROR
	__end_of_setPowerFault_ERROR:
	signat	_setPowerFault_ERROR,8312
	global	_setDimmer_PFERROR

;; *************** function _setDimmer_PFERROR *****************
;; Defined at:
;;		line 541 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    3[BANK0 ] unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_setPowerFault_ERROR
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	541
global __ptext43
__ptext43:	;psect for function _setDimmer_PFERROR
psect	text43
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	541
	global	__size_of_setDimmer_PFERROR
	__size_of_setDimmer_PFERROR	equ	__end_of_setDimmer_PFERROR-_setDimmer_PFERROR
	
_setDimmer_PFERROR:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmer_PFERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmer_PFERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmer_PFERROR@dimmer)
	line	543
	
l7239:	
;Dimmer_B1.c: 543: DimmerPointSelect(dimmer);
	movf	(setDimmer_PFERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	544
	
l7241:	
;Dimmer_B1.c: 544: Dimmer->PFERROR=command;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDimmer_PFERROR@command),w
	bcf	indf1,2
	skipz
	bsf	indf1,2
	line	545
	
l906:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmer_PFERROR
	__end_of_setDimmer_PFERROR:
	signat	_setDimmer_PFERROR,8312
	global	_getLoad_Safe

;; *************** function _getLoad_Safe *****************
;; Defined at:
;;		line 364 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_LoadPointSelect
;; This function is called by:
;;		_setTemp_Main
;;		_setPowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	364
global __ptext44
__ptext44:	;psect for function _getLoad_Safe
psect	text44
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	364
	global	__size_of_getLoad_Safe
	__size_of_getLoad_Safe	equ	__end_of_getLoad_Safe-_getLoad_Safe
	
_getLoad_Safe:	
;incstack = 0
	opt	stack 8
; Regs used in _getLoad_Safe: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;getLoad_Safe@load stored from wreg
	movlb 0	; select bank0
	movwf	(getLoad_Safe@load)
	line	366
	
l7597:	
;OverLoad_B1.c: 366: LoadPointSelect(load);
	movf	(getLoad_Safe@load),w
	fcall	_LoadPointSelect
	line	367
	
l7599:	
;OverLoad_B1.c: 367: return Load->Safe;
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
	goto	l1940
	
l7601:	
	line	368
	
l1940:	
	return
	opt stack 0
GLOBAL	__end_of_getLoad_Safe
	__end_of_getLoad_Safe:
	signat	_getLoad_Safe,4217
	global	_PowerFault_Initialization

;; *************** function _PowerFault_Initialization *****************
;; Defined at:
;;		line 15 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
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
;;		_setPowerFault_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	15
global __ptext45
__ptext45:	;psect for function _PowerFault_Initialization
psect	text45
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	15
	global	__size_of_PowerFault_Initialization
	__size_of_PowerFault_Initialization	equ	__end_of_PowerFault_Initialization-_PowerFault_Initialization
	
_PowerFault_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _PowerFault_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	18
	
l8625:	
;PowerFault_B1.c: 18: setPowerFault_Initialization(1);
	movlw	(01h)
	fcall	_setPowerFault_Initialization
	line	20
	
l2287:	
	return
	opt stack 0
GLOBAL	__end_of_PowerFault_Initialization
	__end_of_PowerFault_Initialization:
	signat	_PowerFault_Initialization,88
	global	_setPowerFault_Initialization

;; *************** function _setPowerFault_Initialization *****************
;; Defined at:
;;		line 29 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  pf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pf              1    1[BANK0 ] unsigned char 
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
;;		_PowerFaultPointSelect
;; This function is called by:
;;		_PowerFault_Initialization
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1
	line	29
global __ptext46
__ptext46:	;psect for function _setPowerFault_Initialization
psect	text46
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	29
	global	__size_of_setPowerFault_Initialization
	__size_of_setPowerFault_Initialization	equ	__end_of_setPowerFault_Initialization-_setPowerFault_Initialization
	
_setPowerFault_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _setPowerFault_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setPowerFault_Initialization@pf stored from wreg
	movlb 0	; select bank0
	movwf	(setPowerFault_Initialization@pf)
	line	31
	
l8303:	
;PowerFault_B1.c: 31: PowerFaultPointSelect(pf);
	movf	(setPowerFault_Initialization@pf),w
	fcall	_PowerFaultPointSelect
	line	32
	
l8305:	
;PowerFault_B1.c: 32: PF->Enable=1;
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	33
	
l8307:	
;PowerFault_B1.c: 33: PF->Safe=1;
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	34
	
l2293:	
	return
	opt stack 0
GLOBAL	__end_of_setPowerFault_Initialization
	__end_of_setPowerFault_Initialization:
	signat	_setPowerFault_Initialization,4216
	global	_Mcu_Initialization

;; *************** function _Mcu_Initialization *****************
;; Defined at:
;;		line 11 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text47,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	11
global __ptext47
__ptext47:	;psect for function _Mcu_Initialization
psect	text47
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	11
	global	__size_of_Mcu_Initialization
	__size_of_Mcu_Initialization	equ	__end_of_Mcu_Initialization-_Mcu_Initialization
	
_Mcu_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Mcu_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l8575:	
;MCU_16f1518_B1.c: 14: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l8577:	
;MCU_16f1518_B1.c: 16: IO_Set();
	fcall	_IO_Set
	line	18
	
l8579:	
;MCU_16f1518_B1.c: 18: TMR0_Set();
	fcall	_TMR0_Set
	line	22
	
l8581:	
;MCU_16f1518_B1.c: 20: ;;
;MCU_16f1518_B1.c: 22: ADC_Set();
	fcall	_ADC_Set
	line	26
;MCU_16f1518_B1.c: 26: INT_Set();
	fcall	_INT_Set
	line	28
	
l8583:	
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
	
l1563:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initialization
	__end_of_Mcu_Initialization:
	signat	_Mcu_Initialization,88
	global	_TMR0_Set

;; *************** function _TMR0_Set *****************
;; Defined at:
;;		line 73 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text48,local,class=CODE,delta=2,merge=1
	line	73
global __ptext48
__ptext48:	;psect for function _TMR0_Set
psect	text48
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	73
	global	__size_of_TMR0_Set
	__size_of_TMR0_Set	equ	__end_of_TMR0_Set-_TMR0_Set
	
_TMR0_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR0_Set: [wreg+status,2]
	line	75
	
l8037:	
;MCU_16f1518_B1.c: 75: Timer0=&VarTimer0;
	movlw	(_VarTimer0)&0ffh
	movlb 0	; select bank0
	movwf	(??_TMR0_Set+0)+0
	movf	(??_TMR0_Set+0)+0,w
	movlb 1	; select bank1
	movwf	(_Timer0)^080h
	line	76
	
l8039:	
;MCU_16f1518_B1.c: 76: OPTION_REG=0x00;
	clrf	(149)^080h	;volatile
	line	77
	
l8041:	
;MCU_16f1518_B1.c: 77: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	78
	
l8043:	
;MCU_16f1518_B1.c: 78: TMR0IE=1;
	bsf	(93/8),(93)&7	;volatile
	line	79
	
l8045:	
;MCU_16f1518_B1.c: 79: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	80
	
l1572:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_Set
	__end_of_TMR0_Set:
	signat	_TMR0_Set,88
	global	_IO_Set

;; *************** function _IO_Set *****************
;; Defined at:
;;		line 37 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text49,local,class=CODE,delta=2,merge=1
	line	37
global __ptext49
__ptext49:	;psect for function _IO_Set
psect	text49
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	37
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _IO_Set: [wreg+status,2]
	line	39
	
l8019:	
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
	
l8021:	
;MCU_16f1518_B1.c: 42: LATA=0b00000000;;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	43
	
l8023:	
;MCU_16f1518_B1.c: 43: LATB=0b00000010;;
	movlw	(02h)
	movwf	(269)^0100h	;volatile
	line	44
;MCU_16f1518_B1.c: 44: LATC=0b00000000;;
	clrf	(270)^0100h	;volatile
	line	45
	
l8025:	
;MCU_16f1518_B1.c: 45: ANSELA=0b00100010;;
	movlw	(022h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	46
	
l8027:	
;MCU_16f1518_B1.c: 46: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	47
	
l8029:	
;MCU_16f1518_B1.c: 47: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	48
	
l8031:	
;MCU_16f1518_B1.c: 48: PORTA=0b01110111;;
	movlw	(077h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	49
	
l8033:	
;MCU_16f1518_B1.c: 49: PORTB=0b00000111;;
	movlw	(07h)
	movwf	(13)	;volatile
	line	50
	
l8035:	
;MCU_16f1518_B1.c: 50: PORTC=0b00001100;;
	movlw	(0Ch)
	movwf	(14)	;volatile
	line	51
	
l1566:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
	signat	_IO_Set,88
	global	_IOC_Set

;; *************** function _IOC_Set *****************
;; Defined at:
;;		line 246 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text50,local,class=CODE,delta=2,merge=1
	line	246
global __ptext50
__ptext50:	;psect for function _IOC_Set
psect	text50
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	246
	global	__size_of_IOC_Set
	__size_of_IOC_Set	equ	__end_of_IOC_Set-_IOC_Set
	
_IOC_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _IOC_Set: [wreg+status,2]
	line	248
	
l8051:	
;MCU_16f1518_B1.c: 248: WPUB2=0;
	movlb 4	; select bank4
	bcf	(4202/8)^0200h,(4202)&7	;volatile
	line	250
	
l8053:	
;MCU_16f1518_B1.c: 250: IOCBP=0b00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	251
;MCU_16f1518_B1.c: 251: IOCBN=0b00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	259
	
l8055:	
;MCU_16f1518_B1.c: 259: IOCBF=0b00000000;
	clrf	(918)^0380h	;volatile
	line	261
	
l8057:	
;MCU_16f1518_B1.c: 261: IOCIE=1;
	bsf	(91/8),(91)&7	;volatile
	line	262
	
l8059:	
;MCU_16f1518_B1.c: 262: IOCIF=0;
	bcf	(88/8),(88)&7	;volatile
	line	263
	
l8061:	
;MCU_16f1518_B1.c: 263: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	264
	
l8063:	
;MCU_16f1518_B1.c: 264: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	265
	
l1650:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_Set
	__end_of_IOC_Set:
	signat	_IOC_Set,88
	global	_INT_Set

;; *************** function _INT_Set *****************
;; Defined at:
;;		line 217 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text51,local,class=CODE,delta=2,merge=1
	line	217
global __ptext51
__ptext51:	;psect for function _INT_Set
psect	text51
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	217
	global	__size_of_INT_Set
	__size_of_INT_Set	equ	__end_of_INT_Set-_INT_Set
	
_INT_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _INT_Set: []
	line	219
	
l8049:	
;MCU_16f1518_B1.c: 219: WPUB0=0;
	movlb 4	; select bank4
	bcf	(4200/8)^0200h,(4200)&7	;volatile
	line	221
;MCU_16f1518_B1.c: 221: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	222
;MCU_16f1518_B1.c: 222: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	223
	
l1640:	
	return
	opt stack 0
GLOBAL	__end_of_INT_Set
	__end_of_INT_Set:
	signat	_INT_Set,88
	global	_ADC_Set

;; *************** function _ADC_Set *****************
;; Defined at:
;;		line 303 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text52,local,class=CODE,delta=2,merge=1
	line	303
global __ptext52
__ptext52:	;psect for function _ADC_Set
psect	text52
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	303
	global	__size_of_ADC_Set
	__size_of_ADC_Set	equ	__end_of_ADC_Set-_ADC_Set
	
_ADC_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _ADC_Set: [wreg]
	line	305
	
l8047:	
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
	
l1660:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Set
	__end_of_ADC_Set:
	signat	_ADC_Set,88
	global	_MainT_Initialization

;; *************** function _MainT_Initialization *****************
;; Defined at:
;;		line 92 in file "G:\Program\PIC\Source_File\main.c"
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
psect	text53,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\main.c"
	line	92
global __ptext53
__ptext53:	;psect for function _MainT_Initialization
psect	text53
	file	"G:\Program\PIC\Source_File\main.c"
	line	92
	global	__size_of_MainT_Initialization
	__size_of_MainT_Initialization	equ	__end_of_MainT_Initialization-_MainT_Initialization
	
_MainT_Initialization:	
;incstack = 0
	opt	stack 11
; Regs used in _MainT_Initialization: [wregfsr1]
	line	95
	
l8569:	
;main.c: 95: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Product)^080h
	line	98
;main.c: 98: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initialization+0)+0
	movf	(??_MainT_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_TMain)^080h
	line	99
	
l8571:	
;main.c: 99: TMain->FirstOpen=1;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	100
	
l8573:	
;main.c: 100: TMain->First=1;
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	101
	
l1301:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initialization
	__end_of_MainT_Initialization:
	signat	_MainT_Initialization,88
	global	_MainT

;; *************** function _MainT *****************
;; Defined at:
;;		line 103 in file "G:\Program\PIC\Source_File\main.c"
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setBuz
;;		_setLED
;;		_setLoad_Enable
;;		_setRF_Enable
;;		_setSw_Enable
;;		_setTemp_Enable
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text54,local,class=CODE,delta=2,merge=1
	line	103
global __ptext54
__ptext54:	;psect for function _MainT
psect	text54
	file	"G:\Program\PIC\Source_File\main.c"
	line	103
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
;incstack = 0
	opt	stack 7
; Regs used in _MainT: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	106
	
l8701:	
;main.c: 106: if(!TMain->PowerON)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u7631
	goto	u7630
u7631:
	goto	l8717
u7630:
	line	108
	
l8703:	
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
	
l8705:	
;main.c: 109: if(TMain->PowerCount == 150)
	incf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(096h)
	skipz
	goto	u7645
	moviw	[1]fsr1
	xorlw	high(096h)
u7645:
	skipz
	goto	u7641
	goto	u7640
u7641:
	goto	l1310
u7640:
	line	111
	
l8707:	
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
	
l8709:	
;main.c: 115: setTemp_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setTemp_Enable@command)
	incf	(setTemp_Enable@command),f
	movlw	(01h)
	fcall	_setTemp_Enable
	line	119
	
l8711:	
;main.c: 119: setLoad_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setLoad_Enable@command)
	incf	(setLoad_Enable@command),f
	movlw	(01h)
	fcall	_setLoad_Enable
	line	125
	
l8713:	
;main.c: 125: setBuz(1,3,50);
	movlw	(03h)
	movlb 0	; select bank0
	movwf	(??_MainT+0)+0
	movf	(??_MainT+0)+0,w
	movwf	(setBuz@count)
	movlw	low(032h)
	movwf	(setBuz@time)
	movlw	high(032h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	126
	
l8715:	
;main.c: 126: TMain->SelfTest=1;
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	129
;main.c: 129: setSw_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	incf	(setSw_Enable@command),f
	movlw	(01h)
	fcall	_setSw_Enable
	line	133
;main.c: 133: setSw_Enable(2,1);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	incf	(setSw_Enable@command),f
	movlw	(02h)
	fcall	_setSw_Enable
	line	141
;main.c: 141: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setRF_Enable@command)
	incf	(setRF_Enable@command),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l1310
	line	145
	
l1305:	
	line	146
;main.c: 145: }
;main.c: 146: }
	goto	l1310
	line	147
	
l1304:	
	line	156
	
l8717:	
;main.c: 147: else
;main.c: 148: {
;main.c: 156: TMain->Count1++;
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
	line	157
	
l8719:	
;main.c: 157: if(TMain->Count1 == 100)
	movf	(_TMain)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(064h)
	skipz
	goto	u7655
	moviw	[1]fsr1
	xorlw	high(064h)
u7655:
	skipz
	goto	u7651
	goto	u7650
u7651:
	goto	l1310
u7650:
	line	159
	
l8721:	
;main.c: 158: {
;main.c: 159: TMain->Count1=0;
	movf	(_TMain)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	160
	
l8723:	
;main.c: 160: RB5=~RB5;
	movlw	1<<((109)&7)
	movlb 0	; select bank0
	xorwf	((109)/8),f
	line	171
	
l8725:	
;main.c: 171: if(TMain->Flag)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u7661
	goto	u7660
u7661:
	goto	l8729
u7660:
	goto	l1310
	line	180
	
l8727:	
;main.c: 172: {
;main.c: 180: }
	goto	l1310
	line	181
	
l1308:	
	line	183
	
l8729:	
;main.c: 181: else
;main.c: 182: {
;main.c: 183: TMain->Flag=1;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	184
	
l8731:	
;main.c: 184: setLED(99,11);
	movlw	(0Bh)
	movlb 0	; select bank0
	movwf	(??_MainT+0)+0
	movf	(??_MainT+0)+0,w
	movwf	(setLED@command)
	movlw	(063h)
	fcall	_setLED
	goto	l1310
	line	191
	
l1309:	
	goto	l1310
	line	192
	
l1307:	
	goto	l1310
	line	194
	
l1306:	
	line	195
	
l1310:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
	signat	_MainT,88
	global	_setTemp_Enable

;; *************** function _setTemp_Enable *****************
;; Defined at:
;;		line 29 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;;  command         1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1    2[BANK0 ] unsigned char 
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
;;		_TempPointSelect
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text55,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	29
global __ptext55
__ptext55:	;psect for function _setTemp_Enable
psect	text55
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	29
	global	__size_of_setTemp_Enable
	__size_of_setTemp_Enable	equ	__end_of_setTemp_Enable-_setTemp_Enable
	
_setTemp_Enable:	
;incstack = 0
	opt	stack 9
; Regs used in _setTemp_Enable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setTemp_Enable@temp stored from wreg
	movlb 0	; select bank0
	movwf	(setTemp_Enable@temp)
	line	31
	
l8009:	
;OverTemperature_B1.c: 31: TempPointSelect(temp);
	movf	(setTemp_Enable@temp),w
	fcall	_TempPointSelect
	line	32
	
l8011:	
;OverTemperature_B1.c: 32: Temp->Enable=command;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setTemp_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	33
	
l2100:	
	return
	opt stack 0
GLOBAL	__end_of_setTemp_Enable
	__end_of_setTemp_Enable:
	signat	_setTemp_Enable,8312
	global	_setLoad_Enable

;; *************** function _setLoad_Enable *****************
;; Defined at:
;;		line 330 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    3[BANK0 ] unsigned char 
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
;;		_LoadPointSelect
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text56,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	330
global __ptext56
__ptext56:	;psect for function _setLoad_Enable
psect	text56
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	330
	global	__size_of_setLoad_Enable
	__size_of_setLoad_Enable	equ	__end_of_setLoad_Enable-_setLoad_Enable
	
_setLoad_Enable:	
;incstack = 0
	opt	stack 9
; Regs used in _setLoad_Enable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLoad_Enable@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Enable@load)
	line	332
	
l8013:	
;OverLoad_B1.c: 332: LoadPointSelect(load);
	movf	(setLoad_Enable@load),w
	fcall	_LoadPointSelect
	line	333
	
l8015:	
;OverLoad_B1.c: 333: Load->Enable=command;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	334
	
l8017:	
;OverLoad_B1.c: 334: Load->GO=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	335
	
l1925:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Enable
	__end_of_setLoad_Enable:
	signat	_setLoad_Enable,8312
	global	_Load_Main

;; *************** function _Load_Main *****************
;; Defined at:
;;		line 24 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
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
;;		_setLoad_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text57,local,class=CODE,delta=2,merge=1
	line	24
global __ptext57
__ptext57:	;psect for function _Load_Main
psect	text57
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	24
	global	__size_of_Load_Main
	__size_of_Load_Main	equ	__end_of_Load_Main-_Load_Main
	
_Load_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _Load_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	27
	
l8749:	
;OverLoad_B1.c: 27: setLoad_Main(1);
	movlw	(01h)
	fcall	_setLoad_Main
	line	29
	
l1859:	
	return
	opt stack 0
GLOBAL	__end_of_Load_Main
	__end_of_Load_Main:
	signat	_Load_Main,88
	global	_setLoad_Main

;; *************** function _setLoad_Main *****************
;; Defined at:
;;		line 68 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1   19[BANK0 ] unsigned char 
;;  i               1    0        unsigned char 
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
;;		_LoadPointSelect
;;		___lwdiv
;;		___wmul
;;		_getPF_Safe
;;		_getTemp_Safe
;;		_setDimmerLights_Clear
;;		_setLoad_AH_AL_Restore
;;		_setLoad_ERROR
;; This function is called by:
;;		_Load_Main
;; This function uses a non-reentrant model
;;
psect	text58,local,class=CODE,delta=2,merge=1
	line	68
global __ptext58
__ptext58:	;psect for function _setLoad_Main
psect	text58
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	68
	global	__size_of_setLoad_Main
	__size_of_setLoad_Main	equ	__end_of_setLoad_Main-_setLoad_Main
	
_setLoad_Main:	
;incstack = 0
	opt	stack 5
; Regs used in _setLoad_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;setLoad_Main@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Main@load)
	line	71
	
l8115:	
;OverLoad_B1.c: 70: char i;
;OverLoad_B1.c: 71: LoadPointSelect(load);
	movf	(setLoad_Main@load),w
	fcall	_LoadPointSelect
	line	72
	
l8117:	
;OverLoad_B1.c: 72: if(Load->ERROR)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u6671
	goto	u6670
u6671:
	goto	l8127
u6670:
	line	74
	
l8119:	
;OverLoad_B1.c: 73: {
;OverLoad_B1.c: 74: Load->ErrorTime++;
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
	line	75
	
l8121:	
;OverLoad_B1.c: 75: if(Load->ErrorTime >= 1000)
	movf	(_Load),w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movlw	high(03E8h)
	subwf	1+(??_setLoad_Main+0)+0,w
	movlw	low(03E8h)
	skipnz
	subwf	0+(??_setLoad_Main+0)+0,w
	skipc
	goto	u6681
	goto	u6680
u6681:
	goto	l1901
u6680:
	line	77
	
l8123:	
;OverLoad_B1.c: 76: {
;OverLoad_B1.c: 77: Load->ErrorTime=0;
	movf	(_Load),w
	addlw	03h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	78
	
l8125:	
;OverLoad_B1.c: 78: setLoad_ERROR(load,0);
	clrf	(setLoad_ERROR@command)
	movf	(setLoad_Main@load),w
	fcall	_setLoad_ERROR
	goto	l1901
	line	79
	
l1877:	
	line	80
;OverLoad_B1.c: 79: }
;OverLoad_B1.c: 80: }
	goto	l1901
	line	81
	
l1876:	
	line	83
	
l8127:	
;OverLoad_B1.c: 81: else
;OverLoad_B1.c: 82: {
;OverLoad_B1.c: 83: if(Load->ADtoGO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u6691
	goto	u6690
u6691:
	goto	l8203
u6690:
	line	85
	
l8129:	
;OverLoad_B1.c: 84: {
;OverLoad_B1.c: 85: Load->LightsCount=Load->Lights1Status+Load->Lights2Status+Load->Lights3Status;
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
	movwf	(??_setLoad_Main+0)+0
	movf	(_Load),w
	addlw	043h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	movf	indf0,w
	addwf	(??_setLoad_Main+0)+0,w
	addwf	indf1,w
	movwf	(??_setLoad_Main+1)+0
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Main+1)+0,w
	movwf	indf1
	line	86
	
l8131:	
;OverLoad_B1.c: 86: Load->Time++;
	incf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	87
	
l8133:	
;OverLoad_B1.c: 87: if(Load->Time >= 4)
	incf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movlw	high(04h)
	subwf	1+(??_setLoad_Main+0)+0,w
	movlw	low(04h)
	skipnz
	subwf	0+(??_setLoad_Main+0)+0,w
	skipc
	goto	u6701
	goto	u6700
u6701:
	goto	l1901
u6700:
	line	89
	
l8135:	
;OverLoad_B1.c: 88: {
;OverLoad_B1.c: 89: Load->Time=0;
	incf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	90
;OverLoad_B1.c: 90: Load->ADtoGO=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,4
	line	91
	
l8137:	
;OverLoad_B1.c: 91: Load->ADH=((Load->AH[2]+Load->AH[3]+Load->AH[4])/3);
	movlw	low(03h)
	movwf	(___lwdiv@divisor)
	movlw	high(03h)
	movwf	((___lwdiv@divisor))+1
	movf	(_Load),w
	addlw	010h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	0Ch
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr0
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr0
	movwf	(??_setLoad_Main+0)+0+1
	movf	(_Load),w
	addlw	0Eh
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr0
	addwf	0+(??_setLoad_Main+0)+0,w
	movwf	(??_setLoad_Main+2)+0
	moviw	[1]fsr0
	addwfc	1+(??_setLoad_Main+0)+0,w
	movwf	(??_setLoad_Main+2)+0+1
	moviw	[0]fsr1
	addwf	0+(??_setLoad_Main+2)+0,w
	movwf	(___lwdiv@dividend)
	moviw	[1]fsr1
	addwfc	1+(??_setLoad_Main+2)+0,w
	movwf	(___lwdiv@dividend)+1
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
	line	92
	
l8139:	
;OverLoad_B1.c: 92: Load->ADL=((Load->AL[2]+Load->AL[3]+Load->AL[4])/3);
	movlw	low(03h)
	movwf	(___lwdiv@divisor)
	movlw	high(03h)
	movwf	((___lwdiv@divisor))+1
	movf	(_Load),w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(_Load),w
	addlw	01Eh
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr0
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr0
	movwf	(??_setLoad_Main+0)+0+1
	movf	(_Load),w
	addlw	020h
	movwf	fsr0l
	movlw 2	; select bank4/5
	movwf fsr0h	
	
	moviw	[0]fsr0
	addwf	0+(??_setLoad_Main+0)+0,w
	movwf	(??_setLoad_Main+2)+0
	moviw	[1]fsr0
	addwfc	1+(??_setLoad_Main+0)+0,w
	movwf	(??_setLoad_Main+2)+0+1
	moviw	[0]fsr1
	addwf	0+(??_setLoad_Main+2)+0,w
	movwf	(___lwdiv@dividend)
	moviw	[1]fsr1
	addwfc	1+(??_setLoad_Main+2)+0,w
	movwf	(___lwdiv@dividend)+1
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
	line	93
;OverLoad_B1.c: 93: if(Load->ADH > Load->ADL)
	movf	(_Load),w
	addlw	02Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movf	(_Load),w
	addlw	030h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+2)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+2)+0+1
	movf	1+(??_setLoad_Main+0)+0,w
	subwf	1+(??_setLoad_Main+2)+0,w
	skipz
	goto	u6715
	movf	0+(??_setLoad_Main+0)+0,w
	subwf	0+(??_setLoad_Main+2)+0,w
u6715:
	skipnc
	goto	u6711
	goto	u6710
u6711:
	goto	l8201
u6710:
	line	95
	
l8141:	
;OverLoad_B1.c: 94: {
;OverLoad_B1.c: 95: Load->AD=(Load->ADH-Load->ADL);
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
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr0
	movwf	(??_setLoad_Main+0)+0+1
	comf	(??_setLoad_Main+0)+0,f
	comf	(??_setLoad_Main+0)+1,f
	incf	(??_setLoad_Main+0)+0,f
	skipnz
	incf	(??_setLoad_Main+0)+1,f
	moviw	[0]fsr1
	addwf	0+(??_setLoad_Main+0)+0,w
	movwf	(??_setLoad_Main+2)+0
	moviw	[1]fsr1
	addwfc	1+(??_setLoad_Main+0)+0,w
	movwf	(??_setLoad_Main+2)+0+1
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_setLoad_Main+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_setLoad_Main+2)+0,w
	movwi	[1]fsr1
	line	96
	
l8143:	
;OverLoad_B1.c: 96: if(Load->Count < 10)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(0Ah)
	subwf	indf1,w
	skipnc
	goto	u6721
	goto	u6720
u6721:
	goto	l8159
u6720:
	line	98
	
l8145:	
;OverLoad_B1.c: 97: {
;OverLoad_B1.c: 98: Load->Count++;
	movlw	(01h)
	movwf	(??_setLoad_Main+0)+0
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Main+0)+0,w
	addwf	indf1,f
	line	99
	
l8147:	
;OverLoad_B1.c: 99: if(Load->Count == 1)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u6731
	goto	u6730
u6731:
	goto	l8151
u6730:
	line	101
	
l8149:	
;OverLoad_B1.c: 100: {
;OverLoad_B1.c: 101: Load->JudgeValue=255;
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0FFh)
	movwi	[0]fsr1
	movlw	high(0FFh)
	movwi	[1]fsr1
	goto	l8151
	line	102
	
l1883:	
	line	103
	
l8151:	
;OverLoad_B1.c: 102: }
;OverLoad_B1.c: 103: if(Load->Count == 3)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	03h&0ffh
	skipz
	goto	u6741
	goto	u6740
u6741:
	goto	l8159
u6740:
	line	105
	
l8153:	
;OverLoad_B1.c: 104: {
;OverLoad_B1.c: 105: if(Load->LightsCount == 1)
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u6751
	goto	u6750
u6751:
	goto	l8157
u6750:
	line	107
	
l8155:	
;OverLoad_B1.c: 106: {
;OverLoad_B1.c: 107: Load->JudgeValue=0xffff;
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	low(0FFFFh)
	movwi	[0]fsr1
	movlw	high(0FFFFh)
	movwi	[1]fsr1
	line	108
;OverLoad_B1.c: 108: }
	goto	l8159
	line	109
	
l1885:	
	line	111
	
l8157:	
;OverLoad_B1.c: 109: else
;OverLoad_B1.c: 110: {
;OverLoad_B1.c: 111: Load->JudgeValue=0xffff+Load->TotalLoad;
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movf	0+(??_setLoad_Main+0)+0,w
	addlw	low(0FFFFh)
	movwf	(??_setLoad_Main+2)+0
	movlw	high(0FFFFh)
	addwfc	1+(??_setLoad_Main+0)+0,w
	movwf	1+(??_setLoad_Main+2)+0
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	0+(??_setLoad_Main+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_setLoad_Main+2)+0,w
	movwi	[1]fsr1
	goto	l8159
	line	112
	
l1886:	
	goto	l8159
	line	113
	
l1884:	
	goto	l8159
	line	114
	
l1882:	
	line	115
	
l8159:	
;OverLoad_B1.c: 112: }
;OverLoad_B1.c: 113: }
;OverLoad_B1.c: 114: }
;OverLoad_B1.c: 115: if(Load->AD >= Load->JudgeValue)
	movf	(_Load),w
	addlw	036h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+0)+0+1
	movf	(_Load),w
	addlw	02Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_setLoad_Main+2)+0
	moviw	[1]fsr1
	movwf	(??_setLoad_Main+2)+0+1
	movf	1+(??_setLoad_Main+0)+0,w
	subwf	1+(??_setLoad_Main+2)+0,w
	skipz
	goto	u6765
	movf	0+(??_setLoad_Main+0)+0,w
	subwf	0+(??_setLoad_Main+2)+0,w
u6765:
	skipc
	goto	u6761
	goto	u6760
u6761:
	goto	l8169
u6760:
	line	117
	
l8161:	
;OverLoad_B1.c: 116: {
;OverLoad_B1.c: 117: Load->ErrorCount++;
	movlw	(01h)
	movwf	(??_setLoad_Main+0)+0
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Main+0)+0,w
	addwf	indf1,f
	line	118
	
l8163:	
;OverLoad_B1.c: 118: if(Load->ErrorCount >2)
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(03h)
	subwf	indf1,w
	skipc
	goto	u6771
	goto	u6770
u6771:
	goto	l8201
u6770:
	line	120
	
l8165:	
;OverLoad_B1.c: 119: {
;OverLoad_B1.c: 120: Load->ErrorCount=0;
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	121
	
l8167:	
;OverLoad_B1.c: 121: setLoad_ERROR(load,1);
	clrf	(setLoad_ERROR@command)
	incf	(setLoad_ERROR@command),f
	movf	(setLoad_Main@load),w
	fcall	_setLoad_ERROR
	goto	l8201
	line	128
	
l1888:	
	line	129
;OverLoad_B1.c: 128: }
;OverLoad_B1.c: 129: }
	goto	l8201
	line	130
	
l1887:	
	line	132
	
l8169:	
;OverLoad_B1.c: 130: else
;OverLoad_B1.c: 131: {
;OverLoad_B1.c: 132: Load->ErrorCount=0;
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	133
	
l8171:	
;OverLoad_B1.c: 133: if(Load->Count > 5)
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(06h)
	subwf	indf1,w
	skipc
	goto	u6781
	goto	u6780
u6781:
	goto	l8201
u6780:
	line	135
	
l8173:	
;OverLoad_B1.c: 134: {
;OverLoad_B1.c: 135: if(Load->SafeCount < 6)
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(06h)
	subwf	indf1,w
	skipnc
	goto	u6791
	goto	u6790
u6791:
	goto	l8177
u6790:
	line	137
	
l8175:	
;OverLoad_B1.c: 136: {
;OverLoad_B1.c: 137: Load->SafeCount++;
	movlw	(01h)
	movwf	(??_setLoad_Main+0)+0
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Main+0)+0,w
	addwf	indf1,f
	goto	l8177
	line	138
	
l1891:	
	line	139
	
l8177:	
;OverLoad_B1.c: 138: }
;OverLoad_B1.c: 139: if(Load->SafeCount > 6-5)
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	(02h)
	subwf	indf1,w
	skipc
	goto	u6801
	goto	u6800
u6801:
	goto	l8193
u6800:
	line	141
	
l8179:	
;OverLoad_B1.c: 140: {
;OverLoad_B1.c: 141: if(Load->StatusOn)
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u6811
	goto	u6810
u6811:
	goto	l8187
u6810:
	line	143
	
l8181:	
;OverLoad_B1.c: 142: {
;OverLoad_B1.c: 143: Load->StatusOn=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	144
	
l8183:	
;OverLoad_B1.c: 144: Load->TotalLoad=Load->AD;
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
	line	145
	
l8185:	
;OverLoad_B1.c: 145: Load->JudgeValue=0xffff*Load->LightsCount;
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setLoad_Main+0)+0
	clrf	(??_setLoad_Main+0)+0+1
	movf	0+(??_setLoad_Main+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_setLoad_Main+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	low(0FFFFh)
	movwf	(___wmul@multiplicand)
	movlw	high(0FFFFh)
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
	goto	l8187
	line	146
	
l1893:	
	line	147
	
l8187:	
;OverLoad_B1.c: 146: }
;OverLoad_B1.c: 147: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	149
	
l8189:	
;OverLoad_B1.c: 149: setDimmerLights_Clear(1,1);
	clrf	(setDimmerLights_Clear@command)
	incf	(setDimmerLights_Clear@command),f
	movlw	(01h)
	fcall	_setDimmerLights_Clear
	line	153
	
l8191:	
;OverLoad_B1.c: 153: setDimmerLights_Clear(2,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Clear@command)
	incf	(setDimmerLights_Clear@command),f
	movlw	(02h)
	fcall	_setDimmerLights_Clear
	goto	l8193
	line	159
	
l1892:	
	line	160
	
l8193:	
;OverLoad_B1.c: 159: }
;OverLoad_B1.c: 160: if(Load->StatusOff)
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u6821
	goto	u6820
u6821:
	goto	l8201
u6820:
	line	162
	
l8195:	
;OverLoad_B1.c: 161: {
;OverLoad_B1.c: 162: Load->StatusOff=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	163
	
l8197:	
;OverLoad_B1.c: 163: Load->TotalLoad=Load->AD;
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
	line	164
	
l8199:	
;OverLoad_B1.c: 164: Load->JudgeValue=0xffff*Load->LightsCount;
	movf	(_Load),w
	addlw	03Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setLoad_Main+0)+0
	clrf	(??_setLoad_Main+0)+0+1
	movf	0+(??_setLoad_Main+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_setLoad_Main+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	low(0FFFFh)
	movwf	(___wmul@multiplicand)
	movlw	high(0FFFFh)
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
	goto	l8201
	line	165
	
l1894:	
	goto	l8201
	line	166
	
l1890:	
	goto	l8201
	line	167
	
l1889:	
	goto	l8201
	line	168
	
l1881:	
	line	169
	
l8201:	
;OverLoad_B1.c: 165: }
;OverLoad_B1.c: 166: }
;OverLoad_B1.c: 167: }
;OverLoad_B1.c: 168: }
;OverLoad_B1.c: 169: setLoad_AH_AL_Restore(load);
	movlb 0	; select bank0
	movf	(setLoad_Main@load),w
	fcall	_setLoad_AH_AL_Restore
	goto	l1901
	line	180
	
l1880:	
	line	181
;OverLoad_B1.c: 180: }
;OverLoad_B1.c: 181: }
	goto	l1901
	line	182
	
l1879:	
	line	184
	
l8203:	
;OverLoad_B1.c: 182: else
;OverLoad_B1.c: 183: {
;OverLoad_B1.c: 184: if(Load->GO)
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u6831
	goto	u6830
u6831:
	goto	l8215
u6830:
	line	186
	
l8205:	
;OverLoad_B1.c: 185: {
;OverLoad_B1.c: 186: if(Load->LightsON == 0)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfsc	indf1,2
	goto	u6841
	goto	u6840
u6841:
	goto	l8209
u6840:
	line	188
	
l8207:	
;OverLoad_B1.c: 187: {
;OverLoad_B1.c: 188: Load->LightsON=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,2
	line	189
;OverLoad_B1.c: 189: Load->Safe=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,3
	goto	l8209
	line	190
	
l1897:	
	line	191
	
l8209:	
;OverLoad_B1.c: 190: }
;OverLoad_B1.c: 191: if(getTemp_Safe(1) && getPF_Safe(1))
	movlw	(01h)
	fcall	_getTemp_Safe
	xorlw	0&0ffh
	skipnz
	goto	u6851
	goto	u6850
u6851:
	goto	l1901
u6850:
	
l8211:	
	movlw	(01h)
	fcall	_getPF_Safe
	xorlw	0&0ffh
	skipnz
	goto	u6861
	goto	u6860
u6861:
	goto	l1901
u6860:
	line	193
	
l8213:	
;OverLoad_B1.c: 192: {
;OverLoad_B1.c: 193: Load->ADtoGO=1;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l1901
	line	194
	
l1898:	
	line	195
;OverLoad_B1.c: 194: }
;OverLoad_B1.c: 195: }
	goto	l1901
	line	196
	
l1896:	
	line	198
	
l8215:	
;OverLoad_B1.c: 196: else
;OverLoad_B1.c: 197: {
;OverLoad_B1.c: 198: if(Load->LightsON)
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u6871
	goto	u6870
u6871:
	goto	l1901
u6870:
	line	200
	
l8217:	
;OverLoad_B1.c: 199: {
;OverLoad_B1.c: 200: Load->LightsON=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,2
	line	201
;OverLoad_B1.c: 201: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	202
	
l8219:	
;OverLoad_B1.c: 202: Load->ErrorCount=0;
	movf	(_Load),w
	addlw	03Ch
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	203
	
l8221:	
;OverLoad_B1.c: 203: Load->Count=0;
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	204
;OverLoad_B1.c: 204: Load->TotalLoad=0;
	movf	(_Load),w
	addlw	06h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	205
	
l8223:	
;OverLoad_B1.c: 205: Load->NumberCount=0;
	movf	(_Load),w
	addlw	03Fh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	206
	
l8225:	
;OverLoad_B1.c: 206: Load->StatusOn=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	207
	
l8227:	
;OverLoad_B1.c: 207: Load->StatusOff=0;
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	208
	
l8229:	
;OverLoad_B1.c: 208: setLoad_AH_AL_Restore(1);
	movlw	(01h)
	fcall	_setLoad_AH_AL_Restore
	line	211
	
l8231:	
;OverLoad_B1.c: 211: setDimmerLights_Clear(1,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Clear@command)
	incf	(setDimmerLights_Clear@command),f
	movlw	(01h)
	fcall	_setDimmerLights_Clear
	line	215
	
l8233:	
;OverLoad_B1.c: 215: setDimmerLights_Clear(2,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Clear@command)
	incf	(setDimmerLights_Clear@command),f
	movlw	(02h)
	fcall	_setDimmerLights_Clear
	goto	l1901
	line	235
	
l1900:	
	goto	l1901
	line	236
	
l1899:	
	goto	l1901
	line	237
	
l1895:	
	goto	l1901
	line	238
	
l1878:	
	line	239
	
l1901:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Main
	__end_of_setLoad_Main:
	signat	_setLoad_Main,4216
	global	_setLoad_ERROR

;; *************** function _setLoad_ERROR *****************
;; Defined at:
;;		line 241 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  command         1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1   14[BANK0 ] unsigned char 
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
;;		_DimmerLights_ERROR
;;		_LoadPointSelect
;;		_setDimmer_LoadERROR
;;		_setLED
;;		_setRF_Enable
;;		_setSw_Enable
;; This function is called by:
;;		_setLoad_Main
;; This function uses a non-reentrant model
;;
psect	text59,local,class=CODE,delta=2,merge=1
	line	241
global __ptext59
__ptext59:	;psect for function _setLoad_ERROR
psect	text59
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	241
	global	__size_of_setLoad_ERROR
	__size_of_setLoad_ERROR	equ	__end_of_setLoad_ERROR-_setLoad_ERROR
	
_setLoad_ERROR:	
;incstack = 0
	opt	stack 5
; Regs used in _setLoad_ERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLoad_ERROR@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_ERROR@load)
	line	243
	
l7545:	
;OverLoad_B1.c: 243: LoadPointSelect(load);
	movf	(setLoad_ERROR@load),w
	fcall	_LoadPointSelect
	line	244
	
l7547:	
;OverLoad_B1.c: 244: if(command)
	movlb 0	; select bank0
	movf	(setLoad_ERROR@command),w
	skipz
	goto	u5960
	goto	l7567
u5960:
	line	246
	
l7549:	
;OverLoad_B1.c: 245: {
;OverLoad_B1.c: 246: setDimmer_LoadERROR(1,1);
	clrf	(setDimmer_LoadERROR@command)
	incf	(setDimmer_LoadERROR@command),f
	movlw	(01h)
	fcall	_setDimmer_LoadERROR
	line	247
	
l7551:	
;OverLoad_B1.c: 247: Load->ERROR=1;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,5
	line	248
	
l7553:	
;OverLoad_B1.c: 248: Load->ErrorStatus=1;
	movf	(_Load),w
	addlw	05h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	249
	
l7555:	
;OverLoad_B1.c: 249: Load->Safe=0;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,3
	line	250
	
l7557:	
;OverLoad_B1.c: 250: DimmerLights_ERROR();
	fcall	_DimmerLights_ERROR
	line	251
	
l7559:	
;OverLoad_B1.c: 251: setLED(99,11);
	movlw	(0Bh)
	movlb 0	; select bank0
	movwf	(??_setLoad_ERROR+0)+0
	movf	(??_setLoad_ERROR+0)+0,w
	movwf	(setLED@command)
	movlw	(063h)
	fcall	_setLED
	line	254
	
l7561:	
;OverLoad_B1.c: 254: setSw_Enable(1,0);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	movlw	(01h)
	fcall	_setSw_Enable
	line	258
	
l7563:	
;OverLoad_B1.c: 258: setSw_Enable(2,0);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	movlw	(02h)
	fcall	_setSw_Enable
	line	266
	
l7565:	
;OverLoad_B1.c: 266: setRF_Enable(1,0);
	movlb 0	; select bank0
	clrf	(setRF_Enable@command)
	movlw	(01h)
	fcall	_setRF_Enable
	line	268
;OverLoad_B1.c: 268: }
	goto	l1907
	line	269
	
l1904:	
	
l7567:	
;OverLoad_B1.c: 269: else if(command == 0)
	movlb 0	; select bank0
	movf	(setLoad_ERROR@command),f
	skipz
	goto	u5971
	goto	u5970
u5971:
	goto	l1907
u5970:
	line	271
	
l7569:	
;OverLoad_B1.c: 270: {
;OverLoad_B1.c: 271: setDimmer_LoadERROR(1,0);
	clrf	(setDimmer_LoadERROR@command)
	movlw	(01h)
	fcall	_setDimmer_LoadERROR
	line	272
	
l7571:	
;OverLoad_B1.c: 272: Load->ERROR=0;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,5
	line	273
	
l7573:	
;OverLoad_B1.c: 273: Load->ErrorStatus=0;
	movf	(_Load),w
	addlw	05h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	line	274
	
l7575:	
;OverLoad_B1.c: 274: Load->Safe=1;
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	275
	
l7577:	
;OverLoad_B1.c: 275: setLED(99,10);
	movlw	(0Ah)
	movwf	(??_setLoad_ERROR+0)+0
	movf	(??_setLoad_ERROR+0)+0,w
	movwf	(setLED@command)
	movlw	(063h)
	fcall	_setLED
	line	278
	
l7579:	
;OverLoad_B1.c: 278: setSw_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	incf	(setSw_Enable@command),f
	movlw	(01h)
	fcall	_setSw_Enable
	line	282
	
l7581:	
;OverLoad_B1.c: 282: setSw_Enable(2,1);
	movlb 0	; select bank0
	clrf	(setSw_Enable@command)
	incf	(setSw_Enable@command),f
	movlw	(02h)
	fcall	_setSw_Enable
	line	290
	
l7583:	
;OverLoad_B1.c: 290: setRF_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setRF_Enable@command)
	incf	(setRF_Enable@command),f
	movlw	(01h)
	fcall	_setRF_Enable
	goto	l1907
	line	292
	
l1906:	
	goto	l1907
	line	293
	
l1905:	
	
l1907:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_ERROR
	__end_of_setLoad_ERROR:
	signat	_setLoad_ERROR,8312
	global	_setSw_Enable

;; *************** function _setSw_Enable *****************
;; Defined at:
;;		line 86 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
;;		_MainT
;;		_setLoad_ERROR
;;		_setOverTemp_ERROR
;;		_setPowerFault_ERROR
;; This function uses a non-reentrant model
;;
psect	text60,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	86
global __ptext60
__ptext60:	;psect for function _setSw_Enable
psect	text60
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	86
	global	__size_of_setSw_Enable
	__size_of_setSw_Enable	equ	__end_of_setSw_Enable-_setSw_Enable
	
_setSw_Enable:	
;incstack = 0
	opt	stack 7
; Regs used in _setSw_Enable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setSw_Enable@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Enable@sw)
	line	88
	
l7243:	
;Switch_B1.c: 88: SwPointSelect(sw);
	movf	(setSw_Enable@sw),w
	fcall	_SwPointSelect
	line	89
	
l7245:	
;Switch_B1.c: 89: Sw->Enable=command;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setSw_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	90
	
l2817:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Enable
	__end_of_setSw_Enable:
	signat	_setSw_Enable,8312
	global	_setRF_Enable

;; *************** function _setRF_Enable *****************
;; Defined at:
;;		line 173 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;;  command         1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    6[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_CC2500_WriteCommand
;;		_RF_RxDisable
;;		_RfPointSelect
;; This function is called by:
;;		_MainT
;;		_setLoad_ERROR
;;		_setOverTemp_ERROR
;;		_setPowerFault_ERROR
;; This function uses a non-reentrant model
;;
psect	text61,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	173
global __ptext61
__ptext61:	;psect for function _setRF_Enable
psect	text61
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	173
	global	__size_of_setRF_Enable
	__size_of_setRF_Enable	equ	__end_of_setRF_Enable-_setRF_Enable
	
_setRF_Enable:	
;incstack = 0
	opt	stack 5
; Regs used in _setRF_Enable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_Enable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Enable@rf)
	line	175
	
l7247:	
;RF_Control_B1.c: 175: RfPointSelect(rf);
	movf	(setRF_Enable@rf),w
	fcall	_RfPointSelect
	line	176
	
l7249:	
;RF_Control_B1.c: 176: if(command)
	movlb 0	; select bank0
	movf	(setRF_Enable@command),w
	skipz
	goto	u5660
	goto	l7253
u5660:
	line	178
	
l7251:	
;RF_Control_B1.c: 177: {
;RF_Control_B1.c: 178: RF->Enable=1;
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	179
;RF_Control_B1.c: 179: }
	goto	l2557
	line	180
	
l2555:	
	line	182
	
l7253:	
;RF_Control_B1.c: 180: else
;RF_Control_B1.c: 181: {
;RF_Control_B1.c: 182: RF->Enable=0;
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	183
;RF_Control_B1.c: 183: RF->Learn=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	184
	
l7255:	
;RF_Control_B1.c: 184: Transceive_GO=0;
	bcf	(_Transceive_GO/8),(_Transceive_GO)&7
	line	185
	
l7257:	
;RF_Control_B1.c: 185: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	186
	
l7259:	
;RF_Control_B1.c: 186: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	187
	
l7261:	
;RF_Control_B1.c: 187: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	goto	l2557
	line	188
	
l2556:	
	line	189
	
l2557:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Enable
	__end_of_setRF_Enable:
	signat	_setRF_Enable,8312
	global	_RF_RxDisable

;; *************** function _RF_RxDisable *****************
;; Defined at:
;;		line 191 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
;;		_setRF_Enable
;; This function uses a non-reentrant model
;;
psect	text62,local,class=CODE,delta=2,merge=1
	line	191
global __ptext62
__ptext62:	;psect for function _RF_RxDisable
psect	text62
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	191
	global	__size_of_RF_RxDisable
	__size_of_RF_RxDisable	equ	__end_of_RF_RxDisable-_RF_RxDisable
	
_RF_RxDisable:	
;incstack = 0
	opt	stack 5
; Regs used in _RF_RxDisable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;RF_RxDisable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(RF_RxDisable@rf)
	line	193
	
l7113:	
;RF_Control_B1.c: 193: RfPointSelect(rf);
	movf	(RF_RxDisable@rf),w
	fcall	_RfPointSelect
	line	194
	
l7115:	
;RF_Control_B1.c: 194: if(RF->RxStatus || RF->ReceiveGO)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u5541
	goto	u5540
u5541:
	goto	l7119
u5540:
	
l7117:	
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u5551
	goto	u5550
u5551:
	goto	l2563
u5550:
	goto	l7119
	
l2562:	
	line	196
	
l7119:	
;RF_Control_B1.c: 195: {
;RF_Control_B1.c: 196: RF->RxStatus=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	197
;RF_Control_B1.c: 197: RF->ReceiveGO=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	198
	
l7121:	
;RF_Control_B1.c: 198: RF->DebounceTime=0;
	incf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	199
	
l7123:	
;RF_Control_B1.c: 199: RF->Debounce=0;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	200
	
l7125:	
;RF_Control_B1.c: 200: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	201
	
l7127:	
;RF_Control_B1.c: 201: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	202
	
l7129:	
;RF_Control_B1.c: 202: setINT_GO(0);
	movlw	(0)
	fcall	_setINT_GO
	goto	l2563
	line	203
	
l2560:	
	line	204
	
l2563:	
	return
	opt stack 0
GLOBAL	__end_of_RF_RxDisable
	__end_of_RF_RxDisable:
	signat	_RF_RxDisable,4216
	global	_setINT_GO

;; *************** function _setINT_GO *****************
;; Defined at:
;;		line 235 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
;;		_RF_RxDisable
;; This function uses a non-reentrant model
;;
psect	text63,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	235
global __ptext63
__ptext63:	;psect for function _setINT_GO
psect	text63
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	235
	global	__size_of_setINT_GO
	__size_of_setINT_GO	equ	__end_of_setINT_GO-_setINT_GO
	
_setINT_GO:	
;incstack = 0
	opt	stack 6
; Regs used in _setINT_GO: [wreg]
;setINT_GO@command stored from wreg
	movlb 0	; select bank0
	movwf	(setINT_GO@command)
	line	237
	
l6985:	
;MCU_16f1518_B1.c: 237: INTF=0;
	bcf	(89/8),(89)&7	;volatile
	line	238
	
l6987:	
;MCU_16f1518_B1.c: 238: INTE=command;
	btfsc	(setINT_GO@command),0
	goto	u5431
	goto	u5430
	
u5431:
	bsf	(92/8),(92)&7	;volatile
	goto	u5444
u5430:
	bcf	(92/8),(92)&7	;volatile
u5444:
	line	239
	
l1647:	
	return
	opt stack 0
GLOBAL	__end_of_setINT_GO
	__end_of_setINT_GO:
	signat	_setINT_GO,4216
	global	_setDimmer_LoadERROR

;; *************** function _setDimmer_LoadERROR *****************
;; Defined at:
;;		line 536 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    3[BANK0 ] unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_setLoad_ERROR
;; This function uses a non-reentrant model
;;
psect	text64,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	536
global __ptext64
__ptext64:	;psect for function _setDimmer_LoadERROR
psect	text64
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	536
	global	__size_of_setDimmer_LoadERROR
	__size_of_setDimmer_LoadERROR	equ	__end_of_setDimmer_LoadERROR-_setDimmer_LoadERROR
	
_setDimmer_LoadERROR:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmer_LoadERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmer_LoadERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmer_LoadERROR@dimmer)
	line	538
	
l7235:	
;Dimmer_B1.c: 538: DimmerPointSelect(dimmer);
	movf	(setDimmer_LoadERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	539
	
l7237:	
;Dimmer_B1.c: 539: Dimmer->LoadERROR=command;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDimmer_LoadERROR@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	540
	
l903:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmer_LoadERROR
	__end_of_setDimmer_LoadERROR:
	signat	_setDimmer_LoadERROR,8312
	global	_DimmerLights_ERROR

;; *************** function _DimmerLights_ERROR *****************
;; Defined at:
;;		line 255 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_getDimmerLights_StatusFlag
;;		_getDimmer_LoadERROR
;;		_getDimmer_PFERROR
;;		_getDimmer_TempERROR
;;		_setBuz
;;		_setDimmerLights_ERROR
;;		_setDimmerLights_TriggerERROR
;; This function is called by:
;;		_setLoad_ERROR
;;		_setOverTemp_ERROR
;;		_setPowerFault_ERROR
;; This function uses a non-reentrant model
;;
psect	text65,local,class=CODE,delta=2,merge=1
	line	255
global __ptext65
__ptext65:	;psect for function _DimmerLights_ERROR
psect	text65
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	255
	global	__size_of_DimmerLights_ERROR
	__size_of_DimmerLights_ERROR	equ	__end_of_DimmerLights_ERROR-_DimmerLights_ERROR
	
_DimmerLights_ERROR:	
;incstack = 0
	opt	stack 5
; Regs used in _DimmerLights_ERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	257
	
l7197:	
;Dimmer_B1.c: 257: if(getDimmer_TempERROR(1))
	movlw	(01h)
	fcall	_getDimmer_TempERROR
	xorlw	0&0ffh
	skipnz
	goto	u5611
	goto	u5610
u5611:
	goto	l7203
u5610:
	line	259
	
l7199:	
;Dimmer_B1.c: 258: {
;Dimmer_B1.c: 259: if(getDimmerLights_StatusFlag())
	fcall	_getDimmerLights_StatusFlag
	xorlw	0&0ffh
	skipnz
	goto	u5621
	goto	u5620
u5621:
	goto	l835
u5620:
	line	261
	
l7201:	
;Dimmer_B1.c: 260: {
;Dimmer_B1.c: 261: setBuz(1,10,300);
	movlw	(0Ah)
	movlb 0	; select bank0
	movwf	(??_DimmerLights_ERROR+0)+0
	movf	(??_DimmerLights_ERROR+0)+0,w
	movwf	(setBuz@count)
	movlw	low(012Ch)
	movwf	(setBuz@time)
	movlw	high(012Ch)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	262
	
l835:	
	line	265
;Dimmer_B1.c: 262: }
;Dimmer_B1.c: 265: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	line	268
;Dimmer_B1.c: 268: setDimmerLights_ERROR(2);
	movlw	(02h)
	fcall	_setDimmerLights_ERROR
	line	273
;Dimmer_B1.c: 273: }
	goto	l836
	line	274
	
l834:	
	
l7203:	
;Dimmer_B1.c: 274: else if(getDimmer_LoadERROR(1))
	movlw	(01h)
	fcall	_getDimmer_LoadERROR
	xorlw	0&0ffh
	skipnz
	goto	u5631
	goto	u5630
u5631:
	goto	l7207
u5630:
	line	276
	
l7205:	
;Dimmer_B1.c: 275: {
;Dimmer_B1.c: 276: setBuz(1,5,300);
	movlw	(05h)
	movlb 0	; select bank0
	movwf	(??_DimmerLights_ERROR+0)+0
	movf	(??_DimmerLights_ERROR+0)+0,w
	movwf	(setBuz@count)
	movlw	low(012Ch)
	movwf	(setBuz@time)
	movlw	high(012Ch)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	277
;Dimmer_B1.c: 277: setDimmerLights_ERROR(Dimmer->Load);
	movlb 1	; select bank1
	incf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	fcall	_setDimmerLights_ERROR
	line	278
;Dimmer_B1.c: 278: }
	goto	l836
	line	279
	
l837:	
	
l7207:	
;Dimmer_B1.c: 279: else if(getDimmer_PFERROR(1))
	movlw	(01h)
	fcall	_getDimmer_PFERROR
	xorlw	0&0ffh
	skipnz
	goto	u5641
	goto	u5640
u5641:
	goto	l836
u5640:
	line	282
	
l7209:	
;Dimmer_B1.c: 280: {
;Dimmer_B1.c: 282: setDimmerLights_ERROR(1);
	movlw	(01h)
	fcall	_setDimmerLights_ERROR
	line	285
;Dimmer_B1.c: 285: setDimmerLights_ERROR(2);
	movlw	(02h)
	fcall	_setDimmerLights_ERROR
	goto	l836
	line	290
	
l839:	
	goto	l836
	line	292
	
l838:	
	
l836:	
;Dimmer_B1.c: 290: }
;Dimmer_B1.c: 292: setDimmerLights_TriggerERROR(1,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_TriggerERROR@command)
	movlw	(01h)
	fcall	_setDimmerLights_TriggerERROR
	line	295
;Dimmer_B1.c: 295: setDimmerLights_TriggerERROR(2,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_TriggerERROR@command)
	movlw	(02h)
	fcall	_setDimmerLights_TriggerERROR
	line	301
	
l7211:	
;Dimmer_B1.c: 301: if(TMain->SelfTest == 0)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u5651
	goto	u5650
u5651:
	goto	l841
u5650:
	line	303
	
l7213:	
;Dimmer_B1.c: 302: {
;Dimmer_B1.c: 303: TMain->i=0;
	movf	(_TMain)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	304
;Dimmer_B1.c: 304: TMain->j=0;
	movf	(_TMain)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	305
;Dimmer_B1.c: 305: TMain->k=1;
	movf	(_TMain)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	306
;Dimmer_B1.c: 306: TMain->Count2=0;
	movf	(_TMain)^080h,w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l841
	line	307
	
l840:	
	line	308
	
l841:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_ERROR
	__end_of_DimmerLights_ERROR:
	signat	_DimmerLights_ERROR,88
	global	_setDimmerLights_TriggerERROR

;; *************** function _setDimmerLights_TriggerERROR *****************
;; Defined at:
;;		line 327 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_DimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text66,local,class=CODE,delta=2,merge=1
	line	327
global __ptext66
__ptext66:	;psect for function _setDimmerLights_TriggerERROR
psect	text66
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	327
	global	__size_of_setDimmerLights_TriggerERROR
	__size_of_setDimmerLights_TriggerERROR	equ	__end_of_setDimmerLights_TriggerERROR-_setDimmerLights_TriggerERROR
	
_setDimmerLights_TriggerERROR:	
;incstack = 0
	opt	stack 6
; Regs used in _setDimmerLights_TriggerERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_TriggerERROR@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_TriggerERROR@lights)
	line	329
	
l7103:	
;Dimmer_B1.c: 329: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	330
	
l7105:	
;Dimmer_B1.c: 330: DimmerLights->Trigger=command;
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
	line	331
	
l7107:	
;Dimmer_B1.c: 331: DimmerLights->Switch=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	332
	
l7109:	
;Dimmer_B1.c: 332: DimmerLights->TriggerAdj=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	333
	
l7111:	
;Dimmer_B1.c: 333: DimmerLights->AdjGo=command;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setDimmerLights_TriggerERROR@command),w
	bcf	indf1,2
	skipz
	bsf	indf1,2
	line	334
	
l848:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_TriggerERROR
	__end_of_setDimmerLights_TriggerERROR:
	signat	_setDimmerLights_TriggerERROR,8312
	global	_setDimmerLights_ERROR

;; *************** function _setDimmerLights_ERROR *****************
;; Defined at:
;;		line 310 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
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
;;		_DimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text67,local,class=CODE,delta=2,merge=1
	line	310
global __ptext67
__ptext67:	;psect for function _setDimmerLights_ERROR
psect	text67
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	310
	global	__size_of_setDimmerLights_ERROR
	__size_of_setDimmerLights_ERROR	equ	__end_of_setDimmerLights_ERROR-_setDimmerLights_ERROR
	
_setDimmerLights_ERROR:	
;incstack = 0
	opt	stack 5
; Regs used in _setDimmerLights_ERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_ERROR@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_ERROR@lights)
	line	312
	
l7077:	
;Dimmer_B1.c: 312: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_DimmerLightsPointSelect
	line	313
	
l7079:	
;Dimmer_B1.c: 313: if(DimmerLights->Status)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u5531
	goto	u5530
u5531:
	goto	l845
u5530:
	line	315
	
l7081:	
;Dimmer_B1.c: 314: {
;Dimmer_B1.c: 315: DimmerLights->Signal=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	316
;Dimmer_B1.c: 316: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	317
;Dimmer_B1.c: 317: DimmerLights->AdjStatus=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	318
;Dimmer_B1.c: 318: DimmerLights->StatusFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,6
	line	319
;Dimmer_B1.c: 319: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights_ERROR+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_ERROR+0)+0,w
	movwf	indf1
	line	320
;Dimmer_B1.c: 320: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
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
	line	321
	
l7083:	
;Dimmer_B1.c: 321: setLoad_StatusOff(1,lights,1);
	movf	(setDimmerLights_ERROR@lights),w
	movwf	(??_setDimmerLights_ERROR+0)+0
	movf	(??_setDimmerLights_ERROR+0)+0,w
	movwf	(setLoad_StatusOff@lights)
	clrf	(setLoad_StatusOff@command)
	incf	(setLoad_StatusOff@command),f
	movlw	(01h)
	fcall	_setLoad_StatusOff
	line	322
	
l7085:	
;Dimmer_B1.c: 322: setLED(lights,1);
	movlb 0	; select bank0
	clrf	(setLED@command)
	incf	(setLED@command),f
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setLED
	line	323
	
l7087:	
;Dimmer_B1.c: 323: setSw_Status(lights,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setSw_Status
	line	324
	
l7089:	
;Dimmer_B1.c: 324: setRFSW_Status(lights,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movf	(setDimmerLights_ERROR@lights),w
	fcall	_setRFSW_Status
	goto	l845
	line	325
	
l844:	
	line	326
	
l845:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_ERROR
	__end_of_setDimmerLights_ERROR:
	signat	_setDimmerLights_ERROR,4216
	global	_getDimmer_TempERROR

;; *************** function _getDimmer_TempERROR *****************
;; Defined at:
;;		line 551 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_DimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text68,local,class=CODE,delta=2,merge=1
	line	551
global __ptext68
__ptext68:	;psect for function _getDimmer_TempERROR
psect	text68
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	551
	global	__size_of_getDimmer_TempERROR
	__size_of_getDimmer_TempERROR	equ	__end_of_getDimmer_TempERROR-_getDimmer_TempERROR
	
_getDimmer_TempERROR:	
;incstack = 0
	opt	stack 6
; Regs used in _getDimmer_TempERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;getDimmer_TempERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(getDimmer_TempERROR@dimmer)
	line	553
	
l7071:	
;Dimmer_B1.c: 553: DimmerPointSelect(dimmer);
	movf	(getDimmer_TempERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	554
	
l7073:	
;Dimmer_B1.c: 554: return Dimmer->TempERROR;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	rrf	indf1,w
	andlw	(1<<1)-1
	goto	l912
	
l7075:	
	line	555
	
l912:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmer_TempERROR
	__end_of_getDimmer_TempERROR:
	signat	_getDimmer_TempERROR,4217
	global	_getDimmer_PFERROR

;; *************** function _getDimmer_PFERROR *****************
;; Defined at:
;;		line 561 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_DimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text69,local,class=CODE,delta=2,merge=1
	line	561
global __ptext69
__ptext69:	;psect for function _getDimmer_PFERROR
psect	text69
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	561
	global	__size_of_getDimmer_PFERROR
	__size_of_getDimmer_PFERROR	equ	__end_of_getDimmer_PFERROR-_getDimmer_PFERROR
	
_getDimmer_PFERROR:	
;incstack = 0
	opt	stack 6
; Regs used in _getDimmer_PFERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;getDimmer_PFERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(getDimmer_PFERROR@dimmer)
	line	563
	
l7097:	
;Dimmer_B1.c: 563: DimmerPointSelect(dimmer);
	movf	(getDimmer_PFERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	564
	
l7099:	
;Dimmer_B1.c: 564: return Dimmer->PFERROR;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	rrf	indf1,w
	rrf	wreg,f
	andlw	(1<<1)-1
	goto	l918
	
l7101:	
	line	565
	
l918:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmer_PFERROR
	__end_of_getDimmer_PFERROR:
	signat	_getDimmer_PFERROR,4217
	global	_getDimmer_LoadERROR

;; *************** function _getDimmer_LoadERROR *****************
;; Defined at:
;;		line 556 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_DimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text70,local,class=CODE,delta=2,merge=1
	line	556
global __ptext70
__ptext70:	;psect for function _getDimmer_LoadERROR
psect	text70
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	556
	global	__size_of_getDimmer_LoadERROR
	__size_of_getDimmer_LoadERROR	equ	__end_of_getDimmer_LoadERROR-_getDimmer_LoadERROR
	
_getDimmer_LoadERROR:	
;incstack = 0
	opt	stack 6
; Regs used in _getDimmer_LoadERROR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;getDimmer_LoadERROR@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(getDimmer_LoadERROR@dimmer)
	line	558
	
l7091:	
;Dimmer_B1.c: 558: DimmerPointSelect(dimmer);
	movf	(getDimmer_LoadERROR@dimmer),w
	fcall	_DimmerPointSelect
	line	559
	
l7093:	
;Dimmer_B1.c: 559: return Dimmer->LoadERROR;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	andlw	(1<<1)-1
	goto	l915
	
l7095:	
	line	560
	
l915:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmer_LoadERROR
	__end_of_getDimmer_LoadERROR:
	signat	_getDimmer_LoadERROR,4217
	global	_setDimmerLights_Clear

;; *************** function _setDimmerLights_Clear *****************
;; Defined at:
;;		line 457 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_setLoad_Main
;; This function uses a non-reentrant model
;;
psect	text71,local,class=CODE,delta=2,merge=1
	line	457
global __ptext71
__ptext71:	;psect for function _setDimmerLights_Clear
psect	text71
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	457
	global	__size_of_setDimmerLights_Clear
	__size_of_setDimmerLights_Clear	equ	__end_of_setDimmerLights_Clear-_setDimmerLights_Clear
	
_setDimmerLights_Clear:	
;incstack = 0
	opt	stack 8
; Regs used in _setDimmerLights_Clear: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Clear@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Clear@lights)
	line	459
	
l7467:	
;Dimmer_B1.c: 459: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Clear@lights),w
	fcall	_DimmerLightsPointSelect
	line	460
	
l7469:	
;Dimmer_B1.c: 460: DimmerLights->Clear=command;
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
	line	461
	
l884:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Clear
	__end_of_setDimmerLights_Clear:
	signat	_setDimmerLights_Clear,8312
	global	_getTemp_Safe

;; *************** function _getTemp_Safe *****************
;; Defined at:
;;		line 34 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_TempPointSelect
;; This function is called by:
;;		_setLoad_Main
;;		_setPowerFault_Main
;; This function uses a non-reentrant model
;;
psect	text72,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	34
global __ptext72
__ptext72:	;psect for function _getTemp_Safe
psect	text72
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	34
	global	__size_of_getTemp_Safe
	__size_of_getTemp_Safe	equ	__end_of_getTemp_Safe-_getTemp_Safe
	
_getTemp_Safe:	
;incstack = 0
	opt	stack 8
; Regs used in _getTemp_Safe: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;getTemp_Safe@temp stored from wreg
	movlb 0	; select bank0
	movwf	(getTemp_Safe@temp)
	line	36
	
l7585:	
;OverTemperature_B1.c: 36: TempPointSelect(temp);
	movf	(getTemp_Safe@temp),w
	fcall	_TempPointSelect
	line	37
	
l7587:	
;OverTemperature_B1.c: 37: return Temp->Safe;
	movf	(_Temp),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	swapf	indf1,w
	andlw	(1<<1)-1
	goto	l2103
	
l7589:	
	line	38
	
l2103:	
	return
	opt stack 0
GLOBAL	__end_of_getTemp_Safe
	__end_of_getTemp_Safe:
	signat	_getTemp_Safe,4217
	global	_TempPointSelect

;; *************** function _TempPointSelect *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\Source_File\OverTemperature_B1.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1    0[COMMON] unsigned char 
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
;;		_setTemp_Enable
;;		_getTemp_Safe
;;		_getTemp_AD
;;		_setTemp_Initialization
;;		_setTemp_Main
;;		_setOverTemp_ERROR
;;		_getTemp_ERROR
;; This function uses a non-reentrant model
;;
psect	text73,local,class=CODE,delta=2,merge=1
	line	8
global __ptext73
__ptext73:	;psect for function _TempPointSelect
psect	text73
	file	"G:\Program\PIC\Source_File\OverTemperature_B1.c"
	line	8
	global	__size_of_TempPointSelect
	__size_of_TempPointSelect	equ	__end_of_TempPointSelect-_TempPointSelect
	
_TempPointSelect:	
;incstack = 0
	opt	stack 10
; Regs used in _TempPointSelect: [wreg]
	line	11
	
l7271:	
;OverTemperature_B1.c: 11: Temp=&Temp1;
	movlw	(_Temp1)&0ffh
	movlb 0	; select bank0
	movwf	(??_TempPointSelect+0)+0
	movf	(??_TempPointSelect+0)+0,w
	movwf	(_Temp)
	line	13
	
l2091:	
	return
	opt stack 0
GLOBAL	__end_of_TempPointSelect
	__end_of_TempPointSelect:
	signat	_TempPointSelect,4216
	global	_getPF_Safe

;; *************** function _getPF_Safe *****************
;; Defined at:
;;		line 41 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  pf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pf              1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_PowerFaultPointSelect
;; This function is called by:
;;		_setLoad_Main
;;		_setTemp_Main
;; This function uses a non-reentrant model
;;
psect	text74,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	41
global __ptext74
__ptext74:	;psect for function _getPF_Safe
psect	text74
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	41
	global	__size_of_getPF_Safe
	__size_of_getPF_Safe	equ	__end_of_getPF_Safe-_getPF_Safe
	
_getPF_Safe:	
;incstack = 0
	opt	stack 8
; Regs used in _getPF_Safe: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;getPF_Safe@pf stored from wreg
	movlb 0	; select bank0
	movwf	(getPF_Safe@pf)
	line	43
	
l7591:	
;PowerFault_B1.c: 43: PowerFaultPointSelect(pf);
	movf	(getPF_Safe@pf),w
	fcall	_PowerFaultPointSelect
	line	44
	
l7593:	
;PowerFault_B1.c: 44: return PF->Safe;
	movlb 1	; select bank1
	movf	(_PF)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	rrf	indf1,w
	rrf	wreg,f
	andlw	(1<<1)-1
	goto	l2299
	
l7595:	
	line	45
	
l2299:	
	return
	opt stack 0
GLOBAL	__end_of_getPF_Safe
	__end_of_getPF_Safe:
	signat	_getPF_Safe,4217
	global	_PowerFaultPointSelect

;; *************** function _PowerFaultPointSelect *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\Source_File\PowerFault_B1.c"
;; Parameters:    Size  Location     Type
;;  pf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pf              1    0[COMMON] unsigned char 
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
;;		_setPowerFault_Initialization
;;		_getPF_Safe
;;		_getPowerFault_AD
;;		_setPowerFault_Main
;;		_setPowerFault_ERROR
;;		_setPF_Enable
;;		_getPF_ERROR
;; This function uses a non-reentrant model
;;
psect	text75,local,class=CODE,delta=2,merge=1
	line	8
global __ptext75
__ptext75:	;psect for function _PowerFaultPointSelect
psect	text75
	file	"G:\Program\PIC\Source_File\PowerFault_B1.c"
	line	8
	global	__size_of_PowerFaultPointSelect
	__size_of_PowerFaultPointSelect	equ	__end_of_PowerFaultPointSelect-_PowerFaultPointSelect
	
_PowerFaultPointSelect:	
;incstack = 0
	opt	stack 10
; Regs used in _PowerFaultPointSelect: [wreg]
	line	11
	
l7273:	
;PowerFault_B1.c: 11: PF=&PF1;
	movlw	(_PF1)&0ffh
	movlb 0	; select bank0
	movwf	(??_PowerFaultPointSelect+0)+0
	movf	(??_PowerFaultPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_PF)^080h
	line	13
	
l2284:	
	return
	opt stack 0
GLOBAL	__end_of_PowerFaultPointSelect
	__end_of_PowerFaultPointSelect:
	signat	_PowerFaultPointSelect,4216
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
;;		_setLoad_Main
;; This function uses a non-reentrant model
;;
psect	text76,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
	line	6
global __ptext76
__ptext76:	;psect for function ___lwdiv
psect	text76
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 9
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l7753:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l7755:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u6171
	goto	u6170
u6171:
	goto	l7775
u6170:
	line	16
	
l7757:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l7763
	
l3675:	
	line	18
	
l7759:	
	movlw	01h
	
u6185:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u6185
	line	19
	
l7761:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l7763
	line	20
	
l3674:	
	line	17
	
l7763:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u6191
	goto	u6190
u6191:
	goto	l7759
u6190:
	goto	l7765
	
l3676:	
	goto	l7765
	line	21
	
l3677:	
	line	22
	
l7765:	
	movlw	01h
	
u6205:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u6205
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u6215
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u6215:
	skipc
	goto	u6211
	goto	u6210
u6211:
	goto	l7771
u6210:
	line	24
	
l7767:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	25
	
l7769:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l7771
	line	26
	
l3678:	
	line	27
	
l7771:	
	movlw	01h
	
u6225:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u6225
	line	28
	
l7773:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u6231
	goto	u6230
u6231:
	goto	l7765
u6230:
	goto	l7775
	
l3679:	
	goto	l7775
	line	29
	
l3673:	
	line	30
	
l7775:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l3680
	
l7777:	
	line	31
	
l3680:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_Load_Initialization

;; *************** function _Load_Initialization *****************
;; Defined at:
;;		line 17 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
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
;;		_setLoad_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text77,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	17
global __ptext77
__ptext77:	;psect for function _Load_Initialization
psect	text77
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	17
	global	__size_of_Load_Initialization
	__size_of_Load_Initialization	equ	__end_of_Load_Initialization-_Load_Initialization
	
_Load_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _Load_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	20
	
l8623:	
;OverLoad_B1.c: 20: setLoad_Initialization(1);
	movlw	(01h)
	fcall	_setLoad_Initialization
	line	22
	
l1856:	
	return
	opt stack 0
GLOBAL	__end_of_Load_Initialization
	__end_of_Load_Initialization:
	signat	_Load_Initialization,88
	global	_setLoad_Initialization

;; *************** function _setLoad_Initialization *****************
;; Defined at:
;;		line 31 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    2[BANK0 ] unsigned char 
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
;;		_LoadPointSelect
;;		_setLoad_AH_AL_Restore
;; This function is called by:
;;		_Load_Initialization
;; This function uses a non-reentrant model
;;
psect	text78,local,class=CODE,delta=2,merge=1
	line	31
global __ptext78
__ptext78:	;psect for function _setLoad_Initialization
psect	text78
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	31
	global	__size_of_setLoad_Initialization
	__size_of_setLoad_Initialization	equ	__end_of_setLoad_Initialization-_setLoad_Initialization
	
_setLoad_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _setLoad_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLoad_Initialization@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_Initialization@load)
	line	33
	
l8109:	
;OverLoad_B1.c: 33: LoadPointSelect(load);
	movf	(setLoad_Initialization@load),w
	fcall	_LoadPointSelect
	line	34
	
l8111:	
;OverLoad_B1.c: 34: Load->Safe=1;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,3
	line	35
	
l8113:	
;OverLoad_B1.c: 35: setLoad_AH_AL_Restore(load);
	movf	(setLoad_Initialization@load),w
	fcall	_setLoad_AH_AL_Restore
	line	36
	
l1862:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Initialization
	__end_of_setLoad_Initialization:
	signat	_setLoad_Initialization,4216
	global	_setLoad_AH_AL_Restore

;; *************** function _setLoad_AH_AL_Restore *****************
;; Defined at:
;;		line 375 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    0[COMMON] unsigned char 
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
;;		_setLoad_Initialization
;;		_setLoad_Main
;; This function uses a non-reentrant model
;;
psect	text79,local,class=CODE,delta=2,merge=1
	line	375
global __ptext79
__ptext79:	;psect for function _setLoad_AH_AL_Restore
psect	text79
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	375
	global	__size_of_setLoad_AH_AL_Restore
	__size_of_setLoad_AH_AL_Restore	equ	__end_of_setLoad_AH_AL_Restore-_setLoad_AH_AL_Restore
	
_setLoad_AH_AL_Restore:	
;incstack = 0
	opt	stack 9
; Regs used in _setLoad_AH_AL_Restore: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	379
	
l7533:	
;OverLoad_B1.c: 378: char i;
;OverLoad_B1.c: 379: for(i=0 ; i<5 ;i++)
	movlb 0	; select bank0
	clrf	(setLoad_AH_AL_Restore@i)
	
l7535:	
	movlw	(05h)
	subwf	(setLoad_AH_AL_Restore@i),w
	skipc
	goto	u5941
	goto	u5940
u5941:
	goto	l7539
u5940:
	goto	l1948
	
l7537:	
	goto	l1948
	line	380
	
l1946:	
	line	381
	
l7539:	
;OverLoad_B1.c: 380: {
;OverLoad_B1.c: 381: Load->AH[i]=0;
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
	line	382
;OverLoad_B1.c: 382: Load->AL[i]=0xffff;
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
	line	379
	
l7541:	
	movlw	(01h)
	movwf	(??_setLoad_AH_AL_Restore+0)+0
	movf	(??_setLoad_AH_AL_Restore+0)+0,w
	addwf	(setLoad_AH_AL_Restore@i),f
	
l7543:	
	movlw	(05h)
	subwf	(setLoad_AH_AL_Restore@i),w
	skipc
	goto	u5951
	goto	u5950
u5951:
	goto	l7539
u5950:
	goto	l1948
	
l1947:	
	line	384
	
l1948:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_AH_AL_Restore
	__end_of_setLoad_AH_AL_Restore:
	signat	_setLoad_AH_AL_Restore,4216
	global	_LED_Main

;; *************** function _LED_Main *****************
;; Defined at:
;;		line 51 in file "G:\Program\PIC\Source_File\LED_B1.c"
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
psect	text80,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	51
global __ptext80
__ptext80:	;psect for function _LED_Main
psect	text80
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	51
	global	__size_of_LED_Main
	__size_of_LED_Main	equ	__end_of_LED_Main-_LED_Main
	
_LED_Main:	
;incstack = 0
	opt	stack 9
; Regs used in _LED_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	54
	
l8567:	
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
	
l1065:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Main
	__end_of_LED_Main:
	signat	_LED_Main,88
	global	_setLED_Main

;; *************** function _setLED_Main *****************
;; Defined at:
;;		line 214 in file "G:\Program\PIC\Source_File\LED_B1.c"
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
psect	text81,local,class=CODE,delta=2,merge=1
	line	214
global __ptext81
__ptext81:	;psect for function _setLED_Main
psect	text81
	file	"G:\Program\PIC\Source_File\LED_B1.c"
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
	
l7987:	
;LED_B1.c: 216: LedPointSelect(led);
	movf	(setLED_Main@led),w
	fcall	_LedPointSelect
	line	217
	
l7989:	
;LED_B1.c: 217: if(LED->GO)
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u6561
	goto	u6560
u6561:
	goto	l1103
u6560:
	line	219
	
l7991:	
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
	
l7993:	
;LED_B1.c: 220: if(LED->Time >= 500)
	incf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setLED_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setLED_Main+0)+0+1
	movlw	high(01F4h)
	subwf	1+(??_setLED_Main+0)+0,w
	movlw	low(01F4h)
	skipnz
	subwf	0+(??_setLED_Main+0)+0,w
	skipc
	goto	u6571
	goto	u6570
u6571:
	goto	l1103
u6570:
	line	222
	
l7995:	
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
	
l7997:	
;LED_B1.c: 224: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED_Main@led),w
	xorlw	01h&0ffh
	skipz
	goto	u6581
	goto	u6580
u6581:
	goto	l8001
u6580:
	line	226
	
l7999:	
;LED_B1.c: 225: {
;LED_B1.c: 226: RC7=~RC7;
	movlw	1<<((119)&7)
	xorwf	((119)/8),f
	line	227
;LED_B1.c: 227: }
	goto	l1103
	line	230
	
l1098:	
	
l8001:	
;LED_B1.c: 230: else if(led == 2)
	movf	(setLED_Main@led),w
	xorlw	02h&0ffh
	skipz
	goto	u6591
	goto	u6590
u6591:
	goto	l8005
u6590:
	line	232
	
l8003:	
;LED_B1.c: 231: {
;LED_B1.c: 232: RA3=~RA3;
	movlw	1<<((99)&7)
	xorwf	((99)/8),f
	line	233
;LED_B1.c: 233: }
	goto	l1103
	line	242
	
l1100:	
	
l8005:	
;LED_B1.c: 242: else if(led == 99)
	movf	(setLED_Main@led),w
	xorlw	063h&0ffh
	skipz
	goto	u6601
	goto	u6600
u6601:
	goto	l1103
u6600:
	line	244
	
l8007:	
;LED_B1.c: 243: {
;LED_B1.c: 244: RB5=~RB5;
	movlw	1<<((109)&7)
	xorwf	((109)/8),f
	goto	l1103
	line	245
	
l1102:	
	goto	l1103
	line	247
	
l1101:	
	goto	l1103
	
l1099:	
	goto	l1103
	
l1097:	
	goto	l1103
	line	248
	
l1096:	
	line	249
	
l1103:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Main
	__end_of_setLED_Main:
	signat	_setLED_Main,4216
	global	_LED_Initialization

;; *************** function _LED_Initialization *****************
;; Defined at:
;;		line 35 in file "G:\Program\PIC\Source_File\LED_B1.c"
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
psect	text82,local,class=CODE,delta=2,merge=1
	line	35
global __ptext82
__ptext82:	;psect for function _LED_Initialization
psect	text82
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	35
	global	__size_of_LED_Initialization
	__size_of_LED_Initialization	equ	__end_of_LED_Initialization-_LED_Initialization
	
_LED_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _LED_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	38
	
l8565:	
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
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Initialization
	__end_of_LED_Initialization:
	signat	_LED_Initialization,88
	global	_setLED_Initialization

;; *************** function _setLED_Initialization *****************
;; Defined at:
;;		line 67 in file "G:\Program\PIC\Source_File\LED_B1.c"
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
psect	text83,local,class=CODE,delta=2,merge=1
	line	67
global __ptext83
__ptext83:	;psect for function _setLED_Initialization
psect	text83
	file	"G:\Program\PIC\Source_File\LED_B1.c"
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
	
l7981:	
;LED_B1.c: 69: LedPointSelect(led);
	movf	(setLED_Initialization@led),w
	fcall	_LedPointSelect
	line	70
	
l7983:	
;LED_B1.c: 70: LED->Enable=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	71
	
l7985:	
;LED_B1.c: 71: setLED(led,0);
	movlb 0	; select bank0
	clrf	(setLED@command)
	movf	(setLED_Initialization@led),w
	fcall	_setLED
	line	72
	
l1068:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Initialization
	__end_of_setLED_Initialization:
	signat	_setLED_Initialization,4216
	global	_Flash_Memory_Main

;; *************** function _Flash_Memory_Main *****************
;; Defined at:
;;		line 468 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text84,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	468
global __ptext84
__ptext84:	;psect for function _Flash_Memory_Main
psect	text84
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	468
	global	__size_of_Flash_Memory_Main
	__size_of_Flash_Memory_Main	equ	__end_of_Flash_Memory_Main-_Flash_Memory_Main
	
_Flash_Memory_Main:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	470
	
l8733:	
;MCU_16f1518_B1.c: 470: if(Memory->GO)
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u7671
	goto	u7670
u7671:
	goto	l1685
u7670:
	line	472
	
l8735:	
;MCU_16f1518_B1.c: 471: {
;MCU_16f1518_B1.c: 472: if(Memory->Modify)
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u7681
	goto	u7680
u7681:
	goto	l8745
u7680:
	line	474
	
l8737:	
;MCU_16f1518_B1.c: 473: {
;MCU_16f1518_B1.c: 474: Memory->Time++;
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
	line	475
	
l8739:	
;MCU_16f1518_B1.c: 475: if(Memory->Time == 50)
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(032h)
	skipz
	goto	u7695
	moviw	[1]fsr1
	xorlw	high(032h)
u7695:
	skipz
	goto	u7691
	goto	u7690
u7691:
	goto	l1685
u7690:
	line	477
	
l8741:	
;MCU_16f1518_B1.c: 476: {
;MCU_16f1518_B1.c: 477: Memory->Time=0;
	movf	(_Memory)^080h,w
	addlw	023h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	478
;MCU_16f1518_B1.c: 478: Memory->Modify=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,0
	line	479
;MCU_16f1518_B1.c: 479: Memory->GO=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	line	480
	
l8743:	
;MCU_16f1518_B1.c: 480: Flash_Memory_Modify();
	fcall	_Flash_Memory_Modify
	goto	l1685
	line	481
	
l1683:	
	line	482
;MCU_16f1518_B1.c: 481: }
;MCU_16f1518_B1.c: 482: }
	goto	l1685
	line	483
	
l1682:	
	line	485
	
l8745:	
;MCU_16f1518_B1.c: 483: else
;MCU_16f1518_B1.c: 484: {
;MCU_16f1518_B1.c: 485: Memory->GO=0;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l1685
	line	486
	
l1684:	
	goto	l1685
	line	487
	
l1681:	
	line	488
	
l1685:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Main
	__end_of_Flash_Memory_Main:
	signat	_Flash_Memory_Main,88
	global	_Flash_Memory_Modify

;; *************** function _Flash_Memory_Modify *****************
;; Defined at:
;;		line 542 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text85,local,class=CODE,delta=2,merge=1
	line	542
global __ptext85
__ptext85:	;psect for function _Flash_Memory_Modify
psect	text85
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	542
	global	__size_of_Flash_Memory_Modify
	__size_of_Flash_Memory_Modify	equ	__end_of_Flash_Memory_Modify-_Flash_Memory_Modify
	
_Flash_Memory_Modify:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Modify: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	545
	
l8085:	
;MCU_16f1518_B1.c: 544: char i;
;MCU_16f1518_B1.c: 545: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Modify@i)
	
l8087:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u6641
	goto	u6640
u6641:
	goto	l8091
u6640:
	goto	l8097
	
l8089:	
	goto	l8097
	line	546
	
l1702:	
	line	547
	
l8091:	
;MCU_16f1518_B1.c: 546: {
;MCU_16f1518_B1.c: 547: Memory->Data[i]=Flash_Memory_Read(i);
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
	line	545
	
l8093:	
	movlw	(01h)
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(??_Flash_Memory_Modify+0)+0,w
	addwf	(Flash_Memory_Modify@i),f
	
l8095:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u6651
	goto	u6650
u6651:
	goto	l8091
u6650:
	goto	l8097
	
l1703:	
	line	549
	
l8097:	
;MCU_16f1518_B1.c: 548: }
;MCU_16f1518_B1.c: 549: Memory->Data[0]=Product->Data[12];
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Modify+0)+0
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	550
;MCU_16f1518_B1.c: 550: Memory->Data[1]=Product->Data[13];
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Modify+0)+0
	movlb 1	; select bank1
	incf	(_Memory)^080h,w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	551
;MCU_16f1518_B1.c: 551: Memory->Data[2]=Product->Data[14];
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
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
	line	557
;MCU_16f1518_B1.c: 557: if(Memory->LoopSave)
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u6661
	goto	u6660
u6661:
	goto	l8101
u6660:
	line	559
	
l8099:	
;MCU_16f1518_B1.c: 558: {
;MCU_16f1518_B1.c: 559: Memory->LoopSave=0;
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bcf	indf1,2
	line	560
;MCU_16f1518_B1.c: 560: TMain->FirstOpen=0;
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	561
;MCU_16f1518_B1.c: 561: TMain->First=0;
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	562
;MCU_16f1518_B1.c: 562: Memory->Data[30]=1;
	movf	(_Memory)^080h,w
	addlw	01Eh
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	goto	l8101
	line	563
	
l1704:	
	line	564
	
l8101:	
;MCU_16f1518_B1.c: 563: }
;MCU_16f1518_B1.c: 564: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	565
	
l8103:	
;MCU_16f1518_B1.c: 565: Flash_Memory_Erasing();
	fcall	_Flash_Memory_Erasing
	line	566
	
l8105:	
;MCU_16f1518_B1.c: 566: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	567
	
l8107:	
;MCU_16f1518_B1.c: 567: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	568
	
l1705:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Modify
	__end_of_Flash_Memory_Modify:
	signat	_Flash_Memory_Modify,88
	global	_Flash_Memory_Erasing

;; *************** function _Flash_Memory_Erasing *****************
;; Defined at:
;;		line 531 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text86,local,class=CODE,delta=2,merge=1
	line	531
global __ptext86
__ptext86:	;psect for function _Flash_Memory_Erasing
psect	text86
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	531
	global	__size_of_Flash_Memory_Erasing
	__size_of_Flash_Memory_Erasing	equ	__end_of_Flash_Memory_Erasing-_Flash_Memory_Erasing
	
_Flash_Memory_Erasing:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Erasing: [wreg+status,2+status,0+pclath+cstack]
	line	533
	
l7519:	
;MCU_16f1518_B1.c: 533: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	534
	
l7521:	
;MCU_16f1518_B1.c: 534: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	535
	
l7523:	
;MCU_16f1518_B1.c: 535: PMADRL=0x00;
	clrf	(401)^0180h	;volatile
	line	536
	
l7525:	
;MCU_16f1518_B1.c: 536: FREE=1;
	bsf	(3244/8)^0180h,(3244)&7	;volatile
	line	537
	
l7527:	
;MCU_16f1518_B1.c: 537: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7	;volatile
	line	538
	
l7529:	
;MCU_16f1518_B1.c: 538: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	539
	
l7531:	
;MCU_16f1518_B1.c: 539: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7	;volatile
	line	540
	
l1699:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Erasing
	__end_of_Flash_Memory_Erasing:
	signat	_Flash_Memory_Erasing,88
	global	_Flash_Memory_Initialization

;; *************** function _Flash_Memory_Initialization *****************
;; Defined at:
;;		line 429 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text87,local,class=CODE,delta=2,merge=1
	line	429
global __ptext87
__ptext87:	;psect for function _Flash_Memory_Initialization
psect	text87
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	429
	global	__size_of_Flash_Memory_Initialization
	__size_of_Flash_Memory_Initialization	equ	__end_of_Flash_Memory_Initialization-_Flash_Memory_Initialization
	
_Flash_Memory_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	432
	
l8585:	
;MCU_16f1518_B1.c: 431: char i;
;MCU_16f1518_B1.c: 432: if(Flash_Memory_Read(31) == 0xaa)
	movlw	(01Fh)
	fcall	_Flash_Memory_Read
	xorlw	0AAh&0ffh
	skipz
	goto	u7481
	goto	u7480
u7481:
	goto	l8601
u7480:
	line	434
	
l8587:	
;MCU_16f1518_B1.c: 433: {
;MCU_16f1518_B1.c: 434: Product->Data[12]=Flash_Memory_Read(0);
	movlw	(0)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	435
;MCU_16f1518_B1.c: 435: Product->Data[13]=Flash_Memory_Read(1);
	movlw	(01h)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	436
;MCU_16f1518_B1.c: 436: Product->Data[14]=Flash_Memory_Read(2);
	movlw	(02h)
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	442
	
l8589:	
;MCU_16f1518_B1.c: 442: i=setPercentValue(((char)((100-60)*1.5)));
	movlw	(03Ch)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	443
	
l8591:	
;MCU_16f1518_B1.c: 443: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	444
	
l8593:	
;MCU_16f1518_B1.c: 444: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	445
	
l8595:	
;MCU_16f1518_B1.c: 445: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	447
	
l8597:	
;MCU_16f1518_B1.c: 447: if(Flash_Memory_Read(30) == 1)
	movlw	(01Eh)
	fcall	_Flash_Memory_Read
	xorlw	01h&0ffh
	skipz
	goto	u7491
	goto	u7490
u7491:
	goto	l1678
u7490:
	line	449
	
l8599:	
;MCU_16f1518_B1.c: 448: {
;MCU_16f1518_B1.c: 449: TMain->FirstOpen=0;
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	450
;MCU_16f1518_B1.c: 450: TMain->First=0;
	movf	(_TMain)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l1678
	line	451
	
l1676:	
	line	452
;MCU_16f1518_B1.c: 451: }
;MCU_16f1518_B1.c: 452: }
	goto	l1678
	line	453
	
l1675:	
	line	455
	
l8601:	
;MCU_16f1518_B1.c: 453: else
;MCU_16f1518_B1.c: 454: {
;MCU_16f1518_B1.c: 455: i=setPercentValue(((char)((100-60)*1.5)));
	movlw	(03Ch)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	456
	
l8603:	
;MCU_16f1518_B1.c: 456: Memory->Data[3]=i;
	movf	(Flash_Memory_Initialization@i),w
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
	line	457
	
l8605:	
;MCU_16f1518_B1.c: 457: Memory->Data[4]=i;
	movf	(Flash_Memory_Initialization@i),w
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
	line	458
	
l8607:	
;MCU_16f1518_B1.c: 458: Memory->Data[5]=i;
	movf	(Flash_Memory_Initialization@i),w
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
	line	459
	
l8609:	
;MCU_16f1518_B1.c: 459: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	460
	
l8611:	
;MCU_16f1518_B1.c: 460: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	461
	
l8613:	
;MCU_16f1518_B1.c: 461: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	462
	
l8615:	
;MCU_16f1518_B1.c: 462: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	463
	
l8617:	
;MCU_16f1518_B1.c: 463: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	464
	
l8619:	
;MCU_16f1518_B1.c: 464: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	goto	l1678
	line	465
	
l1677:	
	line	466
	
l1678:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Initialization
	__end_of_Flash_Memory_Initialization:
	signat	_Flash_Memory_Initialization,88
	global	_Flash_Memory_Write

;; *************** function _Flash_Memory_Write *****************
;; Defined at:
;;		line 511 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text88,local,class=CODE,delta=2,merge=1
	line	511
global __ptext88
__ptext88:	;psect for function _Flash_Memory_Write
psect	text88
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	511
	global	__size_of_Flash_Memory_Write
	__size_of_Flash_Memory_Write	equ	__end_of_Flash_Memory_Write-_Flash_Memory_Write
	
_Flash_Memory_Write:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Write: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	514
	
l7489:	
;MCU_16f1518_B1.c: 513: char i;
;MCU_16f1518_B1.c: 514: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	515
	
l7491:	
;MCU_16f1518_B1.c: 515: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	516
	
l7493:	
;MCU_16f1518_B1.c: 516: PMDATH=0;
	clrf	(404)^0180h	;volatile
	line	517
	
l7495:	
;MCU_16f1518_B1.c: 517: FREE=0;
	bcf	(3244/8)^0180h,(3244)&7	;volatile
	line	518
	
l7497:	
;MCU_16f1518_B1.c: 518: LWLO=1;
	bsf	(3245/8)^0180h,(3245)&7	;volatile
	line	519
	
l7499:	
;MCU_16f1518_B1.c: 519: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7	;volatile
	line	520
	
l7501:	
;MCU_16f1518_B1.c: 520: for(i=0 ; i<32 ; i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Write@i)
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u5921
	goto	u5920
u5921:
	goto	l7505
u5920:
	goto	l1695
	
l7503:	
	goto	l1695
	line	521
	
l1694:	
	line	522
	
l7505:	
;MCU_16f1518_B1.c: 521: {
;MCU_16f1518_B1.c: 522: PMADRL=i;
	movf	(Flash_Memory_Write@i),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	523
	
l7507:	
;MCU_16f1518_B1.c: 523: PMDATL=Memory->Data[i];
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
	line	524
	
l7509:	
;MCU_16f1518_B1.c: 524: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	520
	
l7511:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Write+0)+0
	movf	(??_Flash_Memory_Write+0)+0,w
	addwf	(Flash_Memory_Write@i),f
	
l7513:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u5931
	goto	u5930
u5931:
	goto	l7505
u5930:
	
l1695:	
	line	526
;MCU_16f1518_B1.c: 525: }
;MCU_16f1518_B1.c: 526: LWLO=0;
	movlb 3	; select bank3
	bcf	(3245/8)^0180h,(3245)&7	;volatile
	line	527
	
l7515:	
;MCU_16f1518_B1.c: 527: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	528
	
l7517:	
;MCU_16f1518_B1.c: 528: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7	;volatile
	line	529
	
l1696:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Write
	__end_of_Flash_Memory_Write:
	signat	_Flash_Memory_Write,88
	global	_Flash_Memory_Unlock

;; *************** function _Flash_Memory_Unlock *****************
;; Defined at:
;;		line 490 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text89,local,class=CODE,delta=2,merge=1
	line	490
global __ptext89
__ptext89:	;psect for function _Flash_Memory_Unlock
psect	text89
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	490
	global	__size_of_Flash_Memory_Unlock
	__size_of_Flash_Memory_Unlock	equ	__end_of_Flash_Memory_Unlock-_Flash_Memory_Unlock
	
_Flash_Memory_Unlock:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Unlock: [wreg]
	line	492
	
l7263:	
;MCU_16f1518_B1.c: 492: PMCON2=0x55;
	movlw	(055h)
	movlb 3	; select bank3
	movwf	(406)^0180h	;volatile
	line	493
;MCU_16f1518_B1.c: 493: PMCON2=0xaa;
	movlw	(0AAh)
	movwf	(406)^0180h	;volatile
	line	494
	
l7265:	
;MCU_16f1518_B1.c: 494: WR=1;
	bsf	(3241/8)^0180h,(3241)&7	;volatile
	line	495
	
l7267:	
;MCU_16f1518_B1.c: 495: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	496
	
l7269:	
;MCU_16f1518_B1.c: 496: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	497
	
l1688:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Unlock
	__end_of_Flash_Memory_Unlock:
	signat	_Flash_Memory_Unlock,88
	global	_Flash_Memory_Read

;; *************** function _Flash_Memory_Read *****************
;; Defined at:
;;		line 499 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text90,local,class=CODE,delta=2,merge=1
	line	499
global __ptext90
__ptext90:	;psect for function _Flash_Memory_Read
psect	text90
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	499
	global	__size_of_Flash_Memory_Read
	__size_of_Flash_Memory_Read	equ	__end_of_Flash_Memory_Read-_Flash_Memory_Read
	
_Flash_Memory_Read:	
;incstack = 0
	opt	stack 9
; Regs used in _Flash_Memory_Read: [wreg+status,2]
;Flash_Memory_Read@address stored from wreg
	movlb 0	; select bank0
	movwf	(Flash_Memory_Read@address)
	line	501
	
l7471:	
;MCU_16f1518_B1.c: 501: char i,ret=0;
	clrf	(Flash_Memory_Read@ret)
	line	502
	
l7473:	
;MCU_16f1518_B1.c: 502: PMADRH=0x30;
	movlw	(030h)
	movlb 3	; select bank3
	movwf	(402)^0180h	;volatile
	line	503
	
l7475:	
;MCU_16f1518_B1.c: 503: PMADRL=address;
	movlb 0	; select bank0
	movf	(Flash_Memory_Read@address),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	504
	
l7477:	
;MCU_16f1518_B1.c: 504: CFGS=0;
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	505
	
l7479:	
;MCU_16f1518_B1.c: 505: RD=1;
	bsf	(3240/8)^0180h,(3240)&7	;volatile
	line	506
	
l7481:	
;MCU_16f1518_B1.c: 506: i=PMDATH;
	movf	(404)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@i)
	line	507
	
l7483:	
;MCU_16f1518_B1.c: 507: ret=PMDATL;
	movlb 3	; select bank3
	movf	(403)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@ret)
	line	508
	
l7485:	
;MCU_16f1518_B1.c: 508: return ret;
	movf	(Flash_Memory_Read@ret),w
	goto	l1691
	
l7487:	
	line	509
	
l1691:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Read
	__end_of_Flash_Memory_Read:
	signat	_Flash_Memory_Read,4217
	global	_DimmerLights_Main

;; *************** function _DimmerLights_Main *****************
;; Defined at:
;;		line 98 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_DimmerLights_Close
;;		_setDimmerLights_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text91,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	98
global __ptext91
__ptext91:	;psect for function _DimmerLights_Main
psect	text91
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	98
	global	__size_of_DimmerLights_Main
	__size_of_DimmerLights_Main	equ	__end_of_DimmerLights_Main-_DimmerLights_Main
	
_DimmerLights_Main:	
;incstack = 0
	opt	stack 6
; Regs used in _DimmerLights_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	101
	
l8563:	
;Dimmer_B1.c: 101: setDimmerLights_Main(1);
	movlw	(01h)
	fcall	_setDimmerLights_Main
	line	105
;Dimmer_B1.c: 105: setDimmerLights_Main(2);
	movlw	(02h)
	fcall	_setDimmerLights_Main
	line	112
;Dimmer_B1.c: 112: DimmerLights_Close();
	fcall	_DimmerLights_Close
	line	113
	
l800:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Main
	__end_of_DimmerLights_Main:
	signat	_DimmerLights_Main,88
	global	_setDimmerLights_Main

;; *************** function _setDimmerLights_Main *****************
;; Defined at:
;;		line 115 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   66[BANK0 ] unsigned char 
;;  clear           1   65[BANK0 ] unsigned char 
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
;;		_DimmerLightsPointSelect
;;		_getDimmerLights_Trigger
;;		_setBuz
;;		_setDimmerLights
;;		_setDimmerLights_Adj
;; This function is called by:
;;		_DimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text92,local,class=CODE,delta=2,merge=1
	line	115
global __ptext92
__ptext92:	;psect for function _setDimmerLights_Main
psect	text92
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	115
	global	__size_of_setDimmerLights_Main
	__size_of_setDimmerLights_Main	equ	__end_of_setDimmerLights_Main-_setDimmerLights_Main
	
_setDimmerLights_Main:	
;incstack = 0
	opt	stack 6
; Regs used in _setDimmerLights_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Main@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Main@lights)
	line	117
	
l7933:	
;Dimmer_B1.c: 117: char clear=1;
	clrf	(setDimmerLights_Main@clear)
	incf	(setDimmerLights_Main@clear),f
	line	118
	
l7935:	
;Dimmer_B1.c: 118: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	119
	
l7937:	
;Dimmer_B1.c: 119: if(DimmerLights->Trigger)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u6461
	goto	u6460
u6461:
	goto	l7967
u6460:
	line	146
	
l7939:	
;Dimmer_B1.c: 120: {
;Dimmer_B1.c: 146: if(lights == 1)
	movf	(setDimmerLights_Main@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u6471
	goto	u6470
u6471:
	goto	l7945
u6470:
	line	148
	
l7941:	
;Dimmer_B1.c: 147: {
;Dimmer_B1.c: 148: if(!DimmerLights22->Clear)
	movf	(_DimmerLights22),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u6481
	goto	u6480
u6481:
	goto	l7951
u6480:
	line	150
	
l7943:	
;Dimmer_B1.c: 149: {
;Dimmer_B1.c: 150: clear=0;
	clrf	(setDimmerLights_Main@clear)
	goto	l7951
	line	151
	
l805:	
	line	152
;Dimmer_B1.c: 151: }
;Dimmer_B1.c: 152: }
	goto	l7951
	line	153
	
l804:	
	
l7945:	
;Dimmer_B1.c: 153: else if(lights == 2)
	movf	(setDimmerLights_Main@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u6491
	goto	u6490
u6491:
	goto	l7951
u6490:
	line	155
	
l7947:	
;Dimmer_B1.c: 154: {
;Dimmer_B1.c: 155: if(!DimmerLights11->Clear)
	movf	(_DimmerLights11),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u6501
	goto	u6500
u6501:
	goto	l7951
u6500:
	line	157
	
l7949:	
;Dimmer_B1.c: 156: {
;Dimmer_B1.c: 157: clear=0;
	clrf	(setDimmerLights_Main@clear)
	goto	l7951
	line	158
	
l808:	
	goto	l7951
	line	159
	
l807:	
	goto	l7951
	line	162
	
l806:	
	
l7951:	
;Dimmer_B1.c: 158: }
;Dimmer_B1.c: 159: }
;Dimmer_B1.c: 162: if(clear)
	movf	(setDimmerLights_Main@clear),w
	skipz
	goto	u6510
	goto	l817
u6510:
	line	164
	
l7953:	
;Dimmer_B1.c: 163: {
;Dimmer_B1.c: 164: if(DimmerLights->Switch)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u6521
	goto	u6520
u6521:
	goto	l7961
u6520:
	line	166
	
l7955:	
;Dimmer_B1.c: 165: {
;Dimmer_B1.c: 166: DimmerLights->Trigger=0;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	167
;Dimmer_B1.c: 167: DimmerLights->Clear=0;
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	168
	
l7957:	
;Dimmer_B1.c: 168: setDimmerLights(lights,1);
	clrf	(setDimmerLights@status)
	incf	(setDimmerLights@status),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	line	171
	
l7959:	
;Dimmer_B1.c: 171: DimmerLights->Clear=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	173
;Dimmer_B1.c: 173: }
	goto	l817
	line	174
	
l810:	
	line	176
	
l7961:	
;Dimmer_B1.c: 174: else
;Dimmer_B1.c: 175: {
;Dimmer_B1.c: 176: DimmerLights->Trigger=0;
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	177
	
l7963:	
;Dimmer_B1.c: 177: setDimmerLights(lights,0);
	clrf	(setDimmerLights@status)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	line	179
	
l7965:	
;Dimmer_B1.c: 179: DimmerLights->Clear=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	goto	l817
	line	181
	
l811:	
	goto	l817
	line	182
	
l809:	
	line	183
;Dimmer_B1.c: 181: }
;Dimmer_B1.c: 182: }
;Dimmer_B1.c: 183: }
	goto	l817
	line	184
	
l803:	
	line	186
	
l7967:	
;Dimmer_B1.c: 184: else
;Dimmer_B1.c: 185: {
;Dimmer_B1.c: 186: if(DimmerLights->TriggerAdj)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u6531
	goto	u6530
u6531:
	goto	l817
u6530:
	line	188
	
l7969:	
;Dimmer_B1.c: 187: {
;Dimmer_B1.c: 188: if(!getDimmerLights_Trigger())
	fcall	_getDimmerLights_Trigger
	iorlw	0
	skipz
	goto	u6541
	goto	u6540
u6541:
	movlb 0	; select bank0
	goto	l817
u6540:
	line	190
	
l7971:	
;Dimmer_B1.c: 189: {
;Dimmer_B1.c: 190: DimmerLightsPointSelect(lights);
	movlb 0	; select bank0
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	191
	
l7973:	
;Dimmer_B1.c: 191: DimmerLights->TriggerAdj=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	192
	
l7975:	
;Dimmer_B1.c: 192: if(DimmerLights->AdjGo)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u6551
	goto	u6550
u6551:
	goto	l7979
u6550:
	line	194
	
l7977:	
;Dimmer_B1.c: 193: {
;Dimmer_B1.c: 194: setDimmerLights_Adj(lights,1);
	clrf	(setDimmerLights_Adj@status)
	incf	(setDimmerLights_Adj@status),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	line	195
;Dimmer_B1.c: 195: setBuz(1,1,100);
	movlb 0	; select bank0
	clrf	(setBuz@count)
	incf	(setBuz@count),f
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	196
;Dimmer_B1.c: 196: }
	movlb 0	; select bank0
	goto	l817
	line	197
	
l815:	
	line	199
	
l7979:	
;Dimmer_B1.c: 197: else
;Dimmer_B1.c: 198: {
;Dimmer_B1.c: 199: setDimmerLights_Adj(lights,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Adj@status)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	movlb 0	; select bank0
	goto	l817
	line	200
	
l816:	
	movlb 0	; select bank0
	goto	l817
	line	201
	
l814:	
	movlb 0	; select bank0
	goto	l817
	line	202
	
l813:	
	movlb 0	; select bank0
	goto	l817
	line	203
	
l812:	
	line	204
	
l817:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Main
	__end_of_setDimmerLights_Main:
	signat	_setDimmerLights_Main,4216
	global	_setDimmerLights_Adj

;; *************** function _setDimmerLights_Adj *****************
;; Defined at:
;;		line 394 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  status          1   61[BANK0 ] unsigned char 
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
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_setLoad_StatusOff
;;		_setPercentValue
;;		_setRF_DimmerLights
;;		_setTxData
;; This function is called by:
;;		_setDimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text93,local,class=CODE,delta=2,merge=1
	line	394
global __ptext93
__ptext93:	;psect for function _setDimmerLights_Adj
psect	text93
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	394
	global	__size_of_setDimmerLights_Adj
	__size_of_setDimmerLights_Adj	equ	__end_of_setDimmerLights_Adj-_setDimmerLights_Adj
	
_setDimmerLights_Adj:	
;incstack = 0
	opt	stack 6
; Regs used in _setDimmerLights_Adj: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Adj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Adj@lights)
	line	396
	
l7449:	
;Dimmer_B1.c: 396: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Adj@lights),w
	fcall	_DimmerLightsPointSelect
	line	397
	
l7451:	
;Dimmer_B1.c: 397: if(status)
	movlb 0	; select bank0
	movf	(setDimmerLights_Adj@status),w
	skipz
	goto	u5900
	goto	l7455
u5900:
	line	399
	
l7453:	
;Dimmer_B1.c: 398: {
;Dimmer_B1.c: 399: DimmerLights->AdjFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	400
;Dimmer_B1.c: 400: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	401
;Dimmer_B1.c: 401: }
	goto	l860
	line	402
	
l857:	
	line	404
	
l7455:	
;Dimmer_B1.c: 402: else
;Dimmer_B1.c: 403: {
;Dimmer_B1.c: 404: if(DimmerLights->AdjFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u5911
	goto	u5910
u5911:
	goto	l860
u5910:
	line	406
	
l7457:	
;Dimmer_B1.c: 405: {
;Dimmer_B1.c: 406: DimmerLights->Signal=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	407
;Dimmer_B1.c: 407: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	408
	
l7459:	
;Dimmer_B1.c: 408: setLoad_StatusOff(1,0,1);
	clrf	(setLoad_StatusOff@lights)
	clrf	(setLoad_StatusOff@command)
	incf	(setLoad_StatusOff@command),f
	movlw	(01h)
	fcall	_setLoad_StatusOff
	line	409
	
l7461:	
;Dimmer_B1.c: 409: DimmerLights->MaxmumValue=DimmerLights->DimmingValue;
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
	line	410
;Dimmer_B1.c: 410: setRF_DimmerLights(lights,1);
	clrf	(setRF_DimmerLights@on)
	incf	(setRF_DimmerLights@on),f
	movf	(setDimmerLights_Adj@lights),w
	fcall	_setRF_DimmerLights
	line	411
;Dimmer_B1.c: 411: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	412
	
l7463:	
;Dimmer_B1.c: 412: Memory->Modify=1;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,0
	line	413
	
l7465:	
;Dimmer_B1.c: 413: Product->Data[(20+lights)]=setPercentValue(DimmerLights->MaxmumValue);
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_setDimmerLights_Adj+0)+0
	movf	(setDimmerLights_Adj@lights),w
	addlw	014h
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setDimmerLights_Adj+1)+0
	movf	0+(??_setDimmerLights_Adj+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Adj+0)+0,w
	movwf	indf1
	goto	l860
	line	414
	
l859:	
	goto	l860
	line	415
	
l858:	
	line	416
	
l860:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Adj
	__end_of_setDimmerLights_Adj:
	signat	_setDimmerLights_Adj,8312
	global	_setPercentValue

;; *************** function _setPercentValue *****************
;; Defined at:
;;		line 506 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_setDimmerLights_Adj
;;		_Flash_Memory_Initialization
;; This function uses a non-reentrant model
;;
psect	text94,local,class=CODE,delta=2,merge=1
	line	506
global __ptext94
__ptext94:	;psect for function _setPercentValue
psect	text94
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	506
	global	__size_of_setPercentValue
	__size_of_setPercentValue	equ	__end_of_setPercentValue-_setPercentValue
	
_setPercentValue:	
;incstack = 0
	opt	stack 8
; Regs used in _setPercentValue: [wreg+status,2+status,0+pclath+cstack]
;setPercentValue@value stored from wreg
	movlb 0	; select bank0
	movwf	(setPercentValue@value)
	line	509
	
l7215:	
;Dimmer_B1.c: 509: float i=((char)((100-20)*1.5))-((char)((100-60)*1.5));
	movlw	0x0
	movwf	(setPercentValue@i)
	movlw	0x70
	movwf	(setPercentValue@i+1)
	movlw	0x42
	movwf	(setPercentValue@i+2)
	line	510
	
l7217:	
;Dimmer_B1.c: 510: i/=100;
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
	line	511
	
l7219:	
;Dimmer_B1.c: 511: return (100-(char)((value-((char)((100-60)*1.5)))/i));
	movf	(setPercentValue@value),w
	addlw	low(-60)
	movwf	(___awtoft@c)
	movlw	high(-60)
	skipnc
	movlw	(high(-60)+1)&0ffh
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
	goto	l893
	
l7221:	
	line	519
	
l893:	
	return
	opt stack 0
GLOBAL	__end_of_setPercentValue
	__end_of_setPercentValue:
	signat	_setPercentValue,4217
	global	_setLoad_StatusOff

;; *************** function _setLoad_StatusOff *****************
;; Defined at:
;;		line 346 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  lights          1    2[BANK0 ] unsigned char 
;;  command         1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    4[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LoadPointSelect
;; This function is called by:
;;		_setDimmerLights_ERROR
;;		_setDimmerLights_Adj
;; This function uses a non-reentrant model
;;
psect	text95,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	346
global __ptext95
__ptext95:	;psect for function _setLoad_StatusOff
psect	text95
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	346
	global	__size_of_setLoad_StatusOff
	__size_of_setLoad_StatusOff	equ	__end_of_setLoad_StatusOff-_setLoad_StatusOff
	
_setLoad_StatusOff:	
;incstack = 0
	opt	stack 5
; Regs used in _setLoad_StatusOff: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLoad_StatusOff@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_StatusOff@load)
	line	348
	
l6899:	
;OverLoad_B1.c: 348: LoadPointSelect(load);
	movf	(setLoad_StatusOff@load),w
	fcall	_LoadPointSelect
	line	349
	
l6901:	
;OverLoad_B1.c: 349: Load->StatusOff=command;
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_StatusOff@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	351
	
l6903:	
;OverLoad_B1.c: 351: if(lights == 1)
	movf	(setLoad_StatusOff@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u5241
	goto	u5240
u5241:
	goto	l6907
u5240:
	line	353
	
l6905:	
;OverLoad_B1.c: 352: {
;OverLoad_B1.c: 353: Load->Lights1Status=0;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l6907
	line	354
	
l1934:	
	line	355
	
l6907:	
;OverLoad_B1.c: 354: }
;OverLoad_B1.c: 355: if(lights == 2)
	movf	(setLoad_StatusOff@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u5251
	goto	u5250
u5251:
	goto	l6911
u5250:
	line	357
	
l6909:	
;OverLoad_B1.c: 356: {
;OverLoad_B1.c: 357: Load->Lights2Status=0;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l6911
	line	358
	
l1935:	
	line	359
	
l6911:	
;OverLoad_B1.c: 358: }
;OverLoad_B1.c: 359: if(lights == 3)
	movf	(setLoad_StatusOff@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u5261
	goto	u5260
u5261:
	goto	l1937
u5260:
	line	361
	
l6913:	
;OverLoad_B1.c: 360: {
;OverLoad_B1.c: 361: Load->Lights3Status=0;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	l1937
	line	362
	
l1936:	
	line	363
	
l1937:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_StatusOff
	__end_of_setLoad_StatusOff:
	signat	_setLoad_StatusOff,12408
	global	_setDimmerLights

;; *************** function _setDimmerLights *****************
;; Defined at:
;;		line 337 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;;  status          1    6[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1    8[BANK0 ] unsigned char 
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
;;		_setDimmer_Detect
;;		_setLED
;;		_setLoad_Count
;;		_setLoad_GO
;;		_setLoad_LightsStatus
;;		_setLoad_StatusOn
;; This function is called by:
;;		_setDimmerLights_Main
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text96,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	337
global __ptext96
__ptext96:	;psect for function _setDimmerLights
psect	text96
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	337
	global	__size_of_setDimmerLights
	__size_of_setDimmerLights	equ	__end_of_setDimmerLights-_setDimmerLights
	
_setDimmerLights:	
;incstack = 0
	opt	stack 5
; Regs used in _setDimmerLights: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights@lights)
	line	339
	
l7039:	
;Dimmer_B1.c: 339: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights@lights),w
	fcall	_DimmerLightsPointSelect
	line	340
	
l7041:	
;Dimmer_B1.c: 340: Dimmer->Load=lights;
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
	line	341
	
l7043:	
;Dimmer_B1.c: 341: if(status)
	movf	(setDimmerLights@status),w
	skipz
	goto	u5510
	goto	l7069
u5510:
	line	343
	
l7045:	
;Dimmer_B1.c: 342: {
;Dimmer_B1.c: 343: DimmerLights->Status=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	344
	
l7047:	
;Dimmer_B1.c: 344: setLED(lights,0);
	clrf	(setLED@command)
	movf	(setDimmerLights@lights),w
	fcall	_setLED
	line	346
	
l7049:	
;Dimmer_B1.c: 346: setLoad_StatusOn(1,1);
	movlb 0	; select bank0
	clrf	(setLoad_StatusOn@command)
	incf	(setLoad_StatusOn@command),f
	movlw	(01h)
	fcall	_setLoad_StatusOn
	line	347
	
l7051:	
;Dimmer_B1.c: 347: setLoad_Count(1,0);
	movlb 0	; select bank0
	clrf	(setLoad_Count@command)
	movlw	(01h)
	fcall	_setLoad_Count
	line	349
	
l7053:	
;Dimmer_B1.c: 349: DimmerLights->Signal=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	350
	
l7055:	
;Dimmer_B1.c: 350: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	line	352
	
l7057:	
;Dimmer_B1.c: 352: if(!DimmerLights->StatusFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u5521
	goto	u5520
u5521:
	goto	l854
u5520:
	line	354
	
l7059:	
;Dimmer_B1.c: 353: {
;Dimmer_B1.c: 354: DimmerLights->StatusFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	355
	
l7061:	
;Dimmer_B1.c: 355: setDimmer_Detect(1,1);
	clrf	(setDimmer_Detect@command)
	incf	(setDimmer_Detect@command),f
	movlw	(01h)
	fcall	_setDimmer_Detect
	line	356
	
l7063:	
;Dimmer_B1.c: 356: setLoad_GO(1,1);
	movlb 0	; select bank0
	clrf	(setLoad_GO@command)
	incf	(setLoad_GO@command),f
	movlw	(01h)
	fcall	_setLoad_GO
	line	357
	
l7065:	
;Dimmer_B1.c: 357: setLoad_LightsStatus(1,lights,1);
	movlb 0	; select bank0
	movf	(setDimmerLights@lights),w
	movwf	(??_setDimmerLights+0)+0
	movf	(??_setDimmerLights+0)+0,w
	movwf	(setLoad_LightsStatus@lights)
	clrf	(setLoad_LightsStatus@command)
	incf	(setLoad_LightsStatus@command),f
	movlw	(01h)
	fcall	_setLoad_LightsStatus
	line	360
	
l7067:	
;Dimmer_B1.c: 360: DimmerLights->DimmingValue=DimmerLights->MaxmumValue;
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
	goto	l854
	line	362
	
l852:	
	line	363
;Dimmer_B1.c: 362: }
;Dimmer_B1.c: 363: }
	goto	l854
	line	364
	
l851:	
	line	366
	
l7069:	
;Dimmer_B1.c: 364: else
;Dimmer_B1.c: 365: {
;Dimmer_B1.c: 366: DimmerLights->Status=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	368
;Dimmer_B1.c: 368: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
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
	line	375
;Dimmer_B1.c: 375: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	376
;Dimmer_B1.c: 376: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	377
;Dimmer_B1.c: 377: DimmerLights->AdjStatus=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	378
;Dimmer_B1.c: 378: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	goto	l854
	line	391
	
l853:	
	line	392
	
l854:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights
	__end_of_setDimmerLights:
	signat	_setDimmerLights,8312
	global	_setLoad_StatusOn

;; *************** function _setLoad_StatusOn *****************
;; Defined at:
;;		line 341 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    3[BANK0 ] unsigned char 
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
;;		_LoadPointSelect
;; This function is called by:
;;		_setDimmerLights
;; This function uses a non-reentrant model
;;
psect	text97,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	341
global __ptext97
__ptext97:	;psect for function _setLoad_StatusOn
psect	text97
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	341
	global	__size_of_setLoad_StatusOn
	__size_of_setLoad_StatusOn	equ	__end_of_setLoad_StatusOn-_setLoad_StatusOn
	
_setLoad_StatusOn:	
;incstack = 0
	opt	stack 5
; Regs used in _setLoad_StatusOn: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLoad_StatusOn@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_StatusOn@load)
	line	343
	
l6965:	
;OverLoad_B1.c: 343: LoadPointSelect(load);
	movf	(setLoad_StatusOn@load),w
	fcall	_LoadPointSelect
	line	344
	
l6967:	
;OverLoad_B1.c: 344: Load->StatusOn=command;
	movlb 0	; select bank0
	movf	(_Load),w
	addlw	046h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_StatusOn@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	345
	
l1931:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_StatusOn
	__end_of_setLoad_StatusOn:
	signat	_setLoad_StatusOn,8312
	global	_setLoad_LightsStatus

;; *************** function _setLoad_LightsStatus *****************
;; Defined at:
;;		line 308 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  lights          1    2[BANK0 ] unsigned char 
;;  command         1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    5[BANK0 ] unsigned char 
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
;;		_LoadPointSelect
;; This function is called by:
;;		_setDimmerLights
;; This function uses a non-reentrant model
;;
psect	text98,local,class=CODE,delta=2,merge=1
	line	308
global __ptext98
__ptext98:	;psect for function _setLoad_LightsStatus
psect	text98
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	308
	global	__size_of_setLoad_LightsStatus
	__size_of_setLoad_LightsStatus	equ	__end_of_setLoad_LightsStatus-_setLoad_LightsStatus
	
_setLoad_LightsStatus:	
;incstack = 0
	opt	stack 5
; Regs used in _setLoad_LightsStatus: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLoad_LightsStatus@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_LightsStatus@load)
	line	310
	
l6971:	
;OverLoad_B1.c: 310: LoadPointSelect(load);
	movf	(setLoad_LightsStatus@load),w
	fcall	_LoadPointSelect
	line	311
	
l6973:	
;OverLoad_B1.c: 311: if(lights == 1)
	movlb 0	; select bank0
	movf	(setLoad_LightsStatus@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u5401
	goto	u5400
u5401:
	goto	l6977
u5400:
	line	313
	
l6975:	
;OverLoad_B1.c: 312: {
;OverLoad_B1.c: 313: Load->Lights1Status=command;
	movf	(setLoad_LightsStatus@command),w
	movwf	(??_setLoad_LightsStatus+0)+0
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_LightsStatus+0)+0,w
	movwf	indf1
	goto	l6977
	line	314
	
l1916:	
	line	315
	
l6977:	
;OverLoad_B1.c: 314: }
;OverLoad_B1.c: 315: if(lights == 2)
	movf	(setLoad_LightsStatus@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u5411
	goto	u5410
u5411:
	goto	l6981
u5410:
	line	317
	
l6979:	
;OverLoad_B1.c: 316: {
;OverLoad_B1.c: 317: Load->Lights2Status=command;
	movf	(setLoad_LightsStatus@command),w
	movwf	(??_setLoad_LightsStatus+0)+0
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_LightsStatus+0)+0,w
	movwf	indf1
	goto	l6981
	line	318
	
l1917:	
	line	319
	
l6981:	
;OverLoad_B1.c: 318: }
;OverLoad_B1.c: 319: if(lights == 3)
	movf	(setLoad_LightsStatus@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u5421
	goto	u5420
u5421:
	goto	l1919
u5420:
	line	321
	
l6983:	
;OverLoad_B1.c: 320: {
;OverLoad_B1.c: 321: Load->Lights3Status=command;
	movf	(setLoad_LightsStatus@command),w
	movwf	(??_setLoad_LightsStatus+0)+0
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_LightsStatus+0)+0,w
	movwf	indf1
	goto	l1919
	line	322
	
l1918:	
	line	323
	
l1919:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_LightsStatus
	__end_of_setLoad_LightsStatus:
	signat	_setLoad_LightsStatus,12408
	global	_setLoad_Count

;; *************** function _setLoad_Count *****************
;; Defined at:
;;		line 324 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  command         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    0[COMMON] unsigned char 
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
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
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
psect	text99,local,class=CODE,delta=2,merge=1
	line	324
global __ptext99
__ptext99:	;psect for function _setLoad_Count
psect	text99
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	324
	global	__size_of_setLoad_Count
	__size_of_setLoad_Count	equ	__end_of_setLoad_Count-_setLoad_Count
	
_setLoad_Count:	
;incstack = 0
	opt	stack 6
; Regs used in _setLoad_Count: [wregfsr1]
	line	326
	
l6969:	
;OverLoad_B1.c: 326: Load->Count=command;
	movlb 0	; select bank0
	movf	(setLoad_Count@command),w
	movwf	(??_setLoad_Count+0)+0
	movf	(_Load),w
	addlw	03Ah
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Count+0)+0,w
	movwf	indf1
	line	327
;OverLoad_B1.c: 327: Load->SafeCount=command;
	movf	(setLoad_Count@command),w
	movwf	(??_setLoad_Count+0)+0
	movf	(_Load),w
	addlw	042h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(??_setLoad_Count+0)+0,w
	movwf	indf1
	line	328
	
l1922:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_Count
	__end_of_setLoad_Count:
	signat	_setLoad_Count,8312
	global	_setLED

;; *************** function _setLED *****************
;; Defined at:
;;		line 74 in file "G:\Program\PIC\Source_File\LED_B1.c"
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
;;		_MainT
;;		_setLoad_ERROR
;;		_setOverTemp_ERROR
;;		_setPowerFault_ERROR
;;		_setSw_Initialization
;; This function uses a non-reentrant model
;;
psect	text100,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\LED_B1.c"
	line	74
global __ptext100
__ptext100:	;psect for function _setLED
psect	text100
	file	"G:\Program\PIC\Source_File\LED_B1.c"
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
	
l6915:	
;LED_B1.c: 76: LedPointSelect(led);
	movf	(setLED@led),w
	fcall	_LedPointSelect
	line	77
	
l6917:	
;LED_B1.c: 77: if(command == 0)
	movlb 0	; select bank0
	movf	(setLED@command),f
	skipz
	goto	u5271
	goto	u5270
u5271:
	goto	l6931
u5270:
	line	80
	
l6919:	
;LED_B1.c: 78: {
;LED_B1.c: 80: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u5281
	goto	u5280
u5281:
	goto	l6923
u5280:
	line	85
	
l6921:	
;LED_B1.c: 81: {
;LED_B1.c: 85: RC7=1;
	bsf	(119/8),(119)&7	;volatile
	line	87
;LED_B1.c: 87: }
	goto	l1093
	line	90
	
l1072:	
	
l6923:	
;LED_B1.c: 90: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u5291
	goto	u5290
u5291:
	goto	l6927
u5290:
	line	95
	
l6925:	
;LED_B1.c: 91: {
;LED_B1.c: 95: RA3=1;
	bsf	(99/8),(99)&7	;volatile
	line	97
;LED_B1.c: 97: }
	goto	l1093
	line	110
	
l1074:	
	
l6927:	
;LED_B1.c: 110: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u5301
	goto	u5300
u5301:
	goto	l1093
u5300:
	line	115
	
l6929:	
;LED_B1.c: 111: {
;LED_B1.c: 115: RB5=1;
	bsf	(109/8),(109)&7	;volatile
	goto	l1093
	line	117
	
l1076:	
	goto	l1093
	line	119
	
l1075:	
	goto	l1093
	
l1073:	
;LED_B1.c: 117: }
;LED_B1.c: 119: }
	goto	l1093
	line	120
	
l1071:	
	
l6931:	
;LED_B1.c: 120: else if(command == 1)
	movf	(setLED@command),w
	xorlw	01h&0ffh
	skipz
	goto	u5311
	goto	u5310
u5311:
	goto	l6945
u5310:
	line	123
	
l6933:	
;LED_B1.c: 121: {
;LED_B1.c: 123: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u5321
	goto	u5320
u5321:
	goto	l6937
u5320:
	line	128
	
l6935:	
;LED_B1.c: 124: {
;LED_B1.c: 128: RC7=0;
	bcf	(119/8),(119)&7	;volatile
	line	130
;LED_B1.c: 130: }
	goto	l1093
	line	133
	
l1079:	
	
l6937:	
;LED_B1.c: 133: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u5331
	goto	u5330
u5331:
	goto	l6941
u5330:
	line	138
	
l6939:	
;LED_B1.c: 134: {
;LED_B1.c: 138: RA3=0;
	bcf	(99/8),(99)&7	;volatile
	line	140
;LED_B1.c: 140: }
	goto	l1093
	line	153
	
l1081:	
	
l6941:	
;LED_B1.c: 153: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u5341
	goto	u5340
u5341:
	goto	l1093
u5340:
	line	158
	
l6943:	
;LED_B1.c: 154: {
;LED_B1.c: 158: RB5=0;
	bcf	(109/8),(109)&7	;volatile
	goto	l1093
	line	160
	
l1083:	
	goto	l1093
	line	162
	
l1082:	
	goto	l1093
	
l1080:	
;LED_B1.c: 160: }
;LED_B1.c: 162: }
	goto	l1093
	line	163
	
l1078:	
	
l6945:	
;LED_B1.c: 163: else if(command == 10)
	movf	(setLED@command),w
	xorlw	0Ah&0ffh
	skipz
	goto	u5351
	goto	u5350
u5351:
	goto	l6961
u5350:
	line	165
	
l6947:	
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
	
l6949:	
;LED_B1.c: 168: if(led == 1)
	movlb 0	; select bank0
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u5361
	goto	u5360
u5361:
	goto	l6953
u5360:
	line	173
	
l6951:	
;LED_B1.c: 169: {
;LED_B1.c: 173: RC7=1;
	bsf	(119/8),(119)&7	;volatile
	line	175
;LED_B1.c: 175: }
	goto	l1093
	line	178
	
l1086:	
	
l6953:	
;LED_B1.c: 178: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u5371
	goto	u5370
u5371:
	goto	l6957
u5370:
	line	183
	
l6955:	
;LED_B1.c: 179: {
;LED_B1.c: 183: RA3=1;
	bsf	(99/8),(99)&7	;volatile
	line	185
;LED_B1.c: 185: }
	goto	l1093
	line	198
	
l1088:	
	
l6957:	
;LED_B1.c: 198: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u5381
	goto	u5380
u5381:
	goto	l1093
u5380:
	line	203
	
l6959:	
;LED_B1.c: 199: {
;LED_B1.c: 203: RB5=1;
	bsf	(109/8),(109)&7	;volatile
	goto	l1093
	line	205
	
l1090:	
	goto	l1093
	line	207
	
l1089:	
	goto	l1093
	
l1087:	
;LED_B1.c: 205: }
;LED_B1.c: 207: }
	goto	l1093
	line	208
	
l1085:	
	
l6961:	
;LED_B1.c: 208: else if(command == 11)
	movf	(setLED@command),w
	xorlw	0Bh&0ffh
	skipz
	goto	u5391
	goto	u5390
u5391:
	goto	l1093
u5390:
	line	210
	
l6963:	
;LED_B1.c: 209: {
;LED_B1.c: 210: LED->GO=1;
	movlb 1	; select bank1
	movf	(_LED)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l1093
	line	211
	
l1092:	
	goto	l1093
	line	212
	
l1091:	
	goto	l1093
	
l1084:	
	goto	l1093
	
l1077:	
	
l1093:	
	return
	opt stack 0
GLOBAL	__end_of_setLED
	__end_of_setLED:
	signat	_setLED,8312
	global	_LedPointSelect

;; *************** function _LedPointSelect *****************
;; Defined at:
;;		line 7 in file "G:\Program\PIC\Source_File\LED_B1.c"
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
psect	text101,local,class=CODE,delta=2,merge=1
	line	7
global __ptext101
__ptext101:	;psect for function _LedPointSelect
psect	text101
	file	"G:\Program\PIC\Source_File\LED_B1.c"
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
	
l6743:	
;LED_B1.c: 10: if(led == 1)
	movf	(LedPointSelect@led),w
	xorlw	01h&0ffh
	skipz
	goto	u4961
	goto	u4960
u4961:
	goto	l6747
u4960:
	line	12
	
l6745:	
;LED_B1.c: 11: {
;LED_B1.c: 12: LED=&VarLED1;
	movlw	(_VarLED1)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	13
;LED_B1.c: 13: }
	goto	l1059
	line	16
	
l1054:	
	
l6747:	
;LED_B1.c: 16: else if(led == 2)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	02h&0ffh
	skipz
	goto	u4971
	goto	u4970
u4971:
	goto	l6751
u4970:
	line	18
	
l6749:	
;LED_B1.c: 17: {
;LED_B1.c: 18: LED=&VarLED2;
	movlw	(_VarLED2)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	line	19
;LED_B1.c: 19: }
	goto	l1059
	line	28
	
l1056:	
	
l6751:	
;LED_B1.c: 28: else if(led == 99)
	movlb 0	; select bank0
	movf	(LedPointSelect@led),w
	xorlw	063h&0ffh
	skipz
	goto	u4981
	goto	u4980
u4981:
	goto	l1059
u4980:
	line	30
	
l6753:	
;LED_B1.c: 29: {
;LED_B1.c: 30: LED=&VarErrLED;
	movlw	(_VarErrLED)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_LED)^080h
	goto	l1059
	line	31
	
l1058:	
	goto	l1059
	line	33
	
l1057:	
	goto	l1059
	
l1055:	
	
l1059:	
	return
	opt stack 0
GLOBAL	__end_of_LedPointSelect
	__end_of_LedPointSelect:
	signat	_LedPointSelect,4216
	global	_getDimmerLights_Trigger

;; *************** function _getDimmerLights_Trigger *****************
;; Defined at:
;;		line 231 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[BANK0 ] unsigned char 
;;  Status          1    4[BANK0 ] unsigned char 
;;  length          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_setDimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text102,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	231
global __ptext102
__ptext102:	;psect for function _getDimmerLights_Trigger
psect	text102
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	231
	global	__size_of_getDimmerLights_Trigger
	__size_of_getDimmerLights_Trigger	equ	__end_of_getDimmerLights_Trigger-_getDimmerLights_Trigger
	
_getDimmerLights_Trigger:	
;incstack = 0
	opt	stack 8
; Regs used in _getDimmerLights_Trigger: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	233
	
l7429:	
;Dimmer_B1.c: 233: char Status=0,i,length;
	movlb 0	; select bank0
	clrf	(getDimmerLights_Trigger@Status)
	line	238
	
l7431:	
;Dimmer_B1.c: 238: length=2;
	movlw	(02h)
	movwf	(??_getDimmerLights_Trigger+0)+0
	movf	(??_getDimmerLights_Trigger+0)+0,w
	movwf	(getDimmerLights_Trigger@length)
	line	244
	
l7433:	
;Dimmer_B1.c: 244: for(i=0 ; i<length ; i++)
	clrf	(getDimmerLights_Trigger@i)
	goto	l7443
	line	245
	
l828:	
	line	246
	
l7435:	
;Dimmer_B1.c: 245: {
;Dimmer_B1.c: 246: DimmerLightsPointSelect(i+1);
	movf	(getDimmerLights_Trigger@i),w
	addlw	01h
	fcall	_DimmerLightsPointSelect
	line	247
	
l7437:	
;Dimmer_B1.c: 247: if(DimmerLights->Trigger)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u5881
	goto	u5880
u5881:
	goto	l7441
u5880:
	line	249
	
l7439:	
;Dimmer_B1.c: 248: {
;Dimmer_B1.c: 249: Status=1;
	clrf	(getDimmerLights_Trigger@Status)
	incf	(getDimmerLights_Trigger@Status),f
	goto	l7441
	line	250
	
l829:	
	line	244
	
l7441:	
	movlw	(01h)
	movwf	(??_getDimmerLights_Trigger+0)+0
	movf	(??_getDimmerLights_Trigger+0)+0,w
	addwf	(getDimmerLights_Trigger@i),f
	goto	l7443
	
l827:	
	
l7443:	
	movf	(getDimmerLights_Trigger@length),w
	subwf	(getDimmerLights_Trigger@i),w
	skipc
	goto	u5891
	goto	u5890
u5891:
	goto	l7435
u5890:
	goto	l7445
	
l830:	
	line	252
	
l7445:	
;Dimmer_B1.c: 250: }
;Dimmer_B1.c: 251: }
;Dimmer_B1.c: 252: return Status;
	movf	(getDimmerLights_Trigger@Status),w
	goto	l831
	
l7447:	
	line	253
	
l831:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmerLights_Trigger
	__end_of_getDimmerLights_Trigger:
	signat	_getDimmerLights_Trigger,89
	global	_DimmerLights_Close

;; *************** function _DimmerLights_Close *****************
;; Defined at:
;;		line 85 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_getDimmerLights_StatusFlag
;;		_getDimmer_Detect
;;		_setDimmer_Detect
;;		_setLoad_GO
;; This function is called by:
;;		_DimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text103,local,class=CODE,delta=2,merge=1
	line	85
global __ptext103
__ptext103:	;psect for function _DimmerLights_Close
psect	text103
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	85
	global	__size_of_DimmerLights_Close
	__size_of_DimmerLights_Close	equ	__end_of_DimmerLights_Close-_DimmerLights_Close
	
_DimmerLights_Close:	
;incstack = 0
	opt	stack 8
; Regs used in _DimmerLights_Close: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	87
	
l7925:	
;Dimmer_B1.c: 87: if(getDimmer_Detect(1))
	movlw	(01h)
	fcall	_getDimmer_Detect
	xorlw	0&0ffh
	skipnz
	goto	u6441
	goto	u6440
u6441:
	goto	l797
u6440:
	line	89
	
l7927:	
;Dimmer_B1.c: 88: {
;Dimmer_B1.c: 89: setDimmer_Detect(1,0);
	movlb 0	; select bank0
	clrf	(setDimmer_Detect@command)
	movlw	(01h)
	fcall	_setDimmer_Detect
	line	90
;Dimmer_B1.c: 90: if(!getDimmerLights_StatusFlag())
	fcall	_getDimmerLights_StatusFlag
	iorlw	0
	skipz
	goto	u6451
	goto	u6450
u6451:
	goto	l797
u6450:
	line	92
	
l7929:	
;Dimmer_B1.c: 91: {
;Dimmer_B1.c: 92: setLoad_GO(1,0);
	movlb 0	; select bank0
	clrf	(setLoad_GO@command)
	movlw	(01h)
	fcall	_setLoad_GO
	line	93
	
l7931:	
;Dimmer_B1.c: 93: Memory->GO=1;
	movlb 1	; select bank1
	movf	(_Memory)^080h,w
	addlw	022h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l797
	line	94
	
l796:	
	goto	l797
	line	95
	
l795:	
	line	96
	
l797:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Close
	__end_of_DimmerLights_Close:
	signat	_DimmerLights_Close,88
	global	_setLoad_GO

;; *************** function _setLoad_GO *****************
;; Defined at:
;;		line 336 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    3[BANK0 ] unsigned char 
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
;;		_LoadPointSelect
;; This function is called by:
;;		_DimmerLights_Close
;;		_setDimmerLights
;; This function uses a non-reentrant model
;;
psect	text104,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	336
global __ptext104
__ptext104:	;psect for function _setLoad_GO
psect	text104
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	336
	global	__size_of_setLoad_GO
	__size_of_setLoad_GO	equ	__end_of_setLoad_GO-_setLoad_GO
	
_setLoad_GO:	
;incstack = 0
	opt	stack 5
; Regs used in _setLoad_GO: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLoad_GO@load stored from wreg
	movlb 0	; select bank0
	movwf	(setLoad_GO@load)
	line	338
	
l6895:	
;OverLoad_B1.c: 338: LoadPointSelect(load);
	movf	(setLoad_GO@load),w
	fcall	_LoadPointSelect
	line	339
	
l6897:	
;OverLoad_B1.c: 339: Load->GO=command;
	movlb 0	; select bank0
	movf	(_Load),w
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	movf	(setLoad_GO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	340
	
l1928:	
	return
	opt stack 0
GLOBAL	__end_of_setLoad_GO
	__end_of_setLoad_GO:
	signat	_setLoad_GO,8312
	global	_LoadPointSelect

;; *************** function _LoadPointSelect *****************
;; Defined at:
;;		line 7 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    1[BANK0 ] unsigned char 
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
;;		_setLoad_Initialization
;;		_getLoad_AD
;;		_setLoad_Main
;;		_setLoad_ERROR
;;		_setLoad_LightsStatus
;;		_setLoad_Enable
;;		_setLoad_GO
;;		_setLoad_StatusOn
;;		_setLoad_StatusOff
;;		_getLoad_Safe
;;		_setLoad_LightsCount
;;		_getLoad_ERROR
;; This function uses a non-reentrant model
;;
psect	text105,local,class=CODE,delta=2,merge=1
	line	7
global __ptext105
__ptext105:	;psect for function _LoadPointSelect
psect	text105
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	7
	global	__size_of_LoadPointSelect
	__size_of_LoadPointSelect	equ	__end_of_LoadPointSelect-_LoadPointSelect
	
_LoadPointSelect:	
;incstack = 0
	opt	stack 10
; Regs used in _LoadPointSelect: [wreg]
;LoadPointSelect@load stored from wreg
	movlb 0	; select bank0
	movwf	(LoadPointSelect@load)
	line	10
	
l6755:	
;OverLoad_B1.c: 10: if(load == 1)
	movf	(LoadPointSelect@load),w
	xorlw	01h&0ffh
	skipz
	goto	u4991
	goto	u4990
u4991:
	goto	l1853
u4990:
	line	12
	
l6757:	
;OverLoad_B1.c: 11: {
;OverLoad_B1.c: 12: Load=&Load1;
	movlw	(_Load1)&0ffh
	movwf	(??_LoadPointSelect+0)+0
	movf	(??_LoadPointSelect+0)+0,w
	movwf	(_Load)
	goto	l1853
	line	13
	
l1852:	
	line	15
	
l1853:	
	return
	opt stack 0
GLOBAL	__end_of_LoadPointSelect
	__end_of_LoadPointSelect:
	signat	_LoadPointSelect,4216
	global	_setDimmer_Detect

;; *************** function _setDimmer_Detect *****************
;; Defined at:
;;		line 546 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    3[BANK0 ] unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_DimmerLights_Close
;;		_setDimmerLights
;; This function uses a non-reentrant model
;;
psect	text106,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	546
global __ptext106
__ptext106:	;psect for function _setDimmer_Detect
psect	text106
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	546
	global	__size_of_setDimmer_Detect
	__size_of_setDimmer_Detect	equ	__end_of_setDimmer_Detect-_setDimmer_Detect
	
_setDimmer_Detect:	
;incstack = 0
	opt	stack 5
; Regs used in _setDimmer_Detect: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmer_Detect@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmer_Detect@dimmer)
	line	548
	
l6891:	
;Dimmer_B1.c: 548: DimmerPointSelect(dimmer);
	movf	(setDimmer_Detect@dimmer),w
	fcall	_DimmerPointSelect
	line	549
	
l6893:	
;Dimmer_B1.c: 549: Dimmer->Detect=command;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setDimmer_Detect@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	550
	
l909:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmer_Detect
	__end_of_setDimmer_Detect:
	signat	_setDimmer_Detect,8312
	global	_getDimmer_Detect

;; *************** function _getDimmer_Detect *****************
;; Defined at:
;;		line 566 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_DimmerPointSelect
;; This function is called by:
;;		_DimmerLights_Close
;; This function uses a non-reentrant model
;;
psect	text107,local,class=CODE,delta=2,merge=1
	line	566
global __ptext107
__ptext107:	;psect for function _getDimmer_Detect
psect	text107
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	566
	global	__size_of_getDimmer_Detect
	__size_of_getDimmer_Detect	equ	__end_of_getDimmer_Detect-_getDimmer_Detect
	
_getDimmer_Detect:	
;incstack = 0
	opt	stack 8
; Regs used in _getDimmer_Detect: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;getDimmer_Detect@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(getDimmer_Detect@dimmer)
	line	568
	
l7423:	
;Dimmer_B1.c: 568: DimmerPointSelect(dimmer);
	movf	(getDimmer_Detect@dimmer),w
	fcall	_DimmerPointSelect
	line	569
	
l7425:	
;Dimmer_B1.c: 569: return Dimmer->Detect;
	movlb 1	; select bank1
	movf	(_Dimmer)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	rrf	indf1,w
	movlb 0	; select bank0
	movwf	(??_getDimmer_Detect+0)+0
	rrf	(??_getDimmer_Detect+0)+0,f
	rrf	(??_getDimmer_Detect+0)+0,w
	andlw	(1<<1)-1
	goto	l921
	
l7427:	
	line	570
	
l921:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmer_Detect
	__end_of_getDimmer_Detect:
	signat	_getDimmer_Detect,4217
	global	_DimmerPointSelect

;; *************** function _DimmerPointSelect *****************
;; Defined at:
;;		line 521 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  dimmer          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dimmer          1    1[BANK0 ] unsigned char 
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
;;		_setDimmer_TempERROR
;;		_setDimmer_LoadERROR
;;		_setDimmer_PFERROR
;;		_setDimmer_Detect
;;		_getDimmer_TempERROR
;;		_getDimmer_LoadERROR
;;		_getDimmer_PFERROR
;;		_getDimmer_Detect
;; This function uses a non-reentrant model
;;
psect	text108,local,class=CODE,delta=2,merge=1
	line	521
global __ptext108
__ptext108:	;psect for function _DimmerPointSelect
psect	text108
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	521
	global	__size_of_DimmerPointSelect
	__size_of_DimmerPointSelect	equ	__end_of_DimmerPointSelect-_DimmerPointSelect
	
_DimmerPointSelect:	
;incstack = 0
	opt	stack 7
; Regs used in _DimmerPointSelect: [wreg]
;DimmerPointSelect@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(DimmerPointSelect@dimmer)
	line	525
	
l6739:	
;Dimmer_B1.c: 525: if(dimmer == 1)
	movf	(DimmerPointSelect@dimmer),w
	xorlw	01h&0ffh
	skipz
	goto	u4951
	goto	u4950
u4951:
	goto	l897
u4950:
	line	527
	
l6741:	
;Dimmer_B1.c: 526: {
;Dimmer_B1.c: 527: Dimmer=&Dimmer1;
	movlw	(_Dimmer1)&0ffh
	movwf	(??_DimmerPointSelect+0)+0
	movf	(??_DimmerPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_Dimmer)^080h
	goto	l897
	line	528
	
l896:	
	line	530
	
l897:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerPointSelect
	__end_of_DimmerPointSelect:
	signat	_DimmerPointSelect,4216
	global	_getDimmerLights_StatusFlag

;; *************** function _getDimmerLights_StatusFlag *****************
;; Defined at:
;;		line 206 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[BANK0 ] unsigned char 
;;  Status          1    4[BANK0 ] unsigned char 
;;  length          1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DimmerLightsPointSelect
;; This function is called by:
;;		_DimmerLights_Close
;;		_DimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text109,local,class=CODE,delta=2,merge=1
	line	206
global __ptext109
__ptext109:	;psect for function _getDimmerLights_StatusFlag
psect	text109
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	206
	global	__size_of_getDimmerLights_StatusFlag
	__size_of_getDimmerLights_StatusFlag	equ	__end_of_getDimmerLights_StatusFlag-_getDimmerLights_StatusFlag
	
_getDimmerLights_StatusFlag:	
;incstack = 0
	opt	stack 6
; Regs used in _getDimmerLights_StatusFlag: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	208
	
l7019:	
;Dimmer_B1.c: 208: char Status=0,i,length;
	movlb 0	; select bank0
	clrf	(getDimmerLights_StatusFlag@Status)
	line	213
	
l7021:	
;Dimmer_B1.c: 213: length=2;
	movlw	(02h)
	movwf	(??_getDimmerLights_StatusFlag+0)+0
	movf	(??_getDimmerLights_StatusFlag+0)+0,w
	movwf	(getDimmerLights_StatusFlag@length)
	line	220
	
l7023:	
;Dimmer_B1.c: 220: for(i=0 ; i<length ; i++)
	clrf	(getDimmerLights_StatusFlag@i)
	goto	l7033
	line	221
	
l821:	
	line	222
	
l7025:	
;Dimmer_B1.c: 221: {
;Dimmer_B1.c: 222: DimmerLightsPointSelect(i+1);
	movf	(getDimmerLights_StatusFlag@i),w
	addlw	01h
	fcall	_DimmerLightsPointSelect
	line	223
	
l7027:	
;Dimmer_B1.c: 223: if(DimmerLights->StatusFlag)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u5491
	goto	u5490
u5491:
	goto	l7031
u5490:
	line	225
	
l7029:	
;Dimmer_B1.c: 224: {
;Dimmer_B1.c: 225: Status=1;
	clrf	(getDimmerLights_StatusFlag@Status)
	incf	(getDimmerLights_StatusFlag@Status),f
	goto	l7031
	line	226
	
l822:	
	line	220
	
l7031:	
	movlw	(01h)
	movwf	(??_getDimmerLights_StatusFlag+0)+0
	movf	(??_getDimmerLights_StatusFlag+0)+0,w
	addwf	(getDimmerLights_StatusFlag@i),f
	goto	l7033
	
l820:	
	
l7033:	
	movf	(getDimmerLights_StatusFlag@length),w
	subwf	(getDimmerLights_StatusFlag@i),w
	skipc
	goto	u5501
	goto	u5500
u5501:
	goto	l7025
u5500:
	goto	l7035
	
l823:	
	line	228
	
l7035:	
;Dimmer_B1.c: 226: }
;Dimmer_B1.c: 227: }
;Dimmer_B1.c: 228: return Status;
	movf	(getDimmerLights_StatusFlag@Status),w
	goto	l824
	
l7037:	
	line	229
	
l824:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmerLights_StatusFlag
	__end_of_getDimmerLights_StatusFlag:
	signat	_getDimmerLights_StatusFlag,89
	global	_DimmerLights_Initialization

;; *************** function _DimmerLights_Initialization *****************
;; Defined at:
;;		line 32 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setDimmerLights_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text110,local,class=CODE,delta=2,merge=1
	line	32
global __ptext110
__ptext110:	;psect for function _DimmerLights_Initialization
psect	text110
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	32
	global	__size_of_DimmerLights_Initialization
	__size_of_DimmerLights_Initialization	equ	__end_of_DimmerLights_Initialization-_DimmerLights_Initialization
	
_DimmerLights_Initialization:	
;incstack = 0
	opt	stack 7
; Regs used in _DimmerLights_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	35
	
l8557:	
;Dimmer_B1.c: 35: DimmerLights11=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movlb 0	; select bank0
	movwf	(??_DimmerLights_Initialization+0)+0
	movf	(??_DimmerLights_Initialization+0)+0,w
	movwf	(_DimmerLights11)
	line	36
	
l8559:	
;Dimmer_B1.c: 36: setDimmerLights_Initialization(1);
	movlw	(01h)
	fcall	_setDimmerLights_Initialization
	line	40
	
l8561:	
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
	line	48
	
l789:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Initialization
	__end_of_DimmerLights_Initialization:
	signat	_DimmerLights_Initialization,88
	global	_setDimmerLights_Initialization

;; *************** function _setDimmerLights_Initialization *****************
;; Defined at:
;;		line 49 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
;; Parameters:    Size  Location     Type
;;  lights          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lights          1   65[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DimmerLightsPointSelect
;;		_getPercentValue
;; This function is called by:
;;		_DimmerLights_Initialization
;; This function uses a non-reentrant model
;;
psect	text111,local,class=CODE,delta=2,merge=1
	line	49
global __ptext111
__ptext111:	;psect for function _setDimmerLights_Initialization
psect	text111
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	49
	global	__size_of_setDimmerLights_Initialization
	__size_of_setDimmerLights_Initialization	equ	__end_of_setDimmerLights_Initialization-_setDimmerLights_Initialization
	
_setDimmerLights_Initialization:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Initialization@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Initialization@lights)
	line	51
	
l7913:	
;Dimmer_B1.c: 51: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Initialization@lights),w
	fcall	_DimmerLightsPointSelect
	line	53
	
l7915:	
;Dimmer_B1.c: 53: DimmerLights->MaxmumValue=((char)((100-60)*1.5));
	movlw	(03Ch)
	movlb 0	; select bank0
	movwf	(??_setDimmerLights_Initialization+0)+0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Initialization+0)+0,w
	movwf	indf1
	line	54
	
l7917:	
;Dimmer_B1.c: 54: DimmerLights->MinimumValue=((char)((100-20)*1.5));
	movlw	(078h)
	movwf	(??_setDimmerLights_Initialization+0)+0
	movf	(_DimmerLights),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Initialization+0)+0,w
	movwf	indf1
	line	55
	
l7919:	
;Dimmer_B1.c: 55: DimmerLights->Clear=1;
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	61
	
l7921:	
;Dimmer_B1.c: 61: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
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
	line	79
	
l7923:	
;Dimmer_B1.c: 79: DimmerLights->MaxmumValue=getPercentValue(Product->Data[(20+lights)]);
	movf	(setDimmerLights_Initialization@lights),w
	addlw	014h
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setDimmerLights_Initialization+0)+0
	movf	0+(??_setDimmerLights_Initialization+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	fcall	_getPercentValue
	movlb 0	; select bank0
	movwf	(??_setDimmerLights_Initialization+1)+0
	movf	(_DimmerLights),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Initialization+1)+0,w
	movwf	indf1
	line	83
	
l792:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Initialization
	__end_of_setDimmerLights_Initialization:
	signat	_setDimmerLights_Initialization,4216
	global	_getPercentValue

;; *************** function _getPercentValue *****************
;; Defined at:
;;		line 491 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_setDimmerLights_Initialization
;;		_setDimmerLights_AdjRF
;; This function uses a non-reentrant model
;;
psect	text112,local,class=CODE,delta=2,merge=1
	line	491
global __ptext112
__ptext112:	;psect for function _getPercentValue
psect	text112
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	491
	global	__size_of_getPercentValue
	__size_of_getPercentValue	equ	__end_of_getPercentValue-_getPercentValue
	
_getPercentValue:	
;incstack = 0
	opt	stack 2
; Regs used in _getPercentValue: [wreg+status,2+status,0+pclath+cstack]
;getPercentValue@value stored from wreg
	movlb 0	; select bank0
	movwf	(getPercentValue@value)
	line	494
	
l6669:	
;Dimmer_B1.c: 494: float i=((char)((100-20)*1.5))-((char)((100-60)*1.5));
	movlw	0x0
	movwf	(getPercentValue@i)
	movlw	0x70
	movwf	(getPercentValue@i+1)
	movlw	0x42
	movwf	(getPercentValue@i+2)
	line	495
	
l6671:	
;Dimmer_B1.c: 495: i/=100;
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
	line	496
	
l6673:	
;Dimmer_B1.c: 496: return (char)(((100-value)*i)+((char)((100-60)*1.5)));
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
	movlw	0x70
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
	goto	l890
	
l6675:	
	line	504
	
l890:	
	return
	opt stack 0
GLOBAL	__end_of_getPercentValue
	__end_of_getPercentValue:
	signat	_getPercentValue,4217
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
psect	text113,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
global __ptext113
__ptext113:	;psect for function ___fttol
psect	text113
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6619:	
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
	goto	u4711
	goto	u4710
u4711:
	goto	l6625
u4710:
	line	50
	
l6621:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3586
	
l6623:	
	goto	l3586
	
l3585:	
	line	51
	
l6625:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u4725:
	lsrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u4720:
	decfsz	wreg,f
	goto	u4725
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6627:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6629:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6631:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6633:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6635:	
	btfss	(___fttol@exp1),7
	goto	u4731
	goto	u4730
u4731:
	goto	l6645
u4730:
	line	57
	
l6637:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4741
	goto	u4740
u4741:
	goto	l6643
u4740:
	line	58
	
l6639:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3586
	
l6641:	
	goto	l3586
	
l3588:	
	goto	l6643
	line	59
	
l3589:	
	line	60
	
l6643:	
	movlw	01h
u4755:
	lsrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	decfsz	wreg,f
	goto	u4755

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u4761
	goto	u4760
u4761:
	goto	l6643
u4760:
	goto	l6655
	
l3590:	
	line	62
	goto	l6655
	
l3587:	
	line	63
	
l6645:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u4771
	goto	u4770
u4771:
	goto	l6653
u4770:
	line	64
	
l6647:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3586
	
l6649:	
	goto	l3586
	
l3592:	
	line	65
	goto	l6653
	
l3594:	
	line	66
	
l6651:	
	movlw	01h
u4785:
	lslf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	wreg,f
	goto	u4785
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l6653
	line	68
	
l3593:	
	line	65
	
l6653:	
	movf	(___fttol@exp1),f
	skipz
	goto	u4791
	goto	u4790
u4791:
	goto	l6651
u4790:
	goto	l6655
	
l3595:	
	goto	l6655
	line	69
	
l3591:	
	line	70
	
l6655:	
	movf	(___fttol@sign1),w
	skipz
	goto	u4800
	goto	l6659
u4800:
	line	71
	
l6657:	
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
	goto	l6659
	
l3596:	
	line	72
	
l6659:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l3586
	
l6661:	
	line	73
	
l3586:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
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
psect	text114,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
	line	62
global __ptext114
__ptext114:	;psect for function ___ftmul
psect	text114
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l6569:	
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
	goto	u4591
	goto	u4590
u4591:
	goto	l6575
u4590:
	line	68
	
l6571:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l3566
	
l6573:	
	goto	l3566
	
l3565:	
	line	69
	
l6575:	
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
	goto	u4601
	goto	u4600
u4601:
	goto	l6581
u4600:
	line	70
	
l6577:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l3566
	
l6579:	
	goto	l3566
	
l3567:	
	line	71
	
l6581:	
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
u4615:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4610:
	decfsz	wreg,f
	goto	u4615
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
u4625:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4620:
	decfsz	wreg,f
	goto	u4625
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
	
l6583:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l6585:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l6587:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l6589:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l6591:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l6593
	line	135
	
l3568:	
	line	136
	
l6593:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4631
	goto	u4630
u4631:
	goto	l6597
u4630:
	line	137
	
l6595:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l6597
	
l3569:	
	line	138
	
l6597:	
	movlw	01h
u4645:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u4645

	line	139
	
l6599:	
	movlw	01h
u4655:
	lslf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	decfsz	wreg,f
	goto	u4655
	line	140
	
l6601:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4661
	goto	u4660
u4661:
	goto	l6593
u4660:
	goto	l6603
	
l3570:	
	line	143
	
l6603:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l6605
	line	144
	
l3571:	
	line	145
	
l6605:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4671
	goto	u4670
u4671:
	goto	l6609
u4670:
	line	146
	
l6607:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l6609
	
l3572:	
	line	147
	
l6609:	
	movlw	01h
u4685:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u4685

	line	148
	
l6611:	
	movlw	01h
u4695:
	lsrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	decfsz	wreg,f
	goto	u4695

	line	149
	
l6613:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4701
	goto	u4700
u4701:
	goto	l6605
u4700:
	goto	l6615
	
l3573:	
	line	156
	
l6615:	
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
	goto	l3566
	
l6617:	
	line	157
	
l3566:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
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
psect	text115,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\ftdiv.c"
	line	49
global __ptext115
__ptext115:	;psect for function ___ftdiv
psect	text115
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l6527:	
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
	goto	u4511
	goto	u4510
u4511:
	goto	l6533
u4510:
	line	56
	
l6529:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l3551
	
l6531:	
	goto	l3551
	
l3550:	
	line	57
	
l6533:	
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
	goto	u4521
	goto	u4520
u4521:
	goto	l6539
u4520:
	line	58
	
l6535:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l3551
	
l6537:	
	goto	l3551
	
l3552:	
	line	59
	
l6539:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l6541:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l6543:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4535:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4530:
	decfsz	wreg,f
	goto	u4535
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l6545:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4545:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4540:
	decfsz	wreg,f
	goto	u4545
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l6547:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l6549:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l6551:	
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
	goto	l6553
	line	69
	
l3553:	
	line	70
	
l6553:	
	movlw	01h
u4555:
	lslf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	decfsz	wreg,f
	goto	u4555
	line	71
	
l6555:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4565
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4565
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4565:
	skipc
	goto	u4561
	goto	u4560
u4561:
	goto	l6561
u4560:
	line	72
	
l6557:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	subwfb	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	subwfb	(___ftdiv@f1+2),f
	line	73
	
l6559:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l6561
	line	74
	
l3554:	
	line	75
	
l6561:	
	movlw	01h
u4575:
	lslf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	decfsz	wreg,f
	goto	u4575
	line	76
	
l6563:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u4581
	goto	u4580
u4581:
	goto	l6553
u4580:
	goto	l6565
	
l3555:	
	line	77
	
l6565:	
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
	goto	l3551
	
l6567:	
	line	78
	
l3551:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
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
psect	text116,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
	line	86
global __ptext116
__ptext116:	;psect for function ___ftadd
psect	text116
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l6455:	
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
	
l6457:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u4280
	goto	l6463
u4280:
	
l6459:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u4291
	goto	u4290
u4291:
	goto	l6467
u4290:
	
l6461:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4301
	goto	u4300
u4301:
	goto	l6467
u4300:
	goto	l6463
	
l3519:	
	line	93
	
l6463:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3520
	
l6465:	
	goto	l3520
	
l3517:	
	line	94
	
l6467:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u4310
	goto	l3523
u4310:
	
l6469:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4321
	goto	u4320
u4321:
	goto	l6473
u4320:
	
l6471:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4331
	goto	u4330
u4331:
	goto	l6473
u4330:
	
l3523:	
	line	95
	goto	l3520
	
l3521:	
	line	96
	
l6473:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l6475:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u4341
	goto	u4340
u4341:
	goto	l3524
u4340:
	line	98
	
l6477:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3524:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4351
	goto	u4350
u4351:
	goto	l3525
u4350:
	line	100
	
l6479:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3525:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l6481:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l6483:	
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
	goto	u4361
	goto	u4360
u4361:
	goto	l6495
u4360:
	goto	l6485
	line	109
	
l3527:	
	line	110
	
l6485:	
	movlw	01h
u4375:
	lslf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	decfsz	wreg,f
	goto	u4375
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l6487:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4381
	goto	u4380
u4381:
	goto	l6493
u4380:
	
l6489:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4391
	goto	u4390
u4391:
	goto	l6485
u4390:
	goto	l6493
	
l3529:	
	goto	l6493
	
l3530:	
	line	113
	goto	l6493
	
l3532:	
	line	114
	
l6491:	
	movlw	01h
u4405:
	lsrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	decfsz	wreg,f
	goto	u4405

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l6493
	line	116
	
l3531:	
	line	113
	
l6493:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4411
	goto	u4410
u4411:
	goto	l6491
u4410:
	goto	l3534
	
l3533:	
	line	117
	goto	l3534
	
l3526:	
	
l6495:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4421
	goto	u4420
u4421:
	goto	l3534
u4420:
	goto	l6497
	line	120
	
l3536:	
	line	121
	
l6497:	
	movlw	01h
u4435:
	lslf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	decfsz	wreg,f
	goto	u4435
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l6499:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4441
	goto	u4440
u4441:
	goto	l6505
u4440:
	
l6501:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4451
	goto	u4450
u4451:
	goto	l6497
u4450:
	goto	l6505
	
l3538:	
	goto	l6505
	
l3539:	
	line	124
	goto	l6505
	
l3541:	
	line	125
	
l6503:	
	movlw	01h
u4465:
	lsrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	decfsz	wreg,f
	goto	u4465

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l6505
	line	127
	
l3540:	
	line	124
	
l6505:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4471
	goto	u4470
u4471:
	goto	l6503
u4470:
	goto	l3534
	
l3542:	
	goto	l3534
	line	128
	
l3535:	
	line	129
	
l3534:	
	btfss	(___ftadd@sign),(7)&7
	goto	u4481
	goto	u4480
u4481:
	goto	l6509
u4480:
	line	131
	
l6507:	
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
	goto	l6509
	line	133
	
l3543:	
	line	134
	
l6509:	
	btfss	(___ftadd@sign),(6)&7
	goto	u4491
	goto	u4490
u4491:
	goto	l6513
u4490:
	line	136
	
l6511:	
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
	goto	l6513
	line	138
	
l3544:	
	line	139
	
l6513:	
	clrf	(___ftadd@sign)
	line	140
	
l6515:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	addwfc	(___ftadd@f2+1),f
	movf	(___ftadd@f1+2),w
	addwfc	(___ftadd@f2+2),f
	line	141
	
l6517:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4501
	goto	u4500
u4501:
	goto	l6523
u4500:
	line	142
	
l6519:	
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
	
l6521:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l6523
	line	145
	
l3545:	
	line	146
	
l6523:	
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
	goto	l3520
	
l6525:	
	line	148
	
l3520:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
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
psect	text117,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
	line	32
global __ptext117
__ptext117:	;psect for function ___awtoft
psect	text117
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l6443:	
	movlb 0	; select bank0
	clrf	(___awtoft@sign)
	line	37
	
l6445:	
	btfss	(___awtoft@c+1),7
	goto	u4271
	goto	u4270
u4271:
	goto	l6451
u4270:
	line	38
	
l6447:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l6449:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l6451
	line	40
	
l3494:	
	line	41
	
l6451:	
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
	goto	l3495
	
l6453:	
	line	42
	
l3495:	
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
psect	text118,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
global __ptext118
__ptext118:	;psect for function ___ftpack
psect	text118
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l6413:	
	movlb 0	; select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u4160
	goto	l6417
u4160:
	
l6415:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u4171
	goto	u4170
u4171:
	goto	l6423
u4170:
	goto	l6417
	
l3500:	
	line	65
	
l6417:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l3501
	
l6419:	
	goto	l3501
	
l3498:	
	line	66
	goto	l6423
	
l3503:	
	line	67
	
l6421:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u4185:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u4185

	goto	l6423
	line	69
	
l3502:	
	line	66
	
l6423:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4191
	goto	u4190
u4191:
	goto	l6421
u4190:
	goto	l3505
	
l3504:	
	line	70
	goto	l3505
	
l3506:	
	line	71
	
l6425:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l6427:	
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
	
l6429:	
	movlw	01h
u4205:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u4205

	line	74
	
l3505:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4211
	goto	u4210
u4211:
	goto	l6425
u4210:
	goto	l6433
	
l3507:	
	line	75
	goto	l6433
	
l3509:	
	line	76
	
l6431:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u4225:
	lslf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	decfsz	wreg,f
	goto	u4225
	goto	l6433
	line	78
	
l3508:	
	line	75
	
l6433:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u4231
	goto	u4230
u4231:
	goto	l6431
u4230:
	
l3510:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l3511
u4240:
	line	80
	
l6435:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l3511:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l6437:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u4255:
	lslf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u4250:
	decfsz	wreg,f
	goto	u4255
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l6439:	
	movf	(___ftpack@sign),w
	skipz
	goto	u4260
	goto	l3512
u4260:
	line	84
	
l6441:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3512:	
	line	85
	line	86
	
l3501:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_DelayOff_Main

;; *************** function _DelayOff_Main *****************
;; Defined at:
;;		line 45 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
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
psect	text119,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	45
global __ptext119
__ptext119:	;psect for function _DelayOff_Main
psect	text119
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	45
	global	__size_of_DelayOff_Main
	__size_of_DelayOff_Main	equ	__end_of_DelayOff_Main-_DelayOff_Main
	
_DelayOff_Main:	
;incstack = 0
	opt	stack 8
; Regs used in _DelayOff_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	48
	
l8555:	
;DelayOff_B1.c: 48: DlyOff_Main(1);
	movlw	(01h)
	fcall	_DlyOff_Main
	line	52
;DelayOff_B1.c: 52: DlyOff_Main(2);
	movlw	(02h)
	fcall	_DlyOff_Main
	line	58
	
l581:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOff_Main
	__end_of_DelayOff_Main:
	signat	_DelayOff_Main,88
	global	_DlyOff_Main

;; *************** function _DlyOff_Main *****************
;; Defined at:
;;		line 66 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   13[BANK0 ] unsigned char 
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
psect	text120,local,class=CODE,delta=2,merge=1
	line	66
global __ptext120
__ptext120:	;psect for function _DlyOff_Main
psect	text120
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
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
	
l7881:	
;DelayOff_B1.c: 68: DelayOffPointSelect(sw);
	movf	(DlyOff_Main@sw),w
	fcall	_DelayOffPointSelect
	line	69
	
l7883:	
;DelayOff_B1.c: 69: if(DelayOff->GO)
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u6411
	goto	u6410
u6411:
	goto	l590
u6410:
	line	71
	
l7885:	
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
	
l7887:	
;DelayOff_B1.c: 72: if(DelayOff->SecondTime >= 5400)
	movf	(_DelayOff)^080h,w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_DlyOff_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_DlyOff_Main+0)+0+1
	movlw	high(01518h)
	subwf	1+(??_DlyOff_Main+0)+0,w
	movlw	low(01518h)
	skipnz
	subwf	0+(??_DlyOff_Main+0)+0,w
	skipc
	goto	u6421
	goto	u6420
u6421:
	goto	l590
u6420:
	line	74
	
l7889:	
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
	
l7891:	
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
	
l7893:	
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
	goto	u6431
	goto	u6430
u6431:
	goto	l590
u6430:
	line	78
	
l7895:	
;DelayOff_B1.c: 77: {
;DelayOff_B1.c: 78: DelayOff->MinuteTime=0;
	movf	(_DelayOff)^080h,w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	79
	
l7897:	
;DelayOff_B1.c: 79: DelayOff->GO=0;
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	80
	
l7899:	
;DelayOff_B1.c: 80: setSw_Status(sw,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setSw_Status
	line	81
	
l7901:	
;DelayOff_B1.c: 81: setRFSW_Status(sw,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setRFSW_Status
	line	82
	
l7903:	
;DelayOff_B1.c: 82: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	movf	(DlyOff_Main@sw),w
	fcall	_setRF_DimmerLights
	line	83
	
l7905:	
;DelayOff_B1.c: 83: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Trigger
	line	84
	
l7907:	
;DelayOff_B1.c: 84: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Switch
	line	85
	
l7909:	
;DelayOff_B1.c: 85: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	86
	
l7911:	
;DelayOff_B1.c: 86: setBuz(1,1,100);
	movlb 0	; select bank0
	clrf	(setBuz@count)
	incf	(setBuz@count),f
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	goto	l590
	line	87
	
l589:	
	goto	l590
	line	88
	
l588:	
	goto	l590
	line	89
	
l587:	
	line	90
	
l590:	
	return
	opt stack 0
GLOBAL	__end_of_DlyOff_Main
	__end_of_DlyOff_Main:
	signat	_DlyOff_Main,4216
	global	_setTxData

;; *************** function _setTxData *****************
;; Defined at:
;;		line 130 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  rf              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rf              1    4[BANK0 ] unsigned char 
;;  i               1    5[BANK0 ] unsigned char 
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
psect	text121,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	130
global __ptext121
__ptext121:	;psect for function _setTxData
psect	text121
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	130
	global	__size_of_setTxData
	__size_of_setTxData	equ	__end_of_setTxData-_setTxData
	
_setTxData:	
;incstack = 0
	opt	stack 7
; Regs used in _setTxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setTxData@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setTxData@rf)
	line	133
	
l6849:	
;RF_Control_B1.c: 132: char i;
;RF_Control_B1.c: 133: RfPointSelect(rf);
	movf	(setTxData@rf),w
	fcall	_RfPointSelect
	line	134
	
l6851:	
;RF_Control_B1.c: 134: if(RF->Enable)
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u5171
	goto	u5170
u5171:
	goto	l2552
u5170:
	line	136
	
l6853:	
;RF_Control_B1.c: 135: {
;RF_Control_B1.c: 136: if(RF->TransceiveGO == 0 && 1)
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u5181
	goto	u5180
u5181:
	goto	l2552
u5180:
	line	139
	
l6855:	
;RF_Control_B1.c: 137: {
;RF_Control_B1.c: 139: RF->TransceiveGO=1;
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	140
	
l6857:	
;RF_Control_B1.c: 140: RF_Data[0]=0x63;
	movlw	(063h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RF_Data)^080h
	line	141
	
l6859:	
;RF_Control_B1.c: 141: RF_Data[1]=0x02;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+01h
	line	142
	
l6861:	
;RF_Control_B1.c: 142: for(i=2 ;i< 21 ;i++)
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	(setTxData@i)
	
l6863:	
	movlw	(015h)
	subwf	(setTxData@i),w
	skipc
	goto	u5191
	goto	u5190
u5191:
	goto	l6867
u5190:
	goto	l2552
	
l6865:	
	goto	l2552
	line	143
	
l2550:	
	line	144
	
l6867:	
;RF_Control_B1.c: 143: {
;RF_Control_B1.c: 144: RF_Data[i]=Product->Data[i];
	movf	(setTxData@i),w
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	0+(??_setTxData+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setTxData+1)+0
	movf	(setTxData@i),w
	addlw	_RF_Data&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setTxData+1)+0,w
	movwf	indf1
	line	142
	
l6869:	
	movlw	(01h)
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	addwf	(setTxData@i),f
	
l6871:	
	movlw	(015h)
	subwf	(setTxData@i),w
	skipc
	goto	u5201
	goto	u5200
u5201:
	goto	l6867
u5200:
	goto	l2552
	
l2551:	
	goto	l2552
	line	169
	
l2549:	
	goto	l2552
	line	170
	
l2548:	
	line	171
	
l2552:	
	return
	opt stack 0
GLOBAL	__end_of_setTxData
	__end_of_setTxData:
	signat	_setTxData,4216
	global	_RfPointSelect

;; *************** function _RfPointSelect *****************
;; Defined at:
;;		line 7 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text122,local,class=CODE,delta=2,merge=1
	line	7
global __ptext122
__ptext122:	;psect for function _RfPointSelect
psect	text122
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
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
	
l6759:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u5001
	goto	u5000
u5001:
	goto	l2511
u5000:
	line	12
	
l6761:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??_RfPointSelect+0)+0
	movf	(??_RfPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RF)^080h
	goto	l2511
	line	13
	
l2510:	
	line	15
	
l2511:	
	return
	opt stack 0
GLOBAL	__end_of_RfPointSelect
	__end_of_RfPointSelect:
	signat	_RfPointSelect,4216
	global	_setSw_Status

;; *************** function _setSw_Status *****************
;; Defined at:
;;		line 92 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text123,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	92
global __ptext123
__ptext123:	;psect for function _setSw_Status
psect	text123
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
	line	92
	global	__size_of_setSw_Status
	__size_of_setSw_Status	equ	__end_of_setSw_Status-_setSw_Status
	
_setSw_Status:	
;incstack = 0
	opt	stack 5
; Regs used in _setSw_Status: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setSw_Status@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Status@sw)
	line	94
	
l6817:	
;Switch_B1.c: 94: SwPointSelect(sw);
	movf	(setSw_Status@sw),w
	fcall	_SwPointSelect
	line	95
	
l6819:	
;Switch_B1.c: 95: Sw->Status=command;
	movlb 0	; select bank0
	movf	(_Sw),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(setSw_Status@command),w
	bcf	indf1,6
	skipz
	bsf	indf1,6
	line	96
	
l2820:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Status
	__end_of_setSw_Status:
	signat	_setSw_Status,8312
	global	_SwPointSelect

;; *************** function _SwPointSelect *****************
;; Defined at:
;;		line 16 in file "G:\Program\PIC\Source_File\Switch_B1.c"
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
psect	text124,local,class=CODE,delta=2,merge=1
	line	16
global __ptext124
__ptext124:	;psect for function _SwPointSelect
psect	text124
	file	"G:\Program\PIC\Source_File\Switch_B1.c"
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
	
l6769:	
;Switch_B1.c: 19: if(sw == 1)
	movf	(SwPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u5031
	goto	u5030
u5031:
	goto	l6773
u5030:
	line	21
	
l6771:	
;Switch_B1.c: 20: {
;Switch_B1.c: 21: Sw=&Sw1;
	movlw	(_Sw1)&0ffh
	movwf	(??_SwPointSelect+0)+0
	movf	(??_SwPointSelect+0)+0,w
	movwf	(_Sw)
	line	22
;Switch_B1.c: 22: }
	goto	l2805
	line	25
	
l2802:	
	
l6773:	
;Switch_B1.c: 25: else if(sw == 2)
	movf	(SwPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u5041
	goto	u5040
u5041:
	goto	l2805
u5040:
	line	27
	
l6775:	
;Switch_B1.c: 26: {
;Switch_B1.c: 27: Sw=&Sw2;
	movlw	(_Sw2)&0ffh
	movwf	(??_SwPointSelect+0)+0
	movf	(??_SwPointSelect+0)+0,w
	movwf	(_Sw)
	goto	l2805
	line	28
	
l2804:	
	goto	l2805
	line	36
	
l2803:	
	
l2805:	
	return
	opt stack 0
GLOBAL	__end_of_SwPointSelect
	__end_of_SwPointSelect:
	signat	_SwPointSelect,4216
	global	_setRF_DimmerLights

;; *************** function _setRF_DimmerLights *****************
;; Defined at:
;;		line 435 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text125,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	435
global __ptext125
__ptext125:	;psect for function _setRF_DimmerLights
psect	text125
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	435
	global	__size_of_setRF_DimmerLights
	__size_of_setRF_DimmerLights	equ	__end_of_setRF_DimmerLights-_setRF_DimmerLights
	
_setRF_DimmerLights:	
;incstack = 0
	opt	stack 8
; Regs used in _setRF_DimmerLights: [wreg+fsr1l+fsr1h+status,2+status,0]
;setRF_DimmerLights@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_DimmerLights@lights)
	line	438
	
l6825:	
;RF_Control_B1.c: 437: char status;
;RF_Control_B1.c: 438: status=1;
	clrf	(setRF_DimmerLights@status)
	incf	(setRF_DimmerLights@status),f
	line	439
	
l6827:	
;RF_Control_B1.c: 439: status<<=(lights-1);
	movf	(setRF_DimmerLights@lights),w
	addlw	-1
	incf	wreg,f
	
	goto	u5150
u5155:
	clrc
	rlf	(setRF_DimmerLights@status),f
u5150:
	addlw	-1
	skipz
	goto	u5155
	line	440
	
l6829:	
;RF_Control_B1.c: 440: Product->Data[11]=lights;
	movf	(setRF_DimmerLights@lights),w
	movwf	(??_setRF_DimmerLights+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	line	441
	
l6831:	
;RF_Control_B1.c: 441: Product->Data[9]=Product->Data[20+lights];
	movf	(setRF_DimmerLights@lights),w
	addlw	014h
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerLights+0)+0
	movf	0+(??_setRF_DimmerLights+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRF_DimmerLights+1)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerLights+1)+0,w
	movwf	indf1
	line	442
	
l6833:	
;RF_Control_B1.c: 442: Product->Data[17]=Product->Data[26+lights];
	movf	(setRF_DimmerLights@lights),w
	addlw	01Ah
	movlb 1	; select bank1
	addwf	(_Product)^080h,w
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerLights+0)+0
	movf	0+(??_setRF_DimmerLights+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_setRF_DimmerLights+1)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerLights+1)+0,w
	movwf	indf1
	line	443
	
l6835:	
;RF_Control_B1.c: 443: if(on)
	movf	(setRF_DimmerLights@on),w
	skipz
	goto	u5160
	goto	l6839
u5160:
	line	445
	
l6837:	
;RF_Control_B1.c: 444: {
;RF_Control_B1.c: 445: Product->Data[15]=(Product->Data[15]|status);
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	iorwf	(setRF_DimmerLights@status),w
	movwf	(??_setRF_DimmerLights+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	line	446
;RF_Control_B1.c: 446: }
	goto	l2625
	line	447
	
l2623:	
	line	449
	
l6839:	
;RF_Control_B1.c: 447: else
;RF_Control_B1.c: 448: {
;RF_Control_B1.c: 449: Product->Data[15]=(Product->Data[15]&(~status));
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	comf	(setRF_DimmerLights@status),w
	andwf	indf1,w
	movwf	(??_setRF_DimmerLights+0)+0
	movlb 1	; select bank1
	movf	(_Product)^080h,w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	goto	l2625
	line	450
	
l2624:	
	line	451
	
l2625:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerLights
	__end_of_setRF_DimmerLights:
	signat	_setRF_DimmerLights,8312
	global	_setRFSW_Status

;; *************** function _setRFSW_Status *****************
;; Defined at:
;;		line 415 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text126,local,class=CODE,delta=2,merge=1
	line	415
global __ptext126
__ptext126:	;psect for function _setRFSW_Status
psect	text126
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	415
	global	__size_of_setRFSW_Status
	__size_of_setRFSW_Status	equ	__end_of_setRFSW_Status-_setRFSW_Status
	
_setRFSW_Status:	
;incstack = 0
	opt	stack 5
; Regs used in _setRFSW_Status: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRFSW_Status@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_Status@sw)
	line	417
	
l6821:	
;RF_Control_B1.c: 417: RfSWPointSelect(sw);
	movf	(setRFSW_Status@sw),w
	fcall	_RfSWPointSelect
	line	418
	
l6823:	
;RF_Control_B1.c: 418: RFSW->Status=command;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 0	; select bank0
	movf	(setRFSW_Status@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	419
	
l2616:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_Status
	__end_of_setRFSW_Status:
	signat	_setRFSW_Status,8312
	global	_RfSWPointSelect

;; *************** function _RfSWPointSelect *****************
;; Defined at:
;;		line 338 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text127,local,class=CODE,delta=2,merge=1
	line	338
global __ptext127
__ptext127:	;psect for function _RfSWPointSelect
psect	text127
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	338
	global	__size_of_RfSWPointSelect
	__size_of_RfSWPointSelect	equ	__end_of_RfSWPointSelect-_RfSWPointSelect
	
_RfSWPointSelect:	
;incstack = 0
	opt	stack 5
; Regs used in _RfSWPointSelect: [wreg]
;RfSWPointSelect@sw stored from wreg
	movlb 0	; select bank0
	movwf	(RfSWPointSelect@sw)
	line	341
	
l6763:	
;RF_Control_B1.c: 341: if(sw == 1)
	movf	(RfSWPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u5011
	goto	u5010
u5011:
	goto	l2598
u5010:
	line	343
	
l6765:	
;RF_Control_B1.c: 342: {
;RF_Control_B1.c: 343: RFSW=&RFSW1;
	movlw	(_RFSW1)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	line	344
	
l2598:	
	line	347
;RF_Control_B1.c: 344: }
;RF_Control_B1.c: 347: if(sw == 2)
	movlb 0	; select bank0
	movf	(RfSWPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u5021
	goto	u5020
u5021:
	goto	l2600
u5020:
	line	349
	
l6767:	
;RF_Control_B1.c: 348: {
;RF_Control_B1.c: 349: RFSW=&RFSW2;
	movlw	(_RFSW2)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	goto	l2600
	line	350
	
l2599:	
	line	358
	
l2600:	
	return
	opt stack 0
GLOBAL	__end_of_RfSWPointSelect
	__end_of_RfSWPointSelect:
	signat	_RfSWPointSelect,4216
	global	_setDimmerLights_Trigger

;; *************** function _setDimmerLights_Trigger *****************
;; Defined at:
;;		line 446 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
psect	text128,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	446
global __ptext128
__ptext128:	;psect for function _setDimmerLights_Trigger
psect	text128
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	446
	global	__size_of_setDimmerLights_Trigger
	__size_of_setDimmerLights_Trigger	equ	__end_of_setDimmerLights_Trigger-_setDimmerLights_Trigger
	
_setDimmerLights_Trigger:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_Trigger: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Trigger@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Trigger@lights)
	line	448
	
l6841:	
;Dimmer_B1.c: 448: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Trigger@lights),w
	fcall	_DimmerLightsPointSelect
	line	449
	
l6843:	
;Dimmer_B1.c: 449: DimmerLights->Trigger=command;
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
	line	450
	
l878:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Trigger
	__end_of_setDimmerLights_Trigger:
	signat	_setDimmerLights_Trigger,8312
	global	_setDimmerLights_Switch

;; *************** function _setDimmerLights_Switch *****************
;; Defined at:
;;		line 436 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
psect	text129,local,class=CODE,delta=2,merge=1
	line	436
global __ptext129
__ptext129:	;psect for function _setDimmerLights_Switch
psect	text129
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
	line	436
	global	__size_of_setDimmerLights_Switch
	__size_of_setDimmerLights_Switch	equ	__end_of_setDimmerLights_Switch-_setDimmerLights_Switch
	
_setDimmerLights_Switch:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_Switch: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Switch@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Switch@lights)
	line	438
	
l6845:	
;Dimmer_B1.c: 438: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Switch@lights),w
	fcall	_DimmerLightsPointSelect
	line	439
	
l6847:	
;Dimmer_B1.c: 439: DimmerLights->Switch=command;
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
	line	440
	
l872:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Switch
	__end_of_setDimmerLights_Switch:
	signat	_setDimmerLights_Switch,8312
	global	_DimmerLightsPointSelect

;; *************** function _DimmerLightsPointSelect *****************
;; Defined at:
;;		line 7 in file "G:\Program\PIC\Source_File\Dimmer_B1.c"
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
;;		_getDimmerLights_StatusFlag
;;		_getDimmerLights_Trigger
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
;;		_getDimmerLights_Clear
;; This function uses a non-reentrant model
;;
psect	text130,local,class=CODE,delta=2,merge=1
	line	7
global __ptext130
__ptext130:	;psect for function _DimmerLightsPointSelect
psect	text130
	file	"G:\Program\PIC\Source_File\Dimmer_B1.c"
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
	
l6663:	
;Dimmer_B1.c: 10: if(lights == 1)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u4811
	goto	u4810
u4811:
	goto	l784
u4810:
	line	12
	
l6665:	
;Dimmer_B1.c: 11: {
;Dimmer_B1.c: 12: DimmerLights=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	line	13
	
l784:	
	line	17
;Dimmer_B1.c: 13: }
;Dimmer_B1.c: 17: if(lights == 2)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u4821
	goto	u4820
u4821:
	goto	l786
u4820:
	line	19
	
l6667:	
;Dimmer_B1.c: 18: {
;Dimmer_B1.c: 19: DimmerLights=&DimmerLights2;
	movlw	(_DimmerLights2)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	goto	l786
	line	20
	
l785:	
	line	29
	
l786:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLightsPointSelect
	__end_of_DimmerLightsPointSelect:
	signat	_DimmerLightsPointSelect,4216
	global	_setBuz

;; *************** function _setBuz *****************
;; Defined at:
;;		line 44 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  buz             1    wreg     unsigned char 
;;  count           1    6[BANK0 ] unsigned char 
;;  time            2    7[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  buz             1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_BuzPointSelect
;;		___wmul
;; This function is called by:
;;		_DlyOff_Main
;;		_setDimmerLights_Main
;;		_DimmerLights_ERROR
;;		_MainT
;;		_setLog_Code
;;		_setControl_Lights_Table
;;		_setRFSW_Control
;;		_setSw_Main
;; This function uses a non-reentrant model
;;
psect	text131,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	44
global __ptext131
__ptext131:	;psect for function _setBuz
psect	text131
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	44
	global	__size_of_setBuz
	__size_of_setBuz	equ	__end_of_setBuz-_setBuz
	
_setBuz:	
;incstack = 0
	opt	stack 6
; Regs used in _setBuz: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setBuz@buz stored from wreg
	movlb 0	; select bank0
	movwf	(setBuz@buz)
	line	46
	
l6789:	
;Buzzer_B1.c: 46: BuzPointSelect(buz);
	movf	(setBuz@buz),w
	fcall	_BuzPointSelect
	line	47
;Buzzer_B1.c: 47: time*=20;
	movlw	low(014h)
	movlb 0	; select bank0
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

	line	48
	
l6791:	
;Buzzer_B1.c: 48: if(Buz->Enable)
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u5091
	goto	u5090
u5091:
	goto	l150
u5090:
	line	50
	
l6793:	
;Buzzer_B1.c: 49: {
;Buzzer_B1.c: 50: if(!Buz->GO)
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u5101
	goto	u5100
u5101:
	goto	l6801
u5100:
	line	52
	
l6795:	
;Buzzer_B1.c: 51: {
;Buzzer_B1.c: 52: Buz->GO=1;
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	53
;Buzzer_B1.c: 53: Buz->Count=count;
	movlb 0	; select bank0
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	54
;Buzzer_B1.c: 54: Buz->TimeValue=time;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	line	56
	
l6797:	
;Buzzer_B1.c: 56: if(buz == 1)
	movf	(setBuz@buz),w
	xorlw	01h&0ffh
	skipz
	goto	u5111
	goto	u5110
u5111:
	goto	l150
u5110:
	line	58
	
l6799:	
;Buzzer_B1.c: 57: {
;Buzzer_B1.c: 58: RB3=1;
	bsf	(107/8),(107)&7	;volatile
	goto	l150
	line	59
	
l145:	
	line	61
;Buzzer_B1.c: 59: }
;Buzzer_B1.c: 61: }
	goto	l150
	line	62
	
l144:	
	line	64
	
l6801:	
;Buzzer_B1.c: 62: else
;Buzzer_B1.c: 63: {
;Buzzer_B1.c: 64: if(!Buz->BufferStatus1)
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u5121
	goto	u5120
u5121:
	goto	l6805
u5120:
	line	66
	
l6803:	
;Buzzer_B1.c: 65: {
;Buzzer_B1.c: 66: Buz->BufferStatus1=1;
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	67
;Buzzer_B1.c: 67: Buz->CountBuffer1=count;
	movlb 0	; select bank0
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	68
;Buzzer_B1.c: 68: Buz->TimeValueBuffer1=time;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	line	69
;Buzzer_B1.c: 69: }
	goto	l150
	line	70
	
l147:	
	
l6805:	
;Buzzer_B1.c: 70: else if(!Buz->BufferStatus2)
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u5131
	goto	u5130
u5131:
	goto	l150
u5130:
	line	72
	
l6807:	
;Buzzer_B1.c: 71: {
;Buzzer_B1.c: 72: Buz->BufferStatus2=1;
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	line	73
;Buzzer_B1.c: 73: Buz->CountBuffer2=count;
	movlb 0	; select bank0
	movf	(setBuz@count),w
	movwf	(??_setBuz+0)+0
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setBuz+0)+0,w
	movwf	indf1
	line	74
;Buzzer_B1.c: 74: Buz->TimeValueBuffer2=time;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setBuz@time),w
	movwi	[0]fsr1
	movf	(setBuz@time+1),w
	movwi	[1]fsr1
	goto	l150
	line	75
	
l149:	
	goto	l150
	line	76
	
l148:	
	goto	l150
	
l146:	
	goto	l150
	line	77
	
l143:	
	line	78
	
l150:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz
	__end_of_setBuz:
	signat	_setBuz,12408
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
;;		_setLoad_Main
;; This function uses a non-reentrant model
;;
psect	text132,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul16.c"
	line	15
global __ptext132
__ptext132:	;psect for function ___wmul
psect	text132
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l6777:	
	movlb 0	; select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l6779
	line	44
	
l3343:	
	line	45
	
l6779:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u5051
	goto	u5050
u5051:
	goto	l3344
u5050:
	line	46
	
l6781:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	
l3344:	
	line	47
	movlw	01h
	
u5065:
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	decfsz	wreg,f
	goto	u5065
	line	48
	
l6783:	
	movlw	01h
	
u5075:
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	decfsz	wreg,f
	goto	u5075
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u5081
	goto	u5080
u5081:
	goto	l6779
u5080:
	goto	l6785
	
l3345:	
	line	52
	
l6785:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l3346
	
l6787:	
	line	53
	
l3346:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_DelayOff_Initialization

;; *************** function _DelayOff_Initialization *****************
;; Defined at:
;;		line 30 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
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
psect	text133,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	30
global __ptext133
__ptext133:	;psect for function _DelayOff_Initialization
psect	text133
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
	line	30
	global	__size_of_DelayOff_Initialization
	__size_of_DelayOff_Initialization	equ	__end_of_DelayOff_Initialization-_DelayOff_Initialization
	
_DelayOff_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _DelayOff_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	33
	
l8553:	
;DelayOff_B1.c: 33: DlyOff_Initialization(1);
	movlw	(01h)
	fcall	_DlyOff_Initialization
	line	37
;DelayOff_B1.c: 37: DlyOff_Initialization(2);
	movlw	(02h)
	fcall	_DlyOff_Initialization
	line	43
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOff_Initialization
	__end_of_DelayOff_Initialization:
	signat	_DelayOff_Initialization,88
	global	_DlyOff_Initialization

;; *************** function _DlyOff_Initialization *****************
;; Defined at:
;;		line 60 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
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
psect	text134,local,class=CODE,delta=2,merge=1
	line	60
global __ptext134
__ptext134:	;psect for function _DlyOff_Initialization
psect	text134
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
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
	
l7877:	
;DelayOff_B1.c: 62: DelayOffPointSelect(sw);
	movf	(DlyOff_Initialization@sw),w
	fcall	_DelayOffPointSelect
	line	63
	
l7879:	
;DelayOff_B1.c: 63: DelayOff->Enable=1;
	movlb 1	; select bank1
	movf	(_DelayOff)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	64
	
l584:	
	return
	opt stack 0
GLOBAL	__end_of_DlyOff_Initialization
	__end_of_DlyOff_Initialization:
	signat	_DlyOff_Initialization,4216
	global	_DelayOffPointSelect

;; *************** function _DelayOffPointSelect *****************
;; Defined at:
;;		line 8 in file "G:\Program\PIC\Source_File\DelayOff_B1.c"
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
psect	text135,local,class=CODE,delta=2,merge=1
	line	8
global __ptext135
__ptext135:	;psect for function _DelayOffPointSelect
psect	text135
	file	"G:\Program\PIC\Source_File\DelayOff_B1.c"
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
	
l6697:	
;DelayOff_B1.c: 11: if(sw == 1)
	movf	(DelayOffPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u4871
	goto	u4870
u4871:
	goto	l6701
u4870:
	line	13
	
l6699:	
;DelayOff_B1.c: 12: {
;DelayOff_B1.c: 13: DelayOff=&DlySw1;
	movlw	(_DlySw1)&0ffh
	movwf	(??_DelayOffPointSelect+0)+0
	movf	(??_DelayOffPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_DelayOff)^080h
	line	14
;DelayOff_B1.c: 14: }
	goto	l575
	line	17
	
l572:	
	
l6701:	
;DelayOff_B1.c: 17: else if(sw == 2)
	movlb 0	; select bank0
	movf	(DelayOffPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u4881
	goto	u4880
u4881:
	goto	l575
u4880:
	line	19
	
l6703:	
;DelayOff_B1.c: 18: {
;DelayOff_B1.c: 19: DelayOff=&DlySw2;
	movlw	(_DlySw2)&0ffh
	movwf	(??_DelayOffPointSelect+0)+0
	movf	(??_DelayOffPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_DelayOff)^080h
	goto	l575
	line	20
	
l574:	
	goto	l575
	line	28
	
l573:	
	
l575:	
	return
	opt stack 0
GLOBAL	__end_of_DelayOffPointSelect
	__end_of_DelayOffPointSelect:
	signat	_DelayOffPointSelect,4216
	global	_CC2500_PowerOnInitial

;; *************** function _CC2500_PowerOnInitial *****************
;; Defined at:
;;		line 97 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text136,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	97
global __ptext136
__ptext136:	;psect for function _CC2500_PowerOnInitial
psect	text136
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	97
	global	__size_of_CC2500_PowerOnInitial
	__size_of_CC2500_PowerOnInitial	equ	__end_of_CC2500_PowerOnInitial-_CC2500_PowerOnInitial
	
_CC2500_PowerOnInitial:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_PowerOnInitial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	99
	
l8547:	
;CC2500_B1.c: 99: CC2500_PowerRST();
	fcall	_CC2500_PowerRST
	line	100
	
l8549:	
;CC2500_B1.c: 100: CC2500_InitSetREG();
	fcall	_CC2500_InitSetREG
	line	101
	
l8551:	
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
	
l354:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerOnInitial
	__end_of_CC2500_PowerOnInitial:
	signat	_CC2500_PowerOnInitial,88
	global	_CC2500_SIDLEMode

;; *************** function _CC2500_SIDLEMode *****************
;; Defined at:
;;		line 183 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text137,local,class=CODE,delta=2,merge=1
	line	183
global __ptext137
__ptext137:	;psect for function _CC2500_SIDLEMode
psect	text137
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	183
	global	__size_of_CC2500_SIDLEMode
	__size_of_CC2500_SIDLEMode	equ	__end_of_CC2500_SIDLEMode-_CC2500_SIDLEMode
	
_CC2500_SIDLEMode:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_SIDLEMode: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l7875:	
;CC2500_B1.c: 185: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	186
	
l385:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_SIDLEMode
	__end_of_CC2500_SIDLEMode:
	signat	_CC2500_SIDLEMode,88
	global	_CC2500_PowerRST

;; *************** function _CC2500_PowerRST *****************
;; Defined at:
;;		line 110 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text138,local,class=CODE,delta=2,merge=1
	line	110
global __ptext138
__ptext138:	;psect for function _CC2500_PowerRST
psect	text138
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	110
	global	__size_of_CC2500_PowerRST
	__size_of_CC2500_PowerRST	equ	__end_of_CC2500_PowerRST-_CC2500_PowerRST
	
_CC2500_PowerRST:	
;incstack = 0
	opt	stack 9
; Regs used in _CC2500_PowerRST: [wreg+status,2+status,0+pclath+cstack]
	line	112
	
l7827:	
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
	
l7829:	
;CC2500_B1.c: 115: DelayTime_1us(10);
	movlw	low(0Ah)
	movwf	(DelayTime_1us@count)
	movlw	high(0Ah)
	movwf	((DelayTime_1us@count))+1
	fcall	_DelayTime_1us
	line	116
	
l7831:	
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
	
l7833:	
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
	
l7835:	
;CC2500_B1.c: 120: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	121
	
l7837:	
;CC2500_B1.c: 121: SPI0Buffer=0x30;
	movlw	(030h)
	movwf	(??_CC2500_PowerRST+0)+0
	movf	(??_CC2500_PowerRST+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	122
;CC2500_B1.c: 122: while(RC2==1);
	goto	l357
	
l358:	
	
l357:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u6351
	goto	u6350
u6351:
	goto	l357
u6350:
	goto	l7839
	
l359:	
	line	123
	
l7839:	
;CC2500_B1.c: 123: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	124
;CC2500_B1.c: 124: while(RC2==1);
	goto	l360
	
l361:	
	
l360:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u6361
	goto	u6360
u6361:
	goto	l360
u6360:
	
l362:	
	line	125
;CC2500_B1.c: 125: RC0=0;
	bcf	(112/8),(112)&7	;volatile
	line	126
;CC2500_B1.c: 126: RC4=1;
	bsf	(116/8),(116)&7	;volatile
	line	127
	
l363:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_PowerRST
	__end_of_CC2500_PowerRST:
	signat	_CC2500_PowerRST,88
	global	_CC2500_InitSetREG

;; *************** function _CC2500_InitSetREG *****************
;; Defined at:
;;		line 131 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text139,local,class=CODE,delta=2,merge=1
	line	131
global __ptext139
__ptext139:	;psect for function _CC2500_InitSetREG
psect	text139
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	131
	global	__size_of_CC2500_InitSetREG
	__size_of_CC2500_InitSetREG	equ	__end_of_CC2500_InitSetREG-_CC2500_InitSetREG
	
_CC2500_InitSetREG:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_InitSetREG: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	136
	
l7841:	
;CC2500_B1.c: 133: unsigned char loop_c;
;CC2500_B1.c: 134: unsigned char temp1,temp2;
;CC2500_B1.c: 136: for(loop_c=0;loop_c<47;loop_c++)
	movlb 0	; select bank0
	clrf	(CC2500_InitSetREG@loop_c)
	
l7843:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u6371
	goto	u6370
u6371:
	goto	l7847
u6370:
	goto	l368
	
l7845:	
	goto	l368
	line	137
	
l366:	
	line	138
	
l7847:	
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
	
l7849:	
;CC2500_B1.c: 141: CC2500_WriteREG(temp1,temp2);
	movf	(CC2500_InitSetREG@temp2),w
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(CC2500_WriteREG@value)
	movf	(CC2500_InitSetREG@temp1),w
	fcall	_CC2500_WriteREG
	line	136
	
l7851:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	addwf	(CC2500_InitSetREG@loop_c),f
	
l7853:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u6381
	goto	u6380
u6381:
	goto	l7847
u6380:
	goto	l368
	
l367:	
	line	143
	
l368:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitSetREG
	__end_of_CC2500_InitSetREG:
	signat	_CC2500_InitSetREG,88
	global	_CC2500_InitPATable

;; *************** function _CC2500_InitPATable *****************
;; Defined at:
;;		line 147 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text140,local,class=CODE,delta=2,merge=1
	line	147
global __ptext140
__ptext140:	;psect for function _CC2500_InitPATable
psect	text140
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	147
	global	__size_of_CC2500_InitPATable
	__size_of_CC2500_InitPATable	equ	__end_of_CC2500_InitPATable-_CC2500_InitPATable
	
_CC2500_InitPATable:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_InitPATable: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	152
	
l7855:	
;CC2500_B1.c: 149: unsigned char loop_d;
;CC2500_B1.c: 150: unsigned char temp;
;CC2500_B1.c: 152: for(loop_d=0;loop_d<8;loop_d++)
	movlb 0	; select bank0
	clrf	(CC2500_InitPATable@loop_d)
	
l7857:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u6391
	goto	u6390
u6391:
	goto	l7861
u6390:
	goto	l373
	
l7859:	
	goto	l373
	line	153
	
l371:	
	line	154
	
l7861:	
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
	
l7863:	
;CC2500_B1.c: 155: CC2500_WriteREG(0x3E,temp);
	movf	(CC2500_InitPATable@temp),w
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(CC2500_WriteREG@value)
	movlw	(03Eh)
	fcall	_CC2500_WriteREG
	line	152
	
l7865:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	addwf	(CC2500_InitPATable@loop_d),f
	
l7867:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u6401
	goto	u6400
u6401:
	goto	l7861
u6400:
	goto	l373
	
l372:	
	line	157
	
l373:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_InitPATable
	__end_of_CC2500_InitPATable:
	signat	_CC2500_InitPATable,88
	global	_CC2500_WriteREG

;; *************** function _CC2500_WriteREG *****************
;; Defined at:
;;		line 227 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text141,local,class=CODE,delta=2,merge=1
	line	227
global __ptext141
__ptext141:	;psect for function _CC2500_WriteREG
psect	text141
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
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
	
l7411:	
;CC2500_B1.c: 229: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	230
	
l7413:	
;CC2500_B1.c: 230: SPI0Buffer=w_addr;
	movf	(CC2500_WriteREG@w_addr),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	231
;CC2500_B1.c: 231: while(RC2==1);
	goto	l402
	
l403:	
	
l402:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u5871
	goto	u5870
u5871:
	goto	l402
u5870:
	goto	l7415
	
l404:	
	line	232
	
l7415:	
;CC2500_B1.c: 232: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	233
	
l7417:	
;CC2500_B1.c: 233: SPI0Buffer=value;
	movlb 0	; select bank0
	movf	(CC2500_WriteREG@value),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	234
	
l7419:	
;CC2500_B1.c: 234: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	235
	
l7421:	
;CC2500_B1.c: 235: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	236
	
l405:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteREG
	__end_of_CC2500_WriteREG:
	signat	_CC2500_WriteREG,8312
	global	_CC2500_FrequencyCabr

;; *************** function _CC2500_FrequencyCabr *****************
;; Defined at:
;;		line 175 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text142,local,class=CODE,delta=2,merge=1
	line	175
global __ptext142
__ptext142:	;psect for function _CC2500_FrequencyCabr
psect	text142
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	175
	global	__size_of_CC2500_FrequencyCabr
	__size_of_CC2500_FrequencyCabr	equ	__end_of_CC2500_FrequencyCabr-_CC2500_FrequencyCabr
	
_CC2500_FrequencyCabr:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_FrequencyCabr: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
l7873:	
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
	
l382:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_FrequencyCabr
	__end_of_CC2500_FrequencyCabr:
	signat	_CC2500_FrequencyCabr,88
	global	_DelayTime_1us

;; *************** function _DelayTime_1us *****************
;; Defined at:
;;		line 283 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text143,local,class=CODE,delta=2,merge=1
	line	283
global __ptext143
__ptext143:	;psect for function _DelayTime_1us
psect	text143
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	283
	global	__size_of_DelayTime_1us
	__size_of_DelayTime_1us	equ	__end_of_DelayTime_1us-_DelayTime_1us
	
_DelayTime_1us:	
;incstack = 0
	opt	stack 9
; Regs used in _DelayTime_1us: [wreg+status,2]
	line	286
	
l7399:	
;CC2500_B1.c: 285: unsigned int i,j;
;CC2500_B1.c: 286: for(i=1;i<count;i++)
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(DelayTime_1us@i)
	movlw	high(01h)
	movwf	((DelayTime_1us@i))+1
	goto	l426
	line	287
	
l427:	
	
l7401:	
;CC2500_B1.c: 287: for(j=0;j<=1;j++);
	clrf	(DelayTime_1us@j)
	clrf	(DelayTime_1us@j+1)
	
l7403:	
	movlw	high(02h)
	subwf	(DelayTime_1us@j+1),w
	movlw	low(02h)
	skipnz
	subwf	(DelayTime_1us@j),w
	skipc
	goto	u5841
	goto	u5840
u5841:
	goto	l7407
u5840:
	goto	l7409
	
l7405:	
	goto	l7409
	
l428:	
	
l7407:	
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
	goto	u5851
	goto	u5850
u5851:
	goto	l7407
u5850:
	goto	l7409
	
l429:	
	line	286
	
l7409:	
	movlw	low(01h)
	addwf	(DelayTime_1us@i),f
	movlw	high(01h)
	addwfc	(DelayTime_1us@i+1),f
	
l426:	
	movf	(DelayTime_1us@count+1),w
	subwf	(DelayTime_1us@i+1),w
	skipz
	goto	u5865
	movf	(DelayTime_1us@count),w
	subwf	(DelayTime_1us@i),w
u5865:
	skipc
	goto	u5861
	goto	u5860
u5861:
	goto	l7401
u5860:
	goto	l431
	
l430:	
	line	288
	
l431:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTime_1us
	__end_of_DelayTime_1us:
	signat	_DelayTime_1us,4216
	global	_CC2500_ClearTXFIFO

;; *************** function _CC2500_ClearTXFIFO *****************
;; Defined at:
;;		line 161 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text144,local,class=CODE,delta=2,merge=1
	line	161
global __ptext144
__ptext144:	;psect for function _CC2500_ClearTXFIFO
psect	text144
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	161
	global	__size_of_CC2500_ClearTXFIFO
	__size_of_CC2500_ClearTXFIFO	equ	__end_of_CC2500_ClearTXFIFO-_CC2500_ClearTXFIFO
	
_CC2500_ClearTXFIFO:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_ClearTXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	163
	
l7869:	
;CC2500_B1.c: 163: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	164
	
l376:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearTXFIFO
	__end_of_CC2500_ClearTXFIFO:
	signat	_CC2500_ClearTXFIFO,88
	global	_CC2500_ClearRXFIFO

;; *************** function _CC2500_ClearRXFIFO *****************
;; Defined at:
;;		line 168 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text145,local,class=CODE,delta=2,merge=1
	line	168
global __ptext145
__ptext145:	;psect for function _CC2500_ClearRXFIFO
psect	text145
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	168
	global	__size_of_CC2500_ClearRXFIFO
	__size_of_CC2500_ClearRXFIFO	equ	__end_of_CC2500_ClearRXFIFO-_CC2500_ClearRXFIFO
	
_CC2500_ClearRXFIFO:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_ClearRXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	170
	
l7871:	
;CC2500_B1.c: 170: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	171
	
l379:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_ClearRXFIFO
	__end_of_CC2500_ClearRXFIFO:
	signat	_CC2500_ClearRXFIFO,88
	global	_CC2500_WriteCommand

;; *************** function _CC2500_WriteCommand *****************
;; Defined at:
;;		line 253 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
;;		_setRF_Enable
;;		_RF_RxDisable
;; This function uses a non-reentrant model
;;
psect	text146,local,class=CODE,delta=2,merge=1
	line	253
global __ptext146
__ptext146:	;psect for function _CC2500_WriteCommand
psect	text146
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	253
	global	__size_of_CC2500_WriteCommand
	__size_of_CC2500_WriteCommand	equ	__end_of_CC2500_WriteCommand-_CC2500_WriteCommand
	
_CC2500_WriteCommand:	
;incstack = 0
	opt	stack 5
; Regs used in _CC2500_WriteCommand: [wreg+status,2+status,0+pclath+cstack]
;CC2500_WriteCommand@command stored from wreg
	movlb 0	; select bank0
	movwf	(CC2500_WriteCommand@command)
	line	255
	
l6809:	
;CC2500_B1.c: 255: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	256
	
l6811:	
;CC2500_B1.c: 256: SPI0Buffer=command;
	movf	(CC2500_WriteCommand@command),w
	movwf	(??_CC2500_WriteCommand+0)+0
	movf	(??_CC2500_WriteCommand+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	258
;CC2500_B1.c: 258: while(RC2==1);
	goto	l414
	
l415:	
	
l414:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u5141
	goto	u5140
u5141:
	goto	l414
u5140:
	goto	l6813
	
l416:	
	line	260
	
l6813:	
;CC2500_B1.c: 260: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	261
	
l6815:	
;CC2500_B1.c: 261: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	263
	
l417:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteCommand
	__end_of_CC2500_WriteCommand:
	signat	_CC2500_WriteCommand,4216
	global	_CC2500_WriteByte

;; *************** function _CC2500_WriteByte *****************
;; Defined at:
;;		line 193 in file "G:\Program\PIC\Source_File\CC2500_B1.c"
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
psect	text147,local,class=CODE,delta=2,merge=1
	line	193
global __ptext147
__ptext147:	;psect for function _CC2500_WriteByte
psect	text147
	file	"G:\Program\PIC\Source_File\CC2500_B1.c"
	line	193
	global	__size_of_CC2500_WriteByte
	__size_of_CC2500_WriteByte	equ	__end_of_CC2500_WriteByte-_CC2500_WriteByte
	
_CC2500_WriteByte:	
;incstack = 0
	opt	stack 5
; Regs used in _CC2500_WriteByte: [wreg+status,2+status,0]
	line	196
	
l6681:	
;CC2500_B1.c: 195: unsigned char loop_a;
;CC2500_B1.c: 196: for(loop_a=0;loop_a<8;loop_a++)
	movlb 0	; select bank0
	clrf	(CC2500_WriteByte@loop_a)
	
l6683:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u4841
	goto	u4840
u4841:
	goto	l388
u4840:
	goto	l392
	
l6685:	
	goto	l392
	line	197
	
l388:	
	line	198
;CC2500_B1.c: 197: {
;CC2500_B1.c: 198: if(SPI0Buffer&0x80)
	movlb 1	; select bank1
	btfss	(_SPI0Buffer)^080h,(7)&7
	goto	u4851
	goto	u4850
u4851:
	goto	l390
u4850:
	line	199
	
l6687:	
;CC2500_B1.c: 199: RC0=1;
	movlb 0	; select bank0
	bsf	(112/8),(112)&7	;volatile
	goto	l391
	line	200
	
l390:	
	line	201
;CC2500_B1.c: 200: else
;CC2500_B1.c: 201: RC0=0;
	movlb 0	; select bank0
	bcf	(112/8),(112)&7	;volatile
	
l391:	
	line	202
;CC2500_B1.c: 202: RC1=1;
	bsf	(113/8),(113)&7	;volatile
	line	203
	
l6689:	
;CC2500_B1.c: 203: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	204
	
l6691:	
;CC2500_B1.c: 204: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
	line	196
	
l6693:	
	movlw	(01h)
	movwf	(??_CC2500_WriteByte+0)+0
	movf	(??_CC2500_WriteByte+0)+0,w
	addwf	(CC2500_WriteByte@loop_a),f
	
l6695:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u4861
	goto	u4860
u4861:
	goto	l388
u4860:
	goto	l392
	
l389:	
	line	206
	
l392:	
	return
	opt stack 0
GLOBAL	__end_of_CC2500_WriteByte
	__end_of_CC2500_WriteByte:
	signat	_CC2500_WriteByte,88
	global	_Buzzer_Main

;; *************** function _Buzzer_Main *****************
;; Defined at:
;;		line 26 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setBuz_Main
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text148,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	26
global __ptext148
__ptext148:	;psect for function _Buzzer_Main
psect	text148
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	26
	global	__size_of_Buzzer_Main
	__size_of_Buzzer_Main	equ	__end_of_Buzzer_Main-_Buzzer_Main
	
_Buzzer_Main:	
;incstack = 0
	opt	stack 9
; Regs used in _Buzzer_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	29
	
l8545:	
;Buzzer_B1.c: 29: setBuz_Main(1);
	movlw	(01h)
	fcall	_setBuz_Main
	line	31
	
l134:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Main
	__end_of_Buzzer_Main:
	signat	_Buzzer_Main,88
	global	_setBuz_Main

;; *************** function _setBuz_Main *****************
;; Defined at:
;;		line 80 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  buz             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  buz             1    6[BANK0 ] unsigned char 
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
;;		_BuzPointSelect
;; This function is called by:
;;		_Buzzer_Main
;; This function uses a non-reentrant model
;;
psect	text149,local,class=CODE,delta=2,merge=1
	line	80
global __ptext149
__ptext149:	;psect for function _setBuz_Main
psect	text149
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	80
	global	__size_of_setBuz_Main
	__size_of_setBuz_Main	equ	__end_of_setBuz_Main-_setBuz_Main
	
_setBuz_Main:	
;incstack = 0
	opt	stack 9
; Regs used in _setBuz_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;setBuz_Main@buz stored from wreg
	movlb 0	; select bank0
	movwf	(setBuz_Main@buz)
	line	82
	
l7789:	
;Buzzer_B1.c: 82: BuzPointSelect(buz);
	movf	(setBuz_Main@buz),w
	fcall	_BuzPointSelect
	line	84
	
l7791:	
;Buzzer_B1.c: 84: if(buz == 1)
	movlb 0	; select bank0
	movf	(setBuz_Main@buz),w
	xorlw	01h&0ffh
	skipz
	goto	u6261
	goto	u6260
u6261:
	goto	l153
u6260:
	line	86
	
l7793:	
;Buzzer_B1.c: 85: {
;Buzzer_B1.c: 86: Buz->Switch=(RB3)?1:0;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	movlb 0	; select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u6275
	bsf	indf1,5
u6275:

	line	87
	
l153:	
	line	89
;Buzzer_B1.c: 87: }
;Buzzer_B1.c: 89: if(Buz->GO)
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u6281
	goto	u6280
u6281:
	goto	l165
u6280:
	line	92
	
l7795:	
;Buzzer_B1.c: 90: {
;Buzzer_B1.c: 92: if(Buz->Time >= Buz->TimeValue)
	movf	(_Buz)^080h,w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setBuz_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_setBuz_Main+0)+0+1
	movlb 1	; select bank1
	incf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	movlb 0	; select bank0
	movwf	(??_setBuz_Main+2)+0
	moviw	[1]fsr1
	movwf	(??_setBuz_Main+2)+0+1
	movf	1+(??_setBuz_Main+0)+0,w
	subwf	1+(??_setBuz_Main+2)+0,w
	skipz
	goto	u6295
	movf	0+(??_setBuz_Main+0)+0,w
	subwf	0+(??_setBuz_Main+2)+0,w
u6295:
	skipc
	goto	u6291
	goto	u6290
u6291:
	goto	l165
u6290:
	line	94
	
l7797:	
;Buzzer_B1.c: 93: {
;Buzzer_B1.c: 94: Buz->Time=0;
	movlb 1	; select bank1
	incf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	95
;Buzzer_B1.c: 95: if(!Buz->Switch)
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u6301
	goto	u6300
u6301:
	goto	l7819
u6300:
	line	97
	
l7799:	
;Buzzer_B1.c: 96: {
;Buzzer_B1.c: 97: if(Buz->Count == 0)
	movf	(_Buz)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u6311
	goto	u6310
u6311:
	goto	l7815
u6310:
	line	99
	
l7801:	
;Buzzer_B1.c: 98: {
;Buzzer_B1.c: 99: if(Buz->BufferStatus1)
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u6321
	goto	u6320
u6321:
	goto	l7807
u6320:
	line	101
	
l7803:	
;Buzzer_B1.c: 100: {
;Buzzer_B1.c: 101: Buz->BufferStatus1=0;
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	102
;Buzzer_B1.c: 102: Buz->Count=Buz->CountBuffer1;
	movf	(_Buz)^080h,w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(??_setBuz_Main+0)+0
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setBuz_Main+0)+0,w
	movwf	indf1
	line	103
	
l7805:	
;Buzzer_B1.c: 103: Buz->TimeValue=Buz->TimeValueBuffer1;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_Buz)^080h,w
	addlw	06h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	104
;Buzzer_B1.c: 104: }
	goto	l165
	line	105
	
l158:	
	
l7807:	
;Buzzer_B1.c: 105: else if(Buz->BufferStatus2)
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u6331
	goto	u6330
u6331:
	goto	l7813
u6330:
	line	107
	
l7809:	
;Buzzer_B1.c: 106: {
;Buzzer_B1.c: 107: Buz->BufferStatus2=0;
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	108
;Buzzer_B1.c: 108: Buz->Count=Buz->CountBuffer2;
	movf	(_Buz)^080h,w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(??_setBuz_Main+0)+0
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_setBuz_Main+0)+0,w
	movwf	indf1
	line	109
	
l7811:	
;Buzzer_B1.c: 109: Buz->TimeValue=Buz->TimeValueBuffer2;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	0Ah
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(_Buz)^080h,w
	addlw	06h
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	110
;Buzzer_B1.c: 110: }
	goto	l165
	line	111
	
l160:	
	line	113
	
l7813:	
;Buzzer_B1.c: 111: else
;Buzzer_B1.c: 112: {
;Buzzer_B1.c: 113: Buz->GO=0;
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l165
	line	114
	
l161:	
	goto	l165
	
l159:	
	line	115
;Buzzer_B1.c: 114: }
;Buzzer_B1.c: 115: }
	goto	l165
	line	116
	
l157:	
	line	118
	
l7815:	
;Buzzer_B1.c: 116: else
;Buzzer_B1.c: 117: {
;Buzzer_B1.c: 118: Buz->Switch=1;
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	120
	
l7817:	
;Buzzer_B1.c: 120: RB3=1;
	movlb 0	; select bank0
	bsf	(107/8),(107)&7	;volatile
	goto	l165
	line	122
	
l162:	
	line	123
;Buzzer_B1.c: 122: }
;Buzzer_B1.c: 123: }
	goto	l165
	line	124
	
l156:	
	line	126
	
l7819:	
;Buzzer_B1.c: 124: else
;Buzzer_B1.c: 125: {
;Buzzer_B1.c: 126: Buz->Switch=0;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	128
	
l7821:	
;Buzzer_B1.c: 128: if(buz == 1)
	movlb 0	; select bank0
	movf	(setBuz_Main@buz),w
	xorlw	01h&0ffh
	skipz
	goto	u6341
	goto	u6340
u6341:
	goto	l7825
u6340:
	line	130
	
l7823:	
;Buzzer_B1.c: 129: {
;Buzzer_B1.c: 130: RB3=0;
	bcf	(107/8),(107)&7	;volatile
	goto	l7825
	line	131
	
l164:	
	line	133
	
l7825:	
;Buzzer_B1.c: 131: }
;Buzzer_B1.c: 133: Buz->Count--;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	l165
	line	134
	
l163:	
	goto	l165
	line	135
	
l155:	
	goto	l165
	line	136
	
l154:	
	line	137
	
l165:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz_Main
	__end_of_setBuz_Main:
	signat	_setBuz_Main,4216
	global	_Buzzer_Initialization

;; *************** function _Buzzer_Initialization *****************
;; Defined at:
;;		line 19 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
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
;;		_setBuz_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text150,local,class=CODE,delta=2,merge=1
	line	19
global __ptext150
__ptext150:	;psect for function _Buzzer_Initialization
psect	text150
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	19
	global	__size_of_Buzzer_Initialization
	__size_of_Buzzer_Initialization	equ	__end_of_Buzzer_Initialization-_Buzzer_Initialization
	
_Buzzer_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _Buzzer_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	22
	
l8543:	
;Buzzer_B1.c: 22: setBuz_Initialization(1);
	movlw	(01h)
	fcall	_setBuz_Initialization
	line	24
	
l131:	
	return
	opt stack 0
GLOBAL	__end_of_Buzzer_Initialization
	__end_of_Buzzer_Initialization:
	signat	_Buzzer_Initialization,88
	global	_setBuz_Initialization

;; *************** function _setBuz_Initialization *****************
;; Defined at:
;;		line 39 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  buz             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  buz             1    0[COMMON] unsigned char 
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
;;		_setBuz_Enable
;; This function is called by:
;;		_Buzzer_Initialization
;; This function uses a non-reentrant model
;;
psect	text151,local,class=CODE,delta=2,merge=1
	line	39
global __ptext151
__ptext151:	;psect for function _setBuz_Initialization
psect	text151
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	39
	global	__size_of_setBuz_Initialization
	__size_of_setBuz_Initialization	equ	__end_of_setBuz_Initialization-_setBuz_Initialization
	
_setBuz_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _setBuz_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	41
	
l7787:	
;Buzzer_B1.c: 41: setBuz_Enable(1,1);
	movlb 0	; select bank0
	clrf	(setBuz_Enable@command)
	incf	(setBuz_Enable@command),f
	movlw	(01h)
	fcall	_setBuz_Enable
	line	42
	
l140:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz_Initialization
	__end_of_setBuz_Initialization:
	signat	_setBuz_Initialization,4216
	global	_setBuz_Enable

;; *************** function _setBuz_Enable *****************
;; Defined at:
;;		line 33 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  buz             1    wreg     unsigned char 
;;  command         1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  buz             1    3[BANK0 ] unsigned char 
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
;;		_BuzPointSelect
;; This function is called by:
;;		_setBuz_Initialization
;; This function uses a non-reentrant model
;;
psect	text152,local,class=CODE,delta=2,merge=1
	line	33
global __ptext152
__ptext152:	;psect for function _setBuz_Enable
psect	text152
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	33
	global	__size_of_setBuz_Enable
	__size_of_setBuz_Enable	equ	__end_of_setBuz_Enable-_setBuz_Enable
	
_setBuz_Enable:	
;incstack = 0
	opt	stack 8
; Regs used in _setBuz_Enable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setBuz_Enable@buz stored from wreg
	movlb 0	; select bank0
	movwf	(setBuz_Enable@buz)
	line	35
	
l7327:	
;Buzzer_B1.c: 35: BuzPointSelect(buz);
	movf	(setBuz_Enable@buz),w
	fcall	_BuzPointSelect
	line	36
	
l7329:	
;Buzzer_B1.c: 36: Buz->Enable=command;
	movlb 1	; select bank1
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(setBuz_Enable@command),w
	bcf	indf1,0
	skipz
	bsf	indf1,0
	line	37
	
l137:	
	return
	opt stack 0
GLOBAL	__end_of_setBuz_Enable
	__end_of_setBuz_Enable:
	signat	_setBuz_Enable,8312
	global	_BuzPointSelect

;; *************** function _BuzPointSelect *****************
;; Defined at:
;;		line 9 in file "G:\Program\PIC\Source_File\Buzzer_B1.c"
;; Parameters:    Size  Location     Type
;;  buz             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  buz             1    1[BANK0 ] unsigned char 
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
;;		_setBuz_Enable
;;		_setBuz
;;		_setBuz_Main
;; This function uses a non-reentrant model
;;
psect	text153,local,class=CODE,delta=2,merge=1
	line	9
global __ptext153
__ptext153:	;psect for function _BuzPointSelect
psect	text153
	file	"G:\Program\PIC\Source_File\Buzzer_B1.c"
	line	9
	global	__size_of_BuzPointSelect
	__size_of_BuzPointSelect	equ	__end_of_BuzPointSelect-_BuzPointSelect
	
_BuzPointSelect:	
;incstack = 0
	opt	stack 6
; Regs used in _BuzPointSelect: [wreg]
;BuzPointSelect@buz stored from wreg
	movlb 0	; select bank0
	movwf	(BuzPointSelect@buz)
	line	12
	
l6677:	
;Buzzer_B1.c: 12: if(buz == 1)
	movf	(BuzPointSelect@buz),w
	xorlw	01h&0ffh
	skipz
	goto	u4831
	goto	u4830
u4831:
	goto	l128
u4830:
	line	14
	
l6679:	
;Buzzer_B1.c: 13: {
;Buzzer_B1.c: 14: Buz=&Buz1;
	movlw	(_Buz1)&0ffh
	movwf	(??_BuzPointSelect+0)+0
	movf	(??_BuzPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_Buz)^080h
	goto	l128
	line	15
	
l127:	
	line	17
	
l128:	
	return
	opt stack 0
GLOBAL	__end_of_BuzPointSelect
	__end_of_BuzPointSelect:
	signat	_BuzPointSelect,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 56 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
	
i1l9041:	
;MCU_16f1518_B1.c: 58: IOC_ISR();
	fcall	_IOC_ISR
	line	60
	
i1l9043:	
;MCU_16f1518_B1.c: 60: TMR0_ISR();
	fcall	_TMR0_ISR
	line	66
	
i1l9045:	
;MCU_16f1518_B1.c: 62: ;;
;MCU_16f1518_B1.c: 66: INT_ISR();
	fcall	_INT_ISR
	line	69
	
i1l1569:	
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
;;		line 82 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_setLoad_StatusOff
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text155,local,class=CODE,delta=2,merge=1
	line	82
global __ptext155
__ptext155:	;psect for function _TMR0_ISR
psect	text155
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	82
	global	__size_of_TMR0_ISR
	__size_of_TMR0_ISR	equ	__end_of_TMR0_ISR-_TMR0_ISR
	
_TMR0_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _TMR0_ISR: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	84
	
i1l8773:	
;MCU_16f1518_B1.c: 84: if(TMR0IE && TMR0IF)
	btfss	(93/8),(93)&7	;volatile
	goto	u774_21
	goto	u774_20
u774_21:
	goto	i1l1632
u774_20:
	
i1l8775:	
	btfss	(90/8),(90)&7	;volatile
	goto	u775_21
	goto	u775_20
u775_21:
	goto	i1l1632
u775_20:
	line	86
	
i1l8777:	
;MCU_16f1518_B1.c: 85: {
;MCU_16f1518_B1.c: 86: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	87
	
i1l8779:	
;MCU_16f1518_B1.c: 87: TMR0IF=0;
	bcf	(90/8),(90)&7	;volatile
	line	100
	
i1l8781:	
;MCU_16f1518_B1.c: 100: if(DimmerLights11->GO) { DimmerLights11->Count++; if(DimmerLights11->Count >= (DimmerLights11->DimmingValue-Dimmer->Correction)) { DimmerLights11->Count=0; DimmerLights11->GO=0; DimmerLights11->Flag=1; if(DimmerLights11->StatusFlag) { RB4=1; ;; } } }
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u776_21
	goto	u776_20
u776_21:
	goto	i1l8795
u776_20:
	
i1l8783:	
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
	goto	u777_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u777_25:

	skipc
	goto	u777_21
	goto	u777_20
u777_21:
	goto	i1l8861
u777_20:
	
i1l8785:	
	movf	(_DimmerLights11),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8787:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	
i1l8789:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
i1l8791:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u778_21
	goto	u778_20
u778_21:
	goto	i1l8861
u778_20:
	
i1l8793:	
	movlb 0	; select bank0
	bsf	(108/8),(108)&7	;volatile
	goto	i1l8861
	
i1l1578:	
	goto	i1l8861
	
i1l1577:	
	goto	i1l8861
	
i1l1576:	
	
i1l8795:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u779_21
	goto	u779_20
u779_21:
	goto	i1l8853
u779_20:
	
i1l8797:	
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
	goto	u780_21
	goto	u780_20
u780_21:
	goto	i1l8853
u780_20:
	
i1l8799:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	incf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l8801:	
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
	goto	u781_21
	goto	u781_20
u781_21:
	goto	i1l8853
u781_20:
	
i1l8803:	
	incf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8805:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u782_21
	goto	u782_20
u782_21:
	goto	i1l8821
u782_20:
	
i1l8807:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u783_21
	goto	u783_20
u783_21:
	goto	i1l8815
u783_20:
	
i1l8809:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03Dh)
	subwf	indf1,w
	skipc
	goto	u784_21
	goto	u784_20
u784_21:
	goto	i1l8813
u784_20:
	
i1l8811:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l8853
	
i1l1585:	
	
i1l8813:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l8853
	
i1l1586:	
	goto	i1l8853
	
i1l1584:	
	
i1l8815:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u785_21
	goto	u785_20
u785_21:
	goto	i1l8819
u785_20:
	
i1l8817:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l8853
	
i1l1588:	
	
i1l8819:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l8853
	
i1l1589:	
	goto	i1l8853
	
i1l1587:	
	goto	i1l8853
	
i1l1583:	
	
i1l8821:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u786_21
	goto	u786_20
u786_21:
	goto	i1l8835
u786_20:
	
i1l8823:	
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
	goto	u787_21
	goto	u787_20
u787_21:
	goto	i1l8827
u787_20:
	
i1l8825:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l8831
	
i1l1592:	
	
i1l8827:	
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
	goto	u788_21
	goto	u788_20
u788_21:
	goto	i1l8831
u788_20:
	
i1l8829:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l8831
	
i1l1594:	
	goto	i1l8831
	
i1l1593:	
	
i1l8831:	
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
	goto	u789_21
	goto	u789_20
u789_21:
	goto	i1l8853
u789_20:
	
i1l8833:	
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
	goto	i1l8853
	
i1l1595:	
	goto	i1l8853
	
i1l1591:	
	
i1l8835:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u790_21
	goto	u790_20
u790_21:
	goto	i1l8843
u790_20:
	
i1l8837:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l8839:	
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
	goto	u791_21
	goto	u791_20
u791_21:
	goto	i1l8853
u791_20:
	
i1l8841:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l8853
	
i1l1598:	
	goto	i1l8853
	
i1l1597:	
	
i1l8843:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l8845:	
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
	goto	u792_21
	goto	u792_20
u792_21:
	goto	i1l8853
u792_20:
	
i1l8847:	
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
	
	bsf	indf1,3
	
i1l8849:	
	movlb 0	; select bank0
	bcf	(119/8),(119)&7	;volatile
	
i1l8851:	
	clrf	(i1setLoad_StatusOff@lights)
	incf	(i1setLoad_StatusOff@lights),f
	clrf	(i1setLoad_StatusOff@command)
	incf	(i1setLoad_StatusOff@command),f
	movlw	(01h)
	fcall	i1_setLoad_StatusOff
	goto	i1l8853
	
i1l1600:	
	goto	i1l8853
	
i1l1599:	
	goto	i1l8853
	
i1l1596:	
	goto	i1l8853
	
i1l1590:	
	goto	i1l8853
	
i1l1582:	
	goto	i1l8853
	
i1l1581:	
	goto	i1l8853
	
i1l1580:	
	
i1l8853:	
	movlb 0	; select bank0
	btfss	(108/8),(108)&7	;volatile
	goto	u793_21
	goto	u793_20
u793_21:
	goto	i1l8861
u793_20:
	
i1l8855:	
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
	goto	u794_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u794_25:

	skipc
	goto	u794_21
	goto	u794_20
u794_21:
	goto	i1l8861
u794_20:
	
i1l8857:	
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8859:	
	movlb 0	; select bank0
	bcf	(108/8),(108)&7	;volatile
	goto	i1l8861
	
i1l1602:	
	goto	i1l8861
	
i1l1601:	
	goto	i1l8861
	
i1l1579:	
	line	104
	
i1l8861:	
;MCU_16f1518_B1.c: 104: if(DimmerLights22->GO) { DimmerLights22->Count++; if(DimmerLights22->Count >= (DimmerLights22->DimmingValue-Dimmer->Correction)) { DimmerLights22->Count=0; DimmerLights22->GO=0; DimmerLights22->Flag=1; if(DimmerLights22->StatusFlag) { RA7=1; } } } el
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u795_21
	goto	u795_20
u795_21:
	goto	i1l8875
u795_20:
	
i1l8863:	
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
	goto	u796_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u796_25:

	skipc
	goto	u796_21
	goto	u796_20
u796_21:
	goto	i1l8941
u796_20:
	
i1l8865:	
	movf	(_DimmerLights22),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8867:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	
i1l8869:	
	movf	(_DimmerLights22),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
i1l8871:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u797_21
	goto	u797_20
u797_21:
	goto	i1l8941
u797_20:
	
i1l8873:	
	movlb 0	; select bank0
	bsf	(103/8),(103)&7	;volatile
	goto	i1l8941
	
i1l1605:	
	goto	i1l8941
	
i1l1604:	
	goto	i1l8941
	
i1l1603:	
	
i1l8875:	
	movf	(_DimmerLights22),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u798_21
	goto	u798_20
u798_21:
	goto	i1l8933
u798_20:
	
i1l8877:	
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
	goto	u799_21
	goto	u799_20
u799_21:
	goto	i1l8933
u799_20:
	
i1l8879:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	incf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l8881:	
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
	goto	u800_21
	goto	u800_20
u800_21:
	goto	i1l8933
u800_20:
	
i1l8883:	
	incf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8885:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u801_21
	goto	u801_20
u801_21:
	goto	i1l8901
u801_20:
	
i1l8887:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u802_21
	goto	u802_20
u802_21:
	goto	i1l8895
u802_20:
	
i1l8889:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03Dh)
	subwf	indf1,w
	skipc
	goto	u803_21
	goto	u803_20
u803_21:
	goto	i1l8893
u803_20:
	
i1l8891:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l8933
	
i1l1612:	
	
i1l8893:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l8933
	
i1l1613:	
	goto	i1l8933
	
i1l1611:	
	
i1l8895:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u804_21
	goto	u804_20
u804_21:
	goto	i1l8899
u804_20:
	
i1l8897:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l8933
	
i1l1615:	
	
i1l8899:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l8933
	
i1l1616:	
	goto	i1l8933
	
i1l1614:	
	goto	i1l8933
	
i1l1610:	
	
i1l8901:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u805_21
	goto	u805_20
u805_21:
	goto	i1l8915
u805_20:
	
i1l8903:	
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
	goto	u806_21
	goto	u806_20
u806_21:
	goto	i1l8907
u806_20:
	
i1l8905:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l8911
	
i1l1619:	
	
i1l8907:	
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
	goto	u807_21
	goto	u807_20
u807_21:
	goto	i1l8911
u807_20:
	
i1l8909:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l8911
	
i1l1621:	
	goto	i1l8911
	
i1l1620:	
	
i1l8911:	
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
	goto	u808_21
	goto	u808_20
u808_21:
	goto	i1l8933
u808_20:
	
i1l8913:	
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
	goto	i1l8933
	
i1l1622:	
	goto	i1l8933
	
i1l1618:	
	
i1l8915:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u809_21
	goto	u809_20
u809_21:
	goto	i1l8923
u809_20:
	
i1l8917:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l8919:	
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
	goto	u810_21
	goto	u810_20
u810_21:
	goto	i1l8933
u810_20:
	
i1l8921:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l8933
	
i1l1625:	
	goto	i1l8933
	
i1l1624:	
	
i1l8923:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l8925:	
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
	goto	u811_21
	goto	u811_20
u811_21:
	goto	i1l8933
u811_20:
	
i1l8927:	
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
	
	bsf	indf1,3
	
i1l8929:	
	movlb 0	; select bank0
	bcf	(99/8),(99)&7	;volatile
	
i1l8931:	
	movlw	(02h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(??_TMR0_ISR+0)+0,w
	movwf	(i1setLoad_StatusOff@lights)
	clrf	(i1setLoad_StatusOff@command)
	incf	(i1setLoad_StatusOff@command),f
	movlw	(01h)
	fcall	i1_setLoad_StatusOff
	goto	i1l8933
	
i1l1627:	
	goto	i1l8933
	
i1l1626:	
	goto	i1l8933
	
i1l1623:	
	goto	i1l8933
	
i1l1617:	
	goto	i1l8933
	
i1l1609:	
	goto	i1l8933
	
i1l1608:	
	goto	i1l8933
	
i1l1607:	
	
i1l8933:	
	movlb 0	; select bank0
	btfss	(103/8),(103)&7	;volatile
	goto	u812_21
	goto	u812_20
u812_21:
	goto	i1l8941
u812_20:
	
i1l8935:	
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
	goto	u813_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u813_25:

	skipc
	goto	u813_21
	goto	u813_20
u813_21:
	goto	i1l8941
u813_20:
	
i1l8937:	
	movf	(_DimmerLights22),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l8939:	
	movlb 0	; select bank0
	bcf	(103/8),(103)&7	;volatile
	goto	i1l8941
	
i1l1629:	
	goto	i1l8941
	
i1l1628:	
	goto	i1l8941
	
i1l1606:	
	line	113
	
i1l8941:	
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
	
i1l8943:	
;MCU_16f1518_B1.c: 114: if(Timer0->Count == 200)
	incf	(_Timer0)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(0C8h)
	skipz
	goto	u814_25
	moviw	[1]fsr1
	xorlw	high(0C8h)
u814_25:
	skipz
	goto	u814_21
	goto	u814_20
u814_21:
	goto	i1l1630
u814_20:
	line	116
	
i1l8945:	
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
	
i1l1630:	
	line	121
;MCU_16f1518_B1.c: 118: }
;MCU_16f1518_B1.c: 121: if(Buz->GO)
	movf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u815_21
	goto	u815_20
u815_21:
	goto	i1l1632
u815_20:
	line	123
	
i1l8947:	
;MCU_16f1518_B1.c: 122: {
;MCU_16f1518_B1.c: 123: Buz->Time++;
	incf	(_Buz)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	goto	i1l1632
	line	124
	
i1l1631:	
	goto	i1l1632
	line	126
	
i1l1575:	
	line	127
	
i1l1632:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_ISR
	__end_of_TMR0_ISR:
	signat	_TMR0_ISR,88
	global	i1_setLoad_StatusOff

;; *************** function i1_setLoad_StatusOff *****************
;; Defined at:
;;		line 346 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;;  lights          1    2[COMMON] unsigned char 
;;  command         1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_LoadPointSelect
;; This function is called by:
;;		_TMR0_ISR
;; This function uses a non-reentrant model
;;
psect	text156,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	346
global __ptext156
__ptext156:	;psect for function i1_setLoad_StatusOff
psect	text156
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	346
	global	__size_ofi1_setLoad_StatusOff
	__size_ofi1_setLoad_StatusOff	equ	__end_ofi1_setLoad_StatusOff-i1_setLoad_StatusOff
	
i1_setLoad_StatusOff:	
;incstack = 0
	opt	stack 2
; Regs used in i1_setLoad_StatusOff: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;i1setLoad_StatusOff@load stored from wreg
	movwf	(i1setLoad_StatusOff@load)
	line	348
	
i1l8527:	
;OverLoad_B1.c: 348: LoadPointSelect(load);
	movf	(i1setLoad_StatusOff@load),w
	fcall	i1_LoadPointSelect
	line	349
	
i1l8529:	
;OverLoad_B1.c: 349: Load->StatusOff=command;
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
	line	351
	
i1l8531:	
;OverLoad_B1.c: 351: if(lights == 1)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u745_21
	goto	u745_20
u745_21:
	goto	i1l8535
u745_20:
	line	353
	
i1l8533:	
;OverLoad_B1.c: 352: {
;OverLoad_B1.c: 353: Load->Lights1Status=0;
	movf	(_Load),w
	addlw	043h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l8535
	line	354
	
i1l1934:	
	line	355
	
i1l8535:	
;OverLoad_B1.c: 354: }
;OverLoad_B1.c: 355: if(lights == 2)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u746_21
	goto	u746_20
u746_21:
	goto	i1l8539
u746_20:
	line	357
	
i1l8537:	
;OverLoad_B1.c: 356: {
;OverLoad_B1.c: 357: Load->Lights2Status=0;
	movf	(_Load),w
	addlw	044h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l8539
	line	358
	
i1l1935:	
	line	359
	
i1l8539:	
;OverLoad_B1.c: 358: }
;OverLoad_B1.c: 359: if(lights == 3)
	movf	(i1setLoad_StatusOff@lights),w
	xorlw	03h&0ffh
	skipz
	goto	u747_21
	goto	u747_20
u747_21:
	goto	i1l1937
u747_20:
	line	361
	
i1l8541:	
;OverLoad_B1.c: 360: {
;OverLoad_B1.c: 361: Load->Lights3Status=0;
	movf	(_Load),w
	addlw	045h
	movwf	fsr1l
	movlw 2	; select bank4/5
	movwf fsr1h	
	
	clrf	indf1
	goto	i1l1937
	line	362
	
i1l1936:	
	line	363
	
i1l1937:	
	return
	opt stack 0
GLOBAL	__end_ofi1_setLoad_StatusOff
	__end_ofi1_setLoad_StatusOff:
	signat	i1_setLoad_StatusOff,88
	global	i1_LoadPointSelect

;; *************** function i1_LoadPointSelect *****************
;; Defined at:
;;		line 7 in file "G:\Program\PIC\Source_File\OverLoad_B1.c"
;; Parameters:    Size  Location     Type
;;  load            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  load            1    1[COMMON] unsigned char 
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
;;		i1_setLoad_StatusOff
;; This function uses a non-reentrant model
;;
psect	text157,local,class=CODE,delta=2,merge=1
	line	7
global __ptext157
__ptext157:	;psect for function i1_LoadPointSelect
psect	text157
	file	"G:\Program\PIC\Source_File\OverLoad_B1.c"
	line	7
	global	__size_ofi1_LoadPointSelect
	__size_ofi1_LoadPointSelect	equ	__end_ofi1_LoadPointSelect-i1_LoadPointSelect
	
i1_LoadPointSelect:	
;incstack = 0
	opt	stack 2
; Regs used in i1_LoadPointSelect: [wreg]
;i1LoadPointSelect@load stored from wreg
	movwf	(i1LoadPointSelect@load)
	line	10
	
i1l7779:	
;OverLoad_B1.c: 10: if(load == 1)
	movf	(i1LoadPointSelect@load),w
	xorlw	01h&0ffh
	skipz
	goto	u624_21
	goto	u624_20
u624_21:
	goto	i1l1853
u624_20:
	line	12
	
i1l7781:	
;OverLoad_B1.c: 11: {
;OverLoad_B1.c: 12: Load=&Load1;
	movlw	(_Load1)&0ffh
	movwf	(??i1_LoadPointSelect+0)+0
	movf	(??i1_LoadPointSelect+0)+0,w
	movlb 0	; select bank0
	movwf	(_Load)
	goto	i1l1853
	line	13
	
i1l1852:	
	line	15
	
i1l1853:	
	return
	opt stack 0
GLOBAL	__end_ofi1_LoadPointSelect
	__end_ofi1_LoadPointSelect:
	signat	i1_LoadPointSelect,88
	global	_IOC_ISR

;; *************** function _IOC_ISR *****************
;; Defined at:
;;		line 267 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text158,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	267
global __ptext158
__ptext158:	;psect for function _IOC_ISR
psect	text158
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	267
	global	__size_of_IOC_ISR
	__size_of_IOC_ISR	equ	__end_of_IOC_ISR-_IOC_ISR
	
_IOC_ISR:	
;incstack = 0
	opt	stack 3
; Regs used in _IOC_ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	269
	
i1l8757:	
;MCU_16f1518_B1.c: 269: if(IOCIE && IOCBF2)
	btfss	(91/8),(91)&7	;volatile
	goto	u770_21
	goto	u770_20
u770_21:
	goto	i1l1657
u770_20:
	
i1l8759:	
	movlb 7	; select bank7
	btfss	(7346/8)^0380h,(7346)&7	;volatile
	goto	u771_21
	goto	u771_20
u771_21:
	goto	i1l1657
u771_20:
	line	271
	
i1l8761:	
;MCU_16f1518_B1.c: 270: {
;MCU_16f1518_B1.c: 271: IOCBF2=0;
	bcf	(7346/8)^0380h,(7346)&7	;volatile
	line	272
;MCU_16f1518_B1.c: 272: IOCIF=0;
	bcf	(88/8),(88)&7	;volatile
	line	273
	
i1l8763:	
;MCU_16f1518_B1.c: 273: if(TMain->PowerON)
	movlb 1	; select bank1
	movf	(_TMain)^080h,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u772_21
	goto	u772_20
u772_21:
	goto	i1l1657
u772_20:
	line	278
	
i1l8765:	
;MCU_16f1518_B1.c: 274: {
;MCU_16f1518_B1.c: 278: setDimmerReClock();
	fcall	_setDimmerReClock
	line	279
	
i1l8767:	
;MCU_16f1518_B1.c: 279: if(RB2)
	movlb 0	; select bank0
	btfss	(106/8),(106)&7	;volatile
	goto	u773_21
	goto	u773_20
u773_21:
	goto	i1l8771
u773_20:
	line	281
	
i1l8769:	
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
	goto	i1l1657
	line	283
	
i1l1655:	
	line	285
	
i1l8771:	
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
	goto	i1l1657
	line	286
	
i1l1656:	
	goto	i1l1657
	line	293
	
i1l1654:	
	goto	i1l1657
	line	294
	
i1l1653:	
	line	295
	
i1l1657:	
	return
	opt stack 0
GLOBAL	__end_of_IOC_ISR
	__end_of_IOC_ISR:
	signat	_IOC_ISR,88
	global	_setDimmerReClock

;; *************** function _setDimmerReClock *****************
;; Defined at:
;;		line 129 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text159,local,class=CODE,delta=2,merge=1
	line	129
global __ptext159
__ptext159:	;psect for function _setDimmerReClock
psect	text159
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	129
	global	__size_of_setDimmerReClock
	__size_of_setDimmerReClock	equ	__end_of_setDimmerReClock-_setDimmerReClock
	
_setDimmerReClock:	
;incstack = 0
	opt	stack 3
; Regs used in _setDimmerReClock: [wregfsr1]
	line	131
	
i1l8065:	
;MCU_16f1518_B1.c: 131: TMR0=255;
	movlw	(0FFh)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	136
	
i1l8067:	
;MCU_16f1518_B1.c: 136: if(!DimmerLights11->GO)
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u661_21
	goto	u661_20
u661_21:
	goto	i1l1635
u661_20:
	line	138
	
i1l8069:	
;MCU_16f1518_B1.c: 137: {
;MCU_16f1518_B1.c: 138: DimmerLights11->GO=1;
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	139
	
i1l1635:	
	line	158
;MCU_16f1518_B1.c: 139: }
;MCU_16f1518_B1.c: 158: if(!DimmerLights22->GO)
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u662_21
	goto	u662_20
u662_21:
	goto	i1l1637
u662_20:
	line	160
	
i1l8071:	
;MCU_16f1518_B1.c: 159: {
;MCU_16f1518_B1.c: 160: DimmerLights22->GO=1;
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l1637
	line	161
	
i1l1636:	
	line	174
	
i1l1637:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerReClock
	__end_of_setDimmerReClock:
	signat	_setDimmerReClock,88
	global	_INT_ISR

;; *************** function _INT_ISR *****************
;; Defined at:
;;		line 225 in file "G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
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
psect	text160,local,class=CODE,delta=2,merge=1
	line	225
global __ptext160
__ptext160:	;psect for function _INT_ISR
psect	text160
	file	"G:\Program\PIC\Source_File\MCU_16f1518_B1.c"
	line	225
	global	__size_of_INT_ISR
	__size_of_INT_ISR	equ	__end_of_INT_ISR-_INT_ISR
	
_INT_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _INT_ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	227
	
i1l8949:	
;MCU_16f1518_B1.c: 227: if(INTE && INTF)
	btfss	(92/8),(92)&7	;volatile
	goto	u816_21
	goto	u816_20
u816_21:
	goto	i1l1644
u816_20:
	
i1l8951:	
	btfss	(89/8),(89)&7	;volatile
	goto	u817_21
	goto	u817_20
u817_21:
	goto	i1l1644
u817_20:
	line	229
	
i1l8953:	
;MCU_16f1518_B1.c: 228: {
;MCU_16f1518_B1.c: 229: INTF=0;
	bcf	(89/8),(89)&7	;volatile
	line	230
;MCU_16f1518_B1.c: 230: INTE=0;
	bcf	(92/8),(92)&7	;volatile
	line	231
	
i1l8955:	
;MCU_16f1518_B1.c: 231: setRF_ReceiveGO(1,1);
	clrf	(setRF_ReceiveGO@command)
	incf	(setRF_ReceiveGO@command),f
	movlw	(01h)
	fcall	_setRF_ReceiveGO
	goto	i1l1644
	line	232
	
i1l1643:	
	line	233
	
i1l1644:	
	return
	opt stack 0
GLOBAL	__end_of_INT_ISR
	__end_of_INT_ISR:
	signat	_INT_ISR,88
	global	_setRF_ReceiveGO

;; *************** function _setRF_ReceiveGO *****************
;; Defined at:
;;		line 37 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text161,local,class=CODE,delta=2,merge=1
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
	line	37
global __ptext161
__ptext161:	;psect for function _setRF_ReceiveGO
psect	text161
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
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
	
i1l8073:	
;RF_Control_B1.c: 39: RfPointSelect(rf);
	movf	(setRF_ReceiveGO@rf),w
	fcall	i1_RfPointSelect
	line	40
	
i1l8075:	
;RF_Control_B1.c: 40: RF->ReceiveGO=command;
	movlb 1	; select bank1
	movf	(_RF)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setRF_ReceiveGO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	41
	
i1l2523:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_ReceiveGO
	__end_of_setRF_ReceiveGO:
	signat	_setRF_ReceiveGO,8312
	global	i1_RfPointSelect

;; *************** function i1_RfPointSelect *****************
;; Defined at:
;;		line 7 in file "G:\Program\PIC\Source_File\RF_Control_B1.c"
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
psect	text162,local,class=CODE,delta=2,merge=1
	line	7
global __ptext162
__ptext162:	;psect for function i1_RfPointSelect
psect	text162
	file	"G:\Program\PIC\Source_File\RF_Control_B1.c"
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
	
i1l7783:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(i1RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u625_21
	goto	u625_20
u625_21:
	goto	i1l2511
u625_20:
	line	12
	
i1l7785:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??i1_RfPointSelect+0)+0
	movf	(??i1_RfPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RF)^080h
	goto	i1l2511
	line	13
	
i1l2510:	
	line	15
	
i1l2511:	
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

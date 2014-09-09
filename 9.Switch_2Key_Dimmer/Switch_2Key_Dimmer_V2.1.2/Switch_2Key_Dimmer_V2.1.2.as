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
	FNCALL	_main,_Mcu_Initialization
	FNCALL	_main,_RF_Initialization
	FNCALL	_main,_RF_Main
	FNCALL	_main,_Switch_Initialization
	FNCALL	_main,_Switch_Main
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
	FNCALL	_Mcu_Initialization,_ADC_Set
	FNCALL	_Mcu_Initialization,_INT_Set
	FNCALL	_Mcu_Initialization,_IOC_Set
	FNCALL	_Mcu_Initialization,_IO_Set
	FNCALL	_Mcu_Initialization,_TMR0_Set
	FNCALL	_MainT,_setBuz
	FNCALL	_MainT,_setRF_Enable
	FNCALL	_MainT,_setSw_Enable
	FNCALL	_MainT,_setTxData
	FNCALL	_setSw_Enable,_SwPointSelect
	FNCALL	_setRF_Enable,_CC2500_WriteCommand
	FNCALL	_setRF_Enable,_RF_RxDisable
	FNCALL	_setRF_Enable,_RfPointSelect
	FNCALL	_RF_RxDisable,_CC2500_WriteCommand
	FNCALL	_RF_RxDisable,_RfPointSelect
	FNCALL	_RF_RxDisable,_setINT_GO
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
	FNCALL	_setDimmerLights_Adj,_setPercentValue
	FNCALL	_setDimmerLights_Adj,_setRF_DimmerLights
	FNCALL	_setDimmerLights_Adj,_setTxData
	FNCALL	_setPercentValue,___awtoft
	FNCALL	_setPercentValue,___ftdiv
	FNCALL	_setPercentValue,___fttol
	FNCALL	_setDimmerLights,_DimmerLightsPointSelect
	FNCALL	_setDimmerLights,_setDimmer_Detect
	FNCALL	_setDimmerLights,_setLED
	FNCALL	_setLED,_LedPointSelect
	FNCALL	_getDimmerLights_Trigger,_DimmerLightsPointSelect
	FNCALL	_DimmerLights_Close,_getDimmerLights_StatusFlag
	FNCALL	_DimmerLights_Close,_getDimmer_Detect
	FNCALL	_DimmerLights_Close,_setDimmer_Detect
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
	global	_VarMemory
	global	_VarProduct
psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Header_File\MCU_16F1518_B1.h"
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
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\9.Switch_2Key_Dimmer\Switch_2Key_Dimmer_V2.1.2\Release\Switch_2key_Dimmer_V2.1.2.h"
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
	global	_Sw
	global	_LED
	global	_RF
	global	_CC2500_Enable
	global	_Receive_GO
	global	_Receive_OK
	global	_RxStatus
	global	_Transceive_GO
	global	_Transceive_OK
	global	_TxStatus
	global	_Buz
	global	_DelayOff
	global	_Dimmer
	global	_DimmerLights
	global	_DimmerLights11
	global	_DimmerLights22
	global	_RF_Data
	global	_RF_Count
	global	_CRC
	global	_DimmerLightsIntr
	global	_RFSW
	global	_RSSI
	global	_Rx_Length
	global	_SPI0Buffer
	global	_Tx_Length
	global	_r_address
	global	_r_data
	global	_s_data
	global	_Sw1
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
	global	_VarTMain
	global	_DimmerLights1
	global	_DimmerLights2
	global	_Buz1
	global	_Sw2
	global	_Memory
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_Memory:
       ds      1

	global	_Product
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
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
_Sw:
       ds      2

_LED:
       ds      1

_RF:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_Buz:
       ds      1

_DelayOff:
       ds      1

_Dimmer:
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

_DimmerLightsIntr:
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

_Sw1:
       ds      9

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
_VarTMain:
       ds      16

_DimmerLights1:
       ds      13

_DimmerLights2:
       ds      13

_Buz1:
       ds      12

_Sw2:
       ds      9

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Header_File\MCU_16F1518_B1.h"
	line	435
_VarMemory:
       ds      37

psect	dataBANK3
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\9.Switch_2Key_Dimmer\Switch_2Key_Dimmer_V2.1.2\Release\Switch_2key_Dimmer_V2.1.2.h"
	line	254
_VarProduct:
       ds      30

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
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	04Eh
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	03Fh
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
	movlw 043h
	fcall init_ram
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	bcf	pic14e$flags,0 ;clear compiler interrupt flag
movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK2,class=BANK2,space=1,noexec
global __pcstackBANK2
__pcstackBANK2:
??_setRF_Main:	; 0 bytes @ 0x0
	ds	1
	global	setRF_Main@rf
setRF_Main@rf:	; 1 bytes @ 0x1
	ds	1
	global	_setRF_Main$3353
_setRF_Main$3353:	; 1 bytes @ 0x2
	ds	1
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	getRxData@rf
getRxData@rf:	; 1 bytes @ 0x0
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
?_setDimmerLights_Main:	; 0 bytes @ 0x0
?_setLED_Initialization:	; 0 bytes @ 0x0
?_setLED_Main:	; 0 bytes @ 0x0
?_MainT_Initialization:	; 0 bytes @ 0x0
?_Mcu_Initialization:	; 0 bytes @ 0x0
?_Flash_Memory_Initialization:	; 0 bytes @ 0x0
?_Switch_Initialization:	; 0 bytes @ 0x0
?_RF_Initialization:	; 0 bytes @ 0x0
?_MainT:	; 0 bytes @ 0x0
?_Flash_Memory_Main:	; 0 bytes @ 0x0
?_Switch_Main:	; 0 bytes @ 0x0
?_RF_Main:	; 0 bytes @ 0x0
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
?_RfPointSelect:	; 0 bytes @ 0x0
?_RfSWPointSelect:	; 0 bytes @ 0x0
?_TouchPower:	; 0 bytes @ 0x0
?_SwPointSelect:	; 0 bytes @ 0x0
?i1_RfPointSelect:	; 0 bytes @ 0x0
??i1_RfPointSelect:	; 0 bytes @ 0x0
?_DelayTimejudge:	; 1 bytes @ 0x0
?_getPercentValue:	; 1 bytes @ 0x0
?_getDimmer_Detect:	; 1 bytes @ 0x0
?_getDimmerLights_StatusFlag:	; 1 bytes @ 0x0
?_getDimmerLights_Trigger:	; 1 bytes @ 0x0
?_setPercentValue:	; 1 bytes @ 0x0
?_Flash_Memory_Read:	; 1 bytes @ 0x0
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
?_setRF_DimmerLights:	; 0 bytes @ 0x0
??_DelayTimejudge:	; 0 bytes @ 0x0
??_MainT_Initialization:	; 0 bytes @ 0x0
??_IO_Set:	; 0 bytes @ 0x0
??_TMR0_Set:	; 0 bytes @ 0x0
??_ADC_Set:	; 0 bytes @ 0x0
??_INT_Set:	; 0 bytes @ 0x0
??_IOC_Set:	; 0 bytes @ 0x0
??_Flash_Memory_Read:	; 0 bytes @ 0x0
??_Flash_Memory_Write:	; 0 bytes @ 0x0
??_setRF_Initialization:	; 0 bytes @ 0x0
??_Buzzer_Initialization:	; 0 bytes @ 0x0
??_Buzzer_Main:	; 0 bytes @ 0x0
??_DelayOffPointSelect:	; 0 bytes @ 0x0
??_DimmerLightsPointSelect:	; 0 bytes @ 0x0
??_DimmerPointSelect:	; 0 bytes @ 0x0
??_LedPointSelect:	; 0 bytes @ 0x0
??_setINT_GO:	; 0 bytes @ 0x0
??_Flash_Memory_Unlock:	; 0 bytes @ 0x0
??_Flash_Memory_Erasing:	; 0 bytes @ 0x0
??_RfPointSelect:	; 0 bytes @ 0x0
??_RfSWPointSelect:	; 0 bytes @ 0x0
??_TouchPower:	; 0 bytes @ 0x0
??_SwPointSelect:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	setINT_GO@command
setINT_GO@command:	; 1 bytes @ 0x0
	global	setRF_DimmerLights@on
setRF_DimmerLights@on:	; 1 bytes @ 0x0
	global	SwPointSelect@sw
SwPointSelect@sw:	; 1 bytes @ 0x0
	global	DelayTime_1us@count
DelayTime_1us@count:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
?_setSw_Status:	; 0 bytes @ 0x1
??_setRF_DimmerLights:	; 0 bytes @ 0x1
??_Mcu_Initialization:	; 0 bytes @ 0x1
??_RF_Initialization:	; 0 bytes @ 0x1
??_setSw_Enable:	; 0 bytes @ 0x1
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
	global	RfPointSelect@rf
RfPointSelect@rf:	; 1 bytes @ 0x1
	global	RfSWPointSelect@sw
RfSWPointSelect@sw:	; 1 bytes @ 0x1
	global	setSw_Enable@command
setSw_Enable@command:	; 1 bytes @ 0x1
	global	setSw_Status@command
setSw_Status@command:	; 1 bytes @ 0x1
	ds	1
??_CC2500_WriteCommand:	; 0 bytes @ 0x2
??_CC2500_ReadStatus:	; 0 bytes @ 0x2
?_setRF_RxStatus:	; 0 bytes @ 0x2
??_DelayTime_1us:	; 0 bytes @ 0x2
?_CC2500_WriteREG:	; 0 bytes @ 0x2
??_DlyOff_Initialization:	; 0 bytes @ 0x2
??_setSw_Status:	; 0 bytes @ 0x2
?_setRFSW_Status:	; 0 bytes @ 0x2
?_setDimmerLights_Trigger:	; 0 bytes @ 0x2
?_setDimmerLights_Switch:	; 0 bytes @ 0x2
??_setTxData:	; 0 bytes @ 0x2
??_getDimmer_Detect:	; 0 bytes @ 0x2
?_setDimmer_Detect:	; 0 bytes @ 0x2
??_getDimmerLights_StatusFlag:	; 0 bytes @ 0x2
??_getDimmerLights_Trigger:	; 0 bytes @ 0x2
?_setLED:	; 0 bytes @ 0x2
??_setLED_Main:	; 0 bytes @ 0x2
?_setDimmerLights_AdjGo:	; 0 bytes @ 0x2
?_setDimmerLights_TriggerAdj:	; 0 bytes @ 0x2
?_setRF_Learn:	; 0 bytes @ 0x2
	global	CC2500_WriteREG@value
CC2500_WriteREG@value:	; 1 bytes @ 0x2
	global	DlyOff_Initialization@sw
DlyOff_Initialization@sw:	; 1 bytes @ 0x2
	global	DelayTimejudge@value
DelayTimejudge@value:	; 1 bytes @ 0x2
	global	setDimmerLights_Switch@command
setDimmerLights_Switch@command:	; 1 bytes @ 0x2
	global	setDimmerLights_AdjGo@command
setDimmerLights_AdjGo@command:	; 1 bytes @ 0x2
	global	setDimmerLights_Trigger@command
setDimmerLights_Trigger@command:	; 1 bytes @ 0x2
	global	setDimmerLights_TriggerAdj@command
setDimmerLights_TriggerAdj@command:	; 1 bytes @ 0x2
	global	setDimmer_Detect@command
setDimmer_Detect@command:	; 1 bytes @ 0x2
	global	setLED@command
setLED@command:	; 1 bytes @ 0x2
	global	Flash_Memory_Read@address
Flash_Memory_Read@address:	; 1 bytes @ 0x2
	global	setRF_Learn@command
setRF_Learn@command:	; 1 bytes @ 0x2
	global	setRF_RxStatus@command
setRF_RxStatus@command:	; 1 bytes @ 0x2
	global	setRFSW_Status@command
setRFSW_Status@command:	; 1 bytes @ 0x2
	global	setSw_Status@sw
setSw_Status@sw:	; 1 bytes @ 0x2
	global	DelayTime_1us@i
DelayTime_1us@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
??_setRF_RxStatus:	; 0 bytes @ 0x3
??_CC2500_WriteREG:	; 0 bytes @ 0x3
??_setRFSW_Status:	; 0 bytes @ 0x3
??_setDimmerLights_Trigger:	; 0 bytes @ 0x3
??_setDimmerLights_Switch:	; 0 bytes @ 0x3
??_setDimmer_Detect:	; 0 bytes @ 0x3
??_setLED:	; 0 bytes @ 0x3
??_DelayOff_Initialization:	; 0 bytes @ 0x3
?_setDelayOff_GO:	; 0 bytes @ 0x3
??_setDimmerLights_AdjGo:	; 0 bytes @ 0x3
??_setDimmerLights_TriggerAdj:	; 0 bytes @ 0x3
??_setRF_Learn:	; 0 bytes @ 0x3
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
	global	setDimmerLights_Switch@lights
setDimmerLights_Switch@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_AdjGo@lights
setDimmerLights_AdjGo@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_Trigger@lights
setDimmerLights_Trigger@lights:	; 1 bytes @ 0x3
	global	setDimmerLights_TriggerAdj@lights
setDimmerLights_TriggerAdj@lights:	; 1 bytes @ 0x3
	global	setDimmer_Detect@dimmer
setDimmer_Detect@dimmer:	; 1 bytes @ 0x3
	global	getDimmer_Detect@dimmer
getDimmer_Detect@dimmer:	; 1 bytes @ 0x3
	global	setLED@led
setLED@led:	; 1 bytes @ 0x3
	global	Flash_Memory_Read@ret
Flash_Memory_Read@ret:	; 1 bytes @ 0x3
	global	setRF_Learn@rf
setRF_Learn@rf:	; 1 bytes @ 0x3
	global	setRF_RxStatus@rf
setRF_RxStatus@rf:	; 1 bytes @ 0x3
	global	setRFSW_Status@sw
setRFSW_Status@sw:	; 1 bytes @ 0x3
	global	setRF_DimmerLights@status
setRF_DimmerLights@status:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
??_CC2500_ClearTXFIFO:	; 0 bytes @ 0x4
??_CC2500_ClearRXFIFO:	; 0 bytes @ 0x4
??_CC2500_SIDLEMode:	; 0 bytes @ 0x4
?_setDimmerLights:	; 0 bytes @ 0x4
??_setLED_Initialization:	; 0 bytes @ 0x4
??_Flash_Memory_Modify:	; 0 bytes @ 0x4
??_RF_RxDisable:	; 0 bytes @ 0x4
??_setSw_Initialization:	; 0 bytes @ 0x4
??_Sw_DimmerAdjFunc:	; 0 bytes @ 0x4
??_CC2500_TxData:	; 0 bytes @ 0x4
??_CC2500_RxData:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
	global	CC2500_WriteREG@w_addr
CC2500_WriteREG@w_addr:	; 1 bytes @ 0x4
	global	setDelayOff_GO@value
setDelayOff_GO@value:	; 1 bytes @ 0x4
	global	getDimmerLights_StatusFlag@Status
getDimmerLights_StatusFlag@Status:	; 1 bytes @ 0x4
	global	getDimmerLights_Trigger@Status
getDimmerLights_Trigger@Status:	; 1 bytes @ 0x4
	global	setDimmerLights@status
setDimmerLights@status:	; 1 bytes @ 0x4
	global	setLED_Initialization@led
setLED_Initialization@led:	; 1 bytes @ 0x4
	global	setLED_Main@led
setLED_Main@led:	; 1 bytes @ 0x4
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
??_setDimmerLights:	; 0 bytes @ 0x5
??_Switch_Initialization:	; 0 bytes @ 0x5
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
	global	setTxData@i
setTxData@i:	; 1 bytes @ 0x5
	global	setRF_Enable@command
setRF_Enable@command:	; 1 bytes @ 0x5
	ds	1
??_CC2500_PowerRST:	; 0 bytes @ 0x6
??_CC2500_FrequencyCabr:	; 0 bytes @ 0x6
??_setRF_Enable:	; 0 bytes @ 0x6
??_Sw_DimmerOnFunc:	; 0 bytes @ 0x6
?_setBuz:	; 0 bytes @ 0x6
??_DimmerLights_Close:	; 0 bytes @ 0x6
	global	CC2500_InitSetREG@temp1
CC2500_InitSetREG@temp1:	; 1 bytes @ 0x6
	global	CC2500_InitPATable@temp
CC2500_InitPATable@temp:	; 1 bytes @ 0x6
	global	setDelayOff_GO@sw
setDelayOff_GO@sw:	; 1 bytes @ 0x6
	global	setDimmerLights@lights
setDimmerLights@lights:	; 1 bytes @ 0x6
	global	Flash_Memory_Modify@i
Flash_Memory_Modify@i:	; 1 bytes @ 0x6
	global	setRF_Enable@rf
setRF_Enable@rf:	; 1 bytes @ 0x6
	global	Sw_DimmerOnFunc@sw
Sw_DimmerOnFunc@sw:	; 1 bytes @ 0x6
	global	setBuz@time
setBuz@time:	; 2 bytes @ 0x6
	ds	1
??_Flash_Memory_Main:	; 0 bytes @ 0x7
??_Sw_DimmerOffFunc:	; 0 bytes @ 0x7
	global	CC2500_InitSetREG@temp2
CC2500_InitSetREG@temp2:	; 1 bytes @ 0x7
	global	CC2500_InitPATable@loop_d
CC2500_InitPATable@loop_d:	; 1 bytes @ 0x7
	ds	1
??_setBuz:	; 0 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	CC2500_InitSetREG@loop_c
CC2500_InitSetREG@loop_c:	; 1 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	ds	1
??_CC2500_PowerOnInitial:	; 0 bytes @ 0x9
	global	setBuz@count
setBuz@count:	; 1 bytes @ 0x9
	global	Sw_DimmerOffFunc@sw
Sw_DimmerOffFunc@sw:	; 1 bytes @ 0x9
	ds	1
??_DlyOff_Main:	; 0 bytes @ 0xA
??_MainT:	; 0 bytes @ 0xA
??_setLog_Code:	; 0 bytes @ 0xA
??_setRFSW_Control:	; 0 bytes @ 0xA
??_setSw_Main:	; 0 bytes @ 0xA
	ds	1
??___awtoft:	; 0 bytes @ 0xB
	global	setLog_Code@rf
setLog_Code@rf:	; 1 bytes @ 0xB
	ds	1
	global	DlyOff_Main@sw
DlyOff_Main@sw:	; 1 bytes @ 0xC
	global	setRFSW_Control@sw
setRFSW_Control@sw:	; 1 bytes @ 0xC
	global	_setSw_Main$3642
_setSw_Main$3642:	; 1 bytes @ 0xC
	ds	1
??_DelayOff_Main:	; 0 bytes @ 0xD
	global	_setSw_Main$3643
_setSw_Main$3643:	; 1 bytes @ 0xD
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xE
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xE
	global	setSw_Main@sw
setSw_Main@sw:	; 1 bytes @ 0xE
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xE
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xE
	ds	1
??_Switch_Main:	; 0 bytes @ 0xF
	ds	2
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
??_RF_Main:	; 0 bytes @ 0x48
??_getRxData:	; 0 bytes @ 0x48
??_main:	; 0 bytes @ 0x48
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    102
;!    Data        67
;!    BSS         151
;!    Persistent  4
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      11
;!    BANK0            80     72      80
;!    BANK1            80      1      80
;!    BANK2            80      3      66
;!    BANK3            80      0      67
;!    BANK4            80      0       0
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
;!    Sw	PTR struct Switch size(2) Largest target is 9
;!		 -> NULL(NULL[0]), Sw2(BANK2[9]), Sw1(BANK1[9]), 
;!
;!    RFSW	PTR struct RFSW size(1) Largest target is 1
;!		 -> NULL(NULL[0]), RFSW2(BANK1[1]), RFSW1(BANK1[1]), 
;!
;!    RF	PTR struct RF size(1) Largest target is 2
;!		 -> NULL(NULL[0]), RF1(BANK1[2]), 
;!
;!    Timer0	PTR struct Timer0 size(1) Largest target is 7
;!		 -> NULL(NULL[0]), VarTimer0(BANK1[7]), 
;!
;!    LED	PTR struct LED size(1) Largest target is 4
;!		 -> NULL(NULL[0]), VarErrLED(BANK1[4]), VarLED2(BANK1[4]), VarLED1(BANK1[4]), 
;!
;!    TMain	PTR struct TMain size(1) Largest target is 16
;!		 -> NULL(NULL[0]), VarTMain(BANK2[16]), 
;!
;!    Dimmer	PTR struct Dimmer size(1) Largest target is 3
;!		 -> NULL(NULL[0]), Dimmer1(BANK1[3]), 
;!
;!    Memory	PTR struct FlashMemory size(1) Largest target is 37
;!		 -> NULL(NULL[0]), VarMemory(BANK3[37]), 
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
;!    _INT_ISR->_setRF_ReceiveGO
;!    _setRF_ReceiveGO->i1_RfPointSelect
;!
;!Critical Paths under _main in BANK0
;!
;!    _Switch_Main->_setSw_Main
;!    _setSw_Main->_Sw_DimmerOffFunc
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
;!    _Mcu_Initialization->_TMR0_Set
;!    _MainT->_setBuz
;!    _setSw_Enable->_SwPointSelect
;!    _setRF_Enable->_RF_RxDisable
;!    _RF_RxDisable->_CC2500_WriteCommand
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
;!    _setDimmerLights->_setDimmer_Detect
;!    _setDimmerLights->_setLED
;!    _setLED->_LedPointSelect
;!    _getDimmerLights_Trigger->_DimmerLightsPointSelect
;!    _DimmerLights_Close->_getDimmerLights_StatusFlag
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
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _setRF_Main->_getRxData
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    _RF_Main->_setRF_Main
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
;! (0) _main                                                 0     0      0   71845
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
;!                 _Mcu_Initialization
;!                  _RF_Initialization
;!                            _RF_Main
;!              _Switch_Initialization
;!                        _Switch_Main
;! ---------------------------------------------------------------------------------
;! (1) _Switch_Main                                          0     0      0    8893
;!                         _setSw_Main
;! ---------------------------------------------------------------------------------
;! (2) _setSw_Main                                           5     5      0    8893
;!                                             10 BANK0      5     5      0
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
;! (3) _Sw_DimmerOnFunc                                      1     1      0    2567
;!                                              6 BANK0      1     1      0
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!                     _setRFSW_Status
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (3) _Sw_DimmerOffFunc                                     3     3      0    3465
;!                                              7 BANK0      3     3      0
;!                     _setDelayOff_GO
;!              _setDimmerLights_AdjGo
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!         _setDimmerLights_TriggerAdj
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (3) _Sw_DimmerAdjFunc                                     1     1      0    1180
;!                                              4 BANK0      1     1      0
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
;! (1) _Switch_Initialization                                0     0      0     818
;!                         _TouchPower
;!               _setSw_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setSw_Initialization                                 1     1      0     818
;!                                              4 BANK0      1     1      0
;!                             _setLED
;! ---------------------------------------------------------------------------------
;! (2) _TouchPower                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _RF_Main                                              0     0      0   23560
;!                         _setRF_Main
;! ---------------------------------------------------------------------------------
;! (2) _setRF_Main                                           3     3      0   23560
;!                                              0 BANK2      3     3      0
;!                      _CC2500_RxData
;!                      _CC2500_TxData
;!                _CC2500_WriteCommand
;!                       _RF_RxDisable
;!                      _RfPointSelect
;!                          _getRxData
;!                          _setINT_GO
;! ---------------------------------------------------------------------------------
;! (3) _getRxData                                            2     2      0   22276
;!                                              0 BANK1      1     1      0
;!                      _RfPointSelect
;!            _setControl_Lights_Table
;!                        _setLog_Code
;! ---------------------------------------------------------------------------------
;! (4) _setLog_Code                                          2     2      0    1133
;!                                             10 BANK0      2     2      0
;!                      _RfPointSelect
;!                             _setBuz
;! ---------------------------------------------------------------------------------
;! (4) _setControl_Lights_Table                              1     1      0   21081
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
;! (5) _setRFSW_Control                                      3     3      0    4759
;!                                             10 BANK0      3     3      0
;!                    _RfSWPointSelect
;!                             _setBuz
;!                     _setDelayOff_GO
;!             _setDimmerLights_Switch
;!            _setDimmerLights_Trigger
;!                 _setRF_DimmerLights
;!                       _setSw_Status
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (4) _setDelayOff_GO                                       4     2      2     876
;!                                              3 BANK0      4     2      2
;!                _DelayOffPointSelect
;!                     _DelayTimejudge
;! ---------------------------------------------------------------------------------
;! (5) _DelayTimejudge                                       3     3      0     238
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (5) _setRFSW_AdjControl                                   3     3      0   12448
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
;! (1) _MainT                                                0     0      0    1836
;!                             _setBuz
;!                       _setRF_Enable
;!                       _setSw_Enable
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (2) _setSw_Enable                                         1     1      0     124
;!                                              1 BANK0      1     1      0
;!                      _SwPointSelect
;! ---------------------------------------------------------------------------------
;! (2) _setRF_Enable                                         2     1      1     449
;!                                              5 BANK0      2     1      1
;!                _CC2500_WriteCommand
;!                       _RF_RxDisable
;!                      _RfPointSelect
;! ---------------------------------------------------------------------------------
;! (3) _RF_RxDisable                                         1     1      0     192
;!                                              4 BANK0      1     1      0
;!                _CC2500_WriteCommand
;!                      _RfPointSelect
;!                          _setINT_GO
;! ---------------------------------------------------------------------------------
;! (3) _setINT_GO                                            1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _LED_Main                                             0     0      0     217
;!                        _setLED_Main
;! ---------------------------------------------------------------------------------
;! (2) _setLED_Main                                          3     3      0     217
;!                                              2 BANK0      3     3      0
;!                     _LedPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _LED_Initialization                                   0     0      0     942
;!              _setLED_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setLED_Initialization                                1     1      0     942
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
;! (1) _Flash_Memory_Initialization                          2     2      0    6233
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
;! (1) _DimmerLights_Main                                    0     0      0   10562
;!                 _DimmerLights_Close
;!               _setDimmerLights_Main
;! ---------------------------------------------------------------------------------
;! (2) _setDimmerLights_Main                                 2     2      0   10076
;!                                             65 BANK0      2     2      0
;!            _DimmerLightsPointSelect
;!            _getDimmerLights_Trigger
;!                             _setBuz
;!                    _setDimmerLights
;!                _setDimmerLights_Adj
;! ---------------------------------------------------------------------------------
;! (3) _setDimmerLights_Adj                                  4     3      1    6998
;!                                             61 BANK0      4     3      1
;!            _DimmerLightsPointSelect
;!                    _setPercentValue
;!                 _setRF_DimmerLights
;!                          _setTxData
;! ---------------------------------------------------------------------------------
;! (2) _setPercentValue                                      4     4      0    5747
;!                                             57 BANK0      4     4      0
;!                           ___awtoft
;!                            ___ftdiv
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (5) _setDimmerLights                                      3     2      1    1456
;!                                              4 BANK0      3     2      1
;!            _DimmerLightsPointSelect
;!                   _setDimmer_Detect
;!                             _setLED
;! ---------------------------------------------------------------------------------
;! (3) _setLED                                               2     1      1     787
;!                                              2 BANK0      2     1      1
;!                     _LedPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _LedPointSelect                                       2     2      0      93
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _getDimmerLights_Trigger                              4     4      0     201
;!                                              2 BANK0      4     4      0
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (2) _DimmerLights_Close                                   0     0      0     486
;!         _getDimmerLights_StatusFlag
;!                   _getDimmer_Detect
;!                   _setDimmer_Detect
;! ---------------------------------------------------------------------------------
;! (6) _setDimmer_Detect                                     2     1      1     223
;!                                              2 BANK0      2     1      1
;!                  _DimmerPointSelect
;! ---------------------------------------------------------------------------------
;! (3) _getDimmer_Detect                                     2     2      0      62
;!                                              2 BANK0      2     2      0
;!                  _DimmerPointSelect
;! ---------------------------------------------------------------------------------
;! (7) _DimmerPointSelect                                    2     2      0      31
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _getDimmerLights_StatusFlag                           4     4      0     201
;!                                              2 BANK0      4     4      0
;!            _DimmerLightsPointSelect
;! ---------------------------------------------------------------------------------
;! (1) _DimmerLights_Initialization                          1     1      0   12008
;!                                             66 BANK0      1     1      0
;!     _setDimmerLights_Initialization
;! ---------------------------------------------------------------------------------
;! (2) _setDimmerLights_Initialization                       3     3      0   12008
;!                                             63 BANK0      3     3      0
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
;! (9) ___fttol                                             14    10      4     501
;!                                             43 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (9) ___ftmul                                             16    10      6    2655
;!                                             14 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (9) ___ftdiv                                             16    10      6    2847
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
;! (9) ___awtoft                                             6     3      3    2300
;!                                              8 BANK0      6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (10) ___ftpack                                            8     3      5    2037
;!                                              0 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _DelayOff_Main                                        0     0      0    4245
;!                        _DlyOff_Main
;! ---------------------------------------------------------------------------------
;! (2) _DlyOff_Main                                          3     3      0    4245
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
;! (4) _setTxData                                            4     4      0     192
;!                                              2 BANK0      4     4      0
;!                      _RfPointSelect
;! ---------------------------------------------------------------------------------
;! (4) _RfPointSelect                                        2     2      0      31
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (5) _setSw_Status                                         2     1      1     514
;!                                              1 BANK0      2     1      1
;!                      _SwPointSelect
;! ---------------------------------------------------------------------------------
;! (3) _SwPointSelect                                        1     1      0      62
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _setRF_DimmerLights                                   5     4      1     743
;!                                              0 BANK0      5     4      1
;! ---------------------------------------------------------------------------------
;! (4) _setRFSW_Status                                       2     1      1     579
;!                                              2 BANK0      2     1      1
;!                    _RfSWPointSelect
;! ---------------------------------------------------------------------------------
;! (5) _RfSWPointSelect                                      2     2      0      62
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
;! (5) _DimmerLightsPointSelect                              2     2      0      62
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _setBuz                                               4     2      2    1071
;!                                              6 BANK0      4     2      2
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (4) ___wmul                                               6     2      4     266
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
;! Estimated maximum stack depth 10
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
;!     _setDimmerLights_Main
;!       _DimmerLightsPointSelect
;!       _getDimmerLights_Trigger
;!         _DimmerLightsPointSelect
;!       _setBuz
;!         ___wmul
;!       _setDimmerLights
;!         _DimmerLightsPointSelect
;!         _setDimmer_Detect
;!           _DimmerPointSelect
;!         _setLED
;!           _LedPointSelect
;!       _setDimmerLights_Adj
;!         _DimmerLightsPointSelect
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
;!   _MainT
;!     _setBuz
;!       ___wmul
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
;!     _setTxData
;!       _RfPointSelect
;!   _MainT_Initialization
;!   _Mcu_Initialization
;!     _ADC_Set
;!     _INT_Set
;!     _IOC_Set
;!     _IO_Set
;!     _TMR0_Set
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
;!             _setDimmer_Detect
;!               _DimmerPointSelect
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
;!COMMON               E      5       B       2       78.6%
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
;!BANK1               50      1      50       7      100.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BANK2               50      3      42       9       82.5%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BITBANK3            50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BANK3               50      0      43      11       83.8%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BITBANK4            50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BANK4               50      0       0      13        0.0%
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
;!ABS                  0      0     130      20        0.0%
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
;!DATA                 0      0     130      31        0.0%
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
;;		_Mcu_Initialization
;;		_RF_Initialization
;;		_RF_Main
;;		_Switch_Initialization
;;		_Switch_Main
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
	
l9026:	
;main.c: 9: MainT_Initialization();
	fcall	_MainT_Initialization
	line	10
	
l9028:	
;main.c: 10: Mcu_Initialization();
	fcall	_Mcu_Initialization
	line	11
	
l9030:	
;main.c: 11: Flash_Memory_Initialization();
	fcall	_Flash_Memory_Initialization
	line	12
	
l9032:	
;main.c: 12: LED_Initialization();
	fcall	_LED_Initialization
	line	13
	
l9034:	
;main.c: 13: Buzzer_Initialization();
	fcall	_Buzzer_Initialization
	line	19
	
l9036:	
;main.c: 15: ;;
;main.c: 16: ;;
;main.c: 17: ;;
;main.c: 18: ;;
;main.c: 19: DelayOff_Initialization();
	fcall	_DelayOff_Initialization
	line	21
	
l9038:	
;main.c: 21: DimmerLights_Initialization();
	fcall	_DimmerLights_Initialization
	line	26
	
l9040:	
;main.c: 22: ;;
;main.c: 23: ;;
;main.c: 24: ;;
;main.c: 26: Switch_Initialization();
	fcall	_Switch_Initialization
	line	27
	
l9042:	
;main.c: 27: RF_Initialization();
	fcall	_RF_Initialization
	line	28
	
l9044:	
;main.c: 28: CC2500_PowerOnInitial();
	fcall	_CC2500_PowerOnInitial
	goto	l9046
	line	30
;main.c: 30: while(1)
	
l1275:	
	line	32
	
l9046:	
;main.c: 31: {
;main.c: 32: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9151
	goto	u9150
u9151:
	goto	l9050
u9150:
	line	59
	
l9048:	
;main.c: 33: {
;main.c: 35: ;;
;main.c: 39: ;;
;main.c: 43: ;;
;main.c: 47: ;;
;main.c: 59: Buzzer_Main();
	fcall	_Buzzer_Main
	goto	l9050
	line	61
	
l1276:	
	line	63
	
l9050:	
;main.c: 61: }
;main.c: 63: if(TMain->T0_Timerout)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9161
	goto	u9160
u9161:
	goto	l9046
u9160:
	line	65
	
l9052:	
;main.c: 64: {
;main.c: 65: TMain->T0_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	66
	
l9054:	
;main.c: 66: MainT();
	fcall	_MainT
	line	67
	
l9056:	
;main.c: 67: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9171
	goto	u9170
u9171:
	goto	l9046
u9170:
	line	69
	
l9058:	
;main.c: 68: {
;main.c: 69: Flash_Memory_Main();
	fcall	_Flash_Memory_Main
	line	71
;main.c: 71: LED_Main();
	fcall	_LED_Main
	line	79
;main.c: 73: ;;
;main.c: 74: ;;
;main.c: 75: ;;
;main.c: 76: ;;
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
	
l9060:	
;main.c: 85: DelayOff_Main();
	fcall	_DelayOff_Main
	goto	l9046
	line	86
	
l1278:	
	goto	l9046
	line	87
	
l1277:	
	goto	l9046
	line	88
	
l1279:	
	line	30
	goto	l9046
	
l1280:	
	line	89
	
l1281:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
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
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	62
global __ptext1
__ptext1:	;psect for function _Switch_Main
psect	text1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	62
	global	__size_of_Switch_Main
	__size_of_Switch_Main	equ	__end_of_Switch_Main-_Switch_Main
	
_Switch_Main:	
;incstack = 0
	opt	stack 7
; Regs used in _Switch_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	65
	
l8926:	
;Switch_B1.c: 65: setSw_Main(1);
	movlw	(01h)
	fcall	_setSw_Main
	line	69
;Switch_B1.c: 69: setSw_Main(2);
	movlw	(02h)
	fcall	_setSw_Main
	line	76
	
l2544:	
	return
	opt stack 0
GLOBAL	__end_of_Switch_Main
	__end_of_Switch_Main:
	signat	_Switch_Main,88
	global	_setSw_Main

;; *************** function _setSw_Main *****************
;; Defined at:
;;		line 136 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   14[BANK0 ] unsigned char 
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
psect	text2,local,class=CODE,delta=2,merge=1
	line	136
global __ptext2
__ptext2:	;psect for function _setSw_Main
psect	text2
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	136
	global	__size_of_setSw_Main
	__size_of_setSw_Main	equ	__end_of_setSw_Main-_setSw_Main
	
_setSw_Main:	
;incstack = 0
	opt	stack 7
; Regs used in _setSw_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setSw_Main@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Main@sw)
	line	138
	
l8670:	
;Switch_B1.c: 138: if(Sw->Enable)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	btfss	indf1,0
	goto	u8741
	goto	u8740
u8741:
	goto	l2589
u8740:
	line	140
	
l8672:	
;Switch_B1.c: 139: {
;Switch_B1.c: 140: SwPointSelect(sw);
	movf	(setSw_Main@sw),w
	fcall	_SwPointSelect
	line	157
	
l8674:	
;Switch_B1.c: 157: if(sw == 1)
	movlb 0	; select bank0
	movf	(setSw_Main@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u8751
	goto	u8750
u8751:
	goto	l8684
u8750:
	line	159
	
l8676:	
;Switch_B1.c: 158: {
;Switch_B1.c: 159: Sw->Touch=(RA0 || RB1)?1:0;
	clrf	(_setSw_Main$3642)
	incf	(_setSw_Main$3642),f
	btfsc	(96/8),(96)&7	;volatile
	goto	u8761
	goto	u8760
u8761:
	goto	l8682
u8760:
	
l8678:	
	btfsc	(105/8),(105)&7	;volatile
	goto	u8771
	goto	u8770
u8771:
	goto	l8682
u8770:
	
l8680:	
	clrf	(_setSw_Main$3642)
	goto	l8682
	
l2569:	
	
l8682:	
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	movf	(_setSw_Main$3642),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	160
;Switch_B1.c: 160: }
	goto	l8694
	line	161
	
l2567:	
	
l8684:	
;Switch_B1.c: 161: else if(sw == 2)
	movf	(setSw_Main@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u8781
	goto	u8780
u8781:
	goto	l8694
u8780:
	line	163
	
l8686:	
;Switch_B1.c: 162: {
;Switch_B1.c: 163: Sw->Touch=(RA6 || RA4)?1:0;
	clrf	(_setSw_Main$3643)
	incf	(_setSw_Main$3643),f
	btfsc	(102/8),(102)&7	;volatile
	goto	u8791
	goto	u8790
u8791:
	goto	l8692
u8790:
	
l8688:	
	btfsc	(100/8),(100)&7	;volatile
	goto	u8801
	goto	u8800
u8801:
	goto	l8692
u8800:
	
l8690:	
	clrf	(_setSw_Main$3643)
	goto	l8692
	
l2573:	
	
l8692:	
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	movf	(_setSw_Main$3643),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	goto	l8694
	line	164
	
l2571:	
	goto	l8694
	line	172
	
l2570:	
	
l8694:	
;Switch_B1.c: 164: }
;Switch_B1.c: 172: if(Sw->Touch)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	btfss	indf1,1
	goto	u8811
	goto	u8810
u8811:
	goto	l8740
u8810:
	line	174
	
l8696:	
;Switch_B1.c: 173: {
;Switch_B1.c: 174: if(!Sw->Debounce)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	btfsc	indf1,2
	goto	u8821
	goto	u8820
u8821:
	goto	l8710
u8820:
	line	176
	
l8698:	
;Switch_B1.c: 175: {
;Switch_B1.c: 176: Sw->DebounceTime++;
	movlw	(01h)
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,02h
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	177
	
l8700:	
;Switch_B1.c: 177: if(Sw->DebounceTime >= 5)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,02h
	movlw	(05h)
	subwf	indf1,w
	skipc
	goto	u8831
	goto	u8830
u8831:
	goto	l2589
u8830:
	line	179
	
l8702:	
;Switch_B1.c: 178: {
;Switch_B1.c: 179: Sw->DebounceTime=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,02h
	clrf	indf1
	line	180
	
l8704:	
;Switch_B1.c: 180: Sw->Debounce=1;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bsf	indf1,2
	line	181
	
l8706:	
;Switch_B1.c: 181: setBuz(1,100);
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	184
	
l8708:	
;Switch_B1.c: 184: Sw_DimmerOnFunc(sw);
	movlb 0	; select bank0
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerOnFunc
	goto	l2589
	line	187
	
l2576:	
	line	188
;Switch_B1.c: 187: }
;Switch_B1.c: 188: }
	goto	l2589
	line	189
	
l2575:	
	line	191
	
l8710:	
;Switch_B1.c: 189: else
;Switch_B1.c: 190: {
;Switch_B1.c: 191: if(!Sw->Hold1)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	btfsc	indf1,3
	goto	u8841
	goto	u8840
u8841:
	goto	l8720
u8840:
	line	193
	
l8712:	
;Switch_B1.c: 192: {
;Switch_B1.c: 193: Sw->Hold1Time++;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,03h
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	194
	
l8714:	
;Switch_B1.c: 194: if(Sw->Hold1Time >= 150)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,03h
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
	goto	u8851
	goto	u8850
u8851:
	goto	l2589
u8850:
	line	196
	
l8716:	
;Switch_B1.c: 195: {
;Switch_B1.c: 196: Sw->Hold1Time=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,03h
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	197
;Switch_B1.c: 197: Sw->Hold1=1;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bsf	indf1,3
	line	200
	
l8718:	
;Switch_B1.c: 200: Sw_DimmerAdjFunc(sw);
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerAdjFunc
	goto	l2589
	line	203
	
l2579:	
	line	204
;Switch_B1.c: 203: }
;Switch_B1.c: 204: }
	goto	l2589
	line	205
	
l2578:	
	line	207
	
l8720:	
;Switch_B1.c: 205: else
;Switch_B1.c: 206: {
;Switch_B1.c: 207: if(!Sw->Hold2)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	btfsc	indf1,4
	goto	u8861
	goto	u8860
u8861:
	goto	l8730
u8860:
	line	209
	
l8722:	
;Switch_B1.c: 208: {
;Switch_B1.c: 209: Sw->Hold2Time++;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,05h
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	210
	
l8724:	
;Switch_B1.c: 210: if(Sw->Hold2Time >= 150)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,05h
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
	goto	u8871
	goto	u8870
u8871:
	goto	l2589
u8870:
	line	212
	
l8726:	
;Switch_B1.c: 211: {
;Switch_B1.c: 212: Sw->Hold2Time=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,05h
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	213
;Switch_B1.c: 213: Sw->Hold2=1;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bsf	indf1,4
	line	215
	
l8728:	
;Switch_B1.c: 215: setRF_Learn(1,1);
	clrf	(setRF_Learn@command)
	incf	(setRF_Learn@command),f
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l2589
	line	223
	
l2582:	
	line	224
;Switch_B1.c: 223: }
;Switch_B1.c: 224: }
	goto	l2589
	line	225
	
l2581:	
	line	227
	
l8730:	
;Switch_B1.c: 225: else
;Switch_B1.c: 226: {
;Switch_B1.c: 227: if(!Sw->Hold3)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	btfsc	indf1,5
	goto	u8881
	goto	u8880
u8881:
	goto	l2589
u8880:
	line	229
	
l8732:	
;Switch_B1.c: 228: {
;Switch_B1.c: 229: Sw->Hold3Time++;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,07h
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	230
	
l8734:	
;Switch_B1.c: 230: if(Sw->Hold3Time >= 300)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,07h
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
	goto	u8891
	goto	u8890
u8891:
	goto	l2589
u8890:
	line	232
	
l8736:	
;Switch_B1.c: 231: {
;Switch_B1.c: 232: Sw->Hold3Time=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,07h
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	233
;Switch_B1.c: 233: Sw->Hold3=1;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bsf	indf1,5
	line	235
	
l8738:	
;Switch_B1.c: 235: setRF_Learn(1,0);
	clrf	(setRF_Learn@command)
	movlw	(01h)
	fcall	_setRF_Learn
	goto	l2589
	line	237
	
l2585:	
	goto	l2589
	line	238
	
l2584:	
	goto	l2589
	line	239
	
l2583:	
	goto	l2589
	line	240
	
l2580:	
	goto	l2589
	line	241
	
l2577:	
	line	242
;Switch_B1.c: 237: }
;Switch_B1.c: 238: }
;Switch_B1.c: 239: }
;Switch_B1.c: 240: }
;Switch_B1.c: 241: }
;Switch_B1.c: 242: }
	goto	l2589
	line	243
	
l2574:	
	line	245
	
l8740:	
;Switch_B1.c: 243: else
;Switch_B1.c: 244: {
;Switch_B1.c: 245: if(Sw->Debounce)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	btfss	indf1,2
	goto	u8901
	goto	u8900
u8901:
	goto	l2589
u8900:
	line	247
	
l8742:	
;Switch_B1.c: 246: {
;Switch_B1.c: 247: Sw->DebounceTime++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_setSw_Main+0)+0
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,02h
	movf	(??_setSw_Main+0)+0,w
	addwf	indf1,f
	line	248
	
l8744:	
;Switch_B1.c: 248: if(Sw->DebounceTime >= 5)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,02h
	movlw	(05h)
	subwf	indf1,w
	skipc
	goto	u8911
	goto	u8910
u8911:
	goto	l2589
u8910:
	line	250
	
l8746:	
;Switch_B1.c: 249: {
;Switch_B1.c: 250: Sw->DebounceTime=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,02h
	clrf	indf1
	line	251
	
l8748:	
;Switch_B1.c: 251: Sw->Debounce=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bcf	indf1,2
	line	252
	
l8750:	
;Switch_B1.c: 252: Sw->Hold1Time=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,03h
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	253
	
l8752:	
;Switch_B1.c: 253: Sw->Hold1=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bcf	indf1,3
	line	254
	
l8754:	
;Switch_B1.c: 254: Sw->Hold2Time=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,05h
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	255
	
l8756:	
;Switch_B1.c: 255: Sw->Hold2=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bcf	indf1,4
	line	256
	
l8758:	
;Switch_B1.c: 256: Sw->Hold3Time=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,07h
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	257
	
l8760:	
;Switch_B1.c: 257: Sw->Hold3=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bcf	indf1,5
	line	258
	
l8762:	
;Switch_B1.c: 258: setRF_Learn(1,0);
	clrf	(setRF_Learn@command)
	movlw	(01h)
	fcall	_setRF_Learn
	line	261
	
l8764:	
;Switch_B1.c: 261: Sw_DimmerOffFunc(sw);
	movlb 0	; select bank0
	movf	(setSw_Main@sw),w
	fcall	_Sw_DimmerOffFunc
	goto	l2589
	line	264
	
l2588:	
	goto	l2589
	line	265
	
l2587:	
	goto	l2589
	line	266
	
l2586:	
	goto	l2589
	line	267
	
l2566:	
	line	268
	
l2589:	
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
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	31
global __ptext3
__ptext3:	;psect for function _setRF_Learn
psect	text3
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
	
l8214:	
;RF_Control_B1.c: 33: RfPointSelect(rf);
	movf	(setRF_Learn@rf),w
	fcall	_RfPointSelect
	line	34
	
l8216:	
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
	
l2271:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Learn
	__end_of_setRF_Learn:
	signat	_setRF_Learn,8312
	global	_Sw_DimmerOnFunc

;; *************** function _Sw_DimmerOnFunc *****************
;; Defined at:
;;		line 270 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
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
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	270
global __ptext4
__ptext4:	;psect for function _Sw_DimmerOnFunc
psect	text4
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	270
	global	__size_of_Sw_DimmerOnFunc
	__size_of_Sw_DimmerOnFunc	equ	__end_of_Sw_DimmerOnFunc-_Sw_DimmerOnFunc
	
_Sw_DimmerOnFunc:	
;incstack = 0
	opt	stack 7
; Regs used in _Sw_DimmerOnFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerOnFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerOnFunc@sw)
	line	272
	
l8276:	
;Switch_B1.c: 272: Sw->Flag=1;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bsf	indf1,7
	line	273
;Switch_B1.c: 273: if(!Sw->Status)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	btfsc	indf1,6
	goto	u8221
	goto	u8220
u8221:
	goto	l8290
u8220:
	line	275
	
l8278:	
;Switch_B1.c: 274: {
;Switch_B1.c: 275: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bsf	indf1,6
	line	276
	
l8280:	
;Switch_B1.c: 276: setRFSW_Status(sw,1);
	clrf	(setRFSW_Status@command)
	incf	(setRFSW_Status@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRFSW_Status
	line	278
	
l8282:	
;Switch_B1.c: 278: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	279
	
l8284:	
;Switch_B1.c: 279: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	incf	(setDimmerLights_Switch@command),f
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	281
	
l8286:	
;Switch_B1.c: 281: setRF_DimmerLights(sw,Sw->Status);
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	movlw	0
	btfsc	indf1,6
	movlw	1
	movlb 0	; select bank0
	movwf	(setRF_DimmerLights@on)
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRF_DimmerLights
	line	282
	
l8288:	
;Switch_B1.c: 282: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	283
;Switch_B1.c: 283: }
	goto	l2594
	line	284
	
l2592:	
	line	286
	
l8290:	
;Switch_B1.c: 284: else
;Switch_B1.c: 285: {
;Switch_B1.c: 286: Sw->Status=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bcf	indf1,6
	line	287
	
l8292:	
;Switch_B1.c: 287: setRFSW_Status(sw,Sw->Status);
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	movlw	0
	btfsc	indf1,6
	movlw	1
	movlb 0	; select bank0
	movwf	(setRFSW_Status@command)
	movf	(Sw_DimmerOnFunc@sw),w
	fcall	_setRFSW_Status
	goto	l2594
	line	288
	
l2593:	
	line	289
	
l2594:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerOnFunc
	__end_of_Sw_DimmerOnFunc:
	signat	_Sw_DimmerOnFunc,4216
	global	_Sw_DimmerOffFunc

;; *************** function _Sw_DimmerOffFunc *****************
;; Defined at:
;;		line 291 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
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
psect	text5,local,class=CODE,delta=2,merge=1
	line	291
global __ptext5
__ptext5:	;psect for function _Sw_DimmerOffFunc
psect	text5
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	291
	global	__size_of_Sw_DimmerOffFunc
	__size_of_Sw_DimmerOffFunc	equ	__end_of_Sw_DimmerOffFunc-_Sw_DimmerOffFunc
	
_Sw_DimmerOffFunc:	
;incstack = 0
	opt	stack 7
; Regs used in _Sw_DimmerOffFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerOffFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerOffFunc@sw)
	line	293
	
l8304:	
;Switch_B1.c: 293: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	btfss	indf1,7
	goto	u8241
	goto	u8240
u8241:
	goto	l2601
u8240:
	line	295
	
l8306:	
;Switch_B1.c: 294: {
;Switch_B1.c: 295: Sw->Flag=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bcf	indf1,7
	line	296
;Switch_B1.c: 296: if(Sw->Status)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	btfss	indf1,6
	goto	u8251
	goto	u8250
u8251:
	goto	l8322
u8250:
	line	298
	
l8308:	
;Switch_B1.c: 297: {
;Switch_B1.c: 298: if(Sw->Adj)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,01h
	btfss	indf1,0
	goto	u8261
	goto	u8260
u8261:
	goto	l2601
u8260:
	line	300
	
l8310:	
;Switch_B1.c: 299: {
;Switch_B1.c: 300: Sw->Adj=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,01h
	bcf	indf1,0
	line	301
	
l8312:	
;Switch_B1.c: 301: setDimmerLights_TriggerAdj(sw,1);
	clrf	(setDimmerLights_TriggerAdj@command)
	incf	(setDimmerLights_TriggerAdj@command),f
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	302
	
l8314:	
;Switch_B1.c: 302: setDimmerLights_AdjGo(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_AdjGo@command)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	line	304
	
l8316:	
;Switch_B1.c: 304: Product->Data[17]=Product->Data[26+sw];
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
	line	305
	
l8318:	
;Switch_B1.c: 305: setRF_DimmerLights(sw,Sw->Status);
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	movlw	0
	btfsc	indf1,6
	movlw	1
	movwf	(setRF_DimmerLights@on)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setRF_DimmerLights
	line	306
	
l8320:	
;Switch_B1.c: 306: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l2601
	line	308
	
l2599:	
	line	309
;Switch_B1.c: 308: }
;Switch_B1.c: 309: }
	goto	l2601
	line	310
	
l2598:	
	line	312
	
l8322:	
;Switch_B1.c: 310: else
;Switch_B1.c: 311: {
;Switch_B1.c: 312: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_Trigger
	line	313
;Switch_B1.c: 313: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDimmerLights_Switch
	line	315
;Switch_B1.c: 315: setRF_DimmerLights(sw,Sw->Status);
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	movlw	0
	btfsc	indf1,6
	movlw	1
	movlb 0	; select bank0
	movwf	(setRF_DimmerLights@on)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setRF_DimmerLights
	line	316
;Switch_B1.c: 316: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(setDelayOff_GO@command)
	clrf	(setDelayOff_GO@value)
	movf	(Sw_DimmerOffFunc@sw),w
	fcall	_setDelayOff_GO
	line	317
;Switch_B1.c: 317: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	goto	l2601
	line	318
	
l2600:	
	goto	l2601
	line	319
	
l2597:	
	line	320
	
l2601:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerOffFunc
	__end_of_Sw_DimmerOffFunc:
	signat	_Sw_DimmerOffFunc,4216
	global	_Sw_DimmerAdjFunc

;; *************** function _Sw_DimmerAdjFunc *****************
;; Defined at:
;;		line 322 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
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
psect	text6,local,class=CODE,delta=2,merge=1
	line	322
global __ptext6
__ptext6:	;psect for function _Sw_DimmerAdjFunc
psect	text6
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	322
	global	__size_of_Sw_DimmerAdjFunc
	__size_of_Sw_DimmerAdjFunc	equ	__end_of_Sw_DimmerAdjFunc-_Sw_DimmerAdjFunc
	
_Sw_DimmerAdjFunc:	
;incstack = 0
	opt	stack 7
; Regs used in _Sw_DimmerAdjFunc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;Sw_DimmerAdjFunc@sw stored from wreg
	movlb 0	; select bank0
	movwf	(Sw_DimmerAdjFunc@sw)
	line	324
	
l8294:	
;Switch_B1.c: 324: if(Sw->Flag)
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	btfss	indf1,7
	goto	u8231
	goto	u8230
u8231:
	goto	l2605
u8230:
	line	326
	
l8296:	
;Switch_B1.c: 325: {
;Switch_B1.c: 326: Sw->Adj=1;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h
	addfsr	fsr1,01h
	bsf	indf1,0
	line	327
;Switch_B1.c: 327: Sw->Status=1;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bsf	indf1,6
	line	328
	
l8298:	
;Switch_B1.c: 328: setRFSW_Status(sw,1);
	clrf	(setRFSW_Status@command)
	incf	(setRFSW_Status@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setRFSW_Status
	line	330
	
l8300:	
;Switch_B1.c: 330: setDimmerLights_TriggerAdj(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_TriggerAdj@command)
	incf	(setDimmerLights_TriggerAdj@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setDimmerLights_TriggerAdj
	line	331
	
l8302:	
;Switch_B1.c: 331: setDimmerLights_AdjGo(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_AdjGo@command)
	incf	(setDimmerLights_AdjGo@command),f
	movf	(Sw_DimmerAdjFunc@sw),w
	fcall	_setDimmerLights_AdjGo
	goto	l2605
	line	333
	
l2604:	
	line	334
	
l2605:	
	return
	opt stack 0
GLOBAL	__end_of_Sw_DimmerAdjFunc
	__end_of_Sw_DimmerAdjFunc:
	signat	_Sw_DimmerAdjFunc,4216
	global	_setDimmerLights_TriggerAdj

;; *************** function _setDimmerLights_TriggerAdj *****************
;; Defined at:
;;		line 448 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	448
global __ptext7
__ptext7:	;psect for function _setDimmerLights_TriggerAdj
psect	text7
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	448
	global	__size_of_setDimmerLights_TriggerAdj
	__size_of_setDimmerLights_TriggerAdj	equ	__end_of_setDimmerLights_TriggerAdj-_setDimmerLights_TriggerAdj
	
_setDimmerLights_TriggerAdj:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_TriggerAdj: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_TriggerAdj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_TriggerAdj@lights)
	line	450
	
l7930:	
;Dimmer_B1.c: 450: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_TriggerAdj@lights),w
	fcall	_DimmerLightsPointSelect
	line	451
	
l7932:	
;Dimmer_B1.c: 451: DimmerLights->TriggerAdj=command;
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
	line	452
	
l912:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_TriggerAdj
	__end_of_setDimmerLights_TriggerAdj:
	signat	_setDimmerLights_TriggerAdj,8312
	global	_setDimmerLights_AdjGo

;; *************** function _setDimmerLights_AdjGo *****************
;; Defined at:
;;		line 438 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text8,local,class=CODE,delta=2,merge=1
	line	438
global __ptext8
__ptext8:	;psect for function _setDimmerLights_AdjGo
psect	text8
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	438
	global	__size_of_setDimmerLights_AdjGo
	__size_of_setDimmerLights_AdjGo	equ	__end_of_setDimmerLights_AdjGo-_setDimmerLights_AdjGo
	
_setDimmerLights_AdjGo:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_AdjGo: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_AdjGo@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjGo@lights)
	line	440
	
l7926:	
;Dimmer_B1.c: 440: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjGo@lights),w
	fcall	_DimmerLightsPointSelect
	line	441
	
l7928:	
;Dimmer_B1.c: 441: DimmerLights->AdjGo=command;
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
	line	442
	
l906:	
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
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	38
global __ptext9
__ptext9:	;psect for function _Switch_Initialization
psect	text9
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	38
	global	__size_of_Switch_Initialization
	__size_of_Switch_Initialization	equ	__end_of_Switch_Initialization-_Switch_Initialization
	
_Switch_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _Switch_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	40
	
l8876:	
;Switch_B1.c: 40: TouchPower();
	fcall	_TouchPower
	line	42
	
l8878:	
;Switch_B1.c: 42: WPUB1=0;
	movlb 4	; select bank4
	bcf	(4201/8)^0200h,(4201)&7	;volatile
	line	51
	
l8880:	
;Switch_B1.c: 51: setSw_Initialization(1);
	movlw	(01h)
	fcall	_setSw_Initialization
	line	54
	
l8882:	
;Switch_B1.c: 54: setSw_Initialization(2);
	movlw	(02h)
	fcall	_setSw_Initialization
	line	60
	
l2541:	
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
psect	text10,local,class=CODE,delta=2,merge=1
	line	78
global __ptext10
__ptext10:	;psect for function _setSw_Initialization
psect	text10
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
	
l8668:	
;Switch_B1.c: 80: setLED(sw,1);
	clrf	(setLED@command)
	incf	(setLED@command),f
	movf	(setSw_Initialization@sw),w
	fcall	_setLED
	line	84
	
l2547:	
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
psect	text11,local,class=CODE,delta=2,merge=1
	line	9
global __ptext11
__ptext11:	;psect for function _TouchPower
psect	text11
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	9
	global	__size_of_TouchPower
	__size_of_TouchPower	equ	__end_of_TouchPower-_TouchPower
	
_TouchPower:	
;incstack = 0
	opt	stack 10
; Regs used in _TouchPower: []
	line	11
	
l8666:	
;Switch_B1.c: 11: while(RC5 == 0)
	goto	l2529
	
l2530:	
	line	12
;Switch_B1.c: 12: RC5=1;
	bsf	(117/8),(117)&7	;volatile
	
l2529:	
	line	11
	movlb 0	; select bank0
	btfss	(117/8),(117)&7	;volatile
	goto	u8731
	goto	u8730
u8731:
	goto	l2530
u8730:
	goto	l2532
	
l2531:	
	line	13
	
l2532:	
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
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	24
global __ptext12
__ptext12:	;psect for function _RF_Main
psect	text12
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	24
	global	__size_of_RF_Main
	__size_of_RF_Main	equ	__end_of_RF_Main-_RF_Main
	
_RF_Main:	
;incstack = 0
	opt	stack 2
; Regs used in _RF_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	27
	
l8928:	
;RF_Control_B1.c: 27: setRF_Main(1);
	movlw	(01h)
	fcall	_setRF_Main
	line	29
	
l2268:	
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
;;  rf              1    1[BANK2 ] unsigned char 
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
;;      Locals:         0       0       0       2       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       1       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       3       0       0       0       0       0       0       0       0       0       0
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
psect	text13,local,class=CODE,delta=2,merge=1
	line	58
global __ptext13
__ptext13:	;psect for function _setRF_Main
psect	text13
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	58
	global	__size_of_setRF_Main
	__size_of_setRF_Main	equ	__end_of_setRF_Main-_setRF_Main
	
_setRF_Main:	
;incstack = 0
	opt	stack 2
; Regs used in _setRF_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_Main@rf stored from wreg
	movlb 2	; select bank2
	movwf	(setRF_Main@rf)^0100h
	line	60
	
l8608:	
;RF_Control_B1.c: 60: RfPointSelect(rf);
	movf	(setRF_Main@rf)^0100h,w
	fcall	_RfPointSelect
	line	61
	
l8610:	
;RF_Control_B1.c: 61: if(RF->Enable)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u8611
	goto	u8610
u8611:
	goto	l2296
u8610:
	line	68
	
l8612:	
;RF_Control_B1.c: 62: {
;RF_Control_B1.c: 68: RF->Key=((RA0 || RB1 || RA6 || RA4 ) && RF->Learn == 0)?1:0;
	movlb 2	; select bank2
	clrf	(_setRF_Main$3353)^0100h
	
l8614:	
	movlb 0	; select bank0
	btfsc	(96/8),(96)&7	;volatile
	goto	u8621
	goto	u8620
u8621:
	goto	l8622
u8620:
	
l8616:	
	btfsc	(105/8),(105)&7	;volatile
	goto	u8631
	goto	u8630
u8631:
	goto	l8622
u8630:
	
l8618:	
	btfsc	(102/8),(102)&7	;volatile
	goto	u8641
	goto	u8640
u8641:
	goto	l8622
u8640:
	
l8620:	
	btfss	(100/8),(100)&7	;volatile
	goto	u8651
	goto	u8650
u8651:
	goto	l8626
u8650:
	goto	l8622
	
l7274:	
	
l8622:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,6
	goto	u8661
	goto	u8660
u8661:
	goto	l8626
u8660:
	
l8624:	
	movlb 2	; select bank2
	clrf	(_setRF_Main$3353)^0100h
	incf	(_setRF_Main$3353)^0100h,f
	goto	l8626
	
l2285:	
	
l8626:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 2	; select bank2
	movf	(_setRF_Main$3353)^0100h,w
	bcf	indf1,7
	skipz
	bsf	indf1,7
	line	75
;RF_Control_B1.c: 75: if(RF->Key)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,7
	goto	u8671
	goto	u8670
u8671:
	goto	l8630
u8670:
	line	77
	
l8628:	
;RF_Control_B1.c: 76: {
;RF_Control_B1.c: 77: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	78
;RF_Control_B1.c: 78: }
	goto	l2296
	line	79
	
l2286:	
	line	81
	
l8630:	
;RF_Control_B1.c: 79: else
;RF_Control_B1.c: 80: {
;RF_Control_B1.c: 81: if(RF->ReceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u8681
	goto	u8680
u8681:
	goto	l8638
u8680:
	line	83
	
l8632:	
;RF_Control_B1.c: 82: {
;RF_Control_B1.c: 83: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	84
	
l8634:	
;RF_Control_B1.c: 84: CC2500_RxData();
	fcall	_CC2500_RxData
	line	90
	
l8636:	
;RF_Control_B1.c: 90: getRxData(1);
	movlw	(01h)
	fcall	_getRxData
	line	93
;RF_Control_B1.c: 93: }
	goto	l2296
	line	94
	
l2288:	
	line	96
	
l8638:	
;RF_Control_B1.c: 94: else
;RF_Control_B1.c: 95: {
;RF_Control_B1.c: 96: if(RF->TransceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u8691
	goto	u8690
u8691:
	goto	l8656
u8690:
	line	98
	
l8640:	
;RF_Control_B1.c: 97: {
;RF_Control_B1.c: 98: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	line	99
	
l8642:	
;RF_Control_B1.c: 99: if(RF->Debounce == 0)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,5
	goto	u8701
	goto	u8700
u8701:
	goto	l8652
u8700:
	line	101
	
l8644:	
;RF_Control_B1.c: 100: {
;RF_Control_B1.c: 101: RF->DebounceTime++;
	movlw	(01h)
	movlb 2	; select bank2
	movwf	(??_setRF_Main+0)^0100h+0
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setRF_Main+0)^0100h+0,w
	addwf	indf1,f
	line	102
	
l8646:	
;RF_Control_B1.c: 102: if(RF->DebounceTime == 25)
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	019h&0ffh
	skipz
	goto	u8711
	goto	u8710
u8711:
	goto	l2296
u8710:
	line	104
	
l8648:	
;RF_Control_B1.c: 103: {
;RF_Control_B1.c: 104: RF->DebounceTime=0;
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	105
	
l8650:	
;RF_Control_B1.c: 105: RF->Debounce=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,5
	goto	l2296
	line	106
	
l2292:	
	line	107
;RF_Control_B1.c: 106: }
;RF_Control_B1.c: 107: }
	goto	l2296
	line	108
	
l2291:	
	line	110
	
l8652:	
;RF_Control_B1.c: 108: else
;RF_Control_B1.c: 109: {
;RF_Control_B1.c: 110: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	111
;RF_Control_B1.c: 111: RF->TransceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	112
	
l8654:	
;RF_Control_B1.c: 112: CC2500_TxData();
	fcall	_CC2500_TxData
	goto	l2296
	line	113
	
l2293:	
	line	114
;RF_Control_B1.c: 113: }
;RF_Control_B1.c: 114: }
	goto	l2296
	line	115
	
l2290:	
	line	117
	
l8656:	
;RF_Control_B1.c: 115: else
;RF_Control_B1.c: 116: {
;RF_Control_B1.c: 117: if(RF->RxStatus == 0 && 1)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u8721
	goto	u8720
u8721:
	goto	l2296
u8720:
	line	119
	
l8658:	
;RF_Control_B1.c: 118: {
;RF_Control_B1.c: 119: RF->RxStatus=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	120
	
l8660:	
;RF_Control_B1.c: 120: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	121
	
l8662:	
;RF_Control_B1.c: 121: CC2500_WriteCommand(0x34);
	movlw	(034h)
	fcall	_CC2500_WriteCommand
	line	122
	
l8664:	
;RF_Control_B1.c: 122: setINT_GO(1);
	movlw	(01h)
	fcall	_setINT_GO
	goto	l2296
	line	123
	
l2295:	
	goto	l2296
	line	124
	
l2294:	
	goto	l2296
	line	125
	
l2289:	
	goto	l2296
	line	126
	
l2287:	
	goto	l2296
	line	127
	
l2283:	
	line	128
	
l2296:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Main
	__end_of_setRF_Main:
	signat	_setRF_Main,4216
	global	_getRxData

;; *************** function _getRxData *****************
;; Defined at:
;;		line 206 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text14,local,class=CODE,delta=2,merge=1
	line	206
global __ptext14
__ptext14:	;psect for function _getRxData
psect	text14
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	206
	global	__size_of_getRxData
	__size_of_getRxData	equ	__end_of_getRxData-_getRxData
	
_getRxData:	
;incstack = 0
	opt	stack 2
; Regs used in _getRxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;getRxData@rf stored from wreg
	movlb 1	; select bank1
	movwf	(getRxData@rf)^080h
	line	209
	
l8236:	
;RF_Control_B1.c: 208: unsigned char i;
;RF_Control_B1.c: 209: RfPointSelect(rf);
	movf	(getRxData@rf)^080h,w
	fcall	_RfPointSelect
	line	210
	
l8238:	
;RF_Control_B1.c: 210: if(RF->Learn)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,6
	goto	u8111
	goto	u8110
u8111:
	goto	l8246
u8110:
	line	212
	
l8240:	
;RF_Control_B1.c: 211: {
;RF_Control_B1.c: 212: if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u8121
	goto	u8120
u8121:
	goto	l2328
u8120:
	
l8242:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	064h&0ffh
	skipz
	goto	u8131
	goto	u8130
u8131:
	goto	l2328
u8130:
	line	214
	
l8244:	
;RF_Control_B1.c: 213: {
;RF_Control_B1.c: 214: setLog_Code(1);
	movlw	(01h)
	fcall	_setLog_Code
	goto	l2328
	line	215
	
l2318:	
	line	216
;RF_Control_B1.c: 215: }
;RF_Control_B1.c: 216: }
	goto	l2328
	line	217
	
l2317:	
	line	219
	
l8246:	
;RF_Control_B1.c: 217: else
;RF_Control_B1.c: 218: {
;RF_Control_B1.c: 219: if(RF_Data[0] == 0x00 && RF_Data[1] == 0x02)
	movlb 1	; select bank1
	movf	(_RF_Data)^080h,f
	skipz
	goto	u8141
	goto	u8140
u8141:
	goto	l2328
u8140:
	
l8248:	
	movf	0+(_RF_Data)^080h+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u8151
	goto	u8150
u8151:
	goto	l2328
u8150:
	line	221
	
l8250:	
;RF_Control_B1.c: 220: {
;RF_Control_B1.c: 221: if(RF_Data[12] == 0xff && RF_Data[13] == 0xff && RF_Data[14] == 0xff)
	movf	0+(_RF_Data)^080h+0Ch,w
	xorlw	0FFh&0ffh
	skipz
	goto	u8161
	goto	u8160
u8161:
	goto	l8258
u8160:
	
l8252:	
	movf	0+(_RF_Data)^080h+0Dh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u8171
	goto	u8170
u8171:
	goto	l8258
u8170:
	
l8254:	
	movf	0+(_RF_Data)^080h+0Eh,w
	xorlw	0FFh&0ffh
	skipz
	goto	u8181
	goto	u8180
u8181:
	goto	l8258
u8180:
	line	223
	
l8256:	
;RF_Control_B1.c: 222: {
;RF_Control_B1.c: 223: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	224
;RF_Control_B1.c: 224: }
	goto	l2328
	line	225
	
l2321:	
	line	227
	
l8258:	
;RF_Control_B1.c: 225: else
;RF_Control_B1.c: 226: {
;RF_Control_B1.c: 227: if(RF_Data[12] == Product->Data[12] && RF_Data[13] == Product->Data[13] && RF_Data[14] == Product->Data[14])
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
	goto	l2328
u8190:
	
l8260:	
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
	goto	l2328
u8200:
	
l8262:	
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
	goto	l2328
u8210:
	line	229
	
l8264:	
;RF_Control_B1.c: 228: {
;RF_Control_B1.c: 229: setControl_Lights_Table(1);
	movlw	(01h)
	fcall	_setControl_Lights_Table
	goto	l2328
	line	230
	
l2323:	
	goto	l2328
	line	231
	
l2322:	
	line	232
;RF_Control_B1.c: 230: }
;RF_Control_B1.c: 231: }
;RF_Control_B1.c: 232: }
	goto	l2328
	line	233
	
l2320:	
	goto	l2328
	
l8266:	
	goto	l2328
	
l8268:	
	goto	l2328
	line	236
	
l8270:	
;RF_Control_B1.c: 234: {
;RF_Control_B1.c: 235: ;
;RF_Control_B1.c: 236: }
	goto	l2328
	line	237
	
l2325:	
	goto	l2328
	
l8272:	
	goto	l2328
	
l8274:	
	goto	l2328
	line	240
;RF_Control_B1.c: 238: {
;RF_Control_B1.c: 239: ;
	
l2327:	
	goto	l2328
	line	245
	
l2326:	
	goto	l2328
	
l2324:	
	goto	l2328
	
l2319:	
	line	246
	
l2328:	
	return
	opt stack 0
GLOBAL	__end_of_getRxData
	__end_of_getRxData:
	signat	_getRxData,4216
	global	_setLog_Code

;; *************** function _setLog_Code *****************
;; Defined at:
;;		line 248 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text15,local,class=CODE,delta=2,merge=1
	line	248
global __ptext15
__ptext15:	;psect for function _setLog_Code
psect	text15
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
	
l7946:	
;RF_Control_B1.c: 250: RfPointSelect(rf);
	movf	(setLog_Code@rf),w
	fcall	_RfPointSelect
	line	251
	
l7948:	
;RF_Control_B1.c: 251: Product->Data[12]=RF_Data[12];
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
	line	252
	
l7950:	
;RF_Control_B1.c: 252: Product->Data[13]=RF_Data[13];
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
	line	253
	
l7952:	
;RF_Control_B1.c: 253: Product->Data[14]=RF_Data[14];
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
	line	254
	
l7954:	
;RF_Control_B1.c: 254: setBuz(1,100);
	movlw	low(064h)
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	255
	
l7956:	
;RF_Control_B1.c: 255: RF->Learn=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	256
	
l7958:	
;RF_Control_B1.c: 256: if(TMain->First)
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u7801
	goto	u7800
u7801:
	goto	l2331
u7800:
	line	258
	
l7960:	
;RF_Control_B1.c: 257: {
;RF_Control_B1.c: 258: Memory->LoopSave=1;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	259
	
l2331:	
	line	260
;RF_Control_B1.c: 259: }
;RF_Control_B1.c: 260: Memory->Modify=1;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	261
	
l2332:	
	return
	opt stack 0
GLOBAL	__end_of_setLog_Code
	__end_of_setLog_Code:
	signat	_setLog_Code,4216
	global	_setControl_Lights_Table

;; *************** function _setControl_Lights_Table *****************
;; Defined at:
;;		line 263 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text16,local,class=CODE,delta=2,merge=1
	line	263
global __ptext16
__ptext16:	;psect for function _setControl_Lights_Table
psect	text16
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
	
l7962:	
;RF_Control_B1.c: 265: RfPointSelect(rf);
	movf	(setControl_Lights_Table@rf),w
	fcall	_RfPointSelect
	line	266
	
l7964:	
;RF_Control_B1.c: 266: if(RF_Data[15] == 0x00)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,f
	skipz
	goto	u7811
	goto	u7810
u7811:
	goto	l7976
u7810:
	line	269
	
l7966:	
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
	
l7968:	
;RF_Control_B1.c: 284: Product->Data[9]=0;
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	285
	
l7970:	
;RF_Control_B1.c: 285: Product->Data[11]=0;
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	286
	
l7972:	
;RF_Control_B1.c: 286: Product->Data[15]=0;
	movf	(_Product),w
	addlw	0Fh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	287
	
l7974:	
;RF_Control_B1.c: 287: Product->Data[17]=0;
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	288
;RF_Control_B1.c: 288: setBuz(1,100);
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
	goto	l2346
	line	291
	
l2335:	
	
l7976:	
;RF_Control_B1.c: 291: else if(RF_Data[15] == 0x20)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	020h&0ffh
	skipz
	goto	u7821
	goto	u7820
u7821:
	goto	l7982
u7820:
	line	293
	
l7978:	
;RF_Control_B1.c: 292: {
;RF_Control_B1.c: 293: Product->Data[9]=0;
	movlb 0	; select bank0
	movf	(_Product),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	294
;RF_Control_B1.c: 294: Product->Data[11]=0;
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	295
;RF_Control_B1.c: 295: Product->Data[17]=0;
	movf	(_Product),w
	addlw	011h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	296
	
l7980:	
;RF_Control_B1.c: 296: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	297
;RF_Control_B1.c: 297: }
	goto	l2346
	line	299
	
l2337:	
	
l7982:	
;RF_Control_B1.c: 299: else if(RF_Data[15] == 0x01)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	01h&0ffh
	skipz
	goto	u7831
	goto	u7830
u7831:
	goto	l7986
u7830:
	line	301
	
l7984:	
;RF_Control_B1.c: 300: {
;RF_Control_B1.c: 301: setRFSW_Control(1);
	movlw	(01h)
	fcall	_setRFSW_Control
	line	302
;RF_Control_B1.c: 302: }
	goto	l2346
	line	304
	
l2339:	
	
l7986:	
;RF_Control_B1.c: 304: else if(RF_Data[15] == 0x11)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	011h&0ffh
	skipz
	goto	u7841
	goto	u7840
u7841:
	goto	l7990
u7840:
	line	306
	
l7988:	
;RF_Control_B1.c: 305: {
;RF_Control_B1.c: 306: setRFSW_AdjControl(1);
	movlw	(01h)
	fcall	_setRFSW_AdjControl
	line	307
;RF_Control_B1.c: 307: }
	goto	l2346
	line	312
	
l2341:	
	
l7990:	
;RF_Control_B1.c: 312: else if(RF_Data[15] == 0x02)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	02h&0ffh
	skipz
	goto	u7851
	goto	u7850
u7851:
	goto	l7994
u7850:
	line	314
	
l7992:	
;RF_Control_B1.c: 313: {
;RF_Control_B1.c: 314: setRFSW_Control(2);
	movlw	(02h)
	fcall	_setRFSW_Control
	line	315
;RF_Control_B1.c: 315: }
	goto	l2346
	line	317
	
l2343:	
	
l7994:	
;RF_Control_B1.c: 317: else if(RF_Data[15] == 0x21)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+0Fh,w
	xorlw	021h&0ffh
	skipz
	goto	u7861
	goto	u7860
u7861:
	goto	l2346
u7860:
	line	319
	
l7996:	
;RF_Control_B1.c: 318: {
;RF_Control_B1.c: 319: setRFSW_AdjControl(2);
	movlw	(02h)
	fcall	_setRFSW_AdjControl
	goto	l2346
	line	320
	
l2345:	
	goto	l2346
	line	336
	
l2344:	
	goto	l2346
	
l2342:	
	goto	l2346
	
l2340:	
	goto	l2346
	
l2338:	
	goto	l2346
	
l2336:	
	
l2346:	
	return
	opt stack 0
GLOBAL	__end_of_setControl_Lights_Table
	__end_of_setControl_Lights_Table:
	signat	_setControl_Lights_Table,4216
	global	_setRFSW_Control

;; *************** function _setRFSW_Control *****************
;; Defined at:
;;		line 360 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sw              1   12[BANK0 ] unsigned char 
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
psect	text17,local,class=CODE,delta=2,merge=1
	line	360
global __ptext17
__ptext17:	;psect for function _setRFSW_Control
psect	text17
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
	
l7844:	
;RF_Control_B1.c: 362: RfSWPointSelect(sw);
	movf	(setRFSW_Control@sw),w
	fcall	_RfSWPointSelect
	line	363
	
l7846:	
;RF_Control_B1.c: 363: if(RF_Data[16] == 0x80)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u7721
	goto	u7720
u7721:
	goto	l7852
u7720:
	line	365
	
l7848:	
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
	
l7850:	
;RF_Control_B1.c: 366: Product->Data[26+sw]=RF_Data[17];
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+011h,w
	movlb 0	; select bank0
	movwf	(??_setRFSW_Control+0)+0
	movf	(setRFSW_Control@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setRFSW_Control+1)+0
	movf	0+(??_setRFSW_Control+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRFSW_Control+0)+0,w
	movwf	indf1
	goto	l7852
	line	367
	
l2354:	
	line	368
	
l7852:	
;RF_Control_B1.c: 367: }
;RF_Control_B1.c: 368: if(RFSW->Status == 0)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u7731
	goto	u7730
u7731:
	goto	l7864
u7730:
	line	370
	
l7854:	
;RF_Control_B1.c: 369: {
;RF_Control_B1.c: 370: RFSW->Status=1;
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	371
	
l7856:	
;RF_Control_B1.c: 371: setSw_Status(sw,1);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	incf	(setSw_Status@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	373
	
l7858:	
;RF_Control_B1.c: 373: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	374
	
l7860:	
;RF_Control_B1.c: 374: setDimmerLights_Switch(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	incf	(setDimmerLights_Switch@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Switch
	line	375
	
l7862:	
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
	goto	l7880
	line	377
	
l2355:	
	line	379
	
l7864:	
;RF_Control_B1.c: 377: else
;RF_Control_B1.c: 378: {
;RF_Control_B1.c: 379: if(RF_Data[16] == 0x80)
	movlb 1	; select bank1
	movf	0+(_RF_Data)^080h+010h,w
	xorlw	080h&0ffh
	skipz
	goto	u7741
	goto	u7740
u7741:
	goto	l7868
u7740:
	line	381
	
l7866:	
;RF_Control_B1.c: 380: {
;RF_Control_B1.c: 381: setRF_DimmerLights(sw,1);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	incf	(setRF_DimmerLights@on),f
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	382
;RF_Control_B1.c: 382: }
	goto	l7880
	line	383
	
l2357:	
	line	385
	
l7868:	
;RF_Control_B1.c: 383: else
;RF_Control_B1.c: 384: {
;RF_Control_B1.c: 385: RFSW->Status=0;
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	386
	
l7870:	
;RF_Control_B1.c: 386: setSw_Status(sw,0);
	movlb 0	; select bank0
	clrf	(setSw_Status@command)
	movf	(setRFSW_Control@sw),w
	fcall	_setSw_Status
	line	388
	
l7872:	
;RF_Control_B1.c: 388: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(setRFSW_Control@sw),w
	fcall	_setDimmerLights_Trigger
	line	389
	
l7874:	
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
	
l7876:	
;RF_Control_B1.c: 391: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	movf	(setRFSW_Control@sw),w
	fcall	_setRF_DimmerLights
	line	392
	
l7878:	
;RF_Control_B1.c: 392: setDelayOff_GO(sw,0,0);
	movlb 0	; select bank0
	clrf	(setDelayOff_GO@command)
	clrf	(setDelayOff_GO@value)
	movf	(setRFSW_Control@sw),w
	fcall	_setDelayOff_GO
	goto	l7880
	line	393
	
l2358:	
	goto	l7880
	line	394
	
l2356:	
	line	395
	
l7880:	
;RF_Control_B1.c: 393: }
;RF_Control_B1.c: 394: }
;RF_Control_B1.c: 395: setBuz(1,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	396
	
l7882:	
;RF_Control_B1.c: 396: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	397
	
l2359:	
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
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	92
global __ptext18
__ptext18:	;psect for function _setDelayOff_GO
psect	text18
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
	
l7692:	
;DelayOff_B1.c: 94: DelayOffPointSelect(sw);
	movf	(setDelayOff_GO@sw),w
	fcall	_DelayOffPointSelect
	line	95
	
l7694:	
;DelayOff_B1.c: 95: if(DelayOff->Enable)
	movlb 0	; select bank0
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u7451
	goto	u7450
u7451:
	goto	l650
u7450:
	line	97
	
l7696:	
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
	
l7698:	
;DelayOff_B1.c: 98: if(command)
	movf	(setDelayOff_GO@command),w
	skipz
	goto	u7460
	goto	l7702
u7460:
	line	100
	
l7700:	
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
;DelayOff_B1.c: 101: }
	goto	l7706
	line	102
	
l647:	
	
l7702:	
;DelayOff_B1.c: 102: else if(command == 0)
	movf	(setDelayOff_GO@command),f
	skipz
	goto	u7471
	goto	u7470
u7471:
	goto	l7706
u7470:
	line	104
	
l7704:	
;DelayOff_B1.c: 103: {
;DelayOff_B1.c: 104: Product->Data[sw+26]=0;
	movf	(setDelayOff_GO@sw),w
	addlw	01Ah
	addwf	(_Product),w
	movwf	(??_setDelayOff_GO+0)+0
	movf	0+(??_setDelayOff_GO+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l7706
	line	105
	
l649:	
	goto	l7706
	line	106
	
l648:	
	
l7706:	
;DelayOff_B1.c: 105: }
;DelayOff_B1.c: 106: DelayOff->SecondTime=0;
	movf	(_DelayOff),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	107
	
l7708:	
;DelayOff_B1.c: 107: DelayOff->MinuteTime=0;
	movf	(_DelayOff),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l650
	line	108
	
l646:	
	line	109
	
l650:	
	return
	opt stack 0
GLOBAL	__end_of_setDelayOff_GO
	__end_of_setDelayOff_GO:
	signat	_setDelayOff_GO,12408
	global	_DelayTimejudge

;; *************** function _DelayTimejudge *****************
;; Defined at:
;;		line 111 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
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
psect	text19,local,class=CODE,delta=2,merge=1
	line	111
global __ptext19
__ptext19:	;psect for function _DelayTimejudge
psect	text19
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
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
	
l7548:	
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
	goto	u7181
	goto	u7180
u7181:
	goto	l7552
u7180:
	line	116
	
l7550:	
;DelayOff_B1.c: 115: {
;DelayOff_B1.c: 116: i=5;
	movlw	(05h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	117
;DelayOff_B1.c: 117: }
	goto	l654
	line	118
	
l653:	
	
l7552:	
;DelayOff_B1.c: 118: else if(value == 0x10)
	movf	(DelayTimejudge@value),w
	xorlw	010h&0ffh
	skipz
	goto	u7191
	goto	u7190
u7191:
	goto	l7556
u7190:
	line	120
	
l7554:	
;DelayOff_B1.c: 119: {
;DelayOff_B1.c: 120: i=10;
	movlw	(0Ah)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	121
;DelayOff_B1.c: 121: }
	goto	l654
	line	122
	
l655:	
	
l7556:	
;DelayOff_B1.c: 122: else if(value == 0x15)
	movf	(DelayTimejudge@value),w
	xorlw	015h&0ffh
	skipz
	goto	u7201
	goto	u7200
u7201:
	goto	l7560
u7200:
	line	124
	
l7558:	
;DelayOff_B1.c: 123: {
;DelayOff_B1.c: 124: i=15;
	movlw	(0Fh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	125
;DelayOff_B1.c: 125: }
	goto	l654
	line	126
	
l657:	
	
l7560:	
;DelayOff_B1.c: 126: else if(value == 0x20)
	movf	(DelayTimejudge@value),w
	xorlw	020h&0ffh
	skipz
	goto	u7211
	goto	u7210
u7211:
	goto	l7564
u7210:
	line	128
	
l7562:	
;DelayOff_B1.c: 127: {
;DelayOff_B1.c: 128: i=20;
	movlw	(014h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	129
;DelayOff_B1.c: 129: }
	goto	l654
	line	130
	
l659:	
	
l7564:	
;DelayOff_B1.c: 130: else if(value == 0x25)
	movf	(DelayTimejudge@value),w
	xorlw	025h&0ffh
	skipz
	goto	u7221
	goto	u7220
u7221:
	goto	l7568
u7220:
	line	132
	
l7566:	
;DelayOff_B1.c: 131: {
;DelayOff_B1.c: 132: i=25;
	movlw	(019h)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	line	133
;DelayOff_B1.c: 133: }
	goto	l654
	line	134
	
l661:	
	
l7568:	
;DelayOff_B1.c: 134: else if(value == 0x30)
	movf	(DelayTimejudge@value),w
	xorlw	030h&0ffh
	skipz
	goto	u7231
	goto	u7230
u7231:
	goto	l654
u7230:
	line	136
	
l7570:	
;DelayOff_B1.c: 135: {
;DelayOff_B1.c: 136: i=30;
	movlw	(01Eh)
	movwf	(??_DelayTimejudge+0)+0
	movf	(??_DelayTimejudge+0)+0,w
	movwf	(DelayTimejudge@i)
	goto	l654
	line	137
	
l663:	
	goto	l654
	line	138
	
l662:	
	goto	l654
	
l660:	
	goto	l654
	
l658:	
	goto	l654
	
l656:	
	
l654:	
;DelayOff_B1.c: 137: }
;DelayOff_B1.c: 138: return i;
	movf	(DelayTimejudge@i),w
	goto	l664
	
l7572:	
	line	139
	
l664:	
	return
	opt stack 0
GLOBAL	__end_of_DelayTimejudge
	__end_of_DelayTimejudge:
	signat	_DelayTimejudge,4217
	global	_setRFSW_AdjControl

;; *************** function _setRFSW_AdjControl *****************
;; Defined at:
;;		line 399 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	399
global __ptext20
__ptext20:	;psect for function _setRFSW_AdjControl
psect	text20
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
	
l7884:	
;RF_Control_B1.c: 401: RfSWPointSelect(sw);
	movf	(setRFSW_AdjControl@sw),w
	fcall	_RfSWPointSelect
	line	402
	
l7886:	
;RF_Control_B1.c: 402: if(RFSW->Status)
	movlb 1	; select bank1
	movf	(_RFSW)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u7751
	goto	u7750
u7751:
	goto	l7892
u7750:
	line	404
	
l7888:	
;RF_Control_B1.c: 403: {
;RF_Control_B1.c: 404: Memory->Modify=1;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	405
	
l7890:	
;RF_Control_B1.c: 405: setRF_DimmerValue(sw);
	movlb 0	; select bank0
	movf	(setRFSW_AdjControl@sw),w
	fcall	_setRF_DimmerValue
	line	406
;RF_Control_B1.c: 406: }
	goto	l2363
	line	407
	
l2362:	
	line	409
	
l7892:	
;RF_Control_B1.c: 407: else
;RF_Control_B1.c: 408: {
;RF_Control_B1.c: 409: Product->Data[9]=Product->Data[20+sw];
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
	line	410
	
l2363:	
	line	411
;RF_Control_B1.c: 410: }
;RF_Control_B1.c: 411: Product->Data[17]=Product->Data[26+sw];
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
	line	412
	
l7894:	
;RF_Control_B1.c: 412: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	413
	
l2364:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_AdjControl
	__end_of_setRFSW_AdjControl:
	signat	_setRFSW_AdjControl,4216
	global	_setRF_DimmerValue

;; *************** function _setRF_DimmerValue *****************
;; Defined at:
;;		line 423 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text21,local,class=CODE,delta=2,merge=1
	line	423
global __ptext21
__ptext21:	;psect for function _setRF_DimmerValue
psect	text21
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
	
l7770:	
;RF_Control_B1.c: 425: if(RF_Data[9] > 0x64)
	movlw	(065h)
	movlb 1	; select bank1
	subwf	0+(_RF_Data)^080h+09h,w
	skipc
	goto	u7631
	goto	u7630
u7631:
	goto	l7774
u7630:
	line	427
	
l7772:	
;RF_Control_B1.c: 426: {
;RF_Control_B1.c: 427: RF_Data[9]=0x64;
	movlw	(064h)
	movlb 0	; select bank0
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(??_setRF_DimmerValue+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+09h
	goto	l7774
	line	428
	
l2370:	
	line	429
	
l7774:	
;RF_Control_B1.c: 428: }
;RF_Control_B1.c: 429: Product->Data[9]=RF_Data[9];
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
	line	430
	
l7776:	
;RF_Control_B1.c: 430: Product->Data[11]=lights;
	movf	(setRF_DimmerValue@lights),w
	movwf	(??_setRF_DimmerValue+0)+0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerValue+0)+0,w
	movwf	indf1
	line	431
	
l7778:	
;RF_Control_B1.c: 431: Product->Data[(20+lights)]=Product->Data[9];
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
	line	432
	
l7780:	
;RF_Control_B1.c: 432: setDimmerLights_AdjRF(lights);
	movf	(setRF_DimmerValue@lights),w
	fcall	_setDimmerLights_AdjRF
	line	433
	
l2371:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerValue
	__end_of_setRF_DimmerValue:
	signat	_setRF_DimmerValue,4216
	global	_setDimmerLights_AdjRF

;; *************** function _setDimmerLights_AdjRF *****************
;; Defined at:
;;		line 421 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text22,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	421
global __ptext22
__ptext22:	;psect for function _setDimmerLights_AdjRF
psect	text22
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	421
	global	__size_of_setDimmerLights_AdjRF
	__size_of_setDimmerLights_AdjRF	equ	__end_of_setDimmerLights_AdjRF-_setDimmerLights_AdjRF
	
_setDimmerLights_AdjRF:	
;incstack = 0
	opt	stack 2
; Regs used in _setDimmerLights_AdjRF: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_AdjRF@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_AdjRF@lights)
	line	423
	
l7574:	
;Dimmer_B1.c: 423: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_AdjRF@lights),w
	fcall	_DimmerLightsPointSelect
	line	424
	
l7576:	
;Dimmer_B1.c: 424: DimmerLights->AdjRF=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,2
	line	425
	
l7578:	
;Dimmer_B1.c: 425: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	426
	
l7580:	
;Dimmer_B1.c: 426: DimmerLights->MaxmumValue=getPercentValue(Product->Data[9]);
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
	line	427
	
l897:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_AdjRF
	__end_of_setDimmerLights_AdjRF:
	signat	_setDimmerLights_AdjRF,4216
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
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	30
global __ptext23
__ptext23:	;psect for function _CC2500_TxData
psect	text23
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	30
	global	__size_of_CC2500_TxData
	__size_of_CC2500_TxData	equ	__end_of_CC2500_TxData-_CC2500_TxData
	
_CC2500_TxData:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_TxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	34
	
l7998:	
;CC2500_B1.c: 32: unsigned char loop_e;
;CC2500_B1.c: 34: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	35
	
l8000:	
;CC2500_B1.c: 35: SPI0Buffer=0x3F+0x40;
	movlw	(07Fh)
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	36
;CC2500_B1.c: 36: while(RC2==1);
	goto	l283
	
l284:	
	
l283:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u7871
	goto	u7870
u7871:
	goto	l283
u7870:
	goto	l8002
	
l285:	
	line	37
	
l8002:	
;CC2500_B1.c: 37: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	38
	
l8004:	
;CC2500_B1.c: 38: SPI0Buffer=Tx_Length;
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	39
	
l8006:	
;CC2500_B1.c: 39: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l8008:	
;CC2500_B1.c: 40: for(loop_e=0;loop_e<Tx_Length;loop_e++)
	movlb 0	; select bank0
	clrf	(CC2500_TxData@loop_e)
	goto	l8016
	line	41
	
l287:	
	line	42
	
l8010:	
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
	
l8012:	
;CC2500_B1.c: 43: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	40
	
l8014:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_TxData+0)+0
	movf	(??_CC2500_TxData+0)+0,w
	addwf	(CC2500_TxData@loop_e),f
	goto	l8016
	
l286:	
	
l8016:	
	movlb 1	; select bank1
	movf	(_Tx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_TxData@loop_e),w
	skipc
	goto	u7881
	goto	u7880
u7881:
	goto	l8010
u7880:
	
l288:	
	line	45
;CC2500_B1.c: 44: }
;CC2500_B1.c: 45: RC4=1;
	bsf	(116/8),(116)&7	;volatile
	line	46
	
l8018:	
;CC2500_B1.c: 46: CC2500_WriteCommand(0x35);
	movlw	(035h)
	fcall	_CC2500_WriteCommand
	line	47
;CC2500_B1.c: 47: while(RB0==0);
	goto	l289
	
l290:	
	
l289:	
	movlb 0	; select bank0
	btfss	(104/8),(104)&7	;volatile
	goto	u7891
	goto	u7890
u7891:
	goto	l289
u7890:
	goto	l292
	
l291:	
	line	48
;CC2500_B1.c: 48: while(RB0==1);
	goto	l292
	
l293:	
	
l292:	
	btfsc	(104/8),(104)&7	;volatile
	goto	u7901
	goto	u7900
u7901:
	goto	l292
u7900:
	goto	l8020
	
l294:	
	line	49
	
l8020:	
;CC2500_B1.c: 49: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	50
;CC2500_B1.c: 50: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	51
	
l8022:	
;CC2500_B1.c: 51: Transceive_OK=1;
	bsf	(_Transceive_OK/8),(_Transceive_OK)&7
	line	52
	
l295:	
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
psect	text24,local,class=CODE,delta=2,merge=1
	line	56
global __ptext24
__ptext24:	;psect for function _CC2500_RxData
psect	text24
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	56
	global	__size_of_CC2500_RxData
	__size_of_CC2500_RxData	equ	__end_of_CC2500_RxData-_CC2500_RxData
	
_CC2500_RxData:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_RxData: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	62
	
l8024:	
;CC2500_B1.c: 58: unsigned char loop_f;
;CC2500_B1.c: 62: if(RB0 == 1)
	movlb 0	; select bank0
	btfss	(104/8),(104)&7	;volatile
	goto	u7911
	goto	u7910
u7911:
	goto	l8028
u7910:
	goto	l299
	line	64
	
l8026:	
;CC2500_B1.c: 63: {
;CC2500_B1.c: 64: while(RB0 == 1);
	goto	l299
	
l300:	
	
l299:	
	btfsc	(104/8),(104)&7	;volatile
	goto	u7921
	goto	u7920
u7921:
	goto	l299
u7920:
	goto	l8028
	
l301:	
	goto	l8028
	line	65
	
l298:	
	line	66
	
l8028:	
;CC2500_B1.c: 65: }
;CC2500_B1.c: 66: CC2500_ReadStatus(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_ReadStatus
	line	67
	
l8030:	
;CC2500_B1.c: 67: if(s_data != 0)
	movlb 1	; select bank1
	movf	(_s_data)^080h,w
	skipz
	goto	u7930
	goto	l8062
u7930:
	line	70
	
l8032:	
;CC2500_B1.c: 69: {
;CC2500_B1.c: 70: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	71
	
l8034:	
;CC2500_B1.c: 71: SPI0Buffer=0x3F+0xC0;
	movlw	(0FFh)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	72
;CC2500_B1.c: 72: while(RC2==1);
	goto	l303
	
l304:	
	
l303:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u7941
	goto	u7940
u7941:
	goto	l303
u7940:
	goto	l8036
	
l305:	
	line	73
	
l8036:	
;CC2500_B1.c: 73: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	75
;CC2500_B1.c: 75: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	76
	
l8038:	
;CC2500_B1.c: 76: Rx_Length=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_Rx_Length)^080h
	line	77
	
l8040:	
;CC2500_B1.c: 77: for(loop_f=0;loop_f<Rx_Length;loop_f++)
	movlb 0	; select bank0
	clrf	(CC2500_RxData@loop_f)
	goto	l8048
	line	78
	
l307:	
	line	79
	
l8042:	
;CC2500_B1.c: 78: {
;CC2500_B1.c: 79: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	80
	
l8044:	
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
	
l8046:	
	movlw	(01h)
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	addwf	(CC2500_RxData@loop_f),f
	goto	l8048
	
l306:	
	
l8048:	
	movlb 1	; select bank1
	movf	(_Rx_Length)^080h,w
	movlb 0	; select bank0
	subwf	(CC2500_RxData@loop_f),w
	skipc
	goto	u7951
	goto	u7950
u7951:
	goto	l8042
u7950:
	goto	l8050
	
l308:	
	line	82
	
l8050:	
;CC2500_B1.c: 81: }
;CC2500_B1.c: 82: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	83
	
l8052:	
;CC2500_B1.c: 83: RSSI=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_RxData+0)+0
	movf	(??_CC2500_RxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RSSI)^080h
	line	84
	
l8054:	
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
	
l8056:	
;CC2500_B1.c: 86: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	87
	
l8058:	
;CC2500_B1.c: 87: if(CRC & 0x80)
	movlb 1	; select bank1
	btfss	(_CRC)^080h,(7)&7
	goto	u7961
	goto	u7960
u7961:
	goto	l8062
u7960:
	line	88
	
l8060:	
;CC2500_B1.c: 88: Receive_OK=1;
	bsf	(_Receive_OK/8),(_Receive_OK)&7
	goto	l8062
	
l309:	
	goto	l8062
	line	89
	
l302:	
	line	90
	
l8062:	
;CC2500_B1.c: 89: }
;CC2500_B1.c: 90: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	91
;CC2500_B1.c: 91: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	92
	
l8064:	
;CC2500_B1.c: 92: setRF_RxStatus(1,0);
	movlb 0	; select bank0
	clrf	(setRF_RxStatus@command)
	movlw	(01h)
	fcall	_setRF_RxStatus
	line	93
	
l310:	
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
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	43
global __ptext25
__ptext25:	;psect for function _setRF_RxStatus
psect	text25
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
	
l7914:	
;RF_Control_B1.c: 45: RfPointSelect(rf);
	movf	(setRF_RxStatus@rf),w
	fcall	_RfPointSelect
	line	46
	
l7916:	
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
	
l2277:	
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
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	267
global __ptext26
__ptext26:	;psect for function _CC2500_ReadStatus
psect	text26
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
	
l7904:	
;CC2500_B1.c: 269: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	270
	
l7906:	
;CC2500_B1.c: 270: SPI0Buffer=status_addr+0xC0;
	movf	(CC2500_ReadStatus@status_addr),w
	addlw	0C0h
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	272
;CC2500_B1.c: 272: while(RC2==1);
	goto	l379
	
l380:	
	
l379:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u7771
	goto	u7770
u7771:
	goto	l379
u7770:
	goto	l7908
	
l381:	
	line	274
	
l7908:	
;CC2500_B1.c: 274: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	275
;CC2500_B1.c: 275: CC2500_ReadByte();
	fcall	_CC2500_ReadByte
	line	276
	
l7910:	
;CC2500_B1.c: 276: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	278
	
l7912:	
;CC2500_B1.c: 278: s_data=SPI0Buffer;
	movlb 1	; select bank1
	movf	(_SPI0Buffer)^080h,w
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadStatus+0)+0
	movf	(??_CC2500_ReadStatus+0)+0,w
	movlb 1	; select bank1
	movwf	(_s_data)^080h
	line	279
	
l382:	
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
psect	text27,local,class=CODE,delta=2,merge=1
	line	210
global __ptext27
__ptext27:	;psect for function _CC2500_ReadByte
psect	text27
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	210
	global	__size_of_CC2500_ReadByte
	__size_of_CC2500_ReadByte	equ	__end_of_CC2500_ReadByte-_CC2500_ReadByte
	
_CC2500_ReadByte:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_ReadByte: [wreg+status,2+status,0]
	line	213
	
l7798:	
;CC2500_B1.c: 212: unsigned char loop_b;
;CC2500_B1.c: 213: for(loop_b=0;loop_b<8;loop_b++)
	movlb 0	; select bank0
	clrf	(CC2500_ReadByte@loop_b)
	
l7800:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u7671
	goto	u7670
u7671:
	goto	l354
u7670:
	goto	l358
	
l7802:	
	goto	l358
	line	214
	
l354:	
	line	215
;CC2500_B1.c: 214: {
;CC2500_B1.c: 215: RC1=1;
	bsf	(113/8),(113)&7	;volatile
	line	216
	
l7804:	
;CC2500_B1.c: 216: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	217
	
l7806:	
;CC2500_B1.c: 217: if(RC2 == 1)
	movlb 0	; select bank0
	btfss	(114/8),(114)&7	;volatile
	goto	u7681
	goto	u7680
u7681:
	goto	l7810
u7680:
	line	218
	
l7808:	
;CC2500_B1.c: 218: SPI0Buffer |= 0x01;
	movlb 1	; select bank1
	bsf	(_SPI0Buffer)^080h+(0/8),(0)&7
	goto	l7812
	line	219
	
l356:	
	line	220
	
l7810:	
;CC2500_B1.c: 219: else
;CC2500_B1.c: 220: SPI0Buffer &= 0xFE;
	movlw	(0FEh)
	movlb 0	; select bank0
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	movlb 1	; select bank1
	andwf	(_SPI0Buffer)^080h,f
	goto	l7812
	
l357:	
	line	221
	
l7812:	
;CC2500_B1.c: 221: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
	line	213
	movlw	(01h)
	movwf	(??_CC2500_ReadByte+0)+0
	movf	(??_CC2500_ReadByte+0)+0,w
	addwf	(CC2500_ReadByte@loop_b),f
	
l7814:	
	movlw	(08h)
	subwf	(CC2500_ReadByte@loop_b),w
	skipc
	goto	u7691
	goto	u7690
u7691:
	goto	l354
u7690:
	goto	l358
	
l355:	
	line	223
	
l358:	
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
psect	text28,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	17
global __ptext28
__ptext28:	;psect for function _RF_Initialization
psect	text28
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	17
	global	__size_of_RF_Initialization
	__size_of_RF_Initialization	equ	__end_of_RF_Initialization-_RF_Initialization
	
_RF_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _RF_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l8884:	
;RF_Control_B1.c: 20: setRF_Initialization(1);
	movlw	(01h)
	fcall	_setRF_Initialization
	line	22
	
l2265:	
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
psect	text29,local,class=CODE,delta=2,merge=1
	line	50
global __ptext29
__ptext29:	;psect for function _setRF_Initialization
psect	text29
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	50
	global	__size_of_setRF_Initialization
	__size_of_setRF_Initialization	equ	__end_of_setRF_Initialization-_setRF_Initialization
	
_setRF_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _setRF_Initialization: [wreg]
	line	54
	
l8606:	
;RF_Control_B1.c: 54: Tx_Length=21;
	movlw	(015h)
	movlb 0	; select bank0
	movwf	(??_setRF_Initialization+0)+0
	movf	(??_setRF_Initialization+0)+0,w
	movlb 1	; select bank1
	movwf	(_Tx_Length)^080h
	line	56
	
l2280:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Initialization
	__end_of_setRF_Initialization:
	signat	_setRF_Initialization,4216
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
psect	text30,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	11
global __ptext30
__ptext30:	;psect for function _Mcu_Initialization
psect	text30
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	11
	global	__size_of_Mcu_Initialization
	__size_of_Mcu_Initialization	equ	__end_of_Mcu_Initialization-_Mcu_Initialization
	
_Mcu_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Mcu_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l8830:	
;MCU_16f1518_B1.c: 14: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l8832:	
;MCU_16f1518_B1.c: 16: IO_Set();
	fcall	_IO_Set
	line	18
	
l8834:	
;MCU_16f1518_B1.c: 18: TMR0_Set();
	fcall	_TMR0_Set
	line	22
	
l8836:	
;MCU_16f1518_B1.c: 20: ;;
;MCU_16f1518_B1.c: 22: ADC_Set();
	fcall	_ADC_Set
	line	26
;MCU_16f1518_B1.c: 26: INT_Set();
	fcall	_INT_Set
	line	28
	
l8838:	
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
	movwf	(_Memory)
	line	35
	
l1532:	
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
psect	text31,local,class=CODE,delta=2,merge=1
	line	73
global __ptext31
__ptext31:	;psect for function _TMR0_Set
psect	text31
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	73
	global	__size_of_TMR0_Set
	__size_of_TMR0_Set	equ	__end_of_TMR0_Set-_TMR0_Set
	
_TMR0_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR0_Set: [wreg+status,2]
	line	75
	
l8554:	
;MCU_16f1518_B1.c: 75: Timer0=&VarTimer0;
	movlw	(_VarTimer0)&0ffh
	movlb 0	; select bank0
	movwf	(??_TMR0_Set+0)+0
	movf	(??_TMR0_Set+0)+0,w
	movlb 1	; select bank1
	movwf	(_Timer0)^080h
	line	76
	
l8556:	
;MCU_16f1518_B1.c: 76: OPTION_REG=0x00;
	clrf	(149)^080h	;volatile
	line	77
	
l8558:	
;MCU_16f1518_B1.c: 77: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	78
	
l8560:	
;MCU_16f1518_B1.c: 78: TMR0IE=1;
	bsf	(93/8),(93)&7	;volatile
	line	79
	
l8562:	
;MCU_16f1518_B1.c: 79: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	80
	
l1541:	
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
psect	text32,local,class=CODE,delta=2,merge=1
	line	37
global __ptext32
__ptext32:	;psect for function _IO_Set
psect	text32
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	37
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _IO_Set: [wreg+status,2]
	line	39
	
l8536:	
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
	
l8538:	
;MCU_16f1518_B1.c: 42: LATA=0b00000000;;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	43
	
l8540:	
;MCU_16f1518_B1.c: 43: LATB=0b00000010;;
	movlw	(02h)
	movwf	(269)^0100h	;volatile
	line	44
;MCU_16f1518_B1.c: 44: LATC=0b00000000;;
	clrf	(270)^0100h	;volatile
	line	45
	
l8542:	
;MCU_16f1518_B1.c: 45: ANSELA=0b00100010;;
	movlw	(022h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	46
	
l8544:	
;MCU_16f1518_B1.c: 46: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	47
	
l8546:	
;MCU_16f1518_B1.c: 47: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	48
	
l8548:	
;MCU_16f1518_B1.c: 48: PORTA=0b01110111;;
	movlw	(077h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	49
	
l8550:	
;MCU_16f1518_B1.c: 49: PORTB=0b00000111;;
	movlw	(07h)
	movwf	(13)	;volatile
	line	50
	
l8552:	
;MCU_16f1518_B1.c: 50: PORTC=0b00001100;;
	movlw	(0Ch)
	movwf	(14)	;volatile
	line	51
	
l1535:	
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
psect	text33,local,class=CODE,delta=2,merge=1
	line	246
global __ptext33
__ptext33:	;psect for function _IOC_Set
psect	text33
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	246
	global	__size_of_IOC_Set
	__size_of_IOC_Set	equ	__end_of_IOC_Set-_IOC_Set
	
_IOC_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _IOC_Set: [wreg+status,2]
	line	248
	
l8568:	
;MCU_16f1518_B1.c: 248: WPUB2=0;
	movlb 4	; select bank4
	bcf	(4202/8)^0200h,(4202)&7	;volatile
	line	250
	
l8570:	
;MCU_16f1518_B1.c: 250: IOCBP=0b00000100;
	movlw	(04h)
	movlb 7	; select bank7
	movwf	(916)^0380h	;volatile
	line	251
;MCU_16f1518_B1.c: 251: IOCBN=0b00000100;
	movlw	(04h)
	movwf	(917)^0380h	;volatile
	line	259
	
l8572:	
;MCU_16f1518_B1.c: 259: IOCBF=0b00000000;
	clrf	(918)^0380h	;volatile
	line	261
	
l8574:	
;MCU_16f1518_B1.c: 261: IOCIE=1;
	bsf	(91/8),(91)&7	;volatile
	line	262
	
l8576:	
;MCU_16f1518_B1.c: 262: IOCIF=0;
	bcf	(88/8),(88)&7	;volatile
	line	263
	
l8578:	
;MCU_16f1518_B1.c: 263: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	264
	
l8580:	
;MCU_16f1518_B1.c: 264: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	265
	
l1619:	
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
psect	text34,local,class=CODE,delta=2,merge=1
	line	217
global __ptext34
__ptext34:	;psect for function _INT_Set
psect	text34
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	217
	global	__size_of_INT_Set
	__size_of_INT_Set	equ	__end_of_INT_Set-_INT_Set
	
_INT_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _INT_Set: []
	line	219
	
l8566:	
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
	
l1609:	
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
psect	text35,local,class=CODE,delta=2,merge=1
	line	303
global __ptext35
__ptext35:	;psect for function _ADC_Set
psect	text35
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	303
	global	__size_of_ADC_Set
	__size_of_ADC_Set	equ	__end_of_ADC_Set-_ADC_Set
	
_ADC_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _ADC_Set: [wreg]
	line	305
	
l8564:	
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
	
l1629:	
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
psect	text36,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	92
global __ptext36
__ptext36:	;psect for function _MainT_Initialization
psect	text36
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	92
	global	__size_of_MainT_Initialization
	__size_of_MainT_Initialization	equ	__end_of_MainT_Initialization-_MainT_Initialization
	
_MainT_Initialization:	
;incstack = 0
	opt	stack 11
; Regs used in _MainT_Initialization: [wregfsr1]
	line	95
	
l8824:	
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
	movwf	(_TMain)
	line	99
	
l8826:	
;main.c: 99: TMain->FirstOpen=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	100
	
l8828:	
;main.c: 100: TMain->First=1;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	101
	
l1284:	
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setBuz
;;		_setRF_Enable
;;		_setSw_Enable
;;		_setTxData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	line	103
global __ptext37
__ptext37:	;psect for function _MainT
psect	text37
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\main.c"
	line	103
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
;incstack = 0
	opt	stack 7
; Regs used in _MainT: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	106
	
l8886:	
;main.c: 106: if(!TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u9011
	goto	u9010
u9011:
	goto	l8898
u9010:
	line	108
	
l8888:	
;main.c: 107: {
;main.c: 108: TMain->PowerCount++;
	incf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	109
	
l8890:	
;main.c: 109: if(TMain->PowerCount == 150)
	incf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(096h)
	skipz
	goto	u9025
	moviw	[1]fsr1
	xorlw	high(096h)
u9025:
	skipz
	goto	u9021
	goto	u9020
u9021:
	goto	l1293
u9020:
	line	111
	
l8892:	
;main.c: 110: {
;main.c: 111: TMain->PowerCount=0;
	incf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	112
;main.c: 112: TMain->PowerON=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	125
	
l8894:	
;main.c: 115: ;;
;main.c: 119: ;;
;main.c: 125: setBuz(3,50);
	movlw	low(032h)
	movwf	(setBuz@time)
	movlw	high(032h)
	movwf	((setBuz@time))+1
	movlw	(03h)
	fcall	_setBuz
	line	126
	
l8896:	
;main.c: 126: TMain->SelfTest=1;
	movlb 0	; select bank0
	movf	(_TMain),w
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
	goto	l1293
	line	135
	
l1288:	
	line	136
;main.c: 135: }
;main.c: 136: }
	goto	l1293
	line	137
	
l1287:	
	line	146
	
l8898:	
;main.c: 137: else
;main.c: 138: {
;main.c: 146: TMain->Count1++;
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
	line	147
	
l8900:	
;main.c: 147: if(TMain->Count1 == 100)
	movf	(_TMain),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(064h)
	skipz
	goto	u9035
	moviw	[1]fsr1
	xorlw	high(064h)
u9035:
	skipz
	goto	u9031
	goto	u9030
u9031:
	goto	l1293
u9030:
	line	149
	
l8902:	
;main.c: 148: {
;main.c: 149: TMain->Count1=0;
	movf	(_TMain),w
	addlw	06h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	150
	
l8904:	
;main.c: 150: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	160
	
l8906:	
;main.c: 160: if(TMain->Flag)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u9041
	goto	u9040
u9041:
	goto	l8910
u9040:
	goto	l1293
	line	169
	
l8908:	
;main.c: 161: {
;main.c: 169: }
	goto	l1293
	line	170
	
l1291:	
	line	172
	
l8910:	
;main.c: 170: else
;main.c: 171: {
;main.c: 172: TMain->Flag=1;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	goto	l1293
	line	180
	
l1292:	
	goto	l1293
	line	181
	
l1290:	
	goto	l1293
	line	183
	
l1289:	
	line	184
	
l1293:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
	signat	_MainT,88
	global	_setSw_Enable

;; *************** function _setSw_Enable *****************
;; Defined at:
;;		line 86 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    1[BANK0 ] unsigned char 
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
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	86
global __ptext38
__ptext38:	;psect for function _setSw_Enable
psect	text38
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	86
	global	__size_of_setSw_Enable
	__size_of_setSw_Enable	equ	__end_of_setSw_Enable-_setSw_Enable
	
_setSw_Enable:	
;incstack = 0
	opt	stack 9
; Regs used in _setSw_Enable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setSw_Enable@command stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Enable@command)
	line	90
	
l8500:	
;Switch_B1.c: 90: SwPointSelect(1);
	movlw	(01h)
	fcall	_SwPointSelect
	line	91
	
l8502:	
;Switch_B1.c: 91: if(command)
	movlb 0	; select bank0
	movf	(setSw_Enable@command),w
	skipz
	goto	u8530
	goto	l8508
u8530:
	goto	l2551
	line	93
	
l8504:	
;Switch_B1.c: 92: {
;Switch_B1.c: 93: while(!Sw->Enable)
	goto	l2551
	
l2552:	
	line	94
	
l8506:	
;Switch_B1.c: 94: Sw->Enable=1;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bsf	indf1,0
	
l2551:	
	line	93
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	btfss	indf1,0
	goto	u8541
	goto	u8540
u8541:
	goto	l8506
u8540:
	goto	l8510
	
l2553:	
	line	95
;Switch_B1.c: 95: }
	goto	l8510
	line	96
	
l2550:	
	line	98
	
l8508:	
;Switch_B1.c: 96: else
;Switch_B1.c: 97: {
;Switch_B1.c: 98: Sw->Enable=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bcf	indf1,0
	goto	l8510
	line	99
	
l2554:	
	line	103
	
l8510:	
;Switch_B1.c: 99: }
;Switch_B1.c: 103: SwPointSelect(2);
	movlw	(02h)
	fcall	_SwPointSelect
	line	104
	
l8512:	
;Switch_B1.c: 104: if(command)
	movlb 0	; select bank0
	movf	(setSw_Enable@command),w
	skipz
	goto	u8550
	goto	l8518
u8550:
	goto	l2556
	line	106
	
l8514:	
;Switch_B1.c: 105: {
;Switch_B1.c: 106: while(!Sw->Enable)
	goto	l2556
	
l2557:	
	line	107
	
l8516:	
;Switch_B1.c: 107: Sw->Enable=1;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bsf	indf1,0
	
l2556:	
	line	106
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	btfss	indf1,0
	goto	u8561
	goto	u8560
u8561:
	goto	l8516
u8560:
	goto	l2560
	
l2558:	
	line	108
;Switch_B1.c: 108: }
	goto	l2560
	line	109
	
l2555:	
	line	111
	
l8518:	
;Switch_B1.c: 109: else
;Switch_B1.c: 110: {
;Switch_B1.c: 111: Sw->Enable=0;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	bcf	indf1,0
	goto	l2560
	line	112
	
l2559:	
	line	128
	
l2560:	
	return
	opt stack 0
GLOBAL	__end_of_setSw_Enable
	__end_of_setSw_Enable:
	signat	_setSw_Enable,4216
	global	_setRF_Enable

;; *************** function _setRF_Enable *****************
;; Defined at:
;;		line 173 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	173
global __ptext39
__ptext39:	;psect for function _setRF_Enable
psect	text39
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	173
	global	__size_of_setRF_Enable
	__size_of_setRF_Enable	equ	__end_of_setRF_Enable-_setRF_Enable
	
_setRF_Enable:	
;incstack = 0
	opt	stack 7
; Regs used in _setRF_Enable: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRF_Enable@rf stored from wreg
	movlb 0	; select bank0
	movwf	(setRF_Enable@rf)
	line	175
	
l8520:	
;RF_Control_B1.c: 175: RfPointSelect(rf);
	movf	(setRF_Enable@rf),w
	fcall	_RfPointSelect
	line	176
	
l8522:	
;RF_Control_B1.c: 176: if(command)
	movlb 0	; select bank0
	movf	(setRF_Enable@command),w
	skipz
	goto	u8570
	goto	l8526
u8570:
	line	178
	
l8524:	
;RF_Control_B1.c: 177: {
;RF_Control_B1.c: 178: RF->Enable=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	179
;RF_Control_B1.c: 179: }
	goto	l2308
	line	180
	
l2306:	
	line	182
	
l8526:	
;RF_Control_B1.c: 180: else
;RF_Control_B1.c: 181: {
;RF_Control_B1.c: 182: RF->Enable=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	183
;RF_Control_B1.c: 183: RF->Learn=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,6
	line	184
	
l8528:	
;RF_Control_B1.c: 184: Transceive_GO=0;
	bcf	(_Transceive_GO/8),(_Transceive_GO)&7
	line	185
	
l8530:	
;RF_Control_B1.c: 185: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	186
	
l8532:	
;RF_Control_B1.c: 186: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	187
	
l8534:	
;RF_Control_B1.c: 187: RF_RxDisable(1);
	movlw	(01h)
	fcall	_RF_RxDisable
	goto	l2308
	line	188
	
l2307:	
	line	189
	
l2308:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_Enable
	__end_of_setRF_Enable:
	signat	_setRF_Enable,8312
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
;;		_setRF_Enable
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	line	191
global __ptext40
__ptext40:	;psect for function _RF_RxDisable
psect	text40
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
	
l8218:	
;RF_Control_B1.c: 193: RfPointSelect(rf);
	movf	(RF_RxDisable@rf),w
	fcall	_RfPointSelect
	line	194
	
l8220:	
;RF_Control_B1.c: 194: if(RF->RxStatus || RF->ReceiveGO)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,3
	goto	u8091
	goto	u8090
u8091:
	goto	l8224
u8090:
	
l8222:	
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u8101
	goto	u8100
u8101:
	goto	l2314
u8100:
	goto	l8224
	
l2313:	
	line	196
	
l8224:	
;RF_Control_B1.c: 195: {
;RF_Control_B1.c: 196: RF->RxStatus=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,3
	line	197
;RF_Control_B1.c: 197: RF->ReceiveGO=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	198
	
l8226:	
;RF_Control_B1.c: 198: RF->DebounceTime=0;
	incf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	199
	
l8228:	
;RF_Control_B1.c: 199: RF->Debounce=0;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,5
	line	200
	
l8230:	
;RF_Control_B1.c: 200: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	201
	
l8232:	
;RF_Control_B1.c: 201: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	202
	
l8234:	
;RF_Control_B1.c: 202: setINT_GO(0);
	movlw	(0)
	fcall	_setINT_GO
	goto	l2314
	line	203
	
l2311:	
	line	204
	
l2314:	
	return
	opt stack 0
GLOBAL	__end_of_RF_RxDisable
	__end_of_RF_RxDisable:
	signat	_RF_RxDisable,4216
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
;;		_RF_RxDisable
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	235
global __ptext41
__ptext41:	;psect for function _setINT_GO
psect	text41
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	235
	global	__size_of_setINT_GO
	__size_of_setINT_GO	equ	__end_of_setINT_GO-_setINT_GO
	
_setINT_GO:	
;incstack = 0
	opt	stack 9
; Regs used in _setINT_GO: [wreg]
;setINT_GO@command stored from wreg
	movlb 0	; select bank0
	movwf	(setINT_GO@command)
	line	237
	
l7934:	
;MCU_16f1518_B1.c: 237: INTF=0;
	bcf	(89/8),(89)&7	;volatile
	line	238
	
l7936:	
;MCU_16f1518_B1.c: 238: INTE=command;
	btfsc	(setINT_GO@command),0
	goto	u7781
	goto	u7780
	
u7781:
	bsf	(92/8),(92)&7	;volatile
	goto	u7794
u7780:
	bcf	(92/8),(92)&7	;volatile
u7794:
	line	239
	
l1616:	
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
psect	text42,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	51
global __ptext42
__ptext42:	;psect for function _LED_Main
psect	text42
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	51
	global	__size_of_LED_Main
	__size_of_LED_Main	equ	__end_of_LED_Main-_LED_Main
	
_LED_Main:	
;incstack = 0
	opt	stack 9
; Regs used in _LED_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	54
	
l8822:	
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
	
l1084:	
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
psect	text43,local,class=CODE,delta=2,merge=1
	line	214
global __ptext43
__ptext43:	;psect for function _setLED_Main
psect	text43
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
	
l8478:	
;LED_B1.c: 216: LedPointSelect(led);
	movf	(setLED_Main@led),w
	fcall	_LedPointSelect
	line	217
	
l8480:	
;LED_B1.c: 217: if(LED->GO)
	movf	(_LED),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u8481
	goto	u8480
u8481:
	goto	l1122
u8480:
	line	219
	
l8482:	
;LED_B1.c: 218: {
;LED_B1.c: 219: LED->Time++;
	incf	(_LED),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	220
	
l8484:	
;LED_B1.c: 220: if(LED->Time >= 500/10)
	incf	(_LED),w
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
	goto	u8491
	goto	u8490
u8491:
	goto	l1122
u8490:
	line	222
	
l8486:	
;LED_B1.c: 221: {
;LED_B1.c: 222: LED->Time=0;
	incf	(_LED),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	224
	
l8488:	
;LED_B1.c: 224: if(led == 1)
	movf	(setLED_Main@led),w
	xorlw	01h&0ffh
	skipz
	goto	u8501
	goto	u8500
u8501:
	goto	l8492
u8500:
	line	226
	
l8490:	
;LED_B1.c: 225: {
;LED_B1.c: 226: RC7=~RC7;
	movlw	1<<((119)&7)
	xorwf	((119)/8),f
	line	227
;LED_B1.c: 227: }
	goto	l1122
	line	230
	
l1117:	
	
l8492:	
;LED_B1.c: 230: else if(led == 2)
	movf	(setLED_Main@led),w
	xorlw	02h&0ffh
	skipz
	goto	u8511
	goto	u8510
u8511:
	goto	l8496
u8510:
	line	232
	
l8494:	
;LED_B1.c: 231: {
;LED_B1.c: 232: RA3=~RA3;
	movlw	1<<((99)&7)
	xorwf	((99)/8),f
	line	233
;LED_B1.c: 233: }
	goto	l1122
	line	242
	
l1119:	
	
l8496:	
;LED_B1.c: 242: else if(led == 99)
	movf	(setLED_Main@led),w
	xorlw	063h&0ffh
	skipz
	goto	u8521
	goto	u8520
u8521:
	goto	l1122
u8520:
	line	244
	
l8498:	
;LED_B1.c: 243: {
;LED_B1.c: 244: RB5=~RB5;
	movlw	1<<((109)&7)
	xorwf	((109)/8),f
	goto	l1122
	line	245
	
l1121:	
	goto	l1122
	line	247
	
l1120:	
	goto	l1122
	
l1118:	
	goto	l1122
	
l1116:	
	goto	l1122
	line	248
	
l1115:	
	line	249
	
l1122:	
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
psect	text44,local,class=CODE,delta=2,merge=1
	line	35
global __ptext44
__ptext44:	;psect for function _LED_Initialization
psect	text44
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	35
	global	__size_of_LED_Initialization
	__size_of_LED_Initialization	equ	__end_of_LED_Initialization-_LED_Initialization
	
_LED_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _LED_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	38
	
l8820:	
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
	
l1081:	
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
psect	text45,local,class=CODE,delta=2,merge=1
	line	67
global __ptext45
__ptext45:	;psect for function _setLED_Initialization
psect	text45
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
	
l8472:	
;LED_B1.c: 69: LedPointSelect(led);
	movf	(setLED_Initialization@led),w
	fcall	_LedPointSelect
	line	70
	
l8474:	
;LED_B1.c: 70: LED->Enable=1;
	movf	(_LED),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	71
	
l8476:	
;LED_B1.c: 71: setLED(led,0);
	movlb 0	; select bank0
	clrf	(setLED@command)
	movf	(setLED_Initialization@led),w
	fcall	_setLED
	line	72
	
l1087:	
	return
	opt stack 0
GLOBAL	__end_of_setLED_Initialization
	__end_of_setLED_Initialization:
	signat	_setLED_Initialization,4216
	global	_Flash_Memory_Main

;; *************** function _Flash_Memory_Main *****************
;; Defined at:
;;		line 468 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text46,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	468
global __ptext46
__ptext46:	;psect for function _Flash_Memory_Main
psect	text46
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	468
	global	__size_of_Flash_Memory_Main
	__size_of_Flash_Memory_Main	equ	__end_of_Flash_Memory_Main-_Flash_Memory_Main
	
_Flash_Memory_Main:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	470
	
l8912:	
;MCU_16f1518_B1.c: 470: if(Memory->GO)
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u9051
	goto	u9050
u9051:
	goto	l1654
u9050:
	line	472
	
l8914:	
;MCU_16f1518_B1.c: 471: {
;MCU_16f1518_B1.c: 472: if(Memory->Modify)
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u9061
	goto	u9060
u9061:
	goto	l8924
u9060:
	line	474
	
l8916:	
;MCU_16f1518_B1.c: 473: {
;MCU_16f1518_B1.c: 474: Memory->Time++;
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	475
	
l8918:	
;MCU_16f1518_B1.c: 475: if(Memory->Time == 50)
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(032h)
	skipz
	goto	u9075
	moviw	[1]fsr1
	xorlw	high(032h)
u9075:
	skipz
	goto	u9071
	goto	u9070
u9071:
	goto	l1654
u9070:
	line	477
	
l8920:	
;MCU_16f1518_B1.c: 476: {
;MCU_16f1518_B1.c: 477: Memory->Time=0;
	movf	(_Memory),w
	addlw	023h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	478
;MCU_16f1518_B1.c: 478: Memory->Modify=0;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	479
;MCU_16f1518_B1.c: 479: Memory->GO=0;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	480
	
l8922:	
;MCU_16f1518_B1.c: 480: Flash_Memory_Modify();
	fcall	_Flash_Memory_Modify
	goto	l1654
	line	481
	
l1652:	
	line	482
;MCU_16f1518_B1.c: 481: }
;MCU_16f1518_B1.c: 482: }
	goto	l1654
	line	483
	
l1651:	
	line	485
	
l8924:	
;MCU_16f1518_B1.c: 483: else
;MCU_16f1518_B1.c: 484: {
;MCU_16f1518_B1.c: 485: Memory->GO=0;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l1654
	line	486
	
l1653:	
	goto	l1654
	line	487
	
l1650:	
	line	488
	
l1654:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Main
	__end_of_Flash_Memory_Main:
	signat	_Flash_Memory_Main,88
	global	_Flash_Memory_Modify

;; *************** function _Flash_Memory_Modify *****************
;; Defined at:
;;		line 542 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text47,local,class=CODE,delta=2,merge=1
	line	542
global __ptext47
__ptext47:	;psect for function _Flash_Memory_Modify
psect	text47
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	542
	global	__size_of_Flash_Memory_Modify
	__size_of_Flash_Memory_Modify	equ	__end_of_Flash_Memory_Modify-_Flash_Memory_Modify
	
_Flash_Memory_Modify:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Modify: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	545
	
l8582:	
;MCU_16f1518_B1.c: 544: char i;
;MCU_16f1518_B1.c: 545: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Modify@i)
	
l8584:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u8581
	goto	u8580
u8581:
	goto	l8588
u8580:
	goto	l8594
	
l8586:	
	goto	l8594
	line	546
	
l1671:	
	line	547
	
l8588:	
;MCU_16f1518_B1.c: 546: {
;MCU_16f1518_B1.c: 547: Memory->Data[i]=Flash_Memory_Read(i);
	movf	(Flash_Memory_Modify@i),w
	fcall	_Flash_Memory_Read
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(Flash_Memory_Modify@i),w
	addwf	(_Memory),w
	movwf	(??_Flash_Memory_Modify+1)+0
	movf	0+(??_Flash_Memory_Modify+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	545
	
l8590:	
	movlw	(01h)
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(??_Flash_Memory_Modify+0)+0,w
	addwf	(Flash_Memory_Modify@i),f
	
l8592:	
	movlw	(020h)
	subwf	(Flash_Memory_Modify@i),w
	skipc
	goto	u8591
	goto	u8590
u8591:
	goto	l8588
u8590:
	goto	l8594
	
l1672:	
	line	549
	
l8594:	
;MCU_16f1518_B1.c: 548: }
;MCU_16f1518_B1.c: 549: Memory->Data[0]=Product->Data[12];
	movf	(_Product),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	movf	(_Memory),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	550
;MCU_16f1518_B1.c: 550: Memory->Data[1]=Product->Data[13];
	movf	(_Product),w
	addlw	0Dh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_Flash_Memory_Modify+0)+0
	incf	(_Memory),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	551
;MCU_16f1518_B1.c: 551: Memory->Data[2]=Product->Data[14];
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
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Modify+0)+0,w
	movwf	indf1
	line	557
;MCU_16f1518_B1.c: 557: if(Memory->LoopSave)
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u8601
	goto	u8600
u8601:
	goto	l8598
u8600:
	line	559
	
l8596:	
;MCU_16f1518_B1.c: 558: {
;MCU_16f1518_B1.c: 559: Memory->LoopSave=0;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,2
	line	560
;MCU_16f1518_B1.c: 560: TMain->FirstOpen=0;
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	561
;MCU_16f1518_B1.c: 561: TMain->First=0;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	562
;MCU_16f1518_B1.c: 562: Memory->Data[30]=1;
	movf	(_Memory),w
	addlw	01Eh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	goto	l8598
	line	563
	
l1673:	
	line	564
	
l8598:	
;MCU_16f1518_B1.c: 563: }
;MCU_16f1518_B1.c: 564: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	565
	
l8600:	
;MCU_16f1518_B1.c: 565: Flash_Memory_Erasing();
	fcall	_Flash_Memory_Erasing
	line	566
	
l8602:	
;MCU_16f1518_B1.c: 566: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	567
	
l8604:	
;MCU_16f1518_B1.c: 567: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	568
	
l1674:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Modify
	__end_of_Flash_Memory_Modify:
	signat	_Flash_Memory_Modify,88
	global	_Flash_Memory_Erasing

;; *************** function _Flash_Memory_Erasing *****************
;; Defined at:
;;		line 531 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text48,local,class=CODE,delta=2,merge=1
	line	531
global __ptext48
__ptext48:	;psect for function _Flash_Memory_Erasing
psect	text48
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	531
	global	__size_of_Flash_Memory_Erasing
	__size_of_Flash_Memory_Erasing	equ	__end_of_Flash_Memory_Erasing-_Flash_Memory_Erasing
	
_Flash_Memory_Erasing:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Erasing: [wreg+status,2+status,0+pclath+cstack]
	line	533
	
l8200:	
;MCU_16f1518_B1.c: 533: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	534
	
l8202:	
;MCU_16f1518_B1.c: 534: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	535
	
l8204:	
;MCU_16f1518_B1.c: 535: PMADRL=0x00;
	clrf	(401)^0180h	;volatile
	line	536
	
l8206:	
;MCU_16f1518_B1.c: 536: FREE=1;
	bsf	(3244/8)^0180h,(3244)&7	;volatile
	line	537
	
l8208:	
;MCU_16f1518_B1.c: 537: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7	;volatile
	line	538
	
l8210:	
;MCU_16f1518_B1.c: 538: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	539
	
l8212:	
;MCU_16f1518_B1.c: 539: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7	;volatile
	line	540
	
l1668:	
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
psect	text49,local,class=CODE,delta=2,merge=1
	line	429
global __ptext49
__ptext49:	;psect for function _Flash_Memory_Initialization
psect	text49
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	429
	global	__size_of_Flash_Memory_Initialization
	__size_of_Flash_Memory_Initialization	equ	__end_of_Flash_Memory_Initialization-_Flash_Memory_Initialization
	
_Flash_Memory_Initialization:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	432
	
l8840:	
;MCU_16f1518_B1.c: 431: char i;
;MCU_16f1518_B1.c: 432: if(Flash_Memory_Read(31) == 0xaa)
	movlw	(01Fh)
	fcall	_Flash_Memory_Read
	xorlw	0AAh&0ffh
	skipz
	goto	u8991
	goto	u8990
u8991:
	goto	l8856
u8990:
	line	434
	
l8842:	
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
	
l8844:	
;MCU_16f1518_B1.c: 442: i=setPercentValue(((char)((100-60)*1.5)));
	movlw	(03Ch)
	fcall	_setPercentValue
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	(Flash_Memory_Initialization@i)
	line	443
	
l8846:	
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
	
l8848:	
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
	
l8850:	
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
	
l8852:	
;MCU_16f1518_B1.c: 447: if(Flash_Memory_Read(30) == 1)
	movlw	(01Eh)
	fcall	_Flash_Memory_Read
	xorlw	01h&0ffh
	skipz
	goto	u9001
	goto	u9000
u9001:
	goto	l1647
u9000:
	line	449
	
l8854:	
;MCU_16f1518_B1.c: 448: {
;MCU_16f1518_B1.c: 449: TMain->FirstOpen=0;
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	450
;MCU_16f1518_B1.c: 450: TMain->First=0;
	movf	(_TMain),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l1647
	line	451
	
l1645:	
	line	452
;MCU_16f1518_B1.c: 451: }
;MCU_16f1518_B1.c: 452: }
	goto	l1647
	line	453
	
l1644:	
	line	455
	
l8856:	
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
	
l8858:	
;MCU_16f1518_B1.c: 456: Memory->Data[3]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Memory),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	457
	
l8860:	
;MCU_16f1518_B1.c: 457: Memory->Data[4]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Memory),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	458
	
l8862:	
;MCU_16f1518_B1.c: 458: Memory->Data[5]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Memory),w
	addlw	05h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	459
	
l8864:	
;MCU_16f1518_B1.c: 459: Product->Data[21]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	015h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	460
	
l8866:	
;MCU_16f1518_B1.c: 460: Product->Data[22]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	016h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	461
	
l8868:	
;MCU_16f1518_B1.c: 461: Product->Data[23]=i;
	movf	(Flash_Memory_Initialization@i),w
	movwf	(??_Flash_Memory_Initialization+0)+0
	movf	(_Product),w
	addlw	017h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_Flash_Memory_Initialization+0)+0,w
	movwf	indf1
	line	462
	
l8870:	
;MCU_16f1518_B1.c: 462: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	463
	
l8872:	
;MCU_16f1518_B1.c: 463: Flash_Memory_Write();
	fcall	_Flash_Memory_Write
	line	464
	
l8874:	
;MCU_16f1518_B1.c: 464: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	goto	l1647
	line	465
	
l1646:	
	line	466
	
l1647:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Initialization
	__end_of_Flash_Memory_Initialization:
	signat	_Flash_Memory_Initialization,88
	global	_Flash_Memory_Write

;; *************** function _Flash_Memory_Write *****************
;; Defined at:
;;		line 511 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text50,local,class=CODE,delta=2,merge=1
	line	511
global __ptext50
__ptext50:	;psect for function _Flash_Memory_Write
psect	text50
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	511
	global	__size_of_Flash_Memory_Write
	__size_of_Flash_Memory_Write	equ	__end_of_Flash_Memory_Write-_Flash_Memory_Write
	
_Flash_Memory_Write:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Write: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	514
	
l8170:	
;MCU_16f1518_B1.c: 513: char i;
;MCU_16f1518_B1.c: 514: CFGS=0;
	movlb 3	; select bank3
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	515
	
l8172:	
;MCU_16f1518_B1.c: 515: PMADRH=0x30;
	movlw	(030h)
	movwf	(402)^0180h	;volatile
	line	516
	
l8174:	
;MCU_16f1518_B1.c: 516: PMDATH=0;
	clrf	(404)^0180h	;volatile
	line	517
	
l8176:	
;MCU_16f1518_B1.c: 517: FREE=0;
	bcf	(3244/8)^0180h,(3244)&7	;volatile
	line	518
	
l8178:	
;MCU_16f1518_B1.c: 518: LWLO=1;
	bsf	(3245/8)^0180h,(3245)&7	;volatile
	line	519
	
l8180:	
;MCU_16f1518_B1.c: 519: WREN=1;
	bsf	(3242/8)^0180h,(3242)&7	;volatile
	line	520
	
l8182:	
;MCU_16f1518_B1.c: 520: for(i=0 ; i<32 ; i++)
	movlb 0	; select bank0
	clrf	(Flash_Memory_Write@i)
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u8071
	goto	u8070
u8071:
	goto	l8186
u8070:
	goto	l1664
	
l8184:	
	goto	l1664
	line	521
	
l1663:	
	line	522
	
l8186:	
;MCU_16f1518_B1.c: 521: {
;MCU_16f1518_B1.c: 522: PMADRL=i;
	movf	(Flash_Memory_Write@i),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	523
	
l8188:	
;MCU_16f1518_B1.c: 523: PMDATL=Memory->Data[i];
	movlb 0	; select bank0
	movf	(Flash_Memory_Write@i),w
	addwf	(_Memory),w
	movwf	(??_Flash_Memory_Write+0)+0
	movf	0+(??_Flash_Memory_Write+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 3	; select bank3
	movwf	(403)^0180h	;volatile
	line	524
	
l8190:	
;MCU_16f1518_B1.c: 524: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	520
	
l8192:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Write+0)+0
	movf	(??_Flash_Memory_Write+0)+0,w
	addwf	(Flash_Memory_Write@i),f
	
l8194:	
	movlw	(020h)
	subwf	(Flash_Memory_Write@i),w
	skipc
	goto	u8081
	goto	u8080
u8081:
	goto	l8186
u8080:
	
l1664:	
	line	526
;MCU_16f1518_B1.c: 525: }
;MCU_16f1518_B1.c: 526: LWLO=0;
	movlb 3	; select bank3
	bcf	(3245/8)^0180h,(3245)&7	;volatile
	line	527
	
l8196:	
;MCU_16f1518_B1.c: 527: Flash_Memory_Unlock();
	fcall	_Flash_Memory_Unlock
	line	528
	
l8198:	
;MCU_16f1518_B1.c: 528: WREN=0;
	movlb 3	; select bank3
	bcf	(3242/8)^0180h,(3242)&7	;volatile
	line	529
	
l1665:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Write
	__end_of_Flash_Memory_Write:
	signat	_Flash_Memory_Write,88
	global	_Flash_Memory_Unlock

;; *************** function _Flash_Memory_Unlock *****************
;; Defined at:
;;		line 490 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text51,local,class=CODE,delta=2,merge=1
	line	490
global __ptext51
__ptext51:	;psect for function _Flash_Memory_Unlock
psect	text51
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	490
	global	__size_of_Flash_Memory_Unlock
	__size_of_Flash_Memory_Unlock	equ	__end_of_Flash_Memory_Unlock-_Flash_Memory_Unlock
	
_Flash_Memory_Unlock:	
;incstack = 0
	opt	stack 8
; Regs used in _Flash_Memory_Unlock: [wreg]
	line	492
	
l7938:	
;MCU_16f1518_B1.c: 492: PMCON2=0x55;
	movlw	(055h)
	movlb 3	; select bank3
	movwf	(406)^0180h	;volatile
	line	493
;MCU_16f1518_B1.c: 493: PMCON2=0xaa;
	movlw	(0AAh)
	movwf	(406)^0180h	;volatile
	line	494
	
l7940:	
;MCU_16f1518_B1.c: 494: WR=1;
	bsf	(3241/8)^0180h,(3241)&7	;volatile
	line	495
	
l7942:	
;MCU_16f1518_B1.c: 495: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	496
	
l7944:	
;MCU_16f1518_B1.c: 496: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	497
	
l1657:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Unlock
	__end_of_Flash_Memory_Unlock:
	signat	_Flash_Memory_Unlock,88
	global	_Flash_Memory_Read

;; *************** function _Flash_Memory_Read *****************
;; Defined at:
;;		line 499 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
psect	text52,local,class=CODE,delta=2,merge=1
	line	499
global __ptext52
__ptext52:	;psect for function _Flash_Memory_Read
psect	text52
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
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
	
l8152:	
;MCU_16f1518_B1.c: 501: char i,ret=0;
	clrf	(Flash_Memory_Read@ret)
	line	502
	
l8154:	
;MCU_16f1518_B1.c: 502: PMADRH=0x30;
	movlw	(030h)
	movlb 3	; select bank3
	movwf	(402)^0180h	;volatile
	line	503
	
l8156:	
;MCU_16f1518_B1.c: 503: PMADRL=address;
	movlb 0	; select bank0
	movf	(Flash_Memory_Read@address),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	line	504
	
l8158:	
;MCU_16f1518_B1.c: 504: CFGS=0;
	bcf	(3246/8)^0180h,(3246)&7	;volatile
	line	505
	
l8160:	
;MCU_16f1518_B1.c: 505: RD=1;
	bsf	(3240/8)^0180h,(3240)&7	;volatile
	line	506
	
l8162:	
;MCU_16f1518_B1.c: 506: i=PMDATH;
	movf	(404)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@i)
	line	507
	
l8164:	
;MCU_16f1518_B1.c: 507: ret=PMDATL;
	movlb 3	; select bank3
	movf	(403)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Flash_Memory_Read+0)+0
	movf	(??_Flash_Memory_Read+0)+0,w
	movwf	(Flash_Memory_Read@ret)
	line	508
	
l8166:	
;MCU_16f1518_B1.c: 508: return ret;
	movf	(Flash_Memory_Read@ret),w
	goto	l1660
	
l8168:	
	line	509
	
l1660:	
	return
	opt stack 0
GLOBAL	__end_of_Flash_Memory_Read
	__end_of_Flash_Memory_Read:
	signat	_Flash_Memory_Read,4217
	global	_DimmerLights_Main

;; *************** function _DimmerLights_Main *****************
;; Defined at:
;;		line 98 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text53,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	98
global __ptext53
__ptext53:	;psect for function _DimmerLights_Main
psect	text53
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	98
	global	__size_of_DimmerLights_Main
	__size_of_DimmerLights_Main	equ	__end_of_DimmerLights_Main-_DimmerLights_Main
	
_DimmerLights_Main:	
;incstack = 0
	opt	stack 6
; Regs used in _DimmerLights_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	101
	
l8818:	
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
	
l831:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Main
	__end_of_DimmerLights_Main:
	signat	_DimmerLights_Main,88
	global	_setDimmerLights_Main

;; *************** function _setDimmerLights_Main *****************
;; Defined at:
;;		line 115 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text54,local,class=CODE,delta=2,merge=1
	line	115
global __ptext54
__ptext54:	;psect for function _setDimmerLights_Main
psect	text54
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
	
l8428:	
;Dimmer_B1.c: 117: char clear=1;
	clrf	(setDimmerLights_Main@clear)
	incf	(setDimmerLights_Main@clear),f
	line	118
	
l8430:	
;Dimmer_B1.c: 118: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	119
	
l8432:	
;Dimmer_B1.c: 119: if(DimmerLights->Trigger)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u8381
	goto	u8380
u8381:
	goto	l8458
u8380:
	line	146
	
l8434:	
;Dimmer_B1.c: 120: {
;Dimmer_B1.c: 146: if(lights == 1)
	movf	(setDimmerLights_Main@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u8391
	goto	u8390
u8391:
	goto	l8440
u8390:
	line	148
	
l8436:	
;Dimmer_B1.c: 147: {
;Dimmer_B1.c: 148: if(!DimmerLights22->Clear)
	movf	(_DimmerLights22),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u8401
	goto	u8400
u8401:
	goto	l8446
u8400:
	line	150
	
l8438:	
;Dimmer_B1.c: 149: {
;Dimmer_B1.c: 150: clear=0;
	clrf	(setDimmerLights_Main@clear)
	goto	l8446
	line	151
	
l836:	
	line	152
;Dimmer_B1.c: 151: }
;Dimmer_B1.c: 152: }
	goto	l8446
	line	153
	
l835:	
	
l8440:	
;Dimmer_B1.c: 153: else if(lights == 2)
	movf	(setDimmerLights_Main@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u8411
	goto	u8410
u8411:
	goto	l8446
u8410:
	line	155
	
l8442:	
;Dimmer_B1.c: 154: {
;Dimmer_B1.c: 155: if(!DimmerLights11->Clear)
	movf	(_DimmerLights11),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u8421
	goto	u8420
u8421:
	goto	l8446
u8420:
	line	157
	
l8444:	
;Dimmer_B1.c: 156: {
;Dimmer_B1.c: 157: clear=0;
	clrf	(setDimmerLights_Main@clear)
	goto	l8446
	line	158
	
l839:	
	goto	l8446
	line	159
	
l838:	
	goto	l8446
	line	162
	
l837:	
	
l8446:	
;Dimmer_B1.c: 158: }
;Dimmer_B1.c: 159: }
;Dimmer_B1.c: 162: if(clear)
	movf	(setDimmerLights_Main@clear),w
	skipz
	goto	u8430
	goto	l848
u8430:
	line	164
	
l8448:	
;Dimmer_B1.c: 163: {
;Dimmer_B1.c: 164: if(DimmerLights->Switch)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u8441
	goto	u8440
u8441:
	goto	l8454
u8440:
	line	166
	
l8450:	
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
	
l8452:	
;Dimmer_B1.c: 168: setDimmerLights(lights,1);
	clrf	(setDimmerLights@status)
	incf	(setDimmerLights@status),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	line	173
;Dimmer_B1.c: 173: }
	movlb 0	; select bank0
	goto	l848
	line	174
	
l841:	
	line	176
	
l8454:	
;Dimmer_B1.c: 174: else
;Dimmer_B1.c: 175: {
;Dimmer_B1.c: 176: DimmerLights->Trigger=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	177
	
l8456:	
;Dimmer_B1.c: 177: setDimmerLights(lights,0);
	clrf	(setDimmerLights@status)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights
	movlb 0	; select bank0
	goto	l848
	line	181
	
l842:	
	movlb 0	; select bank0
	goto	l848
	line	182
	
l840:	
	line	183
;Dimmer_B1.c: 181: }
;Dimmer_B1.c: 182: }
;Dimmer_B1.c: 183: }
	movlb 0	; select bank0
	goto	l848
	line	184
	
l834:	
	line	186
	
l8458:	
;Dimmer_B1.c: 184: else
;Dimmer_B1.c: 185: {
;Dimmer_B1.c: 186: if(DimmerLights->TriggerAdj)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u8451
	goto	u8450
u8451:
	goto	l848
u8450:
	line	188
	
l8460:	
;Dimmer_B1.c: 187: {
;Dimmer_B1.c: 188: if(!getDimmerLights_Trigger())
	fcall	_getDimmerLights_Trigger
	iorlw	0
	skipz
	goto	u8461
	goto	u8460
u8461:
	movlb 0	; select bank0
	goto	l848
u8460:
	line	190
	
l8462:	
;Dimmer_B1.c: 189: {
;Dimmer_B1.c: 190: DimmerLightsPointSelect(lights);
	movlb 0	; select bank0
	movf	(setDimmerLights_Main@lights),w
	fcall	_DimmerLightsPointSelect
	line	191
	
l8464:	
;Dimmer_B1.c: 191: DimmerLights->TriggerAdj=0;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	192
	
l8466:	
;Dimmer_B1.c: 192: if(DimmerLights->AdjGo)
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u8471
	goto	u8470
u8471:
	goto	l8470
u8470:
	line	194
	
l8468:	
;Dimmer_B1.c: 193: {
;Dimmer_B1.c: 194: setDimmerLights_Adj(lights,1);
	clrf	(setDimmerLights_Adj@status)
	incf	(setDimmerLights_Adj@status),f
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	line	195
;Dimmer_B1.c: 195: setBuz(1,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	line	196
;Dimmer_B1.c: 196: }
	movlb 0	; select bank0
	goto	l848
	line	197
	
l846:	
	line	199
	
l8470:	
;Dimmer_B1.c: 197: else
;Dimmer_B1.c: 198: {
;Dimmer_B1.c: 199: setDimmerLights_Adj(lights,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Adj@status)
	movf	(setDimmerLights_Main@lights),w
	fcall	_setDimmerLights_Adj
	movlb 0	; select bank0
	goto	l848
	line	200
	
l847:	
	movlb 0	; select bank0
	goto	l848
	line	201
	
l845:	
	movlb 0	; select bank0
	goto	l848
	line	202
	
l844:	
	movlb 0	; select bank0
	goto	l848
	line	203
	
l843:	
	line	204
	
l848:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Main
	__end_of_setDimmerLights_Main:
	signat	_setDimmerLights_Main,4216
	global	_setDimmerLights_Adj

;; *************** function _setDimmerLights_Adj *****************
;; Defined at:
;;		line 391 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
;;		_setPercentValue
;;		_setRF_DimmerLights
;;		_setTxData
;; This function is called by:
;;		_setDimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text55,local,class=CODE,delta=2,merge=1
	line	391
global __ptext55
__ptext55:	;psect for function _setDimmerLights_Adj
psect	text55
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	391
	global	__size_of_setDimmerLights_Adj
	__size_of_setDimmerLights_Adj	equ	__end_of_setDimmerLights_Adj-_setDimmerLights_Adj
	
_setDimmerLights_Adj:	
;incstack = 0
	opt	stack 6
; Regs used in _setDimmerLights_Adj: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Adj@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Adj@lights)
	line	393
	
l8136:	
;Dimmer_B1.c: 393: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Adj@lights),w
	fcall	_DimmerLightsPointSelect
	line	394
	
l8138:	
;Dimmer_B1.c: 394: if(status)
	movlb 0	; select bank0
	movf	(setDimmerLights_Adj@status),w
	skipz
	goto	u8050
	goto	l8142
u8050:
	line	396
	
l8140:	
;Dimmer_B1.c: 395: {
;Dimmer_B1.c: 396: DimmerLights->AdjFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	397
;Dimmer_B1.c: 397: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	398
;Dimmer_B1.c: 398: }
	goto	l891
	line	399
	
l888:	
	line	401
	
l8142:	
;Dimmer_B1.c: 399: else
;Dimmer_B1.c: 400: {
;Dimmer_B1.c: 401: if(DimmerLights->AdjFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u8061
	goto	u8060
u8061:
	goto	l891
u8060:
	line	403
	
l8144:	
;Dimmer_B1.c: 402: {
;Dimmer_B1.c: 403: DimmerLights->Signal=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	404
;Dimmer_B1.c: 404: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	406
;Dimmer_B1.c: 405: ;;
;Dimmer_B1.c: 406: DimmerLights->MaxmumValue=DimmerLights->DimmingValue;
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
	line	407
	
l8146:	
;Dimmer_B1.c: 407: setRF_DimmerLights(lights,1);
	clrf	(setRF_DimmerLights@on)
	incf	(setRF_DimmerLights@on),f
	movf	(setDimmerLights_Adj@lights),w
	fcall	_setRF_DimmerLights
	line	408
	
l8148:	
;Dimmer_B1.c: 408: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	409
;Dimmer_B1.c: 409: Memory->Modify=1;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	410
	
l8150:	
;Dimmer_B1.c: 410: Product->Data[(20+lights)]=setPercentValue(DimmerLights->MaxmumValue);
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
	addwf	(_Product),w
	movwf	(??_setDimmerLights_Adj+1)+0
	movf	0+(??_setDimmerLights_Adj+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights_Adj+0)+0,w
	movwf	indf1
	goto	l891
	line	411
	
l890:	
	goto	l891
	line	412
	
l889:	
	line	413
	
l891:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Adj
	__end_of_setDimmerLights_Adj:
	signat	_setDimmerLights_Adj,8312
	global	_setPercentValue

;; *************** function _setPercentValue *****************
;; Defined at:
;;		line 503 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text56,local,class=CODE,delta=2,merge=1
	line	503
global __ptext56
__ptext56:	;psect for function _setPercentValue
psect	text56
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	503
	global	__size_of_setPercentValue
	__size_of_setPercentValue	equ	__end_of_setPercentValue-_setPercentValue
	
_setPercentValue:	
;incstack = 0
	opt	stack 8
; Regs used in _setPercentValue: [wreg+status,2+status,0+pclath+cstack]
;setPercentValue@value stored from wreg
	movlb 0	; select bank0
	movwf	(setPercentValue@value)
	line	506
	
l7918:	
;Dimmer_B1.c: 506: float i=((char)((100-20)*1.5))-((char)((100-60)*1.5));
	movlw	0x0
	movwf	(setPercentValue@i)
	movlw	0x70
	movwf	(setPercentValue@i+1)
	movlw	0x42
	movwf	(setPercentValue@i+2)
	line	507
	
l7920:	
;Dimmer_B1.c: 507: i/=100;
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
	line	508
	
l7922:	
;Dimmer_B1.c: 508: return (100-(char)((value-((char)((100-60)*1.5)))/i));
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
	goto	l924
	
l7924:	
	line	516
	
l924:	
	return
	opt stack 0
GLOBAL	__end_of_setPercentValue
	__end_of_setPercentValue:
	signat	_setPercentValue,4217
	global	_setDimmerLights

;; *************** function _setDimmerLights *****************
;; Defined at:
;;		line 337 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
;;		_setDimmer_Detect
;;		_setLED
;; This function is called by:
;;		_setDimmerLights_Main
;;		_setControl_Lights_Table
;; This function uses a non-reentrant model
;;
psect	text57,local,class=CODE,delta=2,merge=1
	line	337
global __ptext57
__ptext57:	;psect for function _setDimmerLights
psect	text57
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
	
l7820:	
;Dimmer_B1.c: 339: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights@lights),w
	fcall	_DimmerLightsPointSelect
	line	340
	
l7822:	
;Dimmer_B1.c: 340: Dimmer->Load=lights;
	movlb 0	; select bank0
	movf	(setDimmerLights@lights),w
	movwf	(??_setDimmerLights+0)+0
	incf	(_Dimmer),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	line	341
	
l7824:	
;Dimmer_B1.c: 341: if(status)
	movf	(setDimmerLights@status),w
	skipz
	goto	u7700
	goto	l7842
u7700:
	line	343
	
l7826:	
;Dimmer_B1.c: 342: {
;Dimmer_B1.c: 343: DimmerLights->Status=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	344
	
l7828:	
;Dimmer_B1.c: 344: setLED(lights,0);
	clrf	(setLED@command)
	movf	(setDimmerLights@lights),w
	fcall	_setLED
	line	348
	
l7830:	
;Dimmer_B1.c: 346: ;;
;Dimmer_B1.c: 348: DimmerLights->Signal=1;
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	349
	
l7832:	
;Dimmer_B1.c: 349: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	line	351
	
l7834:	
;Dimmer_B1.c: 351: if(!DimmerLights->StatusFlag)
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,6
	goto	u7711
	goto	u7710
u7711:
	goto	l885
u7710:
	line	353
	
l7836:	
;Dimmer_B1.c: 352: {
;Dimmer_B1.c: 353: DimmerLights->StatusFlag=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,6
	line	354
	
l7838:	
;Dimmer_B1.c: 354: setDimmer_Detect(1,1);
	clrf	(setDimmer_Detect@command)
	incf	(setDimmer_Detect@command),f
	movlw	(01h)
	fcall	_setDimmer_Detect
	line	358
	
l7840:	
;Dimmer_B1.c: 355: ;;
;Dimmer_B1.c: 358: DimmerLights->DimmingValue=DimmerLights->MaxmumValue;
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
	goto	l885
	line	360
	
l883:	
	line	361
;Dimmer_B1.c: 360: }
;Dimmer_B1.c: 361: }
	goto	l885
	line	362
	
l882:	
	line	364
	
l7842:	
;Dimmer_B1.c: 362: else
;Dimmer_B1.c: 363: {
;Dimmer_B1.c: 364: DimmerLights->Status=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	366
;Dimmer_B1.c: 366: DimmerLights->DimmingValue=DimmerLights->MinimumValue;
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
	line	373
;Dimmer_B1.c: 373: DimmerLights->Signal=1;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	374
;Dimmer_B1.c: 374: DimmerLights->AdjFlag=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	375
;Dimmer_B1.c: 375: DimmerLights->AdjStatus=0;
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	376
;Dimmer_B1.c: 376: DimmerLights->DimmingTimeValue=3;
	movlw	(03h)
	movwf	(??_setDimmerLights+0)+0
	movf	(_DimmerLights),w
	addlw	02h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setDimmerLights+0)+0,w
	movwf	indf1
	goto	l885
	line	388
	
l884:	
	line	389
	
l885:	
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
;;		_setDimmerLights
;;		_setLED_Initialization
;;		_setSw_Initialization
;;		_setDimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text58,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	74
global __ptext58
__ptext58:	;psect for function _setLED
psect	text58
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	74
	global	__size_of_setLED
	__size_of_setLED	equ	__end_of_setLED-_setLED
	
_setLED:	
;incstack = 0
	opt	stack 8
; Regs used in _setLED: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setLED@led stored from wreg
	movlb 0	; select bank0
	movwf	(setLED@led)
	line	76
	
l7714:	
;LED_B1.c: 76: LedPointSelect(led);
	movf	(setLED@led),w
	fcall	_LedPointSelect
	line	77
	
l7716:	
;LED_B1.c: 77: if(command == 0)
	movlb 0	; select bank0
	movf	(setLED@command),f
	skipz
	goto	u7481
	goto	u7480
u7481:
	goto	l7730
u7480:
	line	80
	
l7718:	
;LED_B1.c: 78: {
;LED_B1.c: 80: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u7491
	goto	u7490
u7491:
	goto	l7722
u7490:
	line	85
	
l7720:	
;LED_B1.c: 81: {
;LED_B1.c: 85: RC7=1;
	bsf	(119/8),(119)&7	;volatile
	line	87
;LED_B1.c: 87: }
	goto	l1112
	line	90
	
l1091:	
	
l7722:	
;LED_B1.c: 90: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u7501
	goto	u7500
u7501:
	goto	l7726
u7500:
	line	95
	
l7724:	
;LED_B1.c: 91: {
;LED_B1.c: 95: RA3=1;
	bsf	(99/8),(99)&7	;volatile
	line	97
;LED_B1.c: 97: }
	goto	l1112
	line	110
	
l1093:	
	
l7726:	
;LED_B1.c: 110: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u7511
	goto	u7510
u7511:
	goto	l1112
u7510:
	line	115
	
l7728:	
;LED_B1.c: 111: {
;LED_B1.c: 115: RB5=1;
	bsf	(109/8),(109)&7	;volatile
	goto	l1112
	line	117
	
l1095:	
	goto	l1112
	line	119
	
l1094:	
	goto	l1112
	
l1092:	
;LED_B1.c: 117: }
;LED_B1.c: 119: }
	goto	l1112
	line	120
	
l1090:	
	
l7730:	
;LED_B1.c: 120: else if(command == 1)
	movf	(setLED@command),w
	xorlw	01h&0ffh
	skipz
	goto	u7521
	goto	u7520
u7521:
	goto	l7744
u7520:
	line	123
	
l7732:	
;LED_B1.c: 121: {
;LED_B1.c: 123: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u7531
	goto	u7530
u7531:
	goto	l7736
u7530:
	line	128
	
l7734:	
;LED_B1.c: 124: {
;LED_B1.c: 128: RC7=0;
	bcf	(119/8),(119)&7	;volatile
	line	130
;LED_B1.c: 130: }
	goto	l1112
	line	133
	
l1098:	
	
l7736:	
;LED_B1.c: 133: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u7541
	goto	u7540
u7541:
	goto	l7740
u7540:
	line	138
	
l7738:	
;LED_B1.c: 134: {
;LED_B1.c: 138: RA3=0;
	bcf	(99/8),(99)&7	;volatile
	line	140
;LED_B1.c: 140: }
	goto	l1112
	line	153
	
l1100:	
	
l7740:	
;LED_B1.c: 153: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u7551
	goto	u7550
u7551:
	goto	l1112
u7550:
	line	158
	
l7742:	
;LED_B1.c: 154: {
;LED_B1.c: 158: RB5=0;
	bcf	(109/8),(109)&7	;volatile
	goto	l1112
	line	160
	
l1102:	
	goto	l1112
	line	162
	
l1101:	
	goto	l1112
	
l1099:	
;LED_B1.c: 160: }
;LED_B1.c: 162: }
	goto	l1112
	line	163
	
l1097:	
	
l7744:	
;LED_B1.c: 163: else if(command == 10)
	movf	(setLED@command),w
	xorlw	0Ah&0ffh
	skipz
	goto	u7561
	goto	u7560
u7561:
	goto	l7760
u7560:
	line	165
	
l7746:	
;LED_B1.c: 164: {
;LED_B1.c: 165: LED->GO=0;
	movf	(_LED),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	166
;LED_B1.c: 166: LED->Time=0;
	incf	(_LED),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	168
	
l7748:	
;LED_B1.c: 168: if(led == 1)
	movf	(setLED@led),w
	xorlw	01h&0ffh
	skipz
	goto	u7571
	goto	u7570
u7571:
	goto	l7752
u7570:
	line	173
	
l7750:	
;LED_B1.c: 169: {
;LED_B1.c: 173: RC7=1;
	bsf	(119/8),(119)&7	;volatile
	line	175
;LED_B1.c: 175: }
	goto	l1112
	line	178
	
l1105:	
	
l7752:	
;LED_B1.c: 178: else if(led == 2)
	movf	(setLED@led),w
	xorlw	02h&0ffh
	skipz
	goto	u7581
	goto	u7580
u7581:
	goto	l7756
u7580:
	line	183
	
l7754:	
;LED_B1.c: 179: {
;LED_B1.c: 183: RA3=1;
	bsf	(99/8),(99)&7	;volatile
	line	185
;LED_B1.c: 185: }
	goto	l1112
	line	198
	
l1107:	
	
l7756:	
;LED_B1.c: 198: else if(led == 99)
	movf	(setLED@led),w
	xorlw	063h&0ffh
	skipz
	goto	u7591
	goto	u7590
u7591:
	goto	l1112
u7590:
	line	203
	
l7758:	
;LED_B1.c: 199: {
;LED_B1.c: 203: RB5=1;
	bsf	(109/8),(109)&7	;volatile
	goto	l1112
	line	205
	
l1109:	
	goto	l1112
	line	207
	
l1108:	
	goto	l1112
	
l1106:	
;LED_B1.c: 205: }
;LED_B1.c: 207: }
	goto	l1112
	line	208
	
l1104:	
	
l7760:	
;LED_B1.c: 208: else if(command == 11)
	movf	(setLED@command),w
	xorlw	0Bh&0ffh
	skipz
	goto	u7601
	goto	u7600
u7601:
	goto	l1112
u7600:
	line	210
	
l7762:	
;LED_B1.c: 209: {
;LED_B1.c: 210: LED->GO=1;
	movf	(_LED),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	l1112
	line	211
	
l1111:	
	goto	l1112
	line	212
	
l1110:	
	goto	l1112
	
l1103:	
	goto	l1112
	
l1096:	
	
l1112:	
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
psect	text59,local,class=CODE,delta=2,merge=1
	line	7
global __ptext59
__ptext59:	;psect for function _LedPointSelect
psect	text59
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\LED_B1.c"
	line	7
	global	__size_of_LedPointSelect
	__size_of_LedPointSelect	equ	__end_of_LedPointSelect-_LedPointSelect
	
_LedPointSelect:	
;incstack = 0
	opt	stack 8
; Regs used in _LedPointSelect: [wreg]
;LedPointSelect@led stored from wreg
	movlb 0	; select bank0
	movwf	(LedPointSelect@led)
	line	10
	
l7586:	
;LED_B1.c: 10: if(led == 1)
	movf	(LedPointSelect@led),w
	xorlw	01h&0ffh
	skipz
	goto	u7251
	goto	u7250
u7251:
	goto	l7590
u7250:
	line	12
	
l7588:	
;LED_B1.c: 11: {
;LED_B1.c: 12: LED=&VarLED1;
	movlw	(_VarLED1)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movwf	(_LED)
	line	13
;LED_B1.c: 13: }
	goto	l1078
	line	16
	
l1073:	
	
l7590:	
;LED_B1.c: 16: else if(led == 2)
	movf	(LedPointSelect@led),w
	xorlw	02h&0ffh
	skipz
	goto	u7261
	goto	u7260
u7261:
	goto	l7594
u7260:
	line	18
	
l7592:	
;LED_B1.c: 17: {
;LED_B1.c: 18: LED=&VarLED2;
	movlw	(_VarLED2)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movwf	(_LED)
	line	19
;LED_B1.c: 19: }
	goto	l1078
	line	28
	
l1075:	
	
l7594:	
;LED_B1.c: 28: else if(led == 99)
	movf	(LedPointSelect@led),w
	xorlw	063h&0ffh
	skipz
	goto	u7271
	goto	u7270
u7271:
	goto	l1078
u7270:
	line	30
	
l7596:	
;LED_B1.c: 29: {
;LED_B1.c: 30: LED=&VarErrLED;
	movlw	(_VarErrLED)&0ffh
	movwf	(??_LedPointSelect+0)+0
	movf	(??_LedPointSelect+0)+0,w
	movwf	(_LED)
	goto	l1078
	line	31
	
l1077:	
	goto	l1078
	line	33
	
l1076:	
	goto	l1078
	
l1074:	
	
l1078:	
	return
	opt stack 0
GLOBAL	__end_of_LedPointSelect
	__end_of_LedPointSelect:
	signat	_LedPointSelect,4216
	global	_getDimmerLights_Trigger

;; *************** function _getDimmerLights_Trigger *****************
;; Defined at:
;;		line 231 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text60,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	231
global __ptext60
__ptext60:	;psect for function _getDimmerLights_Trigger
psect	text60
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	231
	global	__size_of_getDimmerLights_Trigger
	__size_of_getDimmerLights_Trigger	equ	__end_of_getDimmerLights_Trigger-_getDimmerLights_Trigger
	
_getDimmerLights_Trigger:	
;incstack = 0
	opt	stack 8
; Regs used in _getDimmerLights_Trigger: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	233
	
l8116:	
;Dimmer_B1.c: 233: char Status=0,i,length;
	movlb 0	; select bank0
	clrf	(getDimmerLights_Trigger@Status)
	line	238
	
l8118:	
;Dimmer_B1.c: 238: length=2;
	movlw	(02h)
	movwf	(??_getDimmerLights_Trigger+0)+0
	movf	(??_getDimmerLights_Trigger+0)+0,w
	movwf	(getDimmerLights_Trigger@length)
	line	244
	
l8120:	
;Dimmer_B1.c: 244: for(i=0 ; i<length ; i++)
	clrf	(getDimmerLights_Trigger@i)
	goto	l8130
	line	245
	
l859:	
	line	246
	
l8122:	
;Dimmer_B1.c: 245: {
;Dimmer_B1.c: 246: DimmerLightsPointSelect(i+1);
	movf	(getDimmerLights_Trigger@i),w
	addlw	01h
	fcall	_DimmerLightsPointSelect
	line	247
	
l8124:	
;Dimmer_B1.c: 247: if(DimmerLights->Trigger)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	addlw	09h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u8031
	goto	u8030
u8031:
	goto	l8128
u8030:
	line	249
	
l8126:	
;Dimmer_B1.c: 248: {
;Dimmer_B1.c: 249: Status=1;
	clrf	(getDimmerLights_Trigger@Status)
	incf	(getDimmerLights_Trigger@Status),f
	goto	l8128
	line	250
	
l860:	
	line	244
	
l8128:	
	movlw	(01h)
	movwf	(??_getDimmerLights_Trigger+0)+0
	movf	(??_getDimmerLights_Trigger+0)+0,w
	addwf	(getDimmerLights_Trigger@i),f
	goto	l8130
	
l858:	
	
l8130:	
	movf	(getDimmerLights_Trigger@length),w
	subwf	(getDimmerLights_Trigger@i),w
	skipc
	goto	u8041
	goto	u8040
u8041:
	goto	l8122
u8040:
	goto	l8132
	
l861:	
	line	252
	
l8132:	
;Dimmer_B1.c: 250: }
;Dimmer_B1.c: 251: }
;Dimmer_B1.c: 252: return Status;
	movf	(getDimmerLights_Trigger@Status),w
	goto	l862
	
l8134:	
	line	253
	
l862:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmerLights_Trigger
	__end_of_getDimmerLights_Trigger:
	signat	_getDimmerLights_Trigger,89
	global	_DimmerLights_Close

;; *************** function _DimmerLights_Close *****************
;; Defined at:
;;		line 85 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
;; This function is called by:
;;		_DimmerLights_Main
;; This function uses a non-reentrant model
;;
psect	text61,local,class=CODE,delta=2,merge=1
	line	85
global __ptext61
__ptext61:	;psect for function _DimmerLights_Close
psect	text61
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	85
	global	__size_of_DimmerLights_Close
	__size_of_DimmerLights_Close	equ	__end_of_DimmerLights_Close-_DimmerLights_Close
	
_DimmerLights_Close:	
;incstack = 0
	opt	stack 8
; Regs used in _DimmerLights_Close: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	87
	
l8422:	
;Dimmer_B1.c: 87: if(getDimmer_Detect(1))
	movlw	(01h)
	fcall	_getDimmer_Detect
	xorlw	0&0ffh
	skipnz
	goto	u8361
	goto	u8360
u8361:
	goto	l828
u8360:
	line	89
	
l8424:	
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
	goto	u8371
	goto	u8370
u8371:
	goto	l828
u8370:
	line	93
	
l8426:	
;Dimmer_B1.c: 91: {
;Dimmer_B1.c: 92: ;;
;Dimmer_B1.c: 93: Memory->GO=1;
	movf	(_Memory),w
	addlw	022h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	l828
	line	94
	
l827:	
	goto	l828
	line	95
	
l826:	
	line	96
	
l828:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Close
	__end_of_DimmerLights_Close:
	signat	_DimmerLights_Close,88
	global	_setDimmer_Detect

;; *************** function _setDimmer_Detect *****************
;; Defined at:
;;		line 543 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text62,local,class=CODE,delta=2,merge=1
	line	543
global __ptext62
__ptext62:	;psect for function _setDimmer_Detect
psect	text62
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	543
	global	__size_of_setDimmer_Detect
	__size_of_setDimmer_Detect	equ	__end_of_setDimmer_Detect-_setDimmer_Detect
	
_setDimmer_Detect:	
;incstack = 0
	opt	stack 5
; Regs used in _setDimmer_Detect: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmer_Detect@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmer_Detect@dimmer)
	line	545
	
l7710:	
;Dimmer_B1.c: 545: DimmerPointSelect(dimmer);
	movf	(setDimmer_Detect@dimmer),w
	fcall	_DimmerPointSelect
	line	546
	
l7712:	
;Dimmer_B1.c: 546: Dimmer->Detect=command;
	movlb 0	; select bank0
	movf	(_Dimmer),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setDimmer_Detect@command),w
	bcf	indf1,3
	skipz
	bsf	indf1,3
	line	547
	
l940:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmer_Detect
	__end_of_setDimmer_Detect:
	signat	_setDimmer_Detect,8312
	global	_getDimmer_Detect

;; *************** function _getDimmer_Detect *****************
;; Defined at:
;;		line 563 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text63,local,class=CODE,delta=2,merge=1
	line	563
global __ptext63
__ptext63:	;psect for function _getDimmer_Detect
psect	text63
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	563
	global	__size_of_getDimmer_Detect
	__size_of_getDimmer_Detect	equ	__end_of_getDimmer_Detect-_getDimmer_Detect
	
_getDimmer_Detect:	
;incstack = 0
	opt	stack 8
; Regs used in _getDimmer_Detect: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;getDimmer_Detect@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(getDimmer_Detect@dimmer)
	line	565
	
l8090:	
;Dimmer_B1.c: 565: DimmerPointSelect(dimmer);
	movf	(getDimmer_Detect@dimmer),w
	fcall	_DimmerPointSelect
	line	566
	
l8092:	
;Dimmer_B1.c: 566: return Dimmer->Detect;
	movlb 0	; select bank0
	movf	(_Dimmer),w
	movwf	fsr1l
	clrf fsr1h	
	
	rrf	indf1,w
	movwf	(??_getDimmer_Detect+0)+0
	rrf	(??_getDimmer_Detect+0)+0,f
	rrf	(??_getDimmer_Detect+0)+0,w
	andlw	(1<<1)-1
	goto	l952
	
l8094:	
	line	567
	
l952:	
	return
	opt stack 0
GLOBAL	__end_of_getDimmer_Detect
	__end_of_getDimmer_Detect:
	signat	_getDimmer_Detect,4217
	global	_DimmerPointSelect

;; *************** function _DimmerPointSelect *****************
;; Defined at:
;;		line 518 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
;;		_setDimmer_Detect
;;		_getDimmer_Detect
;;		_setDimmer_TempERROR
;;		_setDimmer_LoadERROR
;;		_setDimmer_PFERROR
;;		_getDimmer_TempERROR
;;		_getDimmer_LoadERROR
;;		_getDimmer_PFERROR
;; This function uses a non-reentrant model
;;
psect	text64,local,class=CODE,delta=2,merge=1
	line	518
global __ptext64
__ptext64:	;psect for function _DimmerPointSelect
psect	text64
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	518
	global	__size_of_DimmerPointSelect
	__size_of_DimmerPointSelect	equ	__end_of_DimmerPointSelect-_DimmerPointSelect
	
_DimmerPointSelect:	
;incstack = 0
	opt	stack 5
; Regs used in _DimmerPointSelect: [wreg]
;DimmerPointSelect@dimmer stored from wreg
	movlb 0	; select bank0
	movwf	(DimmerPointSelect@dimmer)
	line	522
	
l7582:	
;Dimmer_B1.c: 522: if(dimmer == 1)
	movf	(DimmerPointSelect@dimmer),w
	xorlw	01h&0ffh
	skipz
	goto	u7241
	goto	u7240
u7241:
	goto	l928
u7240:
	line	524
	
l7584:	
;Dimmer_B1.c: 523: {
;Dimmer_B1.c: 524: Dimmer=&Dimmer1;
	movlw	(_Dimmer1)&0ffh
	movwf	(??_DimmerPointSelect+0)+0
	movf	(??_DimmerPointSelect+0)+0,w
	movwf	(_Dimmer)
	goto	l928
	line	525
	
l927:	
	line	527
	
l928:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerPointSelect
	__end_of_DimmerPointSelect:
	signat	_DimmerPointSelect,4216
	global	_getDimmerLights_StatusFlag

;; *************** function _getDimmerLights_StatusFlag *****************
;; Defined at:
;;		line 206 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text65,local,class=CODE,delta=2,merge=1
	line	206
global __ptext65
__ptext65:	;psect for function _getDimmerLights_StatusFlag
psect	text65
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	206
	global	__size_of_getDimmerLights_StatusFlag
	__size_of_getDimmerLights_StatusFlag	equ	__end_of_getDimmerLights_StatusFlag-_getDimmerLights_StatusFlag
	
_getDimmerLights_StatusFlag:	
;incstack = 0
	opt	stack 8
; Regs used in _getDimmerLights_StatusFlag: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	208
	
l8096:	
;Dimmer_B1.c: 208: char Status=0,i,length;
	movlb 0	; select bank0
	clrf	(getDimmerLights_StatusFlag@Status)
	line	213
	
l8098:	
;Dimmer_B1.c: 213: length=2;
	movlw	(02h)
	movwf	(??_getDimmerLights_StatusFlag+0)+0
	movf	(??_getDimmerLights_StatusFlag+0)+0,w
	movwf	(getDimmerLights_StatusFlag@length)
	line	220
	
l8100:	
;Dimmer_B1.c: 220: for(i=0 ; i<length ; i++)
	clrf	(getDimmerLights_StatusFlag@i)
	goto	l8110
	line	221
	
l852:	
	line	222
	
l8102:	
;Dimmer_B1.c: 221: {
;Dimmer_B1.c: 222: DimmerLightsPointSelect(i+1);
	movf	(getDimmerLights_StatusFlag@i),w
	addlw	01h
	fcall	_DimmerLightsPointSelect
	line	223
	
l8104:	
;Dimmer_B1.c: 223: if(DimmerLights->StatusFlag)
	movlb 0	; select bank0
	movf	(_DimmerLights),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u8011
	goto	u8010
u8011:
	goto	l8108
u8010:
	line	225
	
l8106:	
;Dimmer_B1.c: 224: {
;Dimmer_B1.c: 225: Status=1;
	clrf	(getDimmerLights_StatusFlag@Status)
	incf	(getDimmerLights_StatusFlag@Status),f
	goto	l8108
	line	226
	
l853:	
	line	220
	
l8108:	
	movlw	(01h)
	movwf	(??_getDimmerLights_StatusFlag+0)+0
	movf	(??_getDimmerLights_StatusFlag+0)+0,w
	addwf	(getDimmerLights_StatusFlag@i),f
	goto	l8110
	
l851:	
	
l8110:	
	movf	(getDimmerLights_StatusFlag@length),w
	subwf	(getDimmerLights_StatusFlag@i),w
	skipc
	goto	u8021
	goto	u8020
u8021:
	goto	l8102
u8020:
	goto	l8112
	
l854:	
	line	228
	
l8112:	
;Dimmer_B1.c: 226: }
;Dimmer_B1.c: 227: }
;Dimmer_B1.c: 228: return Status;
	movf	(getDimmerLights_StatusFlag@Status),w
	goto	l855
	
l8114:	
	line	229
	
l855:	
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setDimmerLights_Initialization
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text66,local,class=CODE,delta=2,merge=1
	line	32
global __ptext66
__ptext66:	;psect for function _DimmerLights_Initialization
psect	text66
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	32
	global	__size_of_DimmerLights_Initialization
	__size_of_DimmerLights_Initialization	equ	__end_of_DimmerLights_Initialization-_DimmerLights_Initialization
	
_DimmerLights_Initialization:	
;incstack = 0
	opt	stack 7
; Regs used in _DimmerLights_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	35
	
l8812:	
;Dimmer_B1.c: 35: DimmerLights11=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movlb 0	; select bank0
	movwf	(??_DimmerLights_Initialization+0)+0
	movf	(??_DimmerLights_Initialization+0)+0,w
	movwf	(_DimmerLights11)
	line	36
	
l8814:	
;Dimmer_B1.c: 36: setDimmerLights_Initialization(1);
	movlw	(01h)
	fcall	_setDimmerLights_Initialization
	line	40
	
l8816:	
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
	
l820:	
	return
	opt stack 0
GLOBAL	__end_of_DimmerLights_Initialization
	__end_of_DimmerLights_Initialization:
	signat	_DimmerLights_Initialization,88
	global	_setDimmerLights_Initialization

;; *************** function _setDimmerLights_Initialization *****************
;; Defined at:
;;		line 49 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text67,local,class=CODE,delta=2,merge=1
	line	49
global __ptext67
__ptext67:	;psect for function _setDimmerLights_Initialization
psect	text67
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
	
l8410:	
;Dimmer_B1.c: 51: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Initialization@lights),w
	fcall	_DimmerLightsPointSelect
	line	53
	
l8412:	
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
	
l8414:	
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
	
l8416:	
;Dimmer_B1.c: 55: DimmerLights->Clear=1;
	movf	(_DimmerLights),w
	addlw	0Ch
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	61
	
l8418:	
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
	
l8420:	
;Dimmer_B1.c: 79: DimmerLights->MaxmumValue=getPercentValue(Product->Data[(20+lights)]);
	movf	(setDimmerLights_Initialization@lights),w
	addlw	014h
	addwf	(_Product),w
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
	
l823:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Initialization
	__end_of_setDimmerLights_Initialization:
	signat	_setDimmerLights_Initialization,4216
	global	_getPercentValue

;; *************** function _getPercentValue *****************
;; Defined at:
;;		line 488 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text68,local,class=CODE,delta=2,merge=1
	line	488
global __ptext68
__ptext68:	;psect for function _getPercentValue
psect	text68
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	488
	global	__size_of_getPercentValue
	__size_of_getPercentValue	equ	__end_of_getPercentValue-_getPercentValue
	
_getPercentValue:	
;incstack = 0
	opt	stack 2
; Regs used in _getPercentValue: [wreg+status,2+status,0+pclath+cstack]
;getPercentValue@value stored from wreg
	movlb 0	; select bank0
	movwf	(getPercentValue@value)
	line	491
	
l7532:	
;Dimmer_B1.c: 491: float i=((char)((100-20)*1.5))-((char)((100-60)*1.5));
	movlw	0x0
	movwf	(getPercentValue@i)
	movlw	0x70
	movwf	(getPercentValue@i+1)
	movlw	0x42
	movwf	(getPercentValue@i+2)
	line	492
	
l7534:	
;Dimmer_B1.c: 492: i/=100;
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
	line	493
	
l7536:	
;Dimmer_B1.c: 493: return (char)(((100-value)*i)+((char)((100-60)*1.5)));
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
	goto	l921
	
l7538:	
	line	501
	
l921:	
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
psect	text69,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
global __ptext69
__ptext69:	;psect for function ___fttol
psect	text69
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l7482:	
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
	goto	u7041
	goto	u7040
u7041:
	goto	l7488
u7040:
	line	50
	
l7484:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3069
	
l7486:	
	goto	l3069
	
l3068:	
	line	51
	
l7488:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u7055:
	lsrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u7050:
	decfsz	wreg,f
	goto	u7055
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l7490:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l7492:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l7494:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l7496:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l7498:	
	btfss	(___fttol@exp1),7
	goto	u7061
	goto	u7060
u7061:
	goto	l7508
u7060:
	line	57
	
l7500:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u7071
	goto	u7070
u7071:
	goto	l7506
u7070:
	line	58
	
l7502:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3069
	
l7504:	
	goto	l3069
	
l3071:	
	goto	l7506
	line	59
	
l3072:	
	line	60
	
l7506:	
	movlw	01h
u7085:
	lsrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	decfsz	wreg,f
	goto	u7085

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u7091
	goto	u7090
u7091:
	goto	l7506
u7090:
	goto	l7518
	
l3073:	
	line	62
	goto	l7518
	
l3070:	
	line	63
	
l7508:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u7101
	goto	u7100
u7101:
	goto	l7516
u7100:
	line	64
	
l7510:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l3069
	
l7512:	
	goto	l3069
	
l3075:	
	line	65
	goto	l7516
	
l3077:	
	line	66
	
l7514:	
	movlw	01h
u7115:
	lslf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	wreg,f
	goto	u7115
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l7516
	line	68
	
l3076:	
	line	65
	
l7516:	
	movf	(___fttol@exp1),f
	skipz
	goto	u7121
	goto	u7120
u7121:
	goto	l7514
u7120:
	goto	l7518
	
l3078:	
	goto	l7518
	line	69
	
l3074:	
	line	70
	
l7518:	
	movf	(___fttol@sign1),w
	skipz
	goto	u7130
	goto	l7522
u7130:
	line	71
	
l7520:	
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
	goto	l7522
	
l3079:	
	line	72
	
l7522:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l3069
	
l7524:	
	line	73
	
l3069:	
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
psect	text70,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
	line	62
global __ptext70
__ptext70:	;psect for function ___ftmul
psect	text70
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l7432:	
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
	goto	u6921
	goto	u6920
u6921:
	goto	l7438
u6920:
	line	68
	
l7434:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l3049
	
l7436:	
	goto	l3049
	
l3048:	
	line	69
	
l7438:	
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
	goto	u6931
	goto	u6930
u6931:
	goto	l7444
u6930:
	line	70
	
l7440:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l3049
	
l7442:	
	goto	l3049
	
l3050:	
	line	71
	
l7444:	
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
u6945:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u6940:
	decfsz	wreg,f
	goto	u6945
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
u6955:
	lsrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u6950:
	decfsz	wreg,f
	goto	u6955
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
	
l7446:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l7448:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l7450:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l7452:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l7454:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l7456
	line	135
	
l3051:	
	line	136
	
l7456:	
	btfss	(___ftmul@f1),(0)&7
	goto	u6961
	goto	u6960
u6961:
	goto	l7460
u6960:
	line	137
	
l7458:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l7460
	
l3052:	
	line	138
	
l7460:	
	movlw	01h
u6975:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u6975

	line	139
	
l7462:	
	movlw	01h
u6985:
	lslf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	decfsz	wreg,f
	goto	u6985
	line	140
	
l7464:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u6991
	goto	u6990
u6991:
	goto	l7456
u6990:
	goto	l7466
	
l3053:	
	line	143
	
l7466:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l7468
	line	144
	
l3054:	
	line	145
	
l7468:	
	btfss	(___ftmul@f1),(0)&7
	goto	u7001
	goto	u7000
u7001:
	goto	l7472
u7000:
	line	146
	
l7470:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	goto	l7472
	
l3055:	
	line	147
	
l7472:	
	movlw	01h
u7015:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u7015

	line	148
	
l7474:	
	movlw	01h
u7025:
	lsrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	decfsz	wreg,f
	goto	u7025

	line	149
	
l7476:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u7031
	goto	u7030
u7031:
	goto	l7468
u7030:
	goto	l7478
	
l3056:	
	line	156
	
l7478:	
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
	goto	l3049
	
l7480:	
	line	157
	
l3049:	
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
psect	text71,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\ftdiv.c"
	line	49
global __ptext71
__ptext71:	;psect for function ___ftdiv
psect	text71
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l7390:	
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
	goto	u6841
	goto	u6840
u6841:
	goto	l7396
u6840:
	line	56
	
l7392:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l3034
	
l7394:	
	goto	l3034
	
l3033:	
	line	57
	
l7396:	
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
	goto	u6851
	goto	u6850
u6851:
	goto	l7402
u6850:
	line	58
	
l7398:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l3034
	
l7400:	
	goto	l3034
	
l3035:	
	line	59
	
l7402:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l7404:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l7406:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u6865:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u6860:
	decfsz	wreg,f
	goto	u6865
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l7408:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u6875:
	lsrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u6870:
	decfsz	wreg,f
	goto	u6875
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l7410:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l7412:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l7414:	
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
	goto	l7416
	line	69
	
l3036:	
	line	70
	
l7416:	
	movlw	01h
u6885:
	lslf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	decfsz	wreg,f
	goto	u6885
	line	71
	
l7418:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u6895
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u6895
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u6895:
	skipc
	goto	u6891
	goto	u6890
u6891:
	goto	l7424
u6890:
	line	72
	
l7420:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	subwfb	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	subwfb	(___ftdiv@f1+2),f
	line	73
	
l7422:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l7424
	line	74
	
l3037:	
	line	75
	
l7424:	
	movlw	01h
u6905:
	lslf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	decfsz	wreg,f
	goto	u6905
	line	76
	
l7426:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u6911
	goto	u6910
u6911:
	goto	l7416
u6910:
	goto	l7428
	
l3038:	
	line	77
	
l7428:	
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
	goto	l3034
	
l7430:	
	line	78
	
l3034:	
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
psect	text72,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
	line	86
global __ptext72
__ptext72:	;psect for function ___ftadd
psect	text72
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l7318:	
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
	
l7320:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u6610
	goto	l7326
u6610:
	
l7322:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u6621
	goto	u6620
u6621:
	goto	l7330
u6620:
	
l7324:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u6631
	goto	u6630
u6631:
	goto	l7330
u6630:
	goto	l7326
	
l3002:	
	line	93
	
l7326:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3003
	
l7328:	
	goto	l3003
	
l3000:	
	line	94
	
l7330:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u6640
	goto	l3006
u6640:
	
l7332:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u6651
	goto	u6650
u6651:
	goto	l7336
u6650:
	
l7334:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u6661
	goto	u6660
u6661:
	goto	l7336
u6660:
	
l3006:	
	line	95
	goto	l3003
	
l3004:	
	line	96
	
l7336:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l7338:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u6671
	goto	u6670
u6671:
	goto	l3007
u6670:
	line	98
	
l7340:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3007:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u6681
	goto	u6680
u6681:
	goto	l3008
u6680:
	line	100
	
l7342:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3008:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l7344:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l7346:	
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
	goto	u6691
	goto	u6690
u6691:
	goto	l7358
u6690:
	goto	l7348
	line	109
	
l3010:	
	line	110
	
l7348:	
	movlw	01h
u6705:
	lslf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	decfsz	wreg,f
	goto	u6705
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l7350:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u6711
	goto	u6710
u6711:
	goto	l7356
u6710:
	
l7352:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u6721
	goto	u6720
u6721:
	goto	l7348
u6720:
	goto	l7356
	
l3012:	
	goto	l7356
	
l3013:	
	line	113
	goto	l7356
	
l3015:	
	line	114
	
l7354:	
	movlw	01h
u6735:
	lsrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	decfsz	wreg,f
	goto	u6735

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l7356
	line	116
	
l3014:	
	line	113
	
l7356:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u6741
	goto	u6740
u6741:
	goto	l7354
u6740:
	goto	l3017
	
l3016:	
	line	117
	goto	l3017
	
l3009:	
	
l7358:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u6751
	goto	u6750
u6751:
	goto	l3017
u6750:
	goto	l7360
	line	120
	
l3019:	
	line	121
	
l7360:	
	movlw	01h
u6765:
	lslf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	decfsz	wreg,f
	goto	u6765
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l7362:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u6771
	goto	u6770
u6771:
	goto	l7368
u6770:
	
l7364:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u6781
	goto	u6780
u6781:
	goto	l7360
u6780:
	goto	l7368
	
l3021:	
	goto	l7368
	
l3022:	
	line	124
	goto	l7368
	
l3024:	
	line	125
	
l7366:	
	movlw	01h
u6795:
	lsrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	decfsz	wreg,f
	goto	u6795

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l7368
	line	127
	
l3023:	
	line	124
	
l7368:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u6801
	goto	u6800
u6801:
	goto	l7366
u6800:
	goto	l3017
	
l3025:	
	goto	l3017
	line	128
	
l3018:	
	line	129
	
l3017:	
	btfss	(___ftadd@sign),(7)&7
	goto	u6811
	goto	u6810
u6811:
	goto	l7372
u6810:
	line	131
	
l7370:	
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
	goto	l7372
	line	133
	
l3026:	
	line	134
	
l7372:	
	btfss	(___ftadd@sign),(6)&7
	goto	u6821
	goto	u6820
u6821:
	goto	l7376
u6820:
	line	136
	
l7374:	
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
	goto	l7376
	line	138
	
l3027:	
	line	139
	
l7376:	
	clrf	(___ftadd@sign)
	line	140
	
l7378:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	addwfc	(___ftadd@f2+1),f
	movf	(___ftadd@f1+2),w
	addwfc	(___ftadd@f2+2),f
	line	141
	
l7380:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u6831
	goto	u6830
u6831:
	goto	l7386
u6830:
	line	142
	
l7382:	
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
	
l7384:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l7386
	line	145
	
l3028:	
	line	146
	
l7386:	
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
	goto	l3003
	
l7388:	
	line	148
	
l3003:	
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
psect	text73,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
	line	32
global __ptext73
__ptext73:	;psect for function ___awtoft
psect	text73
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l7306:	
	movlb 0	; select bank0
	clrf	(___awtoft@sign)
	line	37
	
l7308:	
	btfss	(___awtoft@c+1),7
	goto	u6601
	goto	u6600
u6601:
	goto	l7314
u6600:
	line	38
	
l7310:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l7312:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l7314
	line	40
	
l2977:	
	line	41
	
l7314:	
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
	goto	l2978
	
l7316:	
	line	42
	
l2978:	
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
psect	text74,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
global __ptext74
__ptext74:	;psect for function ___ftpack
psect	text74
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l7276:	
	movlb 0	; select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u6490
	goto	l7280
u6490:
	
l7278:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u6501
	goto	u6500
u6501:
	goto	l7286
u6500:
	goto	l7280
	
l2983:	
	line	65
	
l7280:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l2984
	
l7282:	
	goto	l2984
	
l2981:	
	line	66
	goto	l7286
	
l2986:	
	line	67
	
l7284:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u6515:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u6515

	goto	l7286
	line	69
	
l2985:	
	line	66
	
l7286:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u6521
	goto	u6520
u6521:
	goto	l7284
u6520:
	goto	l2988
	
l2987:	
	line	70
	goto	l2988
	
l2989:	
	line	71
	
l7288:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l7290:	
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
	
l7292:	
	movlw	01h
u6535:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u6535

	line	74
	
l2988:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u6541
	goto	u6540
u6541:
	goto	l7288
u6540:
	goto	l7296
	
l2990:	
	line	75
	goto	l7296
	
l2992:	
	line	76
	
l7294:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u6555:
	lslf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	decfsz	wreg,f
	goto	u6555
	goto	l7296
	line	78
	
l2991:	
	line	75
	
l7296:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u6561
	goto	u6560
u6561:
	goto	l7294
u6560:
	
l2993:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u6571
	goto	u6570
u6571:
	goto	l2994
u6570:
	line	80
	
l7298:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l2994:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l7300:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u6585:
	lslf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u6580:
	decfsz	wreg,f
	goto	u6585
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l7302:	
	movf	(___ftpack@sign),w
	skipz
	goto	u6590
	goto	l2995
u6590:
	line	84
	
l7304:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2995:	
	line	85
	line	86
	
l2984:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
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
psect	text75,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	45
global __ptext75
__ptext75:	;psect for function _DelayOff_Main
psect	text75
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	45
	global	__size_of_DelayOff_Main
	__size_of_DelayOff_Main	equ	__end_of_DelayOff_Main-_DelayOff_Main
	
_DelayOff_Main:	
;incstack = 0
	opt	stack 8
; Regs used in _DelayOff_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	48
	
l8810:	
;DelayOff_B1.c: 48: DlyOff_Main(1);
	movlw	(01h)
	fcall	_DlyOff_Main
	line	52
;DelayOff_B1.c: 52: DlyOff_Main(2);
	movlw	(02h)
	fcall	_DlyOff_Main
	line	58
	
l634:	
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
psect	text76,local,class=CODE,delta=2,merge=1
	line	66
global __ptext76
__ptext76:	;psect for function _DlyOff_Main
psect	text76
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
	
l8378:	
;DelayOff_B1.c: 68: DelayOffPointSelect(sw);
	movf	(DlyOff_Main@sw),w
	fcall	_DelayOffPointSelect
	line	69
	
l8380:	
;DelayOff_B1.c: 69: if(DelayOff->GO)
	movlb 0	; select bank0
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u8331
	goto	u8330
u8331:
	goto	l643
u8330:
	line	71
	
l8382:	
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
	
l8384:	
;DelayOff_B1.c: 72: if(DelayOff->SecondTime >= 5400)
	movf	(_DelayOff),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_DlyOff_Main+0)+0
	moviw	[1]fsr1
	movwf	(??_DlyOff_Main+0)+0+1
	movlw	high(01518h)
	subwf	1+(??_DlyOff_Main+0)+0,w
	movlw	low(01518h)
	skipnz
	subwf	0+(??_DlyOff_Main+0)+0,w
	skipc
	goto	u8341
	goto	u8340
u8341:
	goto	l643
u8340:
	line	74
	
l8386:	
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
	
l8388:	
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
	
l8390:	
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
	goto	u8351
	goto	u8350
u8351:
	goto	l643
u8350:
	line	78
	
l8392:	
;DelayOff_B1.c: 77: {
;DelayOff_B1.c: 78: DelayOff->MinuteTime=0;
	movf	(_DelayOff),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	79
	
l8394:	
;DelayOff_B1.c: 79: DelayOff->GO=0;
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,1
	line	80
	
l8396:	
;DelayOff_B1.c: 80: setSw_Status(sw,0);
	clrf	(setSw_Status@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setSw_Status
	line	81
	
l8398:	
;DelayOff_B1.c: 81: setRFSW_Status(sw,0);
	movlb 0	; select bank0
	clrf	(setRFSW_Status@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setRFSW_Status
	line	82
	
l8400:	
;DelayOff_B1.c: 82: setRF_DimmerLights(sw,0);
	movlb 0	; select bank0
	clrf	(setRF_DimmerLights@on)
	movf	(DlyOff_Main@sw),w
	fcall	_setRF_DimmerLights
	line	83
	
l8402:	
;DelayOff_B1.c: 83: setDimmerLights_Trigger(sw,1);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Trigger@command)
	incf	(setDimmerLights_Trigger@command),f
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Trigger
	line	84
	
l8404:	
;DelayOff_B1.c: 84: setDimmerLights_Switch(sw,0);
	movlb 0	; select bank0
	clrf	(setDimmerLights_Switch@command)
	movf	(DlyOff_Main@sw),w
	fcall	_setDimmerLights_Switch
	line	85
	
l8406:	
;DelayOff_B1.c: 85: setTxData(1);
	movlw	(01h)
	fcall	_setTxData
	line	86
	
l8408:	
;DelayOff_B1.c: 86: setBuz(1,100);
	movlw	low(064h)
	movlb 0	; select bank0
	movwf	(setBuz@time)
	movlw	high(064h)
	movwf	((setBuz@time))+1
	movlw	(01h)
	fcall	_setBuz
	goto	l643
	line	87
	
l642:	
	goto	l643
	line	88
	
l641:	
	goto	l643
	line	89
	
l640:	
	line	90
	
l643:	
	return
	opt stack 0
GLOBAL	__end_of_DlyOff_Main
	__end_of_DlyOff_Main:
	signat	_DlyOff_Main,4216
	global	_setTxData

;; *************** function _setTxData *****************
;; Defined at:
;;		line 130 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;;		_MainT
;;		_setControl_Lights_Table
;;		_setRFSW_Control
;;		_setRFSW_AdjControl
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerOffFunc
;; This function uses a non-reentrant model
;;
psect	text77,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	130
global __ptext77
__ptext77:	;psect for function _setTxData
psect	text77
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
	
l7668:	
;RF_Control_B1.c: 132: char i;
;RF_Control_B1.c: 133: RfPointSelect(rf);
	movf	(setTxData@rf),w
	fcall	_RfPointSelect
	line	134
	
l7670:	
;RF_Control_B1.c: 134: if(RF->Enable)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u7411
	goto	u7410
u7411:
	goto	l2303
u7410:
	line	136
	
l7672:	
;RF_Control_B1.c: 135: {
;RF_Control_B1.c: 136: if(RF->TransceiveGO == 0 && 1)
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,2
	goto	u7421
	goto	u7420
u7421:
	goto	l2303
u7420:
	line	139
	
l7674:	
;RF_Control_B1.c: 137: {
;RF_Control_B1.c: 139: RF->TransceiveGO=1;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	line	140
	
l7676:	
;RF_Control_B1.c: 140: RF_Data[0]=0x63;
	movlw	(063h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	(_RF_Data)^080h
	line	141
	
l7678:	
;RF_Control_B1.c: 141: RF_Data[1]=0x02;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_RF_Data)^080h+01h
	line	142
	
l7680:	
;RF_Control_B1.c: 142: for(i=2 ;i< 21 ;i++)
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	movwf	(setTxData@i)
	
l7682:	
	movlw	(015h)
	subwf	(setTxData@i),w
	skipc
	goto	u7431
	goto	u7430
u7431:
	goto	l7686
u7430:
	goto	l2303
	
l7684:	
	goto	l2303
	line	143
	
l2301:	
	line	144
	
l7686:	
;RF_Control_B1.c: 143: {
;RF_Control_B1.c: 144: RF_Data[i]=Product->Data[i];
	movf	(setTxData@i),w
	addwf	(_Product),w
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
	
l7688:	
	movlw	(01h)
	movwf	(??_setTxData+0)+0
	movf	(??_setTxData+0)+0,w
	addwf	(setTxData@i),f
	
l7690:	
	movlw	(015h)
	subwf	(setTxData@i),w
	skipc
	goto	u7441
	goto	u7440
u7441:
	goto	l7686
u7440:
	goto	l2303
	
l2302:	
	goto	l2303
	line	169
	
l2300:	
	goto	l2303
	line	170
	
l2299:	
	line	171
	
l2303:	
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
psect	text78,local,class=CODE,delta=2,merge=1
	line	7
global __ptext78
__ptext78:	;psect for function _RfPointSelect
psect	text78
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	7
	global	__size_of_RfPointSelect
	__size_of_RfPointSelect	equ	__end_of_RfPointSelect-_RfPointSelect
	
_RfPointSelect:	
;incstack = 0
	opt	stack 8
; Regs used in _RfPointSelect: [wreg]
;RfPointSelect@rf stored from wreg
	movlb 0	; select bank0
	movwf	(RfPointSelect@rf)
	line	10
	
l7598:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u7281
	goto	u7280
u7281:
	goto	l2262
u7280:
	line	12
	
l7600:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??_RfPointSelect+0)+0
	movf	(??_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	l2262
	line	13
	
l2261:	
	line	15
	
l2262:	
	return
	opt stack 0
GLOBAL	__end_of_RfPointSelect
	__end_of_RfPointSelect:
	signat	_RfPointSelect,4216
	global	_setSw_Status

;; *************** function _setSw_Status *****************
;; Defined at:
;;		line 130 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
;; Parameters:    Size  Location     Type
;;  sw              1    wreg     unsigned char 
;;  command         1    1[BANK0 ] unsigned char 
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
;;		_setControl_Lights_Table
;;		_setRFSW_Control
;;		_setDimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text79,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	130
global __ptext79
__ptext79:	;psect for function _setSw_Status
psect	text79
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	130
	global	__size_of_setSw_Status
	__size_of_setSw_Status	equ	__end_of_setSw_Status-_setSw_Status
	
_setSw_Status:	
;incstack = 0
	opt	stack 6
; Regs used in _setSw_Status: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setSw_Status@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setSw_Status@sw)
	line	132
	
l7640:	
;Switch_B1.c: 132: SwPointSelect(sw);
	movf	(setSw_Status@sw),w
	fcall	_SwPointSelect
	line	133
	
l7642:	
;Switch_B1.c: 133: Sw->Status=command;
	movf	(_Sw),w
	movwf	fsr1l
	movf	(_Sw+1),w
	movwf	fsr1h

	movlb 0	; select bank0
	movf	(setSw_Status@command),w
	bcf	indf1,6
	skipz
	bsf	indf1,6
	line	134
	
l2563:	
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
;;  sw              1    0[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
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
psect	text80,local,class=CODE,delta=2,merge=1
	line	16
global __ptext80
__ptext80:	;psect for function _SwPointSelect
psect	text80
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Switch_B1.c"
	line	16
	global	__size_of_SwPointSelect
	__size_of_SwPointSelect	equ	__end_of_SwPointSelect-_SwPointSelect
	
_SwPointSelect:	
;incstack = 0
	opt	stack 9
; Regs used in _SwPointSelect: [wreg+status,2+status,0]
;SwPointSelect@sw stored from wreg
	movlb 0	; select bank0
	movwf	(SwPointSelect@sw)
	line	19
	
l7602:	
;Switch_B1.c: 19: if(sw == 1)
	movf	(SwPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u7291
	goto	u7290
u7291:
	goto	l7606
u7290:
	line	21
	
l7604:	
;Switch_B1.c: 20: {
;Switch_B1.c: 21: Sw=&Sw1;
	movlw	low(_Sw1)
	movwf	(_Sw)
	movlw	high(_Sw1)
	movwf	(_Sw+1)
	line	22
;Switch_B1.c: 22: }
	goto	l2538
	line	25
	
l2535:	
	
l7606:	
;Switch_B1.c: 25: else if(sw == 2)
	movf	(SwPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u7301
	goto	u7300
u7301:
	goto	l2538
u7300:
	line	27
	
l7608:	
;Switch_B1.c: 26: {
;Switch_B1.c: 27: Sw=&Sw2;
	movlw	low(_Sw2)
	movwf	(_Sw)
	movlw	high(_Sw2)
	movwf	(_Sw+1)
	goto	l2538
	line	28
	
l2537:	
	goto	l2538
	line	36
	
l2536:	
	
l2538:	
	return
	opt stack 0
GLOBAL	__end_of_SwPointSelect
	__end_of_SwPointSelect:
	signat	_SwPointSelect,4216
	global	_setRF_DimmerLights

;; *************** function _setRF_DimmerLights *****************
;; Defined at:
;;		line 435 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text81,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	435
global __ptext81
__ptext81:	;psect for function _setRF_DimmerLights
psect	text81
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
	
l7644:	
;RF_Control_B1.c: 437: char status;
;RF_Control_B1.c: 438: status=1;
	clrf	(setRF_DimmerLights@status)
	incf	(setRF_DimmerLights@status),f
	line	439
	
l7646:	
;RF_Control_B1.c: 439: status<<=(lights-1);
	movf	(setRF_DimmerLights@lights),w
	addlw	-1
	incf	wreg,f
	
	goto	u7390
u7395:
	clrc
	rlf	(setRF_DimmerLights@status),f
u7390:
	addlw	-1
	skipz
	goto	u7395
	line	440
	
l7648:	
;RF_Control_B1.c: 440: Product->Data[11]=lights;
	movf	(setRF_DimmerLights@lights),w
	movwf	(??_setRF_DimmerLights+0)+0
	movf	(_Product),w
	addlw	0Bh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_setRF_DimmerLights+0)+0,w
	movwf	indf1
	line	441
	
l7650:	
;RF_Control_B1.c: 441: Product->Data[9]=Product->Data[20+lights];
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
	line	442
	
l7652:	
;RF_Control_B1.c: 442: Product->Data[17]=Product->Data[26+lights];
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
	line	443
	
l7654:	
;RF_Control_B1.c: 443: if(on)
	movf	(setRF_DimmerLights@on),w
	skipz
	goto	u7400
	goto	l7658
u7400:
	line	445
	
l7656:	
;RF_Control_B1.c: 444: {
;RF_Control_B1.c: 445: Product->Data[15]=(Product->Data[15]|status);
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
	line	446
;RF_Control_B1.c: 446: }
	goto	l2376
	line	447
	
l2374:	
	line	449
	
l7658:	
;RF_Control_B1.c: 447: else
;RF_Control_B1.c: 448: {
;RF_Control_B1.c: 449: Product->Data[15]=(Product->Data[15]&(~status));
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
	goto	l2376
	line	450
	
l2375:	
	line	451
	
l2376:	
	return
	opt stack 0
GLOBAL	__end_of_setRF_DimmerLights
	__end_of_setRF_DimmerLights:
	signat	_setRF_DimmerLights,8312
	global	_setRFSW_Status

;; *************** function _setRFSW_Status *****************
;; Defined at:
;;		line 415 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
;;		_setControl_Lights_Table
;;		_Sw_DimmerOnFunc
;;		_Sw_DimmerAdjFunc
;;		_setDimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text82,local,class=CODE,delta=2,merge=1
	line	415
global __ptext82
__ptext82:	;psect for function _setRFSW_Status
psect	text82
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	415
	global	__size_of_setRFSW_Status
	__size_of_setRFSW_Status	equ	__end_of_setRFSW_Status-_setRFSW_Status
	
_setRFSW_Status:	
;incstack = 0
	opt	stack 7
; Regs used in _setRFSW_Status: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setRFSW_Status@sw stored from wreg
	movlb 0	; select bank0
	movwf	(setRFSW_Status@sw)
	line	417
	
l7816:	
;RF_Control_B1.c: 417: RfSWPointSelect(sw);
	movf	(setRFSW_Status@sw),w
	fcall	_RfSWPointSelect
	line	418
	
l7818:	
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
	
l2367:	
	return
	opt stack 0
GLOBAL	__end_of_setRFSW_Status
	__end_of_setRFSW_Status:
	signat	_setRFSW_Status,8312
	global	_RfSWPointSelect

;; *************** function _RfSWPointSelect *****************
;; Defined at:
;;		line 338 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
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
psect	text83,local,class=CODE,delta=2,merge=1
	line	338
global __ptext83
__ptext83:	;psect for function _RfSWPointSelect
psect	text83
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	338
	global	__size_of_RfSWPointSelect
	__size_of_RfSWPointSelect	equ	__end_of_RfSWPointSelect-_RfSWPointSelect
	
_RfSWPointSelect:	
;incstack = 0
	opt	stack 7
; Regs used in _RfSWPointSelect: [wreg]
;RfSWPointSelect@sw stored from wreg
	movlb 0	; select bank0
	movwf	(RfSWPointSelect@sw)
	line	341
	
l7764:	
;RF_Control_B1.c: 341: if(sw == 1)
	movf	(RfSWPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u7611
	goto	u7610
u7611:
	goto	l2349
u7610:
	line	343
	
l7766:	
;RF_Control_B1.c: 342: {
;RF_Control_B1.c: 343: RFSW=&RFSW1;
	movlw	(_RFSW1)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	line	344
	
l2349:	
	line	347
;RF_Control_B1.c: 344: }
;RF_Control_B1.c: 347: if(sw == 2)
	movlb 0	; select bank0
	movf	(RfSWPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u7621
	goto	u7620
u7621:
	goto	l2351
u7620:
	line	349
	
l7768:	
;RF_Control_B1.c: 348: {
;RF_Control_B1.c: 349: RFSW=&RFSW2;
	movlw	(_RFSW2)&0ffh
	movwf	(??_RfSWPointSelect+0)+0
	movf	(??_RfSWPointSelect+0)+0,w
	movlb 1	; select bank1
	movwf	(_RFSW)^080h
	goto	l2351
	line	350
	
l2350:	
	line	358
	
l2351:	
	return
	opt stack 0
GLOBAL	__end_of_RfSWPointSelect
	__end_of_RfSWPointSelect:
	signat	_RfSWPointSelect,4216
	global	_setDimmerLights_Trigger

;; *************** function _setDimmerLights_Trigger *****************
;; Defined at:
;;		line 443 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text84,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	443
global __ptext84
__ptext84:	;psect for function _setDimmerLights_Trigger
psect	text84
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	443
	global	__size_of_setDimmerLights_Trigger
	__size_of_setDimmerLights_Trigger	equ	__end_of_setDimmerLights_Trigger-_setDimmerLights_Trigger
	
_setDimmerLights_Trigger:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_Trigger: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Trigger@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Trigger@lights)
	line	445
	
l7660:	
;Dimmer_B1.c: 445: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Trigger@lights),w
	fcall	_DimmerLightsPointSelect
	line	446
	
l7662:	
;Dimmer_B1.c: 446: DimmerLights->Trigger=command;
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
	line	447
	
l909:	
	return
	opt stack 0
GLOBAL	__end_of_setDimmerLights_Trigger
	__end_of_setDimmerLights_Trigger:
	signat	_setDimmerLights_Trigger,8312
	global	_setDimmerLights_Switch

;; *************** function _setDimmerLights_Switch *****************
;; Defined at:
;;		line 433 in file "C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
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
psect	text85,local,class=CODE,delta=2,merge=1
	line	433
global __ptext85
__ptext85:	;psect for function _setDimmerLights_Switch
psect	text85
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	433
	global	__size_of_setDimmerLights_Switch
	__size_of_setDimmerLights_Switch	equ	__end_of_setDimmerLights_Switch-_setDimmerLights_Switch
	
_setDimmerLights_Switch:	
;incstack = 0
	opt	stack 7
; Regs used in _setDimmerLights_Switch: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setDimmerLights_Switch@lights stored from wreg
	movlb 0	; select bank0
	movwf	(setDimmerLights_Switch@lights)
	line	435
	
l7664:	
;Dimmer_B1.c: 435: DimmerLightsPointSelect(lights);
	movf	(setDimmerLights_Switch@lights),w
	fcall	_DimmerLightsPointSelect
	line	436
	
l7666:	
;Dimmer_B1.c: 436: DimmerLights->Switch=command;
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
	line	437
	
l903:	
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
;;		_getDimmerLights_StatusFlag
;;		_getDimmerLights_Trigger
;;		_setDimmerLights
;;		_setDimmerLights_Adj
;;		_setDimmerLights_AdjRF
;;		_setDimmerLights_Switch
;;		_setDimmerLights_AdjGo
;;		_setDimmerLights_Trigger
;;		_setDimmerLights_TriggerAdj
;;		_setDimmerLights_ERROR
;;		_setDimmerLights_TriggerERROR
;;		_setDimmerLights_GO
;;		_setDimmerLights_MaxmumValue
;;		_setDimmerLights_Clear
;;		_getDimmerLights_Clear
;; This function uses a non-reentrant model
;;
psect	text86,local,class=CODE,delta=2,merge=1
	line	7
global __ptext86
__ptext86:	;psect for function _DimmerLightsPointSelect
psect	text86
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Dimmer_B1.c"
	line	7
	global	__size_of_DimmerLightsPointSelect
	__size_of_DimmerLightsPointSelect	equ	__end_of_DimmerLightsPointSelect-_DimmerLightsPointSelect
	
_DimmerLightsPointSelect:	
;incstack = 0
	opt	stack 7
; Regs used in _DimmerLightsPointSelect: [wreg]
;DimmerLightsPointSelect@lights stored from wreg
	movlb 0	; select bank0
	movwf	(DimmerLightsPointSelect@lights)
	line	10
	
l7526:	
;Dimmer_B1.c: 10: if(lights == 1)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	01h&0ffh
	skipz
	goto	u7141
	goto	u7140
u7141:
	goto	l815
u7140:
	line	12
	
l7528:	
;Dimmer_B1.c: 11: {
;Dimmer_B1.c: 12: DimmerLights=&DimmerLights1;
	movlw	(_DimmerLights1)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	line	13
	
l815:	
	line	17
;Dimmer_B1.c: 13: }
;Dimmer_B1.c: 17: if(lights == 2)
	movf	(DimmerLightsPointSelect@lights),w
	xorlw	02h&0ffh
	skipz
	goto	u7151
	goto	u7150
u7151:
	goto	l817
u7150:
	line	19
	
l7530:	
;Dimmer_B1.c: 18: {
;Dimmer_B1.c: 19: DimmerLights=&DimmerLights2;
	movlw	(_DimmerLights2)&0ffh
	movwf	(??_DimmerLightsPointSelect+0)+0
	movf	(??_DimmerLightsPointSelect+0)+0,w
	movwf	(_DimmerLights)
	goto	l817
	line	20
	
l816:	
	line	29
	
l817:	
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
;;		_MainT
;;		_setLog_Code
;;		_setControl_Lights_Table
;;		_setRFSW_Control
;;		_setSw_Main
;;		_DimmerLights_ERROR
;; This function uses a non-reentrant model
;;
psect	text87,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	22
global __ptext87
__ptext87:	;psect for function _setBuz
psect	text87
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	22
	global	__size_of_setBuz
	__size_of_setBuz	equ	__end_of_setBuz-_setBuz
	
_setBuz:	
;incstack = 0
	opt	stack 8
; Regs used in _setBuz: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;setBuz@count stored from wreg
	movlb 0	; select bank0
	movwf	(setBuz@count)
	line	24
	
l7622:	
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
	
l7624:	
;Buzzer_B1.c: 25: if(Buz->Enable)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u7351
	goto	u7350
u7351:
	goto	l123
u7350:
	line	27
	
l7626:	
;Buzzer_B1.c: 26: {
;Buzzer_B1.c: 27: if(!Buz->GO)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,1
	goto	u7361
	goto	u7360
u7361:
	goto	l7632
u7360:
	line	29
	
l7628:	
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
	
l7630:	
;Buzzer_B1.c: 33: RB3=1;
	bsf	(107/8),(107)&7	;volatile
	line	34
;Buzzer_B1.c: 34: }
	goto	l123
	line	35
	
l118:	
	line	37
	
l7632:	
;Buzzer_B1.c: 35: else
;Buzzer_B1.c: 36: {
;Buzzer_B1.c: 37: if(!Buz->BufferStatus1)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,3
	goto	u7371
	goto	u7370
u7371:
	goto	l7636
u7370:
	line	39
	
l7634:	
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
	goto	l123
	line	43
	
l120:	
	
l7636:	
;Buzzer_B1.c: 43: else if(!Buz->BufferStatus2)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u7381
	goto	u7380
u7381:
	goto	l123
u7380:
	line	45
	
l7638:	
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
	goto	l123
	line	48
	
l122:	
	goto	l123
	line	49
	
l121:	
	goto	l123
	
l119:	
	goto	l123
	line	50
	
l117:	
	line	51
	
l123:	
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
psect	text88,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul16.c"
	line	15
global __ptext88
__ptext88:	;psect for function ___wmul
psect	text88
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 8
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l7610:	
	movlb 0	; select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l7612
	line	44
	
l2826:	
	line	45
	
l7612:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u7311
	goto	u7310
u7311:
	goto	l2827
u7310:
	line	46
	
l7614:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	
l2827:	
	line	47
	movlw	01h
	
u7325:
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	decfsz	wreg,f
	goto	u7325
	line	48
	
l7616:	
	movlw	01h
	
u7335:
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	decfsz	wreg,f
	goto	u7335
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u7341
	goto	u7340
u7341:
	goto	l7612
u7340:
	goto	l7618
	
l2828:	
	line	52
	
l7618:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l2829
	
l7620:	
	line	53
	
l2829:	
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
psect	text89,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	30
global __ptext89
__ptext89:	;psect for function _DelayOff_Initialization
psect	text89
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\DelayOff_B1.c"
	line	30
	global	__size_of_DelayOff_Initialization
	__size_of_DelayOff_Initialization	equ	__end_of_DelayOff_Initialization-_DelayOff_Initialization
	
_DelayOff_Initialization:	
;incstack = 0
	opt	stack 9
; Regs used in _DelayOff_Initialization: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	33
	
l8808:	
;DelayOff_B1.c: 33: DlyOff_Initialization(1);
	movlw	(01h)
	fcall	_DlyOff_Initialization
	line	37
;DelayOff_B1.c: 37: DlyOff_Initialization(2);
	movlw	(02h)
	fcall	_DlyOff_Initialization
	line	43
	
l631:	
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
psect	text90,local,class=CODE,delta=2,merge=1
	line	60
global __ptext90
__ptext90:	;psect for function _DlyOff_Initialization
psect	text90
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
	
l8374:	
;DelayOff_B1.c: 62: DelayOffPointSelect(sw);
	movf	(DlyOff_Initialization@sw),w
	fcall	_DelayOffPointSelect
	line	63
	
l8376:	
;DelayOff_B1.c: 63: DelayOff->Enable=1;
	movlb 0	; select bank0
	movf	(_DelayOff),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	64
	
l637:	
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
psect	text91,local,class=CODE,delta=2,merge=1
	line	8
global __ptext91
__ptext91:	;psect for function _DelayOffPointSelect
psect	text91
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
	
l7540:	
;DelayOff_B1.c: 11: if(sw == 1)
	movf	(DelayOffPointSelect@sw),w
	xorlw	01h&0ffh
	skipz
	goto	u7161
	goto	u7160
u7161:
	goto	l7544
u7160:
	line	13
	
l7542:	
;DelayOff_B1.c: 12: {
;DelayOff_B1.c: 13: DelayOff=&DlySw1;
	movlw	(_DlySw1)&0ffh
	movwf	(??_DelayOffPointSelect+0)+0
	movf	(??_DelayOffPointSelect+0)+0,w
	movwf	(_DelayOff)
	line	14
;DelayOff_B1.c: 14: }
	goto	l628
	line	17
	
l625:	
	
l7544:	
;DelayOff_B1.c: 17: else if(sw == 2)
	movf	(DelayOffPointSelect@sw),w
	xorlw	02h&0ffh
	skipz
	goto	u7171
	goto	u7170
u7171:
	goto	l628
u7170:
	line	19
	
l7546:	
;DelayOff_B1.c: 18: {
;DelayOff_B1.c: 19: DelayOff=&DlySw2;
	movlw	(_DlySw2)&0ffh
	movwf	(??_DelayOffPointSelect+0)+0
	movf	(??_DelayOffPointSelect+0)+0,w
	movwf	(_DelayOff)
	goto	l628
	line	20
	
l627:	
	goto	l628
	line	28
	
l626:	
	
l628:	
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
psect	text92,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	97
global __ptext92
__ptext92:	;psect for function _CC2500_PowerOnInitial
psect	text92
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	97
	global	__size_of_CC2500_PowerOnInitial
	__size_of_CC2500_PowerOnInitial	equ	__end_of_CC2500_PowerOnInitial-_CC2500_PowerOnInitial
	
_CC2500_PowerOnInitial:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_PowerOnInitial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	99
	
l8802:	
;CC2500_B1.c: 99: CC2500_PowerRST();
	fcall	_CC2500_PowerRST
	line	100
	
l8804:	
;CC2500_B1.c: 100: CC2500_InitSetREG();
	fcall	_CC2500_InitSetREG
	line	101
	
l8806:	
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
	
l313:	
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
psect	text93,local,class=CODE,delta=2,merge=1
	line	183
global __ptext93
__ptext93:	;psect for function _CC2500_SIDLEMode
psect	text93
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	183
	global	__size_of_CC2500_SIDLEMode
	__size_of_CC2500_SIDLEMode	equ	__end_of_CC2500_SIDLEMode-_CC2500_SIDLEMode
	
_CC2500_SIDLEMode:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_SIDLEMode: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l8372:	
;CC2500_B1.c: 185: CC2500_WriteCommand(0x36);
	movlw	(036h)
	fcall	_CC2500_WriteCommand
	line	186
	
l344:	
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
psect	text94,local,class=CODE,delta=2,merge=1
	line	110
global __ptext94
__ptext94:	;psect for function _CC2500_PowerRST
psect	text94
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	110
	global	__size_of_CC2500_PowerRST
	__size_of_CC2500_PowerRST	equ	__end_of_CC2500_PowerRST-_CC2500_PowerRST
	
_CC2500_PowerRST:	
;incstack = 0
	opt	stack 9
; Regs used in _CC2500_PowerRST: [wreg+status,2+status,0+pclath+cstack]
	line	112
	
l8324:	
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
	
l8326:	
;CC2500_B1.c: 115: DelayTime_1us(10);
	movlw	low(0Ah)
	movwf	(DelayTime_1us@count)
	movlw	high(0Ah)
	movwf	((DelayTime_1us@count))+1
	fcall	_DelayTime_1us
	line	116
	
l8328:	
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
	
l8330:	
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
	
l8332:	
;CC2500_B1.c: 120: RC4=0;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	121
	
l8334:	
;CC2500_B1.c: 121: SPI0Buffer=0x30;
	movlw	(030h)
	movwf	(??_CC2500_PowerRST+0)+0
	movf	(??_CC2500_PowerRST+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	122
;CC2500_B1.c: 122: while(RC2==1);
	goto	l316
	
l317:	
	
l316:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u8271
	goto	u8270
u8271:
	goto	l316
u8270:
	goto	l8336
	
l318:	
	line	123
	
l8336:	
;CC2500_B1.c: 123: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	124
;CC2500_B1.c: 124: while(RC2==1);
	goto	l319
	
l320:	
	
l319:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u8281
	goto	u8280
u8281:
	goto	l319
u8280:
	
l321:	
	line	125
;CC2500_B1.c: 125: RC0=0;
	bcf	(112/8),(112)&7	;volatile
	line	126
;CC2500_B1.c: 126: RC4=1;
	bsf	(116/8),(116)&7	;volatile
	line	127
	
l322:	
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
psect	text95,local,class=CODE,delta=2,merge=1
	line	131
global __ptext95
__ptext95:	;psect for function _CC2500_InitSetREG
psect	text95
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	131
	global	__size_of_CC2500_InitSetREG
	__size_of_CC2500_InitSetREG	equ	__end_of_CC2500_InitSetREG-_CC2500_InitSetREG
	
_CC2500_InitSetREG:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_InitSetREG: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	136
	
l8338:	
;CC2500_B1.c: 133: unsigned char loop_c;
;CC2500_B1.c: 134: unsigned char temp1,temp2;
;CC2500_B1.c: 136: for(loop_c=0;loop_c<47;loop_c++)
	movlb 0	; select bank0
	clrf	(CC2500_InitSetREG@loop_c)
	
l8340:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u8291
	goto	u8290
u8291:
	goto	l8344
u8290:
	goto	l327
	
l8342:	
	goto	l327
	line	137
	
l325:	
	line	138
	
l8344:	
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
	
l8346:	
;CC2500_B1.c: 141: CC2500_WriteREG(temp1,temp2);
	movf	(CC2500_InitSetREG@temp2),w
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	movwf	(CC2500_WriteREG@value)
	movf	(CC2500_InitSetREG@temp1),w
	fcall	_CC2500_WriteREG
	line	136
	
l8348:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitSetREG+0)+0
	movf	(??_CC2500_InitSetREG+0)+0,w
	addwf	(CC2500_InitSetREG@loop_c),f
	
l8350:	
	movlw	(02Fh)
	subwf	(CC2500_InitSetREG@loop_c),w
	skipc
	goto	u8301
	goto	u8300
u8301:
	goto	l8344
u8300:
	goto	l327
	
l326:	
	line	143
	
l327:	
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
psect	text96,local,class=CODE,delta=2,merge=1
	line	147
global __ptext96
__ptext96:	;psect for function _CC2500_InitPATable
psect	text96
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	147
	global	__size_of_CC2500_InitPATable
	__size_of_CC2500_InitPATable	equ	__end_of_CC2500_InitPATable-_CC2500_InitPATable
	
_CC2500_InitPATable:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_InitPATable: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	152
	
l8352:	
;CC2500_B1.c: 149: unsigned char loop_d;
;CC2500_B1.c: 150: unsigned char temp;
;CC2500_B1.c: 152: for(loop_d=0;loop_d<8;loop_d++)
	movlb 0	; select bank0
	clrf	(CC2500_InitPATable@loop_d)
	
l8354:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u8311
	goto	u8310
u8311:
	goto	l8358
u8310:
	goto	l332
	
l8356:	
	goto	l332
	line	153
	
l330:	
	line	154
	
l8358:	
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
	
l8360:	
;CC2500_B1.c: 155: CC2500_WriteREG(0x3E,temp);
	movf	(CC2500_InitPATable@temp),w
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	movwf	(CC2500_WriteREG@value)
	movlw	(03Eh)
	fcall	_CC2500_WriteREG
	line	152
	
l8362:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_CC2500_InitPATable+0)+0
	movf	(??_CC2500_InitPATable+0)+0,w
	addwf	(CC2500_InitPATable@loop_d),f
	
l8364:	
	movlw	(08h)
	subwf	(CC2500_InitPATable@loop_d),w
	skipc
	goto	u8321
	goto	u8320
u8321:
	goto	l8358
u8320:
	goto	l332
	
l331:	
	line	157
	
l332:	
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
psect	text97,local,class=CODE,delta=2,merge=1
	line	227
global __ptext97
__ptext97:	;psect for function _CC2500_WriteREG
psect	text97
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
	
l8078:	
;CC2500_B1.c: 229: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	230
	
l8080:	
;CC2500_B1.c: 230: SPI0Buffer=w_addr;
	movf	(CC2500_WriteREG@w_addr),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	231
;CC2500_B1.c: 231: while(RC2==1);
	goto	l361
	
l362:	
	
l361:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u8001
	goto	u8000
u8001:
	goto	l361
u8000:
	goto	l8082
	
l363:	
	line	232
	
l8082:	
;CC2500_B1.c: 232: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	233
	
l8084:	
;CC2500_B1.c: 233: SPI0Buffer=value;
	movlb 0	; select bank0
	movf	(CC2500_WriteREG@value),w
	movwf	(??_CC2500_WriteREG+0)+0
	movf	(??_CC2500_WriteREG+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	234
	
l8086:	
;CC2500_B1.c: 234: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	235
	
l8088:	
;CC2500_B1.c: 235: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	236
	
l364:	
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
psect	text98,local,class=CODE,delta=2,merge=1
	line	175
global __ptext98
__ptext98:	;psect for function _CC2500_FrequencyCabr
psect	text98
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	175
	global	__size_of_CC2500_FrequencyCabr
	__size_of_CC2500_FrequencyCabr	equ	__end_of_CC2500_FrequencyCabr-_CC2500_FrequencyCabr
	
_CC2500_FrequencyCabr:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_FrequencyCabr: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
l8370:	
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
	
l341:	
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
psect	text99,local,class=CODE,delta=2,merge=1
	line	283
global __ptext99
__ptext99:	;psect for function _DelayTime_1us
psect	text99
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	283
	global	__size_of_DelayTime_1us
	__size_of_DelayTime_1us	equ	__end_of_DelayTime_1us-_DelayTime_1us
	
_DelayTime_1us:	
;incstack = 0
	opt	stack 9
; Regs used in _DelayTime_1us: [wreg+status,2]
	line	286
	
l8066:	
;CC2500_B1.c: 285: unsigned int i,j;
;CC2500_B1.c: 286: for(i=1;i<count;i++)
	movlw	low(01h)
	movlb 0	; select bank0
	movwf	(DelayTime_1us@i)
	movlw	high(01h)
	movwf	((DelayTime_1us@i))+1
	goto	l385
	line	287
	
l386:	
	
l8068:	
;CC2500_B1.c: 287: for(j=0;j<=1;j++);
	clrf	(DelayTime_1us@j)
	clrf	(DelayTime_1us@j+1)
	
l8070:	
	movlw	high(02h)
	subwf	(DelayTime_1us@j+1),w
	movlw	low(02h)
	skipnz
	subwf	(DelayTime_1us@j),w
	skipc
	goto	u7971
	goto	u7970
u7971:
	goto	l8074
u7970:
	goto	l8076
	
l8072:	
	goto	l8076
	
l387:	
	
l8074:	
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
	goto	u7981
	goto	u7980
u7981:
	goto	l8074
u7980:
	goto	l8076
	
l388:	
	line	286
	
l8076:	
	movlw	low(01h)
	addwf	(DelayTime_1us@i),f
	movlw	high(01h)
	addwfc	(DelayTime_1us@i+1),f
	
l385:	
	movf	(DelayTime_1us@count+1),w
	subwf	(DelayTime_1us@i+1),w
	skipz
	goto	u7995
	movf	(DelayTime_1us@count),w
	subwf	(DelayTime_1us@i),w
u7995:
	skipc
	goto	u7991
	goto	u7990
u7991:
	goto	l8068
u7990:
	goto	l390
	
l389:	
	line	288
	
l390:	
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
psect	text100,local,class=CODE,delta=2,merge=1
	line	161
global __ptext100
__ptext100:	;psect for function _CC2500_ClearTXFIFO
psect	text100
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	161
	global	__size_of_CC2500_ClearTXFIFO
	__size_of_CC2500_ClearTXFIFO	equ	__end_of_CC2500_ClearTXFIFO-_CC2500_ClearTXFIFO
	
_CC2500_ClearTXFIFO:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_ClearTXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	163
	
l8366:	
;CC2500_B1.c: 163: CC2500_WriteCommand(0x3B);
	movlw	(03Bh)
	fcall	_CC2500_WriteCommand
	line	164
	
l335:	
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
psect	text101,local,class=CODE,delta=2,merge=1
	line	168
global __ptext101
__ptext101:	;psect for function _CC2500_ClearRXFIFO
psect	text101
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	168
	global	__size_of_CC2500_ClearRXFIFO
	__size_of_CC2500_ClearRXFIFO	equ	__end_of_CC2500_ClearRXFIFO-_CC2500_ClearRXFIFO
	
_CC2500_ClearRXFIFO:	
;incstack = 0
	opt	stack 8
; Regs used in _CC2500_ClearRXFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	170
	
l8368:	
;CC2500_B1.c: 170: CC2500_WriteCommand(0x3A);
	movlw	(03Ah)
	fcall	_CC2500_WriteCommand
	line	171
	
l338:	
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
;;		_setRF_Enable
;;		_RF_RxDisable
;; This function uses a non-reentrant model
;;
psect	text102,local,class=CODE,delta=2,merge=1
	line	253
global __ptext102
__ptext102:	;psect for function _CC2500_WriteCommand
psect	text102
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
	
l7896:	
;CC2500_B1.c: 255: RC4=0;
	bcf	(116/8),(116)&7	;volatile
	line	256
	
l7898:	
;CC2500_B1.c: 256: SPI0Buffer=command;
	movf	(CC2500_WriteCommand@command),w
	movwf	(??_CC2500_WriteCommand+0)+0
	movf	(??_CC2500_WriteCommand+0)+0,w
	movlb 1	; select bank1
	movwf	(_SPI0Buffer)^080h
	line	258
;CC2500_B1.c: 258: while(RC2==1);
	goto	l373
	
l374:	
	
l373:	
	movlb 0	; select bank0
	btfsc	(114/8),(114)&7	;volatile
	goto	u7761
	goto	u7760
u7761:
	goto	l373
u7760:
	goto	l7900
	
l375:	
	line	260
	
l7900:	
;CC2500_B1.c: 260: CC2500_WriteByte();
	fcall	_CC2500_WriteByte
	line	261
	
l7902:	
;CC2500_B1.c: 261: RC4=1;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	263
	
l376:	
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
psect	text103,local,class=CODE,delta=2,merge=1
	line	193
global __ptext103
__ptext103:	;psect for function _CC2500_WriteByte
psect	text103
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\CC2500_B1.c"
	line	193
	global	__size_of_CC2500_WriteByte
	__size_of_CC2500_WriteByte	equ	__end_of_CC2500_WriteByte-_CC2500_WriteByte
	
_CC2500_WriteByte:	
;incstack = 0
	opt	stack 7
; Regs used in _CC2500_WriteByte: [wreg+status,2+status,0]
	line	196
	
l7782:	
;CC2500_B1.c: 195: unsigned char loop_a;
;CC2500_B1.c: 196: for(loop_a=0;loop_a<8;loop_a++)
	movlb 0	; select bank0
	clrf	(CC2500_WriteByte@loop_a)
	
l7784:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u7641
	goto	u7640
u7641:
	goto	l347
u7640:
	goto	l351
	
l7786:	
	goto	l351
	line	197
	
l347:	
	line	198
;CC2500_B1.c: 197: {
;CC2500_B1.c: 198: if(SPI0Buffer&0x80)
	movlb 1	; select bank1
	btfss	(_SPI0Buffer)^080h,(7)&7
	goto	u7651
	goto	u7650
u7651:
	goto	l349
u7650:
	line	199
	
l7788:	
;CC2500_B1.c: 199: RC0=1;
	movlb 0	; select bank0
	bsf	(112/8),(112)&7	;volatile
	goto	l350
	line	200
	
l349:	
	line	201
;CC2500_B1.c: 200: else
;CC2500_B1.c: 201: RC0=0;
	movlb 0	; select bank0
	bcf	(112/8),(112)&7	;volatile
	
l350:	
	line	202
;CC2500_B1.c: 202: RC1=1;
	bsf	(113/8),(113)&7	;volatile
	line	203
	
l7790:	
;CC2500_B1.c: 203: SPI0Buffer<<=1;
	clrc
	movlb 1	; select bank1
	rlf	(_SPI0Buffer)^080h,f

	line	204
	
l7792:	
;CC2500_B1.c: 204: RC1=0;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
	line	196
	
l7794:	
	movlw	(01h)
	movwf	(??_CC2500_WriteByte+0)+0
	movf	(??_CC2500_WriteByte+0)+0,w
	addwf	(CC2500_WriteByte@loop_a),f
	
l7796:	
	movlw	(08h)
	subwf	(CC2500_WriteByte@loop_a),w
	skipc
	goto	u7661
	goto	u7660
u7661:
	goto	l347
u7660:
	goto	l351
	
l348:	
	line	206
	
l351:	
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
psect	text104,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	53
global __ptext104
__ptext104:	;psect for function _Buzzer_Main
psect	text104
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	53
	global	__size_of_Buzzer_Main
	__size_of_Buzzer_Main	equ	__end_of_Buzzer_Main-_Buzzer_Main
	
_Buzzer_Main:	
;incstack = 0
	opt	stack 11
; Regs used in _Buzzer_Main: [wreg-fsr1h+status,2+status,0]
	line	55
	
l8770:	
;Buzzer_B1.c: 55: Buz->Switch=(RB3)?1:0;
	movlb 0	; select bank0
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	btfss	(107/8),(107)&7	;volatile
	goto	u8925
	bsf	indf1,5
u8925:

	line	57
;Buzzer_B1.c: 57: if(Buz->GO)
	movlb 0	; select bank0
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u8931
	goto	u8930
u8931:
	goto	l136
u8930:
	line	60
	
l8772:	
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
	goto	u8945
	movf	0+(??_Buzzer_Main+0)+0,w
	subwf	0+(??_Buzzer_Main+2)+0,w
u8945:
	skipc
	goto	u8941
	goto	u8940
u8941:
	goto	l136
u8940:
	line	62
	
l8774:	
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
	goto	u8951
	goto	u8950
u8951:
	goto	l8796
u8950:
	line	65
	
l8776:	
;Buzzer_B1.c: 64: {
;Buzzer_B1.c: 65: if(Buz->Count == 0)
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u8961
	goto	u8960
u8961:
	goto	l8792
u8960:
	line	67
	
l8778:	
;Buzzer_B1.c: 66: {
;Buzzer_B1.c: 67: if(Buz->BufferStatus1)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u8971
	goto	u8970
u8971:
	goto	l8784
u8970:
	line	69
	
l8780:	
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
	
l8782:	
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
	goto	l136
	line	73
	
l130:	
	
l8784:	
;Buzzer_B1.c: 73: else if(Buz->BufferStatus2)
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u8981
	goto	u8980
u8981:
	goto	l8790
u8980:
	line	75
	
l8786:	
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
	
l8788:	
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
	goto	l136
	line	79
	
l132:	
	line	81
	
l8790:	
;Buzzer_B1.c: 79: else
;Buzzer_B1.c: 80: {
;Buzzer_B1.c: 81: Buz->GO=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	l136
	line	82
	
l133:	
	goto	l136
	
l131:	
	line	83
;Buzzer_B1.c: 82: }
;Buzzer_B1.c: 83: }
	goto	l136
	line	84
	
l129:	
	line	86
	
l8792:	
;Buzzer_B1.c: 84: else
;Buzzer_B1.c: 85: {
;Buzzer_B1.c: 86: Buz->Switch=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	88
	
l8794:	
;Buzzer_B1.c: 88: RB3=1;
	bsf	(107/8),(107)&7	;volatile
	goto	l136
	line	89
	
l134:	
	line	90
;Buzzer_B1.c: 89: }
;Buzzer_B1.c: 90: }
	goto	l136
	line	91
	
l128:	
	line	93
	
l8796:	
;Buzzer_B1.c: 91: else
;Buzzer_B1.c: 92: {
;Buzzer_B1.c: 93: Buz->Switch=0;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	95
	
l8798:	
;Buzzer_B1.c: 95: RB3=0;
	bcf	(107/8),(107)&7	;volatile
	line	97
	
l8800:	
;Buzzer_B1.c: 97: Buz->Count--;
	movf	(_Buz),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	l136
	line	98
	
l135:	
	goto	l136
	line	99
	
l127:	
	goto	l136
	line	100
	
l126:	
	line	101
	
l136:	
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
psect	text105,local,class=CODE,delta=2,merge=1
	line	10
global __ptext105
__ptext105:	;psect for function _Buzzer_Initialization
psect	text105
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\Buzzer_B1.c"
	line	10
	global	__size_of_Buzzer_Initialization
	__size_of_Buzzer_Initialization	equ	__end_of_Buzzer_Initialization-_Buzzer_Initialization
	
_Buzzer_Initialization:	
;incstack = 0
	opt	stack 11
; Regs used in _Buzzer_Initialization: [wregfsr1]
	line	12
	
l8766:	
;Buzzer_B1.c: 12: Buz=&Buz1;
	movlw	(_Buz1)&0ffh
	movlb 0	; select bank0
	movwf	(??_Buzzer_Initialization+0)+0
	movf	(??_Buzzer_Initialization+0)+0,w
	movwf	(_Buz)
	line	13
	
l8768:	
;Buzzer_B1.c: 13: Buz->Enable=1;
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	14
	
l111:	
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
	
i1l7254:	
;MCU_16f1518_B1.c: 58: IOC_ISR();
	fcall	_IOC_ISR
	line	60
	
i1l7256:	
;MCU_16f1518_B1.c: 60: TMR0_ISR();
	fcall	_TMR0_ISR
	line	66
	
i1l7258:	
;MCU_16f1518_B1.c: 62: ;;
;MCU_16f1518_B1.c: 66: INT_ISR();
	fcall	_INT_ISR
	line	69
	
i1l1538:	
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
psect	text107,local,class=CODE,delta=2,merge=1
	line	82
global __ptext107
__ptext107:	;psect for function _TMR0_ISR
psect	text107
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	82
	global	__size_of_TMR0_ISR
	__size_of_TMR0_ISR	equ	__end_of_TMR0_ISR-_TMR0_ISR
	
_TMR0_ISR:	
;incstack = 0
	opt	stack 4
; Regs used in _TMR0_ISR: [wreg-fsr1h+status,2+status,0]
	line	84
	
i1l6940:	
;MCU_16f1518_B1.c: 84: if(TMR0IE && TMR0IF)
	btfss	(93/8),(93)&7	;volatile
	goto	u592_21
	goto	u592_20
u592_21:
	goto	i1l1601
u592_20:
	
i1l6942:	
	btfss	(90/8),(90)&7	;volatile
	goto	u593_21
	goto	u593_20
u593_21:
	goto	i1l1601
u593_20:
	line	86
	
i1l6944:	
;MCU_16f1518_B1.c: 85: {
;MCU_16f1518_B1.c: 86: TMR0=(256-90);
	movlw	(0A6h)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	87
	
i1l6946:	
;MCU_16f1518_B1.c: 87: TMR0IF=0;
	bcf	(90/8),(90)&7	;volatile
	line	100
	
i1l6948:	
;MCU_16f1518_B1.c: 100: if(DimmerLights11->GO) { DimmerLights11->Count++; if(DimmerLights11->Count >= (DimmerLights11->DimmingValue-Dimmer->Correction)) { DimmerLights11->Count=0; DimmerLights11->GO=0; DimmerLights11->Flag=1; if(DimmerLights11->StatusFlag) { RB4=1; ;; } } }
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u594_21
	goto	u594_20
u594_21:
	goto	i1l6962
u594_20:
	
i1l6950:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	movf	(_Dimmer),w
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
	goto	u595_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u595_25:

	skipc
	goto	u595_21
	goto	u595_20
u595_21:
	goto	i1l7026
u595_20:
	
i1l6952:	
	movlb 0	; select bank0
	movf	(_DimmerLights11),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l6954:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	
i1l6956:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
i1l6958:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u596_21
	goto	u596_20
u596_21:
	goto	i1l7026
u596_20:
	
i1l6960:	
	bsf	(108/8),(108)&7	;volatile
	goto	i1l7026
	
i1l1547:	
	goto	i1l7026
	
i1l1546:	
	goto	i1l7026
	
i1l1545:	
	
i1l6962:	
	movf	(_DimmerLights11),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u597_21
	goto	u597_20
u597_21:
	goto	i1l7018
u597_20:
	
i1l6964:	
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
	goto	u598_21
	goto	u598_20
u598_21:
	goto	i1l7018
u598_20:
	
i1l6966:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	incf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l6968:	
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
	goto	u599_21
	goto	u599_20
u599_21:
	goto	i1l7018
u599_20:
	
i1l6970:	
	incf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l6972:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u600_21
	goto	u600_20
u600_21:
	goto	i1l6988
u600_20:
	
i1l6974:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u601_21
	goto	u601_20
u601_21:
	goto	i1l6982
u601_20:
	
i1l6976:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03Dh)
	subwf	indf1,w
	skipc
	goto	u602_21
	goto	u602_20
u602_21:
	goto	i1l6980
u602_20:
	
i1l6978:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l7018
	
i1l1554:	
	
i1l6980:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l7018
	
i1l1555:	
	goto	i1l7018
	
i1l1553:	
	
i1l6982:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u603_21
	goto	u603_20
u603_21:
	goto	i1l6986
u603_20:
	
i1l6984:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l7018
	
i1l1557:	
	
i1l6986:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l7018
	
i1l1558:	
	goto	i1l7018
	
i1l1556:	
	goto	i1l7018
	
i1l1552:	
	
i1l6988:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u604_21
	goto	u604_20
u604_21:
	goto	i1l7002
u604_20:
	
i1l6990:	
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
	goto	u605_21
	goto	u605_20
u605_21:
	goto	i1l6994
u605_20:
	
i1l6992:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l6998
	
i1l1561:	
	
i1l6994:	
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
	goto	u606_21
	goto	u606_20
u606_21:
	goto	i1l6998
u606_20:
	
i1l6996:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l6998
	
i1l1563:	
	goto	i1l6998
	
i1l1562:	
	
i1l6998:	
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
	goto	u607_21
	goto	u607_20
u607_21:
	goto	i1l7018
u607_20:
	
i1l7000:	
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
	goto	i1l7018
	
i1l1564:	
	goto	i1l7018
	
i1l1560:	
	
i1l7002:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u608_21
	goto	u608_20
u608_21:
	goto	i1l7010
u608_20:
	
i1l7004:	
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l7006:	
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
	goto	u609_21
	goto	u609_20
u609_21:
	goto	i1l7018
u609_20:
	
i1l7008:	
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l7018
	
i1l1567:	
	goto	i1l7018
	
i1l1566:	
	
i1l7010:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights11),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l7012:	
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
	goto	u610_21
	goto	u610_20
u610_21:
	goto	i1l7018
u610_20:
	
i1l7014:	
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
	movf	(_Dimmer),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	
i1l7016:	
	bcf	(119/8),(119)&7	;volatile
	goto	i1l7018
	
i1l1569:	
	goto	i1l7018
	
i1l1568:	
	goto	i1l7018
	
i1l1565:	
	goto	i1l7018
	
i1l1559:	
	goto	i1l7018
	
i1l1551:	
	goto	i1l7018
	
i1l1550:	
	goto	i1l7018
	
i1l1549:	
	
i1l7018:	
	btfss	(108/8),(108)&7	;volatile
	goto	u611_21
	goto	u611_20
u611_21:
	goto	i1l7026
u611_20:
	
i1l7020:	
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
	goto	u612_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u612_25:

	skipc
	goto	u612_21
	goto	u612_20
u612_21:
	goto	i1l7026
u612_20:
	
i1l7022:	
	movlb 0	; select bank0
	movf	(_DimmerLights11),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l7024:	
	bcf	(108/8),(108)&7	;volatile
	goto	i1l7026
	
i1l1571:	
	goto	i1l7026
	
i1l1570:	
	goto	i1l7026
	
i1l1548:	
	line	104
	
i1l7026:	
;MCU_16f1518_B1.c: 104: if(DimmerLights22->GO) { DimmerLights22->Count++; if(DimmerLights22->Count >= (DimmerLights22->DimmingValue-Dimmer->Correction)) { DimmerLights22->Count=0; DimmerLights22->GO=0; DimmerLights22->Flag=1; if(DimmerLights22->StatusFlag) { RA7=1; } } } el
	movlb 0	; select bank0
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u613_21
	goto	u613_20
u613_21:
	goto	i1l7040
u613_20:
	
i1l7028:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	movf	(_Dimmer),w
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
	goto	u614_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u614_25:

	skipc
	goto	u614_21
	goto	u614_20
u614_21:
	goto	i1l7104
u614_20:
	
i1l7030:	
	movlb 0	; select bank0
	movf	(_DimmerLights22),w
	addlw	03h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l7032:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	
i1l7034:	
	movf	(_DimmerLights22),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	
i1l7036:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,6
	goto	u615_21
	goto	u615_20
u615_21:
	goto	i1l7104
u615_20:
	
i1l7038:	
	bsf	(103/8),(103)&7	;volatile
	goto	i1l7104
	
i1l1574:	
	goto	i1l7104
	
i1l1573:	
	goto	i1l7104
	
i1l1572:	
	
i1l7040:	
	movf	(_DimmerLights22),w
	addlw	07h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u616_21
	goto	u616_20
u616_21:
	goto	i1l7096
u616_20:
	
i1l7042:	
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
	goto	u617_21
	goto	u617_20
u617_21:
	goto	i1l7096
u617_20:
	
i1l7044:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	incf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l7046:	
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
	goto	u618_21
	goto	u618_20
u618_21:
	goto	i1l7096
u618_20:
	
i1l7048:	
	incf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l7050:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u619_21
	goto	u619_20
u619_21:
	goto	i1l7066
u619_20:
	
i1l7052:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,4
	goto	u620_21
	goto	u620_20
u620_21:
	goto	i1l7060
u620_20:
	
i1l7054:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(03Dh)
	subwf	indf1,w
	skipc
	goto	u621_21
	goto	u621_20
u621_21:
	goto	i1l7058
u621_20:
	
i1l7056:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l7096
	
i1l1581:	
	
i1l7058:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	i1l7096
	
i1l1582:	
	goto	i1l7096
	
i1l1580:	
	
i1l7060:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(078h)
	subwf	indf1,w
	skipnc
	goto	u622_21
	goto	u622_20
u622_21:
	goto	i1l7064
u622_20:
	
i1l7062:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l7096
	
i1l1584:	
	
i1l7064:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	goto	i1l7096
	
i1l1585:	
	goto	i1l7096
	
i1l1583:	
	goto	i1l7096
	
i1l1579:	
	
i1l7066:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,2
	goto	u623_21
	goto	u623_20
u623_21:
	goto	i1l7080
u623_20:
	
i1l7068:	
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
	goto	u624_21
	goto	u624_20
u624_21:
	goto	i1l7072
u624_20:
	
i1l7070:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	goto	i1l7076
	
i1l1588:	
	
i1l7072:	
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
	goto	u625_21
	goto	u625_20
u625_21:
	goto	i1l7076
u625_20:
	
i1l7074:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	goto	i1l7076
	
i1l1590:	
	goto	i1l7076
	
i1l1589:	
	
i1l7076:	
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
	goto	u626_21
	goto	u626_20
u626_21:
	goto	i1l7096
u626_20:
	
i1l7078:	
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
	goto	i1l7096
	
i1l1591:	
	goto	i1l7096
	
i1l1587:	
	
i1l7080:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u627_21
	goto	u627_20
u627_21:
	goto	i1l7088
u627_20:
	
i1l7082:	
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	low(01h)
	subwf	indf1,f
	
i1l7084:	
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
	goto	u628_21
	goto	u628_20
u628_21:
	goto	i1l7096
u628_20:
	
i1l7086:	
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	goto	i1l7096
	
i1l1594:	
	goto	i1l7096
	
i1l1593:	
	
i1l7088:	
	movlw	(01h)
	movwf	(??_TMR0_ISR+0)+0
	movf	(_DimmerLights22),w
	addlw	04h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_TMR0_ISR+0)+0,w
	addwf	indf1,f
	
i1l7090:	
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
	goto	u629_21
	goto	u629_20
u629_21:
	goto	i1l7096
u629_20:
	
i1l7092:	
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
	movf	(_Dimmer),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	
i1l7094:	
	bcf	(99/8),(99)&7	;volatile
	goto	i1l7096
	
i1l1596:	
	goto	i1l7096
	
i1l1595:	
	goto	i1l7096
	
i1l1592:	
	goto	i1l7096
	
i1l1586:	
	goto	i1l7096
	
i1l1578:	
	goto	i1l7096
	
i1l1577:	
	goto	i1l7096
	
i1l1576:	
	
i1l7096:	
	btfss	(103/8),(103)&7	;volatile
	goto	u630_21
	goto	u630_20
u630_21:
	goto	i1l7104
u630_20:
	
i1l7098:	
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
	goto	u631_25
	movf	0+(??_TMR0_ISR+2)+0,w
	subwf	indf1,w
u631_25:

	skipc
	goto	u631_21
	goto	u631_20
u631_21:
	goto	i1l7104
u631_20:
	
i1l7100:	
	movlb 0	; select bank0
	movf	(_DimmerLights22),w
	addlw	08h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	
i1l7102:	
	bcf	(103/8),(103)&7	;volatile
	goto	i1l7104
	
i1l1598:	
	goto	i1l7104
	
i1l1597:	
	goto	i1l7104
	
i1l1575:	
	line	113
	
i1l7104:	
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
	
i1l7106:	
;MCU_16f1518_B1.c: 114: if(Timer0->Count == 200)
	incf	(_Timer0)^080h,w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(0C8h)
	skipz
	goto	u632_25
	moviw	[1]fsr1
	xorlw	high(0C8h)
u632_25:
	skipz
	goto	u632_21
	goto	u632_20
u632_21:
	goto	i1l1599
u632_20:
	line	116
	
i1l7108:	
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
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	118
	
i1l1599:	
	line	121
;MCU_16f1518_B1.c: 118: }
;MCU_16f1518_B1.c: 121: if(Buz->GO)
	movlb 0	; select bank0
	movf	(_Buz),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u633_21
	goto	u633_20
u633_21:
	goto	i1l1601
u633_20:
	line	123
	
i1l7110:	
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
	goto	i1l1601
	line	124
	
i1l1600:	
	goto	i1l1601
	line	126
	
i1l1544:	
	line	127
	
i1l1601:	
	return
	opt stack 0
GLOBAL	__end_of_TMR0_ISR
	__end_of_TMR0_ISR:
	signat	_TMR0_ISR,88
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
psect	text108,local,class=CODE,delta=2,merge=1
	line	267
global __ptext108
__ptext108:	;psect for function _IOC_ISR
psect	text108
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	267
	global	__size_of_IOC_ISR
	__size_of_IOC_ISR	equ	__end_of_IOC_ISR-_IOC_ISR
	
_IOC_ISR:	
;incstack = 0
	opt	stack 3
; Regs used in _IOC_ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	269
	
i1l6924:	
;MCU_16f1518_B1.c: 269: if(IOCIE && IOCBF2)
	btfss	(91/8),(91)&7	;volatile
	goto	u588_21
	goto	u588_20
u588_21:
	goto	i1l1626
u588_20:
	
i1l6926:	
	movlb 7	; select bank7
	btfss	(7346/8)^0380h,(7346)&7	;volatile
	goto	u589_21
	goto	u589_20
u589_21:
	goto	i1l1626
u589_20:
	line	271
	
i1l6928:	
;MCU_16f1518_B1.c: 270: {
;MCU_16f1518_B1.c: 271: IOCBF2=0;
	bcf	(7346/8)^0380h,(7346)&7	;volatile
	line	272
;MCU_16f1518_B1.c: 272: IOCIF=0;
	bcf	(88/8),(88)&7	;volatile
	line	273
	
i1l6930:	
;MCU_16f1518_B1.c: 273: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u590_21
	goto	u590_20
u590_21:
	goto	i1l1626
u590_20:
	line	278
	
i1l6932:	
;MCU_16f1518_B1.c: 274: {
;MCU_16f1518_B1.c: 278: setDimmerReClock();
	fcall	_setDimmerReClock
	line	279
	
i1l6934:	
;MCU_16f1518_B1.c: 279: if(RB2)
	movlb 0	; select bank0
	btfss	(106/8),(106)&7	;volatile
	goto	u591_21
	goto	u591_20
u591_21:
	goto	i1l6938
u591_20:
	line	281
	
i1l6936:	
;MCU_16f1518_B1.c: 280: {
;MCU_16f1518_B1.c: 281: Dimmer->Correction=0;
	movf	(_Dimmer),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	282
;MCU_16f1518_B1.c: 282: }
	goto	i1l1626
	line	283
	
i1l1624:	
	line	285
	
i1l6938:	
;MCU_16f1518_B1.c: 283: else
;MCU_16f1518_B1.c: 284: {
;MCU_16f1518_B1.c: 285: Dimmer->Correction=8;
	movlw	(08h)
	movwf	(??_IOC_ISR+0)+0
	movf	(_Dimmer),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_IOC_ISR+0)+0,w
	movwf	indf1
	goto	i1l1626
	line	286
	
i1l1625:	
	goto	i1l1626
	line	293
	
i1l1623:	
	goto	i1l1626
	line	294
	
i1l1622:	
	line	295
	
i1l1626:	
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
psect	text109,local,class=CODE,delta=2,merge=1
	line	129
global __ptext109
__ptext109:	;psect for function _setDimmerReClock
psect	text109
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	129
	global	__size_of_setDimmerReClock
	__size_of_setDimmerReClock	equ	__end_of_setDimmerReClock-_setDimmerReClock
	
_setDimmerReClock:	
;incstack = 0
	opt	stack 3
; Regs used in _setDimmerReClock: [wregfsr1]
	line	131
	
i1l6564:	
;MCU_16f1518_B1.c: 131: TMR0=255;
	movlw	(0FFh)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	136
	
i1l6566:	
;MCU_16f1518_B1.c: 136: if(!DimmerLights11->GO)
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u536_21
	goto	u536_20
u536_21:
	goto	i1l1604
u536_20:
	line	138
	
i1l6568:	
;MCU_16f1518_B1.c: 137: {
;MCU_16f1518_B1.c: 138: DimmerLights11->GO=1;
	movf	(_DimmerLights11),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	139
	
i1l1604:	
	line	158
;MCU_16f1518_B1.c: 139: }
;MCU_16f1518_B1.c: 158: if(!DimmerLights22->GO)
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,0
	goto	u537_21
	goto	u537_20
u537_21:
	goto	i1l1606
u537_20:
	line	160
	
i1l6570:	
;MCU_16f1518_B1.c: 159: {
;MCU_16f1518_B1.c: 160: DimmerLights22->GO=1;
	movf	(_DimmerLights22),w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l1606
	line	161
	
i1l1605:	
	line	174
	
i1l1606:	
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
psect	text110,local,class=CODE,delta=2,merge=1
	line	225
global __ptext110
__ptext110:	;psect for function _INT_ISR
psect	text110
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\MCU_16f1518_B1.c"
	line	225
	global	__size_of_INT_ISR
	__size_of_INT_ISR	equ	__end_of_INT_ISR-_INT_ISR
	
_INT_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _INT_ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	227
	
i1l7112:	
;MCU_16f1518_B1.c: 227: if(INTE && INTF)
	btfss	(92/8),(92)&7	;volatile
	goto	u634_21
	goto	u634_20
u634_21:
	goto	i1l1613
u634_20:
	
i1l7114:	
	btfss	(89/8),(89)&7	;volatile
	goto	u635_21
	goto	u635_20
u635_21:
	goto	i1l1613
u635_20:
	line	229
	
i1l7116:	
;MCU_16f1518_B1.c: 228: {
;MCU_16f1518_B1.c: 229: INTF=0;
	bcf	(89/8),(89)&7	;volatile
	line	230
;MCU_16f1518_B1.c: 230: INTE=0;
	bcf	(92/8),(92)&7	;volatile
	line	231
	
i1l7118:	
;MCU_16f1518_B1.c: 231: setRF_ReceiveGO(1,1);
	clrf	(setRF_ReceiveGO@command)
	incf	(setRF_ReceiveGO@command),f
	movlw	(01h)
	fcall	_setRF_ReceiveGO
	goto	i1l1613
	line	232
	
i1l1612:	
	line	233
	
i1l1613:	
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
psect	text111,local,class=CODE,delta=2,merge=1
	file	"C:\Users\taianluo\Documents\GitHub\myPicCode\Source_File\RF_Control_B1.c"
	line	37
global __ptext111
__ptext111:	;psect for function _setRF_ReceiveGO
psect	text111
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
	
i1l6572:	
;RF_Control_B1.c: 39: RfPointSelect(rf);
	movf	(setRF_ReceiveGO@rf),w
	fcall	i1_RfPointSelect
	line	40
	
i1l6574:	
;RF_Control_B1.c: 40: RF->ReceiveGO=command;
	movf	(_RF),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(setRF_ReceiveGO@command),w
	bcf	indf1,1
	skipz
	bsf	indf1,1
	line	41
	
i1l2274:	
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
psect	text112,local,class=CODE,delta=2,merge=1
	line	7
global __ptext112
__ptext112:	;psect for function i1_RfPointSelect
psect	text112
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
	
i1l6302:	
;RF_Control_B1.c: 10: if(rf == 1)
	movf	(i1RfPointSelect@rf),w
	xorlw	01h&0ffh
	skipz
	goto	u504_21
	goto	u504_20
u504_21:
	goto	i1l2262
u504_20:
	line	12
	
i1l6304:	
;RF_Control_B1.c: 11: {
;RF_Control_B1.c: 12: RF=&RF1;
	movlw	(_RF1)&0ffh
	movwf	(??i1_RfPointSelect+0)+0
	movf	(??i1_RfPointSelect+0)+0,w
	movwf	(_RF)
	goto	i1l2262
	line	13
	
i1l2261:	
	line	15
	
i1l2262:	
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

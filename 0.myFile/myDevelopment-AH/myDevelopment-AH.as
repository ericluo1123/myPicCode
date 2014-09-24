opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F1516
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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TOSH equ 0FEFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
INDF0 equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
INDF1 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
INTCON equ 0Bh ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PORTA equ 0Ch ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PORTB equ 0Dh ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PORTC equ 0Eh ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PORTE equ 010h ;# 
# 617 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PIR1 equ 011h ;# 
# 678 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PIR2 equ 012h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR0 equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR1 equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR1L equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR1H equ 017h ;# 
# 774 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
T1CON equ 018h ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
T1GCON equ 019h ;# 
# 914 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TMR2 equ 01Ah ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PR2 equ 01Bh ;# 
# 952 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
T2CON equ 01Ch ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TRISA equ 08Ch ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TRISB equ 08Dh ;# 
# 1144 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TRISC equ 08Eh ;# 
# 1205 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TRISE equ 090h ;# 
# 1211 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PIE1 equ 091h ;# 
# 1272 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PIE2 equ 092h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
OPTION_REG equ 095h ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PCON equ 096h ;# 
# 1443 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WDTCON equ 097h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
OSCCON equ 099h ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
OSCSTAT equ 09Ah ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADRES equ 09Bh ;# 
# 1626 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADRESL equ 09Bh ;# 
# 1645 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADRESH equ 09Ch ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADCON0 equ 09Dh ;# 
# 1743 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ADCON1 equ 09Eh ;# 
# 1808 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
LATA equ 010Ch ;# 
# 1869 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
LATB equ 010Dh ;# 
# 1930 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
LATC equ 010Eh ;# 
# 1991 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
BORCON equ 0116h ;# 
# 2023 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FVRCON equ 0117h ;# 
# 2081 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
APFCON equ 011Dh ;# 
# 2106 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ANSELA equ 018Ch ;# 
# 2158 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ANSELB equ 018Dh ;# 
# 2215 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
ANSELC equ 018Eh ;# 
# 2276 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMADR equ 0191h ;# 
# 2282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMADRL equ 0191h ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMADRH equ 0192h ;# 
# 2320 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMDAT equ 0193h ;# 
# 2326 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMDATL equ 0193h ;# 
# 2345 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMDATH equ 0194h ;# 
# 2364 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMCON1 equ 0195h ;# 
# 2419 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PMCON2 equ 0196h ;# 
# 2438 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
VREGCON equ 0197h ;# 
# 2458 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
RCREG equ 0199h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TXREG equ 019Ah ;# 
# 2496 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SP1BRG equ 019Bh ;# 
# 2502 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SP1BRGL equ 019Bh ;# 
# 2507 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SPBRG equ 019Bh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SPBRGL equ 019Bh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SP1BRGH equ 019Ch ;# 
# 2560 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SPBRGH equ 019Ch ;# 
# 2592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
RCSTA equ 019Dh ;# 
# 2653 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TXSTA equ 019Eh ;# 
# 2714 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
BAUDCON equ 019Fh ;# 
# 2765 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WPUB equ 020Dh ;# 
# 2834 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WPUE equ 0210h ;# 
# 2854 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPBUF equ 0211h ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1BUF equ 0211h ;# 
# 2891 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPADD equ 0212h ;# 
# 2896 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1ADD equ 0212h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPMSK equ 0213h ;# 
# 2933 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1MSK equ 0213h ;# 
# 2965 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPSTAT equ 0214h ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1STAT equ 0214h ;# 
# 3086 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPCON1 equ 0215h ;# 
# 3091 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPCON equ 0215h ;# 
# 3095 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1CON1 equ 0215h ;# 
# 3289 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPCON2 equ 0216h ;# 
# 3294 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1CON2 equ 0216h ;# 
# 3410 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSPCON3 equ 0217h ;# 
# 3415 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
SSP1CON3 equ 0217h ;# 
# 3531 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR1 equ 0291h ;# 
# 3537 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR1L equ 0291h ;# 
# 3556 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR1H equ 0292h ;# 
# 3575 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCP1CON equ 0293h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR2 equ 0298h ;# 
# 3644 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR2L equ 0298h ;# 
# 3663 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCPR2H equ 0299h ;# 
# 3682 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
CCP2CON equ 029Ah ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
IOCBP equ 0394h ;# 
# 3814 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
IOCBN equ 0395h ;# 
# 3883 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
IOCBF equ 0396h ;# 
# 3952 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
STATUS_SHAD equ 0FE4h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
WREG_SHAD equ 0FE5h ;# 
# 4002 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
BSR_SHAD equ 0FE6h ;# 
# 4021 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
PCLATH_SHAD equ 0FE7h ;# 
# 4040 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR0L_SHAD equ 0FE8h ;# 
# 4059 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR0H_SHAD equ 0FE9h ;# 
# 4078 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR1L_SHAD equ 0FEAh ;# 
# 4097 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
FSR1H_SHAD equ 0FEBh ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
STKPTR equ 0FEDh ;# 
# 4135 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TOSL equ 0FEEh ;# 
# 4154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f1516.h"
TOSH equ 0FEFh ;# 
	FNCALL	_main,_I2C_Main
	FNCALL	_main,_MainT
	FNCALL	_main,_MainT_Initial
	FNCALL	_main,_Mcu_Initialization
	FNCALL	_main,_SegmentDisplay_Initial
	FNCALL	_main,_SegmentDisplay_Main
	FNCALL	_main,_UART_Main
	FNCALL	_UART_Main,_UART_Receive
	FNCALL	_UART_Main,_UART_Transmit
	FNCALL	_UART_Main,_setSegmentDisplayNumber
	FNCALL	_setSegmentDisplayNumber,___awdiv
	FNCALL	_setSegmentDisplayNumber,___awmod
	FNCALL	_UART_Transmit,_printf
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,_putch
	FNCALL	_Mcu_Initialization,_I2C_Set
	FNCALL	_Mcu_Initialization,_IO_Set
	FNCALL	_Mcu_Initialization,_TMR1_Set
	FNCALL	_Mcu_Initialization,_UART_Set
	FNCALL	_I2C_Main,_I2C_Master_Reception
	FNCALL	_I2C_Main,_I2C_Master_Transmission
	FNROOT	_main
	FNCALL	_ISR,_TMR1_ISR
	FNCALL	_ISR,_UART_ISR
	FNCALL	_UART_ISR,i1_setSegmentDisplayNumber
	FNCALL	i1_setSegmentDisplayNumber,i1___awdiv
	FNCALL	i1_setSegmentDisplayNumber,i1___awmod
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarProduct
	global	_VarSegment
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\0.myFile\myDevelopment-AH\Release\myDevelopment-A.h"
	line	245

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
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Header_File\SegmentDisplay_A2.h"
	line	69

;initializer for _VarSegment
	retlw	0C0h
	retlw	0F9h
	retlw	0A4h
	retlw	0B0h
	retlw	099h
	retlw	092h
	retlw	082h
	retlw	0D8h
	retlw	080h
	retlw	090h
	retlw	088h
	retlw	083h
	retlw	0A7h
	retlw	0A1h
	retlw	086h
	retlw	08Eh
	retlw	0BFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_hexpowers
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	362
_hexpowers:
	retlw	01h
	retlw	0

	retlw	010h
	retlw	0

	retlw	0
	retlw	01h

	retlw	0
	retlw	010h

	global __end_of_hexpowers
__end_of_hexpowers:
	global	_hexpowers
	global	_VarTMain
	global	_VarTimer1
	global	_VarI2C
	global	_VarUart
	global	_Product
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_Product:
       ds      1

	global	_TMain
_TMain:
       ds      1

	global	_Timer1
_Timer1:
       ds      1

	global	_UART
_UART:
       ds      1

	global	_I2C
_I2C:
       ds      1

	global	_Segment
_Segment:
       ds      1

	global	_PORTA
_PORTA	set	0xC
	global	_PORTB
_PORTB	set	0xD
	global	_PORTC
_PORTC	set	0xE
	global	_T1CON
_T1CON	set	0x18
	global	_TMR1H
_TMR1H	set	0x17
	global	_TMR1L
_TMR1L	set	0x16
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RA1
_RA1	set	0x61
	global	_RA2
_RA2	set	0x62
	global	_RA4
_RA4	set	0x64
	global	_RA5
_RA5	set	0x65
	global	_RA6
_RA6	set	0x66
	global	_RA7
_RA7	set	0x67
	global	_RC0
_RC0	set	0x70
	global	_RCIF
_RCIF	set	0x8D
	global	_SSPIF
_SSPIF	set	0x8B
	global	_TMR1IF
_TMR1IF	set	0x88
	global	_TXIF
_TXIF	set	0x8C
	global	_OSCCON
_OSCCON	set	0x99
	global	_TRISA
_TRISA	set	0x8C
	global	_TRISB
_TRISB	set	0x8D
	global	_TRISC
_TRISC	set	0x8E
	global	_RCIE
_RCIE	set	0x48D
	global	_SSPIE
_SSPIE	set	0x48B
	global	_TMR1IE
_TMR1IE	set	0x488
	global	_TRISC6
_TRISC6	set	0x476
	global	_TRISC7
_TRISC7	set	0x477
	global	_TXIE
_TXIE	set	0x48C
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
	global	_RCREG
_RCREG	set	0x199
	global	_RCSTA
_RCSTA	set	0x19D
	global	_SPBRG
_SPBRG	set	0x19B
	global	_SPBRGH
_SPBRGH	set	0x19C
	global	_TXREG
_TXREG	set	0x19A
	global	_TXSTA
_TXSTA	set	0x19E
	global	_BRG16
_BRG16	set	0xCFB
	global	_RCIDL
_RCIDL	set	0xCFE
	global	_RX9
_RX9	set	0xCEE
	global	_TX9
_TX9	set	0xCF6
	global	_SSPADD
_SSPADD	set	0x212
	global	_SSPBUF
_SSPBUF	set	0x211
	global	_SSPCON1
_SSPCON1	set	0x215
	global	_SSPCON2
_SSPCON2	set	0x216
	global	_SSPSTAT
_SSPSTAT	set	0x214
	global	_ACKEN
_ACKEN	set	0x10B4
	global	_ACKSTAT
_ACKSTAT	set	0x10B6
	global	_BF
_BF	set	0x10A0
	global	_CKP
_CKP	set	0x10AC
	global	_PEN
_PEN	set	0x10B2
	global	_RCEN
_RCEN	set	0x10B3
	global	_R_nW
_R_nW	set	0x10A2
	global	_SEN
_SEN	set	0x10B0
	global	_SSPOV
_SSPOV	set	0x10AE
psect	stringtext
	global __stringdata
__stringdata:
	
STR_2:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	52	;'4'
	retlw	53	;'5'
	retlw	54	;'6'
	retlw	55	;'7'
	retlw	56	;'8'
	retlw	57	;'9'
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	99	;'c'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	102	;'f'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	37	;'%'
	retlw	120	;'x'
	retlw	44	;','
	retlw	0
psect	stringtext
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_WRT$BOOT
__CFG_WRT$BOOT equ 0x0
	file	"myDevelopment-AH.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_VarTMain:
       ds      15

_VarTimer1:
       ds      3

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\0.myFile\myDevelopment-AH\Release\myDevelopment-A.h"
	line	245
_VarProduct:
       ds      32

psect	dataBANK1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Header_File\SegmentDisplay_A2.h"
	line	69
_VarSegment:
       ds      26

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_VarI2C:
       ds      67

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_VarUart:
       ds      68

	file	"myDevelopment-AH.as"
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	012h
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	043h
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK3
	movlw	low(__pbssBANK3)
	movwf	fsr0l
	movlw	high(__pbssBANK3)
	movwf	fsr0h
	movlw	044h
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
; Initialize objects allocated to BANK1
	global __pidataBANK1,__pdataBANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK1)
	movwf fsr0l
	movlw high(__pidataBANK1)|80h
	movwf fsr0h
	movlw low(__pdataBANK1)
	movwf fsr1l
	movlw high(__pdataBANK1)
	movwf fsr1h
	movlw 03Ah
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
?_MainT_Initial:	; 0 bytes @ 0x0
?_Mcu_Initialization:	; 0 bytes @ 0x0
?_SegmentDisplay_Initial:	; 0 bytes @ 0x0
?_MainT:	; 0 bytes @ 0x0
?_I2C_Main:	; 0 bytes @ 0x0
?_UART_Main:	; 0 bytes @ 0x0
?_SegmentDisplay_Main:	; 0 bytes @ 0x0
?_IO_Set:	; 0 bytes @ 0x0
?_TMR1_Set:	; 0 bytes @ 0x0
?_I2C_Set:	; 0 bytes @ 0x0
?_UART_Set:	; 0 bytes @ 0x0
?_TMR1_ISR:	; 0 bytes @ 0x0
??_TMR1_ISR:	; 0 bytes @ 0x0
?_UART_ISR:	; 0 bytes @ 0x0
?_I2C_Master_Reception:	; 0 bytes @ 0x0
?_I2C_Master_Transmission:	; 0 bytes @ 0x0
?_UART_Receive:	; 0 bytes @ 0x0
?_UART_Transmit:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_putch:	; 0 bytes @ 0x0
	global	?i1___awdiv
?i1___awdiv:	; 2 bytes @ 0x0
	global	?i1___awmod
?i1___awmod:	; 2 bytes @ 0x0
	global	i1___awdiv@divisor
i1___awdiv@divisor:	; 2 bytes @ 0x0
	global	i1___awmod@divisor
i1___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	i1___awdiv@dividend
i1___awdiv@dividend:	; 2 bytes @ 0x2
	global	i1___awmod@dividend
i1___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
??i1___awdiv:	; 0 bytes @ 0x4
??i1___awmod:	; 0 bytes @ 0x4
	ds	1
	global	i1___awdiv@counter
i1___awdiv@counter:	; 1 bytes @ 0x5
	global	i1___awmod@counter
i1___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	i1___awdiv@sign
i1___awdiv@sign:	; 1 bytes @ 0x6
	global	i1___awmod@sign
i1___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	i1___awdiv@quotient
i1___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
?i1_setSegmentDisplayNumber:	; 0 bytes @ 0x9
	global	i1setSegmentDisplayNumber@number
i1setSegmentDisplayNumber@number:	; 2 bytes @ 0x9
	ds	2
	global	i1setSegmentDisplayNumber@i
i1setSegmentDisplayNumber@i:	; 1 bytes @ 0xB
	ds	1
??_UART_ISR:	; 0 bytes @ 0xC
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??i1_setSegmentDisplayNumber:	; 0 bytes @ 0x0
	ds	4
??_ISR:	; 0 bytes @ 0x4
	ds	1
??_MainT_Initial:	; 0 bytes @ 0x5
??_SegmentDisplay_Initial:	; 0 bytes @ 0x5
??_MainT:	; 0 bytes @ 0x5
??_SegmentDisplay_Main:	; 0 bytes @ 0x5
??_IO_Set:	; 0 bytes @ 0x5
??_TMR1_Set:	; 0 bytes @ 0x5
??_I2C_Set:	; 0 bytes @ 0x5
??_UART_Set:	; 0 bytes @ 0x5
??_I2C_Master_Reception:	; 0 bytes @ 0x5
??_I2C_Master_Transmission:	; 0 bytes @ 0x5
??_UART_Receive:	; 0 bytes @ 0x5
??_putch:	; 0 bytes @ 0x5
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x5
	global	?___awmod
?___awmod:	; 2 bytes @ 0x5
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x5
	global	putch@byte
putch@byte:	; 1 bytes @ 0x5
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x5
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x5
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x5
	ds	1
??_Mcu_Initialization:	; 0 bytes @ 0x6
	global	I2C_Master_Transmission@i
I2C_Master_Transmission@i:	; 1 bytes @ 0x6
	ds	1
	global	I2C_Master_Reception@i
I2C_Master_Reception@i:	; 1 bytes @ 0x7
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x7
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x7
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x7
	ds	1
??_I2C_Main:	; 0 bytes @ 0x8
	global	UART_Receive@i
UART_Receive@i:	; 1 bytes @ 0x8
	ds	1
??___awdiv:	; 0 bytes @ 0x9
??___awmod:	; 0 bytes @ 0x9
??___lwdiv:	; 0 bytes @ 0x9
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xA
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0xA
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xA
	ds	1
	global	I2C_Main@i
I2C_Main@i:	; 1 bytes @ 0xB
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xB
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0xB
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xC
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xC
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0xD
	global	printf@f
printf@f:	; 2 bytes @ 0xD
	ds	1
?_setSegmentDisplayNumber:	; 0 bytes @ 0xE
	global	setSegmentDisplayNumber@number
setSegmentDisplayNumber@number:	; 2 bytes @ 0xE
	ds	2
??_setSegmentDisplayNumber:	; 0 bytes @ 0x10
	ds	1
??_printf:	; 0 bytes @ 0x11
	ds	3
	global	setSegmentDisplayNumber@i
setSegmentDisplayNumber@i:	; 1 bytes @ 0x14
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x15
	ds	1
	global	printf@idx
printf@idx:	; 1 bytes @ 0x16
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x17
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0x18
	ds	4
	global	printf@prec
printf@prec:	; 1 bytes @ 0x1C
	ds	1
	global	printf@c
printf@c:	; 1 bytes @ 0x1D
	ds	1
??_UART_Transmit:	; 0 bytes @ 0x1E
	ds	3
	global	UART_Transmit@i
UART_Transmit@i:	; 1 bytes @ 0x21
	ds	1
??_UART_Main:	; 0 bytes @ 0x22
	ds	2
??_main:	; 0 bytes @ 0x24
;!
;!Data Sizes:
;!    Strings     21
;!    Constant    8
;!    Data        58
;!    BSS         153
;!    Persistent  6
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     36      60
;!    BANK1            80      0      58
;!    BANK2            80      0      67
;!    BANK3            80      0      68
;!    BANK4            80      0       0
;!    BANK5            80      0       0
;!    BANK6            16      0       0

;!
;!Pointer List with Targets:
;!
;!    printf@f	PTR const unsigned char  size(2) Largest target is 4
;!		 -> STR_1(CODE[4]), 
;!
;!    printf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_printf(BANK0[2]), 
;!
;!    S540$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    UART	PTR struct UART size(1) Largest target is 68
;!		 -> NULL(NULL[0]), VarUart(BANK3[68]), 
;!
;!    I2C	PTR struct I2C size(1) Largest target is 67
;!		 -> NULL(NULL[0]), VarI2C(BANK2[67]), 
;!
;!    Timer1	PTR struct Timer1 size(1) Largest target is 3
;!		 -> NULL(NULL[0]), VarTimer1(BANK0[3]), 
;!
;!    Segment	PTR struct Segment size(1) Largest target is 26
;!		 -> NULL(NULL[0]), VarSegment(BANK1[26]), 
;!
;!    Product	PTR struct Product size(1) Largest target is 32
;!		 -> NULL(NULL[0]), VarProduct(BANK1[32]), 
;!
;!    TMain	PTR struct TMain size(1) Largest target is 15
;!		 -> NULL(NULL[0]), VarTMain(BANK0[15]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->_UART_ISR
;!    _UART_ISR->i1_setSegmentDisplayNumber
;!    i1_setSegmentDisplayNumber->i1___awdiv
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_UART_Main
;!    _UART_Main->_UART_Transmit
;!    _setSegmentDisplayNumber->___awdiv
;!    _UART_Transmit->_printf
;!    _printf->___lwdiv
;!    _Mcu_Initialization->_I2C_Set
;!    _Mcu_Initialization->_TMR1_Set
;!    _Mcu_Initialization->_UART_Set
;!    _I2C_Main->_I2C_Master_Reception
;!
;!Critical Paths under _ISR in BANK0
;!
;!    _UART_ISR->i1_setSegmentDisplayNumber
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

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    2715
;!                           _I2C_Main
;!                              _MainT
;!                      _MainT_Initial
;!                 _Mcu_Initialization
;!             _SegmentDisplay_Initial
;!                _SegmentDisplay_Main
;!                          _UART_Main
;! ---------------------------------------------------------------------------------
;! (1) _UART_Main                                            2     2      0    2489
;!                                             34 BANK0      2     2      0
;!                       _UART_Receive
;!                      _UART_Transmit
;!            _setSegmentDisplayNumber
;! ---------------------------------------------------------------------------------
;! (2) _setSegmentDisplayNumber                              7     5      2    1647
;!                                             14 BANK0      7     5      2
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4     614
;!                                              5 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4     618
;!                                              5 BANK0      9     5      4
;! ---------------------------------------------------------------------------------
;! (2) _UART_Transmit                                        4     4      0     752
;!                                             30 BANK0      4     4      0
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (3) _printf                                              17    13      4     684
;!                                             13 BANK0     17    13      4
;!                            ___lwdiv
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (4) _putch                                                1     1      0      22
;!                                              5 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              8     4      4     268
;!                                              5 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _UART_Receive                                         4     4      0      90
;!                                              5 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _SegmentDisplay_Main                                  2     2      0       0
;!                                              5 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _SegmentDisplay_Initial                               1     1      0       0
;!                                              5 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Mcu_Initialization                                   0     0      0       0
;!                            _I2C_Set
;!                             _IO_Set
;!                           _TMR1_Set
;!                           _UART_Set
;! ---------------------------------------------------------------------------------
;! (2) _UART_Set                                             1     1      0       0
;!                                              5 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _TMR1_Set                                             1     1      0       0
;!                                              5 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _IO_Set                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Set                                              1     1      0       0
;!                                              5 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _MainT_Initial                                        1     1      0       0
;!                                              5 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _MainT                                                1     1      0       0
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Main                                             4     4      0     226
;!                                              8 BANK0      4     4      0
;!               _I2C_Master_Reception
;!            _I2C_Master_Transmission
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Master_Transmission                              2     2      0      68
;!                                              5 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Master_Reception                                 3     3      0      68
;!                                              5 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  1     1      0    1269
;!                                              4 BANK0      1     1      0
;!                           _TMR1_ISR
;!                           _UART_ISR
;! ---------------------------------------------------------------------------------
;! (6) _UART_ISR                                             3     3      0    1269
;!                                             12 COMMON     2     2      0
;!          i1_setSegmentDisplayNumber
;! ---------------------------------------------------------------------------------
;! (7) i1_setSegmentDisplayNumber                            7     5      2    1269
;!                                              9 COMMON     3     1      2
;!                                              0 BANK0      4     4      0
;!                          i1___awdiv
;!                          i1___awmod
;! ---------------------------------------------------------------------------------
;! (8) i1___awmod                                            7     3      4     452
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (8) i1___awdiv                                            9     5      4     456
;!                                              0 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! (6) _TMR1_ISR                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _I2C_Main
;!     _I2C_Master_Reception
;!     _I2C_Master_Transmission
;!   _MainT
;!   _MainT_Initial
;!   _Mcu_Initialization
;!     _I2C_Set
;!     _IO_Set
;!     _TMR1_Set
;!     _UART_Set
;!   _SegmentDisplay_Initial
;!   _SegmentDisplay_Main
;!   _UART_Main
;!     _UART_Receive
;!     _UART_Transmit
;!       _printf
;!         ___lwdiv
;!         _putch
;!     _setSegmentDisplayNumber
;!       ___awdiv
;!       ___awmod
;!
;! _ISR (ROOT)
;!   _TMR1_ISR
;!   _UART_ISR
;!     i1_setSegmentDisplayNumber
;!       i1___awdiv
;!       i1___awmod
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             1F0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      E       E       2      100.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0     10B       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50     24      3C       6       75.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50      0      3A       8       72.5%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0      43      10       83.8%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITBANK3            50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BANK3               50      0      44      12       85.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITBANK4            50      0       0      13        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BANK4               50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BITBANK5            50      0       0      15        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BANK5               50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITBANK6            10      0       0      17        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BANK6               10      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!DATA                 0      0     10B      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 6 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_I2C_Main
;;		_MainT
;;		_MainT_Initial
;;		_Mcu_Initialization
;;		_SegmentDisplay_Initial
;;		_SegmentDisplay_Main
;;		_UART_Main
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	6
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	6
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	8
	
l2201:	
;myMain.c: 8: MainT_Initial();
	fcall	_MainT_Initial
	line	9
	
l2203:	
;myMain.c: 9: Mcu_Initialization();
	fcall	_Mcu_Initialization
	line	10
	
l2205:	
;myMain.c: 10: SegmentDisplay_Initial();
	fcall	_SegmentDisplay_Initial
	line	12
	
l2207:	
;myMain.c: 11: ;;
;myMain.c: 12: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	goto	l2209
	line	13
;myMain.c: 13: while(1)
	
l45:	
	line	17
	
l2209:	
;myMain.c: 14: {
;myMain.c: 17: if(TMain->T1_Timerout)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2209
u2860:
	line	19
	
l2211:	
;myMain.c: 18: {
;myMain.c: 19: TMain->T1_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	20
	
l2213:	
;myMain.c: 20: MainT();
	fcall	_MainT
	line	21
	
l2215:	
;myMain.c: 21: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u2871
	goto	u2870
u2871:
	goto	l2209
u2870:
	line	24
	
l2217:	
;myMain.c: 22: {
;myMain.c: 23: ;;
;myMain.c: 24: I2C_Main();
	fcall	_I2C_Main
	line	25
	
l2219:	
;myMain.c: 25: UART_Main();
	fcall	_UART_Main
	line	26
	
l2221:	
;myMain.c: 26: SegmentDisplay_Main();
	fcall	_SegmentDisplay_Main
	goto	l2209
	line	27
	
l47:	
	goto	l2209
	line	28
	
l46:	
	goto	l2209
	line	29
	
l48:	
	line	13
	goto	l2209
	
l49:	
	line	30
	
l50:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_UART_Main

;; *************** function _UART_Main *****************
;; Defined at:
;;		line 703 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_UART_Receive
;;		_UART_Transmit
;;		_setSegmentDisplayNumber
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	703
global __ptext1
__ptext1:	;psect for function _UART_Main
psect	text1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	703
	global	__size_of_UART_Main
	__size_of_UART_Main	equ	__end_of_UART_Main-_UART_Main
	
_UART_Main:	
;incstack = 0
	opt	stack 8
; Regs used in _UART_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	705
	
l2125:	
;MCU_B1.c: 705: if(UART->RxGO)
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u2711
	goto	u2710
u2711:
	goto	l2135
u2710:
	line	707
	
l2127:	
;MCU_B1.c: 706: {
;MCU_B1.c: 707: UART->RxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	708
	
l2129:	
;MCU_B1.c: 708: UART_Receive();
	fcall	_UART_Receive
	line	709
	
l2131:	
;MCU_B1.c: 709: RCIE=1;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	710
	
l2133:	
;MCU_B1.c: 710: setSegmentDisplayNumber(UART->RxData[0]);
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	020h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_UART_Main+0)+0
	clrf	(??_UART_Main+0)+0+1
	movf	0+(??_UART_Main+0)+0,w
	movwf	(setSegmentDisplayNumber@number)
	movf	1+(??_UART_Main+0)+0,w
	movwf	(setSegmentDisplayNumber@number+1)
	fcall	_setSegmentDisplayNumber
	line	711
;MCU_B1.c: 711: }
	goto	l455
	line	712
	
l452:	
	line	714
	
l2135:	
;MCU_B1.c: 712: else
;MCU_B1.c: 713: {
;MCU_B1.c: 714: if(UART->TxGO)
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u2721
	goto	u2720
u2721:
	goto	l455
u2720:
	line	716
	
l2137:	
;MCU_B1.c: 715: {
;MCU_B1.c: 716: UART->TxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	717
	
l2139:	
;MCU_B1.c: 717: UART_Transmit();
	fcall	_UART_Transmit
	goto	l455
	line	718
	
l454:	
	goto	l455
	line	719
	
l453:	
	line	720
	
l455:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Main
	__end_of_UART_Main:
	signat	_UART_Main,88
	global	_setSegmentDisplayNumber

;; *************** function _setSegmentDisplayNumber *****************
;; Defined at:
;;		line 20 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
;; Parameters:    Size  Location     Type
;;  number          2   14[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       2       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_UART_Main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	20
global __ptext2
__ptext2:	;psect for function _setSegmentDisplayNumber
psect	text2
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	20
	global	__size_of_setSegmentDisplayNumber
	__size_of_setSegmentDisplayNumber	equ	__end_of_setSegmentDisplayNumber-_setSegmentDisplayNumber
	
_setSegmentDisplayNumber:	
;incstack = 0
	opt	stack 9
; Regs used in _setSegmentDisplayNumber: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	23
	
l1821:	
;SegmentDisplay_A2.c: 22: char i;
;SegmentDisplay_A2.c: 23: if(Segment->Enable)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u2021
	goto	u2020
u2021:
	goto	l118
u2020:
	line	25
	
l1823:	
;SegmentDisplay_A2.c: 24: {
;SegmentDisplay_A2.c: 25: Segment->GO=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	line	26
;SegmentDisplay_A2.c: 26: if(Segment->Hex)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u2031
	goto	u2030
u2031:
	goto	l1831
u2030:
	line	28
	
l1825:	
;SegmentDisplay_A2.c: 27: {
;SegmentDisplay_A2.c: 28: Segment->Num[0]=(number & 0x000f);
	movf	(setSegmentDisplayNumber@number),w
	andlw	0Fh
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	29
	
l1827:	
;SegmentDisplay_A2.c: 29: Segment->Num[1]=((number>>4)&0x000f);
	movf	(setSegmentDisplayNumber@number+1),w
	movwf	(??_setSegmentDisplayNumber+0)+0+1
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	04h
	movwf	(??_setSegmentDisplayNumber+2)+0
u2045:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	(??_setSegmentDisplayNumber+2)+0,f
	goto	u2045
	movf	0+(??_setSegmentDisplayNumber+0)+0,w
	andlw	0Fh
	movwf	(??_setSegmentDisplayNumber+3)+0
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+3)+0,w
	movwf	indf1
	line	30
	
l1829:	
;SegmentDisplay_A2.c: 30: Segment->Num[2]=((number>>8)&0x000f);
	movf	(setSegmentDisplayNumber@number+1),w
	andlw	0Fh
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	31
;SegmentDisplay_A2.c: 31: Segment->Num[3]=((number>>12)&0x000f);
	movf	(setSegmentDisplayNumber@number+1),w
	movwf	(??_setSegmentDisplayNumber+0)+0+1
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	0Ch
	movwf	(??_setSegmentDisplayNumber+2)+0
u2055:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	(??_setSegmentDisplayNumber+2)+0,f
	goto	u2055
	movf	0+(??_setSegmentDisplayNumber+0)+0,w
	andlw	0Fh
	movwf	(??_setSegmentDisplayNumber+3)+0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+3)+0,w
	movwf	indf1
	line	32
;SegmentDisplay_A2.c: 32: }
	goto	l1859
	line	33
	
l105:	
	
l1831:	
;SegmentDisplay_A2.c: 33: else if(Segment->Dec)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u2061
	goto	u2060
u2061:
	goto	l1859
u2060:
	line	35
	
l1833:	
;SegmentDisplay_A2.c: 34: {
;SegmentDisplay_A2.c: 35: if(number > 0x270f)
	movf	(setSegmentDisplayNumber@number+1),w
	xorlw	80h
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	(high(02710h))^80h
	subwf	(??_setSegmentDisplayNumber+0)+0,w
	skipz
	goto	u2075
	movlw	low(02710h)
	subwf	(setSegmentDisplayNumber@number),w
u2075:

	skipc
	goto	u2071
	goto	u2070
u2071:
	goto	l1847
u2070:
	line	37
	
l1835:	
;SegmentDisplay_A2.c: 36: {
;SegmentDisplay_A2.c: 37: for(i=0 ; i<4; i++)
	movlb 0	; select bank0
	clrf	(setSegmentDisplayNumber@i)
	
l1837:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l1841
u2080:
	goto	l1859
	
l1839:	
	goto	l1859
	line	38
	
l109:	
	line	39
	
l1841:	
;SegmentDisplay_A2.c: 38: {
;SegmentDisplay_A2.c: 39: Segment->Num[i]=16;
	movlw	(010h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(setSegmentDisplayNumber@i),w
	addlw	011h
	addwf	(_Segment),w
	movwf	(??_setSegmentDisplayNumber+1)+0
	movf	0+(??_setSegmentDisplayNumber+1)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	37
	
l1843:	
	movlw	(01h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(??_setSegmentDisplayNumber+0)+0,w
	addwf	(setSegmentDisplayNumber@i),f
	
l1845:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u2091
	goto	u2090
u2091:
	goto	l1841
u2090:
	goto	l1859
	
l110:	
	line	41
;SegmentDisplay_A2.c: 40: }
;SegmentDisplay_A2.c: 41: }
	goto	l1859
	line	42
	
l108:	
	line	44
	
l1847:	
;SegmentDisplay_A2.c: 42: else
;SegmentDisplay_A2.c: 43: {
;SegmentDisplay_A2.c: 44: Segment->Num[3]=(number/1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(___awdiv@divisor)
	movlw	high(03E8h)
	movwf	((___awdiv@divisor))+1
	movf	(setSegmentDisplayNumber@number+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(setSegmentDisplayNumber@number),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movlb 0	; select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	45
	
l1849:	
;SegmentDisplay_A2.c: 45: number%=1000;
	movlw	low(03E8h)
	movwf	(___awmod@divisor)
	movlw	high(03E8h)
	movwf	((___awmod@divisor))+1
	movf	(setSegmentDisplayNumber@number+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(setSegmentDisplayNumber@number),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	movlb 0	; select bank0
	movf	(1+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	46
	
l1851:	
;SegmentDisplay_A2.c: 46: Segment->Num[2]=(number/100);
	movlw	low(064h)
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(setSegmentDisplayNumber@number+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(setSegmentDisplayNumber@number),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movlb 0	; select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	47
;SegmentDisplay_A2.c: 47: number%=100;
	movlw	low(064h)
	movwf	(___awmod@divisor)
	movlw	high(064h)
	movwf	((___awmod@divisor))+1
	movf	(setSegmentDisplayNumber@number+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(setSegmentDisplayNumber@number),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	movlb 0	; select bank0
	movf	(1+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	48
	
l1853:	
;SegmentDisplay_A2.c: 48: Segment->Num[1]=(number/10);
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(setSegmentDisplayNumber@number+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(setSegmentDisplayNumber@number),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movlb 0	; select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	49
	
l1855:	
;SegmentDisplay_A2.c: 49: number%=10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(setSegmentDisplayNumber@number+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(setSegmentDisplayNumber@number),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	movlb 0	; select bank0
	movf	(1+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	50
	
l1857:	
;SegmentDisplay_A2.c: 50: Segment->Num[0]=number;
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	goto	l1859
	line	51
	
l111:	
	goto	l1859
	line	52
	
l107:	
	goto	l1859
	line	53
	
l106:	
	
l1859:	
;SegmentDisplay_A2.c: 51: }
;SegmentDisplay_A2.c: 52: }
;SegmentDisplay_A2.c: 53: if(Segment->Num[3] > 0)
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u2101
	goto	u2100
u2101:
	goto	l1863
u2100:
	line	55
	
l1861:	
;SegmentDisplay_A2.c: 54: {
;SegmentDisplay_A2.c: 55: Segment->DisplayCount=3;
	movlw	(03h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	56
;SegmentDisplay_A2.c: 56: }
	goto	l118
	line	57
	
l112:	
	
l1863:	
;SegmentDisplay_A2.c: 57: else if(Segment->Num[2] > 0)
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u2111
	goto	u2110
u2111:
	goto	l1867
u2110:
	line	59
	
l1865:	
;SegmentDisplay_A2.c: 58: {
;SegmentDisplay_A2.c: 59: Segment->DisplayCount=2;
	movlw	(02h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	60
;SegmentDisplay_A2.c: 60: }
	goto	l118
	line	61
	
l114:	
	
l1867:	
;SegmentDisplay_A2.c: 61: else if(Segment->Num[1] > 0)
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u2121
	goto	u2120
u2121:
	goto	l1871
u2120:
	line	63
	
l1869:	
;SegmentDisplay_A2.c: 62: {
;SegmentDisplay_A2.c: 63: Segment->DisplayCount=1;
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	64
;SegmentDisplay_A2.c: 64: }
	goto	l118
	line	65
	
l116:	
	line	67
	
l1871:	
;SegmentDisplay_A2.c: 65: else
;SegmentDisplay_A2.c: 66: {
;SegmentDisplay_A2.c: 67: Segment->DisplayCount=0;
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l118
	line	68
	
l117:	
	goto	l118
	
l115:	
	goto	l118
	
l113:	
	goto	l118
	line	69
	
l104:	
	line	70
	
l118:	
	return
	opt stack 0
GLOBAL	__end_of_setSegmentDisplayNumber
	__end_of_setSegmentDisplayNumber:
	signat	_setSegmentDisplayNumber,4216
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    5[BANK0 ] int 
;;  dividend        2    7[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[BANK0 ] unsigned char 
;;  counter         1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       4       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___awmod
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 9
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1701:	
	movlb 0	; select bank0
	clrf	(___awmod@sign)
	line	14
	
l1703:	
	btfss	(___awmod@dividend+1),7
	goto	u1741
	goto	u1740
u1741:
	goto	l1709
u1740:
	line	15
	
l1705:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1707:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1709
	line	17
	
l649:	
	line	18
	
l1709:	
	btfss	(___awmod@divisor+1),7
	goto	u1751
	goto	u1750
u1751:
	goto	l1713
u1750:
	line	19
	
l1711:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1713
	
l650:	
	line	20
	
l1713:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u1761
	goto	u1760
u1761:
	goto	l1731
u1760:
	line	21
	
l1715:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1721
	
l653:	
	line	23
	
l1717:	
	movlw	01h
	
u1775:
	lslf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	decfsz	wreg,f
	goto	u1775
	line	24
	
l1719:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1721
	line	25
	
l652:	
	line	22
	
l1721:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l1717
u1780:
	goto	l1723
	
l654:	
	goto	l1723
	line	26
	
l655:	
	line	27
	
l1723:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1795
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1795:
	skipc
	goto	u1791
	goto	u1790
u1791:
	goto	l1727
u1790:
	line	28
	
l1725:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	subwfb	(___awmod@dividend+1),f
	goto	l1727
	
l656:	
	line	29
	
l1727:	
	movlw	01h
	
u1805:
	lsrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	decfsz	wreg,f
	goto	u1805
	line	30
	
l1729:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u1811
	goto	u1810
u1811:
	goto	l1723
u1810:
	goto	l1731
	
l657:	
	goto	l1731
	line	31
	
l651:	
	line	32
	
l1731:	
	movf	(___awmod@sign),w
	skipz
	goto	u1820
	goto	l1735
u1820:
	line	33
	
l1733:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1735
	
l658:	
	line	34
	
l1735:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l659
	
l1737:	
	line	35
	
l659:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    5[BANK0 ] int 
;;  dividend        2    7[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   12[BANK0 ] int 
;;  sign            1   11[BANK0 ] unsigned char 
;;  counter         1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       4       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___awdiv
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 9
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1657:	
	movlb 0	; select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1659:	
	btfss	(___awdiv@divisor+1),7
	goto	u1641
	goto	u1640
u1641:
	goto	l1665
u1640:
	line	16
	
l1661:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1663:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1665
	line	18
	
l636:	
	line	19
	
l1665:	
	btfss	(___awdiv@dividend+1),7
	goto	u1651
	goto	u1650
u1651:
	goto	l1671
u1650:
	line	20
	
l1667:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1669:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1671
	line	22
	
l637:	
	line	23
	
l1671:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1673:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1661
	goto	u1660
u1661:
	goto	l1693
u1660:
	line	25
	
l1675:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1681
	
l640:	
	line	27
	
l1677:	
	movlw	01h
	
u1675:
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u1675
	line	28
	
l1679:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1681
	line	29
	
l639:	
	line	26
	
l1681:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l1677
u1680:
	goto	l1683
	
l641:	
	goto	l1683
	line	30
	
l642:	
	line	31
	
l1683:	
	movlw	01h
	
u1695:
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u1695
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1705
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1705:
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l1689
u1700:
	line	33
	
l1685:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	34
	
l1687:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1689
	line	35
	
l643:	
	line	36
	
l1689:	
	movlw	01h
	
u1715:
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	decfsz	wreg,f
	goto	u1715
	line	37
	
l1691:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1721
	goto	u1720
u1721:
	goto	l1683
u1720:
	goto	l1693
	
l644:	
	goto	l1693
	line	38
	
l638:	
	line	39
	
l1693:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1730
	goto	l1697
u1730:
	line	40
	
l1695:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1697
	
l645:	
	line	41
	
l1697:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l646
	
l1699:	
	line	42
	
l646:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_UART_Transmit

;; *************** function _UART_Transmit *****************
;; Defined at:
;;		line 721 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   33[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_printf
;; This function is called by:
;;		_UART_Main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	721
global __ptext5
__ptext5:	;psect for function _UART_Transmit
psect	text5
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	721
	global	__size_of_UART_Transmit
	__size_of_UART_Transmit	equ	__end_of_UART_Transmit-_UART_Transmit
	
_UART_Transmit:	
;incstack = 0
	opt	stack 8
; Regs used in _UART_Transmit: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	725
	
l1979:	
;MCU_B1.c: 723: char i;
;MCU_B1.c: 725: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(UART_Transmit@i)
	
l1981:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u2471
	goto	u2470
u2471:
	goto	l1985
u2470:
	goto	l460
	
l1983:	
	goto	l460
	line	726
	
l458:	
	line	728
	
l1985:	
;MCU_B1.c: 726: {
;MCU_B1.c: 728: printf("%x,",UART->TxData[i]);
	movlw	low((STR_1)|8000h)
	movwf	(printf@f)
	movlw	high((STR_1)|8000h)
	movwf	((printf@f))+1
	movf	(UART_Transmit@i),w
	addwf	(_UART),w
	movwf	(??_UART_Transmit+0)+0
	movf	0+(??_UART_Transmit+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_UART_Transmit+1)+0
	clrf	(??_UART_Transmit+1)+0+1
	movf	0+(??_UART_Transmit+1)+0,w
	movwf	0+(?_printf)+02h
	movf	1+(??_UART_Transmit+1)+0,w
	movwf	1+(?_printf)+02h
	fcall	_printf
	line	725
	
l1987:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_UART_Transmit+0)+0
	movf	(??_UART_Transmit+0)+0,w
	addwf	(UART_Transmit@i),f
	
l1989:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l1985
u2480:
	goto	l460
	
l459:	
	line	737
	
l460:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Transmit
	__end_of_UART_Transmit:
	signat	_UART_Transmit,88
	global	_printf

;; *************** function _printf *****************
;; Defined at:
;;		line 464 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               2   13[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  idx             1   22[BANK0 ] unsigned char 
;;  _val            4   24[BANK0 ] struct .
;;  c               1   29[BANK0 ] char 
;;  prec            1   28[BANK0 ] char 
;;  ap              1   23[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  flag            1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   13[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       4       0       0       0       0       0       0
;;      Locals:         0       9       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0
;;      Totals:         0      17       0       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___lwdiv
;;		_putch
;; This function is called by:
;;		_UART_Transmit
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	464
global __ptext6
__ptext6:	;psect for function _printf
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	464
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
;incstack = 0
	opt	stack 8
; Regs used in _printf: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	542
	
l1615:	
;doprnt.c: 466: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_printf+02h)&0ffh
	movlb 0	; select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l1655
	
l495:	
	line	547
	
l1617:	
;doprnt.c: 547: if(c != '%')
	movf	(printf@c),w
	xorlw	025h&0ffh
	skipnz
	goto	u1581
	goto	u1580
u1581:
	goto	l1621
u1580:
	line	550
	
l1619:	
;doprnt.c: 549: {
;doprnt.c: 550: (putch(c) );
	movf	(printf@c),w
	fcall	_putch
	line	551
;doprnt.c: 551: continue;
	goto	l1655
	line	552
	
l496:	
	line	557
	
l1621:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	movlb 0	; select bank0
	clrf	(printf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l1625
	line	646
;doprnt.c: 646: case 0:
	
l498:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l510
	line	727
;doprnt.c: 727: case 'x':
	
l500:	
	line	732
;doprnt.c: 732: break;
	goto	l1627
	line	811
;doprnt.c: 811: default:
	
l502:	
	line	822
;doprnt.c: 822: continue;
	goto	l1655
	line	831
	
l1623:	
;doprnt.c: 831: }
	goto	l1627
	line	644
	
l497:	
	
l1625:	
	movf	(printf@f+1),w
	movwf	(??_printf+0)+0+1
	movf	(printf@f),w
	movwf	(??_printf+0)+0
	incf	(printf@f),f
	skipnz
	incf	(printf@f+1),f
	movf	0+(??_printf+0)+0,w
	movwf	fsr0l
	movf	(1+(??_printf+0)+0),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 120
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte          248     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l510
	xorlw	120^0	; case 120
	skipnz
	goto	l1627
	goto	l1655
	opt asmopt_on

	line	831
	
l501:	
	line	1295
	
l1627:	
;doprnt.c: 1282: {
;doprnt.c: 1295: _val._val = (*(unsigned *)__va_arg((*(unsigned **)ap), (unsigned)0));
	movf	(printf@ap),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(printf@_val)
	moviw	[1]fsr1
	movwf	(printf@_val+1)
	
l1629:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1325
	
l1631:	
;doprnt.c: 1296: }
;doprnt.c: 1325: for(c = 1 ; c != sizeof hexpowers/sizeof hexpowers[0] ; c++)
	clrf	(printf@c)
	incf	(printf@c),f
	
l1633:	
	movf	(printf@c),w
	xorlw	04h&0ffh
	skipz
	goto	u1591
	goto	u1590
u1591:
	goto	l1637
u1590:
	goto	l1645
	
l1635:	
	goto	l1645
	line	1326
	
l503:	
	
l1637:	
;doprnt.c: 1326: if(_val._val < hexpowers[c])
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	lslf	(??_printf+0)+0,f
	rlf	(??_printf+0)+1,f
	movlw	low((_hexpowers)|8000h)
	addwf	0+(??_printf+0)+0,w
	movwf	fsr0l
	movlw	high((_hexpowers)|8000h)
	addwfc	1+(??_printf+0)+0,w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(??_printf+2)+0
	moviw	[1]fsr0
	movwf	(??_printf+2)+0+1
	movf	1+(??_printf+2)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u1605
	movf	0+(??_printf+2)+0,w
	subwf	(printf@_val),w
u1605:
	skipnc
	goto	u1601
	goto	u1600
u1601:
	goto	l1641
u1600:
	goto	l1645
	line	1327
	
l1639:	
;doprnt.c: 1327: break;
	goto	l1645
	
l505:	
	line	1325
	
l1641:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l1643:	
	movf	(printf@c),w
	xorlw	04h&0ffh
	skipz
	goto	u1611
	goto	u1610
u1611:
	goto	l1637
u1610:
	goto	l1645
	
l504:	
	line	1481
	
l1645:	
;doprnt.c: 1431: {
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l1653
	
l507:	
	line	1509
	
l1647:	
;doprnt.c: 1487: {
;doprnt.c: 1508: {
;doprnt.c: 1509: unsigned char idx = (_val._val / hexpowers[prec]) & 0xF;
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	lslf	(??_printf+0)+0,f
	rlf	(??_printf+0)+1,f
	movlw	low((_hexpowers)|8000h)
	addwf	0+(??_printf+0)+0,w
	movwf	fsr0l
	movlw	high((_hexpowers)|8000h)
	addwfc	1+(??_printf+0)+0,w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___lwdiv@divisor)
	moviw	[1]fsr0
	movwf	(___lwdiv@divisor+1)
	movf	(printf@_val+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(printf@_val),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movlb 0	; select bank0
	movf	(0+(?___lwdiv)),w
	andlw	0Fh
	movwf	(??_printf+2)+0
	movf	(??_printf+2)+0,w
	movwf	(printf@idx)
	line	1515
	
l1649:	
;doprnt.c: 1515: c = "0123456789abcdef"[idx];
	movf	(printf@idx),w
	addlw	low((STR_2)|8000h)
	movwf	fsr0l
	movlw	high((STR_2)|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	line	1533
	
l1651:	
;doprnt.c: 1517: }
;doprnt.c: 1532: }
;doprnt.c: 1533: (putch(c) );
	movf	(printf@c),w
	fcall	_putch
	goto	l1653
	line	1534
	
l506:	
	line	1483
	
l1653:	
	movlw	(-1)
	movlb 0	; select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1&0ffh
	skipz
	goto	u1621
	goto	u1620
u1621:
	goto	l1647
u1620:
	goto	l1655
	
l508:	
	goto	l1655
	line	1542
	
l494:	
	line	545
	
l1655:	
	movlb 0	; select bank0
	movf	(printf@f+1),w
	movwf	(??_printf+0)+0+1
	movf	(printf@f),w
	movwf	(??_printf+0)+0
	incf	(printf@f),f
	skipnz
	incf	(printf@f+1),f
	movf	0+(??_printf+0)+0,w
	movwf	fsr0l
	movf	(1+(??_printf+0)+0),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_printf+2)+0
	movf	(??_printf+2)+0,w
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u1631
	goto	u1630
u1631:
	goto	l1617
u1630:
	goto	l510
	
l509:	
	goto	l510
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l499:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _printf is never used
	
l510:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 777 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		_getche
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	777
global __ptext7
__ptext7:	;psect for function _putch
psect	text7
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	777
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
;incstack = 0
	opt	stack 8
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movlb 0	; select bank0
	movwf	(putch@byte)
	line	780
	
l1585:	
;MCU_B1.c: 780: while(!TXIF)
	goto	l471
	
l472:	
	line	781
;MCU_B1.c: 781: continue;
	
l471:	
	line	780
	btfss	(140/8),(140)&7	;volatile
	goto	u1501
	goto	u1500
u1501:
	goto	l471
u1500:
	goto	l1587
	
l473:	
	line	782
	
l1587:	
;MCU_B1.c: 782: TXREG = byte;
	movf	(putch@byte),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	783
	
l474:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4216
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    5[BANK0 ] unsigned int 
;;  dividend        2    7[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   10[BANK0 ] unsigned int 
;;  counter         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       4       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___lwdiv
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 8
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1589:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1591:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1511
	goto	u1510
u1511:
	goto	l1611
u1510:
	line	16
	
l1593:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1599
	
l845:	
	line	18
	
l1595:	
	movlw	01h
	
u1525:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u1525
	line	19
	
l1597:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1599
	line	20
	
l844:	
	line	17
	
l1599:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1531
	goto	u1530
u1531:
	goto	l1595
u1530:
	goto	l1601
	
l846:	
	goto	l1601
	line	21
	
l847:	
	line	22
	
l1601:	
	movlw	01h
	
u1545:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u1545
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1555
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1555:
	skipc
	goto	u1551
	goto	u1550
u1551:
	goto	l1607
u1550:
	line	24
	
l1603:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	25
	
l1605:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1607
	line	26
	
l848:	
	line	27
	
l1607:	
	movlw	01h
	
u1565:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u1565
	line	28
	
l1609:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u1571
	goto	u1570
u1571:
	goto	l1601
u1570:
	goto	l1611
	
l849:	
	goto	l1611
	line	29
	
l843:	
	line	30
	
l1611:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l850
	
l1613:	
	line	31
	
l850:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_UART_Receive

;; *************** function _UART_Receive *****************
;; Defined at:
;;		line 738 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_Main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	738
global __ptext9
__ptext9:	;psect for function _UART_Receive
psect	text9
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	738
	global	__size_of_UART_Receive
	__size_of_UART_Receive	equ	__end_of_UART_Receive-_UART_Receive
	
_UART_Receive:	
;incstack = 0
	opt	stack 10
; Regs used in _UART_Receive: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	741
	
l1961:	
;MCU_B1.c: 740: char i;
;MCU_B1.c: 741: RA1=~RA1;
	movlw	1<<((97)&7)
	movlb 0	; select bank0
	xorwf	((97)/8),f
	line	743
	
l1963:	
;MCU_B1.c: 743: TMain->Test=1;
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	745
	
l1965:	
;MCU_B1.c: 745: for(i=0;i<32;i++)
	clrf	(UART_Receive@i)
	
l1967:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l1971
u2450:
	goto	l1977
	
l1969:	
	goto	l1977
	line	746
	
l463:	
	line	747
	
l1971:	
;MCU_B1.c: 746: {
;MCU_B1.c: 747: I2C->BufferWriter[i]=UART->RxData[i];
	movf	(UART_Receive@i),w
	addlw	020h
	addwf	(_UART),w
	movwf	(??_UART_Receive+0)+0
	movf	0+(??_UART_Receive+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_UART_Receive+1)+0
	movf	(UART_Receive@i),w
	addlw	020h
	addwf	(_I2C),w
	movwf	(??_UART_Receive+2)+0
	movf	0+(??_UART_Receive+2)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_UART_Receive+1)+0,w
	movwf	indf1
	line	745
	
l1973:	
	movlw	(01h)
	movwf	(??_UART_Receive+0)+0
	movf	(??_UART_Receive+0)+0,w
	addwf	(UART_Receive@i),f
	
l1975:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l1971
u2460:
	goto	l1977
	
l464:	
	line	749
	
l1977:	
;MCU_B1.c: 748: }
;MCU_B1.c: 749: I2C->MasterTxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	763
	
l465:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Receive
	__end_of_UART_Receive:
	signat	_UART_Receive,88
	global	_SegmentDisplay_Main

;; *************** function _SegmentDisplay_Main *****************
;; Defined at:
;;		line 72 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	72
global __ptext10
__ptext10:	;psect for function _SegmentDisplay_Main
psect	text10
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	72
	global	__size_of_SegmentDisplay_Main
	__size_of_SegmentDisplay_Main	equ	__end_of_SegmentDisplay_Main-_SegmentDisplay_Main
	
_SegmentDisplay_Main:	
;incstack = 0
	opt	stack 11
; Regs used in _SegmentDisplay_Main: [wreg-fsr1h+status,2+status,0]
	line	74
	
l2141:	
;SegmentDisplay_A2.c: 74: if(Segment->GO)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u2731
	goto	u2730
u2731:
	goto	l132
u2730:
	line	76
	
l2143:	
;SegmentDisplay_A2.c: 75: {
;SegmentDisplay_A2.c: 76: Segment->Time++;
	movlw	(01h)
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_SegmentDisplay_Main+0)+0,w
	addwf	indf1,f
	line	77
	
l2145:	
;SegmentDisplay_A2.c: 77: if(Segment->Time == 5)
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	05h&0ffh
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l132
u2740:
	line	79
	
l2147:	
;SegmentDisplay_A2.c: 78: {
;SegmentDisplay_A2.c: 79: Segment->Time=0;
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	80
	
l2149:	
;SegmentDisplay_A2.c: 80: PORTA&=0x0f;
	movlw	(0Fh)
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	(??_SegmentDisplay_Main+0)+0,w
	andwf	(12),f	;volatile
	line	81
	
l2151:	
;SegmentDisplay_A2.c: 81: if(Segment->ComCount == 0)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l2155
u2750:
	line	83
	
l2153:	
;SegmentDisplay_A2.c: 82: {
;SegmentDisplay_A2.c: 83: RA4=1;
	bsf	(100/8),(100)&7	;volatile
	line	84
;SegmentDisplay_A2.c: 84: }
	goto	l2167
	line	85
	
l123:	
	
l2155:	
;SegmentDisplay_A2.c: 85: else if(Segment->ComCount == 1)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u2761
	goto	u2760
u2761:
	goto	l2159
u2760:
	line	87
	
l2157:	
;SegmentDisplay_A2.c: 86: {
;SegmentDisplay_A2.c: 87: RA5=1;
	bsf	(101/8),(101)&7	;volatile
	line	88
;SegmentDisplay_A2.c: 88: }
	goto	l2167
	line	89
	
l125:	
	
l2159:	
;SegmentDisplay_A2.c: 89: else if(Segment->ComCount == 2)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	02h&0ffh
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l2163
u2770:
	line	91
	
l2161:	
;SegmentDisplay_A2.c: 90: {
;SegmentDisplay_A2.c: 91: RA6=1;
	bsf	(102/8),(102)&7	;volatile
	line	92
;SegmentDisplay_A2.c: 92: }
	goto	l2167
	line	93
	
l127:	
	
l2163:	
;SegmentDisplay_A2.c: 93: else if(Segment->ComCount == 3)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	03h&0ffh
	skipz
	goto	u2781
	goto	u2780
u2781:
	goto	l2167
u2780:
	line	95
	
l2165:	
;SegmentDisplay_A2.c: 94: {
;SegmentDisplay_A2.c: 95: RA7=1;
	bsf	(103/8),(103)&7	;volatile
	goto	l2167
	line	96
	
l129:	
	goto	l2167
	line	97
	
l128:	
	goto	l2167
	
l126:	
	goto	l2167
	
l124:	
	
l2167:	
;SegmentDisplay_A2.c: 96: }
;SegmentDisplay_A2.c: 97: PORTB=Segment->Display[Segment->Num[Segment->ComCount]];
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	addlw	011h
	addwf	(_Segment),w
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	0+(??_SegmentDisplay_Main+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	addwf	(_Segment),w
	movwf	(??_SegmentDisplay_Main+1)+0
	movf	0+(??_SegmentDisplay_Main+1)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(13)	;volatile
	line	98
	
l2169:	
;SegmentDisplay_A2.c: 98: if(Segment->ComCount < Segment->DisplayCount)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_Segment),w
	addlw	017h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	skipnc
	goto	u2791
	goto	u2790
u2791:
	goto	l2173
u2790:
	line	100
	
l2171:	
;SegmentDisplay_A2.c: 99: {
;SegmentDisplay_A2.c: 100: Segment->ComCount++;
	movlw	(01h)
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_SegmentDisplay_Main+0)+0,w
	addwf	indf1,f
	line	101
;SegmentDisplay_A2.c: 101: }
	goto	l132
	line	102
	
l130:	
	line	104
	
l2173:	
;SegmentDisplay_A2.c: 102: else
;SegmentDisplay_A2.c: 103: {
;SegmentDisplay_A2.c: 104: Segment->ComCount=0;
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l132
	line	105
	
l131:	
	goto	l132
	line	106
	
l122:	
	goto	l132
	line	107
	
l121:	
	line	108
	
l132:	
	return
	opt stack 0
GLOBAL	__end_of_SegmentDisplay_Main
	__end_of_SegmentDisplay_Main:
	signat	_SegmentDisplay_Main,88
	global	_SegmentDisplay_Initial

;; *************** function _SegmentDisplay_Initial *****************
;; Defined at:
;;		line 8 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	8
global __ptext11
__ptext11:	;psect for function _SegmentDisplay_Initial
psect	text11
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	8
	global	__size_of_SegmentDisplay_Initial
	__size_of_SegmentDisplay_Initial	equ	__end_of_SegmentDisplay_Initial-_SegmentDisplay_Initial
	
_SegmentDisplay_Initial:	
;incstack = 0
	opt	stack 11
; Regs used in _SegmentDisplay_Initial: [wregfsr1]
	line	10
	
l2059:	
;SegmentDisplay_A2.c: 10: Segment=&VarSegment;
	movlw	(_VarSegment)&0ffh
	movlb 0	; select bank0
	movwf	(??_SegmentDisplay_Initial+0)+0
	movf	(??_SegmentDisplay_Initial+0)+0,w
	movwf	(_Segment)
	line	11
	
l2061:	
;SegmentDisplay_A2.c: 11: Segment->Enable=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	13
	
l2063:	
;SegmentDisplay_A2.c: 13: Segment->Dec=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	18
	
l101:	
	return
	opt stack 0
GLOBAL	__end_of_SegmentDisplay_Initial
	__end_of_SegmentDisplay_Initial:
	signat	_SegmentDisplay_Initial,88
	global	_Mcu_Initialization

;; *************** function _Mcu_Initialization *****************
;; Defined at:
;;		line 24 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_I2C_Set
;;		_IO_Set
;;		_TMR1_Set
;;		_UART_Set
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	24
global __ptext12
__ptext12:	;psect for function _Mcu_Initialization
psect	text12
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	24
	global	__size_of_Mcu_Initialization
	__size_of_Mcu_Initialization	equ	__end_of_Mcu_Initialization-_Mcu_Initialization
	
_Mcu_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Mcu_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	27
	
l2049:	
;MCU_B1.c: 27: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	29
	
l2051:	
;MCU_B1.c: 29: IO_Set();
	fcall	_IO_Set
	line	33
	
l2053:	
;MCU_B1.c: 31: ;;
;MCU_B1.c: 33: TMR1_Set();
	fcall	_TMR1_Set
	line	43
	
l2055:	
;MCU_B1.c: 35: ;;
;MCU_B1.c: 39: ;;
;MCU_B1.c: 41: ;;
;MCU_B1.c: 43: I2C_Set();
	fcall	_I2C_Set
	line	45
	
l2057:	
;MCU_B1.c: 45: UART_Set();
	fcall	_UART_Set
	line	48
	
l291:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initialization
	__end_of_Mcu_Initialization:
	signat	_Mcu_Initialization,88
	global	_UART_Set

;; *************** function _UART_Set *****************
;; Defined at:
;;		line 665 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	665
global __ptext13
__ptext13:	;psect for function _UART_Set
psect	text13
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	665
	global	__size_of_UART_Set
	__size_of_UART_Set	equ	__end_of_UART_Set-_UART_Set
	
_UART_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _UART_Set: [wreg+status,2]
	line	667
	
l1903:	
;MCU_B1.c: 667: UART=&VarUart;
	movlw	(_VarUart)&0ffh
	movlb 0	; select bank0
	movwf	(??_UART_Set+0)+0
	movf	(??_UART_Set+0)+0,w
	movwf	(_UART)
	line	668
	
l1905:	
;MCU_B1.c: 668: TRISC7 = 1;
	movlb 1	; select bank1
	bsf	(1143/8)^080h,(1143)&7	;volatile
	line	669
	
l1907:	
;MCU_B1.c: 669: TRISC6 = 1;
	bsf	(1142/8)^080h,(1142)&7	;volatile
	line	670
;MCU_B1.c: 670: SPBRG = ((int)(16000000L/(16UL * 19200) -1));
	movlw	(033h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	671
	
l1909:	
;MCU_B1.c: 671: SPBRGH = 0;
	clrf	(412)^0180h	;volatile
	line	672
	
l1911:	
;MCU_B1.c: 672: BRG16 = 0;
	bcf	(3323/8)^0180h,(3323)&7	;volatile
	line	673
	
l1913:	
;MCU_B1.c: 673: RCSTA = (0|0x90);
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	line	674
	
l1915:	
;MCU_B1.c: 674: TXSTA = (0x4|0|0x20);
	movlw	(024h)
	movwf	(414)^0180h	;volatile
	line	675
	
l1917:	
;MCU_B1.c: 675: TX9=0;
	bcf	(3318/8)^0180h,(3318)&7	;volatile
	line	676
	
l1919:	
;MCU_B1.c: 676: RX9=0;
	bcf	(3310/8)^0180h,(3310)&7	;volatile
	line	677
	
l1921:	
;MCU_B1.c: 677: TXIE=0;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7	;volatile
	line	678
	
l1923:	
;MCU_B1.c: 678: RCIE=1;
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	679
	
l1925:	
;MCU_B1.c: 679: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	680
	
l1927:	
;MCU_B1.c: 680: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	681
	
l442:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Set
	__end_of_UART_Set:
	signat	_UART_Set,88
	global	_TMR1_Set

;; *************** function _TMR1_Set *****************
;; Defined at:
;;		line 238 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	238
global __ptext14
__ptext14:	;psect for function _TMR1_Set
psect	text14
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	238
	global	__size_of_TMR1_Set
	__size_of_TMR1_Set	equ	__end_of_TMR1_Set-_TMR1_Set
	
_TMR1_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR1_Set: [wreg]
	line	240
	
l1889:	
;MCU_B1.c: 240: Timer1=&VarTimer1;
	movlw	(_VarTimer1)&0ffh
	movlb 0	; select bank0
	movwf	(??_TMR1_Set+0)+0
	movf	(??_TMR1_Set+0)+0,w
	movwf	(_Timer1)
	line	241
;MCU_B1.c: 241: T1CON=(0x40 | 0x00 | 0x01);
	movlw	(041h)
	movwf	(24)	;volatile
	line	242
;MCU_B1.c: 242: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	243
;MCU_B1.c: 243: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	244
	
l1891:	
;MCU_B1.c: 244: TMR1IE=1;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	245
	
l1893:	
;MCU_B1.c: 245: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	246
	
l1895:	
;MCU_B1.c: 246: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	247
	
l300:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_Set
	__end_of_TMR1_Set:
	signat	_TMR1_Set,88
	global	_IO_Set

;; *************** function _IO_Set *****************
;; Defined at:
;;		line 50 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	50
global __ptext15
__ptext15:	;psect for function _IO_Set
psect	text15
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	50
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _IO_Set: [wreg+status,2]
	line	64
	
l1873:	
;MCU_B1.c: 64: TRISA=0b00001001;;
	movlw	(09h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	65
	
l1875:	
;MCU_B1.c: 65: TRISB=0b00000000;;
	clrf	(141)^080h	;volatile
	line	66
	
l1877:	
;MCU_B1.c: 66: TRISC=0b00011001;;
	movlw	(019h)
	movwf	(142)^080h	;volatile
	line	67
;MCU_B1.c: 67: LATA=0b00000000;;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	68
;MCU_B1.c: 68: LATB=0b00000000;;
	clrf	(269)^0100h	;volatile
	line	69
;MCU_B1.c: 69: LATC=0b00000000;;
	clrf	(270)^0100h	;volatile
	line	70
	
l1879:	
;MCU_B1.c: 70: ANSELA=0b00000001;;
	movlw	(01h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	71
	
l1881:	
;MCU_B1.c: 71: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	72
	
l1883:	
;MCU_B1.c: 72: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	73
	
l1885:	
;MCU_B1.c: 73: PORTA=0b00001001;;
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	74
;MCU_B1.c: 74: PORTB=0b00000000;;
	clrf	(13)	;volatile
	line	75
	
l1887:	
;MCU_B1.c: 75: PORTC=0b00011001;;
	movlw	(019h)
	movwf	(14)	;volatile
	line	92
	
l294:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
	signat	_IO_Set,88
	global	_I2C_Set

;; *************** function _I2C_Set *****************
;; Defined at:
;;		line 399 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initialization
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	399
global __ptext16
__ptext16:	;psect for function _I2C_Set
psect	text16
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	399
	global	__size_of_I2C_Set
	__size_of_I2C_Set	equ	__end_of_I2C_Set-_I2C_Set
	
_I2C_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_Set: [wreg+status,2]
	line	401
	
l1897:	
;MCU_B1.c: 401: I2C=&VarI2C;
	movlw	(_VarI2C)&0ffh
	movlb 0	; select bank0
	movwf	(??_I2C_Set+0)+0
	movf	(??_I2C_Set+0)+0,w
	movwf	(_I2C)
	line	403
;MCU_B1.c: 403: SSPADD = 0x09;
	movlw	(09h)
	movlb 4	; select bank4
	movwf	(530)^0200h	;volatile
	line	404
;MCU_B1.c: 404: SSPSTAT = 0x80;
	movlw	(080h)
	movwf	(532)^0200h	;volatile
	line	405
	
l1899:	
;MCU_B1.c: 405: SSPCON2 = 0;
	clrf	(534)^0200h	;volatile
	line	407
	
l1901:	
;MCU_B1.c: 407: SSPCON1=0b101000;
	movlw	(028h)
	movwf	(533)^0200h	;volatile
	line	424
	
l308:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Set
	__end_of_I2C_Set:
	signat	_I2C_Set,88
	global	_MainT_Initial

;; *************** function _MainT_Initial *****************
;; Defined at:
;;		line 33 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	33
global __ptext17
__ptext17:	;psect for function _MainT_Initial
psect	text17
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	33
	global	__size_of_MainT_Initial
	__size_of_MainT_Initial	equ	__end_of_MainT_Initial-_MainT_Initial
	
_MainT_Initial:	
;incstack = 0
	opt	stack 11
; Regs used in _MainT_Initial: [wregfsr1]
	line	35
	
l2043:	
;myMain.c: 35: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_TMain)
	line	36
	
l2045:	
;myMain.c: 36: TMain->FirstOpen=1;
	movf	(_TMain),w
	addlw	0Dh
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	37
	
l2047:	
;myMain.c: 37: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_Product)
	line	38
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initial
	__end_of_MainT_Initial:
	signat	_MainT_Initial,88
	global	_MainT

;; *************** function _MainT *****************
;; Defined at:
;;		line 41 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	41
global __ptext18
__ptext18:	;psect for function _MainT
psect	text18
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	41
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
;incstack = 0
	opt	stack 11
; Regs used in _MainT: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	45
	
l2065:	
;myMain.c: 43: char i;
;myMain.c: 45: if(!TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u2601
	goto	u2600
u2601:
	goto	l2073
u2600:
	line	47
	
l2067:	
;myMain.c: 46: {
;myMain.c: 47: TMain->PowerCount++;
	incf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	48
	
l2069:	
;myMain.c: 48: if(TMain->PowerCount == 1500)
	incf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(05DCh)
	skipz
	goto	u2615
	moviw	[1]fsr1
	xorlw	high(05DCh)
u2615:
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l62
u2610:
	line	50
	
l2071:	
;myMain.c: 49: {
;myMain.c: 50: TMain->PowerCount=0;
	incf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	51
;myMain.c: 51: TMain->PowerON=1;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	goto	l62
	line	56
	
l57:	
	line	57
;myMain.c: 56: }
;myMain.c: 57: }
	goto	l62
	line	58
	
l56:	
	line	60
	
l2073:	
;myMain.c: 58: else
;myMain.c: 59: {
;myMain.c: 60: TMain->Count1++;
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	61
	
l2075:	
;myMain.c: 61: if(TMain->Count1 == 1000)
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u2625
	moviw	[1]fsr1
	xorlw	high(03E8h)
u2625:
	skipz
	goto	u2621
	goto	u2620
u2621:
	goto	l2083
u2620:
	line	63
	
l2077:	
;myMain.c: 62: {
;myMain.c: 63: TMain->Count1=0;
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	64
	
l2079:	
;myMain.c: 64: RA2=~RA2;
	movlw	1<<((98)&7)
	xorwf	((98)/8),f
	goto	l2083
	line	78
	
l2081:	
	goto	l2083
	line	82
;myMain.c: 79: {
	
l60:	
	goto	l2083
	line	105
	
l59:	
	line	108
	
l2083:	
;myMain.c: 82: }
;myMain.c: 105: }
;myMain.c: 108: TMain->Count2++;
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	109
	
l2085:	
;myMain.c: 109: if(TMain->Count2 == 2000)
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(07D0h)
	skipz
	goto	u2635
	moviw	[1]fsr1
	xorlw	high(07D0h)
u2635:
	skipz
	goto	u2631
	goto	u2630
u2631:
	goto	l62
u2630:
	line	111
	
l2087:	
;myMain.c: 110: {
;myMain.c: 111: TMain->Count2=0;
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l62
	line	124
	
l61:	
	goto	l62
	line	127
	
l58:	
	line	128
	
l62:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
	signat	_MainT,88
	global	_I2C_Main

;; *************** function _I2C_Main *****************
;; Defined at:
;;		line 441 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_I2C_Master_Reception
;;		_I2C_Master_Transmission
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	441
global __ptext19
__ptext19:	;psect for function _I2C_Main
psect	text19
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	441
	global	__size_of_I2C_Main
	__size_of_I2C_Main	equ	__end_of_I2C_Main-_I2C_Main
	
_I2C_Main:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	468
	
l2089:	
;MCU_B1.c: 443: char i;
;MCU_B1.c: 468: if(I2C->MasterRxGO)
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u2641
	goto	u2640
u2641:
	goto	l315
u2640:
	line	470
	
l2091:	
;MCU_B1.c: 469: {
;MCU_B1.c: 470: I2C->MasterRxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	471
	
l2093:	
;MCU_B1.c: 471: I2C_Master_Reception();
	fcall	_I2C_Master_Reception
	line	472
	
l2095:	
;MCU_B1.c: 472: TMain->Test=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	473
	
l2097:	
;MCU_B1.c: 473: RA1=~RA1;
	movlw	1<<((97)&7)
	xorwf	((97)/8),f
	line	475
	
l2099:	
;MCU_B1.c: 475: for(i=0;i<32;i++)
	clrf	(I2C_Main@i)
	
l2101:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l2105
u2650:
	goto	l2111
	
l2103:	
	goto	l2111
	line	476
	
l316:	
	line	477
	
l2105:	
;MCU_B1.c: 476: {
;MCU_B1.c: 477: UART->TxData[i]=I2C->BufferReader[i];
	movf	(I2C_Main@i),w
	addwf	(_I2C),w
	movwf	(??_I2C_Main+0)+0
	movf	0+(??_I2C_Main+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_I2C_Main+1)+0
	movf	(I2C_Main@i),w
	addwf	(_UART),w
	movwf	(??_I2C_Main+2)+0
	movf	0+(??_I2C_Main+2)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_I2C_Main+1)+0,w
	movwf	indf1
	line	475
	
l2107:	
	movlw	(01h)
	movwf	(??_I2C_Main+0)+0
	movf	(??_I2C_Main+0)+0,w
	addwf	(I2C_Main@i),f
	
l2109:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l2105
u2660:
	goto	l2111
	
l317:	
	line	479
	
l2111:	
;MCU_B1.c: 478: }
;MCU_B1.c: 479: UART->TxGO=1;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	481
;MCU_B1.c: 481: }
	goto	l324
	line	482
	
l315:	
	line	484
;MCU_B1.c: 482: else
;MCU_B1.c: 483: {
;MCU_B1.c: 484: if(RC0)
	btfss	(112/8),(112)&7	;volatile
	goto	u2671
	goto	u2670
u2671:
	goto	l2117
u2670:
	line	486
	
l2113:	
;MCU_B1.c: 485: {
;MCU_B1.c: 486: if(!I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u2681
	goto	u2680
u2681:
	goto	l324
u2680:
	line	488
	
l2115:	
;MCU_B1.c: 487: {
;MCU_B1.c: 488: I2C->SS=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	489
;MCU_B1.c: 489: I2C->MasterRxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l324
	line	490
	
l320:	
	line	491
;MCU_B1.c: 490: }
;MCU_B1.c: 491: }
	goto	l324
	line	492
	
l319:	
	line	494
	
l2117:	
;MCU_B1.c: 492: else
;MCU_B1.c: 493: {
;MCU_B1.c: 494: if(I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u2691
	goto	u2690
u2691:
	goto	l322
u2690:
	line	496
	
l2119:	
;MCU_B1.c: 495: {
;MCU_B1.c: 496: I2C->SS=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	497
	
l322:	
	line	498
;MCU_B1.c: 497: }
;MCU_B1.c: 498: if(I2C->MasterTxGO)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u2701
	goto	u2700
u2701:
	goto	l324
u2700:
	line	500
	
l2121:	
;MCU_B1.c: 499: {
;MCU_B1.c: 500: I2C->MasterTxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	501
	
l2123:	
;MCU_B1.c: 501: I2C_Master_Transmission();
	fcall	_I2C_Master_Transmission
	goto	l324
	line	502
	
l323:	
	goto	l324
	line	503
	
l321:	
	goto	l324
	line	504
	
l318:	
	line	507
	
l324:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Main
	__end_of_I2C_Main:
	signat	_I2C_Main,88
	global	_I2C_Master_Transmission

;; *************** function _I2C_Master_Transmission *****************
;; Defined at:
;;		line 541 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	541
global __ptext20
__ptext20:	;psect for function _I2C_Master_Transmission
psect	text20
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	541
	global	__size_of_I2C_Master_Transmission
	__size_of_I2C_Master_Transmission	equ	__end_of_I2C_Master_Transmission-_I2C_Master_Transmission
	
_I2C_Master_Transmission:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_Master_Transmission: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	544
	
l1945:	
;MCU_B1.c: 543: char i;
;MCU_B1.c: 544: while(SEN);
	goto	l330
	
l331:	
	
l330:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2331
	goto	u2330
u2331:
	goto	l330
u2330:
	
l332:	
	line	545
;MCU_B1.c: 545: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7	;volatile
	line	547
;MCU_B1.c: 547: while(SEN);
	goto	l333
	
l334:	
	
l333:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2341
	goto	u2340
u2341:
	goto	l333
u2340:
	goto	l1947
	
l335:	
	line	550
	
l1947:	
;MCU_B1.c: 550: SSPBUF=0x10;
	movlw	(010h)
	movwf	(529)^0200h	;volatile
	line	551
;MCU_B1.c: 551: while(BF);
	goto	l336
	
l337:	
	
l336:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u2351
	goto	u2350
u2351:
	goto	l336
u2350:
	goto	l339
	
l338:	
	line	554
;MCU_B1.c: 554: while(ACKSTAT);
	goto	l339
	
l340:	
	
l339:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u2361
	goto	u2360
u2361:
	goto	l339
u2360:
	goto	l1949
	
l341:	
	line	556
	
l1949:	
;MCU_B1.c: 556: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(I2C_Master_Transmission@i)
	
l1951:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l344
u2370:
	goto	l353
	
l1953:	
	goto	l353
	line	557
	
l342:	
	line	558
;MCU_B1.c: 557: {
;MCU_B1.c: 558: while(SEN);
	goto	l344
	
l345:	
	
l344:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2381
	goto	u2380
u2381:
	goto	l344
u2380:
	goto	l1955
	
l346:	
	line	559
	
l1955:	
;MCU_B1.c: 559: SSPBUF=I2C->BufferWriter[i];
	movlb 0	; select bank0
	movf	(I2C_Master_Transmission@i),w
	addlw	020h
	addwf	(_I2C),w
	movwf	(??_I2C_Master_Transmission+0)+0
	movf	0+(??_I2C_Master_Transmission+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 4	; select bank4
	movwf	(529)^0200h	;volatile
	line	560
;MCU_B1.c: 560: while(BF);
	goto	l347
	
l348:	
	
l347:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u2391
	goto	u2390
u2391:
	goto	l347
u2390:
	goto	l350
	
l349:	
	line	563
;MCU_B1.c: 563: while(ACKSTAT);
	goto	l350
	
l351:	
	
l350:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u2401
	goto	u2400
u2401:
	goto	l350
u2400:
	goto	l1957
	
l352:	
	line	556
	
l1957:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_I2C_Master_Transmission+0)+0
	movf	(??_I2C_Master_Transmission+0)+0,w
	addwf	(I2C_Master_Transmission@i),f
	
l1959:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l344
u2410:
	goto	l353
	
l343:	
	line	566
;MCU_B1.c: 564: }
;MCU_B1.c: 566: while(SEN);
	goto	l353
	
l354:	
	
l353:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2421
	goto	u2420
u2421:
	goto	l353
u2420:
	goto	l356
	
l355:	
	line	567
;MCU_B1.c: 567: while(!PEN)
	goto	l356
	
l357:	
	line	568
;MCU_B1.c: 568: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7	;volatile
	
l356:	
	line	567
	btfss	(4274/8)^0200h,(4274)&7	;volatile
	goto	u2431
	goto	u2430
u2431:
	goto	l357
u2430:
	goto	l359
	
l358:	
	line	569
;MCU_B1.c: 569: while(PEN);
	goto	l359
	
l360:	
	
l359:	
	btfsc	(4274/8)^0200h,(4274)&7	;volatile
	goto	u2441
	goto	u2440
u2441:
	goto	l359
u2440:
	goto	l362
	
l361:	
	line	572
	
l362:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Transmission
	__end_of_I2C_Master_Transmission:
	signat	_I2C_Master_Transmission,88
	global	_I2C_Master_Reception

;; *************** function _I2C_Master_Reception *****************
;; Defined at:
;;		line 574 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	574
global __ptext21
__ptext21:	;psect for function _I2C_Master_Reception
psect	text21
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	574
	global	__size_of_I2C_Master_Reception
	__size_of_I2C_Master_Reception	equ	__end_of_I2C_Master_Reception-_I2C_Master_Reception
	
_I2C_Master_Reception:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_Master_Reception: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	577
	
l1929:	
;MCU_B1.c: 576: char i;
;MCU_B1.c: 577: while(SEN);
	goto	l365
	
l366:	
	
l365:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2131
	goto	u2130
u2131:
	goto	l365
u2130:
	
l367:	
	line	578
;MCU_B1.c: 578: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7	;volatile
	line	579
;MCU_B1.c: 579: while(SEN);
	goto	l368
	
l369:	
	
l368:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2141
	goto	u2140
u2141:
	goto	l368
u2140:
	goto	l1931
	
l370:	
	line	582
	
l1931:	
;MCU_B1.c: 582: SSPBUF=0x11;
	movlw	(011h)
	movwf	(529)^0200h	;volatile
	line	585
;MCU_B1.c: 585: while(BF);
	goto	l371
	
l372:	
	
l371:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u2151
	goto	u2150
u2151:
	goto	l371
u2150:
	goto	l374
	
l373:	
	line	586
;MCU_B1.c: 586: while(ACKSTAT);
	goto	l374
	
l375:	
	
l374:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u2161
	goto	u2160
u2161:
	goto	l374
u2160:
	goto	l1933
	
l376:	
	line	589
	
l1933:	
;MCU_B1.c: 589: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(I2C_Master_Reception@i)
	
l1935:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l379
u2170:
	goto	l394
	
l1937:	
	goto	l394
	line	590
	
l377:	
	line	591
;MCU_B1.c: 590: {
;MCU_B1.c: 591: while(SEN);
	goto	l379
	
l380:	
	
l379:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2181
	goto	u2180
u2181:
	goto	l379
u2180:
	goto	l382
	
l381:	
	line	592
;MCU_B1.c: 592: while(RCEN);
	goto	l382
	
l383:	
	
l382:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u2191
	goto	u2190
u2191:
	goto	l382
u2190:
	
l384:	
	line	593
;MCU_B1.c: 593: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	594
;MCU_B1.c: 594: while(RCEN);
	goto	l385
	
l386:	
	
l385:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u2201
	goto	u2200
u2201:
	goto	l385
u2200:
	goto	l1939
	
l387:	
	line	595
	
l1939:	
;MCU_B1.c: 595: I2C->BufferReader[i]=SSPBUF;
	movf	(529)^0200h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_I2C_Master_Reception+0)+0
	movf	(I2C_Master_Reception@i),w
	addwf	(_I2C),w
	movwf	(??_I2C_Master_Reception+1)+0
	movf	0+(??_I2C_Master_Reception+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_I2C_Master_Reception+0)+0,w
	movwf	indf1
	line	596
;MCU_B1.c: 596: while(!ACKEN)
	goto	l388
	
l389:	
	line	597
;MCU_B1.c: 597: ACKEN=1;
	bsf	(4276/8)^0200h,(4276)&7	;volatile
	
l388:	
	line	596
	movlb 4	; select bank4
	btfss	(4276/8)^0200h,(4276)&7	;volatile
	goto	u2211
	goto	u2210
u2211:
	goto	l389
u2210:
	goto	l391
	
l390:	
	line	598
;MCU_B1.c: 598: while(ACKEN);
	goto	l391
	
l392:	
	
l391:	
	btfsc	(4276/8)^0200h,(4276)&7	;volatile
	goto	u2221
	goto	u2220
u2221:
	goto	l391
u2220:
	goto	l1941
	
l393:	
	line	589
	
l1941:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_I2C_Master_Reception+0)+0
	movf	(??_I2C_Master_Reception+0)+0,w
	addwf	(I2C_Master_Reception@i),f
	
l1943:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l379
u2230:
	goto	l394
	
l378:	
	line	600
;MCU_B1.c: 599: }
;MCU_B1.c: 600: while(RCEN);
	goto	l394
	
l395:	
	
l394:	
	movlb 4	; select bank4
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u2241
	goto	u2240
u2241:
	goto	l394
u2240:
	
l396:	
	line	601
;MCU_B1.c: 601: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	602
;MCU_B1.c: 602: while(RCEN);
	goto	l397
	
l398:	
	
l397:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u2251
	goto	u2250
u2251:
	goto	l397
u2250:
	goto	l400
	
l399:	
	line	603
;MCU_B1.c: 603: while(!ACKEN)
	goto	l400
	
l401:	
	line	604
;MCU_B1.c: 604: ACKEN=1;
	bsf	(4276/8)^0200h,(4276)&7	;volatile
	
l400:	
	line	603
	btfss	(4276/8)^0200h,(4276)&7	;volatile
	goto	u2261
	goto	u2260
u2261:
	goto	l401
u2260:
	goto	l403
	
l402:	
	line	605
;MCU_B1.c: 605: while(ACKEN);
	goto	l403
	
l404:	
	
l403:	
	btfsc	(4276/8)^0200h,(4276)&7	;volatile
	goto	u2271
	goto	u2270
u2271:
	goto	l403
u2270:
	goto	l406
	
l405:	
	line	606
;MCU_B1.c: 606: while(RCEN);
	goto	l406
	
l407:	
	
l406:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u2281
	goto	u2280
u2281:
	goto	l406
u2280:
	
l408:	
	line	607
;MCU_B1.c: 607: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	608
;MCU_B1.c: 608: while(RCEN);
	goto	l409
	
l410:	
	
l409:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u2291
	goto	u2290
u2291:
	goto	l409
u2290:
	goto	l412
	
l411:	
	line	610
;MCU_B1.c: 610: while(SEN);
	goto	l412
	
l413:	
	
l412:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2301
	goto	u2300
u2301:
	goto	l412
u2300:
	goto	l415
	
l414:	
	line	611
;MCU_B1.c: 611: while(!PEN)
	goto	l415
	
l416:	
	line	612
;MCU_B1.c: 612: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7	;volatile
	
l415:	
	line	611
	btfss	(4274/8)^0200h,(4274)&7	;volatile
	goto	u2311
	goto	u2310
u2311:
	goto	l416
u2310:
	goto	l418
	
l417:	
	line	613
;MCU_B1.c: 613: while(PEN);
	goto	l418
	
l419:	
	
l418:	
	btfsc	(4274/8)^0200h,(4274)&7	;volatile
	goto	u2321
	goto	u2320
u2321:
	goto	l418
u2320:
	goto	l421
	
l420:	
	line	616
	
l421:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Reception
	__end_of_I2C_Master_Reception:
	signat	_I2C_Master_Reception,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 97 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_TMR1_ISR
;;		_UART_ISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	97
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 8
; Regs used in _ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
psect	intentry
	bsf	pic14e$flags,0 ;set compiler interrupt flag
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+0)
	line	103
	
i1l2223:	
;MCU_B1.c: 99: ;;
;MCU_B1.c: 101: ;;
;MCU_B1.c: 103: TMR1_ISR();
	fcall	_TMR1_ISR
	line	109
;MCU_B1.c: 107: ;;
;MCU_B1.c: 109: UART_ISR();
	fcall	_UART_ISR
	line	110
	
i1l297:	
	movlb 0	; select bank0
	movf	(??_ISR+0),w
	movwf	btemp+1
	bcf	pic14e$flags,0 ;clear compiler interrupt flag
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_UART_ISR

;; *************** function _UART_ISR *****************
;; Defined at:
;;		line 683 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_setSegmentDisplayNumber
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	line	683
global __ptext23
__ptext23:	;psect for function _UART_ISR
psect	text23
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	683
	global	__size_of_UART_ISR
	__size_of_UART_ISR	equ	__end_of_UART_ISR-_UART_ISR
	
_UART_ISR:	
;incstack = 0
	opt	stack 8
; Regs used in _UART_ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	686
	
i1l2189:	
;MCU_B1.c: 685: char i;
;MCU_B1.c: 686: if(RCIE && RCIF)
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7	;volatile
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l449
u283_20:
	
i1l2191:	
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l449
u284_20:
	goto	i1l446
	line	688
	
i1l2193:	
;MCU_B1.c: 687: {
;MCU_B1.c: 688: while(!RCIDL);
	goto	i1l446
	
i1l447:	
	
i1l446:	
	movlb 3	; select bank3
	btfss	(3326/8)^0180h,(3326)&7	;volatile
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l446
u285_20:
	goto	i1l2195
	
i1l448:	
	line	690
	
i1l2195:	
;MCU_B1.c: 690: UART->RxData[0]=RCREG;
	movf	(409)^0180h,w	;volatile
	movwf	(??_UART_ISR+0)+0
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	020h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_UART_ISR+0)+0,w
	movwf	indf1
	line	699
	
i1l2197:	
;MCU_B1.c: 699: RA1=~RA1;
	movlw	1<<((97)&7)
	xorwf	((97)/8),f
	line	700
	
i1l2199:	
;MCU_B1.c: 700: setSegmentDisplayNumber(UART->RxData[0]);
	movf	(_UART),w
	addlw	020h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_UART_ISR+0)+0
	clrf	(??_UART_ISR+0)+0+1
	movf	0+(??_UART_ISR+0)+0,w
	movwf	(i1setSegmentDisplayNumber@number)
	movf	1+(??_UART_ISR+0)+0,w
	movwf	(i1setSegmentDisplayNumber@number+1)
	fcall	i1_setSegmentDisplayNumber
	goto	i1l449
	line	701
	
i1l445:	
	line	702
	
i1l449:	
	return
	opt stack 0
GLOBAL	__end_of_UART_ISR
	__end_of_UART_ISR:
	signat	_UART_ISR,88
	global	i1_setSegmentDisplayNumber

;; *************** function i1_setSegmentDisplayNumber *****************
;; Defined at:
;;		line 20 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
;; Parameters:    Size  Location     Type
;;  number          2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  setSegmentDi    1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         2       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0
;;      Totals:         3       4       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___awdiv
;;		i1___awmod
;; This function is called by:
;;		_UART_ISR
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	20
global __ptext24
__ptext24:	;psect for function i1_setSegmentDisplayNumber
psect	text24
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	20
	global	__size_ofi1_setSegmentDisplayNumber
	__size_ofi1_setSegmentDisplayNumber	equ	__end_ofi1_setSegmentDisplayNumber-i1_setSegmentDisplayNumber
	
i1_setSegmentDisplayNumber:	
;incstack = 0
	opt	stack 8
; Regs used in i1_setSegmentDisplayNumber: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	23
	
i1l1991:	
;SegmentDisplay_A2.c: 22: char i;
;SegmentDisplay_A2.c: 23: if(Segment->Enable)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l118
u249_20:
	line	25
	
i1l1993:	
;SegmentDisplay_A2.c: 24: {
;SegmentDisplay_A2.c: 25: Segment->GO=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	line	26
;SegmentDisplay_A2.c: 26: if(Segment->Hex)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u250_21
	goto	u250_20
u250_21:
	goto	i1l2001
u250_20:
	line	28
	
i1l1995:	
;SegmentDisplay_A2.c: 27: {
;SegmentDisplay_A2.c: 28: Segment->Num[0]=(number & 0x000f);
	movf	(i1setSegmentDisplayNumber@number),w
	andlw	0Fh
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	29
	
i1l1997:	
;SegmentDisplay_A2.c: 29: Segment->Num[1]=((number>>4)&0x000f);
	movf	(i1setSegmentDisplayNumber@number+1),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0+1
	movf	(i1setSegmentDisplayNumber@number),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movlw	04h
	movwf	(??i1_setSegmentDisplayNumber+2)+0
u251_25:
	rlf	(??i1_setSegmentDisplayNumber+0)+1,w
	rrf	(??i1_setSegmentDisplayNumber+0)+1,f
	rrf	(??i1_setSegmentDisplayNumber+0)+0,f
	decfsz	(??i1_setSegmentDisplayNumber+2)+0,f
	goto	u251_25
	movf	0+(??i1_setSegmentDisplayNumber+0)+0,w
	andlw	0Fh
	movwf	(??i1_setSegmentDisplayNumber+3)+0
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+3)+0,w
	movwf	indf1
	line	30
	
i1l1999:	
;SegmentDisplay_A2.c: 30: Segment->Num[2]=((number>>8)&0x000f);
	movf	(i1setSegmentDisplayNumber@number+1),w
	andlw	0Fh
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	31
;SegmentDisplay_A2.c: 31: Segment->Num[3]=((number>>12)&0x000f);
	movf	(i1setSegmentDisplayNumber@number+1),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0+1
	movf	(i1setSegmentDisplayNumber@number),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movlw	0Ch
	movwf	(??i1_setSegmentDisplayNumber+2)+0
u252_25:
	rlf	(??i1_setSegmentDisplayNumber+0)+1,w
	rrf	(??i1_setSegmentDisplayNumber+0)+1,f
	rrf	(??i1_setSegmentDisplayNumber+0)+0,f
	decfsz	(??i1_setSegmentDisplayNumber+2)+0,f
	goto	u252_25
	movf	0+(??i1_setSegmentDisplayNumber+0)+0,w
	andlw	0Fh
	movwf	(??i1_setSegmentDisplayNumber+3)+0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+3)+0,w
	movwf	indf1
	line	32
;SegmentDisplay_A2.c: 32: }
	goto	i1l2029
	line	33
	
i1l105:	
	
i1l2001:	
;SegmentDisplay_A2.c: 33: else if(Segment->Dec)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u253_21
	goto	u253_20
u253_21:
	goto	i1l2029
u253_20:
	line	35
	
i1l2003:	
;SegmentDisplay_A2.c: 34: {
;SegmentDisplay_A2.c: 35: if(number > 0x270f)
	movf	(i1setSegmentDisplayNumber@number+1),w
	xorlw	80h
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movlw	(high(02710h))^80h
	subwf	(??i1_setSegmentDisplayNumber+0)+0,w
	skipz
	goto	u254_25
	movlw	low(02710h)
	subwf	(i1setSegmentDisplayNumber@number),w
u254_25:

	skipc
	goto	u254_21
	goto	u254_20
u254_21:
	goto	i1l2017
u254_20:
	line	37
	
i1l2005:	
;SegmentDisplay_A2.c: 36: {
;SegmentDisplay_A2.c: 37: for(i=0 ; i<4; i++)
	clrf	(i1setSegmentDisplayNumber@i)
	
i1l2007:	
	movlw	(04h)
	subwf	(i1setSegmentDisplayNumber@i),w
	skipc
	goto	u255_21
	goto	u255_20
u255_21:
	goto	i1l2011
u255_20:
	goto	i1l2029
	
i1l2009:	
	goto	i1l2029
	line	38
	
i1l109:	
	line	39
	
i1l2011:	
;SegmentDisplay_A2.c: 38: {
;SegmentDisplay_A2.c: 39: Segment->Num[i]=16;
	movlw	(010h)
	movlb 0	; select bank0
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(i1setSegmentDisplayNumber@i),w
	addlw	011h
	addwf	(_Segment),w
	movwf	(??i1_setSegmentDisplayNumber+1)+0
	movf	0+(??i1_setSegmentDisplayNumber+1)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	37
	
i1l2013:	
	movlw	(01h)
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	addwf	(i1setSegmentDisplayNumber@i),f
	
i1l2015:	
	movlw	(04h)
	subwf	(i1setSegmentDisplayNumber@i),w
	skipc
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l2011
u256_20:
	goto	i1l2029
	
i1l110:	
	line	41
;SegmentDisplay_A2.c: 40: }
;SegmentDisplay_A2.c: 41: }
	goto	i1l2029
	line	42
	
i1l108:	
	line	44
	
i1l2017:	
;SegmentDisplay_A2.c: 42: else
;SegmentDisplay_A2.c: 43: {
;SegmentDisplay_A2.c: 44: Segment->Num[3]=(number/1000);
	movlw	low(03E8h)
	movwf	(i1___awdiv@divisor)
	movlw	high(03E8h)
	movwf	((i1___awdiv@divisor))+1
	movf	(i1setSegmentDisplayNumber@number+1),w
	clrf	(i1___awdiv@dividend+1)
	addwf	(i1___awdiv@dividend+1)
	movf	(i1setSegmentDisplayNumber@number),w
	clrf	(i1___awdiv@dividend)
	addwf	(i1___awdiv@dividend)

	fcall	i1___awdiv
	movf	(0+(?i1___awdiv)),w
	movlb 0	; select bank0
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	45
	
i1l2019:	
;SegmentDisplay_A2.c: 45: number%=1000;
	movlw	low(03E8h)
	movwf	(i1___awmod@divisor)
	movlw	high(03E8h)
	movwf	((i1___awmod@divisor))+1
	movf	(i1setSegmentDisplayNumber@number+1),w
	clrf	(i1___awmod@dividend+1)
	addwf	(i1___awmod@dividend+1)
	movf	(i1setSegmentDisplayNumber@number),w
	clrf	(i1___awmod@dividend)
	addwf	(i1___awmod@dividend)

	fcall	i1___awmod
	movf	(1+(?i1___awmod)),w
	clrf	(i1setSegmentDisplayNumber@number+1)
	addwf	(i1setSegmentDisplayNumber@number+1)
	movf	(0+(?i1___awmod)),w
	clrf	(i1setSegmentDisplayNumber@number)
	addwf	(i1setSegmentDisplayNumber@number)

	line	46
	
i1l2021:	
;SegmentDisplay_A2.c: 46: Segment->Num[2]=(number/100);
	movlw	low(064h)
	movwf	(i1___awdiv@divisor)
	movlw	high(064h)
	movwf	((i1___awdiv@divisor))+1
	movf	(i1setSegmentDisplayNumber@number+1),w
	clrf	(i1___awdiv@dividend+1)
	addwf	(i1___awdiv@dividend+1)
	movf	(i1setSegmentDisplayNumber@number),w
	clrf	(i1___awdiv@dividend)
	addwf	(i1___awdiv@dividend)

	fcall	i1___awdiv
	movf	(0+(?i1___awdiv)),w
	movlb 0	; select bank0
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	47
;SegmentDisplay_A2.c: 47: number%=100;
	movlw	low(064h)
	movwf	(i1___awmod@divisor)
	movlw	high(064h)
	movwf	((i1___awmod@divisor))+1
	movf	(i1setSegmentDisplayNumber@number+1),w
	clrf	(i1___awmod@dividend+1)
	addwf	(i1___awmod@dividend+1)
	movf	(i1setSegmentDisplayNumber@number),w
	clrf	(i1___awmod@dividend)
	addwf	(i1___awmod@dividend)

	fcall	i1___awmod
	movf	(1+(?i1___awmod)),w
	clrf	(i1setSegmentDisplayNumber@number+1)
	addwf	(i1setSegmentDisplayNumber@number+1)
	movf	(0+(?i1___awmod)),w
	clrf	(i1setSegmentDisplayNumber@number)
	addwf	(i1setSegmentDisplayNumber@number)

	line	48
	
i1l2023:	
;SegmentDisplay_A2.c: 48: Segment->Num[1]=(number/10);
	movlw	low(0Ah)
	movwf	(i1___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((i1___awdiv@divisor))+1
	movf	(i1setSegmentDisplayNumber@number+1),w
	clrf	(i1___awdiv@dividend+1)
	addwf	(i1___awdiv@dividend+1)
	movf	(i1setSegmentDisplayNumber@number),w
	clrf	(i1___awdiv@dividend)
	addwf	(i1___awdiv@dividend)

	fcall	i1___awdiv
	movf	(0+(?i1___awdiv)),w
	movlb 0	; select bank0
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	49
	
i1l2025:	
;SegmentDisplay_A2.c: 49: number%=10;
	movlw	low(0Ah)
	movwf	(i1___awmod@divisor)
	movlw	high(0Ah)
	movwf	((i1___awmod@divisor))+1
	movf	(i1setSegmentDisplayNumber@number+1),w
	clrf	(i1___awmod@dividend+1)
	addwf	(i1___awmod@dividend+1)
	movf	(i1setSegmentDisplayNumber@number),w
	clrf	(i1___awmod@dividend)
	addwf	(i1___awmod@dividend)

	fcall	i1___awmod
	movf	(1+(?i1___awmod)),w
	clrf	(i1setSegmentDisplayNumber@number+1)
	addwf	(i1setSegmentDisplayNumber@number+1)
	movf	(0+(?i1___awmod)),w
	clrf	(i1setSegmentDisplayNumber@number)
	addwf	(i1setSegmentDisplayNumber@number)

	line	50
	
i1l2027:	
;SegmentDisplay_A2.c: 50: Segment->Num[0]=number;
	movf	(i1setSegmentDisplayNumber@number),w
	movlb 0	; select bank0
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	goto	i1l2029
	line	51
	
i1l111:	
	goto	i1l2029
	line	52
	
i1l107:	
	goto	i1l2029
	line	53
	
i1l106:	
	
i1l2029:	
;SegmentDisplay_A2.c: 51: }
;SegmentDisplay_A2.c: 52: }
;SegmentDisplay_A2.c: 53: if(Segment->Num[3] > 0)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u257_21
	goto	u257_20
u257_21:
	goto	i1l2033
u257_20:
	line	55
	
i1l2031:	
;SegmentDisplay_A2.c: 54: {
;SegmentDisplay_A2.c: 55: Segment->DisplayCount=3;
	movlw	(03h)
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	56
;SegmentDisplay_A2.c: 56: }
	goto	i1l118
	line	57
	
i1l112:	
	
i1l2033:	
;SegmentDisplay_A2.c: 57: else if(Segment->Num[2] > 0)
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u258_21
	goto	u258_20
u258_21:
	goto	i1l2037
u258_20:
	line	59
	
i1l2035:	
;SegmentDisplay_A2.c: 58: {
;SegmentDisplay_A2.c: 59: Segment->DisplayCount=2;
	movlw	(02h)
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	60
;SegmentDisplay_A2.c: 60: }
	goto	i1l118
	line	61
	
i1l114:	
	
i1l2037:	
;SegmentDisplay_A2.c: 61: else if(Segment->Num[1] > 0)
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u259_21
	goto	u259_20
u259_21:
	goto	i1l2041
u259_20:
	line	63
	
i1l2039:	
;SegmentDisplay_A2.c: 62: {
;SegmentDisplay_A2.c: 63: Segment->DisplayCount=1;
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	64
;SegmentDisplay_A2.c: 64: }
	goto	i1l118
	line	65
	
i1l116:	
	line	67
	
i1l2041:	
;SegmentDisplay_A2.c: 65: else
;SegmentDisplay_A2.c: 66: {
;SegmentDisplay_A2.c: 67: Segment->DisplayCount=0;
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	i1l118
	line	68
	
i1l117:	
	goto	i1l118
	
i1l115:	
	goto	i1l118
	
i1l113:	
	goto	i1l118
	line	69
	
i1l104:	
	line	70
	
i1l118:	
	return
	opt stack 0
GLOBAL	__end_ofi1_setSegmentDisplayNumber
	__end_ofi1_setSegmentDisplayNumber:
	signat	i1_setSegmentDisplayNumber,88
	global	i1___awmod

;; *************** function i1___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  __awmod         1    6[COMMON] unsigned char 
;;  __awmod         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext25
__ptext25:	;psect for function i1___awmod
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_ofi1___awmod
	__size_ofi1___awmod	equ	__end_ofi1___awmod-i1___awmod
	
i1___awmod:	
;incstack = 0
	opt	stack 8
; Regs used in i1___awmod: [wreg+status,2+status,0]
	line	13
	
i1l1783:	
	clrf	(i1___awmod@sign)
	line	14
	
i1l1785:	
	btfss	(i1___awmod@dividend+1),7
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l1791
u193_20:
	line	15
	
i1l1787:	
	comf	(i1___awmod@dividend),f
	comf	(i1___awmod@dividend+1),f
	incf	(i1___awmod@dividend),f
	skipnz
	incf	(i1___awmod@dividend+1),f
	line	16
	
i1l1789:	
	clrf	(i1___awmod@sign)
	incf	(i1___awmod@sign),f
	goto	i1l1791
	line	17
	
i1l649:	
	line	18
	
i1l1791:	
	btfss	(i1___awmod@divisor+1),7
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l1795
u194_20:
	line	19
	
i1l1793:	
	comf	(i1___awmod@divisor),f
	comf	(i1___awmod@divisor+1),f
	incf	(i1___awmod@divisor),f
	skipnz
	incf	(i1___awmod@divisor+1),f
	goto	i1l1795
	
i1l650:	
	line	20
	
i1l1795:	
	movf	(i1___awmod@divisor+1),w
	iorwf	(i1___awmod@divisor),w
	skipnz
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l1813
u195_20:
	line	21
	
i1l1797:	
	clrf	(i1___awmod@counter)
	incf	(i1___awmod@counter),f
	line	22
	goto	i1l1803
	
i1l653:	
	line	23
	
i1l1799:	
	movlw	01h
	
u196_25:
	lslf	(i1___awmod@divisor),f
	rlf	(i1___awmod@divisor+1),f
	decfsz	wreg,f
	goto	u196_25
	line	24
	
i1l1801:	
	movlw	(01h)
	movwf	(??i1___awmod+0)+0
	movf	(??i1___awmod+0)+0,w
	addwf	(i1___awmod@counter),f
	goto	i1l1803
	line	25
	
i1l652:	
	line	22
	
i1l1803:	
	btfss	(i1___awmod@divisor+1),(15)&7
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l1799
u197_20:
	goto	i1l1805
	
i1l654:	
	goto	i1l1805
	line	26
	
i1l655:	
	line	27
	
i1l1805:	
	movf	(i1___awmod@divisor+1),w
	subwf	(i1___awmod@dividend+1),w
	skipz
	goto	u198_25
	movf	(i1___awmod@divisor),w
	subwf	(i1___awmod@dividend),w
u198_25:
	skipc
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l1809
u198_20:
	line	28
	
i1l1807:	
	movf	(i1___awmod@divisor),w
	subwf	(i1___awmod@dividend),f
	movf	(i1___awmod@divisor+1),w
	subwfb	(i1___awmod@dividend+1),f
	goto	i1l1809
	
i1l656:	
	line	29
	
i1l1809:	
	movlw	01h
	
u199_25:
	lsrf	(i1___awmod@divisor+1),f
	rrf	(i1___awmod@divisor),f
	decfsz	wreg,f
	goto	u199_25
	line	30
	
i1l1811:	
	movlw	low(01h)
	subwf	(i1___awmod@counter),f
	btfss	status,2
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l1805
u200_20:
	goto	i1l1813
	
i1l657:	
	goto	i1l1813
	line	31
	
i1l651:	
	line	32
	
i1l1813:	
	movf	(i1___awmod@sign),w
	skipz
	goto	u201_20
	goto	i1l1817
u201_20:
	line	33
	
i1l1815:	
	comf	(i1___awmod@dividend),f
	comf	(i1___awmod@dividend+1),f
	incf	(i1___awmod@dividend),f
	skipnz
	incf	(i1___awmod@dividend+1),f
	goto	i1l1817
	
i1l658:	
	line	34
	
i1l1817:	
	movf	(i1___awmod@dividend+1),w
	clrf	(?i1___awmod+1)
	addwf	(?i1___awmod+1)
	movf	(i1___awmod@dividend),w
	clrf	(?i1___awmod)
	addwf	(?i1___awmod)

	goto	i1l659
	
i1l1819:	
	line	35
	
i1l659:	
	return
	opt stack 0
GLOBAL	__end_ofi1___awmod
	__end_ofi1___awmod:
	signat	i1___awmod,90
	global	i1___awdiv

;; *************** function i1___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  __awdiv         2    7[COMMON] int 
;;  __awdiv         1    6[COMMON] unsigned char 
;;  __awdiv         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext26
__ptext26:	;psect for function i1___awdiv
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_ofi1___awdiv
	__size_ofi1___awdiv	equ	__end_ofi1___awdiv-i1___awdiv
	
i1___awdiv:	
;incstack = 0
	opt	stack 8
; Regs used in i1___awdiv: [wreg+status,2+status,0]
	line	14
	
i1l1739:	
	clrf	(i1___awdiv@sign)
	line	15
	
i1l1741:	
	btfss	(i1___awdiv@divisor+1),7
	goto	u183_21
	goto	u183_20
u183_21:
	goto	i1l1747
u183_20:
	line	16
	
i1l1743:	
	comf	(i1___awdiv@divisor),f
	comf	(i1___awdiv@divisor+1),f
	incf	(i1___awdiv@divisor),f
	skipnz
	incf	(i1___awdiv@divisor+1),f
	line	17
	
i1l1745:	
	clrf	(i1___awdiv@sign)
	incf	(i1___awdiv@sign),f
	goto	i1l1747
	line	18
	
i1l636:	
	line	19
	
i1l1747:	
	btfss	(i1___awdiv@dividend+1),7
	goto	u184_21
	goto	u184_20
u184_21:
	goto	i1l1753
u184_20:
	line	20
	
i1l1749:	
	comf	(i1___awdiv@dividend),f
	comf	(i1___awdiv@dividend+1),f
	incf	(i1___awdiv@dividend),f
	skipnz
	incf	(i1___awdiv@dividend+1),f
	line	21
	
i1l1751:	
	movlw	(01h)
	movwf	(??i1___awdiv+0)+0
	movf	(??i1___awdiv+0)+0,w
	xorwf	(i1___awdiv@sign),f
	goto	i1l1753
	line	22
	
i1l637:	
	line	23
	
i1l1753:	
	clrf	(i1___awdiv@quotient)
	clrf	(i1___awdiv@quotient+1)
	line	24
	
i1l1755:	
	movf	(i1___awdiv@divisor+1),w
	iorwf	(i1___awdiv@divisor),w
	skipnz
	goto	u185_21
	goto	u185_20
u185_21:
	goto	i1l1775
u185_20:
	line	25
	
i1l1757:	
	clrf	(i1___awdiv@counter)
	incf	(i1___awdiv@counter),f
	line	26
	goto	i1l1763
	
i1l640:	
	line	27
	
i1l1759:	
	movlw	01h
	
u186_25:
	lslf	(i1___awdiv@divisor),f
	rlf	(i1___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u186_25
	line	28
	
i1l1761:	
	movlw	(01h)
	movwf	(??i1___awdiv+0)+0
	movf	(??i1___awdiv+0)+0,w
	addwf	(i1___awdiv@counter),f
	goto	i1l1763
	line	29
	
i1l639:	
	line	26
	
i1l1763:	
	btfss	(i1___awdiv@divisor+1),(15)&7
	goto	u187_21
	goto	u187_20
u187_21:
	goto	i1l1759
u187_20:
	goto	i1l1765
	
i1l641:	
	goto	i1l1765
	line	30
	
i1l642:	
	line	31
	
i1l1765:	
	movlw	01h
	
u188_25:
	lslf	(i1___awdiv@quotient),f
	rlf	(i1___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u188_25
	line	32
	movf	(i1___awdiv@divisor+1),w
	subwf	(i1___awdiv@dividend+1),w
	skipz
	goto	u189_25
	movf	(i1___awdiv@divisor),w
	subwf	(i1___awdiv@dividend),w
u189_25:
	skipc
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l1771
u189_20:
	line	33
	
i1l1767:	
	movf	(i1___awdiv@divisor),w
	subwf	(i1___awdiv@dividend),f
	movf	(i1___awdiv@divisor+1),w
	subwfb	(i1___awdiv@dividend+1),f
	line	34
	
i1l1769:	
	bsf	(i1___awdiv@quotient)+(0/8),(0)&7
	goto	i1l1771
	line	35
	
i1l643:	
	line	36
	
i1l1771:	
	movlw	01h
	
u190_25:
	lsrf	(i1___awdiv@divisor+1),f
	rrf	(i1___awdiv@divisor),f
	decfsz	wreg,f
	goto	u190_25
	line	37
	
i1l1773:	
	movlw	low(01h)
	subwf	(i1___awdiv@counter),f
	btfss	status,2
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l1765
u191_20:
	goto	i1l1775
	
i1l644:	
	goto	i1l1775
	line	38
	
i1l638:	
	line	39
	
i1l1775:	
	movf	(i1___awdiv@sign),w
	skipz
	goto	u192_20
	goto	i1l1779
u192_20:
	line	40
	
i1l1777:	
	comf	(i1___awdiv@quotient),f
	comf	(i1___awdiv@quotient+1),f
	incf	(i1___awdiv@quotient),f
	skipnz
	incf	(i1___awdiv@quotient+1),f
	goto	i1l1779
	
i1l645:	
	line	41
	
i1l1779:	
	movf	(i1___awdiv@quotient+1),w
	clrf	(?i1___awdiv+1)
	addwf	(?i1___awdiv+1)
	movf	(i1___awdiv@quotient),w
	clrf	(?i1___awdiv)
	addwf	(?i1___awdiv)

	goto	i1l646
	
i1l1781:	
	line	42
	
i1l646:	
	return
	opt stack 0
GLOBAL	__end_ofi1___awdiv
	__end_ofi1___awdiv:
	signat	i1___awdiv,90
	global	_TMR1_ISR

;; *************** function _TMR1_ISR *****************
;; Defined at:
;;		line 249 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	249
global __ptext27
__ptext27:	;psect for function _TMR1_ISR
psect	text27
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	249
	global	__size_of_TMR1_ISR
	__size_of_TMR1_ISR	equ	__end_of_TMR1_ISR-_TMR1_ISR
	
_TMR1_ISR:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR1_ISR: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	251
	
i1l2175:	
;MCU_B1.c: 251: if(TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7	;volatile
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l305
u280_20:
	
i1l2177:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7	;volatile
	goto	u281_21
	goto	u281_20
u281_21:
	goto	i1l305
u281_20:
	line	253
	
i1l2179:	
;MCU_B1.c: 252: {
;MCU_B1.c: 253: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	254
;MCU_B1.c: 254: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	255
	
i1l2181:	
;MCU_B1.c: 255: TMR1IF=0;
	bcf	(136/8),(136)&7	;volatile
	line	256
	
i1l2183:	
;MCU_B1.c: 256: Timer1->Count++;
	incf	(_Timer1),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	257
	
i1l2185:	
;MCU_B1.c: 257: if(Timer1->Count == 20)
	incf	(_Timer1),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(014h)
	skipz
	goto	u282_25
	moviw	[1]fsr1
	xorlw	high(014h)
u282_25:
	skipz
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l305
u282_20:
	line	259
	
i1l2187:	
;MCU_B1.c: 258: {
;MCU_B1.c: 259: Timer1->Count=0;
	incf	(_Timer1),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	260
;MCU_B1.c: 260: TMain->T1_Timerout=1;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	goto	i1l305
	line	261
	
i1l304:	
	goto	i1l305
	line	262
	
i1l303:	
	line	270
	
i1l305:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_ISR
	__end_of_TMR1_ISR:
	signat	_TMR1_ISR,88
global	___latbits
___latbits	equ	2
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

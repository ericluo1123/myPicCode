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
	FNCALL	_printf,___lwmod
	FNCALL	_printf,_putch
	FNCALL	_Mcu_Initialization,_I2C_Set
	FNCALL	_Mcu_Initialization,_IO_Set
	FNCALL	_Mcu_Initialization,_TMR1_Set
	FNCALL	_Mcu_Initialization,_UART_Set
	FNCALL	_I2C_Main,_I2C_Master_Reception
	FNCALL	_I2C_Main,_I2C_Master_Transmission
	FNROOT	_main
	FNCALL	_ISR,_I2C_ISR
	FNCALL	_ISR,_TMR1_ISR
	FNCALL	_ISR,_UART_ISR
	FNCALL	_UART_ISR,_getche
	FNCALL	_getche,_getch
	FNCALL	_getche,i1_putch
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
	global	_dpowers
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_VarTimer1
	global	_VarTMain
	global	_VarI2C
	global	_VarUart
	global	_Product
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_Product:
       ds      1

	global	_Timer1
_Timer1:
       ds      1

	global	_TMain
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_TMain:
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
	
STR_1:	
	retlw	37	;'%'
	retlw	100	;'d'
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
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_VarTimer1:
       ds      3

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_VarTMain:
       ds      15

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
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	0Fh
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
?_I2C_ISR:	; 0 bytes @ 0x0
??_I2C_ISR:	; 0 bytes @ 0x0
?_I2C_Master_Reception:	; 0 bytes @ 0x0
?_I2C_Master_Transmission:	; 0 bytes @ 0x0
?_UART_Receive:	; 0 bytes @ 0x0
?_UART_Transmit:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_putch:	; 0 bytes @ 0x0
??_getch:	; 0 bytes @ 0x0
?i1_putch:	; 0 bytes @ 0x0
??i1_putch:	; 0 bytes @ 0x0
?_getche:	; 1 bytes @ 0x0
?_getch:	; 1 bytes @ 0x0
	global	i1putch@byte
i1putch@byte:	; 1 bytes @ 0x0
	ds	1
??_getche:	; 0 bytes @ 0x1
	global	getche@c
getche@c:	; 1 bytes @ 0x1
	ds	1
??_UART_ISR:	; 0 bytes @ 0x2
	ds	2
	global	UART_ISR@i
UART_ISR@i:	; 1 bytes @ 0x4
	ds	1
??_ISR:	; 0 bytes @ 0x5
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_MainT_Initial:	; 0 bytes @ 0x0
??_SegmentDisplay_Initial:	; 0 bytes @ 0x0
??_MainT:	; 0 bytes @ 0x0
??_SegmentDisplay_Main:	; 0 bytes @ 0x0
??_IO_Set:	; 0 bytes @ 0x0
??_TMR1_Set:	; 0 bytes @ 0x0
??_I2C_Set:	; 0 bytes @ 0x0
??_UART_Set:	; 0 bytes @ 0x0
??_I2C_Master_Reception:	; 0 bytes @ 0x0
??_I2C_Master_Transmission:	; 0 bytes @ 0x0
??_UART_Receive:	; 0 bytes @ 0x0
??_putch:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
??_Mcu_Initialization:	; 0 bytes @ 0x1
	global	I2C_Master_Transmission@i
I2C_Master_Transmission@i:	; 1 bytes @ 0x1
	ds	1
	global	I2C_Master_Reception@i
I2C_Master_Reception@i:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??_I2C_Main:	; 0 bytes @ 0x3
	global	UART_Receive@i
UART_Receive@i:	; 1 bytes @ 0x3
	ds	1
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x5
	ds	1
	global	I2C_Main@i
I2C_Main@i:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	1
?_setSegmentDisplayNumber:	; 0 bytes @ 0x9
	global	setSegmentDisplayNumber@number
setSegmentDisplayNumber@number:	; 2 bytes @ 0x9
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	1
??_setSegmentDisplayNumber:	; 0 bytes @ 0xB
	ds	1
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0xE
	global	printf@f
printf@f:	; 2 bytes @ 0xE
	ds	1
	global	setSegmentDisplayNumber@i
setSegmentDisplayNumber@i:	; 1 bytes @ 0xF
	ds	3
??_printf:	; 0 bytes @ 0x12
	ds	4
	global	printf@ap
printf@ap:	; 1 bytes @ 0x16
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x17
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x18
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0x19
	ds	4
	global	printf@c
printf@c:	; 1 bytes @ 0x1D
	ds	1
??_UART_Transmit:	; 0 bytes @ 0x1E
	ds	3
	global	UART_Transmit@j
UART_Transmit@j:	; 2 bytes @ 0x21
	ds	2
	global	UART_Transmit@i
UART_Transmit@i:	; 1 bytes @ 0x23
	ds	1
??_UART_Main:	; 0 bytes @ 0x24
	ds	2
??_main:	; 0 bytes @ 0x26
;!
;!Data Sizes:
;!    Strings     4
;!    Constant    10
;!    Data        58
;!    BSS         153
;!    Persistent  6
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      11
;!    BANK0            80     38      57
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
;!    S548$_cp	PTR const unsigned char  size(1) Largest target is 0
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
;!		 -> NULL(NULL[0]), VarTimer1(COMMON[3]), 
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
;!    _UART_ISR->_getche
;!    _getche->i1_putch
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_UART_Main
;!    _UART_Main->_UART_Transmit
;!    _setSegmentDisplayNumber->___awdiv
;!    _UART_Transmit->_printf
;!    _printf->___lwmod
;!    ___lwmod->___lwdiv
;!    _Mcu_Initialization->_I2C_Set
;!    _Mcu_Initialization->_TMR1_Set
;!    _Mcu_Initialization->_UART_Set
;!    _I2C_Main->_I2C_Master_Reception
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

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    4220
;!                           _I2C_Main
;!                              _MainT
;!                      _MainT_Initial
;!                 _Mcu_Initialization
;!             _SegmentDisplay_Initial
;!                _SegmentDisplay_Main
;!                          _UART_Main
;! ---------------------------------------------------------------------------------
;! (1) _UART_Main                                            2     2      0    3892
;!                                             36 BANK0      2     2      0
;!                       _UART_Receive
;!                      _UART_Transmit
;!            _setSegmentDisplayNumber
;! ---------------------------------------------------------------------------------
;! (2) _setSegmentDisplayNumber                              7     5      2    2203
;!                                              9 BANK0      7     5      2
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4     823
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4     835
;!                                              0 BANK0      9     5      4
;! ---------------------------------------------------------------------------------
;! (2) _UART_Transmit                                        6     6      0    1559
;!                                             30 BANK0      6     6      0
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (3) _printf                                              16    12      4    1392
;!                                             14 BANK0     16    12      4
;!                            ___lwdiv
;!                            ___lwmod
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (4) _putch                                                1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              6     2      4     362
;!                                              8 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              8     4      4     371
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _UART_Receive                                         4     4      0     130
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _SegmentDisplay_Main                                  2     2      0       0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _SegmentDisplay_Initial                               1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Mcu_Initialization                                   0     0      0       0
;!                            _I2C_Set
;!                             _IO_Set
;!                           _TMR1_Set
;!                           _UART_Set
;! ---------------------------------------------------------------------------------
;! (2) _UART_Set                                             1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _TMR1_Set                                             1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _IO_Set                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Set                                              1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _MainT_Initial                                        1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _MainT                                                1     1      0       0
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Main                                             4     4      0     328
;!                                              3 BANK0      4     4      0
;!               _I2C_Master_Reception
;!            _I2C_Master_Transmission
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Master_Transmission                              2     2      0      99
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Master_Reception                                 3     3      0      99
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  1     1      0     113
;!                                              5 COMMON     1     1      0
;!                            _I2C_ISR
;!                           _TMR1_ISR
;!                           _UART_ISR
;! ---------------------------------------------------------------------------------
;! (6) _UART_ISR                                             3     3      0     113
;!                                              2 COMMON     3     3      0
;!                             _getche
;! ---------------------------------------------------------------------------------
;! (7) _getche                                               1     1      0      45
;!                                              1 COMMON     1     1      0
;!                              _getch
;!                            i1_putch
;! ---------------------------------------------------------------------------------
;! (8) i1_putch                                              1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (8) _getch                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _TMR1_ISR                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _I2C_ISR                                              0     0      0       0
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
;!         ___lwmod
;!           ___lwdiv (ARG)
;!         _putch
;!     _setSegmentDisplayNumber
;!       ___awdiv
;!       ___awmod
;!
;! _ISR (ROOT)
;!   _I2C_ISR
;!   _TMR1_ISR
;!   _UART_ISR
;!     _getche
;!       _getch
;!       i1_putch
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             1F0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      6       B       2       78.6%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0     105       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50     26      39       6       71.3%
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
;!DATA                 0      0     105      19        0.0%
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
	
l2619:	
;myMain.c: 8: MainT_Initial();
	fcall	_MainT_Initial
	line	9
	
l2621:	
;myMain.c: 9: Mcu_Initialization();
	fcall	_Mcu_Initialization
	line	10
	
l2623:	
;myMain.c: 10: SegmentDisplay_Initial();
	fcall	_SegmentDisplay_Initial
	line	12
	
l2625:	
;myMain.c: 11: ;;
;myMain.c: 12: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	goto	l2627
	line	13
;myMain.c: 13: while(1)
	
l45:	
	line	17
	
l2627:	
;myMain.c: 14: {
;myMain.c: 17: if(TMain->T1_Timerout)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u3731
	goto	u3730
u3731:
	goto	l2627
u3730:
	line	19
	
l2629:	
;myMain.c: 18: {
;myMain.c: 19: TMain->T1_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	20
	
l2631:	
;myMain.c: 20: MainT();
	fcall	_MainT
	line	21
	
l2633:	
;myMain.c: 21: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u3741
	goto	u3740
u3741:
	goto	l2627
u3740:
	line	24
	
l2635:	
;myMain.c: 22: {
;myMain.c: 23: ;;
;myMain.c: 24: I2C_Main();
	fcall	_I2C_Main
	line	25
	
l2637:	
;myMain.c: 25: UART_Main();
	fcall	_UART_Main
	line	26
	
l2639:	
;myMain.c: 26: SegmentDisplay_Main();
	fcall	_SegmentDisplay_Main
	goto	l2627
	line	27
	
l47:	
	goto	l2627
	line	28
	
l46:	
	goto	l2627
	line	29
	
l48:	
	line	13
	goto	l2627
	
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
;;		line 723 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
	line	723
global __ptext1
__ptext1:	;psect for function _UART_Main
psect	text1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	723
	global	__size_of_UART_Main
	__size_of_UART_Main	equ	__end_of_UART_Main-_UART_Main
	
_UART_Main:	
;incstack = 0
	opt	stack 8
; Regs used in _UART_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	725
	
l2569:	
;MCU_B1.c: 725: if(UART->RxGO)
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u3641
	goto	u3640
u3641:
	goto	l2579
u3640:
	line	727
	
l2571:	
;MCU_B1.c: 726: {
;MCU_B1.c: 727: UART->RxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	728
	
l2573:	
;MCU_B1.c: 728: UART_Receive();
	fcall	_UART_Receive
	line	729
	
l2575:	
;MCU_B1.c: 729: setSegmentDisplayNumber(UART->RxData[5]);
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	025h
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
	line	730
	
l2577:	
;MCU_B1.c: 730: RCIE=1;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	731
;MCU_B1.c: 731: }
	goto	l456
	line	732
	
l453:	
	line	734
	
l2579:	
;MCU_B1.c: 732: else
;MCU_B1.c: 733: {
;MCU_B1.c: 734: if(UART->TxGO)
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u3651
	goto	u3650
u3651:
	goto	l456
u3650:
	line	736
	
l2581:	
;MCU_B1.c: 735: {
;MCU_B1.c: 736: UART->TxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	737
	
l2583:	
;MCU_B1.c: 737: UART_Transmit();
	fcall	_UART_Transmit
	goto	l456
	line	738
	
l455:	
	goto	l456
	line	739
	
l454:	
	line	740
	
l456:	
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
;;  number          2    9[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               1   15[BANK0 ] unsigned char 
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
	
l2307:	
;SegmentDisplay_A2.c: 22: char i;
;SegmentDisplay_A2.c: 23: if(Segment->Enable)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u3041
	goto	u3040
u3041:
	goto	l118
u3040:
	line	25
	
l2309:	
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
	goto	u3051
	goto	u3050
u3051:
	goto	l2317
u3050:
	line	28
	
l2311:	
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
	
l2313:	
;SegmentDisplay_A2.c: 29: Segment->Num[1]=((number>>4)&0x000f);
	movf	(setSegmentDisplayNumber@number+1),w
	movwf	(??_setSegmentDisplayNumber+0)+0+1
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	04h
	movwf	(??_setSegmentDisplayNumber+2)+0
u3065:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	(??_setSegmentDisplayNumber+2)+0,f
	goto	u3065
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
	
l2315:	
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
u3075:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	(??_setSegmentDisplayNumber+2)+0,f
	goto	u3075
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
	goto	l2345
	line	33
	
l105:	
	
l2317:	
;SegmentDisplay_A2.c: 33: else if(Segment->Dec)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u3081
	goto	u3080
u3081:
	goto	l2345
u3080:
	line	35
	
l2319:	
;SegmentDisplay_A2.c: 34: {
;SegmentDisplay_A2.c: 35: if(number > 0x270f)
	movf	(setSegmentDisplayNumber@number+1),w
	xorlw	80h
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	(high(02710h))^80h
	subwf	(??_setSegmentDisplayNumber+0)+0,w
	skipz
	goto	u3095
	movlw	low(02710h)
	subwf	(setSegmentDisplayNumber@number),w
u3095:

	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l2333
u3090:
	line	37
	
l2321:	
;SegmentDisplay_A2.c: 36: {
;SegmentDisplay_A2.c: 37: for(i=0 ; i<4; i++)
	movlb 0	; select bank0
	clrf	(setSegmentDisplayNumber@i)
	
l2323:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l2327
u3100:
	goto	l2345
	
l2325:	
	goto	l2345
	line	38
	
l109:	
	line	39
	
l2327:	
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
	
l2329:	
	movlw	(01h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(??_setSegmentDisplayNumber+0)+0,w
	addwf	(setSegmentDisplayNumber@i),f
	
l2331:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l2327
u3110:
	goto	l2345
	
l110:	
	line	41
;SegmentDisplay_A2.c: 40: }
;SegmentDisplay_A2.c: 41: }
	goto	l2345
	line	42
	
l108:	
	line	44
	
l2333:	
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
	
l2335:	
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
	
l2337:	
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
	
l2339:	
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
	
l2341:	
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
	
l2343:	
;SegmentDisplay_A2.c: 50: Segment->Num[0]=number;
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	goto	l2345
	line	51
	
l111:	
	goto	l2345
	line	52
	
l107:	
	goto	l2345
	line	53
	
l106:	
	
l2345:	
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
	goto	u3121
	goto	u3120
u3121:
	goto	l2349
u3120:
	line	55
	
l2347:	
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
	
l2349:	
;SegmentDisplay_A2.c: 57: else if(Segment->Num[2] > 0)
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u3131
	goto	u3130
u3131:
	goto	l2353
u3130:
	line	59
	
l2351:	
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
	
l2353:	
;SegmentDisplay_A2.c: 61: else if(Segment->Num[1] > 0)
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u3141
	goto	u3140
u3141:
	goto	l2357
u3140:
	line	63
	
l2355:	
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
	
l2357:	
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
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
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
	
l2269:	
	movlb 0	; select bank0
	clrf	(___awmod@sign)
	line	14
	
l2271:	
	btfss	(___awmod@dividend+1),7
	goto	u2951
	goto	u2950
u2951:
	goto	l2277
u2950:
	line	15
	
l2273:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l2275:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l2277
	line	17
	
l655:	
	line	18
	
l2277:	
	btfss	(___awmod@divisor+1),7
	goto	u2961
	goto	u2960
u2961:
	goto	l2281
u2960:
	line	19
	
l2279:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2281
	
l656:	
	line	20
	
l2281:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2971
	goto	u2970
u2971:
	goto	l2299
u2970:
	line	21
	
l2283:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l2289
	
l659:	
	line	23
	
l2285:	
	movlw	01h
	
u2985:
	lslf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	decfsz	wreg,f
	goto	u2985
	line	24
	
l2287:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2289
	line	25
	
l658:	
	line	22
	
l2289:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l2285
u2990:
	goto	l2291
	
l660:	
	goto	l2291
	line	26
	
l661:	
	line	27
	
l2291:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3005
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3005:
	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l2295
u3000:
	line	28
	
l2293:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	subwfb	(___awmod@dividend+1),f
	goto	l2295
	
l662:	
	line	29
	
l2295:	
	movlw	01h
	
u3015:
	lsrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	decfsz	wreg,f
	goto	u3015
	line	30
	
l2297:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l2291
u3020:
	goto	l2299
	
l663:	
	goto	l2299
	line	31
	
l657:	
	line	32
	
l2299:	
	movf	(___awmod@sign),w
	skipz
	goto	u3030
	goto	l2303
u3030:
	line	33
	
l2301:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2303
	
l664:	
	line	34
	
l2303:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l665
	
l2305:	
	line	35
	
l665:	
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
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK0 ] int 
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
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
	
l2225:	
	movlb 0	; select bank0
	clrf	(___awdiv@sign)
	line	15
	
l2227:	
	btfss	(___awdiv@divisor+1),7
	goto	u2851
	goto	u2850
u2851:
	goto	l2233
u2850:
	line	16
	
l2229:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l2231:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l2233
	line	18
	
l642:	
	line	19
	
l2233:	
	btfss	(___awdiv@dividend+1),7
	goto	u2861
	goto	u2860
u2861:
	goto	l2239
u2860:
	line	20
	
l2235:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l2237:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2239
	line	22
	
l643:	
	line	23
	
l2239:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l2241:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2871
	goto	u2870
u2871:
	goto	l2261
u2870:
	line	25
	
l2243:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l2249
	
l646:	
	line	27
	
l2245:	
	movlw	01h
	
u2885:
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u2885
	line	28
	
l2247:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2249
	line	29
	
l645:	
	line	26
	
l2249:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l2245
u2890:
	goto	l2251
	
l647:	
	goto	l2251
	line	30
	
l648:	
	line	31
	
l2251:	
	movlw	01h
	
u2905:
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u2905
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2915
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2915:
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l2257
u2910:
	line	33
	
l2253:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	34
	
l2255:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2257
	line	35
	
l649:	
	line	36
	
l2257:	
	movlw	01h
	
u2925:
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	decfsz	wreg,f
	goto	u2925
	line	37
	
l2259:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l2251
u2930:
	goto	l2261
	
l650:	
	goto	l2261
	line	38
	
l644:	
	line	39
	
l2261:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2940
	goto	l2265
u2940:
	line	40
	
l2263:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2265
	
l651:	
	line	41
	
l2265:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l652
	
l2267:	
	line	42
	
l652:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_UART_Transmit

;; *************** function _UART_Transmit *****************
;; Defined at:
;;		line 741 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   33[BANK0 ] int 
;;  i               1   35[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
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
	line	741
global __ptext5
__ptext5:	;psect for function _UART_Transmit
psect	text5
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	741
	global	__size_of_UART_Transmit
	__size_of_UART_Transmit	equ	__end_of_UART_Transmit-_UART_Transmit
	
_UART_Transmit:	
;incstack = 0
	opt	stack 8
; Regs used in _UART_Transmit: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	746
	
l2467:	
;MCU_B1.c: 743: char i;
;MCU_B1.c: 744: int j;
;MCU_B1.c: 746: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(UART_Transmit@i)
	
l2469:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l2473
u3490:
	goto	l463
	
l2471:	
	goto	l463
	line	747
	
l459:	
	line	749
	
l2473:	
;MCU_B1.c: 747: {
;MCU_B1.c: 749: for(j=0;j<1000;j++);
	clrf	(UART_Transmit@j)
	clrf	(UART_Transmit@j+1)
	
l2475:	
	movf	(UART_Transmit@j+1),w
	xorlw	80h
	movwf	(??_UART_Transmit+0)+0
	movlw	(high(03E8h))^80h
	subwf	(??_UART_Transmit+0)+0,w
	skipz
	goto	u3505
	movlw	low(03E8h)
	subwf	(UART_Transmit@j),w
u3505:

	skipc
	goto	u3501
	goto	u3500
u3501:
	goto	l2479
u3500:
	goto	l2481
	
l2477:	
	goto	l2481
	
l461:	
	
l2479:	
	movlw	low(01h)
	movlb 0	; select bank0
	addwf	(UART_Transmit@j),f
	movlw	high(01h)
	addwfc	(UART_Transmit@j+1),f
	movf	(UART_Transmit@j+1),w
	xorlw	80h
	movwf	(??_UART_Transmit+0)+0
	movlw	(high(03E8h))^80h
	subwf	(??_UART_Transmit+0)+0,w
	skipz
	goto	u3515
	movlw	low(03E8h)
	subwf	(UART_Transmit@j),w
u3515:

	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l2479
u3510:
	goto	l2481
	
l462:	
	line	750
	
l2481:	
;MCU_B1.c: 750: printf("%d,",UART->TxData[i]);
	movlw	low((STR_1)|8000h)
	movlb 0	; select bank0
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
	line	746
	
l2483:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_UART_Transmit+0)+0
	movf	(??_UART_Transmit+0)+0,w
	addwf	(UART_Transmit@i),f
	
l2485:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l2473
u3520:
	goto	l463
	
l460:	
	line	759
	
l463:	
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
;;  f               2   14[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  _val            4   25[BANK0 ] struct .
;;  c               1   29[BANK0 ] char 
;;  prec            1   24[BANK0 ] char 
;;  flag            1   23[BANK0 ] unsigned char 
;;  ap              1   22[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       4       0       0       0       0       0       0
;;      Locals:         0       8       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0
;;      Totals:         0      16       0       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___lwdiv
;;		___lwmod
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
	
l2177:	
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
	goto	l2223
	
l498:	
	line	547
	
l2179:	
;doprnt.c: 547: if(c != '%')
	movf	(printf@c),w
	xorlw	025h&0ffh
	skipnz
	goto	u2771
	goto	u2770
u2771:
	goto	l2183
u2770:
	line	550
	
l2181:	
;doprnt.c: 549: {
;doprnt.c: 550: (putch(c) );
	movf	(printf@c),w
	fcall	_putch
	line	551
;doprnt.c: 551: continue;
	goto	l2223
	line	552
	
l499:	
	line	557
	
l2183:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	movlb 0	; select bank0
	clrf	(printf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l2187
	line	646
;doprnt.c: 646: case 0:
	
l501:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l516
	line	706
;doprnt.c: 706: case 'd':
	
l503:	
	goto	l2189
	line	707
	
l504:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l2189
	line	811
;doprnt.c: 811: default:
	
l506:	
	line	822
;doprnt.c: 822: continue;
	goto	l2223
	line	831
	
l2185:	
;doprnt.c: 831: }
	goto	l2189
	line	644
	
l500:	
	
l2187:	
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
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte          218     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l516
	xorlw	100^0	; case 100
	skipnz
	goto	l2189
	xorlw	105^100	; case 105
	skipnz
	goto	l2189
	goto	l2223
	opt asmopt_on

	line	831
	
l505:	
	line	1268
	
l2189:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	movf	(printf@ap),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(printf@_val)
	moviw	[1]fsr1
	movwf	(printf@_val+1)
	
l2191:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1270
	
l2193:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(printf@_val+1),7
	goto	u2781
	goto	u2780
u2781:
	goto	l2199
u2780:
	line	1271
	
l2195:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	iorwf	(printf@flag),f
	line	1272
	
l2197:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	goto	l2199
	line	1273
	
l507:	
	line	1314
	
l2199:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(printf@c)
	incf	(printf@c),f
	movf	(printf@c),w
	xorlw	05h&0ffh
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l2203
u2790:
	goto	l2211
	
l2201:	
	goto	l2211
	line	1315
	
l508:	
	
l2203:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	lslf	(??_printf+0)+0,f
	rlf	(??_printf+0)+1,f
	movlw	low((_dpowers)|8000h)
	addwf	0+(??_printf+0)+0,w
	movwf	fsr0l
	movlw	high((_dpowers)|8000h)
	addwfc	1+(??_printf+0)+0,w
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(??_printf+2)+0
	moviw	[1]fsr0
	movwf	(??_printf+2)+0+1
	movf	1+(??_printf+2)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u2805
	movf	0+(??_printf+2)+0,w
	subwf	(printf@_val),w
u2805:
	skipnc
	goto	u2801
	goto	u2800
u2801:
	goto	l2207
u2800:
	goto	l2211
	line	1316
	
l2205:	
;doprnt.c: 1316: break;
	goto	l2211
	
l510:	
	line	1314
	
l2207:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l2209:	
	movf	(printf@c),w
	xorlw	05h&0ffh
	skipz
	goto	u2811
	goto	u2810
u2811:
	goto	l2203
u2810:
	goto	l2211
	
l509:	
	line	1447
	
l2211:	
;doprnt.c: 1431: {
;doprnt.c: 1447: if(flag & 0x03)
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l2215
u2820:
	line	1448
	
l2213:	
;doprnt.c: 1448: (putch('-') );
	movlw	(02Dh)
	fcall	_putch
	goto	l2215
	
l511:	
	line	1481
	
l2215:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movlb 0	; select bank0
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l2221
	
l513:	
	line	1498
	
l2217:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	movf	(printf@prec),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	lslf	(??_printf+0)+0,f
	rlf	(??_printf+0)+1,f
	movlw	low((_dpowers)|8000h)
	addwf	0+(??_printf+0)+0,w
	movwf	fsr0l
	movlw	high((_dpowers)|8000h)
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
	movf	(1+(?___lwdiv)),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	movlb 0	; select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_printf+2)+0
	movf	(??_printf+2)+0,w
	movwf	(printf@c)
	line	1533
	
l2219:	
;doprnt.c: 1532: }
;doprnt.c: 1533: (putch(c) );
	movf	(printf@c),w
	fcall	_putch
	goto	l2221
	line	1534
	
l512:	
	line	1483
	
l2221:	
	movlw	(-1)
	movlb 0	; select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1&0ffh
	skipz
	goto	u2831
	goto	u2830
u2831:
	goto	l2217
u2830:
	goto	l2223
	
l514:	
	goto	l2223
	line	1542
	
l497:	
	line	545
	
l2223:	
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
	goto	u2841
	goto	u2840
u2841:
	goto	l2179
u2840:
	goto	l516
	
l515:	
	goto	l516
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l502:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _printf is never used
	
l516:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 799 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[BANK0 ] unsigned char 
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
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	799
global __ptext7
__ptext7:	;psect for function _putch
psect	text7
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	799
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
;incstack = 0
	opt	stack 8
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movlb 0	; select bank0
	movwf	(putch@byte)
	line	802
	
l2125:	
;MCU_B1.c: 802: while(!TXIF)
	goto	l474
	
l475:	
	line	803
;MCU_B1.c: 803: continue;
	
l474:	
	line	802
	btfss	(140/8),(140)&7	;volatile
	goto	u2631
	goto	u2630
u2631:
	goto	l474
u2630:
	goto	l2127
	
l476:	
	line	804
	
l2127:	
;MCU_B1.c: 804: TXREG = byte;
	movf	(putch@byte),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	805
	
l477:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4216
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[BANK0 ] unsigned int 
;;  dividend        2   10[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       4       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___lwmod
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 8
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l2155:	
	movlb 0	; select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2711
	goto	u2710
u2711:
	goto	l2173
u2710:
	line	14
	
l2157:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l2163
	
l861:	
	line	16
	
l2159:	
	movlw	01h
	
u2725:
	lslf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	decfsz	wreg,f
	goto	u2725
	line	17
	
l2161:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l2163
	line	18
	
l860:	
	line	15
	
l2163:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l2159
u2730:
	goto	l2165
	
l862:	
	goto	l2165
	line	19
	
l863:	
	line	20
	
l2165:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2745
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2745:
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l2169
u2740:
	line	21
	
l2167:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	subwfb	(___lwmod@dividend+1),f
	goto	l2169
	
l864:	
	line	22
	
l2169:	
	movlw	01h
	
u2755:
	lsrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	decfsz	wreg,f
	goto	u2755
	line	23
	
l2171:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l2165
u2760:
	goto	l2173
	
l865:	
	goto	l2173
	line	24
	
l859:	
	line	25
	
l2173:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l866
	
l2175:	
	line	26
	
l866:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] unsigned int 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
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
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext9
__ptext9:	;psect for function ___lwdiv
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 8
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2129:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2131:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2641
	goto	u2640
u2641:
	goto	l2151
u2640:
	line	16
	
l2133:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2139
	
l851:	
	line	18
	
l2135:	
	movlw	01h
	
u2655:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u2655
	line	19
	
l2137:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2139
	line	20
	
l850:	
	line	17
	
l2139:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l2135
u2660:
	goto	l2141
	
l852:	
	goto	l2141
	line	21
	
l853:	
	line	22
	
l2141:	
	movlw	01h
	
u2675:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u2675
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2685
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2685:
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l2147
u2680:
	line	24
	
l2143:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	25
	
l2145:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2147
	line	26
	
l854:	
	line	27
	
l2147:	
	movlw	01h
	
u2695:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u2695
	line	28
	
l2149:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2141
u2700:
	goto	l2151
	
l855:	
	goto	l2151
	line	29
	
l849:	
	line	30
	
l2151:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l856
	
l2153:	
	line	31
	
l856:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_UART_Receive

;; *************** function _UART_Receive *****************
;; Defined at:
;;		line 760 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    3[BANK0 ] unsigned char 
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
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	760
global __ptext10
__ptext10:	;psect for function _UART_Receive
psect	text10
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	760
	global	__size_of_UART_Receive
	__size_of_UART_Receive	equ	__end_of_UART_Receive-_UART_Receive
	
_UART_Receive:	
;incstack = 0
	opt	stack 10
; Regs used in _UART_Receive: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	763
	
l2449:	
;MCU_B1.c: 762: char i;
;MCU_B1.c: 763: RA1=~RA1;
	movlw	1<<((97)&7)
	movlb 0	; select bank0
	xorwf	((97)/8),f
	line	765
	
l2451:	
;MCU_B1.c: 765: TMain->Test=1;
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	767
	
l2453:	
;MCU_B1.c: 767: for(i=0;i<32;i++)
	clrf	(UART_Receive@i)
	
l2455:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l2459
u3470:
	goto	l2465
	
l2457:	
	goto	l2465
	line	768
	
l466:	
	line	769
	
l2459:	
;MCU_B1.c: 768: {
;MCU_B1.c: 769: I2C->BufferWriter[i]=UART->RxData[i];
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
	line	767
	
l2461:	
	movlw	(01h)
	movwf	(??_UART_Receive+0)+0
	movf	(??_UART_Receive+0)+0,w
	addwf	(UART_Receive@i),f
	
l2463:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l2459
u3480:
	goto	l2465
	
l467:	
	line	771
	
l2465:	
;MCU_B1.c: 770: }
;MCU_B1.c: 771: I2C->MasterTxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	785
	
l468:	
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
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	72
global __ptext11
__ptext11:	;psect for function _SegmentDisplay_Main
psect	text11
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	72
	global	__size_of_SegmentDisplay_Main
	__size_of_SegmentDisplay_Main	equ	__end_of_SegmentDisplay_Main-_SegmentDisplay_Main
	
_SegmentDisplay_Main:	
;incstack = 0
	opt	stack 11
; Regs used in _SegmentDisplay_Main: [wreg-fsr1h+status,2+status,0]
	line	74
	
l2585:	
;SegmentDisplay_A2.c: 74: if(Segment->GO)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u3661
	goto	u3660
u3661:
	goto	l132
u3660:
	line	76
	
l2587:	
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
	
l2589:	
;SegmentDisplay_A2.c: 77: if(Segment->Time == 5)
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	05h&0ffh
	skipz
	goto	u3671
	goto	u3670
u3671:
	goto	l132
u3670:
	line	79
	
l2591:	
;SegmentDisplay_A2.c: 78: {
;SegmentDisplay_A2.c: 79: Segment->Time=0;
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	80
	
l2593:	
;SegmentDisplay_A2.c: 80: PORTA&=0x0f;
	movlw	(0Fh)
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	(??_SegmentDisplay_Main+0)+0,w
	andwf	(12),f	;volatile
	line	81
	
l2595:	
;SegmentDisplay_A2.c: 81: if(Segment->ComCount == 0)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u3681
	goto	u3680
u3681:
	goto	l2599
u3680:
	line	83
	
l2597:	
;SegmentDisplay_A2.c: 82: {
;SegmentDisplay_A2.c: 83: RA4=1;
	bsf	(100/8),(100)&7	;volatile
	line	84
;SegmentDisplay_A2.c: 84: }
	goto	l2611
	line	85
	
l123:	
	
l2599:	
;SegmentDisplay_A2.c: 85: else if(Segment->ComCount == 1)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u3691
	goto	u3690
u3691:
	goto	l2603
u3690:
	line	87
	
l2601:	
;SegmentDisplay_A2.c: 86: {
;SegmentDisplay_A2.c: 87: RA5=1;
	bsf	(101/8),(101)&7	;volatile
	line	88
;SegmentDisplay_A2.c: 88: }
	goto	l2611
	line	89
	
l125:	
	
l2603:	
;SegmentDisplay_A2.c: 89: else if(Segment->ComCount == 2)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	02h&0ffh
	skipz
	goto	u3701
	goto	u3700
u3701:
	goto	l2607
u3700:
	line	91
	
l2605:	
;SegmentDisplay_A2.c: 90: {
;SegmentDisplay_A2.c: 91: RA6=1;
	bsf	(102/8),(102)&7	;volatile
	line	92
;SegmentDisplay_A2.c: 92: }
	goto	l2611
	line	93
	
l127:	
	
l2607:	
;SegmentDisplay_A2.c: 93: else if(Segment->ComCount == 3)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	03h&0ffh
	skipz
	goto	u3711
	goto	u3710
u3711:
	goto	l2611
u3710:
	line	95
	
l2609:	
;SegmentDisplay_A2.c: 94: {
;SegmentDisplay_A2.c: 95: RA7=1;
	bsf	(103/8),(103)&7	;volatile
	goto	l2611
	line	96
	
l129:	
	goto	l2611
	line	97
	
l128:	
	goto	l2611
	
l126:	
	goto	l2611
	
l124:	
	
l2611:	
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
	
l2613:	
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
	goto	u3721
	goto	u3720
u3721:
	goto	l2617
u3720:
	line	100
	
l2615:	
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
	
l2617:	
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
psect	text12,local,class=CODE,delta=2,merge=1
	line	8
global __ptext12
__ptext12:	;psect for function _SegmentDisplay_Initial
psect	text12
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	8
	global	__size_of_SegmentDisplay_Initial
	__size_of_SegmentDisplay_Initial	equ	__end_of_SegmentDisplay_Initial-_SegmentDisplay_Initial
	
_SegmentDisplay_Initial:	
;incstack = 0
	opt	stack 11
; Regs used in _SegmentDisplay_Initial: [wregfsr1]
	line	10
	
l2503:	
;SegmentDisplay_A2.c: 10: Segment=&VarSegment;
	movlw	(_VarSegment)&0ffh
	movlb 0	; select bank0
	movwf	(??_SegmentDisplay_Initial+0)+0
	movf	(??_SegmentDisplay_Initial+0)+0,w
	movwf	(_Segment)
	line	11
	
l2505:	
;SegmentDisplay_A2.c: 11: Segment->Enable=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	13
	
l2507:	
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
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	24
global __ptext13
__ptext13:	;psect for function _Mcu_Initialization
psect	text13
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	24
	global	__size_of_Mcu_Initialization
	__size_of_Mcu_Initialization	equ	__end_of_Mcu_Initialization-_Mcu_Initialization
	
_Mcu_Initialization:	
;incstack = 0
	opt	stack 10
; Regs used in _Mcu_Initialization: [wreg+status,2+status,0+pclath+cstack]
	line	27
	
l2493:	
;MCU_B1.c: 27: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	29
	
l2495:	
;MCU_B1.c: 29: IO_Set();
	fcall	_IO_Set
	line	33
	
l2497:	
;MCU_B1.c: 31: ;;
;MCU_B1.c: 33: TMR1_Set();
	fcall	_TMR1_Set
	line	43
	
l2499:	
;MCU_B1.c: 35: ;;
;MCU_B1.c: 39: ;;
;MCU_B1.c: 41: ;;
;MCU_B1.c: 43: I2C_Set();
	fcall	_I2C_Set
	line	45
	
l2501:	
;MCU_B1.c: 45: UART_Set();
	fcall	_UART_Set
	line	48
	
l293:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initialization
	__end_of_Mcu_Initialization:
	signat	_Mcu_Initialization,88
	global	_UART_Set

;; *************** function _UART_Set *****************
;; Defined at:
;;		line 677 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text14,local,class=CODE,delta=2,merge=1
	line	677
global __ptext14
__ptext14:	;psect for function _UART_Set
psect	text14
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	677
	global	__size_of_UART_Set
	__size_of_UART_Set	equ	__end_of_UART_Set-_UART_Set
	
_UART_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _UART_Set: [wreg+status,2]
	line	679
	
l2389:	
;MCU_B1.c: 679: UART=&VarUart;
	movlw	(_VarUart)&0ffh
	movlb 0	; select bank0
	movwf	(??_UART_Set+0)+0
	movf	(??_UART_Set+0)+0,w
	movwf	(_UART)
	line	680
	
l2391:	
;MCU_B1.c: 680: TRISC7 = 1;
	movlb 1	; select bank1
	bsf	(1143/8)^080h,(1143)&7	;volatile
	line	681
	
l2393:	
;MCU_B1.c: 681: TRISC6 = 1;
	bsf	(1142/8)^080h,(1142)&7	;volatile
	line	682
;MCU_B1.c: 682: SPBRG = ((int)(16000000L/(16UL * 19200) -1));
	movlw	(033h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	683
	
l2395:	
;MCU_B1.c: 683: SPBRGH = 0;
	clrf	(412)^0180h	;volatile
	line	684
	
l2397:	
;MCU_B1.c: 684: BRG16 = 0;
	bcf	(3323/8)^0180h,(3323)&7	;volatile
	line	685
	
l2399:	
;MCU_B1.c: 685: RCSTA = (0|0x90);
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	line	686
	
l2401:	
;MCU_B1.c: 686: TXSTA = (0x4|0|0x20);
	movlw	(024h)
	movwf	(414)^0180h	;volatile
	line	687
	
l2403:	
;MCU_B1.c: 687: TX9=0;
	bcf	(3318/8)^0180h,(3318)&7	;volatile
	line	688
	
l2405:	
;MCU_B1.c: 688: RX9=0;
	bcf	(3310/8)^0180h,(3310)&7	;volatile
	line	689
	
l2407:	
;MCU_B1.c: 689: TXIE=0;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7	;volatile
	line	690
	
l2409:	
;MCU_B1.c: 690: RCIE=1;
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	691
	
l2411:	
;MCU_B1.c: 691: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	692
	
l2413:	
;MCU_B1.c: 692: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	693
	
l444:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Set
	__end_of_UART_Set:
	signat	_UART_Set,88
	global	_TMR1_Set

;; *************** function _TMR1_Set *****************
;; Defined at:
;;		line 242 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text15,local,class=CODE,delta=2,merge=1
	line	242
global __ptext15
__ptext15:	;psect for function _TMR1_Set
psect	text15
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	242
	global	__size_of_TMR1_Set
	__size_of_TMR1_Set	equ	__end_of_TMR1_Set-_TMR1_Set
	
_TMR1_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR1_Set: [wreg]
	line	244
	
l2375:	
;MCU_B1.c: 244: Timer1=&VarTimer1;
	movlw	(_VarTimer1)&0ffh
	movlb 0	; select bank0
	movwf	(??_TMR1_Set+0)+0
	movf	(??_TMR1_Set+0)+0,w
	movwf	(_Timer1)
	line	245
;MCU_B1.c: 245: T1CON=(0x40 | 0x00 | 0x01);
	movlw	(041h)
	movwf	(24)	;volatile
	line	246
;MCU_B1.c: 246: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	247
;MCU_B1.c: 247: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	248
	
l2377:	
;MCU_B1.c: 248: TMR1IE=1;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	249
	
l2379:	
;MCU_B1.c: 249: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	250
	
l2381:	
;MCU_B1.c: 250: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	251
	
l302:	
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
psect	text16,local,class=CODE,delta=2,merge=1
	line	50
global __ptext16
__ptext16:	;psect for function _IO_Set
psect	text16
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	50
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _IO_Set: [wreg+status,2]
	line	64
	
l2359:	
;MCU_B1.c: 64: TRISA=0b00001001;;
	movlw	(09h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	65
	
l2361:	
;MCU_B1.c: 65: TRISB=0b00000000;;
	clrf	(141)^080h	;volatile
	line	66
	
l2363:	
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
	
l2365:	
;MCU_B1.c: 70: ANSELA=0b00000001;;
	movlw	(01h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	71
	
l2367:	
;MCU_B1.c: 71: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	72
	
l2369:	
;MCU_B1.c: 72: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	73
	
l2371:	
;MCU_B1.c: 73: PORTA=0b00001001;;
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	74
;MCU_B1.c: 74: PORTB=0b00000000;;
	clrf	(13)	;volatile
	line	75
	
l2373:	
;MCU_B1.c: 75: PORTC=0b00011001;;
	movlw	(019h)
	movwf	(14)	;volatile
	line	92
	
l296:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
	signat	_IO_Set,88
	global	_I2C_Set

;; *************** function _I2C_Set *****************
;; Defined at:
;;		line 403 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text17,local,class=CODE,delta=2,merge=1
	line	403
global __ptext17
__ptext17:	;psect for function _I2C_Set
psect	text17
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	403
	global	__size_of_I2C_Set
	__size_of_I2C_Set	equ	__end_of_I2C_Set-_I2C_Set
	
_I2C_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_Set: [wreg+status,2]
	line	405
	
l2383:	
;MCU_B1.c: 405: I2C=&VarI2C;
	movlw	(_VarI2C)&0ffh
	movlb 0	; select bank0
	movwf	(??_I2C_Set+0)+0
	movf	(??_I2C_Set+0)+0,w
	movwf	(_I2C)
	line	407
;MCU_B1.c: 407: SSPADD = 0x09;
	movlw	(09h)
	movlb 4	; select bank4
	movwf	(530)^0200h	;volatile
	line	408
;MCU_B1.c: 408: SSPSTAT = 0x80;
	movlw	(080h)
	movwf	(532)^0200h	;volatile
	line	409
	
l2385:	
;MCU_B1.c: 409: SSPCON2 = 0;
	clrf	(534)^0200h	;volatile
	line	411
	
l2387:	
;MCU_B1.c: 411: SSPCON1=0b101000;
	movlw	(028h)
	movwf	(533)^0200h	;volatile
	line	428
	
l310:	
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
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	33
global __ptext18
__ptext18:	;psect for function _MainT_Initial
psect	text18
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	33
	global	__size_of_MainT_Initial
	__size_of_MainT_Initial	equ	__end_of_MainT_Initial-_MainT_Initial
	
_MainT_Initial:	
;incstack = 0
	opt	stack 11
; Regs used in _MainT_Initial: [wregfsr1]
	line	35
	
l2487:	
;myMain.c: 35: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_TMain)
	line	36
	
l2489:	
;myMain.c: 36: TMain->FirstOpen=1;
	movf	(_TMain),w
	addlw	0Dh
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	37
	
l2491:	
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
psect	text19,local,class=CODE,delta=2,merge=1
	line	41
global __ptext19
__ptext19:	;psect for function _MainT
psect	text19
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	41
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
;incstack = 0
	opt	stack 11
; Regs used in _MainT: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	45
	
l2509:	
;myMain.c: 43: char i;
;myMain.c: 45: if(!TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u3531
	goto	u3530
u3531:
	goto	l2517
u3530:
	line	47
	
l2511:	
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
	
l2513:	
;myMain.c: 48: if(TMain->PowerCount == 1500)
	incf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(05DCh)
	skipz
	goto	u3545
	moviw	[1]fsr1
	xorlw	high(05DCh)
u3545:
	skipz
	goto	u3541
	goto	u3540
u3541:
	goto	l62
u3540:
	line	50
	
l2515:	
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
	
l2517:	
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
	
l2519:	
;myMain.c: 61: if(TMain->Count1 == 1000)
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u3555
	moviw	[1]fsr1
	xorlw	high(03E8h)
u3555:
	skipz
	goto	u3551
	goto	u3550
u3551:
	goto	l2527
u3550:
	line	63
	
l2521:	
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
	
l2523:	
;myMain.c: 64: RA2=~RA2;
	movlw	1<<((98)&7)
	xorwf	((98)/8),f
	goto	l2527
	line	76
	
l2525:	
	goto	l2527
	line	80
;myMain.c: 77: {
	
l60:	
	goto	l2527
	line	104
	
l59:	
	line	107
	
l2527:	
;myMain.c: 80: }
;myMain.c: 104: }
;myMain.c: 107: TMain->Count2++;
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	108
	
l2529:	
;myMain.c: 108: if(TMain->Count2 == 2000)
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(07D0h)
	skipz
	goto	u3565
	moviw	[1]fsr1
	xorlw	high(07D0h)
u3565:
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l62
u3560:
	line	110
	
l2531:	
;myMain.c: 109: {
;myMain.c: 110: TMain->Count2=0;
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l62
	line	123
	
l61:	
	goto	l62
	line	126
	
l58:	
	line	127
	
l62:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
	signat	_MainT,88
	global	_I2C_Main

;; *************** function _I2C_Main *****************
;; Defined at:
;;		line 444 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	444
global __ptext20
__ptext20:	;psect for function _I2C_Main
psect	text20
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	444
	global	__size_of_I2C_Main
	__size_of_I2C_Main	equ	__end_of_I2C_Main-_I2C_Main
	
_I2C_Main:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	471
	
l2533:	
;MCU_B1.c: 446: char i;
;MCU_B1.c: 471: if(I2C->MasterRxGO)
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u3571
	goto	u3570
u3571:
	goto	l317
u3570:
	line	473
	
l2535:	
;MCU_B1.c: 472: {
;MCU_B1.c: 473: I2C->MasterRxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	474
	
l2537:	
;MCU_B1.c: 474: I2C_Master_Reception();
	fcall	_I2C_Master_Reception
	line	475
	
l2539:	
;MCU_B1.c: 475: TMain->Test=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	476
	
l2541:	
;MCU_B1.c: 476: RA1=~RA1;
	movlw	1<<((97)&7)
	xorwf	((97)/8),f
	line	478
	
l2543:	
;MCU_B1.c: 478: for(i=0;i<32;i++)
	clrf	(I2C_Main@i)
	
l2545:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u3581
	goto	u3580
u3581:
	goto	l2549
u3580:
	goto	l2555
	
l2547:	
	goto	l2555
	line	479
	
l318:	
	line	480
	
l2549:	
;MCU_B1.c: 479: {
;MCU_B1.c: 480: UART->TxData[i]=I2C->BufferReader[i];
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
	line	478
	
l2551:	
	movlw	(01h)
	movwf	(??_I2C_Main+0)+0
	movf	(??_I2C_Main+0)+0,w
	addwf	(I2C_Main@i),f
	
l2553:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l2549
u3590:
	goto	l2555
	
l319:	
	line	482
	
l2555:	
;MCU_B1.c: 481: }
;MCU_B1.c: 482: UART->TxGO=1;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	484
;MCU_B1.c: 484: }
	goto	l326
	line	485
	
l317:	
	line	487
;MCU_B1.c: 485: else
;MCU_B1.c: 486: {
;MCU_B1.c: 487: if(RC0)
	btfss	(112/8),(112)&7	;volatile
	goto	u3601
	goto	u3600
u3601:
	goto	l2561
u3600:
	line	489
	
l2557:	
;MCU_B1.c: 488: {
;MCU_B1.c: 489: if(!I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u3611
	goto	u3610
u3611:
	goto	l326
u3610:
	line	491
	
l2559:	
;MCU_B1.c: 490: {
;MCU_B1.c: 491: I2C->SS=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	492
;MCU_B1.c: 492: I2C->MasterRxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l326
	line	493
	
l322:	
	line	494
;MCU_B1.c: 493: }
;MCU_B1.c: 494: }
	goto	l326
	line	495
	
l321:	
	line	497
	
l2561:	
;MCU_B1.c: 495: else
;MCU_B1.c: 496: {
;MCU_B1.c: 497: if(I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u3621
	goto	u3620
u3621:
	goto	l324
u3620:
	line	499
	
l2563:	
;MCU_B1.c: 498: {
;MCU_B1.c: 499: I2C->SS=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	500
	
l324:	
	line	501
;MCU_B1.c: 500: }
;MCU_B1.c: 501: if(I2C->MasterTxGO)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u3631
	goto	u3630
u3631:
	goto	l326
u3630:
	line	503
	
l2565:	
;MCU_B1.c: 502: {
;MCU_B1.c: 503: I2C->MasterTxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	504
	
l2567:	
;MCU_B1.c: 504: I2C_Master_Transmission();
	fcall	_I2C_Master_Transmission
	goto	l326
	line	505
	
l325:	
	goto	l326
	line	506
	
l323:	
	goto	l326
	line	507
	
l320:	
	line	510
	
l326:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Main
	__end_of_I2C_Main:
	signat	_I2C_Main,88
	global	_I2C_Master_Transmission

;; *************** function _I2C_Master_Transmission *****************
;; Defined at:
;;		line 544 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text21,local,class=CODE,delta=2,merge=1
	line	544
global __ptext21
__ptext21:	;psect for function _I2C_Master_Transmission
psect	text21
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	544
	global	__size_of_I2C_Master_Transmission
	__size_of_I2C_Master_Transmission	equ	__end_of_I2C_Master_Transmission-_I2C_Master_Transmission
	
_I2C_Master_Transmission:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_Master_Transmission: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	547
	
l2433:	
;MCU_B1.c: 546: char i;
;MCU_B1.c: 547: while(SEN);
	goto	l332
	
l333:	
	
l332:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3351
	goto	u3350
u3351:
	goto	l332
u3350:
	
l334:	
	line	548
;MCU_B1.c: 548: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7	;volatile
	line	550
;MCU_B1.c: 550: while(SEN);
	goto	l335
	
l336:	
	
l335:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3361
	goto	u3360
u3361:
	goto	l335
u3360:
	goto	l2435
	
l337:	
	line	553
	
l2435:	
;MCU_B1.c: 553: SSPBUF=0x10;
	movlw	(010h)
	movwf	(529)^0200h	;volatile
	line	554
;MCU_B1.c: 554: while(BF);
	goto	l338
	
l339:	
	
l338:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u3371
	goto	u3370
u3371:
	goto	l338
u3370:
	goto	l341
	
l340:	
	line	557
;MCU_B1.c: 557: while(ACKSTAT);
	goto	l341
	
l342:	
	
l341:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u3381
	goto	u3380
u3381:
	goto	l341
u3380:
	goto	l2437
	
l343:	
	line	559
	
l2437:	
;MCU_B1.c: 559: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(I2C_Master_Transmission@i)
	
l2439:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l346
u3390:
	goto	l355
	
l2441:	
	goto	l355
	line	560
	
l344:	
	line	561
;MCU_B1.c: 560: {
;MCU_B1.c: 561: while(SEN);
	goto	l346
	
l347:	
	
l346:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3401
	goto	u3400
u3401:
	goto	l346
u3400:
	goto	l2443
	
l348:	
	line	562
	
l2443:	
;MCU_B1.c: 562: SSPBUF=I2C->BufferWriter[i];
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
	line	563
;MCU_B1.c: 563: while(BF);
	goto	l349
	
l350:	
	
l349:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u3411
	goto	u3410
u3411:
	goto	l349
u3410:
	goto	l352
	
l351:	
	line	566
;MCU_B1.c: 566: while(ACKSTAT);
	goto	l352
	
l353:	
	
l352:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u3421
	goto	u3420
u3421:
	goto	l352
u3420:
	goto	l2445
	
l354:	
	line	559
	
l2445:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_I2C_Master_Transmission+0)+0
	movf	(??_I2C_Master_Transmission+0)+0,w
	addwf	(I2C_Master_Transmission@i),f
	
l2447:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l346
u3430:
	goto	l355
	
l345:	
	line	569
;MCU_B1.c: 567: }
;MCU_B1.c: 569: while(SEN);
	goto	l355
	
l356:	
	
l355:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3441
	goto	u3440
u3441:
	goto	l355
u3440:
	goto	l358
	
l357:	
	line	570
;MCU_B1.c: 570: while(!PEN)
	goto	l358
	
l359:	
	line	571
;MCU_B1.c: 571: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7	;volatile
	
l358:	
	line	570
	btfss	(4274/8)^0200h,(4274)&7	;volatile
	goto	u3451
	goto	u3450
u3451:
	goto	l359
u3450:
	goto	l361
	
l360:	
	line	572
;MCU_B1.c: 572: while(PEN);
	goto	l361
	
l362:	
	
l361:	
	btfsc	(4274/8)^0200h,(4274)&7	;volatile
	goto	u3461
	goto	u3460
u3461:
	goto	l361
u3460:
	goto	l364
	
l363:	
	line	575
	
l364:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Transmission
	__end_of_I2C_Master_Transmission:
	signat	_I2C_Master_Transmission,88
	global	_I2C_Master_Reception

;; *************** function _I2C_Master_Reception *****************
;; Defined at:
;;		line 577 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    2[BANK0 ] unsigned char 
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
psect	text22,local,class=CODE,delta=2,merge=1
	line	577
global __ptext22
__ptext22:	;psect for function _I2C_Master_Reception
psect	text22
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	577
	global	__size_of_I2C_Master_Reception
	__size_of_I2C_Master_Reception	equ	__end_of_I2C_Master_Reception-_I2C_Master_Reception
	
_I2C_Master_Reception:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_Master_Reception: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	580
	
l2415:	
;MCU_B1.c: 579: char i;
;MCU_B1.c: 580: while(SEN);
	goto	l367
	
l368:	
	
l367:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3151
	goto	u3150
u3151:
	goto	l367
u3150:
	
l369:	
	line	581
;MCU_B1.c: 581: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7	;volatile
	line	582
;MCU_B1.c: 582: while(SEN);
	goto	l370
	
l371:	
	
l370:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3161
	goto	u3160
u3161:
	goto	l370
u3160:
	goto	l2417
	
l372:	
	line	585
	
l2417:	
;MCU_B1.c: 585: SSPBUF=0x11;
	movlw	(011h)
	movwf	(529)^0200h	;volatile
	line	588
;MCU_B1.c: 588: while(BF);
	goto	l373
	
l374:	
	
l373:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u3171
	goto	u3170
u3171:
	goto	l373
u3170:
	goto	l376
	
l375:	
	line	589
;MCU_B1.c: 589: while(ACKSTAT);
	goto	l376
	
l377:	
	
l376:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u3181
	goto	u3180
u3181:
	goto	l376
u3180:
	goto	l379
	
l378:	
	line	591
;MCU_B1.c: 591: while(RCEN);
	goto	l379
	
l380:	
	
l379:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u3191
	goto	u3190
u3191:
	goto	l379
u3190:
	
l381:	
	line	592
;MCU_B1.c: 592: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	593
;MCU_B1.c: 593: while(RCEN);
	goto	l382
	
l383:	
	
l382:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u3201
	goto	u3200
u3201:
	goto	l382
u3200:
	goto	l2419
	
l384:	
	line	594
	
l2419:	
;MCU_B1.c: 594: I2C->Address=SSPBUF;
	movf	(529)^0200h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_I2C_Master_Reception+0)+0
	movf	(_I2C),w
	addlw	041h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_I2C_Master_Reception+0)+0,w
	movwf	indf1
	line	595
;MCU_B1.c: 595: while(!ACKEN)
	goto	l385
	
l386:	
	line	596
;MCU_B1.c: 596: ACKEN=1;
	bsf	(4276/8)^0200h,(4276)&7	;volatile
	
l385:	
	line	595
	movlb 4	; select bank4
	btfss	(4276/8)^0200h,(4276)&7	;volatile
	goto	u3211
	goto	u3210
u3211:
	goto	l386
u3210:
	goto	l388
	
l387:	
	line	597
;MCU_B1.c: 597: while(ACKEN);
	goto	l388
	
l389:	
	
l388:	
	btfsc	(4276/8)^0200h,(4276)&7	;volatile
	goto	u3221
	goto	u3220
u3221:
	goto	l388
u3220:
	goto	l391
	
l390:	
	line	598
;MCU_B1.c: 598: while(RCEN);
	goto	l391
	
l392:	
	
l391:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u3231
	goto	u3230
u3231:
	goto	l391
u3230:
	goto	l2421
	
l393:	
	line	599
	
l2421:	
;MCU_B1.c: 599: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(I2C_Master_Reception@i)
	
l2423:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u3241
	goto	u3240
u3241:
	goto	l396
u3240:
	goto	l395
	
l2425:	
	goto	l395
	line	600
	
l394:	
	line	601
;MCU_B1.c: 600: {
;MCU_B1.c: 601: while(SEN);
	goto	l396
	
l397:	
	
l396:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3251
	goto	u3250
u3251:
	goto	l396
u3250:
	goto	l399
	
l398:	
	line	602
;MCU_B1.c: 602: while(RCEN);
	goto	l399
	
l400:	
	
l399:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u3261
	goto	u3260
u3261:
	goto	l399
u3260:
	
l401:	
	line	603
;MCU_B1.c: 603: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	604
;MCU_B1.c: 604: while(RCEN);
	goto	l402
	
l403:	
	
l402:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u3271
	goto	u3270
u3271:
	goto	l402
u3270:
	goto	l2427
	
l404:	
	line	605
	
l2427:	
;MCU_B1.c: 605: I2C->BufferReader[i]=SSPBUF;
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
	line	606
;MCU_B1.c: 606: while(!ACKEN)
	goto	l405
	
l406:	
	line	607
;MCU_B1.c: 607: ACKEN=1;
	bsf	(4276/8)^0200h,(4276)&7	;volatile
	
l405:	
	line	606
	movlb 4	; select bank4
	btfss	(4276/8)^0200h,(4276)&7	;volatile
	goto	u3281
	goto	u3280
u3281:
	goto	l406
u3280:
	goto	l408
	
l407:	
	line	608
;MCU_B1.c: 608: while(ACKEN);
	goto	l408
	
l409:	
	
l408:	
	btfsc	(4276/8)^0200h,(4276)&7	;volatile
	goto	u3291
	goto	u3290
u3291:
	goto	l408
u3290:
	goto	l2429
	
l410:	
	line	599
	
l2429:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_I2C_Master_Reception+0)+0
	movf	(??_I2C_Master_Reception+0)+0,w
	addwf	(I2C_Master_Reception@i),f
	
l2431:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l396
u3300:
	
l395:	
	line	618
;MCU_B1.c: 610: }
;MCU_B1.c: 618: RCEN=1;
	movlb 4	; select bank4
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	619
;MCU_B1.c: 619: while(RCEN);
	goto	l411
	
l412:	
	
l411:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u3311
	goto	u3310
u3311:
	goto	l411
u3310:
	goto	l414
	
l413:	
	line	621
;MCU_B1.c: 621: while(SEN);
	goto	l414
	
l415:	
	
l414:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3321
	goto	u3320
u3321:
	goto	l414
u3320:
	goto	l417
	
l416:	
	line	622
;MCU_B1.c: 622: while(!PEN)
	goto	l417
	
l418:	
	line	623
;MCU_B1.c: 623: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7	;volatile
	
l417:	
	line	622
	btfss	(4274/8)^0200h,(4274)&7	;volatile
	goto	u3331
	goto	u3330
u3331:
	goto	l418
u3330:
	goto	l420
	
l419:	
	line	624
;MCU_B1.c: 624: while(PEN);
	goto	l420
	
l421:	
	
l420:	
	btfsc	(4274/8)^0200h,(4274)&7	;volatile
	goto	u3341
	goto	u3340
u3341:
	goto	l420
u3340:
	goto	l423
	
l422:	
	line	627
	
l423:	
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_I2C_ISR
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
	
i1l2083:	
;MCU_B1.c: 99: ;;
;MCU_B1.c: 101: ;;
;MCU_B1.c: 103: TMR1_ISR();
	fcall	_TMR1_ISR
	line	109
;MCU_B1.c: 107: ;;
;MCU_B1.c: 109: UART_ISR();
	fcall	_UART_ISR
	line	111
;MCU_B1.c: 111: I2C_ISR();
	fcall	_I2C_ISR
	line	112
	
i1l299:	
	movf	(??_ISR+0),w
	movlb 0	; select bank0
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
;;		line 695 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    4[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_getche
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	695
global __ptext24
__ptext24:	;psect for function _UART_ISR
psect	text24
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	695
	global	__size_of_UART_ISR
	__size_of_UART_ISR	equ	__end_of_UART_ISR-_UART_ISR
	
_UART_ISR:	
;incstack = 0
	opt	stack 8
; Regs used in _UART_ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	698
	
i1l2033:	
;MCU_B1.c: 697: char i;
;MCU_B1.c: 698: if(RCIE && RCIF)
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7	;volatile
	goto	u247_21
	goto	u247_20
u247_21:
	goto	i1l450
u247_20:
	
i1l2035:	
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l450
u248_20:
	line	700
	
i1l2037:	
;MCU_B1.c: 699: {
;MCU_B1.c: 700: RCIE=0;
	movlb 1	; select bank1
	bcf	(1165/8)^080h,(1165)&7	;volatile
	line	701
	
i1l2039:	
;MCU_B1.c: 701: for(i=0;i<32;i++){
	clrf	(UART_ISR@i)
	
i1l2041:	
	movlw	(020h)
	subwf	(UART_ISR@i),w
	skipc
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l2045
u249_20:
	goto	i1l2051
	
i1l2043:	
	goto	i1l2051
	
i1l448:	
	line	702
	
i1l2045:	
;MCU_B1.c: 702: UART->RxData[i]=getche();
	fcall	_getche
	movwf	(??_UART_ISR+0)+0
	movf	(UART_ISR@i),w
	addlw	020h
	movlb 0	; select bank0
	addwf	(_UART),w
	movwf	(??_UART_ISR+1)+0
	movf	0+(??_UART_ISR+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_UART_ISR+0)+0,w
	movwf	indf1
	line	701
	
i1l2047:	
	movlw	(01h)
	movwf	(??_UART_ISR+0)+0
	movf	(??_UART_ISR+0)+0,w
	addwf	(UART_ISR@i),f
	
i1l2049:	
	movlw	(020h)
	subwf	(UART_ISR@i),w
	skipc
	goto	u250_21
	goto	u250_20
u250_21:
	goto	i1l2045
u250_20:
	goto	i1l2051
	
i1l449:	
	line	705
	
i1l2051:	
;MCU_B1.c: 704: }
;MCU_B1.c: 705: UART->RxGO=1;
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	goto	i1l450
	line	721
	
i1l447:	
	line	722
	
i1l450:	
	return
	opt stack 0
GLOBAL	__end_of_UART_ISR
	__end_of_UART_ISR:
	signat	_UART_ISR,88
	global	_getche

;; *************** function _getche *****************
;; Defined at:
;;		line 814 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_getch
;;		i1_putch
;; This function is called by:
;;		_UART_ISR
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	line	814
global __ptext25
__ptext25:	;psect for function _getche
psect	text25
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	814
	global	__size_of_getche
	__size_of_getche	equ	__end_of_getche-_getche
	
_getche:	
;incstack = 0
	opt	stack 8
; Regs used in _getche: [wreg+status,2+status,0+pclath+cstack]
	line	817
	
i1l1843:	
;MCU_B1.c: 816: unsigned char c;
;MCU_B1.c: 817: putch(c = getch());
	fcall	_getch
	movwf	(getche@c)
	fcall	i1_putch
	line	818
	
i1l1845:	
;MCU_B1.c: 818: return c;
	movf	(getche@c),w
	goto	i1l486
	
i1l1847:	
	line	819
	
i1l486:	
	return
	opt stack 0
GLOBAL	__end_of_getche
	__end_of_getche:
	signat	_getche,89
	global	i1_putch

;; *************** function i1_putch *****************
;; Defined at:
;;		line 799 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getche
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	line	799
global __ptext26
__ptext26:	;psect for function i1_putch
psect	text26
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	799
	global	__size_ofi1_putch
	__size_ofi1_putch	equ	__end_ofi1_putch-i1_putch
	
i1_putch:	
;incstack = 0
	opt	stack 8
; Regs used in i1_putch: [wreg]
;i1putch@byte stored from wreg
	movwf	(i1putch@byte)
	line	802
	
i1l1697:	
;MCU_B1.c: 802: while(!TXIF)
	goto	i1l474
	
i1l475:	
	line	803
;MCU_B1.c: 803: continue;
	
i1l474:	
	line	802
	movlb 0	; select bank0
	btfss	(140/8),(140)&7	;volatile
	goto	u174_21
	goto	u174_20
u174_21:
	goto	i1l474
u174_20:
	goto	i1l1699
	
i1l476:	
	line	804
	
i1l1699:	
;MCU_B1.c: 804: TXREG = byte;
	movf	(i1putch@byte),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	805
	
i1l477:	
	return
	opt stack 0
GLOBAL	__end_ofi1_putch
	__end_ofi1_putch:
	signat	i1_putch,88
	global	_getch

;; *************** function _getch *****************
;; Defined at:
;;		line 807 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
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
;;		_getche
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	line	807
global __ptext27
__ptext27:	;psect for function _getch
psect	text27
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	807
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
;incstack = 0
	opt	stack 8
; Regs used in _getch: [wreg]
	line	809
	
i1l1609:	
;MCU_B1.c: 809: while(!RCIF)
	goto	i1l480
	
i1l481:	
	line	810
;MCU_B1.c: 810: continue;
	
i1l480:	
	line	809
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u154_21
	goto	u154_20
u154_21:
	goto	i1l480
u154_20:
	goto	i1l1611
	
i1l482:	
	line	811
	
i1l1611:	
;MCU_B1.c: 811: return RCREG;
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	goto	i1l483
	
i1l1613:	
	line	812
	
i1l483:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
	signat	_getch,89
	global	_TMR1_ISR

;; *************** function _TMR1_ISR *****************
;; Defined at:
;;		line 253 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text28,local,class=CODE,delta=2,merge=1
	line	253
global __ptext28
__ptext28:	;psect for function _TMR1_ISR
psect	text28
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	253
	global	__size_of_TMR1_ISR
	__size_of_TMR1_ISR	equ	__end_of_TMR1_ISR-_TMR1_ISR
	
_TMR1_ISR:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR1_ISR: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	255
	
i1l2019:	
;MCU_B1.c: 255: if(TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7	;volatile
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l307
u244_20:
	
i1l2021:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7	;volatile
	goto	u245_21
	goto	u245_20
u245_21:
	goto	i1l307
u245_20:
	line	257
	
i1l2023:	
;MCU_B1.c: 256: {
;MCU_B1.c: 257: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	258
;MCU_B1.c: 258: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	259
	
i1l2025:	
;MCU_B1.c: 259: TMR1IF=0;
	bcf	(136/8),(136)&7	;volatile
	line	260
	
i1l2027:	
;MCU_B1.c: 260: Timer1->Count++;
	incf	(_Timer1),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	261
	
i1l2029:	
;MCU_B1.c: 261: if(Timer1->Count == 20)
	incf	(_Timer1),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(014h)
	skipz
	goto	u246_25
	moviw	[1]fsr1
	xorlw	high(014h)
u246_25:
	skipz
	goto	u246_21
	goto	u246_20
u246_21:
	goto	i1l307
u246_20:
	line	263
	
i1l2031:	
;MCU_B1.c: 262: {
;MCU_B1.c: 263: Timer1->Count=0;
	incf	(_Timer1),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	264
;MCU_B1.c: 264: TMain->T1_Timerout=1;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	goto	i1l307
	line	265
	
i1l306:	
	goto	i1l307
	line	266
	
i1l305:	
	line	274
	
i1l307:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_ISR
	__end_of_TMR1_ISR:
	signat	_TMR1_ISR,88
	global	_I2C_ISR

;; *************** function _I2C_ISR *****************
;; Defined at:
;;		line 430 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
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
psect	text29,local,class=CODE,delta=2,merge=1
	line	430
global __ptext29
__ptext29:	;psect for function _I2C_ISR
psect	text29
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_B1.c"
	line	430
	global	__size_of_I2C_ISR
	__size_of_I2C_ISR	equ	__end_of_I2C_ISR-_I2C_ISR
	
_I2C_ISR:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_ISR: [wregfsr1]
	line	432
	
i1l2053:	
;MCU_B1.c: 432: if(SSPIE && SSPIF)
	movlb 1	; select bank1
	btfss	(1163/8)^080h,(1163)&7	;volatile
	goto	u251_21
	goto	u251_20
u251_21:
	goto	i1l314
u251_20:
	
i1l2055:	
	movlb 0	; select bank0
	btfss	(139/8),(139)&7	;volatile
	goto	u252_21
	goto	u252_20
u252_21:
	goto	i1l314
u252_20:
	line	434
	
i1l2057:	
;MCU_B1.c: 433: {
;MCU_B1.c: 434: SSPIE=0;
	movlb 1	; select bank1
	bcf	(1163/8)^080h,(1163)&7	;volatile
	line	435
	
i1l2059:	
;MCU_B1.c: 435: I2C->SlaveGO=1;
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l314
	line	441
	
i1l313:	
	line	442
	
i1l314:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_ISR
	__end_of_I2C_ISR:
	signat	_I2C_ISR,88
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

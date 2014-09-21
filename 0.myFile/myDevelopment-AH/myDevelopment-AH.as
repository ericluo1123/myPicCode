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
	FNCALL	_main,_Mcu_Initial
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
	FNCALL	_Mcu_Initial,_I2C_Set
	FNCALL	_Mcu_Initial,_IO_Set
	FNCALL	_Mcu_Initial,_TMR1_Set
	FNCALL	_Mcu_Initial,_UART_Set
	FNCALL	_I2C_Main,_I2C_Master_Reception
	FNCALL	_I2C_Main,_I2C_Master_Transmission
	FNROOT	_main
	FNCALL	_ISR,_I2C_ISR
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
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\0.myFile\myDevelopment-AH\Release\../Release/myDevelopment-A.h"
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
	global	_Timer1
	global	_UART
	global	_VarTMain
	global	_VarTimer1
	global	_I2C
	global	_Segment
	global	_VarUart
	global	_VarI2C
	global	_Product
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_Product:
       ds      1

	global	_TMain
_TMain:
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
	global	_TRMT
_TRMT	set	0xCF1
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
	retlw	0
psect	stringtext
	
STR_2:	
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
_Timer1:
       ds      1

_UART:
       ds      1

_VarTMain:
       ds      15

_VarTimer1:
       ds      3

_I2C:
       ds      1

_Segment:
       ds      1

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\0.myFile\myDevelopment-AH\Release\../Release/myDevelopment-A.h"
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
_VarUart:
       ds      68

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_VarI2C:
       ds      67

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
	movlw	016h
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	044h
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK3
	movlw	low(__pbssBANK3)
	movwf	fsr0l
	movlw	high(__pbssBANK3)
	movwf	fsr0h
	movlw	043h
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
?_MainT_Initial:	; 0 bytes @ 0x0
?_SegmentDisplay_Initial:	; 0 bytes @ 0x0
?_MainT:	; 0 bytes @ 0x0
?_SegmentDisplay_Main:	; 0 bytes @ 0x0
?_Mcu_Initial:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_I2C_Main:	; 0 bytes @ 0x0
?_UART_Main:	; 0 bytes @ 0x0
?_putch:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
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
??_IO_Set:	; 0 bytes @ 0x5
??_TMR1_Set:	; 0 bytes @ 0x5
??_I2C_Set:	; 0 bytes @ 0x5
??_UART_Set:	; 0 bytes @ 0x5
??_I2C_Master_Reception:	; 0 bytes @ 0x5
??_I2C_Master_Transmission:	; 0 bytes @ 0x5
??_UART_Receive:	; 0 bytes @ 0x5
??_MainT_Initial:	; 0 bytes @ 0x5
??_SegmentDisplay_Initial:	; 0 bytes @ 0x5
??_MainT:	; 0 bytes @ 0x5
??_SegmentDisplay_Main:	; 0 bytes @ 0x5
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
??_Mcu_Initial:	; 0 bytes @ 0x6
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
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xD
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xD
	ds	1
?_setSegmentDisplayNumber:	; 0 bytes @ 0xE
	global	setSegmentDisplayNumber@number
setSegmentDisplayNumber@number:	; 2 bytes @ 0xE
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xF
	ds	1
??_setSegmentDisplayNumber:	; 0 bytes @ 0x10
	ds	1
??___lwmod:	; 0 bytes @ 0x11
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x12
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x13
	global	printf@f
printf@f:	; 2 bytes @ 0x13
	ds	1
	global	setSegmentDisplayNumber@i
setSegmentDisplayNumber@i:	; 1 bytes @ 0x14
	ds	3
??_printf:	; 0 bytes @ 0x17
	ds	4
	global	printf@ap
printf@ap:	; 1 bytes @ 0x1B
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x1C
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x1D
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0x1E
	ds	4
	global	printf@c
printf@c:	; 1 bytes @ 0x22
	ds	1
??_UART_Transmit:	; 0 bytes @ 0x23
	ds	2
	global	UART_Transmit@i
UART_Transmit@i:	; 1 bytes @ 0x25
	ds	1
??_UART_Main:	; 0 bytes @ 0x26
	ds	2
??_main:	; 0 bytes @ 0x28
;!
;!Data Sizes:
;!    Strings     5
;!    Constant    10
;!    Data        58
;!    BSS         157
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     40      64
;!    BANK1            80      0      58
;!    BANK2            80      0      68
;!    BANK3            80      0      67
;!    BANK4            80      0       0
;!    BANK5            80      0       0
;!    BANK6            16      0       0

;!
;!Pointer List with Targets:
;!
;!    printf@f	PTR const unsigned char  size(2) Largest target is 3
;!		 -> STR_2(CODE[2]), STR_1(CODE[3]), 
;!
;!    printf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_printf(BANK0[2]), 
;!
;!    S544$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    Segment	PTR struct Segment size(1) Largest target is 26
;!		 -> NULL(NULL[0]), VarSegment(BANK1[26]), 
;!
;!    Product	PTR struct Product size(1) Largest target is 32
;!		 -> NULL(NULL[0]), VarProduct(BANK1[32]), 
;!
;!    UART	PTR struct UART size(1) Largest target is 68
;!		 -> NULL(NULL[0]), VarUart(BANK2[68]), 
;!
;!    I2C	PTR struct I2C size(1) Largest target is 67
;!		 -> NULL(NULL[0]), VarI2C(BANK3[67]), 
;!
;!    TMain	PTR struct TMain size(1) Largest target is 15
;!		 -> NULL(NULL[0]), VarTMain(BANK0[15]), 
;!
;!    Timer1	PTR struct Timer1 size(1) Largest target is 3
;!		 -> NULL(NULL[0]), VarTimer1(BANK0[3]), 
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
;!    _printf->___lwmod
;!    ___lwmod->___lwdiv
;!    _Mcu_Initial->_I2C_Set
;!    _Mcu_Initial->_TMR1_Set
;!    _Mcu_Initial->_UART_Set
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
;! (0) _main                                                 0     0      0    3078
;!                           _I2C_Main
;!                              _MainT
;!                      _MainT_Initial
;!                        _Mcu_Initial
;!             _SegmentDisplay_Initial
;!                _SegmentDisplay_Main
;!                          _UART_Main
;! ---------------------------------------------------------------------------------
;! (1) _UART_Main                                            2     2      0    2852
;!                                             38 BANK0      2     2      0
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
;! (2) _UART_Transmit                                        3     3      0    1115
;!                                             35 BANK0      3     3      0
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (3) _printf                                              16    12      4    1047
;!                                             19 BANK0     16    12      4
;!                            ___lwdiv
;!                            ___lwmod
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (4) _putch                                                1     1      0      22
;!                                              5 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              6     2      4     265
;!                                             13 BANK0      6     2      4
;!                            ___lwdiv (ARG)
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
;! (1) _Mcu_Initial                                          0     0      0       0
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
;!                            _I2C_ISR
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
;!   _Mcu_Initial
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
;!ABS                  0      0     10F       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50     28      40       6       80.0%
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
;!BANK2               50      0      44      10       85.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITBANK3            50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BANK3               50      0      43      12       83.8%
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
;!DATA                 0      0     10F      19        0.0%
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
;;		_Mcu_Initial
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
	
l2354:	
;myMain.c: 8: MainT_Initial();
	fcall	_MainT_Initial
	line	9
	
l2356:	
;myMain.c: 9: Mcu_Initial();
	fcall	_Mcu_Initial
	line	10
	
l2358:	
;myMain.c: 10: SegmentDisplay_Initial();
	fcall	_SegmentDisplay_Initial
	line	12
	
l2360:	
;myMain.c: 11: ;;
;myMain.c: 12: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	goto	l2362
	line	13
;myMain.c: 13: while(1)
	
l408:	
	line	17
	
l2362:	
;myMain.c: 14: {
;myMain.c: 17: if(TMain->T1_Timerout)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u3161
	goto	u3160
u3161:
	goto	l2362
u3160:
	line	19
	
l2364:	
;myMain.c: 18: {
;myMain.c: 19: TMain->T1_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	20
	
l2366:	
;myMain.c: 20: MainT();
	fcall	_MainT
	line	21
	
l2368:	
;myMain.c: 21: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u3171
	goto	u3170
u3171:
	goto	l2362
u3170:
	line	24
	
l2370:	
;myMain.c: 22: {
;myMain.c: 23: ;;
;myMain.c: 24: I2C_Main();
	fcall	_I2C_Main
	line	25
	
l2372:	
;myMain.c: 25: UART_Main();
	fcall	_UART_Main
	line	26
	
l2374:	
;myMain.c: 26: SegmentDisplay_Main();
	fcall	_SegmentDisplay_Main
	goto	l2362
	line	27
	
l410:	
	goto	l2362
	line	28
	
l409:	
	goto	l2362
	line	29
	
l411:	
	line	13
	goto	l2362
	
l412:	
	line	30
	
l413:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_UART_Main

;; *************** function _UART_Main *****************
;; Defined at:
;;		line 536 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	536
global __ptext1
__ptext1:	;psect for function _UART_Main
psect	text1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	536
	global	__size_of_UART_Main
	__size_of_UART_Main	equ	__end_of_UART_Main-_UART_Main
	
_UART_Main:	
;incstack = 0
	opt	stack 8
; Regs used in _UART_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	538
	
l2218:	
;MCU_16f1516_B1.c: 538: if(UART->RxGO)
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u2951
	goto	u2950
u2951:
	goto	l2228
u2950:
	line	540
	
l2220:	
;MCU_16f1516_B1.c: 539: {
;MCU_16f1516_B1.c: 540: UART->RxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	541
	
l2222:	
;MCU_16f1516_B1.c: 541: UART_Receive();
	fcall	_UART_Receive
	line	542
	
l2224:	
;MCU_16f1516_B1.c: 542: RCIE=1;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	543
	
l2226:	
;MCU_16f1516_B1.c: 543: setSegmentDisplayNumber(UART->RxData[0]);
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
	line	544
;MCU_16f1516_B1.c: 544: }
	goto	l329
	line	545
	
l326:	
	line	547
	
l2228:	
;MCU_16f1516_B1.c: 545: else
;MCU_16f1516_B1.c: 546: {
;MCU_16f1516_B1.c: 547: if(UART->TxGO)
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u2961
	goto	u2960
u2961:
	goto	l329
u2960:
	line	549
	
l2230:	
;MCU_16f1516_B1.c: 548: {
;MCU_16f1516_B1.c: 549: UART->TxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	550
	
l2232:	
;MCU_16f1516_B1.c: 550: UART_Transmit();
	fcall	_UART_Transmit
	goto	l329
	line	551
	
l328:	
	goto	l329
	line	552
	
l327:	
	line	553
	
l329:	
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
	
l1994:	
;SegmentDisplay_A2.c: 22: char i;
;SegmentDisplay_A2.c: 23: if(Segment->Enable)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u2521
	goto	u2520
u2521:
	goto	l481
u2520:
	line	25
	
l1996:	
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
	goto	u2531
	goto	u2530
u2531:
	goto	l2004
u2530:
	line	28
	
l1998:	
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
	
l2000:	
;SegmentDisplay_A2.c: 29: Segment->Num[1]=((number>>4)&0x000f);
	movf	(setSegmentDisplayNumber@number+1),w
	movwf	(??_setSegmentDisplayNumber+0)+0+1
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	04h
	movwf	(??_setSegmentDisplayNumber+2)+0
u2545:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	(??_setSegmentDisplayNumber+2)+0,f
	goto	u2545
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
	
l2002:	
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
u2555:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	(??_setSegmentDisplayNumber+2)+0,f
	goto	u2555
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
	goto	l2032
	line	33
	
l468:	
	
l2004:	
;SegmentDisplay_A2.c: 33: else if(Segment->Dec)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u2561
	goto	u2560
u2561:
	goto	l2032
u2560:
	line	35
	
l2006:	
;SegmentDisplay_A2.c: 34: {
;SegmentDisplay_A2.c: 35: if(number > 0x270f)
	movf	(setSegmentDisplayNumber@number+1),w
	xorlw	80h
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	(high(02710h))^80h
	subwf	(??_setSegmentDisplayNumber+0)+0,w
	skipz
	goto	u2575
	movlw	low(02710h)
	subwf	(setSegmentDisplayNumber@number),w
u2575:

	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l2020
u2570:
	line	37
	
l2008:	
;SegmentDisplay_A2.c: 36: {
;SegmentDisplay_A2.c: 37: for(i=0 ; i<4; i++)
	movlb 0	; select bank0
	clrf	(setSegmentDisplayNumber@i)
	
l2010:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l2014
u2580:
	goto	l2032
	
l2012:	
	goto	l2032
	line	38
	
l472:	
	line	39
	
l2014:	
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
	
l2016:	
	movlw	(01h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(??_setSegmentDisplayNumber+0)+0,w
	addwf	(setSegmentDisplayNumber@i),f
	
l2018:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l2014
u2590:
	goto	l2032
	
l473:	
	line	41
;SegmentDisplay_A2.c: 40: }
;SegmentDisplay_A2.c: 41: }
	goto	l2032
	line	42
	
l471:	
	line	44
	
l2020:	
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
	
l2022:	
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
	
l2024:	
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
	
l2026:	
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
	
l2028:	
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
	
l2030:	
;SegmentDisplay_A2.c: 50: Segment->Num[0]=number;
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	goto	l2032
	line	51
	
l474:	
	goto	l2032
	line	52
	
l470:	
	goto	l2032
	line	53
	
l469:	
	
l2032:	
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
	goto	u2601
	goto	u2600
u2601:
	goto	l2036
u2600:
	line	55
	
l2034:	
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
	goto	l481
	line	57
	
l475:	
	
l2036:	
;SegmentDisplay_A2.c: 57: else if(Segment->Num[2] > 0)
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u2611
	goto	u2610
u2611:
	goto	l2040
u2610:
	line	59
	
l2038:	
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
	goto	l481
	line	61
	
l477:	
	
l2040:	
;SegmentDisplay_A2.c: 61: else if(Segment->Num[1] > 0)
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u2621
	goto	u2620
u2621:
	goto	l2044
u2620:
	line	63
	
l2042:	
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
	goto	l481
	line	65
	
l479:	
	line	67
	
l2044:	
;SegmentDisplay_A2.c: 65: else
;SegmentDisplay_A2.c: 66: {
;SegmentDisplay_A2.c: 67: Segment->DisplayCount=0;
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l481
	line	68
	
l480:	
	goto	l481
	
l478:	
	goto	l481
	
l476:	
	goto	l481
	line	69
	
l467:	
	line	70
	
l481:	
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
	
l1786:	
	movlb 0	; select bank0
	clrf	(___awmod@sign)
	line	14
	
l1788:	
	btfss	(___awmod@dividend+1),7
	goto	u1921
	goto	u1920
u1921:
	goto	l1794
u1920:
	line	15
	
l1790:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1792:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1794
	line	17
	
l664:	
	line	18
	
l1794:	
	btfss	(___awmod@divisor+1),7
	goto	u1931
	goto	u1930
u1931:
	goto	l1798
u1930:
	line	19
	
l1796:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1798
	
l665:	
	line	20
	
l1798:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u1941
	goto	u1940
u1941:
	goto	l1816
u1940:
	line	21
	
l1800:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1806
	
l668:	
	line	23
	
l1802:	
	movlw	01h
	
u1955:
	lslf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	decfsz	wreg,f
	goto	u1955
	line	24
	
l1804:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1806
	line	25
	
l667:	
	line	22
	
l1806:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1961
	goto	u1960
u1961:
	goto	l1802
u1960:
	goto	l1808
	
l669:	
	goto	l1808
	line	26
	
l670:	
	line	27
	
l1808:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1975
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1975:
	skipc
	goto	u1971
	goto	u1970
u1971:
	goto	l1812
u1970:
	line	28
	
l1810:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	subwfb	(___awmod@dividend+1),f
	goto	l1812
	
l671:	
	line	29
	
l1812:	
	movlw	01h
	
u1985:
	lsrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	decfsz	wreg,f
	goto	u1985
	line	30
	
l1814:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l1808
u1990:
	goto	l1816
	
l672:	
	goto	l1816
	line	31
	
l666:	
	line	32
	
l1816:	
	movf	(___awmod@sign),w
	skipz
	goto	u2000
	goto	l1820
u2000:
	line	33
	
l1818:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1820
	
l673:	
	line	34
	
l1820:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l674
	
l1822:	
	line	35
	
l674:	
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
	
l1742:	
	movlb 0	; select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1744:	
	btfss	(___awdiv@divisor+1),7
	goto	u1821
	goto	u1820
u1821:
	goto	l1750
u1820:
	line	16
	
l1746:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1748:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1750
	line	18
	
l651:	
	line	19
	
l1750:	
	btfss	(___awdiv@dividend+1),7
	goto	u1831
	goto	u1830
u1831:
	goto	l1756
u1830:
	line	20
	
l1752:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1754:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1756
	line	22
	
l652:	
	line	23
	
l1756:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1758:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1841
	goto	u1840
u1841:
	goto	l1778
u1840:
	line	25
	
l1760:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1766
	
l655:	
	line	27
	
l1762:	
	movlw	01h
	
u1855:
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u1855
	line	28
	
l1764:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1766
	line	29
	
l654:	
	line	26
	
l1766:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1861
	goto	u1860
u1861:
	goto	l1762
u1860:
	goto	l1768
	
l656:	
	goto	l1768
	line	30
	
l657:	
	line	31
	
l1768:	
	movlw	01h
	
u1875:
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u1875
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1885
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1885:
	skipc
	goto	u1881
	goto	u1880
u1881:
	goto	l1774
u1880:
	line	33
	
l1770:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	34
	
l1772:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1774
	line	35
	
l658:	
	line	36
	
l1774:	
	movlw	01h
	
u1895:
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	decfsz	wreg,f
	goto	u1895
	line	37
	
l1776:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1901
	goto	u1900
u1901:
	goto	l1768
u1900:
	goto	l1778
	
l659:	
	goto	l1778
	line	38
	
l653:	
	line	39
	
l1778:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1910
	goto	l1782
u1910:
	line	40
	
l1780:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1782
	
l660:	
	line	41
	
l1782:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l661
	
l1784:	
	line	42
	
l661:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_UART_Transmit

;; *************** function _UART_Transmit *****************
;; Defined at:
;;		line 554 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   37[BANK0 ] unsigned char 
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
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_printf
;; This function is called by:
;;		_UART_Main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	554
global __ptext5
__ptext5:	;psect for function _UART_Transmit
psect	text5
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	554
	global	__size_of_UART_Transmit
	__size_of_UART_Transmit	equ	__end_of_UART_Transmit-_UART_Transmit
	
_UART_Transmit:	
;incstack = 0
	opt	stack 8
; Regs used in _UART_Transmit: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	557
	
l2064:	
;MCU_16f1516_B1.c: 556: char i;
;MCU_16f1516_B1.c: 557: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(UART_Transmit@i)
	
l2066:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l334
u2650:
	goto	l340
	
l2068:	
	goto	l340
	line	558
	
l332:	
	line	559
;MCU_16f1516_B1.c: 558: {
;MCU_16f1516_B1.c: 559: while(!TRMT);
	goto	l334
	
l335:	
	
l334:	
	movlb 3	; select bank3
	btfss	(3313/8)^0180h,(3313)&7	;volatile
	goto	u2661
	goto	u2660
u2661:
	goto	l334
u2660:
	goto	l2070
	
l336:	
	line	561
	
l2070:	
;MCU_16f1516_B1.c: 561: printf("%d",i);
	movlw	low((STR_1)|8000h)
	movlb 0	; select bank0
	movwf	(printf@f)
	movlw	high((STR_1)|8000h)
	movwf	((printf@f))+1
	movf	(UART_Transmit@i),w
	movwf	(??_UART_Transmit+0)+0
	clrf	(??_UART_Transmit+0)+0+1
	movf	0+(??_UART_Transmit+0)+0,w
	movwf	0+(?_printf)+02h
	movf	1+(??_UART_Transmit+0)+0,w
	movwf	1+(?_printf)+02h
	fcall	_printf
	line	562
;MCU_16f1516_B1.c: 562: while(!TRMT);
	goto	l337
	
l338:	
	
l337:	
	movlb 3	; select bank3
	btfss	(3313/8)^0180h,(3313)&7	;volatile
	goto	u2671
	goto	u2670
u2671:
	goto	l337
u2670:
	goto	l2072
	
l339:	
	line	563
	
l2072:	
;MCU_16f1516_B1.c: 563: printf(",");
	movlw	low((STR_2)|8000h)
	movlb 0	; select bank0
	movwf	(printf@f)
	movlw	high((STR_2)|8000h)
	movwf	((printf@f))+1
	fcall	_printf
	line	557
	
l2074:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_UART_Transmit+0)+0
	movf	(??_UART_Transmit+0)+0,w
	addwf	(UART_Transmit@i),f
	
l2076:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l334
u2680:
	goto	l340
	
l333:	
	line	568
	
l340:	
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
;;  f               2   19[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(2), STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  _val            4   30[BANK0 ] struct .
;;  c               1   34[BANK0 ] char 
;;  prec            1   29[BANK0 ] char 
;;  flag            1   28[BANK0 ] unsigned char 
;;  ap              1   27[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   19[BANK0 ] int 
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
	
l1694:	
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
	goto	l1740
	
l507:	
	line	547
	
l1696:	
;doprnt.c: 547: if(c != '%')
	movf	(printf@c),w
	xorlw	025h&0ffh
	skipnz
	goto	u1741
	goto	u1740
u1741:
	goto	l1700
u1740:
	line	550
	
l1698:	
;doprnt.c: 549: {
;doprnt.c: 550: (putch(c) );
	movf	(printf@c),w
	fcall	_putch
	line	551
;doprnt.c: 551: continue;
	goto	l1740
	line	552
	
l508:	
	line	557
	
l1700:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	movlb 0	; select bank0
	clrf	(printf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l1704
	line	646
;doprnt.c: 646: case 0:
	
l510:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l525
	line	706
;doprnt.c: 706: case 'd':
	
l512:	
	goto	l1706
	line	707
	
l513:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l1706
	line	811
;doprnt.c: 811: default:
	
l515:	
	line	822
;doprnt.c: 822: continue;
	goto	l1740
	line	831
	
l1702:	
;doprnt.c: 831: }
	goto	l1706
	line	644
	
l509:	
	
l1704:	
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
	goto	l525
	xorlw	100^0	; case 100
	skipnz
	goto	l1706
	xorlw	105^100	; case 105
	skipnz
	goto	l1706
	goto	l1740
	opt asmopt_on

	line	831
	
l514:	
	line	1268
	
l1706:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	movf	(printf@ap),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(printf@_val)
	moviw	[1]fsr1
	movwf	(printf@_val+1)
	
l1708:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1270
	
l1710:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(printf@_val+1),7
	goto	u1751
	goto	u1750
u1751:
	goto	l1716
u1750:
	line	1271
	
l1712:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	iorwf	(printf@flag),f
	line	1272
	
l1714:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	goto	l1716
	line	1273
	
l516:	
	line	1314
	
l1716:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(printf@c)
	incf	(printf@c),f
	movf	(printf@c),w
	xorlw	05h&0ffh
	skipz
	goto	u1761
	goto	u1760
u1761:
	goto	l1720
u1760:
	goto	l1728
	
l1718:	
	goto	l1728
	line	1315
	
l517:	
	
l1720:	
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
	goto	u1775
	movf	0+(??_printf+2)+0,w
	subwf	(printf@_val),w
u1775:
	skipnc
	goto	u1771
	goto	u1770
u1771:
	goto	l1724
u1770:
	goto	l1728
	line	1316
	
l1722:	
;doprnt.c: 1316: break;
	goto	l1728
	
l519:	
	line	1314
	
l1724:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l1726:	
	movf	(printf@c),w
	xorlw	05h&0ffh
	skipz
	goto	u1781
	goto	u1780
u1781:
	goto	l1720
u1780:
	goto	l1728
	
l518:	
	line	1447
	
l1728:	
;doprnt.c: 1431: {
;doprnt.c: 1447: if(flag & 0x03)
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1791
	goto	u1790
u1791:
	goto	l1732
u1790:
	line	1448
	
l1730:	
;doprnt.c: 1448: (putch('-') );
	movlw	(02Dh)
	fcall	_putch
	goto	l1732
	
l520:	
	line	1481
	
l1732:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movlb 0	; select bank0
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l1738
	
l522:	
	line	1498
	
l1734:	
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
	
l1736:	
;doprnt.c: 1532: }
;doprnt.c: 1533: (putch(c) );
	movf	(printf@c),w
	fcall	_putch
	goto	l1738
	line	1534
	
l521:	
	line	1483
	
l1738:	
	movlw	(-1)
	movlb 0	; select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1&0ffh
	skipz
	goto	u1801
	goto	u1800
u1801:
	goto	l1734
u1800:
	goto	l1740
	
l523:	
	goto	l1740
	line	1542
	
l506:	
	line	545
	
l1740:	
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
	goto	u1811
	goto	u1810
u1811:
	goto	l1696
u1810:
	goto	l525
	
l524:	
	goto	l525
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l511:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _printf is never used
	
l525:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 608 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	608
global __ptext7
__ptext7:	;psect for function _putch
psect	text7
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	608
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
;incstack = 0
	opt	stack 8
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movlb 0	; select bank0
	movwf	(putch@byte)
	line	611
	
l1642:	
;MCU_16f1516_B1.c: 611: while(!TXIF)
	goto	l351
	
l352:	
	line	612
;MCU_16f1516_B1.c: 612: continue;
	
l351:	
	line	611
	btfss	(140/8),(140)&7	;volatile
	goto	u1601
	goto	u1600
u1601:
	goto	l351
u1600:
	goto	l1644
	
l353:	
	line	613
	
l1644:	
;MCU_16f1516_B1.c: 613: TXREG = byte;
	movf	(putch@byte),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	614
	
l354:	
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
;;  divisor         2   13[BANK0 ] unsigned int 
;;  dividend        2   15[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   13[BANK0 ] unsigned int 
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
	
l1672:	
	movlb 0	; select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u1681
	goto	u1680
u1681:
	goto	l1690
u1680:
	line	14
	
l1674:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1680
	
l870:	
	line	16
	
l1676:	
	movlw	01h
	
u1695:
	lslf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	decfsz	wreg,f
	goto	u1695
	line	17
	
l1678:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1680
	line	18
	
l869:	
	line	15
	
l1680:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1701
	goto	u1700
u1701:
	goto	l1676
u1700:
	goto	l1682
	
l871:	
	goto	l1682
	line	19
	
l872:	
	line	20
	
l1682:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1715
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1715:
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l1686
u1710:
	line	21
	
l1684:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	subwfb	(___lwmod@dividend+1),f
	goto	l1686
	
l873:	
	line	22
	
l1686:	
	movlw	01h
	
u1725:
	lsrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	decfsz	wreg,f
	goto	u1725
	line	23
	
l1688:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u1731
	goto	u1730
u1731:
	goto	l1682
u1730:
	goto	l1690
	
l874:	
	goto	l1690
	line	24
	
l868:	
	line	25
	
l1690:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l875
	
l1692:	
	line	26
	
l875:	
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
	
l1646:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1648:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1611
	goto	u1610
u1611:
	goto	l1668
u1610:
	line	16
	
l1650:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1656
	
l860:	
	line	18
	
l1652:	
	movlw	01h
	
u1625:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u1625
	line	19
	
l1654:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1656
	line	20
	
l859:	
	line	17
	
l1656:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1631
	goto	u1630
u1631:
	goto	l1652
u1630:
	goto	l1658
	
l861:	
	goto	l1658
	line	21
	
l862:	
	line	22
	
l1658:	
	movlw	01h
	
u1645:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u1645
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1655
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1655:
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l1664
u1650:
	line	24
	
l1660:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	25
	
l1662:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1664
	line	26
	
l863:	
	line	27
	
l1664:	
	movlw	01h
	
u1665:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u1665
	line	28
	
l1666:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l1658
u1670:
	goto	l1668
	
l864:	
	goto	l1668
	line	29
	
l858:	
	line	30
	
l1668:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l865
	
l1670:	
	line	31
	
l865:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_UART_Receive

;; *************** function _UART_Receive *****************
;; Defined at:
;;		line 569 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	569
global __ptext10
__ptext10:	;psect for function _UART_Receive
psect	text10
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	569
	global	__size_of_UART_Receive
	__size_of_UART_Receive	equ	__end_of_UART_Receive-_UART_Receive
	
_UART_Receive:	
;incstack = 0
	opt	stack 10
; Regs used in _UART_Receive: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	572
	
l2046:	
;MCU_16f1516_B1.c: 571: char i;
;MCU_16f1516_B1.c: 572: RA1=~RA1;
	movlw	1<<((97)&7)
	movlb 0	; select bank0
	xorwf	((97)/8),f
	line	574
	
l2048:	
;MCU_16f1516_B1.c: 574: TMain->Test=1;
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	576
	
l2050:	
;MCU_16f1516_B1.c: 576: for(i=0;i<32;i++)
	clrf	(UART_Receive@i)
	
l2052:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l2056
u2630:
	goto	l2062
	
l2054:	
	goto	l2062
	line	577
	
l343:	
	line	578
	
l2056:	
;MCU_16f1516_B1.c: 577: {
;MCU_16f1516_B1.c: 578: I2C->BufferWriter[i]=UART->RxData[i];
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
	line	576
	
l2058:	
	movlw	(01h)
	movwf	(??_UART_Receive+0)+0
	movf	(??_UART_Receive+0)+0,w
	addwf	(UART_Receive@i),f
	
l2060:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l2056
u2640:
	goto	l2062
	
l344:	
	line	580
	
l2062:	
;MCU_16f1516_B1.c: 579: }
;MCU_16f1516_B1.c: 580: I2C->MasterTxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	594
	
l345:	
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
	
l2270:	
;SegmentDisplay_A2.c: 74: if(Segment->GO)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u3011
	goto	u3010
u3011:
	goto	l495
u3010:
	line	76
	
l2272:	
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
	
l2274:	
;SegmentDisplay_A2.c: 77: if(Segment->Time == 5)
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	05h&0ffh
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l495
u3020:
	line	79
	
l2276:	
;SegmentDisplay_A2.c: 78: {
;SegmentDisplay_A2.c: 79: Segment->Time=0;
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	80
	
l2278:	
;SegmentDisplay_A2.c: 80: PORTA&=0x0f;
	movlw	(0Fh)
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	(??_SegmentDisplay_Main+0)+0,w
	andwf	(12),f	;volatile
	line	81
	
l2280:	
;SegmentDisplay_A2.c: 81: if(Segment->ComCount == 0)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l2284
u3030:
	line	83
	
l2282:	
;SegmentDisplay_A2.c: 82: {
;SegmentDisplay_A2.c: 83: RA4=1;
	bsf	(100/8),(100)&7	;volatile
	line	84
;SegmentDisplay_A2.c: 84: }
	goto	l2296
	line	85
	
l486:	
	
l2284:	
;SegmentDisplay_A2.c: 85: else if(Segment->ComCount == 1)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l2288
u3040:
	line	87
	
l2286:	
;SegmentDisplay_A2.c: 86: {
;SegmentDisplay_A2.c: 87: RA5=1;
	bsf	(101/8),(101)&7	;volatile
	line	88
;SegmentDisplay_A2.c: 88: }
	goto	l2296
	line	89
	
l488:	
	
l2288:	
;SegmentDisplay_A2.c: 89: else if(Segment->ComCount == 2)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	02h&0ffh
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l2292
u3050:
	line	91
	
l2290:	
;SegmentDisplay_A2.c: 90: {
;SegmentDisplay_A2.c: 91: RA6=1;
	bsf	(102/8),(102)&7	;volatile
	line	92
;SegmentDisplay_A2.c: 92: }
	goto	l2296
	line	93
	
l490:	
	
l2292:	
;SegmentDisplay_A2.c: 93: else if(Segment->ComCount == 3)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	03h&0ffh
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l2296
u3060:
	line	95
	
l2294:	
;SegmentDisplay_A2.c: 94: {
;SegmentDisplay_A2.c: 95: RA7=1;
	bsf	(103/8),(103)&7	;volatile
	goto	l2296
	line	96
	
l492:	
	goto	l2296
	line	97
	
l491:	
	goto	l2296
	
l489:	
	goto	l2296
	
l487:	
	
l2296:	
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
	
l2298:	
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
	goto	u3071
	goto	u3070
u3071:
	goto	l2302
u3070:
	line	100
	
l2300:	
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
	goto	l495
	line	102
	
l493:	
	line	104
	
l2302:	
;SegmentDisplay_A2.c: 102: else
;SegmentDisplay_A2.c: 103: {
;SegmentDisplay_A2.c: 104: Segment->ComCount=0;
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l495
	line	105
	
l494:	
	goto	l495
	line	106
	
l485:	
	goto	l495
	line	107
	
l484:	
	line	108
	
l495:	
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
	
l2240:	
;SegmentDisplay_A2.c: 10: Segment=&VarSegment;
	movlw	(_VarSegment)&0ffh
	movlb 0	; select bank0
	movwf	(??_SegmentDisplay_Initial+0)+0
	movf	(??_SegmentDisplay_Initial+0)+0,w
	movwf	(_Segment)
	line	11
	
l2242:	
;SegmentDisplay_A2.c: 11: Segment->Enable=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	13
	
l2244:	
;SegmentDisplay_A2.c: 13: Segment->Dec=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	18
	
l464:	
	return
	opt stack 0
GLOBAL	__end_of_SegmentDisplay_Initial
	__end_of_SegmentDisplay_Initial:
	signat	_SegmentDisplay_Initial,88
	global	_Mcu_Initial

;; *************** function _Mcu_Initial *****************
;; Defined at:
;;		line 11 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	11
global __ptext13
__ptext13:	;psect for function _Mcu_Initial
psect	text13
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	11
	global	__size_of_Mcu_Initial
	__size_of_Mcu_Initial	equ	__end_of_Mcu_Initial-_Mcu_Initial
	
_Mcu_Initial:	
;incstack = 0
	opt	stack 10
; Regs used in _Mcu_Initial: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l2130:	
;MCU_16f1516_B1.c: 14: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l2132:	
;MCU_16f1516_B1.c: 16: IO_Set();
	fcall	_IO_Set
	line	18
	
l2134:	
;MCU_16f1516_B1.c: 18: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	20
	
l2136:	
;MCU_16f1516_B1.c: 20: TMR1_Set();
	fcall	_TMR1_Set
	line	22
	
l2138:	
;MCU_16f1516_B1.c: 22: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	26
	
l2140:	
;MCU_16f1516_B1.c: 26: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	28
	
l2142:	
;MCU_16f1516_B1.c: 28: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	30
	
l2144:	
;MCU_16f1516_B1.c: 30: I2C_Set();
	fcall	_I2C_Set
	line	32
	
l2146:	
;MCU_16f1516_B1.c: 32: UART_Set();
	fcall	_UART_Set
	line	35
	
l165:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initial
	__end_of_Mcu_Initial:
	signat	_Mcu_Initial,88
	global	_UART_Set

;; *************** function _UART_Set *****************
;; Defined at:
;;		line 498 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	498
global __ptext14
__ptext14:	;psect for function _UART_Set
psect	text14
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	498
	global	__size_of_UART_Set
	__size_of_UART_Set	equ	__end_of_UART_Set-_UART_Set
	
_UART_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _UART_Set: [wreg+status,2]
	line	500
	
l1936:	
;MCU_16f1516_B1.c: 500: UART=&VarUart;
	movlw	(_VarUart)&0ffh
	movlb 0	; select bank0
	movwf	(??_UART_Set+0)+0
	movf	(??_UART_Set+0)+0,w
	movwf	(_UART)
	line	501
	
l1938:	
;MCU_16f1516_B1.c: 501: TRISC7 = 1;
	movlb 1	; select bank1
	bsf	(1143/8)^080h,(1143)&7	;volatile
	line	502
	
l1940:	
;MCU_16f1516_B1.c: 502: TRISC6 = 1;
	bsf	(1142/8)^080h,(1142)&7	;volatile
	line	503
;MCU_16f1516_B1.c: 503: SPBRG = ((int)(16000000L/(16UL * 19200) -1));
	movlw	(033h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	504
	
l1942:	
;MCU_16f1516_B1.c: 504: SPBRGH = 0;
	clrf	(412)^0180h	;volatile
	line	505
	
l1944:	
;MCU_16f1516_B1.c: 505: BRG16 = 0;
	bcf	(3323/8)^0180h,(3323)&7	;volatile
	line	506
	
l1946:	
;MCU_16f1516_B1.c: 506: RCSTA = (0|0x90);
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	line	507
	
l1948:	
;MCU_16f1516_B1.c: 507: TXSTA = (0x4|0|0x20);
	movlw	(024h)
	movwf	(414)^0180h	;volatile
	line	508
	
l1950:	
;MCU_16f1516_B1.c: 508: TX9=0;
	bcf	(3318/8)^0180h,(3318)&7	;volatile
	line	509
	
l1952:	
;MCU_16f1516_B1.c: 509: RX9=0;
	bcf	(3310/8)^0180h,(3310)&7	;volatile
	line	510
	
l1954:	
;MCU_16f1516_B1.c: 510: TXIE=0;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7	;volatile
	line	511
	
l1956:	
;MCU_16f1516_B1.c: 511: RCIE=1;
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	512
	
l1958:	
;MCU_16f1516_B1.c: 512: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	513
	
l1960:	
;MCU_16f1516_B1.c: 513: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	514
	
l316:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Set
	__end_of_UART_Set:
	signat	_UART_Set,88
	global	_TMR1_Set

;; *************** function _TMR1_Set *****************
;; Defined at:
;;		line 114 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	114
global __ptext15
__ptext15:	;psect for function _TMR1_Set
psect	text15
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	114
	global	__size_of_TMR1_Set
	__size_of_TMR1_Set	equ	__end_of_TMR1_Set-_TMR1_Set
	
_TMR1_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR1_Set: [wreg]
	line	116
	
l1922:	
;MCU_16f1516_B1.c: 116: Timer1=&VarTimer1;
	movlw	(_VarTimer1)&0ffh
	movlb 0	; select bank0
	movwf	(??_TMR1_Set+0)+0
	movf	(??_TMR1_Set+0)+0,w
	movwf	(_Timer1)
	line	117
;MCU_16f1516_B1.c: 117: T1CON=(0x40 | 0x00 | 0x01);
	movlw	(041h)
	movwf	(24)	;volatile
	line	118
;MCU_16f1516_B1.c: 118: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	119
;MCU_16f1516_B1.c: 119: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	120
	
l1924:	
;MCU_16f1516_B1.c: 120: TMR1IE=1;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	121
	
l1926:	
;MCU_16f1516_B1.c: 121: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	122
	
l1928:	
;MCU_16f1516_B1.c: 122: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	123
	
l174:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_Set
	__end_of_TMR1_Set:
	signat	_TMR1_Set,88
	global	_IO_Set

;; *************** function _IO_Set *****************
;; Defined at:
;;		line 37 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	37
global __ptext16
__ptext16:	;psect for function _IO_Set
psect	text16
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	37
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _IO_Set: [wreg+status,2]
	line	39
	
l1906:	
;MCU_16f1516_B1.c: 39: TRISA=0b00001001;;
	movlw	(09h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	40
	
l1908:	
;MCU_16f1516_B1.c: 40: TRISB=0b00000000;;
	clrf	(141)^080h	;volatile
	line	41
	
l1910:	
;MCU_16f1516_B1.c: 41: TRISC=0b00011001;;
	movlw	(019h)
	movwf	(142)^080h	;volatile
	line	42
;MCU_16f1516_B1.c: 42: LATA=0b00000000;;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	43
;MCU_16f1516_B1.c: 43: LATB=0b00000000;;
	clrf	(269)^0100h	;volatile
	line	44
;MCU_16f1516_B1.c: 44: LATC=0b00000000;;
	clrf	(270)^0100h	;volatile
	line	45
	
l1912:	
;MCU_16f1516_B1.c: 45: ANSELA=0b00000001;;
	movlw	(01h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	46
	
l1914:	
;MCU_16f1516_B1.c: 46: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	47
	
l1916:	
;MCU_16f1516_B1.c: 47: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	48
	
l1918:	
;MCU_16f1516_B1.c: 48: PORTA=0b00001001;;
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	49
;MCU_16f1516_B1.c: 49: PORTB=0b00000000;;
	clrf	(13)	;volatile
	line	50
	
l1920:	
;MCU_16f1516_B1.c: 50: PORTC=0b00011001;;
	movlw	(019h)
	movwf	(14)	;volatile
	line	51
	
l168:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
	signat	_IO_Set,88
	global	_I2C_Set

;; *************** function _I2C_Set *****************
;; Defined at:
;;		line 233 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	233
global __ptext17
__ptext17:	;psect for function _I2C_Set
psect	text17
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	233
	global	__size_of_I2C_Set
	__size_of_I2C_Set	equ	__end_of_I2C_Set-_I2C_Set
	
_I2C_Set:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_Set: [wreg+status,2]
	line	235
	
l1930:	
;MCU_16f1516_B1.c: 235: I2C=&VarI2C;
	movlw	(_VarI2C)&0ffh
	movlb 0	; select bank0
	movwf	(??_I2C_Set+0)+0
	movf	(??_I2C_Set+0)+0,w
	movwf	(_I2C)
	line	237
;MCU_16f1516_B1.c: 237: SSPADD = 0x09;
	movlw	(09h)
	movlb 4	; select bank4
	movwf	(530)^0200h	;volatile
	line	238
;MCU_16f1516_B1.c: 238: SSPSTAT = 0x80;
	movlw	(080h)
	movwf	(532)^0200h	;volatile
	line	239
	
l1932:	
;MCU_16f1516_B1.c: 239: SSPCON2 = 0;
	clrf	(534)^0200h	;volatile
	line	241
	
l1934:	
;MCU_16f1516_B1.c: 241: SSPCON1=0b101000;
	movlw	(028h)
	movwf	(533)^0200h	;volatile
	line	258
	
l182:	
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
	
l2234:	
;myMain.c: 35: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movlb 0	; select bank0
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_TMain)
	line	36
	
l2236:	
;myMain.c: 36: TMain->FirstOpen=1;
	movf	(_TMain),w
	addlw	0Dh
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	37
	
l2238:	
;myMain.c: 37: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_Product)
	line	38
	
l416:	
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
	
l2246:	
;myMain.c: 43: char i;
;myMain.c: 45: if(!TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u2971
	goto	u2970
u2971:
	goto	l2254
u2970:
	line	47
	
l2248:	
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
	
l2250:	
;myMain.c: 48: if(TMain->PowerCount == 1500)
	incf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(05DCh)
	skipz
	goto	u2985
	moviw	[1]fsr1
	xorlw	high(05DCh)
u2985:
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l425
u2980:
	line	50
	
l2252:	
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
	goto	l425
	line	56
	
l420:	
	line	57
;myMain.c: 56: }
;myMain.c: 57: }
	goto	l425
	line	58
	
l419:	
	line	60
	
l2254:	
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
	
l2256:	
;myMain.c: 61: if(TMain->Count1 == 1000)
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u2995
	moviw	[1]fsr1
	xorlw	high(03E8h)
u2995:
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l2264
u2990:
	line	63
	
l2258:	
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
	
l2260:	
;myMain.c: 64: RA2=~RA2;
	movlw	1<<((98)&7)
	xorwf	((98)/8),f
	goto	l2264
	line	78
	
l2262:	
	goto	l2264
	line	82
;myMain.c: 79: {
	
l423:	
	goto	l2264
	line	105
	
l422:	
	line	108
	
l2264:	
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
	
l2266:	
;myMain.c: 109: if(TMain->Count2 == 2000)
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(07D0h)
	skipz
	goto	u3005
	moviw	[1]fsr1
	xorlw	high(07D0h)
u3005:
	skipz
	goto	u3001
	goto	u3000
u3001:
	goto	l425
u3000:
	line	111
	
l2268:	
;myMain.c: 110: {
;myMain.c: 111: TMain->Count2=0;
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l425
	line	124
	
l424:	
	goto	l425
	line	127
	
l421:	
	line	128
	
l425:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
	signat	_MainT,88
	global	_I2C_Main

;; *************** function _I2C_Main *****************
;; Defined at:
;;		line 275 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	275
global __ptext20
__ptext20:	;psect for function _I2C_Main
psect	text20
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	275
	global	__size_of_I2C_Main
	__size_of_I2C_Main	equ	__end_of_I2C_Main-_I2C_Main
	
_I2C_Main:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	302
	
l2182:	
;MCU_16f1516_B1.c: 277: char i;
;MCU_16f1516_B1.c: 302: if(I2C->MasterRxGO)
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u2881
	goto	u2880
u2881:
	goto	l189
u2880:
	line	304
	
l2184:	
;MCU_16f1516_B1.c: 303: {
;MCU_16f1516_B1.c: 304: I2C->MasterRxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	305
	
l2186:	
;MCU_16f1516_B1.c: 305: I2C_Master_Reception();
	fcall	_I2C_Master_Reception
	line	306
	
l2188:	
;MCU_16f1516_B1.c: 306: TMain->Test=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	307
	
l2190:	
;MCU_16f1516_B1.c: 307: RA1=~RA1;
	movlw	1<<((97)&7)
	xorwf	((97)/8),f
	line	309
	
l2192:	
;MCU_16f1516_B1.c: 309: for(i=0;i<32;i++)
	clrf	(I2C_Main@i)
	
l2194:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l2198
u2890:
	goto	l2204
	
l2196:	
	goto	l2204
	line	310
	
l190:	
	line	311
	
l2198:	
;MCU_16f1516_B1.c: 310: {
;MCU_16f1516_B1.c: 311: UART->TxData[i]=I2C->BufferReader[i];
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
	line	309
	
l2200:	
	movlw	(01h)
	movwf	(??_I2C_Main+0)+0
	movf	(??_I2C_Main+0)+0,w
	addwf	(I2C_Main@i),f
	
l2202:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l2198
u2900:
	goto	l2204
	
l191:	
	line	313
	
l2204:	
;MCU_16f1516_B1.c: 312: }
;MCU_16f1516_B1.c: 313: UART->TxGO=1;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	315
;MCU_16f1516_B1.c: 315: }
	goto	l198
	line	316
	
l189:	
	line	318
;MCU_16f1516_B1.c: 316: else
;MCU_16f1516_B1.c: 317: {
;MCU_16f1516_B1.c: 318: if(RC0)
	btfss	(112/8),(112)&7	;volatile
	goto	u2911
	goto	u2910
u2911:
	goto	l2210
u2910:
	line	320
	
l2206:	
;MCU_16f1516_B1.c: 319: {
;MCU_16f1516_B1.c: 320: if(!I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u2921
	goto	u2920
u2921:
	goto	l198
u2920:
	line	322
	
l2208:	
;MCU_16f1516_B1.c: 321: {
;MCU_16f1516_B1.c: 322: I2C->SS=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,5
	line	323
;MCU_16f1516_B1.c: 323: I2C->MasterRxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,4
	goto	l198
	line	324
	
l194:	
	line	325
;MCU_16f1516_B1.c: 324: }
;MCU_16f1516_B1.c: 325: }
	goto	l198
	line	326
	
l193:	
	line	328
	
l2210:	
;MCU_16f1516_B1.c: 326: else
;MCU_16f1516_B1.c: 327: {
;MCU_16f1516_B1.c: 328: if(I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u2931
	goto	u2930
u2931:
	goto	l196
u2930:
	line	330
	
l2212:	
;MCU_16f1516_B1.c: 329: {
;MCU_16f1516_B1.c: 330: I2C->SS=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	331
	
l196:	
	line	332
;MCU_16f1516_B1.c: 331: }
;MCU_16f1516_B1.c: 332: if(I2C->MasterTxGO)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u2941
	goto	u2940
u2941:
	goto	l198
u2940:
	line	334
	
l2214:	
;MCU_16f1516_B1.c: 333: {
;MCU_16f1516_B1.c: 334: I2C->MasterTxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	335
	
l2216:	
;MCU_16f1516_B1.c: 335: I2C_Master_Transmission();
	fcall	_I2C_Master_Transmission
	goto	l198
	line	336
	
l197:	
	goto	l198
	line	337
	
l195:	
	goto	l198
	line	338
	
l192:	
	line	341
	
l198:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Main
	__end_of_I2C_Main:
	signat	_I2C_Main,88
	global	_I2C_Master_Transmission

;; *************** function _I2C_Master_Transmission *****************
;; Defined at:
;;		line 375 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
psect	text21,local,class=CODE,delta=2,merge=1
	line	375
global __ptext21
__ptext21:	;psect for function _I2C_Master_Transmission
psect	text21
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	375
	global	__size_of_I2C_Master_Transmission
	__size_of_I2C_Master_Transmission	equ	__end_of_I2C_Master_Transmission-_I2C_Master_Transmission
	
_I2C_Master_Transmission:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_Master_Transmission: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	378
	
l1978:	
;MCU_16f1516_B1.c: 377: char i;
;MCU_16f1516_B1.c: 378: while(SEN);
	goto	l204
	
l205:	
	
l204:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2401
	goto	u2400
u2401:
	goto	l204
u2400:
	
l206:	
	line	379
;MCU_16f1516_B1.c: 379: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7	;volatile
	line	381
;MCU_16f1516_B1.c: 381: while(SEN);
	goto	l207
	
l208:	
	
l207:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2411
	goto	u2410
u2411:
	goto	l207
u2410:
	goto	l1980
	
l209:	
	line	384
	
l1980:	
;MCU_16f1516_B1.c: 384: SSPBUF=0x10;
	movlw	(010h)
	movwf	(529)^0200h	;volatile
	line	385
;MCU_16f1516_B1.c: 385: while(BF);
	goto	l210
	
l211:	
	
l210:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u2421
	goto	u2420
u2421:
	goto	l210
u2420:
	goto	l213
	
l212:	
	line	388
;MCU_16f1516_B1.c: 388: while(ACKSTAT);
	goto	l213
	
l214:	
	
l213:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u2431
	goto	u2430
u2431:
	goto	l213
u2430:
	goto	l1982
	
l215:	
	line	390
	
l1982:	
;MCU_16f1516_B1.c: 390: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(I2C_Master_Transmission@i)
	
l1984:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u2441
	goto	u2440
u2441:
	goto	l218
u2440:
	goto	l227
	
l1986:	
	goto	l227
	line	391
	
l216:	
	line	392
;MCU_16f1516_B1.c: 391: {
;MCU_16f1516_B1.c: 392: while(SEN);
	goto	l218
	
l219:	
	
l218:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2451
	goto	u2450
u2451:
	goto	l218
u2450:
	goto	l1988
	
l220:	
	line	393
	
l1988:	
;MCU_16f1516_B1.c: 393: SSPBUF=I2C->BufferWriter[i];
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
	line	394
;MCU_16f1516_B1.c: 394: while(BF);
	goto	l221
	
l222:	
	
l221:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u2461
	goto	u2460
u2461:
	goto	l221
u2460:
	goto	l224
	
l223:	
	line	397
;MCU_16f1516_B1.c: 397: while(ACKSTAT);
	goto	l224
	
l225:	
	
l224:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u2471
	goto	u2470
u2471:
	goto	l224
u2470:
	goto	l1990
	
l226:	
	line	390
	
l1990:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_I2C_Master_Transmission+0)+0
	movf	(??_I2C_Master_Transmission+0)+0,w
	addwf	(I2C_Master_Transmission@i),f
	
l1992:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l218
u2480:
	goto	l227
	
l217:	
	line	400
;MCU_16f1516_B1.c: 398: }
;MCU_16f1516_B1.c: 400: while(SEN);
	goto	l227
	
l228:	
	
l227:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2491
	goto	u2490
u2491:
	goto	l227
u2490:
	goto	l230
	
l229:	
	line	401
;MCU_16f1516_B1.c: 401: while(!PEN)
	goto	l230
	
l231:	
	line	402
;MCU_16f1516_B1.c: 402: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7	;volatile
	
l230:	
	line	401
	btfss	(4274/8)^0200h,(4274)&7	;volatile
	goto	u2501
	goto	u2500
u2501:
	goto	l231
u2500:
	goto	l233
	
l232:	
	line	403
;MCU_16f1516_B1.c: 403: while(PEN);
	goto	l233
	
l234:	
	
l233:	
	btfsc	(4274/8)^0200h,(4274)&7	;volatile
	goto	u2511
	goto	u2510
u2511:
	goto	l233
u2510:
	goto	l236
	
l235:	
	line	406
	
l236:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Transmission
	__end_of_I2C_Master_Transmission:
	signat	_I2C_Master_Transmission,88
	global	_I2C_Master_Reception

;; *************** function _I2C_Master_Reception *****************
;; Defined at:
;;		line 408 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
psect	text22,local,class=CODE,delta=2,merge=1
	line	408
global __ptext22
__ptext22:	;psect for function _I2C_Master_Reception
psect	text22
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	408
	global	__size_of_I2C_Master_Reception
	__size_of_I2C_Master_Reception	equ	__end_of_I2C_Master_Reception-_I2C_Master_Reception
	
_I2C_Master_Reception:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_Master_Reception: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	411
	
l1962:	
;MCU_16f1516_B1.c: 410: char i;
;MCU_16f1516_B1.c: 411: while(SEN);
	goto	l239
	
l240:	
	
l239:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2201
	goto	u2200
u2201:
	goto	l239
u2200:
	
l241:	
	line	412
;MCU_16f1516_B1.c: 412: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7	;volatile
	line	413
;MCU_16f1516_B1.c: 413: while(SEN);
	goto	l242
	
l243:	
	
l242:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2211
	goto	u2210
u2211:
	goto	l242
u2210:
	goto	l1964
	
l244:	
	line	416
	
l1964:	
;MCU_16f1516_B1.c: 416: SSPBUF=0x11;
	movlw	(011h)
	movwf	(529)^0200h	;volatile
	line	419
;MCU_16f1516_B1.c: 419: while(BF);
	goto	l245
	
l246:	
	
l245:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u2221
	goto	u2220
u2221:
	goto	l245
u2220:
	goto	l248
	
l247:	
	line	420
;MCU_16f1516_B1.c: 420: while(ACKSTAT);
	goto	l248
	
l249:	
	
l248:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u2231
	goto	u2230
u2231:
	goto	l248
u2230:
	goto	l1966
	
l250:	
	line	423
	
l1966:	
;MCU_16f1516_B1.c: 423: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(I2C_Master_Reception@i)
	
l1968:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l253
u2240:
	goto	l268
	
l1970:	
	goto	l268
	line	424
	
l251:	
	line	425
;MCU_16f1516_B1.c: 424: {
;MCU_16f1516_B1.c: 425: while(SEN);
	goto	l253
	
l254:	
	
l253:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2251
	goto	u2250
u2251:
	goto	l253
u2250:
	goto	l256
	
l255:	
	line	426
;MCU_16f1516_B1.c: 426: while(RCEN);
	goto	l256
	
l257:	
	
l256:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u2261
	goto	u2260
u2261:
	goto	l256
u2260:
	
l258:	
	line	427
;MCU_16f1516_B1.c: 427: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	428
;MCU_16f1516_B1.c: 428: while(RCEN);
	goto	l259
	
l260:	
	
l259:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u2271
	goto	u2270
u2271:
	goto	l259
u2270:
	goto	l1972
	
l261:	
	line	429
	
l1972:	
;MCU_16f1516_B1.c: 429: I2C->BufferReader[i]=SSPBUF;
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
	line	430
;MCU_16f1516_B1.c: 430: while(!ACKEN)
	goto	l262
	
l263:	
	line	431
;MCU_16f1516_B1.c: 431: ACKEN=1;
	bsf	(4276/8)^0200h,(4276)&7	;volatile
	
l262:	
	line	430
	movlb 4	; select bank4
	btfss	(4276/8)^0200h,(4276)&7	;volatile
	goto	u2281
	goto	u2280
u2281:
	goto	l263
u2280:
	goto	l265
	
l264:	
	line	432
;MCU_16f1516_B1.c: 432: while(ACKEN);
	goto	l265
	
l266:	
	
l265:	
	btfsc	(4276/8)^0200h,(4276)&7	;volatile
	goto	u2291
	goto	u2290
u2291:
	goto	l265
u2290:
	goto	l1974
	
l267:	
	line	423
	
l1974:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_I2C_Master_Reception+0)+0
	movf	(??_I2C_Master_Reception+0)+0,w
	addwf	(I2C_Master_Reception@i),f
	
l1976:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l253
u2300:
	goto	l268
	
l252:	
	line	434
;MCU_16f1516_B1.c: 433: }
;MCU_16f1516_B1.c: 434: while(RCEN);
	goto	l268
	
l269:	
	
l268:	
	movlb 4	; select bank4
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u2311
	goto	u2310
u2311:
	goto	l268
u2310:
	
l270:	
	line	435
;MCU_16f1516_B1.c: 435: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	436
;MCU_16f1516_B1.c: 436: while(RCEN);
	goto	l271
	
l272:	
	
l271:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u2321
	goto	u2320
u2321:
	goto	l271
u2320:
	goto	l274
	
l273:	
	line	437
;MCU_16f1516_B1.c: 437: while(!ACKEN)
	goto	l274
	
l275:	
	line	438
;MCU_16f1516_B1.c: 438: ACKEN=1;
	bsf	(4276/8)^0200h,(4276)&7	;volatile
	
l274:	
	line	437
	btfss	(4276/8)^0200h,(4276)&7	;volatile
	goto	u2331
	goto	u2330
u2331:
	goto	l275
u2330:
	goto	l277
	
l276:	
	line	439
;MCU_16f1516_B1.c: 439: while(ACKEN);
	goto	l277
	
l278:	
	
l277:	
	btfsc	(4276/8)^0200h,(4276)&7	;volatile
	goto	u2341
	goto	u2340
u2341:
	goto	l277
u2340:
	goto	l280
	
l279:	
	line	440
;MCU_16f1516_B1.c: 440: while(RCEN);
	goto	l280
	
l281:	
	
l280:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u2351
	goto	u2350
u2351:
	goto	l280
u2350:
	
l282:	
	line	441
;MCU_16f1516_B1.c: 441: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	442
;MCU_16f1516_B1.c: 442: while(RCEN);
	goto	l283
	
l284:	
	
l283:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u2361
	goto	u2360
u2361:
	goto	l283
u2360:
	goto	l286
	
l285:	
	line	444
;MCU_16f1516_B1.c: 444: while(SEN);
	goto	l286
	
l287:	
	
l286:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2371
	goto	u2370
u2371:
	goto	l286
u2370:
	goto	l289
	
l288:	
	line	445
;MCU_16f1516_B1.c: 445: while(!PEN)
	goto	l289
	
l290:	
	line	446
;MCU_16f1516_B1.c: 446: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7	;volatile
	
l289:	
	line	445
	btfss	(4274/8)^0200h,(4274)&7	;volatile
	goto	u2381
	goto	u2380
u2381:
	goto	l290
u2380:
	goto	l292
	
l291:	
	line	447
;MCU_16f1516_B1.c: 447: while(PEN);
	goto	l292
	
l293:	
	
l292:	
	btfsc	(4274/8)^0200h,(4274)&7	;volatile
	goto	u2391
	goto	u2390
u2391:
	goto	l292
u2390:
	goto	l295
	
l294:	
	line	450
	
l295:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Reception
	__end_of_I2C_Master_Reception:
	signat	_I2C_Master_Reception,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 56 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	56
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
	line	58
	
i1l2304:	
;MCU_16f1516_B1.c: 58: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	60
;MCU_16f1516_B1.c: 60: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	62
	
i1l2306:	
;MCU_16f1516_B1.c: 62: TMR1_ISR();
	fcall	_TMR1_ISR
	line	66
	
i1l2308:	
;MCU_16f1516_B1.c: 66: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	68
;MCU_16f1516_B1.c: 68: UART_ISR();
	fcall	_UART_ISR
	line	70
;MCU_16f1516_B1.c: 70: I2C_ISR();
	fcall	_I2C_ISR
	line	71
	
i1l171:	
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
;;		line 516 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
psect	text24,local,class=CODE,delta=2,merge=1
	line	516
global __ptext24
__ptext24:	;psect for function _UART_ISR
psect	text24
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	516
	global	__size_of_UART_ISR
	__size_of_UART_ISR	equ	__end_of_UART_ISR-_UART_ISR
	
_UART_ISR:	
;incstack = 0
	opt	stack 8
; Regs used in _UART_ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	519
	
i1l2162:	
;MCU_16f1516_B1.c: 518: char i;
;MCU_16f1516_B1.c: 519: if(RCIE && RCIF)
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7	;volatile
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l323
u283_20:
	
i1l2164:	
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l323
u284_20:
	goto	i1l320
	line	521
	
i1l2166:	
;MCU_16f1516_B1.c: 520: {
;MCU_16f1516_B1.c: 521: while(!RCIDL);
	goto	i1l320
	
i1l321:	
	
i1l320:	
	movlb 3	; select bank3
	btfss	(3326/8)^0180h,(3326)&7	;volatile
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l320
u285_20:
	goto	i1l2168
	
i1l322:	
	line	523
	
i1l2168:	
;MCU_16f1516_B1.c: 523: UART->RxData[0]=RCREG;
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
	line	532
	
i1l2170:	
;MCU_16f1516_B1.c: 532: RA1=~RA1;
	movlw	1<<((97)&7)
	xorwf	((97)/8),f
	line	533
	
i1l2172:	
;MCU_16f1516_B1.c: 533: setSegmentDisplayNumber(UART->RxData[0]);
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
	goto	i1l323
	line	534
	
i1l319:	
	line	535
	
i1l323:	
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
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	20
global __ptext25
__ptext25:	;psect for function i1_setSegmentDisplayNumber
psect	text25
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	20
	global	__size_ofi1_setSegmentDisplayNumber
	__size_ofi1_setSegmentDisplayNumber	equ	__end_ofi1_setSegmentDisplayNumber-i1_setSegmentDisplayNumber
	
i1_setSegmentDisplayNumber:	
;incstack = 0
	opt	stack 8
; Regs used in i1_setSegmentDisplayNumber: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	23
	
i1l2078:	
;SegmentDisplay_A2.c: 22: char i;
;SegmentDisplay_A2.c: 23: if(Segment->Enable)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l481
u269_20:
	line	25
	
i1l2080:	
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
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l2088
u270_20:
	line	28
	
i1l2082:	
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
	
i1l2084:	
;SegmentDisplay_A2.c: 29: Segment->Num[1]=((number>>4)&0x000f);
	movf	(i1setSegmentDisplayNumber@number+1),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0+1
	movf	(i1setSegmentDisplayNumber@number),w
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movlw	04h
	movwf	(??i1_setSegmentDisplayNumber+2)+0
u271_25:
	rlf	(??i1_setSegmentDisplayNumber+0)+1,w
	rrf	(??i1_setSegmentDisplayNumber+0)+1,f
	rrf	(??i1_setSegmentDisplayNumber+0)+0,f
	decfsz	(??i1_setSegmentDisplayNumber+2)+0,f
	goto	u271_25
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
	
i1l2086:	
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
u272_25:
	rlf	(??i1_setSegmentDisplayNumber+0)+1,w
	rrf	(??i1_setSegmentDisplayNumber+0)+1,f
	rrf	(??i1_setSegmentDisplayNumber+0)+0,f
	decfsz	(??i1_setSegmentDisplayNumber+2)+0,f
	goto	u272_25
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
	goto	i1l2116
	line	33
	
i1l468:	
	
i1l2088:	
;SegmentDisplay_A2.c: 33: else if(Segment->Dec)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u273_21
	goto	u273_20
u273_21:
	goto	i1l2116
u273_20:
	line	35
	
i1l2090:	
;SegmentDisplay_A2.c: 34: {
;SegmentDisplay_A2.c: 35: if(number > 0x270f)
	movf	(i1setSegmentDisplayNumber@number+1),w
	xorlw	80h
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movlw	(high(02710h))^80h
	subwf	(??i1_setSegmentDisplayNumber+0)+0,w
	skipz
	goto	u274_25
	movlw	low(02710h)
	subwf	(i1setSegmentDisplayNumber@number),w
u274_25:

	skipc
	goto	u274_21
	goto	u274_20
u274_21:
	goto	i1l2104
u274_20:
	line	37
	
i1l2092:	
;SegmentDisplay_A2.c: 36: {
;SegmentDisplay_A2.c: 37: for(i=0 ; i<4; i++)
	clrf	(i1setSegmentDisplayNumber@i)
	
i1l2094:	
	movlw	(04h)
	subwf	(i1setSegmentDisplayNumber@i),w
	skipc
	goto	u275_21
	goto	u275_20
u275_21:
	goto	i1l2098
u275_20:
	goto	i1l2116
	
i1l2096:	
	goto	i1l2116
	line	38
	
i1l472:	
	line	39
	
i1l2098:	
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
	
i1l2100:	
	movlw	(01h)
	movwf	(??i1_setSegmentDisplayNumber+0)+0
	movf	(??i1_setSegmentDisplayNumber+0)+0,w
	addwf	(i1setSegmentDisplayNumber@i),f
	
i1l2102:	
	movlw	(04h)
	subwf	(i1setSegmentDisplayNumber@i),w
	skipc
	goto	u276_21
	goto	u276_20
u276_21:
	goto	i1l2098
u276_20:
	goto	i1l2116
	
i1l473:	
	line	41
;SegmentDisplay_A2.c: 40: }
;SegmentDisplay_A2.c: 41: }
	goto	i1l2116
	line	42
	
i1l471:	
	line	44
	
i1l2104:	
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
	
i1l2106:	
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
	
i1l2108:	
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
	
i1l2110:	
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
	
i1l2112:	
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
	
i1l2114:	
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
	goto	i1l2116
	line	51
	
i1l474:	
	goto	i1l2116
	line	52
	
i1l470:	
	goto	i1l2116
	line	53
	
i1l469:	
	
i1l2116:	
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
	goto	u277_21
	goto	u277_20
u277_21:
	goto	i1l2120
u277_20:
	line	55
	
i1l2118:	
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
	goto	i1l481
	line	57
	
i1l475:	
	
i1l2120:	
;SegmentDisplay_A2.c: 57: else if(Segment->Num[2] > 0)
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u278_21
	goto	u278_20
u278_21:
	goto	i1l2124
u278_20:
	line	59
	
i1l2122:	
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
	goto	i1l481
	line	61
	
i1l477:	
	
i1l2124:	
;SegmentDisplay_A2.c: 61: else if(Segment->Num[1] > 0)
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u279_21
	goto	u279_20
u279_21:
	goto	i1l2128
u279_20:
	line	63
	
i1l2126:	
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
	goto	i1l481
	line	65
	
i1l479:	
	line	67
	
i1l2128:	
;SegmentDisplay_A2.c: 65: else
;SegmentDisplay_A2.c: 66: {
;SegmentDisplay_A2.c: 67: Segment->DisplayCount=0;
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	i1l481
	line	68
	
i1l480:	
	goto	i1l481
	
i1l478:	
	goto	i1l481
	
i1l476:	
	goto	i1l481
	line	69
	
i1l467:	
	line	70
	
i1l481:	
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
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext26
__ptext26:	;psect for function i1___awmod
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_ofi1___awmod
	__size_ofi1___awmod	equ	__end_ofi1___awmod-i1___awmod
	
i1___awmod:	
;incstack = 0
	opt	stack 8
; Regs used in i1___awmod: [wreg+status,2+status,0]
	line	13
	
i1l1868:	
	clrf	(i1___awmod@sign)
	line	14
	
i1l1870:	
	btfss	(i1___awmod@dividend+1),7
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l1876
u211_20:
	line	15
	
i1l1872:	
	comf	(i1___awmod@dividend),f
	comf	(i1___awmod@dividend+1),f
	incf	(i1___awmod@dividend),f
	skipnz
	incf	(i1___awmod@dividend+1),f
	line	16
	
i1l1874:	
	clrf	(i1___awmod@sign)
	incf	(i1___awmod@sign),f
	goto	i1l1876
	line	17
	
i1l664:	
	line	18
	
i1l1876:	
	btfss	(i1___awmod@divisor+1),7
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l1880
u212_20:
	line	19
	
i1l1878:	
	comf	(i1___awmod@divisor),f
	comf	(i1___awmod@divisor+1),f
	incf	(i1___awmod@divisor),f
	skipnz
	incf	(i1___awmod@divisor+1),f
	goto	i1l1880
	
i1l665:	
	line	20
	
i1l1880:	
	movf	(i1___awmod@divisor+1),w
	iorwf	(i1___awmod@divisor),w
	skipnz
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l1898
u213_20:
	line	21
	
i1l1882:	
	clrf	(i1___awmod@counter)
	incf	(i1___awmod@counter),f
	line	22
	goto	i1l1888
	
i1l668:	
	line	23
	
i1l1884:	
	movlw	01h
	
u214_25:
	lslf	(i1___awmod@divisor),f
	rlf	(i1___awmod@divisor+1),f
	decfsz	wreg,f
	goto	u214_25
	line	24
	
i1l1886:	
	movlw	(01h)
	movwf	(??i1___awmod+0)+0
	movf	(??i1___awmod+0)+0,w
	addwf	(i1___awmod@counter),f
	goto	i1l1888
	line	25
	
i1l667:	
	line	22
	
i1l1888:	
	btfss	(i1___awmod@divisor+1),(15)&7
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l1884
u215_20:
	goto	i1l1890
	
i1l669:	
	goto	i1l1890
	line	26
	
i1l670:	
	line	27
	
i1l1890:	
	movf	(i1___awmod@divisor+1),w
	subwf	(i1___awmod@dividend+1),w
	skipz
	goto	u216_25
	movf	(i1___awmod@divisor),w
	subwf	(i1___awmod@dividend),w
u216_25:
	skipc
	goto	u216_21
	goto	u216_20
u216_21:
	goto	i1l1894
u216_20:
	line	28
	
i1l1892:	
	movf	(i1___awmod@divisor),w
	subwf	(i1___awmod@dividend),f
	movf	(i1___awmod@divisor+1),w
	subwfb	(i1___awmod@dividend+1),f
	goto	i1l1894
	
i1l671:	
	line	29
	
i1l1894:	
	movlw	01h
	
u217_25:
	lsrf	(i1___awmod@divisor+1),f
	rrf	(i1___awmod@divisor),f
	decfsz	wreg,f
	goto	u217_25
	line	30
	
i1l1896:	
	movlw	low(01h)
	subwf	(i1___awmod@counter),f
	btfss	status,2
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l1890
u218_20:
	goto	i1l1898
	
i1l672:	
	goto	i1l1898
	line	31
	
i1l666:	
	line	32
	
i1l1898:	
	movf	(i1___awmod@sign),w
	skipz
	goto	u219_20
	goto	i1l1902
u219_20:
	line	33
	
i1l1900:	
	comf	(i1___awmod@dividend),f
	comf	(i1___awmod@dividend+1),f
	incf	(i1___awmod@dividend),f
	skipnz
	incf	(i1___awmod@dividend+1),f
	goto	i1l1902
	
i1l673:	
	line	34
	
i1l1902:	
	movf	(i1___awmod@dividend+1),w
	clrf	(?i1___awmod+1)
	addwf	(?i1___awmod+1)
	movf	(i1___awmod@dividend),w
	clrf	(?i1___awmod)
	addwf	(?i1___awmod)

	goto	i1l674
	
i1l1904:	
	line	35
	
i1l674:	
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
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext27
__ptext27:	;psect for function i1___awdiv
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_ofi1___awdiv
	__size_ofi1___awdiv	equ	__end_ofi1___awdiv-i1___awdiv
	
i1___awdiv:	
;incstack = 0
	opt	stack 8
; Regs used in i1___awdiv: [wreg+status,2+status,0]
	line	14
	
i1l1824:	
	clrf	(i1___awdiv@sign)
	line	15
	
i1l1826:	
	btfss	(i1___awdiv@divisor+1),7
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l1832
u201_20:
	line	16
	
i1l1828:	
	comf	(i1___awdiv@divisor),f
	comf	(i1___awdiv@divisor+1),f
	incf	(i1___awdiv@divisor),f
	skipnz
	incf	(i1___awdiv@divisor+1),f
	line	17
	
i1l1830:	
	clrf	(i1___awdiv@sign)
	incf	(i1___awdiv@sign),f
	goto	i1l1832
	line	18
	
i1l651:	
	line	19
	
i1l1832:	
	btfss	(i1___awdiv@dividend+1),7
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l1838
u202_20:
	line	20
	
i1l1834:	
	comf	(i1___awdiv@dividend),f
	comf	(i1___awdiv@dividend+1),f
	incf	(i1___awdiv@dividend),f
	skipnz
	incf	(i1___awdiv@dividend+1),f
	line	21
	
i1l1836:	
	movlw	(01h)
	movwf	(??i1___awdiv+0)+0
	movf	(??i1___awdiv+0)+0,w
	xorwf	(i1___awdiv@sign),f
	goto	i1l1838
	line	22
	
i1l652:	
	line	23
	
i1l1838:	
	clrf	(i1___awdiv@quotient)
	clrf	(i1___awdiv@quotient+1)
	line	24
	
i1l1840:	
	movf	(i1___awdiv@divisor+1),w
	iorwf	(i1___awdiv@divisor),w
	skipnz
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l1860
u203_20:
	line	25
	
i1l1842:	
	clrf	(i1___awdiv@counter)
	incf	(i1___awdiv@counter),f
	line	26
	goto	i1l1848
	
i1l655:	
	line	27
	
i1l1844:	
	movlw	01h
	
u204_25:
	lslf	(i1___awdiv@divisor),f
	rlf	(i1___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u204_25
	line	28
	
i1l1846:	
	movlw	(01h)
	movwf	(??i1___awdiv+0)+0
	movf	(??i1___awdiv+0)+0,w
	addwf	(i1___awdiv@counter),f
	goto	i1l1848
	line	29
	
i1l654:	
	line	26
	
i1l1848:	
	btfss	(i1___awdiv@divisor+1),(15)&7
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l1844
u205_20:
	goto	i1l1850
	
i1l656:	
	goto	i1l1850
	line	30
	
i1l657:	
	line	31
	
i1l1850:	
	movlw	01h
	
u206_25:
	lslf	(i1___awdiv@quotient),f
	rlf	(i1___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u206_25
	line	32
	movf	(i1___awdiv@divisor+1),w
	subwf	(i1___awdiv@dividend+1),w
	skipz
	goto	u207_25
	movf	(i1___awdiv@divisor),w
	subwf	(i1___awdiv@dividend),w
u207_25:
	skipc
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l1856
u207_20:
	line	33
	
i1l1852:	
	movf	(i1___awdiv@divisor),w
	subwf	(i1___awdiv@dividend),f
	movf	(i1___awdiv@divisor+1),w
	subwfb	(i1___awdiv@dividend+1),f
	line	34
	
i1l1854:	
	bsf	(i1___awdiv@quotient)+(0/8),(0)&7
	goto	i1l1856
	line	35
	
i1l658:	
	line	36
	
i1l1856:	
	movlw	01h
	
u208_25:
	lsrf	(i1___awdiv@divisor+1),f
	rrf	(i1___awdiv@divisor),f
	decfsz	wreg,f
	goto	u208_25
	line	37
	
i1l1858:	
	movlw	low(01h)
	subwf	(i1___awdiv@counter),f
	btfss	status,2
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l1850
u209_20:
	goto	i1l1860
	
i1l659:	
	goto	i1l1860
	line	38
	
i1l653:	
	line	39
	
i1l1860:	
	movf	(i1___awdiv@sign),w
	skipz
	goto	u210_20
	goto	i1l1864
u210_20:
	line	40
	
i1l1862:	
	comf	(i1___awdiv@quotient),f
	comf	(i1___awdiv@quotient+1),f
	incf	(i1___awdiv@quotient),f
	skipnz
	incf	(i1___awdiv@quotient+1),f
	goto	i1l1864
	
i1l660:	
	line	41
	
i1l1864:	
	movf	(i1___awdiv@quotient+1),w
	clrf	(?i1___awdiv+1)
	addwf	(?i1___awdiv+1)
	movf	(i1___awdiv@quotient),w
	clrf	(?i1___awdiv)
	addwf	(?i1___awdiv)

	goto	i1l661
	
i1l1866:	
	line	42
	
i1l661:	
	return
	opt stack 0
GLOBAL	__end_ofi1___awdiv
	__end_ofi1___awdiv:
	signat	i1___awdiv,90
	global	_TMR1_ISR

;; *************** function _TMR1_ISR *****************
;; Defined at:
;;		line 125 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	125
global __ptext28
__ptext28:	;psect for function _TMR1_ISR
psect	text28
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	125
	global	__size_of_TMR1_ISR
	__size_of_TMR1_ISR	equ	__end_of_TMR1_ISR-_TMR1_ISR
	
_TMR1_ISR:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR1_ISR: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	127
	
i1l2148:	
;MCU_16f1516_B1.c: 127: if(TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7	;volatile
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l179
u280_20:
	
i1l2150:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7	;volatile
	goto	u281_21
	goto	u281_20
u281_21:
	goto	i1l179
u281_20:
	line	129
	
i1l2152:	
;MCU_16f1516_B1.c: 128: {
;MCU_16f1516_B1.c: 129: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	130
;MCU_16f1516_B1.c: 130: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	131
	
i1l2154:	
;MCU_16f1516_B1.c: 131: TMR1IF=0;
	bcf	(136/8),(136)&7	;volatile
	line	132
	
i1l2156:	
;MCU_16f1516_B1.c: 132: Timer1->Count++;
	incf	(_Timer1),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	133
	
i1l2158:	
;MCU_16f1516_B1.c: 133: if(Timer1->Count == 20)
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
	goto	i1l179
u282_20:
	line	135
	
i1l2160:	
;MCU_16f1516_B1.c: 134: {
;MCU_16f1516_B1.c: 135: Timer1->Count=0;
	incf	(_Timer1),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	136
;MCU_16f1516_B1.c: 136: TMain->T1_Timerout=1;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,2
	goto	i1l179
	line	137
	
i1l178:	
	goto	i1l179
	line	138
	
i1l177:	
	line	139
	
i1l179:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_ISR
	__end_of_TMR1_ISR:
	signat	_TMR1_ISR,88
	global	_I2C_ISR

;; *************** function _I2C_ISR *****************
;; Defined at:
;;		line 260 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
	line	260
global __ptext29
__ptext29:	;psect for function _I2C_ISR
psect	text29
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	260
	global	__size_of_I2C_ISR
	__size_of_I2C_ISR	equ	__end_of_I2C_ISR-_I2C_ISR
	
_I2C_ISR:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_ISR: [wregfsr1]
	line	262
	
i1l2174:	
;MCU_16f1516_B1.c: 262: if(SSPIE && SSPIF)
	movlb 1	; select bank1
	btfss	(1163/8)^080h,(1163)&7	;volatile
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l186
u286_20:
	
i1l2176:	
	movlb 0	; select bank0
	btfss	(139/8),(139)&7	;volatile
	goto	u287_21
	goto	u287_20
u287_21:
	goto	i1l186
u287_20:
	line	264
	
i1l2178:	
;MCU_16f1516_B1.c: 263: {
;MCU_16f1516_B1.c: 264: SSPIE=0;
	movlb 1	; select bank1
	bcf	(1163/8)^080h,(1163)&7	;volatile
	line	265
	
i1l2180:	
;MCU_16f1516_B1.c: 265: I2C->SlaveGO=1;
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l186
	line	272
	
i1l185:	
	line	273
	
i1l186:	
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

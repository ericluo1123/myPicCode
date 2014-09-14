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
	FNCALL	_UART_Transmit,_printf
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_printf,_putch
	FNCALL	_Mcu_Initial,_I2C_Set
	FNCALL	_Mcu_Initial,_IO_Set
	FNCALL	_Mcu_Initial,_TMR1_Set
	FNCALL	_Mcu_Initial,_UART_Set
	FNCALL	_MainT,_setSegmentDisplayNumber
	FNCALL	_setSegmentDisplayNumber,___awdiv
	FNCALL	_setSegmentDisplayNumber,___awmod
	FNCALL	_I2C_Main,_I2C_Master_Reception
	FNCALL	_I2C_Main,_I2C_Master_Transmission
	FNROOT	_main
	FNCALL	_ISR,_I2C_ISR
	FNCALL	_ISR,_TMR1_ISR
	FNCALL	_ISR,_UART_ISR
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarSegment
	global	_VarProduct
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"I:\Program\PIC\Header_File\SegmentDisplay_A2.h"
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
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"I:\Program\PIC\0.myFile\myDevelopment-AH\Release\../Release/myDevelopment-A.h"
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
	global	_I2C
	global	_UART
	global	_VarTMain
	global	_VarTimer1
	global	_Segment
	global	_VarUart
	global	_VarI2C
	global	_Product
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_Product:
       ds      1

	global	_TMain
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
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
_Timer1:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_I2C:
       ds      1

_UART:
       ds      1

_VarTMain:
       ds      15

_VarTimer1:
       ds      3

_Segment:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"I:\Program\PIC\Header_File\SegmentDisplay_A2.h"
	line	69
_VarSegment:
       ds      26

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"I:\Program\PIC\0.myFile\myDevelopment-AH\Release\../Release/myDevelopment-A.h"
	line	245
_VarProduct:
       ds      32

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
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	015h
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
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK0)
	movwf fsr0l
	movlw high(__pidataBANK0)|80h
	movwf fsr0h
	movlw low(__pdataBANK0)
	movwf fsr1l
	movlw high(__pdataBANK0)
	movwf fsr1h
	movlw 01Ah
	fcall init_ram
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
?_MainT_Initial:	; 0 bytes @ 0x0
?_Mcu_Initial:	; 0 bytes @ 0x0
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
??_UART_ISR:	; 0 bytes @ 0x0
?_I2C_ISR:	; 0 bytes @ 0x0
??_I2C_ISR:	; 0 bytes @ 0x0
?_I2C_Master_Reception:	; 0 bytes @ 0x0
?_I2C_Master_Transmission:	; 0 bytes @ 0x0
?_UART_Receive:	; 0 bytes @ 0x0
?_UART_Transmit:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_putch:	; 0 bytes @ 0x0
	ds	2
??_ISR:	; 0 bytes @ 0x2
	ds	1
??_MainT_Initial:	; 0 bytes @ 0x3
??_SegmentDisplay_Initial:	; 0 bytes @ 0x3
??_SegmentDisplay_Main:	; 0 bytes @ 0x3
??_IO_Set:	; 0 bytes @ 0x3
??_TMR1_Set:	; 0 bytes @ 0x3
??_I2C_Set:	; 0 bytes @ 0x3
??_UART_Set:	; 0 bytes @ 0x3
??_I2C_Master_Reception:	; 0 bytes @ 0x3
??_I2C_Master_Transmission:	; 0 bytes @ 0x3
??_UART_Receive:	; 0 bytes @ 0x3
??_putch:	; 0 bytes @ 0x3
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x3
	global	?___awmod
?___awmod:	; 2 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	putch@byte
putch@byte:	; 1 bytes @ 0x3
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x3
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	ds	1
??_Mcu_Initial:	; 0 bytes @ 0x4
	global	I2C_Master_Transmission@i
I2C_Master_Transmission@i:	; 1 bytes @ 0x4
	ds	1
	global	I2C_Master_Reception@i
I2C_Master_Reception@i:	; 1 bytes @ 0x5
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x5
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x5
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	ds	1
??_I2C_Main:	; 0 bytes @ 0x6
	global	UART_Receive@i
UART_Receive@i:	; 1 bytes @ 0x6
	ds	1
??___awdiv:	; 0 bytes @ 0x7
??___awmod:	; 0 bytes @ 0x7
??___lwdiv:	; 0 bytes @ 0x7
	ds	1
??___lwmod:	; 0 bytes @ 0x8
	global	setSegmentDisplayNumber@i
setSegmentDisplayNumber@i:	; 1 bytes @ 0x8
	ds	1
??_UART_Main:	; 0 bytes @ 0x9
??_main:	; 0 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	I2C_Main@i
I2C_Main@i:	; 1 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
	ds	1
?_setSegmentDisplayNumber:	; 0 bytes @ 0x4
	global	setSegmentDisplayNumber@number
setSegmentDisplayNumber@number:	; 2 bytes @ 0x4
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x5
	ds	1
??_setSegmentDisplayNumber:	; 0 bytes @ 0x6
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x7
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x8
	global	printf@f
printf@f:	; 2 bytes @ 0x8
	ds	2
??_MainT:	; 0 bytes @ 0xA
	ds	2
??_printf:	; 0 bytes @ 0xC
	ds	1
	global	MainT@i
MainT@i:	; 1 bytes @ 0xD
	ds	3
	global	printf@ap
printf@ap:	; 1 bytes @ 0x10
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x11
	ds	1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x12
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0x13
	ds	4
	global	printf@c
printf@c:	; 1 bytes @ 0x17
	ds	1
??_UART_Transmit:	; 0 bytes @ 0x18
	ds	3
	global	UART_Transmit@i
UART_Transmit@i:	; 1 bytes @ 0x1B
	ds	1
;!
;!Data Sizes:
;!    Strings     3
;!    Constant    10
;!    Data        58
;!    BSS         157
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      11
;!    BANK0            80     28      76
;!    BANK1            80      0      32
;!    BANK2            80      0      68
;!    BANK3            80      0      67
;!    BANK4            80      0       0
;!    BANK5            80      0       0
;!    BANK6            16      0       0

;!
;!Pointer List with Targets:
;!
;!    printf@f	PTR const unsigned char  size(2) Largest target is 3
;!		 -> STR_1(CODE[3]), 
;!
;!    printf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_printf(BANK0[2]), 
;!
;!    S549$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    Timer1	PTR struct Timer1 size(1) Largest target is 3
;!		 -> NULL(NULL[0]), VarTimer1(BANK0[3]), 
;!
;!    Segment	PTR struct Segment size(1) Largest target is 26
;!		 -> NULL(NULL[0]), VarSegment(BANK0[26]), 
;!
;!    I2C	PTR struct I2C size(1) Largest target is 67
;!		 -> NULL(NULL[0]), VarI2C(BANK3[67]), 
;!
;!    UART	PTR struct UART size(1) Largest target is 68
;!		 -> NULL(NULL[0]), VarUart(BANK2[68]), 
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
;!    _main->_I2C_Main
;!    _printf->___lwmod
;!    ___lwmod->___lwdiv
;!    _Mcu_Initial->_I2C_Set
;!    _Mcu_Initial->_TMR1_Set
;!    _Mcu_Initial->_UART_Set
;!    _MainT->_setSegmentDisplayNumber
;!    _setSegmentDisplayNumber->___awdiv
;!    _setSegmentDisplayNumber->___awmod
;!    _I2C_Main->_I2C_Master_Reception
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->_UART_ISR
;!
;!Critical Paths under _main in BANK0
;!
;!    _UART_Main->_UART_Transmit
;!    _UART_Transmit->_printf
;!    _printf->___lwmod
;!    ___lwmod->___lwdiv
;!    _MainT->_setSegmentDisplayNumber
;!    _setSegmentDisplayNumber->___awdiv
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
;! (0) _main                                                 0     0      0    4016
;!                           _I2C_Main
;!                              _MainT
;!                      _MainT_Initial
;!                        _Mcu_Initial
;!             _SegmentDisplay_Initial
;!                _SegmentDisplay_Main
;!                          _UART_Main
;! ---------------------------------------------------------------------------------
;! (1) _UART_Main                                            0     0      0    1572
;!                       _UART_Receive
;!                      _UART_Transmit
;! ---------------------------------------------------------------------------------
;! (2) _UART_Transmit                                        4     4      0    1482
;!                                             24 BANK0      4     4      0
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (3) _printf                                              16    12      4    1383
;!                                              8 BANK0     16    12      4
;!                            ___lwdiv
;!                            ___lwmod
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (4) _putch                                                1     1      0      22
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              6     2      4     362
;!                                              8 COMMON     1     1      0
;!                                              3 BANK0      5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              8     4      4     371
;!                                              3 COMMON     5     1      4
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _UART_Receive                                         4     4      0      90
;!                                              3 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _SegmentDisplay_Main                                  2     2      0       0
;!                                              3 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _SegmentDisplay_Initial                               1     1      0       0
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Mcu_Initial                                          0     0      0       0
;!                            _I2C_Set
;!                             _IO_Set
;!                           _TMR1_Set
;!                           _UART_Set
;! ---------------------------------------------------------------------------------
;! (2) _UART_Set                                             1     1      0       0
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _TMR1_Set                                             1     1      0       0
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _IO_Set                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Set                                              1     1      0       0
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _MainT_Initial                                        1     1      0       0
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _MainT                                                4     4      0    2116
;!                                             10 BANK0      4     4      0
;!            _setSegmentDisplayNumber
;! ---------------------------------------------------------------------------------
;! (2) _setSegmentDisplayNumber                              7     5      2    1986
;!                                              8 COMMON     1     1      0
;!                                              4 BANK0      6     4      2
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4     823
;!                                              3 COMMON     5     1      4
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4     618
;!                                              3 COMMON     5     1      4
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Main                                             4     4      0     328
;!                                              6 COMMON     3     3      0
;!                                              0 BANK0      1     1      0
;!               _I2C_Master_Reception
;!            _I2C_Master_Transmission
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Master_Transmission                              2     2      0      99
;!                                              3 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Master_Reception                                 3     3      0      99
;!                                              3 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  1     1      0       0
;!                                              2 COMMON     1     1      0
;!                            _I2C_ISR
;!                           _TMR1_ISR
;!                           _UART_ISR
;! ---------------------------------------------------------------------------------
;! (6) _UART_ISR                                             3     3      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (6) _TMR1_ISR                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _I2C_ISR                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _I2C_Main
;!     _I2C_Master_Reception
;!     _I2C_Master_Transmission
;!   _MainT
;!     _setSegmentDisplayNumber
;!       ___awdiv
;!       ___awmod
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
;!
;! _ISR (ROOT)
;!   _I2C_ISR
;!   _TMR1_ISR
;!   _UART_ISR
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             1F0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      9       B       2       78.6%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      FE       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50     1C      4C       6       95.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50      0      20       8       40.0%
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
;!DATA                 0      0      FE      19        0.0%
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
;;		line 6 in file "I:\Program\PIC\Source_File\myMain.c"
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
;; Hardware stack levels required when called:    6
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
	file	"I:\Program\PIC\Source_File\myMain.c"
	line	6
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"I:\Program\PIC\Source_File\myMain.c"
	line	6
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 10
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	8
	
l2464:	
;myMain.c: 8: MainT_Initial();
	fcall	_MainT_Initial
	line	9
	
l2466:	
;myMain.c: 9: Mcu_Initial();
	fcall	_Mcu_Initial
	line	10
	
l2468:	
;myMain.c: 10: SegmentDisplay_Initial();
	fcall	_SegmentDisplay_Initial
	line	12
	
l2470:	
;myMain.c: 11: ;;
;myMain.c: 12: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	goto	l2472
	line	13
;myMain.c: 13: while(1)
	
l47:	
	line	17
	
l2472:	
;myMain.c: 14: {
;myMain.c: 17: if(TMain->T1_Timerout)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u3471
	goto	u3470
u3471:
	goto	l2472
u3470:
	line	19
	
l2474:	
;myMain.c: 18: {
;myMain.c: 19: TMain->T1_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	20
	
l2476:	
;myMain.c: 20: MainT();
	fcall	_MainT
	line	21
	
l2478:	
;myMain.c: 21: if(TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u3481
	goto	u3480
u3481:
	goto	l2472
u3480:
	line	24
	
l2480:	
;myMain.c: 22: {
;myMain.c: 23: ;;
;myMain.c: 24: I2C_Main();
	fcall	_I2C_Main
	line	25
	
l2482:	
;myMain.c: 25: UART_Main();
	fcall	_UART_Main
	line	26
	
l2484:	
;myMain.c: 26: SegmentDisplay_Main();
	fcall	_SegmentDisplay_Main
	goto	l2472
	line	27
	
l49:	
	goto	l2472
	line	28
	
l48:	
	goto	l2472
	line	29
	
l50:	
	line	13
	goto	l2472
	
l51:	
	line	30
	
l52:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_UART_Main

;; *************** function _UART_Main *****************
;; Defined at:
;;		line 524 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_UART_Receive
;;		_UART_Transmit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	524
global __ptext1
__ptext1:	;psect for function _UART_Main
psect	text1
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	524
	global	__size_of_UART_Main
	__size_of_UART_Main	equ	__end_of_UART_Main-_UART_Main
	
_UART_Main:	
;incstack = 0
	opt	stack 10
; Regs used in _UART_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	526
	
l2450:	
;MCU_16f1516_B1.c: 526: if(UART->RxGO)
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u3451
	goto	u3450
u3451:
	goto	l2458
u3450:
	line	528
	
l2452:	
;MCU_16f1516_B1.c: 527: {
;MCU_16f1516_B1.c: 528: UART->RxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	529
	
l2454:	
;MCU_16f1516_B1.c: 529: UART_Receive();
	fcall	_UART_Receive
	line	530
	
l2456:	
;MCU_16f1516_B1.c: 530: RCIE=1;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	531
;MCU_16f1516_B1.c: 531: }
	goto	l454
	line	532
	
l451:	
	line	534
	
l2458:	
;MCU_16f1516_B1.c: 532: else
;MCU_16f1516_B1.c: 533: {
;MCU_16f1516_B1.c: 534: if(UART->TxGO)
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u3461
	goto	u3460
u3461:
	goto	l454
u3460:
	line	536
	
l2460:	
;MCU_16f1516_B1.c: 535: {
;MCU_16f1516_B1.c: 536: UART->TxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	537
	
l2462:	
;MCU_16f1516_B1.c: 537: UART_Transmit();
	fcall	_UART_Transmit
	goto	l454
	line	538
	
l453:	
	goto	l454
	line	539
	
l452:	
	line	540
	
l454:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Main
	__end_of_UART_Main:
	signat	_UART_Main,88
	global	_UART_Transmit

;; *************** function _UART_Transmit *****************
;; Defined at:
;;		line 541 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   27[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_printf
;; This function is called by:
;;		_UART_Main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	541
global __ptext2
__ptext2:	;psect for function _UART_Transmit
psect	text2
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	541
	global	__size_of_UART_Transmit
	__size_of_UART_Transmit	equ	__end_of_UART_Transmit-_UART_Transmit
	
_UART_Transmit:	
;incstack = 0
	opt	stack 10
; Regs used in _UART_Transmit: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	544
	
l2356:	
;MCU_16f1516_B1.c: 543: char i;
;MCU_16f1516_B1.c: 544: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(UART_Transmit@i)
	
l2358:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l459
u3270:
	goto	l462
	
l2360:	
	goto	l462
	line	545
	
l457:	
	line	546
;MCU_16f1516_B1.c: 545: {
;MCU_16f1516_B1.c: 546: while(!TRMT);
	goto	l459
	
l460:	
	
l459:	
	movlb 3	; select bank3
	btfss	(3313/8)^0180h,(3313)&7	;volatile
	goto	u3281
	goto	u3280
u3281:
	goto	l459
u3280:
	goto	l2362
	
l461:	
	line	547
	
l2362:	
;MCU_16f1516_B1.c: 547: printf("%d",UART->TxData[i]);
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
	line	544
	
l2364:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_UART_Transmit+0)+0
	movf	(??_UART_Transmit+0)+0,w
	addwf	(UART_Transmit@i),f
	
l2366:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u3291
	goto	u3290
u3291:
	goto	l459
u3290:
	goto	l462
	
l458:	
	line	551
	
l462:	
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
;;  f               2    8[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  _val            4   19[BANK0 ] struct .
;;  c               1   23[BANK0 ] char 
;;  prec            1   18[BANK0 ] char 
;;  flag            1   17[BANK0 ] unsigned char 
;;  ap              1   16[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_putch
;; This function is called by:
;;		_UART_Transmit
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	464
global __ptext3
__ptext3:	;psect for function _printf
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	464
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
;incstack = 0
	opt	stack 10
; Regs used in _printf: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	542
	
l2186:	
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
	goto	l2232
	
l497:	
	line	547
	
l2188:	
;doprnt.c: 547: if(c != '%')
	movf	(printf@c),w
	xorlw	025h&0ffh
	skipnz
	goto	u2711
	goto	u2710
u2711:
	goto	l2192
u2710:
	line	550
	
l2190:	
;doprnt.c: 549: {
;doprnt.c: 550: (putch(c) );
	movf	(printf@c),w
	fcall	_putch
	line	551
;doprnt.c: 551: continue;
	goto	l2232
	line	552
	
l498:	
	line	557
	
l2192:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	movlb 0	; select bank0
	clrf	(printf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l2196
	line	646
;doprnt.c: 646: case 0:
	
l500:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l515
	line	706
;doprnt.c: 706: case 'd':
	
l502:	
	goto	l2198
	line	707
	
l503:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l2198
	line	811
;doprnt.c: 811: default:
	
l505:	
	line	822
;doprnt.c: 822: continue;
	goto	l2232
	line	831
	
l2194:	
;doprnt.c: 831: }
	goto	l2198
	line	644
	
l499:	
	
l2196:	
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
	goto	l515
	xorlw	100^0	; case 100
	skipnz
	goto	l2198
	xorlw	105^100	; case 105
	skipnz
	goto	l2198
	goto	l2232
	opt asmopt_on

	line	831
	
l504:	
	line	1268
	
l2198:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	movf	(printf@ap),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(printf@_val)
	moviw	[1]fsr1
	movwf	(printf@_val+1)
	
l2200:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1270
	
l2202:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(printf@_val+1),7
	goto	u2721
	goto	u2720
u2721:
	goto	l2208
u2720:
	line	1271
	
l2204:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	iorwf	(printf@flag),f
	line	1272
	
l2206:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(printf@_val),f
	comf	(printf@_val+1),f
	incf	(printf@_val),f
	skipnz
	incf	(printf@_val+1),f
	goto	l2208
	line	1273
	
l506:	
	line	1314
	
l2208:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(printf@c)
	incf	(printf@c),f
	movf	(printf@c),w
	xorlw	05h&0ffh
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l2212
u2730:
	goto	l2220
	
l2210:	
	goto	l2220
	line	1315
	
l507:	
	
l2212:	
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
	goto	u2745
	movf	0+(??_printf+2)+0,w
	subwf	(printf@_val),w
u2745:
	skipnc
	goto	u2741
	goto	u2740
u2741:
	goto	l2216
u2740:
	goto	l2220
	line	1316
	
l2214:	
;doprnt.c: 1316: break;
	goto	l2220
	
l509:	
	line	1314
	
l2216:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l2218:	
	movf	(printf@c),w
	xorlw	05h&0ffh
	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l2212
u2750:
	goto	l2220
	
l508:	
	line	1447
	
l2220:	
;doprnt.c: 1431: {
;doprnt.c: 1447: if(flag & 0x03)
	movf	(printf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l2224
u2760:
	line	1448
	
l2222:	
;doprnt.c: 1448: (putch('-') );
	movlw	(02Dh)
	fcall	_putch
	goto	l2224
	
l510:	
	line	1481
	
l2224:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movlb 0	; select bank0
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l2230
	
l512:	
	line	1498
	
l2226:	
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
	movf	(1+(?___lwdiv)),w
	movlb 0	; select bank0
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
	
l2228:	
;doprnt.c: 1532: }
;doprnt.c: 1533: (putch(c) );
	movf	(printf@c),w
	fcall	_putch
	goto	l2230
	line	1534
	
l511:	
	line	1483
	
l2230:	
	movlw	(-1)
	movlb 0	; select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1&0ffh
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l2226
u2770:
	goto	l2232
	
l513:	
	goto	l2232
	line	1542
	
l496:	
	line	545
	
l2232:	
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
	goto	u2781
	goto	u2780
u2781:
	goto	l2188
u2780:
	goto	l515
	
l514:	
	goto	l515
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l501:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _printf is never used
	
l515:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 590 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		_getche
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	590
global __ptext4
__ptext4:	;psect for function _putch
psect	text4
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	590
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
;incstack = 0
	opt	stack 10
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movwf	(putch@byte)
	line	593
	
l1518:	
;MCU_16f1516_B1.c: 593: while(!TXIF)
	goto	l473
	
l474:	
	line	594
;MCU_16f1516_B1.c: 594: continue;
	
l473:	
	line	593
	movlb 0	; select bank0
	btfss	(140/8),(140)&7	;volatile
	goto	u1301
	goto	u1300
u1301:
	goto	l473
u1300:
	goto	l1520
	
l475:	
	line	595
	
l1520:	
;MCU_16f1516_B1.c: 595: TXREG = byte;
	movf	(putch@byte),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	596
	
l476:	
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
;;  divisor         2    3[BANK0 ] unsigned int 
;;  dividend        2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       4       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       5       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___lwmod
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 10
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l2164:	
	movlb 0	; select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2651
	goto	u2650
u2651:
	goto	l2182
u2650:
	line	14
	
l2166:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l2172
	
l860:	
	line	16
	
l2168:	
	movlw	01h
	
u2665:
	lslf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	decfsz	wreg,f
	goto	u2665
	line	17
	
l2170:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l2172
	line	18
	
l859:	
	line	15
	
l2172:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l2168
u2670:
	goto	l2174
	
l861:	
	goto	l2174
	line	19
	
l862:	
	line	20
	
l2174:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2685
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2685:
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l2178
u2680:
	line	21
	
l2176:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	subwfb	(___lwmod@dividend+1),f
	goto	l2178
	
l863:	
	line	22
	
l2178:	
	movlw	01h
	
u2695:
	lsrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	decfsz	wreg,f
	goto	u2695
	line	23
	
l2180:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2174
u2700:
	goto	l2182
	
l864:	
	goto	l2182
	line	24
	
l858:	
	line	25
	
l2182:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l865
	
l2184:	
	line	26
	
l865:	
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
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    1[BANK0 ] unsigned int 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         5       3       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___lwdiv
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 10
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2138:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2140:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2581
	goto	u2580
u2581:
	goto	l2160
u2580:
	line	16
	
l2142:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2148
	
l850:	
	line	18
	
l2144:	
	movlw	01h
	
u2595:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u2595
	line	19
	
l2146:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2148
	line	20
	
l849:	
	line	17
	
l2148:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l2144
u2600:
	goto	l2150
	
l851:	
	goto	l2150
	line	21
	
l852:	
	line	22
	
l2150:	
	movlw	01h
	
u2615:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u2615
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2625
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2625:
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l2156
u2620:
	line	24
	
l2152:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	25
	
l2154:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2156
	line	26
	
l853:	
	line	27
	
l2156:	
	movlw	01h
	
u2635:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u2635
	line	28
	
l2158:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l2150
u2640:
	goto	l2160
	
l854:	
	goto	l2160
	line	29
	
l848:	
	line	30
	
l2160:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l855
	
l2162:	
	line	31
	
l855:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_UART_Receive

;; *************** function _UART_Receive *****************
;; Defined at:
;;		line 552 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    6[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_Main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	552
global __ptext7
__ptext7:	;psect for function _UART_Receive
psect	text7
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	552
	global	__size_of_UART_Receive
	__size_of_UART_Receive	equ	__end_of_UART_Receive-_UART_Receive
	
_UART_Receive:	
;incstack = 0
	opt	stack 12
; Regs used in _UART_Receive: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	556
	
l1840:	
;MCU_16f1516_B1.c: 554: char i;
;MCU_16f1516_B1.c: 556: TMain->Test=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	558
	
l1842:	
;MCU_16f1516_B1.c: 558: for(i=0;i<32;i++)
	clrf	(UART_Receive@i)
	
l1844:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u2101
	goto	u2100
u2101:
	goto	l1848
u2100:
	goto	l1854
	
l1846:	
	goto	l1854
	line	559
	
l465:	
	line	560
	
l1848:	
;MCU_16f1516_B1.c: 559: {
;MCU_16f1516_B1.c: 560: I2C->BufferWriter[i]=UART->RxData[i];
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
	line	558
	
l1850:	
	movlw	(01h)
	movwf	(??_UART_Receive+0)+0
	movf	(??_UART_Receive+0)+0,w
	addwf	(UART_Receive@i),f
	
l1852:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u2111
	goto	u2110
u2111:
	goto	l1848
u2110:
	goto	l1854
	
l466:	
	line	562
	
l1854:	
;MCU_16f1516_B1.c: 561: }
;MCU_16f1516_B1.c: 562: I2C->MasterTxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	576
	
l467:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Receive
	__end_of_UART_Receive:
	signat	_UART_Receive,88
	global	_SegmentDisplay_Main

;; *************** function _SegmentDisplay_Main *****************
;; Defined at:
;;		line 72 in file "I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
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
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
	line	72
global __ptext8
__ptext8:	;psect for function _SegmentDisplay_Main
psect	text8
	file	"I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
	line	72
	global	__size_of_SegmentDisplay_Main
	__size_of_SegmentDisplay_Main	equ	__end_of_SegmentDisplay_Main-_SegmentDisplay_Main
	
_SegmentDisplay_Main:	
;incstack = 0
	opt	stack 13
; Regs used in _SegmentDisplay_Main: [wreg-fsr1h+status,2+status,0]
	line	74
	
l1994:	
;SegmentDisplay_A2.c: 74: if(Segment->GO)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u2321
	goto	u2320
u2321:
	goto	l138
u2320:
	line	76
	
l1996:	
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
	
l1998:	
;SegmentDisplay_A2.c: 77: if(Segment->Time == 5)
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	05h&0ffh
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l138
u2330:
	line	79
	
l2000:	
;SegmentDisplay_A2.c: 78: {
;SegmentDisplay_A2.c: 79: Segment->Time=0;
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	80
	
l2002:	
;SegmentDisplay_A2.c: 80: PORTA&=0x0f;
	movlw	(0Fh)
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	(??_SegmentDisplay_Main+0)+0,w
	andwf	(12),f	;volatile
	line	81
	
l2004:	
;SegmentDisplay_A2.c: 81: if(Segment->ComCount == 0)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l2008
u2340:
	line	83
	
l2006:	
;SegmentDisplay_A2.c: 82: {
;SegmentDisplay_A2.c: 83: RA4=1;
	bsf	(100/8),(100)&7	;volatile
	line	84
;SegmentDisplay_A2.c: 84: }
	goto	l2020
	line	85
	
l129:	
	
l2008:	
;SegmentDisplay_A2.c: 85: else if(Segment->ComCount == 1)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l2012
u2350:
	line	87
	
l2010:	
;SegmentDisplay_A2.c: 86: {
;SegmentDisplay_A2.c: 87: RA5=1;
	bsf	(101/8),(101)&7	;volatile
	line	88
;SegmentDisplay_A2.c: 88: }
	goto	l2020
	line	89
	
l131:	
	
l2012:	
;SegmentDisplay_A2.c: 89: else if(Segment->ComCount == 2)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	02h&0ffh
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l2016
u2360:
	line	91
	
l2014:	
;SegmentDisplay_A2.c: 90: {
;SegmentDisplay_A2.c: 91: RA6=1;
	bsf	(102/8),(102)&7	;volatile
	line	92
;SegmentDisplay_A2.c: 92: }
	goto	l2020
	line	93
	
l133:	
	
l2016:	
;SegmentDisplay_A2.c: 93: else if(Segment->ComCount == 3)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	03h&0ffh
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l2020
u2370:
	line	95
	
l2018:	
;SegmentDisplay_A2.c: 94: {
;SegmentDisplay_A2.c: 95: RA7=1;
	bsf	(103/8),(103)&7	;volatile
	goto	l2020
	line	96
	
l135:	
	goto	l2020
	line	97
	
l134:	
	goto	l2020
	
l132:	
	goto	l2020
	
l130:	
	
l2020:	
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
	
l2022:	
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
	goto	u2381
	goto	u2380
u2381:
	goto	l2026
u2380:
	line	100
	
l2024:	
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
	goto	l138
	line	102
	
l136:	
	line	104
	
l2026:	
;SegmentDisplay_A2.c: 102: else
;SegmentDisplay_A2.c: 103: {
;SegmentDisplay_A2.c: 104: Segment->ComCount=0;
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l138
	line	105
	
l137:	
	goto	l138
	line	106
	
l128:	
	goto	l138
	line	107
	
l127:	
	line	108
	
l138:	
	return
	opt stack 0
GLOBAL	__end_of_SegmentDisplay_Main
	__end_of_SegmentDisplay_Main:
	signat	_SegmentDisplay_Main,88
	global	_SegmentDisplay_Initial

;; *************** function _SegmentDisplay_Initial *****************
;; Defined at:
;;		line 8 in file "I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	8
global __ptext9
__ptext9:	;psect for function _SegmentDisplay_Initial
psect	text9
	file	"I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
	line	8
	global	__size_of_SegmentDisplay_Initial
	__size_of_SegmentDisplay_Initial	equ	__end_of_SegmentDisplay_Initial-_SegmentDisplay_Initial
	
_SegmentDisplay_Initial:	
;incstack = 0
	opt	stack 13
; Regs used in _SegmentDisplay_Initial: [wregfsr1]
	line	10
	
l1892:	
;SegmentDisplay_A2.c: 10: Segment=&VarSegment;
	movlw	(_VarSegment)&0ffh
	movwf	(??_SegmentDisplay_Initial+0)+0
	movf	(??_SegmentDisplay_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_Segment)
	line	11
	
l1894:	
;SegmentDisplay_A2.c: 11: Segment->Enable=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	13
	
l1896:	
;SegmentDisplay_A2.c: 13: Segment->Dec=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	18
	
l107:	
	return
	opt stack 0
GLOBAL	__end_of_SegmentDisplay_Initial
	__end_of_SegmentDisplay_Initial:
	signat	_SegmentDisplay_Initial,88
	global	_Mcu_Initial

;; *************** function _Mcu_Initial *****************
;; Defined at:
;;		line 11 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_I2C_Set
;;		_IO_Set
;;		_TMR1_Set
;;		_UART_Set
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	11
global __ptext10
__ptext10:	;psect for function _Mcu_Initial
psect	text10
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	11
	global	__size_of_Mcu_Initial
	__size_of_Mcu_Initial	equ	__end_of_Mcu_Initial-_Mcu_Initial
	
_Mcu_Initial:	
;incstack = 0
	opt	stack 12
; Regs used in _Mcu_Initial: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l1874:	
;MCU_16f1516_B1.c: 14: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l1876:	
;MCU_16f1516_B1.c: 16: IO_Set();
	fcall	_IO_Set
	line	18
	
l1878:	
;MCU_16f1516_B1.c: 18: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	20
	
l1880:	
;MCU_16f1516_B1.c: 20: TMR1_Set();
	fcall	_TMR1_Set
	line	22
	
l1882:	
;MCU_16f1516_B1.c: 22: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	26
	
l1884:	
;MCU_16f1516_B1.c: 26: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	28
	
l1886:	
;MCU_16f1516_B1.c: 28: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	30
	
l1888:	
;MCU_16f1516_B1.c: 30: I2C_Set();
	fcall	_I2C_Set
	line	32
	
l1890:	
;MCU_16f1516_B1.c: 32: UART_Set();
	fcall	_UART_Set
	line	35
	
l301:	
	return
	opt stack 0
GLOBAL	__end_of_Mcu_Initial
	__end_of_Mcu_Initial:
	signat	_Mcu_Initial,88
	global	_UART_Set

;; *************** function _UART_Set *****************
;; Defined at:
;;		line 489 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	489
global __ptext11
__ptext11:	;psect for function _UART_Set
psect	text11
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	489
	global	__size_of_UART_Set
	__size_of_UART_Set	equ	__end_of_UART_Set-_UART_Set
	
_UART_Set:	
;incstack = 0
	opt	stack 12
; Regs used in _UART_Set: [wreg+status,2]
	line	491
	
l1782:	
;MCU_16f1516_B1.c: 491: UART=&VarUart;
	movlw	(_VarUart)&0ffh
	movwf	(??_UART_Set+0)+0
	movf	(??_UART_Set+0)+0,w
	movlb 0	; select bank0
	movwf	(_UART)
	line	492
	
l1784:	
;MCU_16f1516_B1.c: 492: TRISC7 = 1;
	movlb 1	; select bank1
	bsf	(1143/8)^080h,(1143)&7	;volatile
	line	493
	
l1786:	
;MCU_16f1516_B1.c: 493: TRISC6 = 1;
	bsf	(1142/8)^080h,(1142)&7	;volatile
	line	494
;MCU_16f1516_B1.c: 494: SPBRG = ((int)(16000000L/(16UL * 19200) -1));
	movlw	(033h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	495
	
l1788:	
;MCU_16f1516_B1.c: 495: SPBRGH = 0;
	clrf	(412)^0180h	;volatile
	line	496
	
l1790:	
;MCU_16f1516_B1.c: 496: BRG16 = 0;
	bcf	(3323/8)^0180h,(3323)&7	;volatile
	line	497
	
l1792:	
;MCU_16f1516_B1.c: 497: RCSTA = (0|0x90);
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	line	498
	
l1794:	
;MCU_16f1516_B1.c: 498: TXSTA = (0x4|0|0x20);
	movlw	(024h)
	movwf	(414)^0180h	;volatile
	line	499
	
l1796:	
;MCU_16f1516_B1.c: 499: TX9=0;
	bcf	(3318/8)^0180h,(3318)&7	;volatile
	line	500
	
l1798:	
;MCU_16f1516_B1.c: 500: RX9=0;
	bcf	(3310/8)^0180h,(3310)&7	;volatile
	line	501
	
l1800:	
;MCU_16f1516_B1.c: 501: TXIE=0;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7	;volatile
	line	502
	
l1802:	
;MCU_16f1516_B1.c: 502: RCIE=1;
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	503
	
l1804:	
;MCU_16f1516_B1.c: 503: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	504
	
l1806:	
;MCU_16f1516_B1.c: 504: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	505
	
l440:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Set
	__end_of_UART_Set:
	signat	_UART_Set,88
	global	_TMR1_Set

;; *************** function _TMR1_Set *****************
;; Defined at:
;;		line 114 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	114
global __ptext12
__ptext12:	;psect for function _TMR1_Set
psect	text12
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	114
	global	__size_of_TMR1_Set
	__size_of_TMR1_Set	equ	__end_of_TMR1_Set-_TMR1_Set
	
_TMR1_Set:	
;incstack = 0
	opt	stack 12
; Regs used in _TMR1_Set: [wreg]
	line	116
	
l1768:	
;MCU_16f1516_B1.c: 116: Timer1=&VarTimer1;
	movlw	(_VarTimer1)&0ffh
	movwf	(??_TMR1_Set+0)+0
	movf	(??_TMR1_Set+0)+0,w
	movwf	(_Timer1)
	line	117
;MCU_16f1516_B1.c: 117: T1CON=(0x40 | 0x00 | 0x01);
	movlw	(041h)
	movlb 0	; select bank0
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
	
l1770:	
;MCU_16f1516_B1.c: 120: TMR1IE=1;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	121
	
l1772:	
;MCU_16f1516_B1.c: 121: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	122
	
l1774:	
;MCU_16f1516_B1.c: 122: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	123
	
l310:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_Set
	__end_of_TMR1_Set:
	signat	_TMR1_Set,88
	global	_IO_Set

;; *************** function _IO_Set *****************
;; Defined at:
;;		line 37 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	37
global __ptext13
__ptext13:	;psect for function _IO_Set
psect	text13
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	37
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
;incstack = 0
	opt	stack 12
; Regs used in _IO_Set: [wreg+status,2]
	line	39
	
l1752:	
;MCU_16f1516_B1.c: 39: TRISA=0b00001001;;
	movlw	(09h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	40
	
l1754:	
;MCU_16f1516_B1.c: 40: TRISB=0b00000000;;
	clrf	(141)^080h	;volatile
	line	41
	
l1756:	
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
	
l1758:	
;MCU_16f1516_B1.c: 45: ANSELA=0b00000001;;
	movlw	(01h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	46
	
l1760:	
;MCU_16f1516_B1.c: 46: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	47
	
l1762:	
;MCU_16f1516_B1.c: 47: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	48
	
l1764:	
;MCU_16f1516_B1.c: 48: PORTA=0b00001001;;
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	49
;MCU_16f1516_B1.c: 49: PORTB=0b00000000;;
	clrf	(13)	;volatile
	line	50
	
l1766:	
;MCU_16f1516_B1.c: 50: PORTC=0b00011001;;
	movlw	(019h)
	movwf	(14)	;volatile
	line	51
	
l304:	
	return
	opt stack 0
GLOBAL	__end_of_IO_Set
	__end_of_IO_Set:
	signat	_IO_Set,88
	global	_I2C_Set

;; *************** function _I2C_Set *****************
;; Defined at:
;;		line 233 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	233
global __ptext14
__ptext14:	;psect for function _I2C_Set
psect	text14
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	233
	global	__size_of_I2C_Set
	__size_of_I2C_Set	equ	__end_of_I2C_Set-_I2C_Set
	
_I2C_Set:	
;incstack = 0
	opt	stack 12
; Regs used in _I2C_Set: [wreg+status,2]
	line	235
	
l1776:	
;MCU_16f1516_B1.c: 235: I2C=&VarI2C;
	movlw	(_VarI2C)&0ffh
	movwf	(??_I2C_Set+0)+0
	movf	(??_I2C_Set+0)+0,w
	movlb 0	; select bank0
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
	
l1778:	
;MCU_16f1516_B1.c: 239: SSPCON2 = 0;
	clrf	(534)^0200h	;volatile
	line	241
	
l1780:	
;MCU_16f1516_B1.c: 241: SSPCON1=0b101000;
	movlw	(028h)
	movwf	(533)^0200h	;volatile
	line	258
	
l318:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Set
	__end_of_I2C_Set:
	signat	_I2C_Set,88
	global	_MainT_Initial

;; *************** function _MainT_Initial *****************
;; Defined at:
;;		line 33 in file "I:\Program\PIC\Source_File\myMain.c"
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
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"I:\Program\PIC\Source_File\myMain.c"
	line	33
global __ptext15
__ptext15:	;psect for function _MainT_Initial
psect	text15
	file	"I:\Program\PIC\Source_File\myMain.c"
	line	33
	global	__size_of_MainT_Initial
	__size_of_MainT_Initial	equ	__end_of_MainT_Initial-_MainT_Initial
	
_MainT_Initial:	
;incstack = 0
	opt	stack 13
; Regs used in _MainT_Initial: [wregfsr1]
	line	35
	
l1868:	
;myMain.c: 35: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_TMain)
	line	36
	
l1870:	
;myMain.c: 36: TMain->FirstOpen=1;
	movf	(_TMain),w
	addlw	0Dh
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	37
	
l1872:	
;myMain.c: 37: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_Product)
	line	38
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_MainT_Initial
	__end_of_MainT_Initial:
	signat	_MainT_Initial,88
	global	_MainT

;; *************** function _MainT *****************
;; Defined at:
;;		line 41 in file "I:\Program\PIC\Source_File\myMain.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   13[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setSegmentDisplayNumber
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	41
global __ptext16
__ptext16:	;psect for function _MainT
psect	text16
	file	"I:\Program\PIC\Source_File\myMain.c"
	line	41
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
;incstack = 0
	opt	stack 11
; Regs used in _MainT: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	45
	
l2368:	
;myMain.c: 43: char i;
;myMain.c: 45: if(!TMain->PowerON)
	movlb 0	; select bank0
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u3301
	goto	u3300
u3301:
	goto	l2376
u3300:
	line	47
	
l2370:	
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
	
l2372:	
;myMain.c: 48: if(TMain->PowerCount == 1500)
	incf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(05DCh)
	skipz
	goto	u3315
	moviw	[1]fsr1
	xorlw	high(05DCh)
u3315:
	skipz
	goto	u3311
	goto	u3310
u3311:
	goto	l68
u3310:
	line	50
	
l2374:	
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
	goto	l68
	line	56
	
l59:	
	line	57
;myMain.c: 56: }
;myMain.c: 57: }
	goto	l68
	line	58
	
l58:	
	line	60
	
l2376:	
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
	
l2378:	
;myMain.c: 61: if(TMain->Count1 == 2000)
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(07D0h)
	skipz
	goto	u3325
	moviw	[1]fsr1
	xorlw	high(07D0h)
u3325:
	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l2408
u3320:
	line	63
	
l2380:	
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
	
l2382:	
;myMain.c: 64: RA2=~RA2;
	movlw	1<<((98)&7)
	xorwf	((98)/8),f
	line	67
	
l2384:	
;myMain.c: 67: for(i=0;i<32;i++){
	clrf	(MainT@i)
	
l2386:	
	movlw	(020h)
	subwf	(MainT@i),w
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l2390
u3330:
	goto	l2396
	
l2388:	
	goto	l2396
	
l62:	
	line	68
	
l2390:	
;myMain.c: 68: UART->TxData[i]=64-i;
	decf	(MainT@i),w
	xorlw	0ffh
	addlw	040h
	movwf	(??_MainT+0)+0
	movf	(MainT@i),w
	addwf	(_UART),w
	movwf	(??_MainT+1)+0
	movf	0+(??_MainT+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_MainT+0)+0,w
	movwf	indf1
	line	67
	
l2392:	
	movlw	(01h)
	movwf	(??_MainT+0)+0
	movf	(??_MainT+0)+0,w
	addwf	(MainT@i),f
	
l2394:	
	movlw	(020h)
	subwf	(MainT@i),w
	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l2390
u3340:
	goto	l2396
	
l63:	
	line	70
	
l2396:	
;myMain.c: 74: if(TMain->Flag == 0)
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	line	74
	goto	l2398
	line	78
;myMain.c: 75: {
	
l64:	
	line	80
	
l2398:	
;myMain.c: 78: }
;myMain.c: 80: if(TMain->Test)
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u3351
	goto	u3350
u3351:
	goto	l2408
u3350:
	line	82
	
l2400:	
;myMain.c: 81: {
;myMain.c: 82: setSegmentDisplayNumber(I2C->BufferReader[I2C->Count]);
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	addwf	(_I2C),w
	movwf	(??_MainT+0)+0
	movf	0+(??_MainT+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(??_MainT+1)+0
	clrf	(??_MainT+1)+0+1
	movf	0+(??_MainT+1)+0,w
	movwf	(setSegmentDisplayNumber@number)
	movf	1+(??_MainT+1)+0,w
	movwf	(setSegmentDisplayNumber@number+1)
	fcall	_setSegmentDisplayNumber
	line	83
	
l2402:	
;myMain.c: 83: I2C->Count++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_MainT+0)+0
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_MainT+0)+0,w
	addwf	indf1,f
	line	84
	
l2404:	
;myMain.c: 84: if(I2C->Count==32)
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	020h&0ffh
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l2408
u3360:
	line	86
	
l2406:	
;myMain.c: 85: {
;myMain.c: 86: I2C->Count=0;
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l2408
	line	87
	
l66:	
	goto	l2408
	line	88
	
l65:	
	goto	l2408
	line	101
	
l61:	
	line	104
	
l2408:	
;myMain.c: 87: }
;myMain.c: 88: }
;myMain.c: 101: }
;myMain.c: 104: TMain->Count2++;
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	105
	
l2410:	
;myMain.c: 105: if(TMain->Count2 == 2000)
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(07D0h)
	skipz
	goto	u3375
	moviw	[1]fsr1
	xorlw	high(07D0h)
u3375:
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l68
u3370:
	line	107
	
l2412:	
;myMain.c: 106: {
;myMain.c: 107: TMain->Count2=0;
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l68
	line	120
	
l67:	
	goto	l68
	line	123
	
l60:	
	line	124
	
l68:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
	signat	_MainT,88
	global	_setSegmentDisplayNumber

;; *************** function _setSegmentDisplayNumber *****************
;; Defined at:
;;		line 20 in file "I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
;; Parameters:    Size  Location     Type
;;  number          2    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               1    8[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0
;;      Totals:         1       6       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
	line	20
global __ptext17
__ptext17:	;psect for function _setSegmentDisplayNumber
psect	text17
	file	"I:\Program\PIC\Source_File\SegmentDisplay_A2.c"
	line	20
	global	__size_of_setSegmentDisplayNumber
	__size_of_setSegmentDisplayNumber	equ	__end_of_setSegmentDisplayNumber-_setSegmentDisplayNumber
	
_setSegmentDisplayNumber:	
;incstack = 0
	opt	stack 11
; Regs used in _setSegmentDisplayNumber: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	23
	
l2272:	
;SegmentDisplay_A2.c: 22: char i;
;SegmentDisplay_A2.c: 23: if(Segment->Enable)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u2881
	goto	u2880
u2881:
	goto	l124
u2880:
	line	25
	
l2274:	
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
	goto	u2891
	goto	u2890
u2891:
	goto	l2282
u2890:
	line	28
	
l2276:	
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
	
l2278:	
;SegmentDisplay_A2.c: 29: Segment->Num[1]=((number>>4)&0x000f);
	movf	(setSegmentDisplayNumber@number+1),w
	movwf	(??_setSegmentDisplayNumber+0)+0+1
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	04h
	movwf	(??_setSegmentDisplayNumber+2)+0
u2905:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	(??_setSegmentDisplayNumber+2)+0,f
	goto	u2905
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
	
l2280:	
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
u2915:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	(??_setSegmentDisplayNumber+2)+0,f
	goto	u2915
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
	goto	l2310
	line	33
	
l111:	
	
l2282:	
;SegmentDisplay_A2.c: 33: else if(Segment->Dec)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u2921
	goto	u2920
u2921:
	goto	l2310
u2920:
	line	35
	
l2284:	
;SegmentDisplay_A2.c: 34: {
;SegmentDisplay_A2.c: 35: if(number > 0x270f)
	movf	(setSegmentDisplayNumber@number+1),w
	xorlw	80h
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	(high(02710h))^80h
	subwf	(??_setSegmentDisplayNumber+0)+0,w
	skipz
	goto	u2935
	movlw	low(02710h)
	subwf	(setSegmentDisplayNumber@number),w
u2935:

	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l2298
u2930:
	line	37
	
l2286:	
;SegmentDisplay_A2.c: 36: {
;SegmentDisplay_A2.c: 37: for(i=0 ; i<4; i++)
	clrf	(setSegmentDisplayNumber@i)
	
l2288:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l2292
u2940:
	goto	l2310
	
l2290:	
	goto	l2310
	line	38
	
l115:	
	line	39
	
l2292:	
;SegmentDisplay_A2.c: 38: {
;SegmentDisplay_A2.c: 39: Segment->Num[i]=16;
	movlw	(010h)
	movlb 0	; select bank0
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
	
l2294:	
	movlw	(01h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(??_setSegmentDisplayNumber+0)+0,w
	addwf	(setSegmentDisplayNumber@i),f
	
l2296:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l2292
u2950:
	goto	l2310
	
l116:	
	line	41
;SegmentDisplay_A2.c: 40: }
;SegmentDisplay_A2.c: 41: }
	goto	l2310
	line	42
	
l114:	
	line	44
	
l2298:	
;SegmentDisplay_A2.c: 42: else
;SegmentDisplay_A2.c: 43: {
;SegmentDisplay_A2.c: 44: Segment->Num[3]=(number/1000);
	movlw	low(03E8h)
	movwf	(___awdiv@divisor)
	movlw	high(03E8h)
	movwf	((___awdiv@divisor))+1
	movlb 0	; select bank0
	movf	(setSegmentDisplayNumber@number+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(setSegmentDisplayNumber@number),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movlb 0	; select bank0
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	45
	
l2300:	
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
	movf	(1+(?___awmod)),w
	movlb 0	; select bank0
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	46
	
l2302:	
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
	movf	(0+(?___awdiv)),w
	movlb 0	; select bank0
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
	movf	(1+(?___awmod)),w
	movlb 0	; select bank0
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	48
	
l2304:	
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
	movf	(0+(?___awdiv)),w
	movlb 0	; select bank0
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	line	49
	
l2306:	
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
	movf	(1+(?___awmod)),w
	movlb 0	; select bank0
	clrf	(setSegmentDisplayNumber@number+1)
	addwf	(setSegmentDisplayNumber@number+1)
	movf	(0+(?___awmod)),w
	clrf	(setSegmentDisplayNumber@number)
	addwf	(setSegmentDisplayNumber@number)

	line	50
	
l2308:	
;SegmentDisplay_A2.c: 50: Segment->Num[0]=number;
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	goto	l2310
	line	51
	
l117:	
	goto	l2310
	line	52
	
l113:	
	goto	l2310
	line	53
	
l112:	
	
l2310:	
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
	goto	u2961
	goto	u2960
u2961:
	goto	l2314
u2960:
	line	55
	
l2312:	
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
	goto	l124
	line	57
	
l118:	
	
l2314:	
;SegmentDisplay_A2.c: 57: else if(Segment->Num[2] > 0)
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u2971
	goto	u2970
u2971:
	goto	l2318
u2970:
	line	59
	
l2316:	
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
	goto	l124
	line	61
	
l120:	
	
l2318:	
;SegmentDisplay_A2.c: 61: else if(Segment->Num[1] > 0)
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u2981
	goto	u2980
u2981:
	goto	l2322
u2980:
	line	63
	
l2320:	
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
	goto	l124
	line	65
	
l122:	
	line	67
	
l2322:	
;SegmentDisplay_A2.c: 65: else
;SegmentDisplay_A2.c: 66: {
;SegmentDisplay_A2.c: 67: Segment->DisplayCount=0;
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l124
	line	68
	
l123:	
	goto	l124
	
l121:	
	goto	l124
	
l119:	
	goto	l124
	line	69
	
l110:	
	line	70
	
l124:	
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
;;  divisor         2    3[COMMON] int 
;;  dividend        2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         5       2       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext18
__ptext18:	;psect for function ___awmod
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 11
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l2234:	
	movlb 0	; select bank0
	clrf	(___awmod@sign)
	line	14
	
l2236:	
	btfss	(___awmod@dividend+1),7
	goto	u2791
	goto	u2790
u2791:
	goto	l2242
u2790:
	line	15
	
l2238:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l2240:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l2242
	line	17
	
l654:	
	line	18
	
l2242:	
	btfss	(___awmod@divisor+1),7
	goto	u2801
	goto	u2800
u2801:
	goto	l2246
u2800:
	line	19
	
l2244:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2246
	
l655:	
	line	20
	
l2246:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2811
	goto	u2810
u2811:
	goto	l2264
u2810:
	line	21
	
l2248:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l2254
	
l658:	
	line	23
	
l2250:	
	movlw	01h
	
u2825:
	lslf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	decfsz	wreg,f
	goto	u2825
	line	24
	
l2252:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2254
	line	25
	
l657:	
	line	22
	
l2254:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l2250
u2830:
	goto	l2256
	
l659:	
	goto	l2256
	line	26
	
l660:	
	line	27
	
l2256:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2845
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2845:
	skipc
	goto	u2841
	goto	u2840
u2841:
	goto	l2260
u2840:
	line	28
	
l2258:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	subwfb	(___awmod@dividend+1),f
	goto	l2260
	
l661:	
	line	29
	
l2260:	
	movlw	01h
	
u2855:
	lsrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	decfsz	wreg,f
	goto	u2855
	line	30
	
l2262:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2256
u2860:
	goto	l2264
	
l662:	
	goto	l2264
	line	31
	
l656:	
	line	32
	
l2264:	
	movf	(___awmod@sign),w
	skipz
	goto	u2870
	goto	l2268
u2870:
	line	33
	
l2266:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2268
	
l663:	
	line	34
	
l2268:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l664
	
l2270:	
	line	35
	
l664:	
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
;;  divisor         2    3[COMMON] int 
;;  dividend        2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         4       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         5       4       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setSegmentDisplayNumber
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext19
__ptext19:	;psect for function ___awdiv
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 11
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1618:	
	movlb 0	; select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1620:	
	btfss	(___awdiv@divisor+1),7
	goto	u1521
	goto	u1520
u1521:
	goto	l1626
u1520:
	line	16
	
l1622:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1624:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1626
	line	18
	
l641:	
	line	19
	
l1626:	
	btfss	(___awdiv@dividend+1),7
	goto	u1531
	goto	u1530
u1531:
	goto	l1632
u1530:
	line	20
	
l1628:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1630:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1632
	line	22
	
l642:	
	line	23
	
l1632:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1634:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1541
	goto	u1540
u1541:
	goto	l1654
u1540:
	line	25
	
l1636:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1642
	
l645:	
	line	27
	
l1638:	
	movlw	01h
	
u1555:
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u1555
	line	28
	
l1640:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1642
	line	29
	
l644:	
	line	26
	
l1642:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1561
	goto	u1560
u1561:
	goto	l1638
u1560:
	goto	l1644
	
l646:	
	goto	l1644
	line	30
	
l647:	
	line	31
	
l1644:	
	movlw	01h
	
u1575:
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u1575
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1585
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1585:
	skipc
	goto	u1581
	goto	u1580
u1581:
	goto	l1650
u1580:
	line	33
	
l1646:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	34
	
l1648:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1650
	line	35
	
l648:	
	line	36
	
l1650:	
	movlw	01h
	
u1595:
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	decfsz	wreg,f
	goto	u1595
	line	37
	
l1652:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1601
	goto	u1600
u1601:
	goto	l1644
u1600:
	goto	l1654
	
l649:	
	goto	l1654
	line	38
	
l643:	
	line	39
	
l1654:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1610
	goto	l1658
u1610:
	line	40
	
l1656:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1658
	
l650:	
	line	41
	
l1658:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l651
	
l1660:	
	line	42
	
l651:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_I2C_Main

;; *************** function _I2C_Main *****************
;; Defined at:
;;		line 275 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0[BANK0 ] unsigned char 
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
;;      Temps:          3       0       0       0       0       0       0       0
;;      Totals:         3       1       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_I2C_Master_Reception
;;		_I2C_Master_Transmission
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	275
global __ptext20
__ptext20:	;psect for function _I2C_Main
psect	text20
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	275
	global	__size_of_I2C_Main
	__size_of_I2C_Main	equ	__end_of_I2C_Main-_I2C_Main
	
_I2C_Main:	
;incstack = 0
	opt	stack 12
; Regs used in _I2C_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	302
	
l2414:	
;MCU_16f1516_B1.c: 277: char i;
;MCU_16f1516_B1.c: 302: if(I2C->MasterRxGO)
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u3381
	goto	u3380
u3381:
	goto	l325
u3380:
	line	304
	
l2416:	
;MCU_16f1516_B1.c: 303: {
;MCU_16f1516_B1.c: 304: I2C->MasterRxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	305
	
l2418:	
;MCU_16f1516_B1.c: 305: I2C_Master_Reception();
	fcall	_I2C_Master_Reception
	line	306
	
l2420:	
;MCU_16f1516_B1.c: 306: TMain->Test=1;
	movlb 0	; select bank0
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	307
	
l2422:	
;MCU_16f1516_B1.c: 307: RA1=~RA1;
	movlw	1<<((97)&7)
	xorwf	((97)/8),f
	line	309
	
l2424:	
;MCU_16f1516_B1.c: 309: for(i=0;i<32;i++)
	clrf	(I2C_Main@i)
	
l2426:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l2430
u3390:
	goto	l2436
	
l2428:	
	goto	l2436
	line	310
	
l326:	
	line	311
	
l2430:	
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
	
l2432:	
	movlw	(01h)
	movwf	(??_I2C_Main+0)+0
	movf	(??_I2C_Main+0)+0,w
	addwf	(I2C_Main@i),f
	
l2434:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u3401
	goto	u3400
u3401:
	goto	l2430
u3400:
	goto	l2436
	
l327:	
	line	313
	
l2436:	
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
	goto	l334
	line	316
	
l325:	
	line	318
;MCU_16f1516_B1.c: 316: else
;MCU_16f1516_B1.c: 317: {
;MCU_16f1516_B1.c: 318: if(RC0)
	btfss	(112/8),(112)&7	;volatile
	goto	u3411
	goto	u3410
u3411:
	goto	l2442
u3410:
	line	320
	
l2438:	
;MCU_16f1516_B1.c: 319: {
;MCU_16f1516_B1.c: 320: if(!I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u3421
	goto	u3420
u3421:
	goto	l334
u3420:
	line	322
	
l2440:	
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
	goto	l334
	line	324
	
l330:	
	line	325
;MCU_16f1516_B1.c: 324: }
;MCU_16f1516_B1.c: 325: }
	goto	l334
	line	326
	
l329:	
	line	328
	
l2442:	
;MCU_16f1516_B1.c: 326: else
;MCU_16f1516_B1.c: 327: {
;MCU_16f1516_B1.c: 328: if(I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u3431
	goto	u3430
u3431:
	goto	l332
u3430:
	line	330
	
l2444:	
;MCU_16f1516_B1.c: 329: {
;MCU_16f1516_B1.c: 330: I2C->SS=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	331
	
l332:	
	line	332
;MCU_16f1516_B1.c: 331: }
;MCU_16f1516_B1.c: 332: if(I2C->MasterTxGO)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u3441
	goto	u3440
u3441:
	goto	l334
u3440:
	line	334
	
l2446:	
;MCU_16f1516_B1.c: 333: {
;MCU_16f1516_B1.c: 334: I2C->MasterTxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	335
	
l2448:	
;MCU_16f1516_B1.c: 335: I2C_Master_Transmission();
	fcall	_I2C_Master_Transmission
	goto	l334
	line	336
	
l333:	
	goto	l334
	line	337
	
l331:	
	goto	l334
	line	338
	
l328:	
	line	341
	
l334:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Main
	__end_of_I2C_Main:
	signat	_I2C_Main,88
	global	_I2C_Master_Transmission

;; *************** function _I2C_Master_Transmission *****************
;; Defined at:
;;		line 375 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    4[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
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
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	375
	global	__size_of_I2C_Master_Transmission
	__size_of_I2C_Master_Transmission	equ	__end_of_I2C_Master_Transmission-_I2C_Master_Transmission
	
_I2C_Master_Transmission:	
;incstack = 0
	opt	stack 12
; Regs used in _I2C_Master_Transmission: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	378
	
l2340:	
;MCU_16f1516_B1.c: 377: char i;
;MCU_16f1516_B1.c: 378: while(SEN);
	goto	l340
	
l341:	
	
l340:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3151
	goto	u3150
u3151:
	goto	l340
u3150:
	
l342:	
	line	379
;MCU_16f1516_B1.c: 379: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7	;volatile
	line	381
;MCU_16f1516_B1.c: 381: while(SEN);
	goto	l343
	
l344:	
	
l343:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3161
	goto	u3160
u3161:
	goto	l343
u3160:
	goto	l2342
	
l345:	
	line	384
	
l2342:	
;MCU_16f1516_B1.c: 384: SSPBUF=0x10;
	movlw	(010h)
	movwf	(529)^0200h	;volatile
	line	385
;MCU_16f1516_B1.c: 385: while(BF);
	goto	l346
	
l347:	
	
l346:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u3171
	goto	u3170
u3171:
	goto	l346
u3170:
	goto	l349
	
l348:	
	line	388
;MCU_16f1516_B1.c: 388: while(ACKSTAT);
	goto	l349
	
l350:	
	
l349:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u3181
	goto	u3180
u3181:
	goto	l349
u3180:
	goto	l2344
	
l351:	
	line	390
	
l2344:	
;MCU_16f1516_B1.c: 390: for(i=0;i<32;i++)
	clrf	(I2C_Master_Transmission@i)
	
l2346:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l354
u3190:
	goto	l363
	
l2348:	
	goto	l363
	line	391
	
l352:	
	line	392
;MCU_16f1516_B1.c: 391: {
;MCU_16f1516_B1.c: 392: while(SEN);
	goto	l354
	
l355:	
	
l354:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3201
	goto	u3200
u3201:
	goto	l354
u3200:
	goto	l2350
	
l356:	
	line	393
	
l2350:	
;MCU_16f1516_B1.c: 393: SSPBUF=I2C->BufferWriter[i];
	movf	(I2C_Master_Transmission@i),w
	addlw	020h
	movlb 0	; select bank0
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
	goto	l357
	
l358:	
	
l357:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u3211
	goto	u3210
u3211:
	goto	l357
u3210:
	goto	l360
	
l359:	
	line	397
;MCU_16f1516_B1.c: 397: while(ACKSTAT);
	goto	l360
	
l361:	
	
l360:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u3221
	goto	u3220
u3221:
	goto	l360
u3220:
	goto	l2352
	
l362:	
	line	390
	
l2352:	
	movlw	(01h)
	movwf	(??_I2C_Master_Transmission+0)+0
	movf	(??_I2C_Master_Transmission+0)+0,w
	addwf	(I2C_Master_Transmission@i),f
	
l2354:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l354
u3230:
	goto	l363
	
l353:	
	line	400
;MCU_16f1516_B1.c: 398: }
;MCU_16f1516_B1.c: 400: while(SEN);
	goto	l363
	
l364:	
	
l363:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3241
	goto	u3240
u3241:
	goto	l363
u3240:
	goto	l366
	
l365:	
	line	401
;MCU_16f1516_B1.c: 401: while(!PEN)
	goto	l366
	
l367:	
	line	402
;MCU_16f1516_B1.c: 402: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7	;volatile
	
l366:	
	line	401
	btfss	(4274/8)^0200h,(4274)&7	;volatile
	goto	u3251
	goto	u3250
u3251:
	goto	l367
u3250:
	goto	l369
	
l368:	
	line	403
;MCU_16f1516_B1.c: 403: while(PEN);
	goto	l369
	
l370:	
	
l369:	
	btfsc	(4274/8)^0200h,(4274)&7	;volatile
	goto	u3261
	goto	u3260
u3261:
	goto	l369
u3260:
	goto	l372
	
l371:	
	line	406
	
l372:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Transmission
	__end_of_I2C_Master_Transmission:
	signat	_I2C_Master_Transmission,88
	global	_I2C_Master_Reception

;; *************** function _I2C_Master_Reception *****************
;; Defined at:
;;		line 408 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
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
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	408
	global	__size_of_I2C_Master_Reception
	__size_of_I2C_Master_Reception	equ	__end_of_I2C_Master_Reception-_I2C_Master_Reception
	
_I2C_Master_Reception:	
;incstack = 0
	opt	stack 12
; Regs used in _I2C_Master_Reception: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	411
	
l2324:	
;MCU_16f1516_B1.c: 410: char i;
;MCU_16f1516_B1.c: 411: while(SEN);
	goto	l375
	
l376:	
	
l375:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u2991
	goto	u2990
u2991:
	goto	l375
u2990:
	
l377:	
	line	412
;MCU_16f1516_B1.c: 412: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7	;volatile
	line	413
;MCU_16f1516_B1.c: 413: while(SEN);
	goto	l378
	
l379:	
	
l378:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3001
	goto	u3000
u3001:
	goto	l378
u3000:
	goto	l2326
	
l380:	
	line	416
	
l2326:	
;MCU_16f1516_B1.c: 416: SSPBUF=0x11;
	movlw	(011h)
	movwf	(529)^0200h	;volatile
	line	419
;MCU_16f1516_B1.c: 419: while(BF);
	goto	l381
	
l382:	
	
l381:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u3011
	goto	u3010
u3011:
	goto	l381
u3010:
	goto	l384
	
l383:	
	line	420
;MCU_16f1516_B1.c: 420: while(ACKSTAT);
	goto	l384
	
l385:	
	
l384:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u3021
	goto	u3020
u3021:
	goto	l384
u3020:
	goto	l2328
	
l386:	
	line	423
	
l2328:	
;MCU_16f1516_B1.c: 423: for(i=0;i<32;i++)
	clrf	(I2C_Master_Reception@i)
	
l2330:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u3031
	goto	u3030
u3031:
	goto	l389
u3030:
	goto	l404
	
l2332:	
	goto	l404
	line	424
	
l387:	
	line	425
;MCU_16f1516_B1.c: 424: {
;MCU_16f1516_B1.c: 425: while(SEN);
	goto	l389
	
l390:	
	
l389:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3041
	goto	u3040
u3041:
	goto	l389
u3040:
	goto	l392
	
l391:	
	line	426
;MCU_16f1516_B1.c: 426: while(RCEN);
	goto	l392
	
l393:	
	
l392:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u3051
	goto	u3050
u3051:
	goto	l392
u3050:
	
l394:	
	line	427
;MCU_16f1516_B1.c: 427: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	428
;MCU_16f1516_B1.c: 428: while(RCEN);
	goto	l395
	
l396:	
	
l395:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u3061
	goto	u3060
u3061:
	goto	l395
u3060:
	goto	l2334
	
l397:	
	line	429
	
l2334:	
;MCU_16f1516_B1.c: 429: I2C->BufferReader[i]=SSPBUF;
	movf	(529)^0200h,w	;volatile
	movwf	(??_I2C_Master_Reception+0)+0
	movf	(I2C_Master_Reception@i),w
	movlb 0	; select bank0
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
	goto	l398
	
l399:	
	line	431
;MCU_16f1516_B1.c: 431: ACKEN=1;
	bsf	(4276/8)^0200h,(4276)&7	;volatile
	
l398:	
	line	430
	movlb 4	; select bank4
	btfss	(4276/8)^0200h,(4276)&7	;volatile
	goto	u3071
	goto	u3070
u3071:
	goto	l399
u3070:
	goto	l401
	
l400:	
	line	432
;MCU_16f1516_B1.c: 432: while(ACKEN);
	goto	l401
	
l402:	
	
l401:	
	btfsc	(4276/8)^0200h,(4276)&7	;volatile
	goto	u3081
	goto	u3080
u3081:
	goto	l401
u3080:
	goto	l2336
	
l403:	
	line	423
	
l2336:	
	movlw	(01h)
	movwf	(??_I2C_Master_Reception+0)+0
	movf	(??_I2C_Master_Reception+0)+0,w
	addwf	(I2C_Master_Reception@i),f
	
l2338:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l389
u3090:
	goto	l404
	
l388:	
	line	434
;MCU_16f1516_B1.c: 433: }
;MCU_16f1516_B1.c: 434: while(RCEN);
	goto	l404
	
l405:	
	
l404:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u3101
	goto	u3100
u3101:
	goto	l404
u3100:
	
l406:	
	line	435
;MCU_16f1516_B1.c: 435: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	436
;MCU_16f1516_B1.c: 436: while(RCEN);
	goto	l407
	
l408:	
	
l407:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u3111
	goto	u3110
u3111:
	goto	l407
u3110:
	goto	l410
	
l409:	
	line	438
;MCU_16f1516_B1.c: 438: while(SEN);
	goto	l410
	
l411:	
	
l410:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u3121
	goto	u3120
u3121:
	goto	l410
u3120:
	goto	l413
	
l412:	
	line	439
;MCU_16f1516_B1.c: 439: while(!PEN)
	goto	l413
	
l414:	
	line	440
;MCU_16f1516_B1.c: 440: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7	;volatile
	
l413:	
	line	439
	btfss	(4274/8)^0200h,(4274)&7	;volatile
	goto	u3131
	goto	u3130
u3131:
	goto	l414
u3130:
	goto	l416
	
l415:	
	line	441
;MCU_16f1516_B1.c: 441: while(PEN);
	goto	l416
	
l417:	
	
l416:	
	btfsc	(4274/8)^0200h,(4274)&7	;volatile
	goto	u3141
	goto	u3140
u3141:
	goto	l416
u3140:
	goto	l419
	
l418:	
	line	444
	
l419:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Reception
	__end_of_I2C_Master_Reception:
	signat	_I2C_Master_Reception,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 56 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;; Hardware stack levels required when called:    1
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
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	56
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 10
; Regs used in _ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
psect	intentry
	bsf	pic14e$flags,0 ;set compiler interrupt flag
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+0)
	line	58
	
i1l2088:	
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
	
i1l2090:	
;MCU_16f1516_B1.c: 62: TMR1_ISR();
	fcall	_TMR1_ISR
	line	66
	
i1l2092:	
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
	
i1l307:	
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
;;		line 507 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	507
global __ptext24
__ptext24:	;psect for function _UART_ISR
psect	text24
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	507
	global	__size_of_UART_ISR
	__size_of_UART_ISR	equ	__end_of_UART_ISR-_UART_ISR
	
_UART_ISR:	
;incstack = 0
	opt	stack 10
; Regs used in _UART_ISR: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	510
	
i1l2042:	
;MCU_16f1516_B1.c: 509: char i;
;MCU_16f1516_B1.c: 510: if(RCIE && RCIF)
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7	;volatile
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l448
u242_20:
	
i1l2044:	
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u243_21
	goto	u243_20
u243_21:
	goto	i1l448
u243_20:
	goto	i1l444
	line	512
	
i1l2046:	
;MCU_16f1516_B1.c: 511: {
;MCU_16f1516_B1.c: 512: while(!RCIDL);
	goto	i1l444
	
i1l445:	
	
i1l444:	
	movlb 3	; select bank3
	btfss	(3326/8)^0180h,(3326)&7	;volatile
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l444
u244_20:
	goto	i1l2048
	
i1l446:	
	line	513
	
i1l2048:	
;MCU_16f1516_B1.c: 513: UART->RxData[UART->RxLength]=RCREG;
	movf	(409)^0180h,w	;volatile
	movwf	(??_UART_ISR+0)+0
	movlb 0	; select bank0
	movf	(_UART),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	addlw	020h
	addwf	(_UART),w
	movwf	(??_UART_ISR+1)+0
	movf	0+(??_UART_ISR+1)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_UART_ISR+0)+0,w
	movwf	indf1
	line	515
;MCU_16f1516_B1.c: 515: UART->RxLength++;
	movlw	(01h)
	movwf	(??_UART_ISR+0)+0
	movf	(_UART),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_UART_ISR+0)+0,w
	addwf	indf1,f
	line	516
	
i1l2050:	
;MCU_16f1516_B1.c: 516: if(UART->RxLength == 32)
	movf	(_UART),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	020h&0ffh
	skipz
	goto	u245_21
	goto	u245_20
u245_21:
	goto	i1l448
u245_20:
	line	518
	
i1l2052:	
;MCU_16f1516_B1.c: 517: {
;MCU_16f1516_B1.c: 518: UART->RxLength=0;
	movf	(_UART),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	519
	
i1l2054:	
;MCU_16f1516_B1.c: 519: UART->RxGO=1;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	520
	
i1l2056:	
;MCU_16f1516_B1.c: 520: RCIE=0;
	movlb 1	; select bank1
	bcf	(1165/8)^080h,(1165)&7	;volatile
	goto	i1l448
	line	521
	
i1l447:	
	goto	i1l448
	line	522
	
i1l443:	
	line	523
	
i1l448:	
	return
	opt stack 0
GLOBAL	__end_of_UART_ISR
	__end_of_UART_ISR:
	signat	_UART_ISR,88
	global	_TMR1_ISR

;; *************** function _TMR1_ISR *****************
;; Defined at:
;;		line 125 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
psect	text25,local,class=CODE,delta=2,merge=1
	line	125
global __ptext25
__ptext25:	;psect for function _TMR1_ISR
psect	text25
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	125
	global	__size_of_TMR1_ISR
	__size_of_TMR1_ISR	equ	__end_of_TMR1_ISR-_TMR1_ISR
	
_TMR1_ISR:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR1_ISR: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	127
	
i1l2028:	
;MCU_16f1516_B1.c: 127: if(TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7	;volatile
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l315
u239_20:
	
i1l2030:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7	;volatile
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l315
u240_20:
	line	129
	
i1l2032:	
;MCU_16f1516_B1.c: 128: {
;MCU_16f1516_B1.c: 129: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	130
;MCU_16f1516_B1.c: 130: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	131
	
i1l2034:	
;MCU_16f1516_B1.c: 131: TMR1IF=0;
	bcf	(136/8),(136)&7	;volatile
	line	132
	
i1l2036:	
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
	
i1l2038:	
;MCU_16f1516_B1.c: 133: if(Timer1->Count == 20)
	incf	(_Timer1),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(014h)
	skipz
	goto	u241_25
	moviw	[1]fsr1
	xorlw	high(014h)
u241_25:
	skipz
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l315
u241_20:
	line	135
	
i1l2040:	
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
	goto	i1l315
	line	137
	
i1l314:	
	goto	i1l315
	line	138
	
i1l313:	
	line	139
	
i1l315:	
	return
	opt stack 0
GLOBAL	__end_of_TMR1_ISR
	__end_of_TMR1_ISR:
	signat	_TMR1_ISR,88
	global	_I2C_ISR

;; *************** function _I2C_ISR *****************
;; Defined at:
;;		line 260 in file "I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
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
psect	text26,local,class=CODE,delta=2,merge=1
	line	260
global __ptext26
__ptext26:	;psect for function _I2C_ISR
psect	text26
	file	"I:\Program\PIC\Source_File\MCU_16f1516_B1.c"
	line	260
	global	__size_of_I2C_ISR
	__size_of_I2C_ISR	equ	__end_of_I2C_ISR-_I2C_ISR
	
_I2C_ISR:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_ISR: [wregfsr1]
	line	262
	
i1l2058:	
;MCU_16f1516_B1.c: 262: if(SSPIE && SSPIF)
	movlb 1	; select bank1
	btfss	(1163/8)^080h,(1163)&7	;volatile
	goto	u246_21
	goto	u246_20
u246_21:
	goto	i1l322
u246_20:
	
i1l2060:	
	movlb 0	; select bank0
	btfss	(139/8),(139)&7	;volatile
	goto	u247_21
	goto	u247_20
u247_21:
	goto	i1l322
u247_20:
	line	264
	
i1l2062:	
;MCU_16f1516_B1.c: 263: {
;MCU_16f1516_B1.c: 264: SSPIE=0;
	movlb 1	; select bank1
	bcf	(1163/8)^080h,(1163)&7	;volatile
	line	265
	
i1l2064:	
;MCU_16f1516_B1.c: 265: I2C->SlaveGO=1;
	movlb 0	; select bank0
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l322
	line	272
	
i1l321:	
	line	273
	
i1l322:	
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

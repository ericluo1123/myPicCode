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
	global	_UART
	global	_I2C
	global	_Timer1
	global	_VarTMain
	global	_VarTimer1
	global	_Segment
	global	_VarUart
	global	_VarI2C
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
_UART:
       ds      1

_I2C:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_Timer1:
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
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Header_File\SegmentDisplay_A2.h"
	line	69
_VarSegment:
       ds      26

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\0.myFile\myDevelopment-AH\Release\../Release/myDevelopment-A.h"
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
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	014h
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
	ds	2
??_ISR:	; 0 bytes @ 0x2
	ds	1
??_IO_Set:	; 0 bytes @ 0x3
??_TMR1_Set:	; 0 bytes @ 0x3
??_I2C_Set:	; 0 bytes @ 0x3
??_UART_Set:	; 0 bytes @ 0x3
??_I2C_Master_Reception:	; 0 bytes @ 0x3
??_I2C_Master_Transmission:	; 0 bytes @ 0x3
??_UART_Receive:	; 0 bytes @ 0x3
??_MainT_Initial:	; 0 bytes @ 0x3
??_SegmentDisplay_Initial:	; 0 bytes @ 0x3
??_SegmentDisplay_Main:	; 0 bytes @ 0x3
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
	global	I2C_Main@i
I2C_Main@i:	; 1 bytes @ 0x6
	global	UART_Receive@i
UART_Receive@i:	; 1 bytes @ 0x6
	ds	1
??___awdiv:	; 0 bytes @ 0x7
??___awmod:	; 0 bytes @ 0x7
??___lwdiv:	; 0 bytes @ 0x7
	ds	1
??_UART_Main:	; 0 bytes @ 0x8
??_main:	; 0 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_I2C_Main:	; 0 bytes @ 0x0
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
	global	?_printf
?_printf:	; 2 bytes @ 0x3
	global	printf@f
printf@f:	; 2 bytes @ 0x3
	ds	1
?_setSegmentDisplayNumber:	; 0 bytes @ 0x4
	global	setSegmentDisplayNumber@number
setSegmentDisplayNumber@number:	; 2 bytes @ 0x4
	ds	2
??_setSegmentDisplayNumber:	; 0 bytes @ 0x6
	ds	1
??_printf:	; 0 bytes @ 0x7
	ds	3
	global	setSegmentDisplayNumber@i
setSegmentDisplayNumber@i:	; 1 bytes @ 0xA
	ds	1
??_MainT:	; 0 bytes @ 0xB
	global	printf@flag
printf@flag:	; 1 bytes @ 0xB
	ds	1
	global	printf@idx
printf@idx:	; 1 bytes @ 0xC
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0xD
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0xE
	ds	4
	global	printf@prec
printf@prec:	; 1 bytes @ 0x12
	ds	1
	global	printf@c
printf@c:	; 1 bytes @ 0x13
	ds	1
??_UART_Transmit:	; 0 bytes @ 0x14
	ds	3
	global	UART_Transmit@i
UART_Transmit@i:	; 1 bytes @ 0x17
	ds	1
;!
;!Data Sizes:
;!    Strings     20
;!    Constant    8
;!    Data        58
;!    BSS         157
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      11
;!    BANK0            80     24      71
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
;!    S543$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    Segment	PTR struct Segment size(1) Largest target is 26
;!		 -> NULL(NULL[0]), VarSegment(BANK0[26]), 
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
;!    _printf->___lwdiv
;!    _Mcu_Initial->_I2C_Set
;!    _Mcu_Initial->_TMR1_Set
;!    _Mcu_Initial->_UART_Set
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
;!    _printf->___lwdiv
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
;! (0) _main                                                 0     0      0    3614
;!                           _I2C_Main
;!                              _MainT
;!                      _MainT_Initial
;!                        _Mcu_Initial
;!             _SegmentDisplay_Initial
;!                _SegmentDisplay_Main
;!                          _UART_Main
;! ---------------------------------------------------------------------------------
;! (1) _UART_Main                                            0     0      0    1145
;!                       _UART_Receive
;!                      _UART_Transmit
;! ---------------------------------------------------------------------------------
;! (2) _UART_Transmit                                        4     4      0    1055
;!                                             20 BANK0      4     4      0
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (3) _printf                                              17    13      4     956
;!                                              3 BANK0     17    13      4
;!                            ___lwdiv
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (4) _putch                                                1     1      0      22
;!                                              3 COMMON     1     1      0
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
;! (1) _MainT                                                4     4      0    2203
;!                                             11 BANK0      3     3      0
;!            _setSegmentDisplayNumber
;! ---------------------------------------------------------------------------------
;! (2) _setSegmentDisplayNumber                              7     5      2    2203
;!                                              4 BANK0      7     5      2
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4     823
;!                                              3 COMMON     5     1      4
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4     835
;!                                              3 COMMON     5     1      4
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Main                                             4     4      0     266
;!                                              6 COMMON     1     1      0
;!                                              0 BANK0      3     3      0
;!               _I2C_Master_Reception
;!            _I2C_Master_Transmission
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Master_Transmission                              2     2      0      68
;!                                              3 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Master_Reception                                 3     3      0      68
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
;!COMMON               E      8       B       2       78.6%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      F9       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50     18      47       6       88.8%
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
;!DATA                 0      0      F9      19        0.0%
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
	opt	stack 10
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	8
	
l2347:	
;myMain.c: 8: MainT_Initial();
	fcall	_MainT_Initial
	line	9
	
l2349:	
;myMain.c: 9: Mcu_Initial();
	fcall	_Mcu_Initial
	line	10
	
l2351:	
;myMain.c: 10: SegmentDisplay_Initial();
	fcall	_SegmentDisplay_Initial
	line	12
	
l2353:	
;myMain.c: 11: ;;
;myMain.c: 12: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	goto	l2355
	line	13
;myMain.c: 13: while(1)
	
l406:	
	line	17
	
l2355:	
;myMain.c: 14: {
;myMain.c: 17: if(TMain->T1_Timerout)
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,2
	goto	u3071
	goto	u3070
u3071:
	goto	l2355
u3070:
	line	19
	
l2357:	
;myMain.c: 18: {
;myMain.c: 19: TMain->T1_Timerout = 0;
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,2
	line	20
	
l2359:	
;myMain.c: 20: MainT();
	fcall	_MainT
	line	21
	
l2361:	
;myMain.c: 21: if(TMain->PowerON)
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u3081
	goto	u3080
u3081:
	goto	l2355
u3080:
	line	24
	
l2363:	
;myMain.c: 22: {
;myMain.c: 23: ;;
;myMain.c: 24: I2C_Main();
	fcall	_I2C_Main
	line	25
	
l2365:	
;myMain.c: 25: UART_Main();
	fcall	_UART_Main
	line	26
	
l2367:	
;myMain.c: 26: SegmentDisplay_Main();
	fcall	_SegmentDisplay_Main
	goto	l2355
	line	27
	
l408:	
	goto	l2355
	line	28
	
l407:	
	goto	l2355
	line	29
	
l409:	
	line	13
	goto	l2355
	
l410:	
	line	30
	
l411:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_UART_Main

;; *************** function _UART_Main *****************
;; Defined at:
;;		line 533 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	533
global __ptext1
__ptext1:	;psect for function _UART_Main
psect	text1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	533
	global	__size_of_UART_Main
	__size_of_UART_Main	equ	__end_of_UART_Main-_UART_Main
	
_UART_Main:	
;incstack = 0
	opt	stack 10
; Regs used in _UART_Main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	535
	
l2299:	
;MCU_16f1516_B1.c: 535: if(UART->RxGO)
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,1
	goto	u2991
	goto	u2990
u2991:
	goto	l2307
u2990:
	line	537
	
l2301:	
;MCU_16f1516_B1.c: 536: {
;MCU_16f1516_B1.c: 537: UART->RxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,1
	line	538
	
l2303:	
;MCU_16f1516_B1.c: 538: UART_Receive();
	fcall	_UART_Receive
	line	539
	
l2305:	
;MCU_16f1516_B1.c: 539: RCIE=1;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	540
;MCU_16f1516_B1.c: 540: }
	goto	l328
	line	541
	
l325:	
	line	543
	
l2307:	
;MCU_16f1516_B1.c: 541: else
;MCU_16f1516_B1.c: 542: {
;MCU_16f1516_B1.c: 543: if(UART->TxGO)
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,0
	goto	u3001
	goto	u3000
u3001:
	goto	l328
u3000:
	line	545
	
l2309:	
;MCU_16f1516_B1.c: 544: {
;MCU_16f1516_B1.c: 545: UART->TxGO=0;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,0
	line	546
	
l2311:	
;MCU_16f1516_B1.c: 546: UART_Transmit();
	fcall	_UART_Transmit
	goto	l328
	line	547
	
l327:	
	goto	l328
	line	548
	
l326:	
	line	549
	
l328:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Main
	__end_of_UART_Main:
	signat	_UART_Main,88
	global	_UART_Transmit

;; *************** function _UART_Transmit *****************
;; Defined at:
;;		line 550 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   23[BANK0 ] unsigned char 
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
	line	550
global __ptext2
__ptext2:	;psect for function _UART_Transmit
psect	text2
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	550
	global	__size_of_UART_Transmit
	__size_of_UART_Transmit	equ	__end_of_UART_Transmit-_UART_Transmit
	
_UART_Transmit:	
;incstack = 0
	opt	stack 10
; Regs used in _UART_Transmit: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	553
	
l2199:	
;MCU_16f1516_B1.c: 552: char i;
;MCU_16f1516_B1.c: 553: for(i=0;i<32;i++)
	movlb 0	; select bank0
	clrf	(UART_Transmit@i)
	
l2201:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l333
u2780:
	goto	l336
	
l2203:	
	goto	l336
	line	554
	
l331:	
	line	555
;MCU_16f1516_B1.c: 554: {
;MCU_16f1516_B1.c: 555: while(!TRMT);
	goto	l333
	
l334:	
	
l333:	
	movlb 3	; select bank3
	btfss	(3313/8)^0180h,(3313)&7	;volatile
	goto	u2791
	goto	u2790
u2791:
	goto	l333
u2790:
	goto	l2205
	
l335:	
	line	556
	
l2205:	
;MCU_16f1516_B1.c: 556: printf("%x",UART->TxData[i]);
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
	line	553
	
l2207:	
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_UART_Transmit+0)+0
	movf	(??_UART_Transmit+0)+0,w
	addwf	(UART_Transmit@i),f
	
l2209:	
	movlw	(020h)
	subwf	(UART_Transmit@i),w
	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l333
u2800:
	goto	l336
	
l332:	
	line	560
	
l336:	
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
;;  f               2    3[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  idx             1   12[BANK0 ] unsigned char 
;;  _val            4   14[BANK0 ] struct .
;;  c               1   19[BANK0 ] char 
;;  prec            1   18[BANK0 ] char 
;;  ap              1   13[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  flag            1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
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
	
l2075:	
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
	goto	l2115
	
l507:	
	line	547
	
l2077:	
;doprnt.c: 547: if(c != '%')
	movf	(printf@c),w
	xorlw	025h&0ffh
	skipnz
	goto	u2531
	goto	u2530
u2531:
	goto	l2081
u2530:
	line	550
	
l2079:	
;doprnt.c: 549: {
;doprnt.c: 550: (putch(c) );
	movf	(printf@c),w
	fcall	_putch
	line	551
;doprnt.c: 551: continue;
	goto	l2115
	line	552
	
l508:	
	line	557
	
l2081:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	movlb 0	; select bank0
	clrf	(printf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l2085
	line	646
;doprnt.c: 646: case 0:
	
l510:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l522
	line	727
;doprnt.c: 727: case 'x':
	
l512:	
	line	732
;doprnt.c: 732: break;
	goto	l2087
	line	811
;doprnt.c: 811: default:
	
l514:	
	line	822
;doprnt.c: 822: continue;
	goto	l2115
	line	831
	
l2083:	
;doprnt.c: 831: }
	goto	l2087
	line	644
	
l509:	
	
l2085:	
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
	goto	l522
	xorlw	120^0	; case 120
	skipnz
	goto	l2087
	goto	l2115
	opt asmopt_on

	line	831
	
l513:	
	line	1295
	
l2087:	
;doprnt.c: 1282: {
;doprnt.c: 1295: _val._val = (*(unsigned *)__va_arg((*(unsigned **)ap), (unsigned)0));
	movf	(printf@ap),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(printf@_val)
	moviw	[1]fsr1
	movwf	(printf@_val+1)
	
l2089:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	line	1325
	
l2091:	
;doprnt.c: 1296: }
;doprnt.c: 1325: for(c = 1 ; c != sizeof hexpowers/sizeof hexpowers[0] ; c++)
	clrf	(printf@c)
	incf	(printf@c),f
	
l2093:	
	movf	(printf@c),w
	xorlw	04h&0ffh
	skipz
	goto	u2541
	goto	u2540
u2541:
	goto	l2097
u2540:
	goto	l2105
	
l2095:	
	goto	l2105
	line	1326
	
l515:	
	
l2097:	
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
	goto	u2555
	movf	0+(??_printf+2)+0,w
	subwf	(printf@_val),w
u2555:
	skipnc
	goto	u2551
	goto	u2550
u2551:
	goto	l2101
u2550:
	goto	l2105
	line	1327
	
l2099:	
;doprnt.c: 1327: break;
	goto	l2105
	
l517:	
	line	1325
	
l2101:	
	movlw	(01h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@c),f
	
l2103:	
	movf	(printf@c),w
	xorlw	04h&0ffh
	skipz
	goto	u2561
	goto	u2560
u2561:
	goto	l2097
u2560:
	goto	l2105
	
l516:	
	line	1481
	
l2105:	
;doprnt.c: 1431: {
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l2113
	
l519:	
	line	1509
	
l2107:	
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
	movf	(0+(?___lwdiv)),w
	andlw	0Fh
	movlb 0	; select bank0
	movwf	(??_printf+2)+0
	movf	(??_printf+2)+0,w
	movwf	(printf@idx)
	line	1515
	
l2109:	
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
	
l2111:	
;doprnt.c: 1517: }
;doprnt.c: 1532: }
;doprnt.c: 1533: (putch(c) );
	movf	(printf@c),w
	fcall	_putch
	goto	l2113
	line	1534
	
l518:	
	line	1483
	
l2113:	
	movlw	(-1)
	movlb 0	; select bank0
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@prec),f
	movf	((printf@prec)),w
	xorlw	-1&0ffh
	skipz
	goto	u2571
	goto	u2570
u2571:
	goto	l2107
u2570:
	goto	l2115
	
l520:	
	goto	l2115
	line	1542
	
l506:	
	line	545
	
l2115:	
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
	goto	u2581
	goto	u2580
u2581:
	goto	l2077
u2580:
	goto	l522
	
l521:	
	goto	l522
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l511:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _printf is never used
	
l522:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 599 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	599
global __ptext4
__ptext4:	;psect for function _putch
psect	text4
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	599
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
;incstack = 0
	opt	stack 10
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movwf	(putch@byte)
	line	602
	
l1485:	
;MCU_16f1516_B1.c: 602: while(!TXIF)
	goto	l347
	
l348:	
	line	603
;MCU_16f1516_B1.c: 603: continue;
	
l347:	
	line	602
	movlb 0	; select bank0
	btfss	(140/8),(140)&7	;volatile
	goto	u1241
	goto	u1240
u1241:
	goto	l347
u1240:
	goto	l1487
	
l349:	
	line	604
	
l1487:	
;MCU_16f1516_B1.c: 604: TXREG = byte;
	movf	(putch@byte),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	605
	
l350:	
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
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___lwdiv
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 10
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2049:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2051:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2461
	goto	u2460
u2461:
	goto	l2071
u2460:
	line	16
	
l2053:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2059
	
l857:	
	line	18
	
l2055:	
	movlw	01h
	
u2475:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u2475
	line	19
	
l2057:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2059
	line	20
	
l856:	
	line	17
	
l2059:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l2055
u2480:
	goto	l2061
	
l858:	
	goto	l2061
	line	21
	
l859:	
	line	22
	
l2061:	
	movlw	01h
	
u2495:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u2495
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2505
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2505:
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l2067
u2500:
	line	24
	
l2063:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	25
	
l2065:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2067
	line	26
	
l860:	
	line	27
	
l2067:	
	movlw	01h
	
u2515:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u2515
	line	28
	
l2069:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l2061
u2520:
	goto	l2071
	
l861:	
	goto	l2071
	line	29
	
l855:	
	line	30
	
l2071:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l862
	
l2073:	
	line	31
	
l862:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_UART_Receive

;; *************** function _UART_Receive *****************
;; Defined at:
;;		line 561 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	561
global __ptext6
__ptext6:	;psect for function _UART_Receive
psect	text6
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	561
	global	__size_of_UART_Receive
	__size_of_UART_Receive	equ	__end_of_UART_Receive-_UART_Receive
	
_UART_Receive:	
;incstack = 0
	opt	stack 12
; Regs used in _UART_Receive: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	565
	
l1711:	
;MCU_16f1516_B1.c: 563: char i;
;MCU_16f1516_B1.c: 565: TMain->Test=1;
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	567
	
l1713:	
;MCU_16f1516_B1.c: 567: for(i=0;i<32;i++)
	clrf	(UART_Receive@i)
	
l1715:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u1891
	goto	u1890
u1891:
	goto	l1719
u1890:
	goto	l1725
	
l1717:	
	goto	l1725
	line	568
	
l339:	
	line	569
	
l1719:	
;MCU_16f1516_B1.c: 568: {
;MCU_16f1516_B1.c: 569: I2C->BufferWriter[i]=UART->RxData[i];
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
	line	567
	
l1721:	
	movlw	(01h)
	movwf	(??_UART_Receive+0)+0
	movf	(??_UART_Receive+0)+0,w
	addwf	(UART_Receive@i),f
	
l1723:	
	movlw	(020h)
	subwf	(UART_Receive@i),w
	skipc
	goto	u1901
	goto	u1900
u1901:
	goto	l1719
u1900:
	goto	l1725
	
l340:	
	line	571
	
l1725:	
;MCU_16f1516_B1.c: 570: }
;MCU_16f1516_B1.c: 571: I2C->MasterTxGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,3
	line	585
	
l341:	
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
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	72
global __ptext7
__ptext7:	;psect for function _SegmentDisplay_Main
psect	text7
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	72
	global	__size_of_SegmentDisplay_Main
	__size_of_SegmentDisplay_Main	equ	__end_of_SegmentDisplay_Main-_SegmentDisplay_Main
	
_SegmentDisplay_Main:	
;incstack = 0
	opt	stack 13
; Regs used in _SegmentDisplay_Main: [wreg-fsr1h+status,2+status,0]
	line	74
	
l1943:	
;SegmentDisplay_A2.c: 74: if(Segment->GO)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u2291
	goto	u2290
u2291:
	goto	l495
u2290:
	line	76
	
l1945:	
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
	
l1947:	
;SegmentDisplay_A2.c: 77: if(Segment->Time == 5)
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	05h&0ffh
	skipz
	goto	u2301
	goto	u2300
u2301:
	goto	l495
u2300:
	line	79
	
l1949:	
;SegmentDisplay_A2.c: 78: {
;SegmentDisplay_A2.c: 79: Segment->Time=0;
	movf	(_Segment),w
	addlw	019h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	80
	
l1951:	
;SegmentDisplay_A2.c: 80: PORTA&=0x0f;
	movlw	(0Fh)
	movwf	(??_SegmentDisplay_Main+0)+0
	movf	(??_SegmentDisplay_Main+0)+0,w
	andwf	(12),f	;volatile
	line	81
	
l1953:	
;SegmentDisplay_A2.c: 81: if(Segment->ComCount == 0)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,f
	skipz
	goto	u2311
	goto	u2310
u2311:
	goto	l1957
u2310:
	line	83
	
l1955:	
;SegmentDisplay_A2.c: 82: {
;SegmentDisplay_A2.c: 83: RA4=1;
	bsf	(100/8),(100)&7	;volatile
	line	84
;SegmentDisplay_A2.c: 84: }
	goto	l1969
	line	85
	
l486:	
	
l1957:	
;SegmentDisplay_A2.c: 85: else if(Segment->ComCount == 1)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	01h&0ffh
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l1961
u2320:
	line	87
	
l1959:	
;SegmentDisplay_A2.c: 86: {
;SegmentDisplay_A2.c: 87: RA5=1;
	bsf	(101/8),(101)&7	;volatile
	line	88
;SegmentDisplay_A2.c: 88: }
	goto	l1969
	line	89
	
l488:	
	
l1961:	
;SegmentDisplay_A2.c: 89: else if(Segment->ComCount == 2)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	02h&0ffh
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l1965
u2330:
	line	91
	
l1963:	
;SegmentDisplay_A2.c: 90: {
;SegmentDisplay_A2.c: 91: RA6=1;
	bsf	(102/8),(102)&7	;volatile
	line	92
;SegmentDisplay_A2.c: 92: }
	goto	l1969
	line	93
	
l490:	
	
l1965:	
;SegmentDisplay_A2.c: 93: else if(Segment->ComCount == 3)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	03h&0ffh
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l1969
u2340:
	line	95
	
l1967:	
;SegmentDisplay_A2.c: 94: {
;SegmentDisplay_A2.c: 95: RA7=1;
	bsf	(103/8),(103)&7	;volatile
	goto	l1969
	line	96
	
l492:	
	goto	l1969
	line	97
	
l491:	
	goto	l1969
	
l489:	
	goto	l1969
	
l487:	
	
l1969:	
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
	
l1971:	
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
	goto	u2351
	goto	u2350
u2351:
	goto	l1975
u2350:
	line	100
	
l1973:	
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
	
l1975:	
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
psect	text8,local,class=CODE,delta=2,merge=1
	line	8
global __ptext8
__ptext8:	;psect for function _SegmentDisplay_Initial
psect	text8
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	8
	global	__size_of_SegmentDisplay_Initial
	__size_of_SegmentDisplay_Initial	equ	__end_of_SegmentDisplay_Initial-_SegmentDisplay_Initial
	
_SegmentDisplay_Initial:	
;incstack = 0
	opt	stack 13
; Regs used in _SegmentDisplay_Initial: [wregfsr1]
	line	10
	
l1903:	
;SegmentDisplay_A2.c: 10: Segment=&VarSegment;
	movlw	(_VarSegment)&0ffh
	movwf	(??_SegmentDisplay_Initial+0)+0
	movf	(??_SegmentDisplay_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_Segment)
	line	11
	
l1905:	
;SegmentDisplay_A2.c: 11: Segment->Enable=1;
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	13
	
l1907:	
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
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	11
global __ptext9
__ptext9:	;psect for function _Mcu_Initial
psect	text9
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	11
	global	__size_of_Mcu_Initial
	__size_of_Mcu_Initial	equ	__end_of_Mcu_Initial-_Mcu_Initial
	
_Mcu_Initial:	
;incstack = 0
	opt	stack 12
; Regs used in _Mcu_Initial: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l1791:	
;MCU_16f1516_B1.c: 14: OSCCON=0x78; ;;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l1793:	
;MCU_16f1516_B1.c: 16: IO_Set();
	fcall	_IO_Set
	line	18
	
l1795:	
;MCU_16f1516_B1.c: 18: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	20
	
l1797:	
;MCU_16f1516_B1.c: 20: TMR1_Set();
	fcall	_TMR1_Set
	line	22
	
l1799:	
;MCU_16f1516_B1.c: 22: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	26
	
l1801:	
;MCU_16f1516_B1.c: 26: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	28
	
l1803:	
;MCU_16f1516_B1.c: 28: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	30
	
l1805:	
;MCU_16f1516_B1.c: 30: I2C_Set();
	fcall	_I2C_Set
	line	32
	
l1807:	
;MCU_16f1516_B1.c: 32: UART_Set();
	fcall	_UART_Set
	line	35
	
l163:	
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
psect	text10,local,class=CODE,delta=2,merge=1
	line	498
global __ptext10
__ptext10:	;psect for function _UART_Set
psect	text10
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	498
	global	__size_of_UART_Set
	__size_of_UART_Set	equ	__end_of_UART_Set-_UART_Set
	
_UART_Set:	
;incstack = 0
	opt	stack 12
; Regs used in _UART_Set: [wreg+status,2]
	line	500
	
l1653:	
;MCU_16f1516_B1.c: 500: UART=&VarUart;
	movlw	(_VarUart)&0ffh
	movwf	(??_UART_Set+0)+0
	movf	(??_UART_Set+0)+0,w
	movwf	(_UART)
	line	501
	
l1655:	
;MCU_16f1516_B1.c: 501: TRISC7 = 1;
	movlb 1	; select bank1
	bsf	(1143/8)^080h,(1143)&7	;volatile
	line	502
	
l1657:	
;MCU_16f1516_B1.c: 502: TRISC6 = 1;
	bsf	(1142/8)^080h,(1142)&7	;volatile
	line	503
;MCU_16f1516_B1.c: 503: SPBRG = ((int)(16000000L/(16UL * 19200) -1));
	movlw	(033h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	504
	
l1659:	
;MCU_16f1516_B1.c: 504: SPBRGH = 0;
	clrf	(412)^0180h	;volatile
	line	505
	
l1661:	
;MCU_16f1516_B1.c: 505: BRG16 = 0;
	bcf	(3323/8)^0180h,(3323)&7	;volatile
	line	506
	
l1663:	
;MCU_16f1516_B1.c: 506: RCSTA = (0|0x90);
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	line	507
	
l1665:	
;MCU_16f1516_B1.c: 507: TXSTA = (0x4|0|0x20);
	movlw	(024h)
	movwf	(414)^0180h	;volatile
	line	508
	
l1667:	
;MCU_16f1516_B1.c: 508: TX9=0;
	bcf	(3318/8)^0180h,(3318)&7	;volatile
	line	509
	
l1669:	
;MCU_16f1516_B1.c: 509: RX9=0;
	bcf	(3310/8)^0180h,(3310)&7	;volatile
	line	510
	
l1671:	
;MCU_16f1516_B1.c: 510: TXIE=0;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7	;volatile
	line	511
	
l1673:	
;MCU_16f1516_B1.c: 511: RCIE=1;
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	512
	
l1675:	
;MCU_16f1516_B1.c: 512: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	513
	
l1677:	
;MCU_16f1516_B1.c: 513: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	514
	
l314:	
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
	line	114
global __ptext11
__ptext11:	;psect for function _TMR1_Set
psect	text11
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	114
	global	__size_of_TMR1_Set
	__size_of_TMR1_Set	equ	__end_of_TMR1_Set-_TMR1_Set
	
_TMR1_Set:	
;incstack = 0
	opt	stack 12
; Regs used in _TMR1_Set: [wreg]
	line	116
	
l1639:	
;MCU_16f1516_B1.c: 116: Timer1=&VarTimer1;
	movlw	(_VarTimer1)&0ffh
	movwf	(??_TMR1_Set+0)+0
	movf	(??_TMR1_Set+0)+0,w
	movlb 0	; select bank0
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
	
l1641:	
;MCU_16f1516_B1.c: 120: TMR1IE=1;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	121
	
l1643:	
;MCU_16f1516_B1.c: 121: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	122
	
l1645:	
;MCU_16f1516_B1.c: 122: GIE=1;
	bsf	(95/8),(95)&7	;volatile
	line	123
	
l172:	
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mcu_Initial
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	37
global __ptext12
__ptext12:	;psect for function _IO_Set
psect	text12
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	37
	global	__size_of_IO_Set
	__size_of_IO_Set	equ	__end_of_IO_Set-_IO_Set
	
_IO_Set:	
;incstack = 0
	opt	stack 12
; Regs used in _IO_Set: [wreg+status,2]
	line	39
	
l1053:	
;MCU_16f1516_B1.c: 39: TRISA=0b00001001;;
	movlw	(09h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	40
	
l1055:	
;MCU_16f1516_B1.c: 40: TRISB=0b00000000;;
	clrf	(141)^080h	;volatile
	line	41
	
l1057:	
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
	
l1059:	
;MCU_16f1516_B1.c: 45: ANSELA=0b00000001;;
	movlw	(01h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	46
	
l1061:	
;MCU_16f1516_B1.c: 46: ANSELB=0b00000000;;
	clrf	(397)^0180h	;volatile
	line	47
	
l1063:	
;MCU_16f1516_B1.c: 47: ANSELC=0b00000000;;
	clrf	(398)^0180h	;volatile
	line	48
	
l1065:	
;MCU_16f1516_B1.c: 48: PORTA=0b00001001;;
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	49
;MCU_16f1516_B1.c: 49: PORTB=0b00000000;;
	clrf	(13)	;volatile
	line	50
	
l1067:	
;MCU_16f1516_B1.c: 50: PORTC=0b00011001;;
	movlw	(019h)
	movwf	(14)	;volatile
	line	51
	
l166:	
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
psect	text13,local,class=CODE,delta=2,merge=1
	line	233
global __ptext13
__ptext13:	;psect for function _I2C_Set
psect	text13
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	233
	global	__size_of_I2C_Set
	__size_of_I2C_Set	equ	__end_of_I2C_Set-_I2C_Set
	
_I2C_Set:	
;incstack = 0
	opt	stack 12
; Regs used in _I2C_Set: [wreg+status,2]
	line	235
	
l1647:	
;MCU_16f1516_B1.c: 235: I2C=&VarI2C;
	movlw	(_VarI2C)&0ffh
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
	
l1649:	
;MCU_16f1516_B1.c: 239: SSPCON2 = 0;
	clrf	(534)^0200h	;volatile
	line	241
	
l1651:	
;MCU_16f1516_B1.c: 241: SSPCON1=0b101000;
	movlw	(028h)
	movwf	(533)^0200h	;volatile
	line	258
	
l180:	
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
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	33
global __ptext14
__ptext14:	;psect for function _MainT_Initial
psect	text14
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	33
	global	__size_of_MainT_Initial
	__size_of_MainT_Initial	equ	__end_of_MainT_Initial-_MainT_Initial
	
_MainT_Initial:	
;incstack = 0
	opt	stack 13
; Regs used in _MainT_Initial: [wregfsr1]
	line	35
	
l1897:	
;myMain.c: 35: TMain=&VarTMain;
	movlw	(_VarTMain)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movwf	(_TMain)
	line	36
	
l1899:	
;myMain.c: 36: TMain->FirstOpen=1;
	movf	(_TMain),w
	addlw	0Dh
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	37
	
l1901:	
;myMain.c: 37: Product=&VarProduct;
	movlw	(_VarProduct)&0ffh
	movwf	(??_MainT_Initial+0)+0
	movf	(??_MainT_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_Product)
	line	38
	
l414:	
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
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setSegmentDisplayNumber
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	41
global __ptext15
__ptext15:	;psect for function _MainT
psect	text15
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\myMain.c"
	line	41
	global	__size_of_MainT
	__size_of_MainT	equ	__end_of_MainT-_MainT
	
_MainT:	
;incstack = 0
	opt	stack 11
; Regs used in _MainT: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	45
	
l2313:	
;myMain.c: 43: char i;
;myMain.c: 45: if(!TMain->PowerON)
	movf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u3011
	goto	u3010
u3011:
	goto	l2321
u3010:
	line	47
	
l2315:	
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
	
l2317:	
;myMain.c: 48: if(TMain->PowerCount == 1500)
	incf	(_TMain),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(05DCh)
	skipz
	goto	u3025
	moviw	[1]fsr1
	xorlw	high(05DCh)
u3025:
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l425
u3020:
	line	50
	
l2319:	
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
	
l418:	
	line	57
;myMain.c: 56: }
;myMain.c: 57: }
	goto	l425
	line	58
	
l417:	
	line	60
	
l2321:	
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
	
l2323:	
;myMain.c: 61: if(TMain->Count1 == 1000)
	movf	(_TMain),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(03E8h)
	skipz
	goto	u3035
	moviw	[1]fsr1
	xorlw	high(03E8h)
u3035:
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l2341
u3030:
	line	63
	
l2325:	
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
	
l2327:	
;myMain.c: 64: RA2=~RA2;
	movlw	1<<((98)&7)
	movlb 0	; select bank0
	xorwf	((98)/8),f
	goto	l2331
	line	78
	
l2329:	
	goto	l2331
	line	82
;myMain.c: 79: {
	
l421:	
	line	84
	
l2331:	
;myMain.c: 82: }
;myMain.c: 84: if(TMain->Test)
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u3041
	goto	u3040
u3041:
	goto	l2341
u3040:
	line	86
	
l2333:	
;myMain.c: 85: {
;myMain.c: 86: setSegmentDisplayNumber(I2C->BufferReader[I2C->Count]);
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
	line	87
	
l2335:	
;myMain.c: 87: I2C->Count++;
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
	line	88
	
l2337:	
;myMain.c: 88: if(I2C->Count==32)
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	020h&0ffh
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l2341
u3050:
	line	90
	
l2339:	
;myMain.c: 89: {
;myMain.c: 90: I2C->Count=0;
	movf	(_I2C),w
	addlw	040h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	goto	l2341
	line	91
	
l423:	
	goto	l2341
	line	92
	
l422:	
	goto	l2341
	line	105
	
l420:	
	line	108
	
l2341:	
;myMain.c: 91: }
;myMain.c: 92: }
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
	
l2343:	
;myMain.c: 109: if(TMain->Count2 == 2000)
	movf	(_TMain),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(07D0h)
	skipz
	goto	u3065
	moviw	[1]fsr1
	xorlw	high(07D0h)
u3065:
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l425
u3060:
	line	111
	
l2345:	
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
	
l419:	
	line	128
	
l425:	
	return
	opt stack 0
GLOBAL	__end_of_MainT
	__end_of_MainT:
	signat	_MainT,88
	global	_setSegmentDisplayNumber

;; *************** function _setSegmentDisplayNumber *****************
;; Defined at:
;;		line 20 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
;; Parameters:    Size  Location     Type
;;  number          2    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               1   10[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_MainT
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	20
global __ptext16
__ptext16:	;psect for function _setSegmentDisplayNumber
psect	text16
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\SegmentDisplay_A2.c"
	line	20
	global	__size_of_setSegmentDisplayNumber
	__size_of_setSegmentDisplayNumber	equ	__end_of_setSegmentDisplayNumber-_setSegmentDisplayNumber
	
_setSegmentDisplayNumber:	
;incstack = 0
	opt	stack 11
; Regs used in _setSegmentDisplayNumber: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	23
	
l2211:	
;SegmentDisplay_A2.c: 22: char i;
;SegmentDisplay_A2.c: 23: if(Segment->Enable)
	movlb 0	; select bank0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u2811
	goto	u2810
u2811:
	goto	l481
u2810:
	line	25
	
l2213:	
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
	goto	u2821
	goto	u2820
u2821:
	goto	l2221
u2820:
	line	28
	
l2215:	
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
	
l2217:	
;SegmentDisplay_A2.c: 29: Segment->Num[1]=((number>>4)&0x000f);
	movf	(setSegmentDisplayNumber@number+1),w
	movwf	(??_setSegmentDisplayNumber+0)+0+1
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	04h
	movwf	(??_setSegmentDisplayNumber+2)+0
u2835:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	(??_setSegmentDisplayNumber+2)+0,f
	goto	u2835
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
	
l2219:	
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
u2845:
	rlf	(??_setSegmentDisplayNumber+0)+1,w
	rrf	(??_setSegmentDisplayNumber+0)+1,f
	rrf	(??_setSegmentDisplayNumber+0)+0,f
	decfsz	(??_setSegmentDisplayNumber+2)+0,f
	goto	u2845
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
	goto	l2249
	line	33
	
l468:	
	
l2221:	
;SegmentDisplay_A2.c: 33: else if(Segment->Dec)
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u2851
	goto	u2850
u2851:
	goto	l2249
u2850:
	line	35
	
l2223:	
;SegmentDisplay_A2.c: 34: {
;SegmentDisplay_A2.c: 35: if(number > 0x270f)
	movf	(setSegmentDisplayNumber@number+1),w
	xorlw	80h
	movwf	(??_setSegmentDisplayNumber+0)+0
	movlw	(high(02710h))^80h
	subwf	(??_setSegmentDisplayNumber+0)+0,w
	skipz
	goto	u2865
	movlw	low(02710h)
	subwf	(setSegmentDisplayNumber@number),w
u2865:

	skipc
	goto	u2861
	goto	u2860
u2861:
	goto	l2237
u2860:
	line	37
	
l2225:	
;SegmentDisplay_A2.c: 36: {
;SegmentDisplay_A2.c: 37: for(i=0 ; i<4; i++)
	movlb 0	; select bank0
	clrf	(setSegmentDisplayNumber@i)
	
l2227:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l2231
u2870:
	goto	l2249
	
l2229:	
	goto	l2249
	line	38
	
l472:	
	line	39
	
l2231:	
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
	
l2233:	
	movlw	(01h)
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(??_setSegmentDisplayNumber+0)+0,w
	addwf	(setSegmentDisplayNumber@i),f
	
l2235:	
	movlw	(04h)
	subwf	(setSegmentDisplayNumber@i),w
	skipc
	goto	u2881
	goto	u2880
u2881:
	goto	l2231
u2880:
	goto	l2249
	
l473:	
	line	41
;SegmentDisplay_A2.c: 40: }
;SegmentDisplay_A2.c: 41: }
	goto	l2249
	line	42
	
l471:	
	line	44
	
l2237:	
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
	
l2239:	
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
	
l2241:	
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
	
l2243:	
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
	
l2245:	
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
	
l2247:	
;SegmentDisplay_A2.c: 50: Segment->Num[0]=number;
	movf	(setSegmentDisplayNumber@number),w
	movwf	(??_setSegmentDisplayNumber+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_setSegmentDisplayNumber+0)+0,w
	movwf	indf1
	goto	l2249
	line	51
	
l474:	
	goto	l2249
	line	52
	
l470:	
	goto	l2249
	line	53
	
l469:	
	
l2249:	
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
	goto	u2891
	goto	u2890
u2891:
	goto	l2253
u2890:
	line	55
	
l2251:	
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
	
l2253:	
;SegmentDisplay_A2.c: 57: else if(Segment->Num[2] > 0)
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u2901
	goto	u2900
u2901:
	goto	l2257
u2900:
	line	59
	
l2255:	
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
	
l2257:	
;SegmentDisplay_A2.c: 61: else if(Segment->Num[1] > 0)
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u2911
	goto	u2910
u2911:
	goto	l2261
u2910:
	line	63
	
l2259:	
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
	
l2261:	
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
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext17
__ptext17:	;psect for function ___awmod
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 11
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l2161:	
	movlb 0	; select bank0
	clrf	(___awmod@sign)
	line	14
	
l2163:	
	btfss	(___awmod@dividend+1),7
	goto	u2691
	goto	u2690
u2691:
	goto	l2169
u2690:
	line	15
	
l2165:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l2167:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l2169
	line	17
	
l661:	
	line	18
	
l2169:	
	btfss	(___awmod@divisor+1),7
	goto	u2701
	goto	u2700
u2701:
	goto	l2173
u2700:
	line	19
	
l2171:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2173
	
l662:	
	line	20
	
l2173:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2711
	goto	u2710
u2711:
	goto	l2191
u2710:
	line	21
	
l2175:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l2181
	
l665:	
	line	23
	
l2177:	
	movlw	01h
	
u2725:
	lslf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	decfsz	wreg,f
	goto	u2725
	line	24
	
l2179:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2181
	line	25
	
l664:	
	line	22
	
l2181:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l2177
u2730:
	goto	l2183
	
l666:	
	goto	l2183
	line	26
	
l667:	
	line	27
	
l2183:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2745
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2745:
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l2187
u2740:
	line	28
	
l2185:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	subwfb	(___awmod@dividend+1),f
	goto	l2187
	
l668:	
	line	29
	
l2187:	
	movlw	01h
	
u2755:
	lsrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	decfsz	wreg,f
	goto	u2755
	line	30
	
l2189:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l2183
u2760:
	goto	l2191
	
l669:	
	goto	l2191
	line	31
	
l663:	
	line	32
	
l2191:	
	movf	(___awmod@sign),w
	skipz
	goto	u2770
	goto	l2195
u2770:
	line	33
	
l2193:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2195
	
l670:	
	line	34
	
l2195:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l671
	
l2197:	
	line	35
	
l671:	
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
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext18
__ptext18:	;psect for function ___awdiv
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 11
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l2117:	
	movlb 0	; select bank0
	clrf	(___awdiv@sign)
	line	15
	
l2119:	
	btfss	(___awdiv@divisor+1),7
	goto	u2591
	goto	u2590
u2591:
	goto	l2125
u2590:
	line	16
	
l2121:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l2123:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l2125
	line	18
	
l648:	
	line	19
	
l2125:	
	btfss	(___awdiv@dividend+1),7
	goto	u2601
	goto	u2600
u2601:
	goto	l2131
u2600:
	line	20
	
l2127:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l2129:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2131
	line	22
	
l649:	
	line	23
	
l2131:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l2133:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2611
	goto	u2610
u2611:
	goto	l2153
u2610:
	line	25
	
l2135:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l2141
	
l652:	
	line	27
	
l2137:	
	movlw	01h
	
u2625:
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u2625
	line	28
	
l2139:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2141
	line	29
	
l651:	
	line	26
	
l2141:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l2137
u2630:
	goto	l2143
	
l653:	
	goto	l2143
	line	30
	
l654:	
	line	31
	
l2143:	
	movlw	01h
	
u2645:
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u2645
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2655
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2655:
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l2149
u2650:
	line	33
	
l2145:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	34
	
l2147:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2149
	line	35
	
l655:	
	line	36
	
l2149:	
	movlw	01h
	
u2665:
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	decfsz	wreg,f
	goto	u2665
	line	37
	
l2151:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l2143
u2670:
	goto	l2153
	
l656:	
	goto	l2153
	line	38
	
l650:	
	line	39
	
l2153:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2680
	goto	l2157
u2680:
	line	40
	
l2155:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2157
	
l657:	
	line	41
	
l2157:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l658
	
l2159:	
	line	42
	
l658:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_I2C_Main

;; *************** function _I2C_Main *****************
;; Defined at:
;;		line 275 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    6[COMMON] unsigned char 
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
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         1       3       0       0       0       0       0       0
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
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	275
global __ptext19
__ptext19:	;psect for function _I2C_Main
psect	text19
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	275
	global	__size_of_I2C_Main
	__size_of_I2C_Main	equ	__end_of_I2C_Main-_I2C_Main
	
_I2C_Main:	
;incstack = 0
	opt	stack 12
; Regs used in _I2C_Main: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	302
	
l2263:	
;MCU_16f1516_B1.c: 277: char i;
;MCU_16f1516_B1.c: 302: if(I2C->MasterRxGO)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,4
	goto	u2921
	goto	u2920
u2921:
	goto	l187
u2920:
	line	304
	
l2265:	
;MCU_16f1516_B1.c: 303: {
;MCU_16f1516_B1.c: 304: I2C->MasterRxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,4
	line	305
	
l2267:	
;MCU_16f1516_B1.c: 305: I2C_Master_Reception();
	fcall	_I2C_Master_Reception
	line	306
	
l2269:	
;MCU_16f1516_B1.c: 306: TMain->Test=1;
	movf	(_TMain),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	307
	
l2271:	
;MCU_16f1516_B1.c: 307: RA1=~RA1;
	movlw	1<<((97)&7)
	movlb 0	; select bank0
	xorwf	((97)/8),f
	line	309
	
l2273:	
;MCU_16f1516_B1.c: 309: for(i=0;i<32;i++)
	clrf	(I2C_Main@i)
	
l2275:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l2279
u2930:
	goto	l2285
	
l2277:	
	goto	l2285
	line	310
	
l188:	
	line	311
	
l2279:	
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
	
l2281:	
	movlw	(01h)
	movwf	(??_I2C_Main+0)+0
	movf	(??_I2C_Main+0)+0,w
	addwf	(I2C_Main@i),f
	
l2283:	
	movlw	(020h)
	subwf	(I2C_Main@i),w
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l2279
u2940:
	goto	l2285
	
l189:	
	line	313
	
l2285:	
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
	goto	l196
	line	316
	
l187:	
	line	318
;MCU_16f1516_B1.c: 316: else
;MCU_16f1516_B1.c: 317: {
;MCU_16f1516_B1.c: 318: if(RC0)
	movlb 0	; select bank0
	btfss	(112/8),(112)&7	;volatile
	goto	u2951
	goto	u2950
u2951:
	goto	l2291
u2950:
	line	320
	
l2287:	
;MCU_16f1516_B1.c: 319: {
;MCU_16f1516_B1.c: 320: if(!I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfsc	indf1,5
	goto	u2961
	goto	u2960
u2961:
	goto	l196
u2960:
	line	322
	
l2289:	
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
	goto	l196
	line	324
	
l192:	
	line	325
;MCU_16f1516_B1.c: 324: }
;MCU_16f1516_B1.c: 325: }
	goto	l196
	line	326
	
l191:	
	line	328
	
l2291:	
;MCU_16f1516_B1.c: 326: else
;MCU_16f1516_B1.c: 327: {
;MCU_16f1516_B1.c: 328: if(I2C->SS)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,5
	goto	u2971
	goto	u2970
u2971:
	goto	l194
u2970:
	line	330
	
l2293:	
;MCU_16f1516_B1.c: 329: {
;MCU_16f1516_B1.c: 330: I2C->SS=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,5
	line	331
	
l194:	
	line	332
;MCU_16f1516_B1.c: 331: }
;MCU_16f1516_B1.c: 332: if(I2C->MasterTxGO)
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	btfss	indf1,3
	goto	u2981
	goto	u2980
u2981:
	goto	l196
u2980:
	line	334
	
l2295:	
;MCU_16f1516_B1.c: 333: {
;MCU_16f1516_B1.c: 334: I2C->MasterTxGO=0;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bcf	indf1,3
	line	335
	
l2297:	
;MCU_16f1516_B1.c: 335: I2C_Master_Transmission();
	fcall	_I2C_Master_Transmission
	goto	l196
	line	336
	
l195:	
	goto	l196
	line	337
	
l193:	
	goto	l196
	line	338
	
l190:	
	line	341
	
l196:	
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
psect	text20,local,class=CODE,delta=2,merge=1
	line	375
global __ptext20
__ptext20:	;psect for function _I2C_Master_Transmission
psect	text20
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	375
	global	__size_of_I2C_Master_Transmission
	__size_of_I2C_Master_Transmission	equ	__end_of_I2C_Master_Transmission-_I2C_Master_Transmission
	
_I2C_Master_Transmission:	
;incstack = 0
	opt	stack 12
; Regs used in _I2C_Master_Transmission: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	378
	
l1695:	
;MCU_16f1516_B1.c: 377: char i;
;MCU_16f1516_B1.c: 378: while(SEN);
	goto	l202
	
l203:	
	
l202:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u1771
	goto	u1770
u1771:
	goto	l202
u1770:
	
l204:	
	line	379
;MCU_16f1516_B1.c: 379: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7	;volatile
	line	381
;MCU_16f1516_B1.c: 381: while(SEN);
	goto	l205
	
l206:	
	
l205:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u1781
	goto	u1780
u1781:
	goto	l205
u1780:
	goto	l1697
	
l207:	
	line	384
	
l1697:	
;MCU_16f1516_B1.c: 384: SSPBUF=0x10;
	movlw	(010h)
	movwf	(529)^0200h	;volatile
	line	385
;MCU_16f1516_B1.c: 385: while(BF);
	goto	l208
	
l209:	
	
l208:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u1791
	goto	u1790
u1791:
	goto	l208
u1790:
	goto	l211
	
l210:	
	line	388
;MCU_16f1516_B1.c: 388: while(ACKSTAT);
	goto	l211
	
l212:	
	
l211:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u1801
	goto	u1800
u1801:
	goto	l211
u1800:
	goto	l1699
	
l213:	
	line	390
	
l1699:	
;MCU_16f1516_B1.c: 390: for(i=0;i<32;i++)
	clrf	(I2C_Master_Transmission@i)
	
l1701:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u1811
	goto	u1810
u1811:
	goto	l216
u1810:
	goto	l225
	
l1703:	
	goto	l225
	line	391
	
l214:	
	line	392
;MCU_16f1516_B1.c: 391: {
;MCU_16f1516_B1.c: 392: while(SEN);
	goto	l216
	
l217:	
	
l216:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u1821
	goto	u1820
u1821:
	goto	l216
u1820:
	goto	l1705
	
l218:	
	line	393
	
l1705:	
;MCU_16f1516_B1.c: 393: SSPBUF=I2C->BufferWriter[i];
	movf	(I2C_Master_Transmission@i),w
	addlw	020h
	addwf	(_I2C),w
	movwf	(??_I2C_Master_Transmission+0)+0
	movf	0+(??_I2C_Master_Transmission+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(529)^0200h	;volatile
	line	394
;MCU_16f1516_B1.c: 394: while(BF);
	goto	l219
	
l220:	
	
l219:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u1831
	goto	u1830
u1831:
	goto	l219
u1830:
	goto	l222
	
l221:	
	line	397
;MCU_16f1516_B1.c: 397: while(ACKSTAT);
	goto	l222
	
l223:	
	
l222:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u1841
	goto	u1840
u1841:
	goto	l222
u1840:
	goto	l1707
	
l224:	
	line	390
	
l1707:	
	movlw	(01h)
	movwf	(??_I2C_Master_Transmission+0)+0
	movf	(??_I2C_Master_Transmission+0)+0,w
	addwf	(I2C_Master_Transmission@i),f
	
l1709:	
	movlw	(020h)
	subwf	(I2C_Master_Transmission@i),w
	skipc
	goto	u1851
	goto	u1850
u1851:
	goto	l216
u1850:
	goto	l225
	
l215:	
	line	400
;MCU_16f1516_B1.c: 398: }
;MCU_16f1516_B1.c: 400: while(SEN);
	goto	l225
	
l226:	
	
l225:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u1861
	goto	u1860
u1861:
	goto	l225
u1860:
	goto	l228
	
l227:	
	line	401
;MCU_16f1516_B1.c: 401: while(!PEN)
	goto	l228
	
l229:	
	line	402
;MCU_16f1516_B1.c: 402: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7	;volatile
	
l228:	
	line	401
	btfss	(4274/8)^0200h,(4274)&7	;volatile
	goto	u1871
	goto	u1870
u1871:
	goto	l229
u1870:
	goto	l231
	
l230:	
	line	403
;MCU_16f1516_B1.c: 403: while(PEN);
	goto	l231
	
l232:	
	
l231:	
	btfsc	(4274/8)^0200h,(4274)&7	;volatile
	goto	u1881
	goto	u1880
u1881:
	goto	l231
u1880:
	goto	l234
	
l233:	
	line	406
	
l234:	
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
psect	text21,local,class=CODE,delta=2,merge=1
	line	408
global __ptext21
__ptext21:	;psect for function _I2C_Master_Reception
psect	text21
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	408
	global	__size_of_I2C_Master_Reception
	__size_of_I2C_Master_Reception	equ	__end_of_I2C_Master_Reception-_I2C_Master_Reception
	
_I2C_Master_Reception:	
;incstack = 0
	opt	stack 12
; Regs used in _I2C_Master_Reception: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	411
	
l1679:	
;MCU_16f1516_B1.c: 410: char i;
;MCU_16f1516_B1.c: 411: while(SEN);
	goto	l237
	
l238:	
	
l237:	
	movlb 4	; select bank4
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u1571
	goto	u1570
u1571:
	goto	l237
u1570:
	
l239:	
	line	412
;MCU_16f1516_B1.c: 412: SEN=1;
	bsf	(4272/8)^0200h,(4272)&7	;volatile
	line	413
;MCU_16f1516_B1.c: 413: while(SEN);
	goto	l240
	
l241:	
	
l240:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u1581
	goto	u1580
u1581:
	goto	l240
u1580:
	goto	l1681
	
l242:	
	line	416
	
l1681:	
;MCU_16f1516_B1.c: 416: SSPBUF=0x11;
	movlw	(011h)
	movwf	(529)^0200h	;volatile
	line	419
;MCU_16f1516_B1.c: 419: while(BF);
	goto	l243
	
l244:	
	
l243:	
	btfsc	(4256/8)^0200h,(4256)&7	;volatile
	goto	u1591
	goto	u1590
u1591:
	goto	l243
u1590:
	goto	l246
	
l245:	
	line	420
;MCU_16f1516_B1.c: 420: while(ACKSTAT);
	goto	l246
	
l247:	
	
l246:	
	btfsc	(4278/8)^0200h,(4278)&7	;volatile
	goto	u1601
	goto	u1600
u1601:
	goto	l246
u1600:
	goto	l1683
	
l248:	
	line	423
	
l1683:	
;MCU_16f1516_B1.c: 423: for(i=0;i<32;i++)
	clrf	(I2C_Master_Reception@i)
	
l1685:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u1611
	goto	u1610
u1611:
	goto	l251
u1610:
	goto	l266
	
l1687:	
	goto	l266
	line	424
	
l249:	
	line	425
;MCU_16f1516_B1.c: 424: {
;MCU_16f1516_B1.c: 425: while(SEN);
	goto	l251
	
l252:	
	
l251:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u1621
	goto	u1620
u1621:
	goto	l251
u1620:
	goto	l254
	
l253:	
	line	426
;MCU_16f1516_B1.c: 426: while(RCEN);
	goto	l254
	
l255:	
	
l254:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u1631
	goto	u1630
u1631:
	goto	l254
u1630:
	
l256:	
	line	427
;MCU_16f1516_B1.c: 427: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	428
;MCU_16f1516_B1.c: 428: while(RCEN);
	goto	l257
	
l258:	
	
l257:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u1641
	goto	u1640
u1641:
	goto	l257
u1640:
	goto	l1689
	
l259:	
	line	429
	
l1689:	
;MCU_16f1516_B1.c: 429: I2C->BufferReader[i]=SSPBUF;
	movf	(529)^0200h,w	;volatile
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
	goto	l260
	
l261:	
	line	431
;MCU_16f1516_B1.c: 431: ACKEN=1;
	bsf	(4276/8)^0200h,(4276)&7	;volatile
	
l260:	
	line	430
	btfss	(4276/8)^0200h,(4276)&7	;volatile
	goto	u1651
	goto	u1650
u1651:
	goto	l261
u1650:
	goto	l263
	
l262:	
	line	432
;MCU_16f1516_B1.c: 432: while(ACKEN);
	goto	l263
	
l264:	
	
l263:	
	btfsc	(4276/8)^0200h,(4276)&7	;volatile
	goto	u1661
	goto	u1660
u1661:
	goto	l263
u1660:
	goto	l1691
	
l265:	
	line	423
	
l1691:	
	movlw	(01h)
	movwf	(??_I2C_Master_Reception+0)+0
	movf	(??_I2C_Master_Reception+0)+0,w
	addwf	(I2C_Master_Reception@i),f
	
l1693:	
	movlw	(020h)
	subwf	(I2C_Master_Reception@i),w
	skipc
	goto	u1671
	goto	u1670
u1671:
	goto	l251
u1670:
	goto	l266
	
l250:	
	line	434
;MCU_16f1516_B1.c: 433: }
;MCU_16f1516_B1.c: 434: while(RCEN);
	goto	l266
	
l267:	
	
l266:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u1681
	goto	u1680
u1681:
	goto	l266
u1680:
	
l268:	
	line	435
;MCU_16f1516_B1.c: 435: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	436
;MCU_16f1516_B1.c: 436: while(RCEN);
	goto	l269
	
l270:	
	
l269:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u1691
	goto	u1690
u1691:
	goto	l269
u1690:
	goto	l272
	
l271:	
	line	437
;MCU_16f1516_B1.c: 437: while(!ACKEN)
	goto	l272
	
l273:	
	line	438
;MCU_16f1516_B1.c: 438: ACKEN=1;
	bsf	(4276/8)^0200h,(4276)&7	;volatile
	
l272:	
	line	437
	btfss	(4276/8)^0200h,(4276)&7	;volatile
	goto	u1701
	goto	u1700
u1701:
	goto	l273
u1700:
	goto	l275
	
l274:	
	line	439
;MCU_16f1516_B1.c: 439: while(ACKEN);
	goto	l275
	
l276:	
	
l275:	
	btfsc	(4276/8)^0200h,(4276)&7	;volatile
	goto	u1711
	goto	u1710
u1711:
	goto	l275
u1710:
	goto	l278
	
l277:	
	line	440
;MCU_16f1516_B1.c: 440: while(RCEN);
	goto	l278
	
l279:	
	
l278:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u1721
	goto	u1720
u1721:
	goto	l278
u1720:
	
l280:	
	line	441
;MCU_16f1516_B1.c: 441: RCEN=1;
	bsf	(4275/8)^0200h,(4275)&7	;volatile
	line	442
;MCU_16f1516_B1.c: 442: while(RCEN);
	goto	l281
	
l282:	
	
l281:	
	btfsc	(4275/8)^0200h,(4275)&7	;volatile
	goto	u1731
	goto	u1730
u1731:
	goto	l281
u1730:
	goto	l284
	
l283:	
	line	444
;MCU_16f1516_B1.c: 444: while(SEN);
	goto	l284
	
l285:	
	
l284:	
	btfsc	(4272/8)^0200h,(4272)&7	;volatile
	goto	u1741
	goto	u1740
u1741:
	goto	l284
u1740:
	goto	l287
	
l286:	
	line	445
;MCU_16f1516_B1.c: 445: while(!PEN)
	goto	l287
	
l288:	
	line	446
;MCU_16f1516_B1.c: 446: PEN=1;
	bsf	(4274/8)^0200h,(4274)&7	;volatile
	
l287:	
	line	445
	btfss	(4274/8)^0200h,(4274)&7	;volatile
	goto	u1751
	goto	u1750
u1751:
	goto	l288
u1750:
	goto	l290
	
l289:	
	line	447
;MCU_16f1516_B1.c: 447: while(PEN);
	goto	l290
	
l291:	
	
l290:	
	btfsc	(4274/8)^0200h,(4274)&7	;volatile
	goto	u1761
	goto	u1760
u1761:
	goto	l290
u1760:
	goto	l293
	
l292:	
	line	450
	
l293:	
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
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
	
i1l1977:	
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
	
i1l1979:	
;MCU_16f1516_B1.c: 62: TMR1_ISR();
	fcall	_TMR1_ISR
	line	66
	
i1l1981:	
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
	
i1l169:	
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
;;		line 516 in file "C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
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
psect	text23,local,class=CODE,delta=2,merge=1
	line	516
global __ptext23
__ptext23:	;psect for function _UART_ISR
psect	text23
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	516
	global	__size_of_UART_ISR
	__size_of_UART_ISR	equ	__end_of_UART_ISR-_UART_ISR
	
_UART_ISR:	
;incstack = 0
	opt	stack 10
; Regs used in _UART_ISR: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	519
	
i1l1823:	
;MCU_16f1516_B1.c: 518: char i;
;MCU_16f1516_B1.c: 519: if(RCIE && RCIF)
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7	;volatile
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l322
u208_20:
	
i1l1825:	
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l322
u209_20:
	goto	i1l318
	line	521
	
i1l1827:	
;MCU_16f1516_B1.c: 520: {
;MCU_16f1516_B1.c: 521: while(!RCIDL);
	goto	i1l318
	
i1l319:	
	
i1l318:	
	movlb 3	; select bank3
	btfss	(3326/8)^0180h,(3326)&7	;volatile
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l318
u210_20:
	goto	i1l1829
	
i1l320:	
	line	522
	
i1l1829:	
;MCU_16f1516_B1.c: 522: UART->RxData[UART->RxLength]=RCREG;
	movf	(409)^0180h,w	;volatile
	movwf	(??_UART_ISR+0)+0
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
	line	524
;MCU_16f1516_B1.c: 524: UART->RxLength++;
	movlw	(01h)
	movwf	(??_UART_ISR+0)+0
	movf	(_UART),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(??_UART_ISR+0)+0,w
	addwf	indf1,f
	line	525
	
i1l1831:	
;MCU_16f1516_B1.c: 525: if(UART->RxLength == 32)
	movf	(_UART),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	xorlw	020h&0ffh
	skipz
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l322
u211_20:
	line	527
	
i1l1833:	
;MCU_16f1516_B1.c: 526: {
;MCU_16f1516_B1.c: 527: UART->RxLength=0;
	movf	(_UART),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	clrf	indf1
	line	528
	
i1l1835:	
;MCU_16f1516_B1.c: 528: UART->RxGO=1;
	movf	(_UART),w
	addlw	043h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,1
	line	529
	
i1l1837:	
;MCU_16f1516_B1.c: 529: RCIE=0;
	movlb 1	; select bank1
	bcf	(1165/8)^080h,(1165)&7	;volatile
	goto	i1l322
	line	530
	
i1l321:	
	goto	i1l322
	line	531
	
i1l317:	
	line	532
	
i1l322:	
	return
	opt stack 0
GLOBAL	__end_of_UART_ISR
	__end_of_UART_ISR:
	signat	_UART_ISR,88
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
psect	text24,local,class=CODE,delta=2,merge=1
	line	125
global __ptext24
__ptext24:	;psect for function _TMR1_ISR
psect	text24
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	125
	global	__size_of_TMR1_ISR
	__size_of_TMR1_ISR	equ	__end_of_TMR1_ISR-_TMR1_ISR
	
_TMR1_ISR:	
;incstack = 0
	opt	stack 10
; Regs used in _TMR1_ISR: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	127
	
i1l1809:	
;MCU_16f1516_B1.c: 127: if(TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7	;volatile
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l177
u205_20:
	
i1l1811:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7	;volatile
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l177
u206_20:
	line	129
	
i1l1813:	
;MCU_16f1516_B1.c: 128: {
;MCU_16f1516_B1.c: 129: TMR1H=((65536-700)/256);
	movlw	(0FDh)
	movwf	(23)	;volatile
	line	130
;MCU_16f1516_B1.c: 130: TMR1L=((65536-700)%256);
	movlw	(044h)
	movwf	(22)	;volatile
	line	131
	
i1l1815:	
;MCU_16f1516_B1.c: 131: TMR1IF=0;
	bcf	(136/8),(136)&7	;volatile
	line	132
	
i1l1817:	
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
	
i1l1819:	
;MCU_16f1516_B1.c: 133: if(Timer1->Count == 20)
	incf	(_Timer1),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	xorlw	low(014h)
	skipz
	goto	u207_25
	moviw	[1]fsr1
	xorlw	high(014h)
u207_25:
	skipz
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l177
u207_20:
	line	135
	
i1l1821:	
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
	goto	i1l177
	line	137
	
i1l176:	
	goto	i1l177
	line	138
	
i1l175:	
	line	139
	
i1l177:	
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
psect	text25,local,class=CODE,delta=2,merge=1
	line	260
global __ptext25
__ptext25:	;psect for function _I2C_ISR
psect	text25
	file	"C:\Users\Eric\Documents\GitHub\myPicCode\Source_File\MCU_16f1516_B1.c"
	line	260
	global	__size_of_I2C_ISR
	__size_of_I2C_ISR	equ	__end_of_I2C_ISR-_I2C_ISR
	
_I2C_ISR:	
;incstack = 0
	opt	stack 10
; Regs used in _I2C_ISR: [wregfsr1]
	line	262
	
i1l1839:	
;MCU_16f1516_B1.c: 262: if(SSPIE && SSPIF)
	movlb 1	; select bank1
	btfss	(1163/8)^080h,(1163)&7	;volatile
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l184
u212_20:
	
i1l1841:	
	movlb 0	; select bank0
	btfss	(139/8),(139)&7	;volatile
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l184
u213_20:
	line	264
	
i1l1843:	
;MCU_16f1516_B1.c: 263: {
;MCU_16f1516_B1.c: 264: SSPIE=0;
	movlb 1	; select bank1
	bcf	(1163/8)^080h,(1163)&7	;volatile
	line	265
	
i1l1845:	
;MCU_16f1516_B1.c: 265: I2C->SlaveGO=1;
	movf	(_I2C),w
	addlw	042h
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	bsf	indf1,0
	goto	i1l184
	line	272
	
i1l183:	
	line	273
	
i1l184:	
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

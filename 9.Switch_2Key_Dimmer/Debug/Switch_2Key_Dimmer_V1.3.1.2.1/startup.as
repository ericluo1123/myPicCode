
	; Microchip MPLAB XC8 C Compiler V1.32
	; Copyright (C) 1984-2014 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; -oSwitch_2Key_Dimmer_V1.3.1.2.1.cof \
	; -mSwitch_2Key_Dimmer_V1.3.1.2.1.map --summary=default \
	; --output=default Buzzer_B1.p1 CC2500_B1.p1 CDS_B1.p1 DelayOff_B1.p1 \
	; Dimmer_B1.p1 LED_B1.p1 main.p1 MCU_B1.p1 OverLoad_B1.p1 \
	; OverTemperature_B1.p1 PIR_B1.p1 PowerFault_B1.p1 RF_Control_B1.p1 \
	; Switch_B1.p1 SYSC_B1.p1 TriacRelay_B1.p1 --chip=16F1518 \
	; -IC:\Users\taianluo\Documents\GitHub\myPicCode\9.Switch_2Key_Dimmer\Debug\Switch_2Key_Dimmer_V1.3.1.2.1\res \
	; -IC:\Users\taianluo\Documents\GitHub\myPicCode\Header_File -P \
	; --runtime=default --opt=default -N-1 -D__DEBUG=1 -g --asmlist \
	; --errformat=Error   [%n] %f; %l.%c %s --msgformat=Advisory[%n] %s \
	; --warnformat=Warning [%n] %f; %l.%c %s
	;


	processor	16F1518

	global	_main,start,reset_vec
	fnroot	_main
	psect	config,class=CONFIG,delta=2,noexec
	psect	idloc,class=IDLOC,delta=2,noexec
	psect	code,class=CODE,delta=2
	psect	powerup,class=CODE,delta=2
	psect	reset_vec,class=CODE,delta=2
	psect	maintext,class=CODE,delta=2
	C	set	0
	Z	set	2
	PCL	set	2
	INDF	set	0

	STATUS	equ	3
	BSR	equ	8
	PCLATH	equ	0Ah
	psect	eeprom_data,class=EEDATA,delta=2,space=3,noexec
	psect	strings,class=CODE,delta=2,reloc=256
	psect	intentry,class=CODE,delta=2
	psect	functab,class=CODE,delta=2
	global	intlevel0,intlevel1,intlevel2, intlevel3, intlevel4, intlevel5
intlevel0:
intlevel1:
intlevel2:
intlevel3:
intlevel4:
intlevel5:
	psect	init,class=CODE,delta=2
	psect	cinit,class=CODE,delta=2
	psect	text,class=CODE,delta=2
	psect	end_init,class=CODE,delta=2
	psect	clrtext,class=CODE,delta=2
	INDF0	set	0
	INDF1	set	1
	PCL	set	2
	STATUS	set	3
	FSR0L	set	4
	FSR0H	set	5
	FSR1L	set	6
	FSR1H	set	7
	BSR	set	8
	WREG	set	9
	PCLATH	set	10
	INTCON	set	11

	psect	reset_vec
reset_vec:
	; No powerup routine
	global start

; jump to start
	ljmp	start


	psect	init
start

;Initialize the stack pointer (FSR1)
;Stack space: 02165h-0231Fh (443 bytes)

	fsr1l	equ	6
	fsr1h	equ	7
	global stacklo, stackhi
	stacklo	equ	02165h
	stackhi	equ	0231Fh


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___int_sp
	___sp:
	___int_sp:

	psect	end_init
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

; Config register CONFIG1 @ 0x8007
;	Clock Out Enable
;	CLKOUTEN = 0x1, unprogrammed default
;	Watchdog Timer Enable
;	WDTE = SWDTEN, WDT controlled by the SWDTEN bit in the WDTCON register
;	Power-up Timer Enable
;	PWRTE = 0x1, unprogrammed default
;	Flash Program Memory Code Protection
;	CP = 0x1, unprogrammed default
;	Brown-out Reset Enable
;	BOREN = OFF, Brown-out Reset disabled
;	Fail-Safe Clock Monitor Enable
;	FCMEN = 0x1, unprogrammed default
;	MCLR Pin Function Select
;	MCLRE = 0x1, unprogrammed default
;	Internal/External Switchover
;	IESO = 0x1, unprogrammed default
;	Oscillator Selection
;	FOSC = INTOSC, INTOSC oscillator: I/O function on CLKIN pin

	psect	config
		org 0x0
		dw 0xF9EC

; Config register CONFIG2 @ 0x8008
;	Stack Overflow/Underflow Reset Enable
;	STVREN = 0x1, unprogrammed default
;	Low-Power Brown Out Reset
;	LPBOR = 0x1, unprogrammed default
;	Brown-out Reset Voltage Selection
;	BORV = 0x1, unprogrammed default
;	Low-Voltage Programming Enable
;	LVP = 0x1, unprogrammed default
;	Voltage Regulator Capacitor Enable bit
;	VCAPEN = 0x1, unprogrammed default
;	Flash Memory Self-Write Protection
;	WRT = HALF, 000h to 1FFFh write protected, 2000h to 3FFFh may be modified by EECON control

	psect	config
		org 0x1
		dw 0xFFFD


psect common,class=COMMON,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect bank4,class=BANK4,space=1
psect bank5,class=BANK5,space=1
psect bank6,class=BANK6,space=1
psect bank7,class=BANK7,space=1
psect bank8,class=BANK8,space=1
psect bank9,class=BANK9,space=1
psect bank10,class=BANK10,space=1
psect bank11,class=BANK11,space=1
psect bank12,class=BANK12,space=1
psect bank13,class=BANK13,space=1
psect bank14,class=BANK14,space=1
psect bank15,class=BANK15,space=1
psect bank16,class=BANK16,space=1
psect bank17,class=BANK17,space=1
psect bank18,class=BANK18,space=1
psect bank19,class=BANK19,space=1
psect bank20,class=BANK20,space=1
psect bank21,class=BANK21,space=1
psect bank22,class=BANK22,space=1
psect bank23,class=BANK23,space=1
psect bank24,class=BANK24,space=1
psect bank25,class=BANK25,space=1
psect bank26,class=BANK26,space=1
psect bank27,class=BANK27,space=1
psect bank28,class=BANK28,space=1
psect bank29,class=BANK29,space=1
psect bank30,class=BANK30,space=1
psect bank31,class=BANK31,space=1
psect bigram,class=BIGRAM,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect sfr0,class=SFR0,space=1
psect sfr1,class=SFR1,space=1
psect sfr2,class=SFR2,space=1
psect sfr3,class=SFR3,space=1
psect sfr4,class=SFR4,space=1
psect sfr5,class=SFR5,space=1
psect sfr6,class=SFR6,space=1
psect sfr7,class=SFR7,space=1
psect sfr8,class=SFR8,space=1
psect sfr9,class=SFR9,space=1
psect sfr10,class=SFR10,space=1
psect sfr11,class=SFR11,space=1
psect sfr12,class=SFR12,space=1
psect sfr13,class=SFR13,space=1
psect sfr14,class=SFR14,space=1
psect sfr15,class=SFR15,space=1
psect sfr16,class=SFR16,space=1
psect sfr17,class=SFR17,space=1
psect sfr18,class=SFR18,space=1
psect sfr19,class=SFR19,space=1
psect sfr20,class=SFR20,space=1
psect sfr21,class=SFR21,space=1
psect sfr22,class=SFR22,space=1
psect sfr23,class=SFR23,space=1
psect sfr24,class=SFR24,space=1
psect sfr25,class=SFR25,space=1
psect sfr26,class=SFR26,space=1
psect sfr27,class=SFR27,space=1
psect sfr28,class=SFR28,space=1
psect sfr29,class=SFR29,space=1
psect sfr30,class=SFR30,space=1
psect sfr31,class=SFR31,space=1


	end	start

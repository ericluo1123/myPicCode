opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

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
# 13 "G:\Program\PIC\Source_File\MCU_16f1516.c"
	psect config,class=CONFIG,delta=2 ;#
# 13 "G:\Program\PIC\Source_File\MCU_16f1516.c"
	dw 0xFFFC & 0xFFE7 ;#
# 14 "G:\Program\PIC\Source_File\MCU_16f1516.c"
	psect config,class=CONFIG,delta=2 ;#
# 14 "G:\Program\PIC\Source_File\MCU_16f1516.c"
	dw 0xFFFF ;#
	FNCALL	_main,_MCU_Initial
	FNCALL	_main,_Display_Initial
	FNCALL	_main,_Display_Main
	FNCALL	_main,_CDS_Get
	FNCALL	_main,_Display_Setting
	FNCALL	_Display_Setting,___lwdiv
	FNCALL	_Display_Setting,___lwmod
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VarUart
	global	_Read_Data
	global	_Touch
	global	_Uart
	global	_Momery_OK
	global	_TouchPower
	global	_Memory
	global	_VarSegment
	global	_VarTouch
	global	_VarIntr
	global	_Intr
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_Intr:
       ds      1

	global	_Segment
_Segment:
       ds      1

	global	_PORTA
_PORTA	set	12
	global	_PORTB
_PORTB	set	13
	global	_PORTC
_PORTC	set	14
	global	_TMR0
_TMR0	set	21
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RA1
_RA1	set	97
	global	_RA3
_RA3	set	99
	global	_RCIF
_RCIF	set	141
	global	_SSPIF
_SSPIF	set	139
	global	_TMR0IE
_TMR0IE	set	93
	global	_TMR0IF
_TMR0IF	set	90
	global	_TXIF
_TXIF	set	140
	global	_ADCON0
_ADCON0	set	157
	global	_ADCON1
_ADCON1	set	158
	global	_ADRESH
_ADRESH	set	156
	global	_ADRESL
_ADRESL	set	155
	global	_OPTION_REG
_OPTION_REG	set	149
	global	_OSCCON
_OSCCON	set	153
	global	_TRISA
_TRISA	set	140
	global	_TRISB
_TRISB	set	141
	global	_TRISC
_TRISC	set	142
	global	_GO_nDONE
_GO_nDONE	set	1257
	global	_RCIE
_RCIE	set	1165
	global	_SSPIE
_SSPIE	set	1163
	global	_TXIE
_TXIE	set	1164
	global	_FVRCON
_FVRCON	set	279
	global	_LATA
_LATA	set	268
	global	_LATB
_LATB	set	269
	global	_LATC
_LATC	set	270
	global	_ANSELA
_ANSELA	set	396
	global	_ANSELB
_ANSELB	set	397
	global	_ANSELC
_ANSELC	set	398
	global	_PMADRH
_PMADRH	set	402
	global	_PMADRL
_PMADRL	set	401
	global	_PMCON2
_PMCON2	set	406
	global	_PMDATH
_PMDATH	set	404
	global	_PMDATL
_PMDATL	set	403
	global	_RCREG
_RCREG	set	409
	global	_TXREG
_TXREG	set	410
	global	_CFGS
_CFGS	set	3246
	global	_FREE
_FREE	set	3244
	global	_LWLO
_LWLO	set	3245
	global	_RCIDL
_RCIDL	set	3326
	global	_RD
_RD	set	3240
	global	_WR
_WR	set	3241
	global	_WREN
_WREN	set	3242
	global	_SSPADD
_SSPADD	set	530
	global	_SSPBUF
_SSPBUF	set	529
	global	_R_nW
_R_nW	set	4258
	global	_SEN
_SEN	set	4272
	file	"Development_V1.0.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_Momery_OK:
       ds      1

_TouchPower:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_Touch:
       ds      1

_Uart:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_VarUart:
       ds      9

_Read_Data:
       ds      1

_VarSegment:
       ds      27

_VarTouch:
       ds      8

_VarIntr:
       ds      7

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_Memory:
       ds      32

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	global __pbitbssCOMMON
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	034h
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	020h
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_MCU_Initial
?_MCU_Initial:	; 0 bytes @ 0x0
	global	?_Display_Initial
?_Display_Initial:	; 0 bytes @ 0x0
	global	?_Display_Main
?_Display_Main:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	3
	global	??_MCU_Initial
??_MCU_Initial:	; 0 bytes @ 0x3
	global	??_Display_Initial
??_Display_Initial:	; 0 bytes @ 0x3
	global	??_Display_Main
??_Display_Main:	; 0 bytes @ 0x3
	global	?_CDS_Get
?_CDS_Get:	; 2 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
	ds	2
	global	Display_Main@j
Display_Main@j:	; 1 bytes @ 0x5
	global	CDS_Get@i
CDS_Get@i:	; 2 bytes @ 0x5
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x5
	ds	1
	global	Display_Main@i
Display_Main@i:	; 1 bytes @ 0x6
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x7
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x7
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_CDS_Get
??_CDS_Get:	; 0 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x0
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	2
	global	?_Display_Setting
?_Display_Setting:	; 0 bytes @ 0x3
	global	Display_Setting@Data
Display_Setting@Data:	; 2 bytes @ 0x3
	ds	2
	global	??_Display_Setting
??_Display_Setting:	; 0 bytes @ 0x5
	ds	3
	global	Display_Setting@i
Display_Setting@i:	; 1 bytes @ 0x8
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	2
	global	main@l
main@l:	; 1 bytes @ 0xB
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0xC
	ds	2
	global	main@j
main@j:	; 1 bytes @ 0xE
	ds	1
	global	main@k
main@k:	; 1 bytes @ 0xF
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 86, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      11
;; BANK0           80     16      70
;; BANK1           80      0      32
;; BANK2           80      0       0
;; BANK3           80      0       0
;; BANK4           80      0       0
;; BANK5           80      0       0
;; BANK6           16      0       0

;;
;; Pointer list with targets:

;; ?_CDS_Get	int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; Touch	PTR struct Touch size(1) Largest target is 8
;;		 -> NULL(NULL[0]), VarTouch(BANK0[8]), 
;;
;; Segment	PTR struct Segment size(1) Largest target is 27
;;		 -> NULL(NULL[0]), VarSegment(BANK0[27]), 
;;
;; Uart	PTR struct UART size(1) Largest target is 0
;;		 -> NULL(NULL[0]), 
;;
;; Intr	PTR struct ISR size(1) Largest target is 7
;;		 -> NULL(NULL[0]), VarIntr(BANK0[7]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _Display_Setting->___lwdiv
;;   _Display_Setting->___lwmod
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Display_Setting
;;   _Display_Setting->___lwdiv
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK2
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK4
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK4
;;
;;   None.
;;
;; Critical Paths under _main in BANK5
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK5
;;
;;   None.
;;
;; Critical Paths under _main in BANK6
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK6
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 7     7      0    1182
;;                                              9 BANK0      7     7      0
;;                        _MCU_Initial
;;                    _Display_Initial
;;                       _Display_Main
;;                            _CDS_Get
;;                    _Display_Setting
;; ---------------------------------------------------------------------------------
;; (1) _Display_Setting                                      6     4      2     953
;;                                              3 BANK0      6     4      2
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     232
;;                                              3 COMMON     5     1      4
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     241
;;                                              3 COMMON     5     1      4
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _CDS_Get                                              8     6      2      37
;;                                              3 COMMON     4     2      2
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _Display_Main                                         4     4      0      72
;;                                              3 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _Display_Initial                                      1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _MCU_Initial                                          1     1      0       0
;;                                              3 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ISR                                                  3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MCU_Initial
;;   _Display_Initial
;;   _Display_Main
;;   _CDS_Get
;;   _Display_Setting
;;     ___lwdiv
;;     ___lwmod
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             1F0      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       1       1        7.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      8       B       2       78.6%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       2       3        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;ABS                  0      0      71       4        0.0%
;;BITBANK0            50      0       0       5        0.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BANK0               50     10      46       6       87.5%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BITBANK1            50      0       0       7        0.0%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BANK1               50      0      20       8       40.0%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BITBANK2            50      0       0       9        0.0%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BANK2               50      0       0      10        0.0%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BITBANK3            50      0       0      11        0.0%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;BANK3               50      0       0      12        0.0%
;;BITSFR11             0      0       0      12        0.0%
;;SFR11                0      0       0      12        0.0%
;;BITBANK4            50      0       0      13        0.0%
;;BITSFR12             0      0       0      13        0.0%
;;SFR12                0      0       0      13        0.0%
;;BANK4               50      0       0      14        0.0%
;;BITSFR13             0      0       0      14        0.0%
;;SFR13                0      0       0      14        0.0%
;;BITBANK5            50      0       0      15        0.0%
;;BITSFR14             0      0       0      15        0.0%
;;SFR14                0      0       0      15        0.0%
;;BANK5               50      0       0      16        0.0%
;;BITSFR15             0      0       0      16        0.0%
;;SFR15                0      0       0      16        0.0%
;;BITBANK6            10      0       0      17        0.0%
;;BITSFR16             0      0       0      17        0.0%
;;SFR16                0      0       0      17        0.0%
;;BANK6               10      0       0      18        0.0%
;;BITSFR17             0      0       0      18        0.0%
;;SFR17                0      0       0      18        0.0%
;;BITSFR18             0      0       0      19        0.0%
;;SFR18                0      0       0      19        0.0%
;;DATA                 0      0      73      19        0.0%
;;BITSFR19             0      0       0      20        0.0%
;;SFR19                0      0       0      20        0.0%
;;BITSFR20             0      0       0      21        0.0%
;;SFR20                0      0       0      21        0.0%
;;BITSFR21             0      0       0      22        0.0%
;;SFR21                0      0       0      22        0.0%
;;BITSFR22             0      0       0      23        0.0%
;;SFR22                0      0       0      23        0.0%
;;BITSFR23             0      0       0      24        0.0%
;;SFR23                0      0       0      24        0.0%
;;BITSFR24             0      0       0      25        0.0%
;;SFR24                0      0       0      25        0.0%
;;BITSFR25             0      0       0      26        0.0%
;;SFR25                0      0       0      26        0.0%
;;BITSFR26             0      0       0      27        0.0%
;;SFR26                0      0       0      27        0.0%
;;BITSFR27             0      0       0      28        0.0%
;;SFR27                0      0       0      28        0.0%
;;BITSFR28             0      0       0      29        0.0%
;;SFR28                0      0       0      29        0.0%
;;BITSFR29             0      0       0      30        0.0%
;;SFR29                0      0       0      30        0.0%
;;BITSFR30             0      0       0      31        0.0%
;;SFR30                0      0       0      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 55 in file "G:\Program\PIC\2.Development_V1.0\Release\Development_V1.0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   12[BANK0 ] int 
;;  k               1   15[BANK0 ] unsigned char 
;;  j               1   14[BANK0 ] unsigned char 
;;  l               1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_MCU_Initial
;;		_Display_Initial
;;		_Display_Main
;;		_CDS_Get
;;		_Display_Setting
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\Program\PIC\2.Development_V1.0\Release\Development_V1.0.c"
	line	55
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 13
; Regs used in _main: [wreg+fsr1l-status,0+btemp+1+pclath+cstack]
	line	58
	
l8332:	
;Development_V1.0.c: 56: int i;
;Development_V1.0.c: 57: char j,k,l;
;Development_V1.0.c: 58: i=0;
	movlb 0	; select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	line	59
	
l8334:	
;Development_V1.0.c: 59: j=0;
	clrf	(main@j)
	line	60
	
l8336:	
;Development_V1.0.c: 60: k=0;
	clrf	(main@k)
	line	61
	
l8338:	
;Development_V1.0.c: 61: l=0;
	clrf	(main@l)
	line	62
	
l8340:	
;Development_V1.0.c: 62: MCU_Initial();
	fcall	_MCU_Initial
	line	63
	
l8342:	
;Development_V1.0.c: 63: Display_Initial();
	fcall	_Display_Initial
	goto	l8344
	line	76
;Development_V1.0.c: 76: while(1)
	
l6176:	
	line	89
	
l8344:	
;Development_V1.0.c: 77: {
;Development_V1.0.c: 89: if(Intr->Timeout==1)
	movlb 0	; select bank0
	movf	(_Intr),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u3311
	goto	u3310
u3311:
	goto	l8344
u3310:
	line	91
	
l8346:	
;Development_V1.0.c: 90: {
;Development_V1.0.c: 91: Intr->Timeout=0;
	movf	(_Intr),w
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1,0
	line	93
	
l8348:	
;Development_V1.0.c: 93: Display_Main();
	fcall	_Display_Main
	line	97
	
l8350:	
;Development_V1.0.c: 97: j++;
	movlw	(01h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@j),f
	line	98
	
l8352:	
;Development_V1.0.c: 98: if(j>=20)
	movlw	(014h)
	subwf	(main@j),w
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l8370
u3320:
	line	100
	
l8354:	
;Development_V1.0.c: 99: {
;Development_V1.0.c: 100: j=0;
	clrf	(main@j)
	line	101
	
l8356:	
;Development_V1.0.c: 101: if(k==0)
	movf	(main@k),f
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l8366
u3330:
	line	103
	
l8358:	
;Development_V1.0.c: 102: {
;Development_V1.0.c: 103: if(CDS_Get()<=0x40)
	fcall	_CDS_Get
	movf	(1+(?_CDS_Get)),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(041h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3345
	movlw	low(041h)
	subwf	(0+(?_CDS_Get)),w
u3345:

	skipnc
	goto	u3341
	goto	u3340
u3341:
	goto	l8370
u3340:
	line	105
	
l8360:	
;Development_V1.0.c: 104: {
;Development_V1.0.c: 105: k=1;
	movlb 0	; select bank0
	clrf	(main@k)
	bsf	status,0
	rlf	(main@k),f
	line	106
	
l8362:	
;Development_V1.0.c: 106: i++;
	movlw	low(01h)
	addwf	(main@i),f
	movlw	high(01h)
	addwfc	(main@i+1),f
	line	107
	
l8364:	
;Development_V1.0.c: 107: Display_Setting(i);
	movf	(main@i+1),w
	clrf	(?_Display_Setting+1)
	addwf	(?_Display_Setting+1)
	movf	(main@i),w
	clrf	(?_Display_Setting)
	addwf	(?_Display_Setting)

	fcall	_Display_Setting
	goto	l8370
	line	108
	
l6180:	
	line	109
;Development_V1.0.c: 108: }
;Development_V1.0.c: 109: }
	goto	l8370
	line	110
	
l6179:	
	line	112
	
l8366:	
;Development_V1.0.c: 110: else
;Development_V1.0.c: 111: {
;Development_V1.0.c: 112: if(CDS_Get()>=0x80)
	fcall	_CDS_Get
	movf	(1+(?_CDS_Get)),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(080h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3355
	movlw	low(080h)
	subwf	(0+(?_CDS_Get)),w
u3355:

	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l8370
u3350:
	line	113
	
l8368:	
;Development_V1.0.c: 113: k=0;
	movlb 0	; select bank0
	clrf	(main@k)
	goto	l8370
	
l6182:	
	goto	l8370
	line	114
	
l6181:	
	goto	l8370
	line	115
	
l6178:	
	line	119
	
l8370:	
;Development_V1.0.c: 114: }
;Development_V1.0.c: 115: }
;Development_V1.0.c: 119: if(Intr->Count1<200)
	movlb 0	; select bank0
	movf	(_Intr),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_main+0)+0
	moviw	[1]fsr1
	movwf	(??_main+0)+0+1
	movlw	high(0C8h)
	subwf	1+(??_main+0)+0,w
	movlw	low(0C8h)
	skipnz
	subwf	0+(??_main+0)+0,w
	skipnc
	goto	u3361
	goto	u3360
u3361:
	goto	l8374
u3360:
	line	120
	
l8372:	
;Development_V1.0.c: 120: Intr->Count1++;
	movf	(_Intr),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	goto	l8344
	line	121
	
l6183:	
	line	124
	
l8374:	
;Development_V1.0.c: 121: else
;Development_V1.0.c: 122: {
;Development_V1.0.c: 124: Intr->Count1=0;
	movf	(_Intr),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	goto	l8344
	line	141
	
l6184:	
	goto	l8344
	line	142
	
l6177:	
	goto	l8344
	line	143
	
l6185:	
	line	76
	goto	l8344
	
l6186:	
	line	144
	
l6187:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Display_Setting
psect	text371,local,class=CODE,delta=2
global __ptext371
__ptext371:

;; *************** function _Display_Setting *****************
;; Defined at:
;;		line 41 in file "G:\Program\PIC\Source_File\SegmentDisplay.c"
;; Parameters:    Size  Location     Type
;;  Data            2    3[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               1    8[BANK0 ] unsigned char 
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
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text371
	file	"G:\Program\PIC\Source_File\SegmentDisplay.c"
	line	41
	global	__size_of_Display_Setting
	__size_of_Display_Setting	equ	__end_of_Display_Setting-_Display_Setting
	
_Display_Setting:	
	opt	stack 13
; Regs used in _Display_Setting: [wreg+fsr1l-status,0+pclath+cstack]
	line	43
	
l8298:	
;SegmentDisplay.c: 42: char i;
;SegmentDisplay.c: 43: Segment->GO=1;
	movlb 0	; select bank0
	movf	(_Segment),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	line	46
;SegmentDisplay.c: 46: if(Segment->DecToHex==1)
	movf	(_Segment),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,3
	goto	u3251
	goto	u3250
u3251:
	goto	l8306
u3250:
	line	48
	
l8300:	
;SegmentDisplay.c: 47: {
;SegmentDisplay.c: 48: Segment->Num[0] = Data & 0x000f;
	movf	(Display_Setting@Data),w
	andlw	0Fh
	movwf	(??_Display_Setting+0)+0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Setting+0)+0,w
	movwf	indf1
	line	49
	
l8302:	
;SegmentDisplay.c: 49: Segment->Num[1] = (Data>>4) & 0x000f;
	movf	(Display_Setting@Data+1),w
	movwf	(??_Display_Setting+0)+0+1
	movf	(Display_Setting@Data),w
	movwf	(??_Display_Setting+0)+0
	movlw	04h
u3265:
	lsrf	(??_Display_Setting+0)+1,f
	rrf	(??_Display_Setting+0)+0,f
	decfsz	wreg,f
	goto	u3265
	movf	0+(??_Display_Setting+0)+0,w
	andlw	0Fh
	movwf	(??_Display_Setting+2)+0
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Setting+2)+0,w
	movwf	indf1
	line	50
	
l8304:	
;SegmentDisplay.c: 50: Segment->Num[2] = (Data>>8) & 0x000f;
	movf	(Display_Setting@Data+1),w
	andlw	0Fh
	movwf	(??_Display_Setting+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Setting+0)+0,w
	movwf	indf1
	line	51
;SegmentDisplay.c: 51: Segment->Num[3] = (Data>>12) & 0x000f;
	movf	(Display_Setting@Data+1),w
	movwf	(??_Display_Setting+0)+0+1
	movf	(Display_Setting@Data),w
	movwf	(??_Display_Setting+0)+0
	movlw	0Ch
u3275:
	lsrf	(??_Display_Setting+0)+1,f
	rrf	(??_Display_Setting+0)+0,f
	decfsz	wreg,f
	goto	u3275
	movf	0+(??_Display_Setting+0)+0,w
	andlw	0Fh
	movwf	(??_Display_Setting+2)+0
	movf	(_Segment),w
	addlw	018h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Setting+2)+0,w
	movwf	indf1
	line	52
;SegmentDisplay.c: 52: }
	goto	l2072
	line	53
	
l2066:	
	line	55
	
l8306:	
;SegmentDisplay.c: 53: else
;SegmentDisplay.c: 54: {
;SegmentDisplay.c: 55: if(Data > 0x270f)
	movlw	high(02710h)
	subwf	(Display_Setting@Data+1),w
	movlw	low(02710h)
	skipnz
	subwf	(Display_Setting@Data),w
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l8320
u3280:
	line	57
	
l8308:	
;SegmentDisplay.c: 56: {
;SegmentDisplay.c: 57: for(i=0;i<4;i++)
	clrf	(Display_Setting@i)
	
l8310:	
	movlw	(04h)
	subwf	(Display_Setting@i),w
	skipc
	goto	u3291
	goto	u3290
u3291:
	goto	l8314
u3290:
	goto	l2072
	
l8312:	
	goto	l2072
	line	58
	
l2069:	
	
l8314:	
;SegmentDisplay.c: 58: Segment->Num[i]=16;
	movlw	(010h)
	movwf	(??_Display_Setting+0)+0
	movf	(Display_Setting@i),w
	addlw	015h
	addwf	(_Segment),w
	movwf	(??_Display_Setting+1)+0
	movf	0+(??_Display_Setting+1)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Setting+0)+0,w
	movwf	indf1
	line	57
	
l8316:	
	movlw	(01h)
	movwf	(??_Display_Setting+0)+0
	movf	(??_Display_Setting+0)+0,w
	addwf	(Display_Setting@i),f
	
l8318:	
	movlw	(04h)
	subwf	(Display_Setting@i),w
	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l8314
u3300:
	goto	l2072
	
l2070:	
	line	59
;SegmentDisplay.c: 59: }
	goto	l2072
	line	60
	
l2068:	
	line	62
	
l8320:	
;SegmentDisplay.c: 60: else
;SegmentDisplay.c: 61: {
;SegmentDisplay.c: 62: Segment->Num[3] = Data/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(Display_Setting@Data+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(Display_Setting@Data),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movlb 0	; select bank0
	movwf	(??_Display_Setting+0)+0
	movf	(_Segment),w
	addlw	018h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Setting+0)+0,w
	movwf	indf1
	line	63
	
l8322:	
;SegmentDisplay.c: 63: Data %= 1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(Display_Setting@Data+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(Display_Setting@Data),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movlb 0	; select bank0
	clrf	(Display_Setting@Data+1)
	addwf	(Display_Setting@Data+1)
	movf	(0+(?___lwmod)),w
	clrf	(Display_Setting@Data)
	addwf	(Display_Setting@Data)

	line	64
	
l8324:	
;SegmentDisplay.c: 64: Segment->Num[2] = Data/100;
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(Display_Setting@Data+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(Display_Setting@Data),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movlb 0	; select bank0
	movwf	(??_Display_Setting+0)+0
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Setting+0)+0,w
	movwf	indf1
	line	65
;SegmentDisplay.c: 65: Data %= 100;
	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(Display_Setting@Data+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(Display_Setting@Data),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movlb 0	; select bank0
	clrf	(Display_Setting@Data+1)
	addwf	(Display_Setting@Data+1)
	movf	(0+(?___lwmod)),w
	clrf	(Display_Setting@Data)
	addwf	(Display_Setting@Data)

	line	66
	
l8326:	
;SegmentDisplay.c: 66: Segment->Num[1] = Data/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(Display_Setting@Data+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(Display_Setting@Data),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movlb 0	; select bank0
	movwf	(??_Display_Setting+0)+0
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Setting+0)+0,w
	movwf	indf1
	line	67
	
l8328:	
;SegmentDisplay.c: 67: Data %= 10;
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(Display_Setting@Data+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(Display_Setting@Data),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movlb 0	; select bank0
	clrf	(Display_Setting@Data+1)
	addwf	(Display_Setting@Data+1)
	movf	(0+(?___lwmod)),w
	clrf	(Display_Setting@Data)
	addwf	(Display_Setting@Data)

	line	68
	
l8330:	
;SegmentDisplay.c: 68: Segment->Num[0] = Data;
	movf	(Display_Setting@Data),w
	movwf	(??_Display_Setting+0)+0
	movf	(_Segment),w
	addlw	015h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Setting+0)+0,w
	movwf	indf1
	goto	l2072
	line	69
	
l2071:	
	goto	l2072
	line	70
	
l2067:	
	line	71
	
l2072:	
	return
	opt stack 0
GLOBAL	__end_of_Display_Setting
	__end_of_Display_Setting:
;; =============== function _Display_Setting ends ============

	signat	_Display_Setting,4216
	global	___lwmod
psect	text372,local,class=CODE,delta=2
global __ptext372
__ptext372:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
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
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         5       1       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Setting
;; This function uses a non-reentrant model
;;
psect	text372
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 13
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l8276:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u3191
	goto	u3190
u3191:
	goto	l8294
u3190:
	line	9
	
l8278:	
	movlb 0	; select bank0
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l8284
	
l6220:	
	line	11
	
l8280:	
	movlw	01h
	
u3205:
	lslf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	decfsz	wreg,f
	goto	u3205
	line	12
	
l8282:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l8284
	line	13
	
l6219:	
	line	10
	
l8284:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l8280
u3210:
	goto	l8286
	
l6221:	
	goto	l8286
	line	14
	
l6222:	
	line	15
	
l8286:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3225
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3225:
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l8290
u3220:
	line	16
	
l8288:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	subwfb	(___lwmod@dividend+1),f
	goto	l8290
	
l6223:	
	line	17
	
l8290:	
	movlw	01h
	
u3235:
	lsrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	decfsz	wreg,f
	goto	u3235
	line	18
	
l8292:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l8286
u3240:
	goto	l8294
	
l6224:	
	goto	l8294
	line	19
	
l6218:	
	line	20
	
l8294:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l6225
	
l8296:	
	line	21
	
l6225:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text373,local,class=CODE,delta=2
global __ptext373
__ptext373:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Setting
;; This function uses a non-reentrant model
;;
psect	text373
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 13
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l8250:	
	movlb 0	; select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l8252:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3121
	goto	u3120
u3121:
	goto	l8272
u3120:
	line	11
	
l8254:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l8260
	
l6210:	
	line	13
	
l8256:	
	movlw	01h
	
u3135:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u3135
	line	14
	
l8258:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l8260
	line	15
	
l6209:	
	line	12
	
l8260:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l8256
u3140:
	goto	l8262
	
l6211:	
	goto	l8262
	line	16
	
l6212:	
	line	17
	
l8262:	
	movlw	01h
	
u3155:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u3155
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3165
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3165:
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l8268
u3160:
	line	19
	
l8264:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	20
	
l8266:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l8268
	line	21
	
l6213:	
	line	22
	
l8268:	
	movlw	01h
	
u3175:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u3175
	line	23
	
l8270:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l8262
u3180:
	goto	l8272
	
l6214:	
	goto	l8272
	line	24
	
l6208:	
	line	25
	
l8272:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l6215
	
l8274:	
	line	26
	
l6215:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_CDS_Get
psect	text374,local,class=CODE,delta=2
global __ptext374
__ptext374:

;; *************** function _CDS_Get *****************
;; Defined at:
;;		line 147 in file "G:\Program\PIC\2.Development_V1.0\Release\Development_V1.0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    5[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         2       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0
;;      Totals:         4       4       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text374
	file	"G:\Program\PIC\2.Development_V1.0\Release\Development_V1.0.c"
	line	147
	global	__size_of_CDS_Get
	__size_of_CDS_Get	equ	__end_of_CDS_Get-_CDS_Get
	
_CDS_Get:	
	opt	stack 14
; Regs used in _CDS_Get: [wreg+status,2+status,0+btemp+1]
	line	148
	
l8238:	
;Development_V1.0.c: 148: int i=0;
	clrf	(CDS_Get@i)
	clrf	(CDS_Get@i+1)
	line	149
	
l8240:	
;Development_V1.0.c: 149: ADCON0=0x01;
	movlw	(01h)
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	151
	
l8242:	
;Development_V1.0.c: 151: GO_nDONE=1;
	bsf	(1257/8)^080h,(1257)&7
	line	152
;Development_V1.0.c: 152: while(GO_nDONE);
	goto	l6190
	
l6191:	
	
l6190:	
	btfsc	(1257/8)^080h,(1257)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l6190
u3110:
	goto	l8244
	
l6192:	
	line	153
	
l8244:	
;Development_V1.0.c: 153: i=((ADRESH*256)+ADRESL);
	movf	(155)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_CDS_Get+0)+0
	clrf	(??_CDS_Get+0)+0+1
	movlb 1	; select bank1
	movf	(156)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_CDS_Get+2)+0
	clrf	(??_CDS_Get+2)+0+1
	movf	(??_CDS_Get+2)+0,w
	movwf	(??_CDS_Get+2)+1
	clrf	(??_CDS_Get+2)+0
	movf	0+(??_CDS_Get+0)+0,w
	addwf	0+(??_CDS_Get+2)+0,w
	movwf	(CDS_Get@i)
	movf	1+(??_CDS_Get+0)+0,w
	addwfc	1+(??_CDS_Get+2)+0,w
	movwf	1+(CDS_Get@i)
	line	156
	
l8246:	
;Development_V1.0.c: 156: return i;
	movf	(CDS_Get@i+1),w
	clrf	(?_CDS_Get+1)
	addwf	(?_CDS_Get+1)
	movf	(CDS_Get@i),w
	clrf	(?_CDS_Get)
	addwf	(?_CDS_Get)

	goto	l6193
	
l8248:	
	line	157
	
l6193:	
	return
	opt stack 0
GLOBAL	__end_of_CDS_Get
	__end_of_CDS_Get:
;; =============== function _CDS_Get ends ============

	signat	_CDS_Get,90
	global	_Display_Main
psect	text375,local,class=CODE,delta=2
global __ptext375
__ptext375:

;; *************** function _Display_Main *****************
;; Defined at:
;;		line 74 in file "G:\Program\PIC\Source_File\SegmentDisplay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    6[COMMON] unsigned char 
;;  j               1    5[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text375
	file	"G:\Program\PIC\Source_File\SegmentDisplay.c"
	line	74
	global	__size_of_Display_Main
	__size_of_Display_Main	equ	__end_of_Display_Main-_Display_Main
	
_Display_Main:	
	opt	stack 14
; Regs used in _Display_Main: [wreg+fsr1l-status,0]
	line	76
	
l8010:	
;SegmentDisplay.c: 75: char i,j;
;SegmentDisplay.c: 76: i=0x10;
	movlw	(010h)
	movwf	(??_Display_Main+0)+0
	movf	(??_Display_Main+0)+0,w
	movwf	(Display_Main@i)
	line	77
	
l8012:	
;SegmentDisplay.c: 77: if(Segment->Enable==1 && Segment->GO==1)
	movlb 0	; select bank0
	movf	(_Segment),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,0
	goto	u2691
	goto	u2690
u2691:
	goto	l2084
u2690:
	
l8014:	
	movf	(_Segment),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u2701
	goto	u2700
u2701:
	goto	l2084
u2700:
	line	79
	
l8016:	
;SegmentDisplay.c: 78: {
;SegmentDisplay.c: 79: if(Segment->Num[3]>0)
	movf	(_Segment),w
	addlw	018h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u2711
	goto	u2710
u2711:
	goto	l8020
u2710:
	line	80
	
l8018:	
;SegmentDisplay.c: 80: j=3;
	movlw	(03h)
	movwf	(??_Display_Main+0)+0
	movf	(??_Display_Main+0)+0,w
	movwf	(Display_Main@j)
	goto	l8028
	line	81
	
l2076:	
	
l8020:	
;SegmentDisplay.c: 81: else if(Segment->Num[2]>0)
	movf	(_Segment),w
	addlw	017h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u2721
	goto	u2720
u2721:
	goto	l8024
u2720:
	line	82
	
l8022:	
;SegmentDisplay.c: 82: j=2;
	movlw	(02h)
	movwf	(??_Display_Main+0)+0
	movf	(??_Display_Main+0)+0,w
	movwf	(Display_Main@j)
	goto	l8028
	line	83
	
l2078:	
	
l8024:	
;SegmentDisplay.c: 83: else if(Segment->Num[1]>0)
	movf	(_Segment),w
	addlw	016h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0&0ffh
	skipnz
	goto	u2731
	goto	u2730
u2731:
	goto	l2080
u2730:
	line	84
	
l8026:	
;SegmentDisplay.c: 84: j=1;
	clrf	(Display_Main@j)
	bsf	status,0
	rlf	(Display_Main@j),f
	goto	l8028
	line	85
	
l2080:	
	line	86
;SegmentDisplay.c: 85: else
;SegmentDisplay.c: 86: j=0;
	clrf	(Display_Main@j)
	goto	l8028
	
l2081:	
	goto	l8028
	
l2079:	
	goto	l8028
	
l2077:	
	line	88
	
l8028:	
;SegmentDisplay.c: 88: if(Segment->ComCount<j)
	movf	(_Segment),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(Display_Main@j),w
	subwf	indf1,w
	skipnc
	goto	u2741
	goto	u2740
u2741:
	goto	l8032
u2740:
	line	89
	
l8030:	
;SegmentDisplay.c: 89: Segment->ComCount++;
	movlw	(01h)
	movwf	(??_Display_Main+0)+0
	movf	(_Segment),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Main+0)+0,w
	addwf	indf1,f
	goto	l8034
	line	90
	
l2082:	
	line	91
	
l8032:	
;SegmentDisplay.c: 90: else
;SegmentDisplay.c: 91: Segment->ComCount=0;
	movf	(_Segment),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	l8034
	
l2083:	
	line	93
	
l8034:	
;SegmentDisplay.c: 93: PORTA &= 0x0f;
	movlw	(0Fh)
	movwf	(??_Display_Main+0)+0
	movf	(??_Display_Main+0)+0,w
	andwf	(12),f	;volatile
	line	94
	
l8036:	
;SegmentDisplay.c: 94: i = i<< Segment->ComCount;
	movf	(Display_Main@i),w
	movwf	(??_Display_Main+0)+0
	movf	(_Segment),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	incf	indf1,w
	goto	u2754
u2755:
	lslf	(??_Display_Main+0)+0,f
u2754:
	decfsz	wreg,f
	goto	u2755
	movf	0+(??_Display_Main+0)+0,w
	movwf	(??_Display_Main+1)+0
	movf	(??_Display_Main+1)+0,w
	movwf	(Display_Main@i)
	line	95
	
l8038:	
;SegmentDisplay.c: 95: PORTA ^= i;
	movf	(Display_Main@i),w
	movwf	(??_Display_Main+0)+0
	movf	(??_Display_Main+0)+0,w
	xorwf	(12),f	;volatile
	line	96
	
l8040:	
;SegmentDisplay.c: 96: PORTB=Segment->Display[Segment->Num[Segment->ComCount]];
	movf	(_Segment),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	addlw	015h
	addwf	(_Segment),w
	movwf	(??_Display_Main+0)+0
	movf	0+(??_Display_Main+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	addlw	04h
	addwf	(_Segment),w
	movwf	(??_Display_Main+1)+0
	movf	0+(??_Display_Main+1)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(13)	;volatile
	goto	l2084
	line	97
	
l2075:	
	line	98
	
l2084:	
	return
	opt stack 0
GLOBAL	__end_of_Display_Main
	__end_of_Display_Main:
;; =============== function _Display_Main ends ============

	signat	_Display_Main,88
	global	_Display_Initial
psect	text376,local,class=CODE,delta=2
global __ptext376
__ptext376:

;; *************** function _Display_Initial *****************
;; Defined at:
;;		line 14 in file "G:\Program\PIC\Source_File\SegmentDisplay.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text376
	file	"G:\Program\PIC\Source_File\SegmentDisplay.c"
	line	14
	global	__size_of_Display_Initial
	__size_of_Display_Initial	equ	__end_of_Display_Initial-_Display_Initial
	
_Display_Initial:	
	opt	stack 14
; Regs used in _Display_Initial: [wregfsr1]
	line	15
	
l7968:	
;SegmentDisplay.c: 15: Segment=&VarSegment;
	movlw	(_VarSegment)&0ffh
	movwf	(??_Display_Initial+0)+0
	movf	(??_Display_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_Segment)
	line	16
	
l7970:	
;SegmentDisplay.c: 16: Segment->Enable=1;
	movf	(_Segment),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	line	17
	
l7972:	
;SegmentDisplay.c: 17: Segment->DecToHex=1;
	movf	(_Segment),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,3
	line	18
	
l7974:	
;SegmentDisplay.c: 18: RA1=1;
	bsf	(97/8),(97)&7
	line	20
	
l7976:	
;SegmentDisplay.c: 20: Segment->Display[0]=0xc0;
	movlw	(0C0h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	21
	
l7978:	
;SegmentDisplay.c: 21: Segment->Display[1]=0xf9;
	movlw	(0F9h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	22
	
l7980:	
;SegmentDisplay.c: 22: Segment->Display[2]=0xa4;
	movlw	(0A4h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	23
	
l7982:	
;SegmentDisplay.c: 23: Segment->Display[3]=0xb0;
	movlw	(0B0h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	24
	
l7984:	
;SegmentDisplay.c: 24: Segment->Display[4]=0x99;
	movlw	(099h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	25
	
l7986:	
;SegmentDisplay.c: 25: Segment->Display[5]=0x92;
	movlw	(092h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	09h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	26
	
l7988:	
;SegmentDisplay.c: 26: Segment->Display[6]=0x82;
	movlw	(082h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	0Ah
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	27
	
l7990:	
;SegmentDisplay.c: 27: Segment->Display[7]=0xd8;
	movlw	(0D8h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	0Bh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	28
	
l7992:	
;SegmentDisplay.c: 28: Segment->Display[8]=0x80;
	movlw	(080h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	0Ch
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	29
	
l7994:	
;SegmentDisplay.c: 29: Segment->Display[9]=0x90;
	movlw	(090h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	0Dh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	30
	
l7996:	
;SegmentDisplay.c: 30: Segment->Display[10]=0x88;
	movlw	(088h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	0Eh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	31
	
l7998:	
;SegmentDisplay.c: 31: Segment->Display[11]=0x83;
	movlw	(083h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	0Fh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	32
	
l8000:	
;SegmentDisplay.c: 32: Segment->Display[12]=0xa7;
	movlw	(0A7h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	010h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	33
	
l8002:	
;SegmentDisplay.c: 33: Segment->Display[13]=0xa1;
	movlw	(0A1h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	011h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	34
	
l8004:	
;SegmentDisplay.c: 34: Segment->Display[14]=0x86;
	movlw	(086h)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	012h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	35
	
l8006:	
;SegmentDisplay.c: 35: Segment->Display[15]=0x8e;
	movlw	(08Eh)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	013h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	36
	
l8008:	
;SegmentDisplay.c: 36: Segment->Display[16]=0xbf;
	movlw	(0BFh)
	movwf	(??_Display_Initial+0)+0
	movf	(_Segment),w
	addlw	014h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Display_Initial+0)+0,w
	movwf	indf1
	line	39
	
l2063:	
	return
	opt stack 0
GLOBAL	__end_of_Display_Initial
	__end_of_Display_Initial:
;; =============== function _Display_Initial ends ============

	signat	_Display_Initial,88
	global	_MCU_Initial
psect	text377,local,class=CODE,delta=2
global __ptext377
__ptext377:

;; *************** function _MCU_Initial *****************
;; Defined at:
;;		line 122 in file "G:\Program\PIC\Source_File\MCU_16f1516.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text377
	file	"G:\Program\PIC\Source_File\MCU_16f1516.c"
	line	122
	global	__size_of_MCU_Initial
	__size_of_MCU_Initial	equ	__end_of_MCU_Initial-_MCU_Initial
	
_MCU_Initial:	
	opt	stack 14
; Regs used in _MCU_Initial: [wreg+status,2]
	line	123
	
l7876:	
;MCU_16f1516.c: 123: Intr=&VarIntr;
	movlw	(_VarIntr)&0ffh
	movwf	(??_MCU_Initial+0)+0
	movf	(??_MCU_Initial+0)+0,w
	movlb 0	; select bank0
	movwf	(_Intr)
	line	126
;MCU_16f1516.c: 126: TRISA=0x09;
	movlw	(09h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	127
	
l7878:	
;MCU_16f1516.c: 127: TRISB=0x00;
	clrf	(141)^080h	;volatile
	line	128
	
l7880:	
;MCU_16f1516.c: 128: TRISC=0x00;
	clrf	(142)^080h	;volatile
	line	130
	
l7882:	
;MCU_16f1516.c: 130: LATA=0x00;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	131
	
l7884:	
;MCU_16f1516.c: 131: LATB=0x00;
	clrf	(269)^0100h	;volatile
	line	132
	
l7886:	
;MCU_16f1516.c: 132: LATC=0x00;
	clrf	(270)^0100h	;volatile
	line	134
	
l7888:	
;MCU_16f1516.c: 134: ANSELA=0x01;
	movlw	(01h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	135
;MCU_16f1516.c: 135: ANSELB=0x00;
	clrf	(397)^0180h	;volatile
	line	136
;MCU_16f1516.c: 136: ANSELC=0x00;
	clrf	(398)^0180h	;volatile
	line	138
	
l7890:	
;MCU_16f1516.c: 138: PORTA=0x09;
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	139
	
l7892:	
;MCU_16f1516.c: 139: PORTB=0x00;
	clrf	(13)	;volatile
	line	140
	
l7894:	
;MCU_16f1516.c: 140: PORTC=0x00;
	clrf	(14)	;volatile
	line	143
	
l7896:	
;MCU_16f1516.c: 143: OSCCON=0x78;
	movlw	(078h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	145
	
l7898:	
;MCU_16f1516.c: 145: OPTION_REG=0x01;
	movlw	(01h)
	movwf	(149)^080h	;volatile
	line	147
	
l7900:	
;MCU_16f1516.c: 147: GIE=1;
	bsf	(95/8),(95)&7
	line	148
	
l7902:	
;MCU_16f1516.c: 148: PEIE=1;
	bsf	(94/8),(94)&7
	line	149
	
l7904:	
;MCU_16f1516.c: 149: TMR0IE=1;
	bsf	(93/8),(93)&7
	line	156
	
l7906:	
;MCU_16f1516.c: 156: TMR0=256-100;
	movlw	(09Ch)
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	157
	
l7908:	
;MCU_16f1516.c: 157: TMR0IF=0;
	bcf	(90/8),(90)&7
	line	160
	
l7910:	
;MCU_16f1516.c: 160: ADCON1=0xf0;
	movlw	(0F0h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	161
	
l7912:	
;MCU_16f1516.c: 161: FVRCON=0xc0;
	movlw	(0C0h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	line	202
	
l1035:	
	return
	opt stack 0
GLOBAL	__end_of_MCU_Initial
	__end_of_MCU_Initial:
;; =============== function _MCU_Initial ends ============

	signat	_MCU_Initial,88
	global	_ISR
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:

;; *************** function _ISR *****************
;; Defined at:
;;		line 21 in file "G:\Program\PIC\Source_File\MCU_16f1516.c"
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
;;      Temps:          3       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"G:\Program\PIC\Source_File\MCU_16f1516.c"
	line	21
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 13
; Regs used in _ISR: [wreg+fsr1l-status,0]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+2)
	line	22
	
i1l7830:	
;MCU_16f1516.c: 22: if(TMR0IE && TMR0IF)
	btfss	(93/8),(93)&7
	goto	u254_21
	goto	u254_20
u254_21:
	goto	i1l7846
u254_20:
	
i1l7832:	
	btfss	(90/8),(90)&7
	goto	u255_21
	goto	u255_20
u255_21:
	goto	i1l7846
u255_20:
	line	24
	
i1l7834:	
;MCU_16f1516.c: 23: {
;MCU_16f1516.c: 24: if(Intr->Count<50)
	movf	(_Intr),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_ISR+0)+0
	moviw	[1]fsr1
	movwf	(??_ISR+0)+0+1
	movlw	high(032h)
	subwf	1+(??_ISR+0)+0,w
	movlw	low(032h)
	skipnz
	subwf	0+(??_ISR+0)+0,w
	skipnc
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l7838
u256_20:
	line	25
	
i1l7836:	
;MCU_16f1516.c: 25: Intr->Count++;
	movf	(_Intr),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	goto	i1l7842
	line	26
	
i1l1016:	
	line	28
	
i1l7838:	
;MCU_16f1516.c: 26: else
;MCU_16f1516.c: 27: {
;MCU_16f1516.c: 28: if(Intr->Timeout==0)
	movf	(_Intr),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,0
	goto	u257_21
	goto	u257_20
u257_21:
	goto	i1l7842
u257_20:
	line	30
	
i1l7840:	
;MCU_16f1516.c: 29: {
;MCU_16f1516.c: 30: Intr->Count=0;
	movf	(_Intr),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(0)
	movwi	[0]fsr1
	movlw	high(0)
	movwi	[1]fsr1
	line	31
;MCU_16f1516.c: 31: Intr->Timeout=1;
	movf	(_Intr),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,0
	goto	i1l7842
	line	32
	
i1l1018:	
	goto	i1l7842
	line	33
	
i1l1017:	
	line	35
	
i1l7842:	
;MCU_16f1516.c: 32: }
;MCU_16f1516.c: 33: }
;MCU_16f1516.c: 35: TMR0=256-100;
	movlw	(09Ch)
	movwf	(21)	;volatile
	line	36
	
i1l7844:	
;MCU_16f1516.c: 36: TMR0IF=0;
	bcf	(90/8),(90)&7
	goto	i1l7846
	line	37
	
i1l1015:	
	line	60
	
i1l7846:	
;MCU_16f1516.c: 37: }
;MCU_16f1516.c: 60: if(SSPIE && SSPIF)
	movlb 1	; select bank1
	btfss	(1163/8)^080h,(1163)&7
	goto	u258_21
	goto	u258_20
u258_21:
	goto	i1l1019
u258_20:
	
i1l7848:	
	movlb 0	; select bank0
	btfss	(139/8),(139)&7
	goto	u259_21
	goto	u259_20
u259_21:
	goto	i1l1019
u259_20:
	line	62
	
i1l7850:	
;MCU_16f1516.c: 61: {
;MCU_16f1516.c: 62: SSPIF = 0;
	bcf	(139/8),(139)&7
	line	65
	
i1l1019:	
	line	66
;MCU_16f1516.c: 65: }
;MCU_16f1516.c: 66: if(RCIE && RCIF)
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7
	goto	u260_21
	goto	u260_20
u260_21:
	goto	i1l7872
u260_20:
	
i1l7852:	
	movlb 0	; select bank0
	btfss	(141/8),(141)&7
	goto	u261_21
	goto	u261_20
u261_21:
	goto	i1l7872
u261_20:
	line	68
	
i1l7854:	
;MCU_16f1516.c: 67: {
;MCU_16f1516.c: 68: if(Uart->ReceiverOK == 0)
	movf	(_Uart),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfsc	indf1,1
	goto	u262_21
	goto	u262_20
u262_21:
	goto	i1l7872
u262_20:
	goto	i1l1022
	line	70
	
i1l7856:	
;MCU_16f1516.c: 69: {
;MCU_16f1516.c: 70: while(RCIDL==0);
	goto	i1l1022
	
i1l1023:	
	
i1l1022:	
	movlb 3	; select bank3
	btfss	(3326/8)^0180h,(3326)&7
	goto	u263_21
	goto	u263_20
u263_21:
	goto	i1l1022
u263_20:
	goto	i1l7858
	
i1l1024:	
	line	71
	
i1l7858:	
;MCU_16f1516.c: 71: Uart->RxData[Uart->Number]=RCREG;
	movf	(409)^0180h,w	;volatile
	movwf	(??_ISR+0)+0
	movf	(_Uart),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	addlw	08h
	addwf	(_Uart),w
	movwf	(??_ISR+1)+0
	movf	0+(??_ISR+1)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	movwf	indf1
	line	79
;MCU_16f1516.c: 79: Uart->RxLength++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_Uart),w
	addlw	07h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	line	80
;MCU_16f1516.c: 80: Uart->Number++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_Uart),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	line	81
;MCU_16f1516.c: 81: while(RCIDL==1 && Uart->ReceiverOK == 0)
	goto	i1l7866
	
i1l1026:	
	line	83
	
i1l7860:	
;MCU_16f1516.c: 82: {
;MCU_16f1516.c: 83: Uart->WaitTime++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(_Uart),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_ISR+0)+0,w
	addwf	indf1,f
	line	84
	
i1l7862:	
;MCU_16f1516.c: 84: if(Uart->WaitTime==10)
	movf	(_Uart),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0Ah&0ffh
	skipz
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l7866
u264_20:
	line	86
	
i1l7864:	
;MCU_16f1516.c: 85: {
;MCU_16f1516.c: 86: Uart->WaitTime=0;
	movf	(_Uart),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	87
;MCU_16f1516.c: 87: Uart->ReceiverOK=1;
	movf	(_Uart),w
	movwf	fsr1l
	clrf fsr1h	
	
	bsf	indf1,1
	goto	i1l7866
	line	88
	
i1l1027:	
	goto	i1l7866
	line	89
	
i1l1025:	
	line	81
	
i1l7866:	
	btfss	(3326/8)^0180h,(3326)&7
	goto	u265_21
	goto	u265_20
u265_21:
	goto	i1l7870
u265_20:
	
i1l7868:	
	movf	(_Uart),w
	movwf	fsr1l
	clrf fsr1h	
	
	btfss	indf1,1
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l7860
u266_20:
	goto	i1l7870
	
i1l1029:	
	goto	i1l7870
	
i1l1030:	
	line	90
	
i1l7870:	
;MCU_16f1516.c: 88: }
;MCU_16f1516.c: 89: }
;MCU_16f1516.c: 90: Uart->WaitTime=0;
	movf	(_Uart),w
	addlw	08h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	goto	i1l7872
	line	91
	
i1l1021:	
	goto	i1l7872
	line	93
	
i1l1020:	
	line	96
	
i1l7872:	
;MCU_16f1516.c: 91: }
;MCU_16f1516.c: 93: }
;MCU_16f1516.c: 96: if(TXIE && TXIF)
	movlb 1	; select bank1
	btfss	(1164/8)^080h,(1164)&7
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l1032
u267_20:
	
i1l7874:	
	goto	i1l1032
	line	117
;MCU_16f1516.c: 97: {
	
i1l1031:	
	line	118
	
i1l1032:	
	movf	(??_ISR+2),w
	movlb 0	; select bank0
	movwf	btemp+1
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	intentry
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

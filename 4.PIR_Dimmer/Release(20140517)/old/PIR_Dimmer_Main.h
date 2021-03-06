					
#ifndef _PIR_Dimmer_Main_H_
#define _PIR_Dimmer_Main_H_

//version************************************************************
/*
	Dimmer_Version 	10	//SYSC 8.3ms Ĳ�o traic no bridge

	Dimmer_Version	11	//SYSC �C8.3ms Ĳ�o traic bridge
*/ 
  #define Dimmer_Version 	10		

  #define Dimmer_Phase		2		//0		1 segment 	75% => 30% => off lights
									//1		1 segment 	75% => 30% => hold 
									//2		2 segment 	a.75% => 20% hold
									//					b.20% hold => 5% => off lights
												
//*******************************************************************


//*******************************************************************

//Oscillator (System FOSC)**********************************************
  #define	System_Fosc_16M		//_16M
								//_8M	
								//_4M	
								//_2M	
								//_500K	
								//_250K		
								//_125K	
								//_62.5K	
//**********************************************************************


//I/O & Pin name*************************************************
//#define	Overload		RA0		//pin2  1
//#define 	PIR VR			RA1		//pin3	1	
//#define 	CDS VR			RA2		//pin4	1		
//#define	PIR	Signal		RA3		//pin5	1
  #define	Relay2			RA4		//pin6 	0
  #define 	MSYSC			RA5		//pin7	1
  #define	Dimmer_Clock	RA6		//pin10 0			
  #define	Dimmer_Input	RA7		//pin9	1		

//#define 	CDS Signal		RB0		//pin21 1
  #define   BuzzerSwitch	RB1		//pin22 0
  #define   Triac2			RB2		//pin23 0
  #define   ErrorLED		RB3		//pin24	0
  #define   BlueLED			RB4		//pin25 0	LED pin2
  #define   AmberLED		RB5		//pin26	0	LED pin3
//#define 					RB6		//pin27	0	
//#define 					RB7		//pin28 0	

  #define 	TLED1			RC0		//pin11	0	
  #define 	TLED2			RC1		//pin12	0	
  #define 	TLED3			RC2		//pin13	0		
  #define	TLED4			RC3		//pin14	0	
//#define 					RC4		//pin15	0	
//#define	TestPoint		RC5		//pin16	0	
  #define 	TX				RC6		//pin17	0	
  #define	RX				RC7		//pin18	1

//I/O
  #define IO_Set()\
  	TRISA=0xaf;\
 	TRISB=0x01;\
 	TRISC=0x00;\
	ANSELA=0x07;\
  	ANSELB=0x01;\
  	PORTA=0xaf;\
 	PORTB=0x01;\
  	PORTC=0x00

//*********************************************************************

//Timer0*****************************************************************
  #define Timer0_Enable		0
  #define 	TMR0_Value		10		
//prescaler		
  #define	OPTION_REG_Value	OPTION_REG_1x2		//OPTION_REG_1x2	
													//OPTION_REG_1x4
													//OPTION_REG_1x8
													//OPTION_REG_1x16
													//OPTION_REG_1x32
													//OPTION_REG_1x64
													//OPTION_REG_1x128
													//OPTION_REG_1x256



  #if((OSCCON_Value==OSCCON_16M) && (OPTION_REG_Value==1))
 	 #define Timer_1ms		10			//main timer time
	 #define Timer_5ms		50			//main timer time	
 	 #define Timer_10ms		100			//main timer time		
  #endif

  #define T1ms	1
  #define T5ms	1
  #define T10ms 1
//*************************************************************************

//Timer1****************************************************************
  #define Timer1_Enable		1
  #define TMR1_IntrTime_50us		//_50us
									//_100us
									//_500us
									//_1ms
  #define Clock_Source_System		//_system
									//_instruction	

//***********************************************************************

//Timer2****************************************************************
  #define Timer2_Enable		0

//***********************************************************************
//ADC*************************************************************************
  #define ADC_Enable	1
  #define Voltage_Reference_VDD				//_VDD
											//_Pin (RA3)
											//_Fixed
  //if	fixed set select voltage					
  #define  Fixed_Voltage_Reference_1V	 	//_OFF
											//_1V		
											//_2V	
											//_4V											

  //Channel
  #define Dimmer_VR_Channel			AN2
  #define Dimmer_TimeVR_Channel		AN1
  #define CDS_Signal_Channel		AN12
  #define CDS_VR_Channel			AN2
  #define PIR_Signal_Channel		AN3
  #define PIR_VR_Channel			AN1
  #define OverLoad_Channel			AN0
  #define OverTemp_Channel			AN4
//*************************************************************************


//Uart*********************************************************************
  #define Usart_Enable	0

//*************************************************************************

/***Global extern variable declaration***/
	struct TMain
	{
		unsigned PowerON:1;
		unsigned T0_Timerout:1;
		unsigned T1_Timerout:1;
		unsigned int Count;
		unsigned int Count1;
		unsigned int Count2;
		unsigned int Count3;		
	}
	struct TMain VarTMain;
	struct TMain *TMain;

/***Routine declaration***/
  	#define TMain_Initial()\
		TMain=&VarTMain


	#define T_Main()\
			TMain->Count++;\
			TMain->Count1++;\
			if(TMain->PowerON==0)\
			{\
				if(TMain->Count == 1000)\//1s
				{\
					TMain->Count=0;\
					TMain->PowerON=1;\
				}\
			}\
			else\
			{\
				if(TMain->Count == 1000)\//1s
				{\
					TMain->Count=0;\
				}\
			}\
			if(TMain->Count1 == 1000)\
			{\
				TMain->Count1=0;\
			}

#endif
/*End file*/


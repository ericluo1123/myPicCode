
/*include*/
#define Release 0
#define Debug	0

//*********************************************************************
#ifndef _PIR-Ceiling-PV02-3(20140517)_H_
#define _PIR-Ceiling-PV02-3(20140517)_H_

	#define TMR1_Select()	Dimmer_Detect()
//version
/*
	Dimmer_Version 	10	//SYSC訊號HIGH/LOW8.3ms轉換，traic no bridge
	
	Dimmer_Version	11	//SYSC訊號每8.3msHIGH 1ms，	 traic bridge
*/ 
	#define Dimmer_Version 	10
//dimmer phase		
/*
	//0		1 segment 	75% => 30% => off lights，一段靜止後關燈
	//1		1 segment 	75% => 30% => hold 		，一段靜止後停留在30%
	//2		2 segment 	a.75% => 30% hold		，二段，第一段75%靜止後等停留在30%，第二段30%靜止後關燈
	//					b.30% hold => 5% => off lights																
*/	
	#define Dimmer_Phase		2								
//Pin name*************************************************
	//#define	Overload		RA0		//pin2  1
	//#define 	PIR VR			RA1		//pin3	1	
	//#define 	CDS VR			RA2		//pin4	1		
	//#define	PIR	Signal		RA3		//pin5	1
	#define	Relay2			RA4		//pin6 	0
	#define MSYSC			RA5		//pin7	1
	#define	Dimmer_Clock	RA6		//pin10 0			
  	#define	Dimmer_Input	RA7		//pin9	1		
	
	//#define 	CDS Signal		RB0		//pin21 1
	#define BuzzerSwitch	RB1		//pin22 0
	#define Triac2			RB2		//pin23 0
	#define ErrorLED		RB3		//pin24	0
	#define BlueLED			RB4		//pin25 0	LED pin2
	#define AmberLED		RB5		//pin26	0	LED pin3
	//#define 					RB6		//pin27	0	
	//#define 					RB7		//pin28 0	
	
	#define TLED1			RC0		//pin11	0	
	#define TLED2			RC1		//pin12	0	
	#define TLED3			RC2		//pin13	0		
	#define	TLED4			RC3		//pin14	0	
	//#define 					RC4		//pin15	0	
	//#define	TestPoint		RC5		//pin16	0	
	#define TX				RC6		//pin17	0	
	#define	RX				RC7		//pin18	1
	
//I/O
/*
	#define _TRISA 0xaf;
	#define _TRISB 0x01;
	#define _TRISC 0x00;
	#define _ANSELA 0x07;
	#define _ANSELB 0x01;
	#define _PORTA 0xaf;
	#define _PORTB 0x01;
	#define _PORTC 0x00
*/
	#define _TRISA 	0b10101111;
	#define _TRISB 	0b00000001;
	#define _TRISC 	0b00000000;
	#define _ANSELA 0b00000111;
	#define _ANSELB 0b00000001;
	#define _PORTA 	0b10101111;
	#define _PORTB 	0b00000001;
	#define _PORTC 	0b00000000
	
//ADC 
	#define Dimmer_VR_Channel		AN2
	#define Dimmer_TimeVR_Channel	AN1
	#define CDS_Signal_Channel		AN12
	#define CDS_VR_Channel			AN2
	#define PIR_Signal_Channel		AN3
	#define PIR_VR_Channel			AN1
	#define OverLoad_Channel		AN0
	#define OverTemp_Channel		AN4

//#include
	#if Release == 1
		#include "../Release/Configure.h"
		#include "../Release/Dimmer.h"
		#include "../Release/LED.h"
		#include "../Release/Protection.h"
		#include "../Release/Sensor.h"
		#ifdef _16F723A
			#include "../Release/MCU_16F723A.h"
		#endif
		#ifdef _16F1516
			#include "../Release/MCU_16F1516.h"
		#endif

	#else
		#include "../Header_File/Configure.h"	
		#include "../Header_File/Dimmer.h"
		#include "../Header_File/LED.h"	
		#include "../Header_File/Protection.h"	
		#include "../Header_File/Sensor.h"
		#ifdef _16F723A
			#include "../Header_File/MCU_16F723A.h"	
		#endif
		#ifdef _16F1516
			#include "../Header_File/MCU_16F1516.h"
		#endif
	#endif 
#endif
//*********************************************************************

/***config***/ 
  Config1;
  Config2; 	


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
void MainT_Initial();
void MainT();

/*Routine main*/
//main
void main()
{	
	char i;	
	MainT_Initial();
	Mcu_Initial();
	Dimmer_Initial();
	LED_Initial();
	Temp_Initial();
	CDS_Initial();
	PIR_Initial();
	while(1)
	{

/*		if(TMain->T0_Timerout==1)	//1ms
		{	
			TMain->T0_Timerout=0;
		}
*/	
		if(TMain->T1_Timerout==1)	//1ms
		{	
			TMain->T1_Timerout=0;

			MainT();
			LED_Main();
			Temp_Main();
			CDS_Main();
			PIR_Main();
		}
	}
}

//ISR
void ISR(void) interrupt 0	// ISR (Interrupt Service Routines)
{	
	TMR0_ISR();
	
	TMR1_ISR();

	TMR2_ISR();
}

//Tmain initial
void MainT_Initial()
{
	TMain = &VarTMain;
}

//T main
void MainT()
{
	TMain->Count++;
	TMain->Count1++;
	if(TMain->PowerON==0)
	{
		if(TMain->Count == 1000)	//1s
		{
			TMain->Count=0;
			TMain->PowerON=1;
		}
	}
	else
	{
		if(TMain->Count == 1000)	//1s
		{
			TMain->Count=0;
		}
	}
	if(TMain->Count1 == 1000)
	{
		TMain->Count1=0;
	}
}
//*******************************************************************
/*End file*/

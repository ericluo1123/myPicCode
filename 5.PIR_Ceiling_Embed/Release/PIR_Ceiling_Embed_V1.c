
/*include*/
#define Release 0
#define Debug	0

//*********************************************************************
#ifndef _PIR_Ceiling_Embed_V1_H_
#define _PIR_Ceiling_Embed_V1_H_

	#define _PCB_Name_	_PIR-Ceiling-PV02-3(20140517)_

	#define _Version_1_		//1	

							
//Pin name*************************************************
  //#define	Overload		RA0		//pin2  1
  //#define PIR VR			RA1		//pin3	1	
  //#define CDS VR			RA2		//pin4	1		
  //#define	PIR	Signal		RA3		//pin5	1
	#define	Relay2			RA4		//pin6 	0
	#define MSYSC			RA5		//pin7	1
	#define	Dimmer_Clock	RA6		//pin10 0			
  	#define	Dimmer_Input	RA7		//pin9	0		
	
  //#define CDS Signal		RB0		//pin21 1
	#define BuzzerSwitch	RB1		//pin22 0
	#define Triac2			RB2		//pin23 0
	#define ErrorLED		RB3		//pin24	0
	#define BlueLED			RB4		//pin25 0	LED pin2
	#define AmberLED		RB5		//pin26	0	LED pin3
  //#define 				RB6		//pin27	0	
  //#define 				RB7		//pin28 0	
	
	#define TLED1			RC0		//pin11	0	
	#define TLED2			RC1		//pin12	0	
	#define TLED3			RC2		//pin13	0		
	#define	TLED4			RC3		//pin14	0	
  //#define 				RC4		//pin15	0	
  //#define	TestPoint		RC5		//pin16	0	
	#define TX				RC6		//pin17	0	
	#define	RX				RC7		//pin18	0
	
//I/O
	#define _TRISA 	0b00101111;
	#define _TRISB 	0b00000001;
	#define _TRISC 	0b00000000;
	#define _ANSELA 0b00000111;
	#define _ANSELB 0b00000001;
	#define _PORTA 	0b10101111;
	#define _PORTB 	0b00000001;
	#define _PORTC 	0b00000000
	
//ADC 
	#define CDS_Signal_Channel		AN12
	#define CDS_VR_Channel			AN2
	#define PIR_Signal_Channel		AN3
	#define PIR_VR_Channel			AN1
	#define OverLoad_Channel		AN0
	#define OverTemp_Channel		AN4

//#include
	#if Release == 1
		#include "../Release/Buzzer.h"
		#include "../Release/Configure.h"
		#include "../Release/LED.h"
		#include "../Release/Lights_Control.h"
		#include "../Release/Protection.h"
		#include "../Release/Sensor.h"
		#ifdef _16F723A
			#include "../Release/MCU_16F723A.h"
		#endif
		#ifdef _16F1516
			#include "../Release/MCU_16F1516.h"
		#endif

	#else
		#include "../Header_File/Buzzer.h"
		#include "../Header_File/Configure.h"	
		#include "../Header_File/LED.h"	
		#include "../Header_File/Lights_Control.h"
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

	LED_Initial();
	Buzzer_Initial();
//	Temp_Initial();
	CDS_Initial();
	PIR_Initial();
	Lights_Control_Initial();
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
			Buzzer_Main();
//			Temp_Main();
			CDS_Main();
			PIR_Main();
			Lights_Control_Main();
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
		//	LED3=~LED3;
		//	Buzzer->Beeps=10;
		}
	}
	if(TMain->Count1 == 1000)
	{
		TMain->Count1=0;
	}
}
//*******************************************************************
/*End file*/

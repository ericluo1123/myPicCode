
#ifndef _Switch_1Key_Dimmer_V1.0.1.2.1_H_	
#define	_Switch_1Key_Dimmer_V1.0.1.2.1_H_		

//Include
	#include <stdio.h>
	//end

	/**Version information
		Name_Version 			:	1~255 

		Name_SerialNumber		:	0~255
 
		Properties_Product		:	1:Switch
									2:PIR

		Properties_Keys			:	1:1key
									2:2key
									3:3key

		Properties_Country		:	1:USA
									2:EP
									3:TW
									4:CHI
	**/

	#define	Name_Version 			1	//1
	#define Name_SerialNumber		0	//2
	#define Properties_Product		1	//3
	#define Properties_Keys			1	//4
	#define Properties_Country		1	//5


	#define Create_Date		_20140821_
	#define Debug 1
	#define Release_Date	?
	#define PCB_Name _TH-302PV11-1-Dim_20140722_

	//option
	#define Control_Method_Mosfet		1
	#define Control_Method_Triac		0
	#define Control_Method_Relay		0
	#define Control_Method_TriacRelay	0
	#define Properties_Neutral			0
	#define Properties_Dimmer			0
								
//MCU
	#define	Key1_3				RA0		//pin2  1	
  	#define OverLoad1			RA1		//pin3	1	
 	#define SYSC1				RA2		//pin4	1		
 	#define	LED1				RA3		//pin5	0	
	#define	Key1_2				RA4		//pin6 	1	
	#define PFV1				RA5		//pin7	1
	#define	Key1_1				RA6		//pin10 1			
	#define	Mosfet1				RA7		//pin9	0			
		
	#define CC2500_GDO0			RB0		//pin21 1	
	#define Key1_4				RB1		//pin22 1	
	#define DimmerReference1	RB2		//pin23 1
	#define Buzzer1				RB3		//pin24	0
//	#define Triac2				RB4		//pin25 0	
	#define ErrLED				RB5		//pin26	0
	#define PinEmpty1			RB6		//pin27	0	
	#define PinEmpty2			RB7		//pin28 0	
		
	#define CC2500_SI			RC0		//pin11	0	
	#define CC2500_SCK			RC1		//pin12	0 	
	#define CC2500_SO			RC2		//pin13	1		
	#define	CC2500_GDO2			RC3		//pin14	1	
	#define CC2500_CSN			RC4		//pin15	0	
	#define	TTPW				RC5		//pin16	0	
//	#define LED3				RC6		//pin17	0	
	#define	LED2				RC7		//pin18	0	

	//I/O
	#define _TRISA 	0b01110111;
	#define _TRISB 	0b00000111;
	#define _TRISC 	0b00001100;
	#define _LATA	0b00000000;
	#define _LATB	0b00000010;
	#define _LATC	0b00000000;
	#define _ANSELA 0b00100010;
	#define _ANSELB 0b00000000;
	#define _ANSELC 0b00000000;
	#define _PORTA 	0b01110111;
	#define _PORTB 	0b00000111;
	#define _PORTC 	0b00001100;
	
//ADC channel
	#define OverLoad_Channel		AN1
	#define OverTemp_Channel		AN2
	#define PFV_Channel				AN4	

	#include "Activity_B1.h"


//Global extern variable declaration
	struct Product
	{
		unsigned char Data[32];
	};
	struct Product *Product;
	struct Product VarProduct=
	{
		{
		 0x63,0x02,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
		 0x00,0x00,0xff,0xff,0xff,0x00,0x00,0x00,0x00,0x00,
		 KeyID,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
		 0x00,0x00
		}
	};
	//0=Command	
	//1=Command
	//1=Temperature
	//3=Temperature
	//4=Humidity
	//5=Humidity 
	//6=Barometric pressure 
	//7=Barometric pressure 
	//8=Electricity
	//9=Dimmer
	//10=Electric  current 
	//11=Year
	//12=Week 
	//13=Serial  Number
	//14=Serial  Number
	//15=Lights Status
	//16=Timmer Command
	//17=Timmer Time
	//18=Reserved
	//19=Reserved
	//20=Key ID
	//21=Key1 Dimmer Value
	//22=Key2 Dimmer Value
	//23=Key3 Dimmer Value
	//24=TemperatureH
	//25=TemperatureL
	//26=?
	//27=Key1 Timer
	//28=Key2 Timer
	//29=Key3 Timer


	#define setProductData(address,data) Product->Data[address]=data

	struct TMain
	{
		unsigned PowerON:1;
		unsigned T0_Timerout:1;
		unsigned T1_Timerout:1;
		unsigned Flag:1;
		unsigned GO:1;
		unsigned FirstOpen:1;
		unsigned int PowerCount;
		unsigned SelfTest:1;
		unsigned First:1;
	
		unsigned int Count;
		unsigned int Count1;
		unsigned int Count2;
		unsigned int Count3;
		unsigned char IOC_Count;
		unsigned char Test;		

		unsigned i:1;
		unsigned j:1;
		unsigned k:1;
		unsigned l:1;
		unsigned m:1;
		unsigned n:1;
		unsigned o:1;
		unsigned p:1;
		unsigned q:1;
		unsigned r:1;
	}
	struct TMain VarTMain;
	struct TMain *TMain;


//Routine declaration
	void MainT_Initialization();
	void MainT();
	//end

	#include "Switch_B1.h"
	#include "Buzzer_B1.h"
	#include "LED_B1.h"
	#include "OverTemperature_B1.h"
	#include "CC2500_B1.h"
	#include "RF_Control_B1.h"
	#include "OverLoad_B1.h"
	#include "Dimmer_B1.h"
	#include "DelayOff_B1.h"
	#include "PowerFault_B1.h"
	#include "CDS_B1.h"
	#include "PIR_B1.h"
	#include "SYSC_B1.h"
	#include "TriacRelay_B1.h"

	#ifdef _16F723A
		#include "MCU_16F723A_B1.h"
	#endif

	#ifdef _16F1516
		#include "MCU_16F1516_B1.h"
	#endif

	#ifdef _16F1518
		#include "MCU_16F1518_B1.h"
	#endif


//end file
#endif
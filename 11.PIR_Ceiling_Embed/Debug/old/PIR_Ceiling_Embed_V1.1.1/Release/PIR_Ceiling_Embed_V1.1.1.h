
#ifndef _PIR_Ceiling_Embed_V1.1.1_H_	
#define	_PIR_Ceiling_Embed_V1.1.1_H_		

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
	#define Name_SerialNumber		1	//2
	#define Properties_Product		2	//3
	#define Properties_Keys			1	//4
	#define Properties_Country		3	//5


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
//Pin name*************************************************
 	#define	Overload1			RA0		//pin2  1
  	#define PIR1_VR				RA1		//pin3	1	
  	#define CDS1_VR				RA2		//pin4	1		
  	#define	PIR_1				RA3		//pin5	1
	#define	Relay1				RA4		//pin6 	0
	#define SYSC_1				RA5		//pin7	1
//	#define	Dimmer_Clock		RA6		//pin10 0			
//	#define	DimmerReference1	RA7		//pin9	0		
	
  	#define CDS_1				RB0		//pin21 1
	#define BuzzerSwitch		RB1		//pin22 0
	#define Triac1				RB2		//pin23 0
	#define ErrLED				RB3		//pin24	0
	#define LED1				RB4		//pin25 0	LED pin2
	#define LED2				RB5		//pin26	0	LED pin3
  //#define 					RB6		//pin27	0	
  //#define 					RB7		//pin28 0	
	
	#define TLED1				RC0		//pin11	0	
	#define TLED2				RC1		//pin12	0	
	#define TLED3				RC2		//pin13	0		
	#define	TLED4				RC3		//pin14	0	
  //#define 					RC4		//pin15	0	
  //#define	TestPoint			RC5		//pin16	0	
	#define TX					RC6		//pin17	0	
	#define	RX					RC7		//pin18	0


	//I/O
	#define _TRISA 	0b00101111;
	#define _TRISB 	0b00000001;
	#define _TRISC 	0b00000000;
	#define _ANSELA 0b00000111;
	#define _ANSELB 0b00000001;
	#define _PORTA 	0b10101111;
	#define _PORTB 	0b00000001;
	#define _PORTC 	0b00000000;


	//ADC 

	#define CDS_Signal_Channel		AN12
	#define CDS_VR_Channel			AN2
	#define PIR_Signal_Channel		AN3
	#define PIR_VR_Channel			AN1
	#define OverLoad_Channel		AN0
	#define OverTemp_Channel		AN4

	#define _ADCON1	ADCON1_RA3		
	#define _FVRCON FVRCON_1V		

	#ifdef _16F723A
		typedef char ADtype;	
		#define ADH_Restore 0
		#define ADL_Restore 0xff
	#endif
	
	#ifdef _16F1516
		typedef int ADtype;
		#define ADH_Restore 0
		#define ADL_Restore 0xffff
	#endif

	#ifdef _16F1518
		typedef int ADtype;
		#define ADH_Restore 0
		#define ADL_Restore 0xffff
	#endif
	
	//Oscillator (System FOSC)
 	#define	System_Fosc_16M				//_16M
							
								
	//Timer0
  	#define Timer0_use	1
	#define TMR0_IntrTime_50us			//_50us
										//_100us

	//Timer1
	#define Timer1_use	0
	#define TMR1_IntrTime_50us			//_50us
										//_100us

	#define Clock_Source_System			//_system
										//_instruction	

	//INT
	#define INT_use 0

	//UART
	#define UART_use 0

	#define BAUD 19200			//38400		
								//19200 
								//9600    
	//I2C
	#define I2C_use 0
	#define Master_Mode 1
	#define Slave_Mode 0

	//IOC
	#define IOC_use 0

	//FlashMemory_use
	#define FlashMemory_use 0

//MCU end
	
//SYSC
	#define SYSC_use 1

//OverTemperature
	#define OverTemperature_use 0

//OverLoad
	#define OverLoad_use 0
	#define SafeCountValue 6

//LED
	#define LED_use 1

	#define	ErrLED_ON			0

	#define	LED1_ON				0

	#define	LED2_ON				0

	#define	LED3_ON				0

	#define LEDTime				500//ms


//Buzzer
	#define Buzzer_use 0

//Switch
	#define Switch_use 0

//CDS
	#define CDS_use 1

//PIR
	#define PIR_use 1

//RF cc2500
	#define CC2500_use	0
	#define RadioFrequency1
	#define Tx_Enable 	1
	#define Rx_Enable 	1

//DelayOff
	#define DelayOff_use 0

//PowerFault
	#define PowerFault_use 0

//TriacRelay Lights
	#define TriacRelay_use 1 
//Dimmer Lights
	#define Dimmer_use 0
	
	#define Dimmable_Func 1

	//dimmer define 	
	#define DimmingDelayTime 3 //3
	#define TriacTimeValue	1
	#define Max_Percent 75
	#define Med_Percent 35
	#define Mini_Percent 20
	#define Dimmable_Percent 100-Max_Percent

	 //Percent define
	#define TotalCount			166
	#define One_Percent			1.5
	#define Tune_Percent		40


	//maxum
	#define Dimmer_Maxum 	((char)((100-Max_Percent)*One_Percent))

	//medium
	#define Dimmer_Medium 	((char)((100-Med_Percent)*One_Percent))

	//minimun
	#define Dimmer_Minimum	((char)((100-Mini_Percent)*One_Percent))

//Global extern variable declaration
	#ifdef _16F723A 
		#define Nothing
	#else
		struct Product
		{
			unsigned char Data[30];
		};
		struct Product *Product;
		struct Product VarProduct=
		{
			{
			 0x63,0x02,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
			 0x00,0x00,0xff,0xff,0xff,0x00,0x00,0x00,0x00,0x00,
			 KeyID,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
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
	#endif


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
	#include "TriacRelay_B1.h"
	#include "CDS_B1.h"
	#include "PIR_B1.h"
	#include "SYSC_B1.h"

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
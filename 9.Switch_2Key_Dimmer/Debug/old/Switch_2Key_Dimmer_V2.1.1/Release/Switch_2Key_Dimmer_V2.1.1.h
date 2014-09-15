
#ifndef _Switch_2Key_Dimmer_V2.1.1_H_	
#define	_Switch_2Key_Dimmer_V2.1.1_H_		

//Include
	#include <stdio.h>
	//end

	//version
	#define Switch_Key 		2
	#define KeyID 			2
	#define Series 			2
	#define Version 		1
	#define Serial_Number 	1
	#define Create_Date		_20140725_

	//Relase
	#define Debug 0
	#define _Release_1_
	#define Release_Date	_20140821_
	#define PCB_Name _TH-302PV11-1-Dim_20140722_	
	//end		


//MCU
	#define	Key1_1				RA0		//pin2  1	
  	#define OverLoad1			RA1		//pin3	1	
 	#define SYSC1				RA2		//pin4	1		
 	#define	LED2				RA3		//pin5	0	
	#define	Key2_2				RA4		//pin6 	1	
	#define PFV1				RA5		//pin7	1
	#define	Key2_1				RA6		//pin10 1			
	#define	Triac2				RA7		//pin9	0		
		
	#define CC2500_GDO0			RB0		//pin21 1	
	#define Key1_2				RB1		//pin22 1	
	#define DimmerReference1	RB2		//pin23 1
	#define Buzzer1				RB3		//pin24	0
	#define Triac1				RB4		//pin25 0	
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
	#define	LED1				RC7		//pin18	0	

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
		

	//ADC 
	#define ADC_use 1

	#define OverLoad_Channel		AN1
	#define OverTemp_Channel		AN2
	#define PFV_Channel				AN4

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
	#define INT_use 1

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
	#define IOC_use 1

	//FlashMemory_use
	#define FlashMemory_use 1

//MCU end
	
//SYSC
	#define SYSC_use 0

//OverTemperature
	#define OverTemperature_use 1

//OverLoad
	#define OverLoad_use 1

//LED
	#define LED_use 1

	#define	ErrLED_ON			0

	#define	LED1_ON				0

	#define	LED2_ON				0

	#define	LED3_ON				0

	#define LEDTime				500//ms

//Buzzer
	#define Buzzer_use 1

//Switch
	#define Switch_use 1

//Lights
	#define LightsControl_use 	0

//RF cc2500
	#define CC2500_use	1
	#define RadioFrequency1
	#define Tx_Enable 	1
	#define Rx_Enable 	1

//DelayOff
	#define DelayOff_use 1

//PowerFault
	#define PowerFault_use 1

//Dimmer Lights
	#define Dimmer_use 1
	
	#define Dimmable_Func 1

	//dimmer define 	
	#define Dimming 3 //3
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

//Releas	
	#ifdef _Release_1_
		#include "../Release/Switch_B1.h"
		#include "../Release/Buzzer_B1.h"
		#include "../Release/LED_B1.h"
		#include "../Release/OverTemperature_B1.h"
		#include "../Release/CC2500_B1.h"
		#include "../Release/RF_Control_B1.h"
		#include "../Release/OverLoad_B1.h"
		#include "../Release/Dimmer_B1.h"
		#include "../Release/DelayOff_B1.h"
		#include "../Release/PowerFault_B1.h"

		#ifdef _16F723A
			#include "../Release/MCU_16F723A.h"
		#endif

		#ifdef _16F1516
			#include "../Release/MCU_16F1516_A.h"
		#endif

		#ifdef _16F1518
			#include "../Release/MCU_16F1518_B1.h"
		#endif
	#endif

	#ifdef _Release_0_
		#include "../Header_File/Switch_B1.h"
		#include "../Header_File/Buzzer_B1.h"
		#include "../Header_File/LED_B1.h"
		#include "../Header_File/OverTemperature_B1.h"
		#include "../Header_File/CC2500_B1.h"
		#include "../Header_File/RF_Control_B1.h"
		#include "../Header_File/OverLoad_B1.h"
		#include "../Header_File/Dimmer_B1.h"
		#include "../Header_File/DelayOff_B1.h"
		#include "../Header_File/PowerFault_B1.h"

		#ifdef _16F723A
			#include "../Header_File/MCU_16F723A.h"	
		#endif

		#ifdef _16F1516
			#include "../Header_File/MCU_16F1516_A.h"
		#endif

		#ifdef _16F1518
			#include "../Header_File/MCU_16F1518_B1.h"
		#endif

	#endif

//end file
#endif
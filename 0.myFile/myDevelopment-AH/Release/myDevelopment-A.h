
#ifndef _myDevelopoment_A_H_	
#define	_myDevelopoment_A_H_		

//Include
	#include <stdio.h>
	//end

	//version
	#define KeyID 			0
	#define Series 			1
	#define Version 		1
	#define Serial_Number 	0
	#define Create_Date 	_20140803_ 


	//release
	#define _Release_0_
	#define Release_Date 	0
	//PCB name
	#define PCB_Name 0									


//MCU
 	#define	CDS					RA0		//pin2  1
  	#define LED2				RA1		//pin3	0	
 	#define LED1				RA2		//pin4	0		
 	#define	Key1				RA3		//pin5	1
	#define	Com0				RA4		//pin6 	0
	#define Com1				RA5		//pin7	0
	#define	Com2				RA6		//pin10 0			
	#define	Com3				RA7		//pin9	0		
		
	#define A					RB0		//pin21 0
	#define B					RB1		//pin22 0
	#define C					RB2		//pin23 0
	#define D					RB3		//pin24	0
	#define E					RB4		//pin25 0
	#define F					RB5		//pin26	0
	#define G					RB6		//pin27	0	
	#define Dot					RB7		//pin28 0	
		
	#define SS1					RC0		//pin11	1	
//	#define 					RC1		//pin12	0 	
//	#define 					RC2		//pin13	0		
	#define	SCK					RC3		//pin14	1	
	#define SDA					RC4		//pin15	1	
//	#define						RC5		//pin16	0	
	#define Tx					RC6		//pin17	0
	#define	Rx					RC7		//pin18	0	

	//I/O
	#define _TRISA 	0b00001001;
	#define _TRISB 	0b00000000;
	#define _TRISC 	0b00011001;
	#define _LATA	0b00000000;
	#define _LATB	0b00000000;
	#define _LATC	0b00000000;
	#define _ANSELA 0b00000001;
	#define _ANSELB 0b00000000;
	#define _ANSELC 0b00000000;
	#define _PORTA 	0b00001001;
	#define _PORTB 	0b00000000;
	#define _PORTC 	0b00011001;
		

	//ADC 
	#define ADC_use 0

	#define OverLoad_Channel		AN1
	#define OverTemp_Channel		AN2
	#define PFV_Channel				AN4

	#define _ADCON1	ADCON1_RA3		
	#define _FVRCON FVRCON_1V		

	#ifdef _16F723A
		typedef char ADtype;	
		#define AD_Restore 0xff
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
  	#define Timer0_use	0
	#define TMR0_IntrTime_50us			//_50us
										//_100us

	//Timer1
	#define Timer1_use	1
	#define TMR1_IntrTime_50us			//_50us
										//_100us

	#define Clock_Source_System			//_system
										//_instruction	

	//INT
	#define INT_use 0

	//UART
	#define UART_use 1
	#define UART_Master 1
	#define UART_Slave 0
	#define BAUD 19200			//38400		
								//19200 
								//9600    
	//I2C
	#define I2C_use 1
	#define Master_Mode 1
	#define Slave_Mode 0


	//IOC
	#define IOC_use 0

	//FlashMemory_use
	#define FlashMemory_use 0

//MCU end
	
//SYSC
	#define SYSC_use 0

//OverTemperature
	#define OverTemperature_use 0

//OverLoad
	#define OverLoad_use 0

//PowerFault
	#define PowerFault_use 0
//LED
	#define LED_use 0

	#define ErrLED_Flash		1
	#define	ErrLED_ON			0

	#define	LED1_Flash			0
	#define	LED1_ON				0

	#define	LED2_Flash			0
	#define	LED2_ON				0

	#define	LED3_Flash			0
	#define	LED3_ON				0

	#define ErrLEDTime		500//ms
	#define LED1Time		500//ms
	#define LED2Time		500//ms
	#define LED3Time		500//ms

//SegmentDisplay
	#define SegmentDisplay_use 1
	#define Polarity 1		//¦@¶§=1¡A¦@³±=0
	#define Display_Dec	1
	#define	Display_Hex	0

	#define ComValue PORTA
	#define DisplayValue PORTB
//Buzzer
	#define Buzzer_use 0

//Switch
	#define Switch_use 0

//Lights
	#define LightsControl_use 	0

//RF cc2500
	#define CC2500_use	0

	#define Tx_Enable 	1
	#define Rx_Enable 	1

//DelayOff
	#define DelayOff_use 0


//Dimmer Lights
	#define Dimmer_use 0
	
	#define Dimmable_Func 1

	//dimmer define 	
	#define Dimming 3 //3
	#define TriacTimeValue	1
	#define Max_Percent 70
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

	#ifdef Triac1 
		#define Dimmer_Value1	Dimmer_Maxum
	#else
		#define Dimmer_Value1	0
	#endif

	#ifdef Triac2 
		#define Dimmer_Value2	Dimmer_Maxum
	#else
		#define Dimmer_Value2	0
	#endif

	#ifdef Triac3 
		#define Dimmer_Value3	Dimmer_Maxum
	#else
		#define Dimmer_Value3	0
	#endif

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

	#define setProductData(address,data) Product->Data[address]=data

	struct TMain
	{
		unsigned PowerON:1;
		unsigned T0_Timerout:1;
		unsigned T1_Timerout:1;
		unsigned Flag:1;
		unsigned GO:1;
		unsigned int PowerCount;
	
		unsigned int Count;
		unsigned int Count1;
		unsigned int Count2;
		unsigned int Count3;
		unsigned char IOC_Count;	
		unsigned char Test;
		unsigned FirstOpen:1;

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
	void MainT_Initial();
	void MainT();
	//end

	#include "SegmentDisplay_A2.h"
	#include "CC2500_B1.h"
	#include "RF_Control_B1.h"

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
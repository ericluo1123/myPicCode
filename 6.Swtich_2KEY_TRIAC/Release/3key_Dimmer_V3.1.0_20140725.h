
#ifndef _Switch_2Key_Triac_	
#define	_Switch_2Key_Triac_	

//Include
	#include <stdio.h>
	//end

	//version
	#define KeyID 			3
	#define Series 			3
	#define Version 		1
	#define Serial_Number 	0
	#define Create_Date 	_20140725_ 

	//release
	#define _Release_1_
	//PCB name
	#define PCB_Name _TH-303PV01-1-Dim_20140708_									


//MCU
	#define	Key3				RA0		//pin2  1
  	#define ADC_OverLoad		RA1		//pin3	1	
 	#define MSYSC				RA2		//pin4	1		
 	#define	LED1				RA3		//pin5	0
	#define	Key2				RA4		//pin6 	1
	#define ADC_PFV				RA5		//pin7	1
	#define	Key1				RA6		//pin10 1			
	#define	Triac1				RA7		//pin9	0		
		
	#define CC2500_GDO0			RB0		//pin21 1	
	#define Triac2				RB1		//pin22 0
	#define Dimmer_Ref			RB2		//pin23 1
	#define BuzzerSwitch		RB3		//pin24	0
	#define Triac3				RB4		//pin25 0
	#define ErrLED				RB5		//pin26	0
	#define PinEmpty1			RB6		//pin27	0	
	#define PinEmpty2			RB7		//pin28 0	
		
	#define CC2500_SI			RC0		//pin11	0	
	#define CC2500_SCK			RC1		//pin12	0 	
	#define CC2500_SO			RC2		//pin13	1		
	#define	CC2500_GDO2			RC3		//pin14	1	
	#define CC2500_CSN			RC4		//pin15	0	
	#define	TTPW				RC5		//pin16	0	
	#define LED2				RC6		//pin17	0	
	#define	LED3				RC7		//pin18	0	

	//I/O
	#define _TRISA 	0b01110111;
	#define _TRISB 	0b00000101;
	#define _TRISC 	0b00001100;
	#define _LATA	0b00000000;
	#define _LATB	0b00000000;
	#define _LATC	0b00000000;
	#define _ANSELA 0b00100010;
	#define _ANSELB 0b00000000;
	#define _ANSELC 0b00000000;
	#define _PORTA 	0b01110111;
	#define _PORTB 	0b00000101;
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

	//IOC
	#define IOC_use 1

	//FlashMemory_use
	#define FlashMemory_use 1

//MCU end
	
//SYSC
	#define SYSC_use 0

//OverTemperature
	#define OverTemperature_use 0

//OverLoad
	#define OverLoad_use 0

//LED
	#define LED_use 1

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

//Buzzer
	#define Buzzer_use 1

//Switch
	#define Switch_use 1

//Lights
	#define LightsControl_use 	0

//RF cc2500
	#define CC2500_use	1

	#define Tx_Enable 	1
	#define Rx_Enable 	1

//DelayOff
	#define DelayOff_use 1


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
		unsigned char Data[26];
	};
	struct Product *Product;
	struct Product VarProduct=
	{
		{
		 0x63,0x02,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
		 0x00,0x00,0xff,0xff,0xff,0x00,0x00,0x00,0x00,0x00,
		 KeyID,Dimmer_Value1,Dimmer_Value2,Dimmer_Value3,0x00,0x00
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
	}
	struct TMain VarTMain;
	struct TMain *TMain;


//Routine declaration
	void MainT_Initial();
	void MainT();
	//end

//Releas	
	#ifdef _Release_1_
		#include "../Release/Switch_A1.h"
		#include "../Release/Buzzer_A1.h"
		#include "../Release/LED_A1.h"
		#include "../Release/LightsControl_A.h"
		#include "../Release/SYSC_A.h"
		#include "../Release/OverTemperature_A1.h"
		#include "../Release/CC2500_A1.h"
		#include "../Release/RF_Control_A1.h"
		#include "../Release/OverLoad_A.h"
		#include "../Release/Dimmer_A1.h"
		#include "../Release/DelayOff_A1.h"

		#ifdef _16F723A
			#include "../Release/MCU_16F723A.h"
		#endif
		#ifdef _16F1516
			#include "../Release/MCU_16F1516_A.h"
		#endif
	#endif

	#ifdef _Release_0_
		#include "../Header_File/Switch_A1.h"
		#include "../Header_File/Buzzer_A1.h"
		#include "../Header_File/LED_A1.h"
		#include "../Header_File/LightsControl_A.h"	
		#include "../Header_File/SYSC_A.h"
		#include "../Header_File/OverTemperature_A1.h"
		#include "../Header_File/CC2500_A1.h"
		#include "../Header_File/RF_Control_A1.h"
		#include "../Header_File/OverLoad_A.h"
		#include "../Header_File/Dimmer_A1.h"
		#include "../Header_File/DelayOff_A1.h"

		#ifdef _16F723A
			#include "../Header_File/MCU_16F723A.h"	
			typedef char ADtype;
		#endif

		#ifdef _16F1516
			#include "../Header_File/MCU_16F1516_A.h"
			typedef int ADtype;
		#endif

	//end
	#endif

	#ifndef _MCU_16F1516_H_  || _MCU_16F723A_H_
		#define Config1 
		#define Config2
		#define Mcu_Initial()
		#define TMR0_ISR()
		#define TMR1_ISR()
		#define NOP() ;
		bit RA0,RA1,RA2,RA3,RA4,RA5,RA6,RA7;
		bit RB0,RB1,RB2,RB3,RB4,RB5,RB6,RB7;
		bit RC0,RC1,RC2,RC3,RC4,RC5,RC6,RC7;	
	#endif



//end file
#endif
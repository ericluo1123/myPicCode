
#ifndef _Development_H_	
#define _Development_H_		

//Include
	#include <stdio.h>
	//end
//Version
	#define _Version_1_0_
	
	#ifdef _Version_1_0_
		#define _Release_0_
	//	#define _PCB_TH-302V09-3P_20140408_	
	//end									
	#endif


//MCU
 	#define	CDS					RA0		//pin2  1
  	#define LED2				RA1		//pin3	0	
 	#define LED3				RA2		//pin4	0		
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
		
//	#define 					RC0		//pin11	0	
//	#define 					RC1		//pin12	0 	
//	#define 					RC2		//pin13	0		
//	#define						RC3		//pin14	0	
	#define I2CSCK				RC4		//pin15	0	
	#define	I2C_SDA				RC5		//pin16	0	
	#define Tx					RC6		//pin17	0
	#define	Rx					RC7		//pin18	0	

	//I/O
	#define _TRISA 	0b00001001;
	#define _TRISB 	0b00000000;
	#define _TRISC 	0b00000000;
	#define _LATA	0b00000000;
	#define _LATB	0b00000000;
	#define _LATC	0b00000000;
	#define _ANSELA 0b00000001;
	#define _ANSELB 0b00000000;
	#define _ANSELC 0b00000000;
	#define _PORTA 	0b00001001;
	#define _PORTB 	0b00000000;
	#define _PORTC 	0b00000000;
		

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
										//_8M	
										//_4M	
										//_2M
										//_1M	
										//_500K	
										//_250K		
										//_125K	
										
//Timer0
  	#define Timer0_use	0
	#define TMR0_IntrTime_50us		//_50us
									//_100us

//Timer1
	#define Timer1_use	1
	#define TMR1_IntrTime_100us		//_50us
										//_100us
										//_500us
										//_1ms

//INT
	#define INT_use 0

	#define Clock_Source_System		//_system
										//_instruction	

//IOC
	#define IOC_use 0
	
//SYSC
	#define SYSC_use 0

	//end

//OverTemperature
	#define OverTemperature_use 0

	//end

//OverLoad
	#define OverLoad_use 0

	//end


//LED
	#define LED_use 0
							
	#define LED_FlashMode	13		//LED Flash Quantity , LED Number
									//11
									//12
									//13
									//30		

	//end

//Buzzer
	#define Buzzer_use 0

	//end

//Switch
	#define Switch_use 0

	//end

//Lights
	#define LightsControl_use 	0
	#define LightsLoop	 	30			//11:	loop on Triac1	
										//12:	Loop on Triac2
										//20;	Loop on Triac1 + Triac2
										//30;	Loop on Triac1 + Triac2 + Triac3

	#define L1_ModeSet1		2			//1:	Set_Triac1_Relay1()
										//2: 	Set_Triac1()
										//3: 	Set_Relay1()

	#define L2_ModeSet		2			//1:	Set_Triac2_Relay2()
										//2:	Set_Triac2()
										//3: 	Set_Relay2()

	#define L3_ModeSet		2			//1:	Set_Triac2_Relay2()
										//2:	Set_Triac2()
										//3: 	Set_Relay2()


//Dimmer Lights
	#define Dimmer_use 0
	#define DimmerLoop 3				//1:	loop on Triac1	
										//12:	Loop on Triac2
										//2;	Loop on Triac1 + Triac2
										//3;	Loop on Triac1 + Triac2 + Triac3

	//end
//RF cc2500
	#define CC2500_use	0
	//end

//UART
	#define UART_use 1

//SegmentDisplay
	#define SegmentDisplay_use 1	
	#define HexDisplay 1
	#define DecDisplay 0
	
	#define Polarity 1		//1 = Positive	¦@¶§
							//0 = Cathode
	
	#define ComValue 			PORTA	//com1~com4 = RA4~RA7
	#define DisplayValue 		PORTB	

	

//Releas	
	#ifdef _Release_1_
		#include "../Release/Switch_A.h"
		#include "../Release/Buzzer_A.h"
		#include "../Release/LED_A.h"
		#include "../Release/LightsControl_A.h"
		#include "../Release/SYSC_A.h"
		#include "../Release/OverTemperature_A.h"
		#include "../Release/CC2500.h"
		#include "../Release/OverLoad_A.h"
		#include "../Release/Dimmer_A.h"
		#include "../Release/SegmentDisplay_A.h"

		#ifdef _16F723A
			#include "../Release/MCU_16F723A.h"
		#endif
		#ifdef _16F1516
			#include "../Release/MCU_16F1516_A.h"
		#endif
	#endif

	#ifdef _Release_0_
		#include "../Header_File/Switch_A.h"
		#include "../Header_File/Buzzer_A.h"
		#include "../Header_File/LED_A.h"
		#include "../Header_File/LightsControl_A.h"	
		#include "../Header_File/SYSC_A.h"
		#include "../Header_File/OverTemperature_A.h"
		#include "../Header_File/CC2500.h"
		#include "../Header_File/OverLoad_A.h"
		#include "../Header_File/Dimmer_A.h"
		#include "../Header_File/SegmentDisplay_A.h"

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
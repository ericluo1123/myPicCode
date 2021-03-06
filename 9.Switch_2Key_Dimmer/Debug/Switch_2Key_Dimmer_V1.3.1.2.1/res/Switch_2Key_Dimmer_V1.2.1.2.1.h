
#ifndef _Switch_2Key_Dimmer_V1.3.1.2.1_H_			
#define _Switch_2Key_Dimmer_V1.3.1.2.1_H_
//Include
	#include <stdio.h>

/**Version information
		Name_Version 			:	1~255 

		Name_SerialNumber		:	1~255
 
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
	#define Name_SerialNumber		3	//2
	#define Properties_Product		1	//3
	#define Properties_Keys			2	//4
	#define Properties_Country		1	//5

//Control Option
	#define Control_Method_Mosfet		0
	#define Control_Method_Triac		1
	#define Control_Method_Relay		0
	#define Control_Method_TriacRelay	0
	#define Properties_Neutral			0
	#define Properties_Dimmer			1
	#define Debug 1
	#define PCB_Name "TH-302PV11-1-Dim(20140722)"
	
//MCU define
	#define	Key2_1				RA0		//pin2  1	
  	#define OverLoad1			RA1		//pin3	1	
 	#define SYSC1				RA2		//pin4	1		
 	#define	LED1				RA3		//pin5	0	
	#define	Key1_2				RA4		//pin6 	1	
	#define PFV1				RA5		//pin7	1
	#define	Key1_1				RA6		//pin10 1			
	#define	Triac1				RA7		//pin9	0		
		
	#define CC2500_GDO0			RB0		//pin21 1	
	#define Key2_2				RB1		//pin22 1	
	#define DimmerReference1	RB2		//pin23 1
	#define Buzzer1				RB3		//pin24	0
	#define Triac2				RB4		//pin25 0	
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

//Mcu Function Option

	//ADC 
	#define ADC_use 1	
	//Oscillator (System FOSC)
 	#define	System_Fosc_16M			//_16M														
	//Timer0
  	#define Timer0_use	1
	//Timer1
	#define Timer1_use	0	
	//INT
	#define INT_use 1
	//UART
	#define UART_use 0  
	//I2C
	#define I2C_use 0
	//IOC
	#define IOC_use 1
	//FlashMemory
	#define FlashMemory_use 1
	//Watchdog timer 
	#define WDT_use 1

	
//Function Option

	//SYSC
	#define SYSC_use 0
	//OverTemperature
	#define OverTemperature_use 1
	//OverLoad
	#define OverLoad_use 0
	//LED
	#define LED_use 1
	//Buzzer
	#define Buzzer_use 1	
	//Switch
	#define Switch_use 1
	//Lights
	#define LightsControl_use 	0
	//RF cc2500
	#define CC2500_use	1
	//DelayOff
	#define DelayOff_use 1
	//PowerFault
	#define PowerFault_use 1
	//Dimmer Lights
	#define Dimmer_use 	1

//include

	#include "Main_B1.h"
	#include "Activity_B1.h"
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
	#include "MCU_B1.h"

//end file
#endif
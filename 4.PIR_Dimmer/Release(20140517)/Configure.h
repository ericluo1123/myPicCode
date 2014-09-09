
#ifndef _Configure_H_
#define _Configure_H_
 
/*library*/
  #include <stdio.h>

  #define Directory	0
  #define Debug		0

/***PCB version select***/
//#include "../Header_File/PIR_Dimmer_V01-1P_V1.0.h"	//1

//#include "../2.Development_V1.0/Development_V1.0.h"			//2

//#include "../3.PIR_Ceiling_Thin_V01-3P(20140215)_V1.1/PIR_Ceiling_Thin_V01-3P(20140215)_V1.1.h"	//3						//3

//#include "../5.PIR_Ceiling_Embed/PIR_Ceiling_Embed_Main.h"	//5

  
  


/*******************************************************************/
/***PIR_DIMMER_V01-1P***/						//1
  #ifdef _PIR_Dimmer_V01-1P_V1.0_H_

	  #if Release == 1
		  #include <Header_File/Buzzer.h>
		  #include <Header_File/LED.h>		
		//#include <Header_File/Control.h>		
		  #include <Header_File/Dimmer.h>
		//#include <Header_File/Lights_Control.h>
		//#include <Header_File/SegmentDisplay.h>
		  #include <Header_File/Sensor_PIR+CDS.h>
		//#include <Header_File/SYSC.h>
		//#include <Header_File/Touch.h>
		  #include <Header_File/Timer1.h>
	
	  #else
	
		  #include "../Header_File/Buzzer.h"
		  #include "../Header_File/LED.h"	
		//  #include "../Header_File/Control.h"		
		  #include "../Header_File/Dimmer.h"
		//#include "../Header_File/Lights_Control.h"
		//#include "../Header_File/SegmentDisplay.h"
		  #include "../Header_File/Sensor_PIR+CDS.h"
		//#include "../Header_File/SYSC.h"
		//#include "../Header_File/Touch.h"
		  #include "../Header_File/Timer1.h"
	  #endif
  
  #endif
/*******************************************************************/


/*******************************************************************/
/***Developmant_V1.0***/						//2
  #ifdef _Development_V1.0_H_

	  #if Release == 1	
		  #include <Header_File/SegmentDisplay.h>
		  #include <Header_File/Touch.h>
	      #include <Header_File/I2C.h>	
	  #else
		  #include "../Header_File/SegmentDisplay.h"
		  #include "../Header_File/Touch.h"	
		  #include "../Header_File/I2C.h"	
	  #endif

  #endif
/*******************************************************************/



/*******************************************************************/
/***PIR_Ceiling_Thin_V01-3P(20140215)_V1.1***/		//3	
  #ifdef _PIR_Ceiling_Thin_V01-3P(20140215)_V1.1_H_
 	#include "../Header_File/MCU_16F723A-N.h"
/*#if Release == 1	


  #else


  #endif
*/

  #endif
/*******************************************************************/



/*******************************************************************/
/***PIR_DIMMER_V1.1**/						//4
  #ifdef  _PIR_Dim_V01-2(20140515)_H_
	
	  #if Release == 1
		  #include "../Release/LED.h"		
		  #include "../Release/Dimmer.h"
		  #include "../Release/Sensor.h"
		  #include "../Release/Protection.h"	
 	 #else
		  #include "../Header_File/LED.h"		
		  #include "../Header_File/Dimmer.h"
		  #include "../Header_File/Sensor.h"
		  #include "../Header_File/Protection.h"	
    #endif

  #endif
/*******************************************************************/

/*******************************************************************/
/***PIR_Ceiling_Embed_Main**/						//5
	#ifdef  _PIR_Ceiling_Embed_Main_H_

		#if Release == 1
			#include <Header_File/Buzzer.h>
			#include <Header_File/Control.h>
			#include <Header_File/LED.h>
			#include <Header_File/Lights_Control.h>
			#include <Header_File/Sensor.h>
			#include <Header_File/SYSC.h>	
		#else
			#include "../Header_File/Buzzer.h"
			#include "../Header_File/Control.h"
			#include "../Header_File/LED.h"
			#include "../Header_File/Lights_Control.h"
			#include "../Header_File/Sensor.h"
			#include "../Header_File/SYSC.h"
		#endif

	#endif
/*******************************************************************/


/***Chip select***/	

  #ifdef	_16F723A
  	#if Release == 1	
 		#include "../Release/MCU_16F723A.h"
 	#else
  		#include "../Header_File/MCU_16F723A.h"	
 	#endif
  #endif

  #ifdef	_16F1516
 	#if Release == 1		
  		#include "../Release/MCU_16F1516.h"
 	#else
  		#include "../Header_File/MCU_16F1516.h"
  	#endif
  #endif

  #if	Usart_Enable == 1
  	#if Release == 1	
  		#include "../Release/Usart.h"
 	#else
  		#include "../Header_File/Usart.h"
  	#endif
  #endif


#endif
/***end file***/
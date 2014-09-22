
#ifndef _Activity_B1_H_
#define _Activity_B1_H_


	#if Properties_Keys == 1
		#define Switch_Class 1
		#define use_1KEY
		#if Properties_Dimmer == 1
			#define KeyID D1
		#else
			#define KeyID 1
		#endif
	#endif

	#if Properties_Keys == 2
		#define Switch_Class 2
		#define use_1KEY
		#define use_2KEY	
		#if Properties_Dimmer == 1
			#define KeyID D2
		#else
			#define KeyID 2
		#endif
	#endif


	#if Properties_Keys == 3
		#define Switch_Class 3
		#define use_1KEY
		#define use_2KEY
		#define use_3KEY
		#if Properties_Dimmer == 1
			#define KeyID D3
		#else
			#define KeyID 3
		#endif
	#endif

	//ADC 
	#define ADC_use 1

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
	#define OverTemperature_use 0

//OverLoad
	#define OverLoad_use 1
	#if Properties_Dimmer == 1
		#define SafeCountValue 10
	#else
		#define SafeCountValue 10
	#endif

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
	#define Sleep_Mode  0

//DelayOff
	#define DelayOff_use 1

//PowerFault
	#define PowerFault_use 1

//Dimmer Lights
	#define Dimmer_use 						1
	#define Dimmable_Func 					1	
	#define Dimmer_Smooth					0
	#define DimmerValue_SaveMemory			0
	#define DimmerValue_CloseLightsSave		0
	#define Dimmer_Half_Wave				1 
	#define Dimmer_Full_Wave				0
	#define TriacTimeValue					1
	#define MosfetOpenToCloseValue			20

	//dimmer define 	
	#define DimmingDelayTime 3 //3


	#if Properties_Neutral == 1
		#define Max_Percent 90	
		#define Med_Percent 35
		#define Mini_Percent 15 
	#else
		#if Control_Method_Mosfet == 1
			#if Switch_Class == 1
				#define Max_Percent 65	
			#endif
			#if Switch_Class == 2
				#define Max_Percent 65	
			#endif
			#if Switch_Class == 3
				#define Max_Percent 65	
			#endif
		#endif
	
		#if Control_Method_Triac == 1
			#if Switch_Class == 1
				#define Max_Percent 55	
			#endif
			#if Switch_Class == 2
				#define Max_Percent 55	
			#endif
			#if Switch_Class == 3
				#define Max_Percent 55	
			#endif
		#endif

		#define Med_Percent 35
		#define Mini_Percent 20
	#endif

	 //Percent define
	#define TotalCount			166
	#define One_Percent			1.5
	#define Tune_Percent		40


	#if Control_Method_Triac == 1
		//maxum
		#define Dimmer_Maxum 	((char)((100-Max_Percent)*One_Percent))
	
		//medium
		#define Dimmer_Medium 	((char)((100-Med_Percent)*One_Percent))
	
		//minimun
		#define Dimmer_Minimum	((char)((100-Mini_Percent)*One_Percent))
	#endif

	#if Control_Method_Mosfet == 1
		//maxum
		#define Dimmer_Maxum 	((char)(Max_Percent*One_Percent))
	
		//medium
		#define Dimmer_Medium 	((char)(Med_Percent*One_Percent))
	
		//minimun
		#define Dimmer_Minimum	((char)(Mini_Percent*One_Percent))
	#endif

#endif

#ifndef _LED_H_
#define _LED_H_

/***Global extern variable declaration***/
	//LED

	struct LED 
	{
		unsigned Enable:1;
		unsigned GO1:1;	
		unsigned GO2:1;
		unsigned GO3:1;		
		unsigned char Time1;	
		unsigned char Time2;	
		unsigned char Time3;	
	};
	struct LED VarLED;
	struct LED *LED;

	#ifdef _PIR-Ceiling-PV02-3(20140517)_H_
		#define LED1			AmberLED
		#define LED2			BlueLED
	  	#define LED3			ErrorLED
	  	#define	L1_ON 		0
	  	#define	L1_OFF		1
		#define	L2_ON 		0
		#define	L2_OFF		1
		#define	L3_ON 		0
		#define	L3_OFF		1	

		#define LED1_FlasTime	150//ms
		#define LED2_FlasTime	150//ms
		#define LED3_FlasTime	150//ms
  	#endif

//LED initial
  #define LED_Initial()\
	LED=&VarLED;\
	LED->Enable=1;\
	LED_ALL_OFF()

//main
	#define LED_Main()\
		if(LED->GO1==1)\
		{\
			LED->Time1++;\
			if(LED->Time1 == LED1_FlasTime)\
			{\
				LED->Time1=0;\
				LED1=~LED1;\
			}\
		}\
		if(LED->GO2==1)\
		{\
			LED->Time2++;\
			if(LED->Time2 == LED2_FlasTime)\
			{\
				LED->Time2=0;\
				LED2=~LED2;\
			}\
		}\
		if(LED->GO3==1)\
		{\
			LED->Time3++;\
			if(LED->Time3 == LED3_FlasTime)\
			{\
				LED->Time3=0;\
				LED3=~LED3;\
			}\
		}

//control
		#define LED1_ON()\
			while(LED2==L2_ON)\
				LED2 = L2_OFF;\
			LED1 = L1_ON

		#define LED1_OFF()\
			while(LED1==L1_ON)\
				LED1 = L1_OFF;\

		#define LED2_ON()\
			while(LED1==L1_ON)\
				LED1 = L1_OFF;\
			LED2 = L2_ON

		#define LED2_OFF()\
			while(LED2==L2_ON)\
				LED2 = L2_OFF;\

		#define LED3_ON()\
			LED3 = L3_ON

		#define LED3_OFF()\
			LED3 = L3_OFF

		#define LED_1_2_OFF()\
			while(LED1==L1_ON)\
				LED1 = L1_OFF;\
			while(LED2==L2_ON)\
				LED2 = L2_OFF

		#define LED_ALL_OFF()\
			while(LED1==L1_ON)\
				LED1 = L1_OFF;\
			while(LED2==L2_ON)\
				LED2 = L2_OFF;\
			while(LED3==L3_ON)\
				LED3 = L3_OFF

		#define LED1_Start()\
			LED_1_2_OFF();\
			LED->GO1=1;

		#define LED2_Start()\
			LED_1_2_OFF();\
			LED->GO2=1;

		#define LED3_Start()\
			LED->GO3=1;

		#define LED1_Stop()\
			LED1_OFF();\
			LED->GO1=0;

		#define LED2_Stop()\
			LED2_OFF();\
			LED->GO2=0;

		#define LED3_Stop()\
			LED->GO3=0;

#endif
/***End file***/
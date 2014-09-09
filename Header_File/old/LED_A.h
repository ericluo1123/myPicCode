
#ifndef _LED_A_H_
#define _LED_A_H_

/******************************************************************


	method:
		setErrLED(char status)
		setLED1(char status)
		setLED2(char status)
		setLED3(char status)
	Description:
		status = 0	OFF
				 1	ON	
				 10	Flash OFF
			     11	Flash ON
		
*****************************************************************/

	#if LED_use == 1
		//Global extern variable declaration
		struct LED 
		{
			unsigned Enable:1;
			unsigned GO:1;		
			unsigned int Time;
			unsigned char Number;	
		};
		struct LED VarErrLED;
		struct LED *_ErrLED;

		#define ErrLEDTime		500//ms
		#define LED1Time		500//ms
		#define LED2Time		500//ms
		#define LED3Time		500//ms

		//LED1 initial variable
		#if LED_FlashMode == 1
			struct LED VarLED1;
			struct LED *_LED1;

			#define LED_Initial()\
						LED_Initial_Err();\
					 	LED_Initial_1();\
						;

			#if ErrLED_Flash == 1
				#define ErrLED_Main() ErrLED_GO_Flash()
			#else 
				#define ErrLED_Main() ErrLED_GO()
			#endif

			#if LED1_Flash == 1
				#define LED1_Main() LED1_GO_Flash()
			#else 
				#define LED1_Main() LED1_GO()
			#endif

			#define LED_Main()\
					{\
						ErrLED_Main();\
						LED1_Main();\
					}\
					;
			#define setErrLED(status)	_ErrLED->Number=status
			#define setLED1(status)		_LED1->Number=status

		//LED1 LED2 
		#elif LED_FlashMode == 2
			struct LED VarLED1;
			struct LED *_LED1;
			struct LED VarLED2;
			struct LED *_LED2;

			#define LED_Initial()\
						LED_Initial_Err();\
						LED_Initial_1();\
						LED_Initial_2();\
						;

			#if ErrLED_Flash == 1
				#define ErrLED_Main() ErrLED_GO_Flash()
			#else 
				#define ErrLED_Main() ErrLED_GO()
			#endif

			#if LED1_Flash == 1
				#define LED1_Main() LED1_GO_Flash()
			#else 
				#define LED1_Main() LED1_GO()
			#endif

			#if LED2_Flash == 1
				#define LED2_Main() LED2_GO_Flash()
			#else 
				#define LED2_Main() LED2_GO()
			#endif

			#define LED_Main()\
					{\
						ErrLED_Main();\
						LED1_Main();\
						LED2_Main();\
					}\
					;

			#define setErrLED(status)	_ErrLED->Number=status
			#define setLED1(status)		_LED1->Number=status
			#define setLED2(status)		_LED2->Number=status

		//LED1 LED2 LED3
		#elif LED_FlashMode == 3
			struct LED VarLED1;
			struct LED *_LED1;
			struct LED VarLED2;
			struct LED *_LED2;
			struct LED VarLED3;
			struct LED *_LED3;

			#define LED_Initial()\
						LED_Initial_Err();\
						LED_Initial_1();\
						LED_Initial_2();\
						LED_Initial_3();\
						;

			#if ErrLED_Flash == 1
				#define ErrLED_Main() ErrLED_GO_Flash()
			#else 
				#define ErrLED_Main() ErrLED_GO()
			#endif

			#if LED1_Flash == 1
				#define LED1_Main() LED1_GO_Flash()
			#else 
				#define LED1_Main() LED1_GO()
			#endif

			#if LED2_Flash == 1
				#define LED2_Main() LED2_GO_Flash()
			#else 
				#define LED2_Main() LED2_GO()
			#endif

			#if LED3_Flash == 1
				#define LED3_Main() LED3_GO_Flash()
			#else 
				#define LED3_Main() LED3_GO()
			#endif

			#define LED_Main()\
					{\
						ErrLED_Main();\
						LED1_Main();\
						LED2_Main();\
						LED3_Main();\
					}\
					;

			#define setErrLED(status)	_ErrLED->Number=status
			#define setLED1(status)		_LED1->Number=status
			#define setLED2(status)		_LED2->Number=status
			#define setLED3(status)		_LED3->Number=status
		#endif
		
	#endif 

	//NOP
	#ifndef LED_Initial()
		#define LED_Initial() NOP()
	#endif

	#ifndef LED_Main()
		#define LED_Main() NOP()
	#endif

	#ifndef setErrLED(status)
		#define setErrLED(status)	NOP()
	#endif	
	
	#ifndef setLED1(status)
		#define setLED1(status)	NOP()
	#endif

	#ifndef setLED2(status)
		#define setLED2(status)	NOP()
	#endif

	#ifndef setLED3(status)
		#define setLED3(status)	NOP()
	#endif	

	//Initial Error
	#define LED_Initial_Err()\
				_ErrLED=&VarErrLED;\
				_ErrLED->Enable=1;\
				_ErrLED->Number=0xff;\
				setErrLED(0);\
				;

	//Initial 1
	#define LED_Initial_1()\
				_LED1=&VarLED1;\
				_LED1->Enable=1;\
				_LED1->Number=0xff;\
				setLED1(0);\
				;

	//Initial 2
	#define LED_Initial_2()\
				_LED2=&VarLED2;\
				_LED2->Enable=1;\
				_LED2->Number=0xff;\
				setLED2(0);\
				;

	//Initial 3
	#define LED_Initial_3()\
				_LED3=&VarLED3;\
				_LED3->Enable=1;\
				_LED3->Number=0xff;\
				setLED3(0);\
				;


	//ErrLED GO
	#define ErrLED_GO_Flash()\
		if(_ErrLED->Enable)\
		{\
			ErrLED_Set_Flash();\
			if(_ErrLED->GO)\
			{\
				_ErrLED->Time++;\
				if(_ErrLED->Time == ErrLEDTime)\
				{\
					_ErrLED->Time=0;\
					ErrLED=~ErrLED;\
				}\
			}\
		}\
		;

	#define ErrLED_GO()\
		if(_ErrLED->Enable)\
		{\
			ErrLED_Set();\
		}\
		;

	//LED1 GO 
	#define LED1_GO_Flash()\
		if(_LED1->Enable)\
		{\
			LED1_Set_Flash();\
			if(_LED1->GO)\
			{\
				_LED1->Time++;\
				if(_LED1->Time == LED1Time)\
				{\
					_LED1->Time=0;\
					LED1=~LED1;\
				}\
			}\
		}\
		;

	#define LED1_GO()\
		if(_LED1->Enable)\
		{\
			LED1_Set();\
		}\
		;

	//LED2 GO 
	#define LED2_GO_Flash()\
		if(_LED2->Enable)\
		{\
			LED2_Set_Flash();\
			if(_LED2->GO)\
			{\
				_LED2->Time++;\
				if(_LED2->Time == LED2Time)\
				{\
					_LED2->Time=0;\
					LED2=~LED2;\
				}\
			}\
		}\
		;

	#define LED2_GO()\
		if(_LED2->Enable)\
		{\
			LED2_Set();\
		}\
		;

	//LED3 GO 
	#define LED3_GO_Flash()\
		if(_LED3->Enable)\
		{\
			LED3_Set_Flash();\
			if(_LED3->GO)\
			{\
				_LED3->Time++;\
				if(_LED3->Time == LED3Time)\
				{\
					_LED3->Time=0;\
					LED3=~LED3;\
				}\
			}\
		}\
		;

	#define LED3_GO()\
		if(_LED3->Enable)\
		{\
			LED3_Set();\
		}\
		;


	//ErrLED setting
	#define ErrLED_Set_Flash()\
		if(_ErrLED->Number == 0)\
		{\
			setErrLED_OFF();\
		}\
		else if(_ErrLED->Number == 1)\
		{\
			setErrLED_ON();\
		}\
		else if(_ErrLED->Number == 10)\
		{\
			_ErrLED->GO=0;\
			_ErrLED->Time=0;\
			setErrLED_OFF();\
		}\
		else if(_ErrLED->Number == 11)\
		{\
			_ErrLED->GO=1;\
		}\
		_ErrLED->Number=0xff;\
		;

	#define ErrLED_Set()\
		if(_ErrLED->Number == 0)\
		{\
			setErrLED_OFF();\
		}\
		else if(_ErrLED->Number == 1)\
		{\
			setErrLED_ON();\
		}\
		_ErrLED->Number=0xff;\
		;

	//LED1 setting
	#define LED1_Set_Flash()\
		if(_LED1->Number == 0)\
		{\
			setLED1_OFF();\
		}\
		else if(_LED1->Number == 1)\
		{\
			setLED1_ON();\
		}\
		else if(_LED1->Number == 10)\
		{\
			_LED1->GO=0;\
			_LED1->Time=0;\
			setLED1_OFF();\
		}\
		else if(_LED1->Number == 11)\
		{\
			_LED1->GO=1;\
		}\
		_LED1->Number=0xff;\
		;

	#define LED1_Set()\
		if(_LED1->Number == 0)\
		{\
			setLED1_OFF();\
		}\
		else if(_LED1->Number == 1)\
		{\
			setLED1_ON();\
		}\
		_LED1->Number=0xff;\
		;


	//LED2 setting
	#define LED2_Set_Flash()\
		if(_LED2->Number == 0)\
		{\
			setLED2_OFF();\
		}\
		else if(_LED2->Number == 1)\
		{\
			setLED2_ON();\
		}\
		else if(_LED2->Number == 10)\
		{\
			_LED2->GO=0;\
			_LED2->Time=0;\
			setLED2_OFF();\
		}\
		else if(_LED2->Number == 11)\
		{\
			_LED2->GO=1;\
		}\
		_LED2->Number=0xff;\
		;

	#define LED2_Set()\
		if(_LED2->Number == 0)\
		{\
			setLED2_OFF();\
		}\
		else if(_LED2->Number == 1)\
		{\
			setLED2_ON();\
		}\
		_LED2->Number=0xff;\
		;



	//LED3 setting
	#define LED3_Set_Flash()\
		if(_LED3->Number == 0)\
		{\
			setLED3_OFF();\
		}\
		else if(_LED3->Number == 1)\
		{\
			setLED3_ON();\
		}\
		else if(_LED3->Number == 10)\
		{\
			_LED3->GO=0;\
			_LED3->Time=0;\
			setLED3_OFF();\
		}\
		else if(_LED3->Number == 11)\
		{\
			_LED3->GO=1;\
		}\
		_LED3->Number=0xff;\
		;

	#define LED3_Set()\
		if(_LED3->Number == 0)\
		{\
			setLED3_OFF();\
		}\
		else if(_LED3->Number == 1)\
		{\
			setLED3_ON();\
		}\
		_LED3->Number=0xff;\
		;

	//LED ON OFF
	#define setErrLED_ON()\
				while(ErrLED == ErrOFF)\
					ErrLED=ErrON;\
					;

	#define setErrLED_OFF()\
				while(ErrLED == ErrON)\
					ErrLED=ErrOFF;\
					;

	#define setLED1_ON()\
				while(LED1 == OFF1)\
					LED1=ON1;\
					;

	#define setLED1_OFF()\
				while(LED1 == ON1)\
					LED1=OFF1;\
					;

	#define setLED2_ON()\
				;\//while(LED2 == OFF2)
					LED2=ON2;\
					;

	#define setLED2_OFF()\
				;\//while(LED2 == ON2)
					LED2 = OFF2;\
					;

	#define setLED3_ON()\
				;\//while(LED3 == OFF3)
					LED3=ON3;\
					;

	#define setLED3_OFF()\
				;\//while(LED3 == ON3)
					LED3=OFF3;\
					;


#endif
//End file
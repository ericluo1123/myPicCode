
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

		//ErrLED
		#ifdef ErrLED
			struct LED VarErrLED;
			struct LED *_ErrLED;

			#define ErrLED_Initial() ErrLED_Initial_1()
			#define setErrLED_Content() setErrLED_1()
			
			#if ErrLED_Flash == 1
				#define ErrLED_Main() ErrLED_Main_1()
			#endif
		#endif

		//LED1
		#ifdef LED1
			struct LED VarLED1;
			struct LED *_LED1;

			#define LED1_Initial() LED1_Initial_1()
			#define setLED1_Content() setLED1_1()
			
			#if LED1_Flash == 1
				#define LED1_Main() LED1_Main_1()
			#endif
		#endif

		//LED2
		#ifdef LED2
			struct LED VarLED2;
			struct LED *_LED2;

			#define LED2_Initial() LED2_Initial_1()
			#define setLED2_Content() setLED2_1()
		
			#if LED2_Flash == 1
				#define LED2_Main() LED2_Main_1()
			#endif
		#endif

		//LED3
		#ifdef LED3
			struct LED VarLED3;
			struct LED *_LED3;

			#define LED3_Initial() LED3_Initial_1()
			#define setLED3_Content() setLED3_1()
			
			#if LED3_Flash == 1
				#define LED3_Main() LED3_Main_1()
			#endif

		#endif

	#endif


		
	
	//ErrLED
	#ifndef ErrLED_Initial()
		#define ErrLED_Initial() NOP()
	#endif

	#ifndef setErrLED_Content()
		#define setErrLED_Content() NOP()
	#endif

	#ifndef ErrLED_Main()
		#define ErrLED_Main() NOP()
	#endif
		
	//LED1
	#ifndef LED1_Initial()
		#define LED1_Initial() NOP()
	#endif

	#ifndef setLED1_Content()
		#define setLED1_Content() NOP()
	#endif

	#ifndef LED1_Main()
		#define LED1_Main() NOP()
	#endif

	//LED2
	#ifndef LED2_Initial()
		#define LED2_Initial() NOP()
	#endif

	#ifndef setLED2_Content()
		#define setLED2_Content() NOP()
	#endif

	#ifndef LED2_Main()
		#define LED2_Main() NOP()
	#endif


	//LED3
	#ifndef LED3_Initial()
		#define LED3_Initial() NOP()
	#endif

	#ifndef setLED3_Content()
		#define setLED3_Content() NOP()
	#endif

	#ifndef LED3_Main()
		#define LED3_Main() NOP()
	#endif

	void setErrLED(char);
	void setLED1(char);
	void setLED2(char);
	void setLED3(char);
	void LED_Initial();
	void LED_Main();

	//Initial Error
	#define ErrLED_Initial_1()\
				_ErrLED=&VarErrLED;\
				_ErrLED->Enable=1;\
				setErrLED_Status(0);\
				;

	//Initial 1
	#define LED1_Initial_1()\
				_LED1=&VarLED1;\
				_LED1->Enable=1;\
				setLED1_Status(0);\
				;

	//Initial 2
	#define LED2_Initial_1()\
				_LED2=&VarLED2;\
				_LED2->Enable=1;\
				setLED2_Status(0);\
				;

	//Initial 3
	#define LED3_Initial_1()\
				_LED3=&VarLED3;\
				_LED3->Enable=1;\
				setLED3_Status(0);\
				;


	//ErrLED main 1
	#define ErrLED_Main_1()\
				if(_ErrLED->GO)\
				{\
					_ErrLED->Time++;\
					if(_ErrLED->Time == ErrLEDTime)\
					{\
						_ErrLED->Time=0;\
						ErrLED=~ErrLED;\
					}\
				}\
				;

	//LED1 main 1
	#define LED1_Main_1()\
				if(_LED1->GO)\
				{\
					_LED1->Time++;\
					if(_LED1->Time == LED1Time)\
					{\
						_LED1->Time=0;\
						LED1=~LED1;\
					}\
				}\
				;

	//LED2 main 1
	#define LED2_Main_1()\
				if(_LED2->GO)\
				{\
					_LED2->Time++;\
					if(_LED2->Time == LED2Time)\
					{\
						_LED2->Time=0;\
						LED2=~LED2;\
					}\
				}\
				;

	//LED3 main 1
	#define LED3_Main_1()\
				if(_LED3->GO)\
				{\
					_LED3->Time++;\
					if(_LED3->Time == LED3Time)\
					{\
						_LED3->Time=0;\
						LED3=~LED3;\
					}\
				}\
				;


	//setErrLED 1
	#define setErrLED_1()\
		if(status == 0)\
		{\
			setErrLED_Status(0);\
		}\
		else if(status == 1)\
		{\
			setErrLED_Status(1);\
		}\
		else if(status == 10)\
		{\
			_ErrLED->GO=0;\
			_ErrLED->Time=0;\
			setErrLED_Status(0);\
		}\
		else if(status == 11)\
		{\
			_ErrLED->GO=1;\
		}\
		;

	//set ErrLED 2
	#define setErrLED_2()\
		if(status == 0)\
		{\
			setErrLED_Status(0);\
		}\
		else if(status == 1)\
		{\
			setErrLED_Status(1);\
		}\
		;

	//setLED1 1
	#define setLED1_1()\
		if(status == 0)\
		{\
			setLED1_Status(0);\
		}\
		else if(status == 1)\
		{\
			setLED1_Status(1);\
		}\
		else if(status == 10)\
		{\
			_LED1->GO=0;\
			_LED1->Time=0;\
			setLED1_Status(0);\
		}\
		else if(status == 11)\
		{\
			_LED1->GO=1;\
		}\
		;

	//setLED1 2
	#define setLED1_2()\
		if(status == 0)\
		{\
			setLED1_Status(0);\
		}\
		else if(status == 1)\
		{\
			setLED1_Status(1);\
		}\
		;

	//setLED2 1
	#define setLED2_1()\
		if(status == 0)\
		{\
			setLED2_Status(0);\
		}\
		else if(status == 1)\
		{\
			setLED2_Status(1);\
		}\
		else if(status == 10)\
		{\
			_LED2->GO=0;\
			_LED2->Time=0;\
			setLED2_Status(0);\
		}\
		else if(status == 11)\
		{\
			_LED2->GO=1;\
		}\
		;

	//setLED2 2
	#define setLED2_2()\
		if(status == 0)\
		{\
			setLED2_Status(0);\
		}\
		else if(status == 1)\
		{\
			setLED2_Status(1);\
		}\
		;

	//setLED3 1
	#define setLED3_1()\
		if(status == 0)\
		{\
			setLED3_Status(0);\
		}\
		else if(status == 1)\
		{\
			setLED3_Status(1);\
		}\
		else if(status == 10)\
		{\
			_LED3->GO=0;\
			_LED3->Time=0;\
			setLED3_Status(0);\
		}\
		else if(status == 11)\
		{\
			_LED3->GO=1;\
		}\
		;

	//setLED3 2
	#define setLED3_2()\
		if(status == 0)\
		{\
			setLED3_Status(0);\
		}\
		else if(status == 1)\
		{\
			setLED3_Status(1);\
		}\
		;



	//LED ON OFF
	#if ErrLED_ON == 1
		#define setErrLED_Status(command)\
					ErrLED=command;\
					;
	#else
		#define setErrLED_Status(command)\
					ErrLED=!command;\
					;
	#endif

	#if LED1_ON == 1
		#define setLED1_Status(command)\
					LED1=command;\
					;
	#else
		#define setLED1_Status(command)\
					LED1=!command;\
					;
	#endif


	#if LED2_ON == 1
		#define setLED2_Status(command)\
					LED2=command;\
					;
	#else
		#define setLED2_Status(command)\
					LED2=!command;\
					;
	#endif


	#if LED3_ON == 1
		#define setLED3_Status(command)\
					LED3=command;\
					;
	#else
		#define setLED3_Status(command)\
					LED3=!command;\
					;
	#endif



#endif
//End file
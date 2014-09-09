
#ifndef _LED_H_
#define _LED_H_

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


		void LED_Initial();
		void LED_Main();
		//ErrLED
		#ifdef ErrLED
			struct LED VarErrLED;
			struct LED *_ErrLED;

			#if ErrLED_ON == 1
				#define setErrLED_Status(command) ErrLED=command		
			#else
				#define setErrLED_Status(command) ErrLED=!command				
			#endif

			void setErrLED(char);
			void ErrLED_Initial();
			void ErrLED_Main();
		#else
			#define setErrLED(char) NOP()
			#define ErrLED_Initial() NOP()
			#define ErrLED_Main() NOP()		
		#endif

		//LED1
		#ifdef LED1
			struct LED VarLED1;
			struct LED *_LED1;

			#if LED1_ON == 1
				#define setLED1_Status(command) LED1=command	
			#else
				#define setLED1_Status(command) LED1=!command
			#endif

			void setLED1(char);
			void LED1_Initial();
			void LED1_Main();
		#else
			#define setLED1(char) NOP()
			#define LED1_Initial() NOP()
			#define LED1_Main()	 NOP()
		#endif

		//LED2
		#ifdef LED2
			struct LED VarLED2;
			struct LED *_LED2;

			#if LED2_ON == 1
				#define setLED2_Status(command)	LED2=command			
			#else
				#define setLED2_Status(command)	LED2=!command
			#endif

			void setLED2(char);
			void LED2_Initial();
			void LED2_Main();
		#else
			#define setLED2(char) NOP()
			#define LED2_Initial() NOP()
			#define LED2_Main()	 NOP()
		#endif

		//LED3
		#ifdef LED3
			struct LED VarLED3;
			struct LED *_LED3;

			#if LED3_ON == 1
				#define setLED3_Status(command) LED3=command	
			#else
				#define setLED3_Status(command) LED3=!command
			#endif

			void setLED3(char);
			void LED3_Initial();
			void LED3_Main();
		#else
			#define setLED3(char) NOP()
			#define LED3_Initial() NOP()
			#define LED3_Main()	 NOP()
		#endif

	#else
		#define  LED_Initial() NOP()
		#define LED_Main() NOP()

		#define setErrLED(char) NOP()
		#define ErrLED_Initial() NOP()
		#define ErrLED_Main() NOP()	
		#define setLED1(char) NOP()
		#define LED1_Initial() NOP()
		#define LED1_Main()	 NOP()
		#define setLED2(char) NOP()
		#define LED2_Initial() NOP()
		#define LED2_Main()	 NOP()
		#define setLED3(char) NOP()
		#define LED3_Initial() NOP()
		#define LED3_Main()	 NOP()
	#endif

#endif
//End file
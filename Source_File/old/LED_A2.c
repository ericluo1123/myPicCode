
// Includes
#include "../Release/Select_File.h"

#if LED_use == 1

	void LED_Initial()
	{
		ErrLED_Initial();
		LED1_Initial();
		LED2_Initial();
		LED3_Initial();
	}
	
	void LED_Main()
	{
		ErrLED_Main();
		LED1_Main();
		LED2_Main();
		LED3_Main();
	}

	//*********************************************************
	#ifdef ErrLED

		void ErrLED_Initial()
		{	
			_ErrLED=&VarErrLED;
			_ErrLED->Enable=1;
			setErrLED_Status(0);
		}

		void setErrLED(char status)
		{
			#if ErrLED_Flash == 1
				if(status == 0)
				{
					setErrLED_Status(0);
				}
				else if(status == 1)
				{
					setErrLED_Status(1);
				}
				else if(status == 10)
				{
					_ErrLED->GO=0;
					_ErrLED->Time=0;
					setErrLED_Status(0);
				}
				else if(status == 11)
				{
					_ErrLED->GO=1;
				}
			#else
				if(status == 0)
				{
					setErrLED_Status(0);
				}
				else if(status == 1)
				{
					setErrLED_Status(1);
				}
			#endif	

		}

		void ErrLED_Main()
		{
			#if ErrLED_Flash == 1
				if(_ErrLED->GO)
				{
					_ErrLED->Time++;
					if(_ErrLED->Time == ErrLEDTime)
					{
						_ErrLED->Time=0;
						ErrLED=~ErrLED;
					}
				}
			#endif
		}
	#endif
	//*********************************************************	

	//*********************************************************
	#ifdef LED1

		void LED1_Initial()
		{
			_LED1=&VarLED1;
			_LED1->Enable=1;
			setLED1_Status(0);
			;
		}

		void setLED1(char status)
		{
			#if LED1_Flash == 1
				if(status == 0)
				{
					setLED1_Status(0);
				}
				else if(status == 1)
				{
					setLED1_Status(1);
				}
				else if(status == 10)
				{
					_LED1->GO=0;
					_LED1->Time=0;
					setLED1_Status(0);
				}
				else if(status == 11)
				{
					_LED1->GO=1;
				}
			#else
				if(status == 0)
				{
					setLED1_Status(0);
				}
				else if(status == 1)
				{
					setLED1_Status(1);
				}
			#endif
		}

		void LED1_Main()
		{
			#if LED1_Flash == 1
				if(_LED1->GO)
				{
					_LED1->Time++;
					if(_LED1->Time == LED1Time)
					{
						_LED1->Time=0;
						LED1=~LED1;
					}
				}
			#endif
		}
		
	#endif
	//*********************************************************	
	
	//*********************************************************	
	#ifdef LED2	
		void LED2_Initial()
		{
			_LED2=&VarLED2;
			_LED2->Enable=1;
			setLED2_Status(0);
		}

		void setLED2(char status)
		{
			#if LED2_Flash == 1
				if(status == 0)
				{
					setLED2_Status(0);
				}
				else if(status == 1)
				{
					setLED2_Status(1);
				}
				else if(status == 10)
				{
					_LED2->GO=0;
					_LED2->Time=0;
					setLED2_Status(0);
				}
				else if(status == 11)
				{
					_LED2->GO=1;
				}
			#else
				if(status == 0)
				{
					setLED2_Status(0);
				}
				else if(status == 1)
				{
					setLED2_Status(1);
				}
			#endif
		}

		void LED2_Main()
		{
			#if LED2_Flash == 1
				if(_LED2->GO)
				{
					_LED2->Time++;
					if(_LED2->Time == LED2Time)
					{
						_LED2->Time=0;
						LED2=~LED2;
					}
				}
			#endif
		}
	#endif		
	//*********************************************************		
	
	//*********************************************************		
	#ifdef LED3	
		void LED3_Initial()
		{
			_LED3=&VarLED3;
			_LED3->Enable=1;
			setLED3_Status(0);
		}

		void setLED3(char status)
		{
			#if LED3_Flash == 1
				if(status == 0)
				{
					setLED3_Status(0);
				}
				else if(status == 1)
				{
					setLED3_Status(1);
				}
				else if(status == 10)
				{
					_LED3->GO=0;
					_LED3->Time=0;
					setLED3_Status(0);
				}
				else if(status == 11)
				{
					_LED3->GO=1;
				}
			#else
				if(status == 0)
				{
					setLED3_Status(0);
				}
				else if(status == 1)
				{
					setLED3_Status(1);
				}
			#endif
		}

		void LED3_Main()
		{
			#if LED3_Flash == 1
				if(_LED3->GO)
				{
					_LED3->Time++;
					if(_LED3->Time == LED3Time)
					{
						_LED3->Time=0;
						LED3=~LED3;
					}
				}
			#endif
		}
	#endif
	//*********************************************************	


#endif
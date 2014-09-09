
// Includes
#include "../Release/Select_File.h"


#if DelayOff_use == 1

	void DelayOff_Initial()
	{
		DelayOffSw1_Initial();
		DelayOffSw2_Initial();
		DelayOffSw3_Initial();
	}	
	//*********************************************************
	void DelayOff_Main()
	{
		DelayOffSw1_Main();
		DelayOffSw2_Main();
		DelayOffSw3_Main();
	}
	//*********************************************************
	char DelayTimejudge(char value)
	{
		char i=5;
		if(value == 0x05)
		{
			i=5;
		}
		else if(value == 0x10)
		{
			i=10;
		}
		else if(value == 0x15)
		{
			i=15;
		}
		else if(value == 0x20)
		{
			i=20;
		}
		else if(value == 0x25)
		{
			i=25;
		}
		else if(value == 0x30)
		{
			i=30;	
		}
		return	i;		
	}
	//*********************************************************
	#ifdef Triac1
			void DelayOffSw1_Main()
			{
				if(DelayOffSw1->GO)
				{
					DelayOffSw1->SecondTime++;
					if(DelayOffSw1->SecondTime >= 60000)
					{
						DelayOffSw1->SecondTime=0;
						DelayOffSw1->MinuteTime++;
						if(DelayOffSw1->MinuteTime >= DelayOffSw1->Value)
						{
							DelayOffSw1->MinuteTime=0;
							DelayOffSw1->GO=0;
							setRFsw1_Status(0);
							setSw_Status(1,0);
							setDimmerLights1_Trigger(1);
							setDimmerLights1_Switch(0);	
							setRF_DimmerLights(1,0);
							setTxData();
							setBuz(1,1,100);
						}
					}
				}
			}
			//*********************************************************
			void setDelayOffSw1_GO(char command,char value)
			{
				DelayOffSw1->GO=command;
				if(command)
				{
					DelayOffSw1->Value=DelayTimejudge(value);
				}
				else if(command == 0)
				{
					setProductData(27,0);
				}
				DelayOffSw1->SecondTime=0;
				DelayOffSw1->MinuteTime=0;
			}
	#endif
	//*********************************************************


	//*********************************************************
	#ifdef Triac2
			void DelayOffSw2_Main()
			{
				if(DelayOffSw2->GO)
				{
					DelayOffSw2->SecondTime++;
					if(DelayOffSw2->SecondTime >= 60000)
					{
						DelayOffSw2->SecondTime=0;
						DelayOffSw2->MinuteTime++;
						if(DelayOffSw2->MinuteTime >= DelayOffSw2->Value)
						{
							DelayOffSw2->MinuteTime=0;
							DelayOffSw2->GO=0;
							setRFsw2_Status(0);
							setSw_Status(2,0);
							setDimmerLights2_Trigger(1);
							setDimmerLights2_Switch(0);
							setRF_DimmerLights(2,0);
							setTxData();
							setBuz(1,1,100);
						}
					}
				}
			}
			//*********************************************************
			void setDelayOffSw2_GO(char command,char value)
			{
				DelayOffSw2->GO=command;
				if(command)
				{
					DelayOffSw2->Value=DelayTimejudge(value);;
				}
				else if(command == 0)
				{
					setProductData(28,0);
				}
				DelayOffSw2->SecondTime=0;
				DelayOffSw2->MinuteTime=0;
			}
	#endif
	//*********************************************************


	//*********************************************************
	#ifdef Triac3
			void DelayOffSw3_Main()
			{
				if(DelayOffSw3->GO)
				{
					DelayOffSw3->SecondTime++;
					if(DelayOffSw3->SecondTime >= 60000)
					{
						DelayOffSw3->SecondTime=0;
						DelayOffSw3->MinuteTime++;
						if(DelayOffSw3->MinuteTime >= DelayOffSw3->Value)
						{
							DelayOffSw3->MinuteTime=0;
							DelayOffSw3->GO=0;
							setRFsw3_Status(0);
							setSw3_Status(0);
							setDimmerLights3_Trigger(1);
							setDimmerLights3_Switch(0);
							setRF_DimmerLights(3,0);
							setTxData();
							setBuzzer(1,100);
						}
					}
				}
			}
			//*********************************************************
			void setDelayOffSw3_GO(char command,char value)
			{
				DelayOffSw3->GO=command;
				if(command)
				{
					DelayOffSw3->Value=DelayTimejudge(value);;
				}
				else if(command == 0)
				{
					setProductData(29,0);
				}
				DelayOffSw3->SecondTime=0;
				DelayOffSw3->MinuteTime=0;
			}
	#endif
	//*********************************************************

#endif
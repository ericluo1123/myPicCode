

// Includes
#include "../Release/Select_File.h"


#if Buzzer_use == 1
	
	void Buzzer_Initial()
	{
		Buzzer=&VarBuzzer;
		Buzzer->Enable=1;
		;
	}	
	//*********************************************************
	void setBuzzer(char count,int time)
	{
		if(Buzzer->Enable)
		{
			if(Buzzer->GO == 0)
			{
				Buzzer->GO=1;
				BuzzerSwitch=1;
				Buzzer->Count=(--count);
				Buzzer->TimeValue=time;
				if(Buzzer->TimeValue == 0)
				{
					Buzzer->TimeValue=100;
				}
			}
			else
			{
				if(Buzzer->BufferStatus1 == 0)
				{
					Buzzer->BufferStatus1=1;
					Buzzer->CountBuffer1=count;
					Buzzer->TimeValueBuffer1=time;
				}
				else if(Buzzer->BufferStatus2 == 0)
				{
					Buzzer->BufferStatus2=1;
					Buzzer->CountBuffer2=count;
					Buzzer->TimeValueBuffer2=time;
				}
			}
		}
	}	
	//*********************************************************	
	void Buzzer_Main()
	{
		if(Buzzer->GO)
		{
			Buzzer->Time++;
			if(Buzzer->Time == Buzzer->TimeValue)
			{
				Buzzer->Time=0;
				if(BuzzerSwitch == 0)
				{
					BuzzerSwitch=1;
				}
				else
				{
					BuzzerSwitch=0;
					if(Buzzer->Count == 0)
					{
						if(Buzzer->BufferStatus1)
						{
							Buzzer->BufferStatus1=0;
							Buzzer->Count=(--Buzzer->CountBuffer1);
							Buzzer->TimeValue=Buzzer->TimeValueBuffer1;
						}
						else if(Buzzer->BufferStatus2)
						{
							Buzzer->BufferStatus2=0;
							Buzzer->Count=(--Buzzer->CountBuffer2);
							Buzzer->TimeValue=Buzzer->TimeValueBuffer2;
						}
						else
						{
							Buzzer->GO=0;
						}
					}
					else
					{
						Buzzer->Count--;
					}
				}
			}
		}
	}

#endif
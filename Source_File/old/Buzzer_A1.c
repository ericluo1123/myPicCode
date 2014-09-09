

// Includes
#include "../Release/Select_File.h"

#if Buzzer_use == 1


void Buzzer_Initial()
{
	Buzzer=&VarBuzzer;\
	Buzzer->Enable=1;\
	;
}


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
			if(Buzzer->BufferStatus == 0)
			{
				Buzzer->BufferStatus=1;
				Buzzer->CountBuffer=count;
				Buzzer->TimeValueBuffer=time;
			}
		}
	}
}





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
					if(Buzzer->BufferStatus)
					{
						Buzzer->BufferStatus=0;
						Buzzer->Count=(--Buzzer->CountBuffer);
						Buzzer->TimeValue=Buzzer->TimeValueBuffer;
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
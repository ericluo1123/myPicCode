
/***Include***/
#include "../Header_File/Configure.h"


/***Routine main***/
//setting
void Buzzer_Setting(char BeepsCount)
{
	if(Buzzer->Enable==1) 
	{	
		if(Buzzer->GO==0)
		{
			Buzzer->Count=BeepsCount;
			Buzzer->GO=1;
			BuzzerSwitch=1;
		}
		else
			Buzzer->Register=BeepsCount;
	}		
}

//main
void Buzzer_Main()
{		
	if(Buzzer->Enable == 1)
	{ 
		if(Buzzer->GO == 0)
		{
			if(Buzzer->BeepsCount > 0)
			{
				Buzzer->Count=Buzzer->BeepsCount;
				Buzzer->BeepsCount=0;
				Buzzer->GO=1;
				BuzzerSwitch=1;
			}	
		}
		else
		{	
			Buzzer->Time++;
			if(Buzzer->Time==BuzzerTimeValue)	
			{
				Buzzer->Time=0;	
				if(BuzzerSwitch==0)
					BuzzerSwitch=1;
				else
				{
					BuzzerSwitch=0;
				
					if(Buzzer->Count>1)	
						Buzzer->Count--;
					else	
					{
						if(Buzzer->Register==0)
							Buzzer->GO=0;
						else
						{
							Buzzer->Count += Buzzer->Register;
							Buzzer->Register=0;
						}		
					}				
				}					
			}
			if(Buzzer->BeepsCount > 0)
			{
				Buzzer->Register=Buzzer->BeepsCount;
				Buzzer->BeepsCount=0;
			}	
		}
	}
}


/***End file***/

/*include*/
#include "..\Header_File\Configure.h"

/*Routine main*/
void main()
{

	Mcu_Initial();

	while(1)
	{
		
		if(Tmr0->Timeout == 1)//1ms
		{
			Tmr0->Timeout=0;
			ErrorLED=0;
			Tmr0->Count1++;
			if(Tmr0->Count1 == 1000)//1s
			{
				Tmr0->Count1=0;
				AmberLED=~AmberLED;
			}
		}
	}
}

/*End file*/
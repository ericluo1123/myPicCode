
/*Include file*/
#include "../2.Development_V1.0/Development_V1.0.h"

#include "../Header_File/MCU_16F1516.h"
#include "../Header_File/SegmentDisplay.h"
#include "../Header_File/Touch.h"	
#include "../Header_File/I2C.h"
#include "../Header_File/Usart.h"
	#include <stdio.h>	

/*Routine main*/
//Touch initial
void Touch_Initial()
{
	Touch=&VarTouch;
	Touch->Enable=1;
	TouchPower=1;
	Touch->PowerTimeValue=3000;

	//mode setup	
	Touch->DCBellMode=0;
	Touch->ACBellMode=0;
	Touch->LightsMode=1;
}
//Touch main
void Touch_Main()
{
	if(Touch->Enable==1)
	{
		if(Bottom1==0)
		{
			if(Touch->Debounce==0)
			{					
				if(Touch->DebounceTime<TouchDebounceTimeValue)
					Touch->DebounceTime++;
				else
				{
					Touch->DebounceTime=0;
					Touch->Debounce=1;
					
					if(Bottom1==0)
					{
						LED2=~LED2;
					//	printf("test computer");
					//	I2C_Transmit();
/*	
						if(Segment->DecToHex==0)	
						{
							Segment->DecToHex=1;
							LED2=1;
							LED3=0;
						}
						else		
						{
							Segment->DecToHex=0;
							LED2=0;
							LED3=1;	
						}
			*/
/*						if(Touch->LightsMode==1)
						{
							//check key and operation
							if(Lights1->Status==0)			//close to open		
							{														
								Control_Lights_Procedures(11);
							}
							else								//open to close
							{	
							
								Control_Lights_Close(10);
							}	

						}
						else 
							Control_Lights_Procedures(55);
*/
					}

				}					
			}
			else
			{
				if(Touch->LearnRun==0)
				{					
					if(Touch->LearnTime<TouchLearnTimeValue)
						Touch->LearnTime++;
					else
					{
						Touch->LearnTime=0;
						Touch->LearnRun=1;

//						if(Touch->LightsMode==0)
//							Control_Lights_Close(55);
					}
				}
			}		
		}
		else
		{
			if(Touch->Debounce==1)
			{				
				if(Touch->DebounceTime<TouchDebounceTimeValue)
					Touch->DebounceTime++;	
				else	
				{
					Touch->DebounceTime=0;
					Touch->Debounce=0;
					Touch->LearnTime=0;
					Touch->LearnRun=0;

//					if(Touch->LightsMode==0)
//						Control_Lights_Close(55);
				}
			}
		/*	else
			{				
				Touch->DebounceTime=0;
				if(Touch->PowerTime>=Touch->PowerTimeValue)
				{
					Touch->PowerTime=0;	
					if(TouchPower==1)
					{
						TouchPower=0;
						Touch->PowerTimeValue=20;
					}
					else
					{
						TouchPower=1;
						Touch->PowerTimeValue=100;
					}	
				}
				else
					Touch->PowerTime++;

			}*/

		}
	}
}

/*End file*/




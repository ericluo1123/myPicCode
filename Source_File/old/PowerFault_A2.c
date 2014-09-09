
// Includes
#include "../Release/Select_File.h"


#if PowerFault_use == 1

	void PowerFault_Initial()
	{
		PF=&VarPF;
		PF->Enable=1;
		PF->Safe=1;
	}
	//*********************************************************
	void PowerFault_getAD()
	{
		if(PF->ADtoGO)
		{
			PF->ADRES=getAD(PFV_Channel,ADCON1_VDD);
			if(PF->AD < PF->ADRES)
			{
				PF->AD=PF->ADRES;
			}
		}
	}
	//*********************************************************
	void PowerFault_Main()
	{	
		if(PF->Enable)
		{
			if(PF->ADtoGO == 0)
			{
				PF->Time++;
				if(PF->Time >= 7000)//ms
				{
					if(getLoad_Safe() && getTemp_Safe())
					{
						PF->Time=0;
						PF->ADtoGO=1;
						PF->Safe=0;
					}
					else
					{
						PF->Time=7000;
					}
				}
			}
			else
			{
				PF->Time++;
				if(PF->Time >= 16)//ms
				{
					PF->Time=0;
					PF->ADtoGO=0;
			
					if(PF->ERROR)		
					{
						if(PF->AD <= (300+100) && PF->AD >= (300-100))
						{
							PF->Count++;
							if(PF->Count > 1)
							{
								PF->Count=0;
								PowerFault_ERROR(0);
							}
						}	
						else
						{
							PF->Count=0;
						}
					}
					else
					{
						if(PF->AD >= (300+100) || PF->AD <= (310-100))
						{
							PF->Count++;
							if(PF->Count > 1)
							{
								PF->Count=0;
								PowerFault_ERROR(1);
							}
						}
						else
						{
							PF->Count=0;
						}	

					}
					if(PF->ERROR == 0)		
					{
						PF->Safe=1;
					}
					PF->AD=0;
				}
			}
		}
	}

	void PowerFault_ERROR(char command)
	{
		if(command == 1)
		{
			PF->ERROR=1;
			setDimmable_PFERROR(1);
			Dimmer_ERROR();
			setLED(99,11);
			Switch_Enable(0);
			setRF_Enable(1,0);
		}	
		else
		{
			PF->ERROR=0;
			PF->Safe=1;
			setDimmable_PFERROR(0);
			Dimmer_ERROR();
			setLED(99,10);
			Switch_Enable(1);
			setRF_Enable(1,1);
		}
	}
#endif
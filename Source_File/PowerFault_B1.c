
// Includes
#include "Select_File.h"


#if PowerFault_use == 1

	void PowerFaultPointSelect(char pf)
	{
		#ifdef PFV1
			PF=&PF1;
		#endif
	}
	//*********************************************************
	void PowerFault_Initialization()
	{
		#ifdef PFV1
			setPowerFault_Initialization(1);
		#endif
	}
	//*********************************************************
	void PowerFault_Main()
	{
		#ifdef PFV1
			setPowerFault_Main(1);
		#endif
	}
	//*********************************************************
	void setPowerFault_Initialization(char pf)
	{
		PowerFaultPointSelect(pf);
		PF->Enable=1;
		PF->Safe=1;
	}
	//*********************************************************
	void setPF_Enable(char pf,char command)
	{
		PowerFaultPointSelect(pf);
		PF->Enable=command;
	}
	char getPF_Safe(char pf)
	{
		PowerFaultPointSelect(pf);
		return PF->Safe;
	} 
	char getPF_ERROR(char pf)
	{
		PowerFaultPointSelect(pf);
		return PF->ERROR;
	}
	//*********************************************************
	void getPowerFault_AD(char pf,char channel)
	{
		PowerFaultPointSelect(pf);
		if(PF->ADtoGO)
		{
			PF->ADRES=getAD(channel,ADCON1_VDD);
			if(PF->AD < PF->ADRES)
			{
				PF->AD=PF->ADRES;
			}
		}
	}
	//*********************************************************
	void setPowerFault_Main(char pf)
	{	
		PowerFaultPointSelect(pf);
		if(PF->Enable)
		{
			if(PF->ADtoGO == 0)
			{
				PF->Time++;
				if(PF->Time >= 700)//*10ms
				{
					if(getLoad_Safe() && getTemp_Safe(1))
					{
						PF->Time=0;
						PF->ADtoGO=1;
						PF->Safe=0;
					}
					else
					{
						PF->Time=700;
					}
				}
			}
			else
			{
				PF->Time++;
				if(PF->Time >= 2)//*10ms
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
								setPowerFault_ERROR(1,0);
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
								setPowerFault_ERROR(1,1);
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

	void setPowerFault_ERROR(char pf,char command)
	{
		PowerFaultPointSelect(pf);
		if(command == 1)
		{
			PF->ERROR=1;
			setDimmer_PFERROR(1,1);
			DimmerLights_ERROR();
			setLED(99,11);

			setSw_Enable(0);

			#ifdef RadioFrequency1
				setRF_Enable(1,0);
			#endif
		}	
		else
		{
			PF->ERROR=0;
			PF->Safe=1;
			setDimmer_PFERROR(1,0);
			DimmerLights_ERROR();
			setLED(99,10);

			setSw_Enable(1);

			#ifdef RadioFrequency1
				setRF_Enable(1,1);
			#endif
		}
	}
#endif
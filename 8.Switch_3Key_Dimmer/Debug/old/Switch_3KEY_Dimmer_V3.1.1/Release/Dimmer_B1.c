
// Includes
#include "../Release/Select_File.h"

#if Dimmer_use == 1

	void DimmerLightsPointSelect(char lights)
	{
		#ifdef Triac1
			if(lights == 1)
			{
				DimmerLights=&DimmerLights1;	
			}
		#endif

		#ifdef Triac2
			if(lights == 2)
			{
				DimmerLights=&DimmerLights2;	
			}
		#endif

		#ifdef Triac3
			if(lights == 3)
			{
				DimmerLights=&DimmerLights3;	
			}
		#endif		
	}

	//*********************************************************
	void DimmerLights_Initialization()
	{
		#ifdef Triac1
			DimmerLights11=&DimmerLights1;
			setDimmerLights_Initialization(1);
		#endif

		#ifdef Triac2
			DimmerLights22=&DimmerLights2;
			setDimmerLights_Initialization(2);
		#endif

		#ifdef Triac3
			DimmerLights33=&DimmerLights3;
			setDimmerLights_Initialization(3);
		#endif
	}
	void setDimmerLights_Initialization(char lights)
	{
		DimmerLightsPointSelect(lights);

		DimmerLights->MinimumValue=Dimmer_Minimum;
		DimmerLights->Open=1;
		DimmerLights->Close=1;

		#if Dimmable_Func == 1
			DimmerLights->DimmingValue=DimmerLights->MinimumValue;										
		#else
			DimmerLights->DimmingValue=DimmerLights->MaxmumValue;												
		#endif

		#if FlashMemory_use == 1
			DimmerLights->MaxmumValue=getPercentValue(Product->Data[(20+lights)]);
		#else
			DimmerLights->MaxmumValue=Dimmer_Maxum;
		#endif
	}
	//*********************************************************	
	void DimmerLights_Close()
	{
		if(getDimmer_Detect(1))
		{
			setDimmer_Detect(1,0);
			if(!getDimmerLights_StatusFlag())
			{
				setLoad_GO(1,0);
				setMemory_GO(1);
			}
		}
	}
	//*********************************************************
	void DimmerLights_Main()
	{
		#ifdef Triac1
			setDimmerLights_Main(1);
		#endif
		#ifdef Triac2
			setDimmerLights_Main(2);
		#endif
		#ifdef Triac3
			setDimmerLights_Main(3);
		#endif

		DimmerLights_Close();
	}
	//*********************************************************
	void setDimmerLights_Main(char lights)
	{
		char open=1,close=1;
		DimmerLightsPointSelect(lights);
		if(DimmerLights->Trigger)
		{
			#ifdef Triac3
				if(lights == 1)
				{
					if(!DimmerLights22->Open || !DimmerLights33->Open)
					{
						open=0;
					}
				}
				if(lights == 2)
				{
					if(!DimmerLights11->Open || !DimmerLights33->Open)
					{
						open=0;
					}
				}
				if(lights == 3)
				{
					if(!DimmerLights11->Open || !DimmerLights22->Open)
					{
						open=0;
					}
				}
			#else
				#ifdef Triac2
					if(lights == 1)
					{
						if(!DimmerLights22->Open)
						{
							open=0;
						}
					}
					if(lights == 2)
					{
						if(!DimmerLights11->Open)
						{
							open=0;
						}
					}
				#endif
			#endif
		
			if(open)
			{
				if(DimmerLights->Switch)
				{
					#ifdef Triac3
						if(lights == 1)
						{
							if(!DimmerLights22->Close || !DimmerLights33->Close)
							{
								close=0;
							}
						}
						if(lights == 2)
						{
							if(!DimmerLights11->Close || !DimmerLights33->Close)
							{
								close=0;
							}
						}
						if(lights == 3)
						{
							if(!DimmerLights11->Close || !DimmerLights22->Close)
							{
								close=0;
							}
						}
					#else
						#ifdef Triac2
							if(lights == 1)
							{
								if(!DimmerLights22->Close)
								{
									close=0;
								}
							}
							if(lights == 2)
							{
								if(!DimmerLights11->Close)
								{
									close=0;
								}
							}
						#endif
					#endif
					if(close)
					{
						DimmerLights->Trigger=0;
						setDimmerLights_Open(lights,0);
						setDimmerLights_Close(lights,1);
						setDimmerLights(lights,1);
					}
				}
				else
				{
					DimmerLights->Trigger=0;
					setDimmerLights_Open(lights,0);
					setDimmerLights_Close(lights,0);
					setDimmerLights(lights,0);
				}
			}
		}
		else
		{
			if(DimmerLights->TriggerAdj)
			{		
				if(!getDimmerLights_Trigger())
				{
					DimmerLightsPointSelect(lights);
					DimmerLights->TriggerAdj=0;
					if(DimmerLights->AdjGo)
					{
						setDimmerLights_Adj(lights,1);
						setBuz(1,1,100);
					}
					else
					{
						setDimmerLights_Adj(lights,0);
					}	
				}	
			}
		}		
	}
	//*********************************************************
	char getDimmerLights_StatusFlag()
	{
		char Status=0,i,length;
		#ifdef Triac3
			length=3;
		#else
			#ifdef Triac2
				length=2;
			#else
				length=1;		
			#endif
		#endif
	
			
		for(i=0 ; i<length ; i++)
		{
			DimmerLightsPointSelect(i+1);
			if(DimmerLights->StatusFlag)
			{
				Status=1;
			}
		}
		return Status;
	}
	//*********************************************************
	char getDimmerLights_Trigger()
	{
		char Status=0,i,length;
		#ifdef Triac3
			length=3;
		#else
			#ifdef Triac2
				length=2;
			#else
				length=1;		
			#endif
		#endif
			
		for(i=0 ; i<length ; i++)
		{
			DimmerLightsPointSelect(i+1);
			if(DimmerLights->Trigger)
			{
				Status=1;
			}
		}
		return Status;
	}
	//*********************************************************
	void DimmerLights_ERROR()
	{
		if(getDimmer_TempERROR(1))
		{	
			if(getDimmerLights_StatusFlag())
			{
				setBuz(1,10,300);
			}	

			#ifdef Triac1
				setDimmerLights_ERROR(1);
			#endif	
			#ifdef Triac2		
				setDimmerLights_ERROR(2);	
			#endif	
			#ifdef Triac3			
				setDimmerLights_ERROR(3);
			#endif	
		}
		else if(getDimmer_LoadERROR(1))
		{
			setBuz(1,5,300);
			setDimmerLights_ERROR(Dimmer->Load);
		}
		else if(getDimmer_PFERROR(1))
		{
			#ifdef Triac1
				setDimmerLights_ERROR(1);
			#endif	
			#ifdef Triac2		
				setDimmerLights_ERROR(2);	
			#endif	
			#ifdef Triac3			
				setDimmerLights_ERROR(3);
			#endif	
		}
		#ifdef Triac1
			setDimmerLights_TriggerERROR(1,0);
		#endif
		#ifdef Triac2
			setDimmerLights_TriggerERROR(2,0);
		#endif
		#ifdef Triac3
			setDimmerLights_TriggerERROR(3,0);
		#endif

		if(TMain->SelfTest == 0)
		{
			TMain->i=0;
			TMain->j=0;
			TMain->k=1;
			TMain->Count2=0;
		}	
	}
	//*********************************************************
	void setDimmerLights_ERROR(char lights)
	{
		DimmerLightsPointSelect(lights);
		if(DimmerLights->Status)
		{
			DimmerLights->Signal=0;
			DimmerLights->AdjFlag=0;
			DimmerLights->AdjStatus=0;
			DimmerLights->StatusFlag=0;
			DimmerLights->DimmingTimeValue=Dimming;
			DimmerLights->DimmingValue=DimmerLights->MinimumValue;
			setLoad_StatusOff(1,lights,1);
			setLED(lights,1);
			setSw_Status(lights,0);
			setRFSW_Status(lights,0);
		}
	}
	void setDimmerLights_TriggerERROR(char lights,char command)
	{
		DimmerLightsPointSelect(lights);
		DimmerLights->Trigger=command;
		DimmerLights->Switch=command;
		DimmerLights->TriggerAdj=command;
		DimmerLights->AdjGo=command;
		DimmerLights->Open=!command;
	}

	//*********************************************************
	void setDimmerLights(char lights,char status)
	{
		DimmerLightsPointSelect(lights);
		Dimmer->Load=lights;
		if(status)
		{
			DimmerLights->Status=1;
			setLED(lights,0);
			setLED2(0);
			setLoad_StatusOn(1,1);
			setLoad_Count(1,0);
			#if Dimmable_Func == 1
				DimmerLights->Signal=1;
				DimmerLights->DimmingTimeValue=Dimming;
			#endif
			if(DimmerLights->StatusFlag == 0)
			{
				DimmerLights->StatusFlag=1;
				setDimmer_Detect(1,1);
				setLoad_GO(1,1);
				setLoad_LightsStatus(1,lights,1);
			}		
		}
		else  
		{
			DimmerLights->Status=0;
			#if Dimmable_Func == 1
				DimmerLights->Signal=1;
				DimmerLights->AdjFlag=0;
				DimmerLights->AdjStatus=0;
				DimmerLights->DimmingTimeValue=Dimming;
			
			#else
				DimmerLights->StatusFlag=0;
				DimmerLights->Close=1;
				setLED(lights,0);
				setLoad_StatusOff(1,1);
				setLoad_LightsStatus(1,lights,0);
			#endif
		}
	}

	void setDimmerLights_Adj(char lights,char status)
	{
		DimmerLightsPointSelect(lights);
		if(status)
		{
			DimmerLights->AdjFlag=1;
			DimmerLights->Signal=1;
		}
		else
		{
			if(DimmerLights->AdjFlag)
			{
				DimmerLights->Signal=0;
				DimmerLights->AdjFlag=0;
				setLoad_StatusOff(1,0,1);
				DimmerLights->MaxmumValue=DimmerLights->DimmingValue;
				setRF_DimmerLights(lights,1);
				setTxData(1);
				setMemory_Modify(1);
				setProductData((20+lights),setPercentValue(DimmerLights->MaxmumValue));
			}
		}
	}
	//*********************************************************
	void setDimmerLights_GO(char lights,char command)
	{
		DimmerLightsPointSelect(lights);
		DimmerLights->GO=command;
	}
	//*********************************************************
	void setDimmerLights_AdjRF(char lights)
	{
		DimmerLightsPointSelect(lights);
		DimmerLights->AdjRF=1;
		DimmerLights->Signal=1;
		DimmerLights->MaxmumValue=getPercentValue(Product->Data[9]);
	}
	void setDimmerLights_MaxmumValue(char lights,char data)
	{
		DimmerLightsPointSelect(lights);
		DimmerLights->MaxmumValue=data;	
	} 
	void setDimmerLights_Switch(char lights,char command)
	{
		DimmerLightsPointSelect(lights);
		DimmerLights->Switch=command;
	} 
	void setDimmerLights_AdjGo(char lights,char command)
	{
		DimmerLightsPointSelect(lights);
		DimmerLights->AdjGo=command;
	} 
	void setDimmerLights_Trigger(char lights,char command)
	{
		DimmerLightsPointSelect(lights);	
		DimmerLights->Trigger=command;
	}
	void setDimmerLights_TriggerAdj(char lights,char command)
	{
		DimmerLightsPointSelect(lights);
		DimmerLights->TriggerAdj=command;
	} 
	void setDimmerLights_Open(char lights,char command)
	{
		DimmerLightsPointSelect(lights);
		DimmerLights->Open=command;
	}
	char getDimmerLights_Open(char lights)
	{
		DimmerLightsPointSelect(lights);
		return DimmerLights->Open;
	}
	void setDimmerLights_Close(char lights,char command)
	{
		DimmerLightsPointSelect(lights);
		DimmerLights->Close=command;
	}
	char getDimmerLights_Close(char lights)
	{
		DimmerLightsPointSelect(lights);
		return DimmerLights->Close;
	}
	//*********************************************************
	char getPercentValue(char value)
	{
		return (char)(((100-value)*0.83)+37);
	}	
	//*********************************************************
	char setPercentValue(char value)
	{
		return (100-(char)((value-37)/0.83));
	}
	//*********************************************************
	void DimmerPointSelect(char dimmer)
	{

		#ifdef DimmerReference1
			if(dimmer == 1)
			{
				Dimmer=&Dimmer1;
			}
		#endif
	}
	void setDimmer_TempERROR(char dimmer,char command)
	{
		DimmerPointSelect(dimmer);
		Dimmer->TempERROR=command;
	}
	void setDimmer_LoadERROR(char dimmer,char command)
	{
		DimmerPointSelect(dimmer);
	 	Dimmer->LoadERROR=command;
	}
	void setDimmer_PFERROR(char dimmer,char command)
	{
		DimmerPointSelect(dimmer);
		Dimmer->PFERROR=command;
	}
	void setDimmer_Detect(char dimmer,char command)
	{
		DimmerPointSelect(dimmer);
		Dimmer->Detect=command;
	}
	char getDimmer_TempERROR(char dimmer)
	{
		DimmerPointSelect(dimmer);
		return Dimmer->TempERROR;
	}
	char getDimmer_LoadERROR(char dimmer)
	{
		DimmerPointSelect(dimmer);
		return Dimmer->LoadERROR;
	}
	char getDimmer_PFERROR(char dimmer)
	{
		DimmerPointSelect(dimmer);
		return Dimmer->PFERROR;
	}
	char getDimmer_Detect(char dimmer)
	{
		DimmerPointSelect(dimmer);
		return Dimmer->Detect;
	}
	#if Serial_Number == 1
		void DimmerLightsOpenShow()
		{
			if(!getTemp_ERROR(1) && !getPF_ERROR(1) && !getLoad_ERROR(1))
			{
				if(!TMain->r)
				{	
					if(TMain->k)
					{
						TMain->k=0;
			
						DimmerLightsPointSelect(1);
						DimmerLights->MaxmumValue=Dimmer_Maxum;
						DimmerLights->DimmingValue=Dimmer_Maxum;
						setDimmerLights_Trigger(1,1);
						setDimmerLights_Switch(1,1);
			
						setBuz(1,1,100);
					}
					TMain->Count2++;
					if(TMain->Count2 == 300)	//1.5s
					{
						TMain->Count2=0;
		
						if(!TMain->i)
						{
		
							if(getTemp_Safe(1) && getPF_Safe(1) && getLoad_Safe(1))
							{
								TMain->i=1;
			
								DimmerLightsPointSelect(1);
								DimmerLights->AdjRF=1;
								DimmerLights->Signal=1;
								DimmerLights->MaxmumValue=Dimmer_Maxum+50;
								//setProductData(21,setPercentValue(DimmerLights->MaxmumValue));
			
								setBuz(1,1,100);
							}
							else
							{		
								TMain->Count2=300;
							}
						}
						else
						{	
							if(!TMain->j)
							{
								TMain->j=1;
								TMain->r=1;
								TMain->SelfTest=1;
			
								DimmerLightsPointSelect(1);
								setDimmerLights_Trigger(1,1);
								setDimmerLights_Switch(1,0);
								DimmerLights->MaxmumValue=getPercentValue(Product->Data[(20+1)]);
			
								setBuz(1,3,50);
			
								#ifdef Triac1
									setSw_Enable(1,1);
								#endif
		
								#ifdef Triac2
									setSw_Enable(2,1);
								#endif
	
								#ifdef Triac3
									setSw_Enable(3,1);
								#endif
						
								#ifdef RadioFrequency1
									setRF_Enable(1,1);
								#endif
			
							}
						}
					}	
				}
			}
		}
	#endif
//end
#endif





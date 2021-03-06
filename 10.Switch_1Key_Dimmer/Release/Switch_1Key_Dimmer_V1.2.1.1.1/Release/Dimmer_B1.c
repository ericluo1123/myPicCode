
// Includes
#include "Select_File.h"

#if Dimmer_use == 1

	void DimmerLightsPointSelect(char lights)
	{
		#ifdef use_1KEY
			if(lights == 1)
			{
				DimmerLights=&DimmerLights1;	
			}
		#endif

		#ifdef use_2KEY
			if(lights == 2)
			{
				DimmerLights=&DimmerLights2;	
			}
		#endif

		#ifdef use_3KEY
			if(lights == 3)
			{
				DimmerLights=&DimmerLights3;	
			}
		#endif		
	}

	//*********************************************************
	void DimmerLights_Initialization()
	{
		#ifdef use_1KEY
			DimmerLights11=&DimmerLights1;
			setDimmerLights_Initialization(1);
		#endif

		#ifdef use_2KEY
			DimmerLights22=&DimmerLights2;
			setDimmerLights_Initialization(2);
		#endif

		#ifdef use_3KEY
			DimmerLights33=&DimmerLights3;
			setDimmerLights_Initialization(3);
		#endif

		#ifdef DimmerReference1
			Dimmer_Initialization();
		#endif

	}
	void setDimmerLights_Initialization(char lights)
	{
		DimmerLightsPointSelect(lights);
		DimmerLights->Clear=1;

		#if FlashMemory_use == 1
			#if DimmerValue_SaveMemory == 1
				DimmerLights->MaxmumValue=getPercentValue(Product->Data[(20+lights)]);
			#else
				DimmerLights->MaxmumValue=Dimmer_Maxum;
				DimmerLights->MinimumValue=Dimmer_Minimum;
			#endif
		#else
			DimmerLights->MaxmumValue=Dimmer_Maxum;
			DimmerLights->MinimumValue=Dimmer_Minimum;
		#endif


		#if Dimmable_Func == 1
			#if Control_Method_Triac == 1
				DimmerLights->DimmingValue=DimmerLights->MinimumValue;			
			#endif

			#if Control_Method_Mosfet == 1
				DimmerLights->DimmingValue=DimmerLights->MaxmumValue;			
			#endif
							
		#else
			#if Control_Method_Triac == 1
				DimmerLights->DimmingValue=DimmerLights->MaxmumValue;			
			#endif	

			#if Control_Method_Mosfet == 1
				DimmerLights->DimmingValue=DimmerLights->MinimumValue;			
			#endif											
		#endif
	}
	//*********************************************************	
	void DimmerLights_Close()
	{
		if(Dimmer->Detect)
		{
			Dimmer->Detect=0;
			if(!getDimmerLights_StatusFlag())
			{
				setLoad_GO(0);
				setMemory_GO(1);
			}
		}
	}
	//*********************************************************
	void DimmerLights_Main()
	{
		#ifdef use_1KEY
			setDimmerLights_Main(1);
		#endif

		#ifdef use_2KEY
			setDimmerLights_Main(2);
		#endif

		#ifdef use_3KEY
			setDimmerLights_Main(3);
		#endif

		DimmerLights_Close();
	}
	//*********************************************************
	void setDimmerLights_Main(char lights)
	{
		char clear=1;
		DimmerLightsPointSelect(lights);

		#if Switch_Class == 3
			if(lights == 1)
			{
				clear=(!DimmerLights22->Clear || !DimmerLights33->Clear)?0:1;
			}
			else if(lights == 2)
			{
				clear=(!DimmerLights11->Clear || !DimmerLights33->Clear)?0:1;
			}
			else if(lights == 3)
			{
				clear=(!DimmerLights11->Clear || !DimmerLights22->Clear)?0:1;
			}
		#endif

		#if Switch_Class == 2
			if(lights == 1)
			{
				clear=(!DimmerLights22->Clear)?0:1;
			}
			else if(lights == 2)
			{
				clear=(!DimmerLights11->Clear)?0:1;
			}
		#endif

		if(DimmerLights->Trigger)
		{
			if(clear) 
			{
				if(DimmerLights->Switch)
				{
					DimmerLights->Trigger=0;
					setDimmerLights(lights,1);

					#if OverLoad_use == 1
						DimmerLights->Clear=0;
					#endif
				}
				else
				{
					DimmerLights->Trigger=0;
					setDimmerLights(lights,0);

					#if OverLoad_use == 1
						DimmerLights->Clear=0;
					#endif
				}
			}
		}
		else
		{
			if(DimmerLights->TriggerAdj)
			{		
				if(clear)
				{
					DimmerLightsPointSelect(lights);
					DimmerLights->TriggerAdj=0;
					if(DimmerLights->AdjGo)
					{
						setDimmerLights_Adj(lights,1);
						setBuz(1,BuzzerOnOffTime);
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
		char Status=0;

		#if Switch_Class == 3
			Status=(DimmerLights11->StatusFlag || DimmerLights22->StatusFlag || DimmerLights33->StatusFlag)?1:0;
		#endif

		#if Switch_Class == 2
			Status=(DimmerLights11->StatusFlag || DimmerLights22->StatusFlag)?1:0;
		#endif

		#if Switch_Class == 1
			Status=(DimmerLights11->StatusFlag)?1:0;
		#endif

		return Status;
	}
	//*********************************************************
	char getDimmerLights_Trigger()
	{
		char Status=0;

		#if Switch_Class == 3
			Status=(DimmerLights11->Trigger || DimmerLights22->Trigger || DimmerLights33->Trigger)?1:0;
		#endif

		#if Switch_Class == 2
			Status=(DimmerLights11->Trigger || DimmerLights22->Trigger)?1:0;
		#endif

		#if Switch_Class == 1
			Status=(DimmerLights11->Trigger)?1:0;
		#endif

		return Status;
	}
	//*********************************************************
	void DimmerLights_Exceptions(char status)
	{
		if(status == 1)//temp
		{	
			if(getDimmerLights_StatusFlag())
			{
				setBuz(10,BuzzerErrorTime);
			}	

			#ifdef use_1KEY
				setDimmerLights_ERROR(1);
			#endif	
			#ifdef use_2KEY		
				setDimmerLights_ERROR(2);	
			#endif	
			#ifdef use_3KEY		
				setDimmerLights_ERROR(3);
			#endif	
		}
		else if(status == 2)//Load
		{
			setBuz(5,BuzzerErrorTime);
			setDimmerLights_ERROR(Dimmer->Load);
		}
		else if(status == 3)//power fail
		{
			#ifdef use_1KEY
				setDimmerLights_ERROR(1);
			#endif	
			#ifdef use_2KEY		
				setDimmerLights_ERROR(2);	
			#endif	
			#ifdef use_3KEY			
				setDimmerLights_ERROR(3);
			#endif	
		}

		#ifdef use_1KEY
			setDimmerLights_TriggerERROR(1,0);
		#endif
		#ifdef use_2KEY
			setDimmerLights_TriggerERROR(2,0);
		#endif
		#ifdef use_3KEY
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
			DimmerLights->DimmingTimeValue=DimmingDelayTime;
			DimmerLights->DimmingValue=DimmerLights->MinimumValue;
			Dimmer->Detect=1;
			setLoad_StatusOff(lights,1);
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
			setLoad_Count(0);
			#if Dimmable_Func == 1
				DimmerLights->Signal=1;
				DimmerLights->DimmingTimeValue=DimmingDelayTime;
			#endif
			if(!DimmerLights->StatusFlag)
			{
				DimmerLights->StatusFlag=1;
				setLoad_StatusOn(lights,1);
				setMemory_GO(0);

				#if Dimmer_Smooth == 0
					DimmerLights->DimmingValue=DimmerLights->MaxmumValue;
				#endif

				#if DimmerValue_CloseLightsSave == 0 && DimmerValue_SaveMemory == 0
					DimmerLights->DimmingValue=Dimmer_Maxum;
				#endif
			}		
		}
		else  
		{
			DimmerLights->Status=0;
			#if Dimmer_Smooth == 0
				DimmerLights->DimmingValue=DimmerLights->MinimumValue;
			#endif

			#if Dimmable_Func == 1
				#if Control_Method_Mosfet == 1
					DimmerLights->MosfetClose=1;
				#endif
				DimmerLights->Signal=1;
				DimmerLights->AdjFlag=0;
				DimmerLights->AdjStatus=0;
				DimmerLights->DimmingTimeValue=DimmingDelayTime;
			
			#else
				DimmerLights->StatusFlag=0;
				DimmerLights->Close=1;
				Dimmer->Detect=1;
				setLoad_StatusOff(lights,1);
				setLED(lights,1);
				setLED2(1);
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
				setLoad_StatusOff(0,1);
				DimmerLights->MaxmumValue=DimmerLights->DimmingValue;

				#if DimmerValue_CloseLightsSave == 1
					setProductData((20+lights),setPercentValue(DimmerLights->MaxmumValue));		
					#if DimmerValue_SaveMemory == 1
						setMemory_Modify(1);
					#endif
				#endif
				setRF_DimmerLights(lights,1);
				setTxData(1);
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

	void setDimmerLights_Clear(char lights,char command)
	{
		DimmerLightsPointSelect(lights);
		DimmerLights->Clear=command;
	}
/*	char getDimmerLights_Clear(char lights)
	{
		DimmerLightsPointSelect(lights);
		return DimmerLights->Clear;
	}*/

/*
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
*/
	//*********************************************************
	char getPercentValue(char value)
	{
		#if Control_Method_Triac == 1
			float i=Dimmer_Minimum-Dimmer_Maxum;
			i/=100;
			return (char)(((100-value)*i)+Dimmer_Maxum);
		#endif

		#if Control_Method_Mosfet == 1
			float i=Dimmer_Maxum-Dimmer_Minimum;
			i/=100;
			return (char)(((100-value)*i)+Dimmer_Maxum);
		#endif
	}	
	//*********************************************************
	char setPercentValue(char value)
	{
		#if Control_Method_Triac == 1
			float i=Dimmer_Minimum-Dimmer_Maxum;
			i/=100;
			return (100-(char)((value-Dimmer_Maxum)/i));
		#endif

		#if Control_Method_Mosfet == 1
			float i=Dimmer_Maxum-Dimmer_Minimum;
			i/=100;
			return (100-(char)((value-Dimmer_Maxum)/i));
		#endif
	}
	//*********************************************************
	void Dimmer_Initialization()
	{
		Dimmer=&Dimmer1;
	}
/*	void DimmerPointSelect(char dimmer)
	{

		#ifdef DimmerReference1
			if(dimmer == 1)
			{
				Dimmer=&Dimmer1;
			}
		#endif
	}
*/
/*	void setDimmer_TempERROR(char dimmer,char command)
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
*/
/*	void setDimmer_Detect(char dimmer,char command)
	{
		DimmerPointSelect(dimmer);
		Dimmer->Detect=command;
	}*/
/*	char getDimmer_TempERROR(char dimmer)
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
*/
/*	char getDimmer_Detect(char dimmer)
	{
		DimmerPointSelect(dimmer);
		return Dimmer->Detect;
	}*/
	#if Self_Test == 1
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
			
						setBuz(1,1,BuzzerOnOffTime);
					}
					TMain->Count2++;
					if(TMain->Count2 == 150)//*10ms
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
			
								setBuz(1,1,BuzzerOnOffTime);
							}
							else
							{		
								TMain->Count2=150;//*10ms
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
			
								setBuz(1,3,BuzzerPowerOnTime);
			
								setSw_Enable(1);
						
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





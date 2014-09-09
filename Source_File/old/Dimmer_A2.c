
// Includes
#include "../Release/Select_File.h"

#if Dimmer_use == 1

	void Dimmer_Detect()
	{
		DimmerLights1_Detect();
		DimmerLights2_Detect();
		DimmerLights3_Detect();
	}
	//*********************************************************
	void Dimmer_Initial()
	{
		DimmerLights1_Initial();
		DimmerLights2_Initial();
		DimmerLights3_Initial();
	}
	//*********************************************************
	void Dimmer_Main()
	{
		DimmerLights1_Main();
		DimmerLights2_Main();
		DimmerLights3_Main();	
	}
	//*********************************************************
	void Dimmer_Control()
	{
		DimmerLights1_Control();
		DimmerLights2_Control();
		DimmerLights3_Control();
	}
	//*********************************************************
	void Dimmer_ERROR()
	{
		if(Dimmable->TempERROR)
		{
			if(getDimmerLights1_StatusFlag || getDimmerLights2_StatusFlag || getDimmerLights3_StatusFlag)
			{
				setBuz(1,10,300);
			}	
			setDimmerLights1_ERROR();			
			setDimmerLights2_ERROR();				
			setDimmerLights3_ERROR();
			Dimmer_Close();
		}
		else if(Dimmable->LoadERROR)
		{
			#ifdef Triac1
				if(Dimmable->Load == 1)
				{
					setDimmerLights1_ERROR();
				}
			#endif
			#ifdef Triac2
				else if(Dimmable->Load == 2)
				{
					setDimmerLights2_ERROR();
				}
			#endif
			#ifdef Triac3
				else if(Dimmable->Load == 3)
				{
					setDimmerLights3_ERROR();
				}
			#endif
			Dimmer_Close();
			setBuz(1,5,300);
		}
		else if(Dimmable->PFERROR)
		{
			setDimmerLights1_ERROR();
			setDimmerLights2_ERROR();
			setDimmerLights3_ERROR();
			Dimmer_Close();
		}
		#ifdef Triac1
			DimmerLights1->Trigger=0;
			DimmerLights1->Switch=0;
			DimmerLights1->TriggerAdj=0;
			DimmerLights1->AdjGo=0;
			DimmerLights1->OK=1;
		#endif

		#ifdef Triac2
			DimmerLights2->Trigger=0;
			DimmerLights2->Switch=0;
			DimmerLights2->TriggerAdj=0;
			DimmerLights2->AdjGo=0;
			DimmerLights2->OK=1;
		#endif

		#ifdef Triac3
			DimmerLights3->Trigger=0;
			DimmerLights3->Switch=0;
			DimmerLights3->TriggerAdj=0;
			DimmerLights3->AdjGo=0;
			DimmerLights3->OK=1;
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
	void Dimmer_Close()
	{
		if(getDimmerLights1_StatusFlag == 0 && getDimmerLights2_StatusFlag == 0 && getDimmerLights3_StatusFlag == 0)
		{
			setLoad_GO(1,0);
			setMemory_GO(1);
		}
	}
	//*********************************************************
	char getStartValue(char value)
	{
		return (char)(((100-value)*0.83)+37);
	}	
	char setStartValue(char value)
	{
		return (100-(char)((value-37)/0.83));
	}
	//*********************************************************
	#ifdef Triac1
	
		void DimmerLights1_Initial()
		{
			Dimmable=&VarDimmable;
			DimmerLights1=&VarDimmerLights1;
			DimmerLights1->OK=1;
			DimmerLights1->StopValue=Dimmer_Minimum;
			DimmerLights1->Dimmable=DimmerLights1_Dimmable;
			DimmerLights1->DimmingValue=DimmerLights1_DimmeringValue;
			#if FlashMemory_use == 1
				DimmerLights1->StartValue=Product->Data[21];
			#else
				DimmerLights1->StartValue=Dimmer_Maxum;
			#endif
		}
		//*********************************************************
		void DimmerLights1_Main()
		{
			if(DimmerLights1->TriggerAdj)
			{	
				#ifdef _Switch_3Key_Dimmer_V3.1.1_H_
					if(DimmerLights2->Trigger == 0 && DimmerLights3->Trigger == 0)		
				#endif

				#ifdef _Switch_2Key_Dimmer_V2.1.0_H_
					if(DimmerLights2->Trigger == 0)	
				#endif

				#ifdef _Switch_1Key_Dimmer_1.1.0_H_
					if(1)		
				#endif
					{
						DimmerLights1->TriggerAdj=0;
						if(DimmerLights1->AdjGo)
						{
							setDimmerLights1_Adj(1);
							setBuz(1,1,100);
						}
						else
						{
							setDimmerLights1_Adj(0);
						}	
					}
			}	
			else	
			{
				if(DimmerLights1->Trigger)
				{
					#ifdef _Switch_3Key_Dimmer_V3.1.1_H_
						if(DimmerLights2->OK && DimmerLights3->OK)		
					#endif
	
					#ifdef _Switch_2Key_Dimmer_V2.1.0_H_
						if(DimmerLights2->OK)
					#endif
	
					#ifdef _Switch_1Key_Dimmer_1.1.0_H_
						if(1)		
					#endif
						{
							DimmerLights1->Trigger=0;
							if(DimmerLights1->Switch)
							{
								DimmerLights1->OK=0;
								setDimmerLights1(1);
							}
							else
							{
								setDimmerLights1(0);
							}
						}
				}
			}	
		}
		//*********************************************************
		void setDimmerLights1_ERROR()
		{
			if(DimmerLights1->Status)
			{
				DimmerLights1->Signal=0;
				DimmerLights1->AdjFlag=0;
				DimmerLights1->AdjStatus=0;
				DimmerLights1->StatusFlag=0;
				DimmerLights1->DimmingTimeValue=Dimming;
				DimmerLights1->DimmingValue=DimmerLights1_DimmeringValue;
				setLoad_StatusOff(1,1);
				setLoad_LightsStatus(1,1,0);
				setLED(1,1);
				setSw_Status(1,0);
				setRFSW_Status(1,0);
			}
		}
		//*********************************************************
		void setDimmerLights1(char status)
		{
			if(status)
			{
				DimmerLights1->Status=1;
				Dimmable->Load=1;
				setLED(1,0);
				setLoad_StatusOn(1,1);
				setLoad_Count(1,0);
				if(DimmerLights1->Dimmable)
				{
					DimmerLights1->Signal=1;
					DimmerLights1->DimmingTimeValue=Dimming;
				}
				if(	DimmerLights1->StatusFlag == 0)
				{
					DimmerLights1->StatusFlag=1;
					setLoad_GO(1,1);
					setLoad_LightsStatus(1,1,1);
				}
			}
			else if(status == 0)  
			{
				DimmerLights1->Status=0;
				Dimmable->Load=1;
				if(DimmerLights1->Dimmable)
				{
					DimmerLights1->Signal=1;
					DimmerLights1->AdjFlag=0;
					DimmerLights1->AdjStatus=0;
					DimmerLights1->DimmingTimeValue=Dimming;
				}
				else
				{
					DimmerLights1->StatusFlag=0;
					setLED(1,0);
					Dimmer_Close();
					setLoad_StatusOff(1,1);
					setLoad_LightsStatus(1,1,0);
				}
			}
		}
		//*********************************************************
		void setDimmerLights1_Adj(char status)
		{
			if(DimmerLights1->Dimmable)
			{
				if(status)
				{
					DimmerLights1->AdjFlag=1;
					DimmerLights1->Signal=1;
				}
				else if(status == 0)
				{
					if(DimmerLights1->AdjFlag)
					{
						DimmerLights1->Signal=0;
						DimmerLights1->AdjFlag=0;
						setLoad_StatusOff(1,1);
						DimmerLights1->StartValue=DimmerLights1->DimmingValue;
						setProductData(21,setStartValue(DimmerLights1->StartValue));
						setRF_DimmerLights(1,1);
						setTxData(1);
						setMemory_Modify(1);
					}
				}
			}
		}
		//*********************************************************
		void DimmerLights1_AdjRF()
		{
			DimmerLights1->AdjRF=1;
			DimmerLights1->Signal=1;
			DimmerLights1->StartValue=getStartValue(Product->Data[9]);
			setProductData(15,(Product->Data[15]|0x01));//Lights Status
			setProductData(21,Product->Data[9]);
		}
	#endif
	//*********************************************************
	#ifdef Triac2

		void DimmerLights2_Initial()
		{
			Dimmable=&VarDimmable;
			DimmerLights2=&VarDimmerLights2;
			DimmerLights2->OK=1;
			DimmerLights2->StopValue=Dimmer_Minimum;
			DimmerLights2->Dimmable=DimmerLights2_Dimmable;
			DimmerLights2->DimmingValue=DimmerLights2_DimmeringValue;
			#if FlashMemory_use == 1
				DimmerLights2->StartValue=Product->Data[22];
			#else
				DimmerLights2->StartValue=Dimmer_Maxum;
			#endif
		}
		//*********************************************************
		void DimmerLights2_Main()
		{
			if(DimmerLights2->TriggerAdj)
			{	
				#ifdef _Switch_3Key_Dimmer_V3.1.1_H_
					if(DimmerLights2->Trigger == 0 && DimmerLights3->Trigger == 0)		
				#endif

				#ifdef _Switch_2Key_Dimmer_V2.1.0_H_
					if(DimmerLights2->Trigger == 0)	
				#endif

				#ifdef _Switch_1Key_Dimmer_1.1.0_H_
					if(1)		
				#endif
					{
						DimmerLights2->TriggerAdj=0;
						if(DimmerLights2->AdjGo)
						{
							setDimmerLights2_Adj(1);
							setBuz(1,1,100);
						}
						else
						{
							setDimmerLights2_Adj(0);
						}	
					}
			}	
			else	
			{
				if(DimmerLights2->Trigger)
				{
					#ifdef _Switch_3Key_Dimmer_V3.1.1_H_
						if(DimmerLights1->OK && DimmerLights3->OK)		
					#endif
	
					#ifdef _Switch_2Key_Dimmer_V2.1.0_H_
						if(DimmerLights1->OK)
					#endif
	
					#ifdef _Switch_1Key_Dimmer_1.1.0_H_
						if(1)		
					#endif
						{
							DimmerLights2->Trigger=0;
							if(DimmerLights2->Switch)
							{
								DimmerLights2->OK=0;
								setDimmerLights2(1);
							}
							else
							{
								setDimmerLights2(0);
							}
						}
				}
			}	
		}
		//*********************************************************
		void setDimmerLights2_ERROR()
		{
			if(DimmerLights2->Status)
			{
				DimmerLights2->Signal=0;
				DimmerLights2->AdjFlag=0;
				DimmerLights2->AdjStatus=0;
				DimmerLights2->StatusFlag=0;
				DimmerLights2->DimmingTimeValue=Dimming;
				DimmerLights2->DimmingValue=DimmerLights2_DimmeringValue;
				setLoad_StatusOff(1,1);
				setLoad_LightsStatus(1,2,0);
				setLED(2,1);
				setSw_Status(2,0);
				setRFSW_Status(2,0);
			}
		}
		//*********************************************************
		void setDimmerLights2(char status)
		{
			if(status)
			{
				DimmerLights2->Status=1;
				Dimmable->Load=2;
				setLED(2,0);
				setLoad_Count(1,0);
				setLoad_StatusOn(1,1);
				if(DimmerLights2->Dimmable)
				{
					DimmerLights2->Signal=1;
					DimmerLights2->DimmingTimeValue=Dimming;
				}
				if(	DimmerLights2->StatusFlag == 0)
				{
					DimmerLights2->StatusFlag=1;
					setLoad_GO(1,1);
					setLoad_LightsStatus(1,2,1);
				}
			}
			else if(status == 0)
			{
				DimmerLights2->Status=0;
				Dimmable->Load=2;
				if(DimmerLights2->Dimmable)
				{
					DimmerLights2->Signal=1;
					DimmerLights2->AdjFlag=0;
					DimmerLights2->AdjStatus=0;
					DimmerLights2->DimmingTimeValue=Dimming;
				}
				else
				{
					DimmerLights2->StatusFlag=0;
					setLED(2,0);
					Dimmer_Close();
					setLoad_StatusOff(1,1);
					setLoad_LightsStatus(1,2,0);
				}
			}
		}
		//*********************************************************
		void setDimmerLights2_Adj(char status)
		{
			if(DimmerLights2->Dimmable)
			{
				if(status)
				{
					DimmerLights2->AdjFlag=1;
					DimmerLights2->Signal=1;
				}
				else  if(status == 0)
				{
					if(DimmerLights2->AdjFlag)
					{
						DimmerLights2->Signal=0;
						DimmerLights2->AdjFlag=0;
						setLoad_StatusOff(1,1);
						DimmerLights2->StartValue=DimmerLights2->DimmingValue;
						setProductData(22,setStartValue(DimmerLights2->StartValue));
						setRF_DimmerLights(2,1);
						setTxData(1);
						setMemory_Modify(1);
					}
				}
			}
		}
		//*********************************************************
		void DimmerLights2_AdjRF()
		{
			DimmerLights2->AdjRF=1;
			DimmerLights2->Signal=1;
			DimmerLights2->StartValue=getStartValue(Product->Data[9]);
			setProductData(15,(Product->Data[15]|0x02));//Lights Status
			setProductData(22,Product->Data[9]);
		}
	#endif
	//*********************************************************
	#ifdef Triac3

		void DimmerLights3_Initial()
		{
			Dimmable=&VarDimmable;
			DimmerLights3=&VarDimmerLights3;
			DimmerLights3->OK=1;
			DimmerLights3->StopValue=Dimmer_Minimum;
			DimmerLights3->Dimmable=DimmerLights3_Dimmable;
			DimmerLights3->DimmingValue=DimmerLights3_DimmeringValue;
			#if FlashMemory_use == 1
				DimmerLights3->StartValue=Product->Data[23];
			#else
				DimmerLights3->StartValue=Dimmer_Maxum;
			#endif
		}
		//*********************************************************
		void DimmerLights3_Main()
		{
			if(DimmerLights3->TriggerAdj)
			{
				#ifdef _Switch_3Key_Dimmer_V3.1.1_H_
					if(DimmerLights2->Trigger == 0 && DimmerLights3->Trigger == 0)		
				#endif

				#ifdef _Switch_2Key_Dimmer_V2.1.0_H_
					if(DimmerLights2->Trigger == 0)	
				#endif

				#ifdef _Switch_1Key_Dimmer_1.1.0_H_
					if(1)		
				#endif
					{
						DimmerLights3->TriggerAdj=0;
						if(DimmerLights3->AdjGo)
						{
							setDimmerLights3_Adj(1);
							setBuzzer(1,100);
						}
						else
						{
							setDimmerLights3_Adj(0);
						}	
					}
			}	
			else	
			{
				if(DimmerLights3->Trigger)
				{
					#ifdef _Switch_3Key_Dimmer_V3.1.1_H_
						if(DimmerLights1->OK && DimmerLights2->OK)		
					#endif
	
					#ifdef _Switch_2Key_Dimmer_V2.1.0_H_
						if(DimmerLights1->OK)	
					#endif
	
					#ifdef _Switch_1Key_Dimmer_1.1.0_H_
						if(1)		
					#endif	
					{
						DimmerLights3->Trigger=0;
						if(DimmerLights3->Switch)
						{
							DimmerLights3->OK=0;
							setDimmerLights3(1);
						}
						else
						{
							setDimmerLights3(0);
						}
					}
				}
			}	
		}
		//*********************************************************
		void setDimmerLights3_ERROR()
		{
			if(DimmerLights3->Status)
			{
				DimmerLights3->Signal=0;
				DimmerLights3->AdjFlag=0;
				DimmerLights3->AdjStatus=0;
				DimmerLights3->StatusFlag=0;
				DimmerLights3->DimmingTimeValue=Dimming;
				DimmerLights3->DimmingValue=DimmerLights3_DimmeringValue;
				setLoad_StatusOff(1);
				setLoad_Lights3Status(0);
				setLED(3,1);
				setSw3_Status(0);
				setRFsw3_Status(0);
			}
		}
		//*********************************************************
		void setDimmerLights3(char status)
		{
			if(status)
			{
				DimmerLights3->Status=1;
				Dimmable->Load=3;
				setLED(3,0);
				setLoad_Count(1,0);
				setLoad_StatusOn(1,1);
				if(DimmerLights3->Dimmable)
				{
					DimmerLights3->Signal=1;
					DimmerLights3->DimmingTimeValue=Dimming;
				}
				if(DimmerLights3->StatusFlag == 0)
				{
					DimmerLights3->StatusFlag=1;
					setLoad_GO(1,1);
					setLoad_LightsStatus(1,3,1);
				}
			}
			else if(status == 0)
			{
				DimmerLights3->Status=0;
				if(DimmerLights3->Dimmable)
				{
					DimmerLights3->Signal=1;
					DimmerLights3->AdjFlag=0;
					DimmerLights3->AdjStatus=0;
					DimmerLights3->DimmingTimeValue=Dimming;
				}
				else
				{
					DimmerLights3->StatusFlag=0;
					setLED(3,0);
					Dimmer_Close();
					setLoad_StatusOff(1,1);
					setLoad_LightsStatus(1,3,0);
				}
			}
		}
		//*********************************************************
		void setDimmerLights3_Adj(char status)
		{
			if(DimmerLights3->Dimmable)
			{
				if(status)
				{
					DimmerLights3->AdjFlag=1;
					DimmerLights3->Signal=1;
				}
				else  if(status == 0)
				{
					if(DimmerLights3->AdjFlag)
					{
						DimmerLights3->Signal=0;
						DimmerLights3->AdjFlag=0;
						setLoad_StatusOff(1,1);
						DimmerLights3->StartValue=DimmerLights3->DimmingValue;
						setProductData(23,setStartValue(DimmerLights3->StartValue));
						setRF_DimmerLights(3,1);
						setTxData();
						setMemory_Modify(1);
					}
				}
			}
		}
		//*********************************************************
		void DimmerLights3_AdjRF()
		{
			DimmerLights3->AdjRF=1;
			DimmerLights3->Signal=1;
			DimmerLights3->StartValue=getStartValue(Product->Data[9]);
			setProductData(15,(Product->Data[15]|0x04));//Lights Status
			setProductData(23,Product->Data[9]);
		}
	#endif	
	//*********************************************************	
	
//end
#endif






// Includes
#include "../Release/Select_File.h"


#if Switch_use == 1
	//*********************************************************
	void Switch_Initial()	
	{
		TouchPower();
		Sw1_Initial();
		Sw2_Initial();
		Sw3_Initial();
	}	
	//*********************************************************
	void Switch_Main()	
	{
		Sw1_Main();
		Sw2_Main();
		Sw3_Main();
	}
	//*********************************************************
	void Switch_Enable(char cmd1,char cmd2,char cmd3)
	{
		setSw1_Enable(cmd1);
		setSw1_DebounceTime(0);
		setSw2_Enable(cmd2);
		setSw2_DebounceTime(0);
		setSw3_Enable(cmd3);
		setSw3_DebounceTime(0);
	}
	//*********************************************************
	#ifdef TTPW
		void TouchPower()
		{
			while(TTPW == 0)
				TTPW=1;
		}
	#endif
	//*********************************************************
	#ifdef Triac1

		void Sw1_Initial()
		{
			Sw1=&VarSw1;
			setLED1(1);
			#ifdef _Switch_2Key_Dimmer_V2.1.0_H_  
				WPUB1=0;	
			#endif

			#ifdef _Switch_1Key_Dimmer_V1.1.0_H_  
				WPUB1=0;	
			#endif
		}
		//*********************************************************
		void Sw1_Main()
		{
			if(Sw1->Enable)
			{
				#ifdef _Switch_3Key_Dimmer_V3.1.0_H_ || _Switch_3Key_Dimmer_V3.1.1_H_
					if(Key1)		
				#endif

				#ifdef _Switch_2Key_Dimmer_V2.1.0_H_
					if(Key1_1 || Key1_2)		
				#endif

				#ifdef _Switch_1Key_Dimmer_V1.1.0_H_
					if(Key1_1 || Key1_2 || Key1_3 || Key1_4)		
				#endif
				{
					if(Sw1->Debounce == 0)
					{
						Sw1->DebounceTime++;
						if(Sw1->DebounceTime >=  DebounceTimeValue)
						{
							Sw1->DebounceTime=0;
							Sw1->Debounce=1;
							Sw1->Flag=1;
							Sw1_OnFunc();//key on function
							setBuzzer(1,100);
						}
					}
					else
					{
						if(Sw1->Hold1 == 0)
						{
							Sw1->Hold1Time++;
							if(Sw1->Hold1Time >= Hold1TimeValue)
							{
								Sw1->Hold1Time=0;
								Sw1->Hold1=1;
								Sw1_LearnFunc();//key learn func
							}
						}
						else
						{
							if(Sw1->Hold2 == 0)
							{
								Sw1->Hold2Time++;
								if(Sw1->Hold2Time >= Hold2TimeValue)
								{
									Sw1->Hold2Time=0;
									Sw1->Hold2=1;
									setRF_Learn(1);
									if(TMain->FirstOpen)
									{
										setBuzzer(2,50);
									}
								}
							}
							else
							{
								if(Sw1->Hold3 == 0)
								{
									Sw1->Hold3Time++;
									if(Sw1->Hold3Time >= Hold3TimeValue)//ms
									{
										Sw1->Hold3Time=0;
										Sw1->Hold3=1;
										setRF_Learn(0);
									}
								}
							}
						}
					}
				}
				else
				{
					if(Sw1->Debounce)
					{
						Sw1->DebounceTime++;
						if(Sw1->DebounceTime >=  DebounceTimeValue)
						{
							Sw1->DebounceTime=0;
							Sw1->Debounce=0;
							Sw1->Hold1Time=0;
							Sw1->Hold1=0;
							Sw1->Hold2Time=0;
							Sw1->Hold2=0;
							Sw1->Hold3Time=0;
							Sw1->Hold3=0;
							setRF_Learn(0);
							Sw1_OffFunc();//key off func
						}
					}	
					else
					{
						Sw1->DebounceTime=0;
					}
				}
			}
		}	
		//*********************************************************
		void Sw1_OnFunc()
		{
			if(Sw1->Status == 0)
			{
				Sw1->Status=1;
				setRFsw1_Status(1);
				setDimmerLights1_Trigger(1);
				setDimmerLights1_Switch(1);
				setRF_DimmerLights(1,1);
				setTxData();
			}
			else
			{
				Sw1->Status=0;
				setRFsw1_Status(0);
				setDelayOffSw1_GO(0,0);
			}
		}
		//*********************************************************
		void Sw1_LearnFunc()
		{
			if(Sw1->Flag)
			{
				Sw1->Status=1;
				Sw1->Adj=1;
				setRFsw1_Status(1);
				setDimmerLights1_TriggerAdj(1);
				setDimmerLights1_AdjGo(1);
			}
		}
		//*********************************************************
		void Sw1_OffFunc()
		{
			if(Sw1->Flag)
			{
				Sw1->Flag=0;
				if(Sw1->Status)
				{
					if(Sw1->Adj)
					{
						Sw1->Adj=0;
						setDimmerLights1_TriggerAdj(1);
						setDimmerLights1_AdjGo(0);
						setProductData(17,Product->Data[27]);
					}
				}
				else
				{
					setDimmerLights1_Trigger(1);
					setDimmerLights1_Switch(0);	
					setRF_DimmerLights(1,0);
					setTxData();
				}
			}
		}
	#endif
	//*********************************************************
	#ifdef Triac2

		void Sw2_Initial()
		{
			Sw2=&VarSw2;
			setLED2(1);
		}
		//*********************************************************
		void Sw2_Main()
		{
			if(Sw2->Enable)
			{
				#ifdef _Switch_3Key_Dimmer_V3.1.1_H_
					if(Key2)		
				#endif

				#ifdef _Switch_2Key_Dimmer_V2.1.0_H_
					if(Key2_1 || Key2_2)		
				#endif
				{
					if(Sw2->Debounce == 0)
					{
						Sw2->DebounceTime++;
						if(Sw2->DebounceTime >=  DebounceTimeValue)
						{
							Sw2->DebounceTime=0;
							Sw2->Debounce=1;
							Sw2->Flag=1;
							Sw2_OnFunc();//key on function	
							setBuzzer(1,100);
						}
					}
					else
					{
						if(Sw2->Hold1 == 0)
						{
							Sw2->Hold1Time++;
							if(Sw2->Hold1Time >= Hold1TimeValue)
							{
								Sw2->Hold1Time=0;
								Sw2->Hold1=1;
								Sw2_LearnFunc();//key learn func
							}
						}
						else
						{
							if(Sw2->Hold2 == 0)
							{
								Sw2->Hold2Time++;
								if(Sw2->Hold2Time >= Hold2TimeValue)
								{
									Sw2->Hold2Time=0;
									Sw2->Hold2=1;
									setRF_Learn(1);
									if(TMain->FirstOpen)
									{
										setBuzzer(2,50);
									}
								}
							}
							else
							{
								if(Sw2->Hold3 == 0)
								{
									Sw2->Hold3Time++;
									if(Sw2->Hold3Time >= Hold3TimeValue)//ms
									{
										Sw2->Hold3Time=0;
										Sw2->Hold3=1;
										setRF_Learn(0);
									}
								}
							}
						}
					}
				}
				else
				{
					if(Sw2->Debounce)
					{
						Sw2->DebounceTime++;
						if(Sw2->DebounceTime >=  DebounceTimeValue)
						{
							Sw2->DebounceTime=0;
							Sw2->Debounce=0;
							Sw2->Hold1Time=0;
							Sw2->Hold1=0;
							Sw2->Hold2Time=0;
							Sw2->Hold2=0;
							Sw2->Hold3Time=0;
							Sw2->Hold3=0;
							setRF_Learn(0);
							Sw2_OffFunc();//key off func
						}
					}
					else
					{
						Sw2->DebounceTime=0;
					}
				}
			}
		}
		//*********************************************************
		void Sw2_OnFunc()
		{
			if(Sw2->Status == 0)
			{
				Sw2->Status=1;
				setDimmerLights2_Trigger(1);
				setDimmerLights2_Switch(1);
				setRFsw2_Status(1);
				setRF_DimmerLights(2,1);
				setTxData();
			}
			else
			{
				Sw2->Status=0;
				setRFsw1_Status(0);
				setDelayOffSw2_GO(0,0);
			}
		}
		//*********************************************************
		void Sw2_LearnFunc()
		{
			if(Sw2->Flag)
			{
				Sw2->Status=1;
				Sw2->Adj=1;
				setRFsw2_Status(1);
				setDimmerLights2_TriggerAdj(1);
				setDimmerLights2_AdjGo(1);
			}
		}
		//*********************************************************
		void Sw2_OffFunc()
		{
			if(Sw2->Flag)
			{
				Sw2->Flag=0;
				if(Sw2->Status)
				{
					if(Sw2->Adj)
					{
						Sw2->Adj=0;
						setDimmerLights2_TriggerAdj(1);
						setDimmerLights2_AdjGo(0);	
						setProductData(17,Product->Data[28]);
					}
				}
				else
				{
					setDimmerLights2_Trigger(1);
					setDimmerLights2_Switch(0);
					setRF_DimmerLights(2,0);
					setTxData();
				}
			}
		}
	#endif
	//*********************************************************
	#ifdef Triac3

		void Sw3_Initial()
		{
			Sw3=&VarSw3;
			setLED3(1);
		}
		//*********************************************************
		void Sw3_Main()
		{
			if(Sw3->Enable)
			{
				if(Key3)
				{
					if(Sw3->Debounce == 0)
					{
						Sw3->DebounceTime++;
						if(Sw3->DebounceTime >=  DebounceTimeValue)
						{
							Sw3->DebounceTime=0;
							Sw3->Debounce=1;
							Sw3->Flag=1;	
							Sw3_OnFunc();//key on function		
							setBuzzer(1,100);
						}
					}
					else
					{
						if(Sw3->Hold1 == 0)
						{
							Sw3->Hold1Time++;
							if(Sw3->Hold1Time >= Hold1TimeValue)
							{
								Sw3->Hold1Time=0;
								Sw3->Hold1=1;
								Sw3_LearnFunc();//key learn func
							}
						}
						else
						{
							if(Sw3->Hold2 == 0)
							{
								Sw3->Hold2Time++;
								if(Sw3->Hold2Time >= Hold2TimeValue)
								{
									Sw3->Hold2Time=0;
									Sw3->Hold2=1;
									setRF_Learn(1);
									if(TMain->FirstOpen)
									{
										setBuzzer(2,50);	
									}
								}
							}
							else
							{
								if(Sw3->Hold3 == 0)
								{
									Sw3->Hold3Time++;
									if(Sw3->Hold3Time >= Hold3TimeValue)//ms
									{
										Sw3->Hold3Time=0;
										Sw3->Hold3=1;
										setRF_Learn(0);
									}
								}
							}
						}
					}
				}
				else
				{
					if(Sw3->Debounce)
					{
						Sw3->DebounceTime++;
						if(Sw3->DebounceTime >=  DebounceTimeValue)
						{
							Sw3->DebounceTime=0;
							Sw3->Debounce=0;
							Sw3->Hold1Time=0;
							Sw3->Hold1=0;
							Sw3->Hold2Time=0;
							Sw3->Hold2=0;
							Sw3->Hold3Time=0;
							Sw3->Hold3=0;
							setRF_Learn(0);
							Sw3_OffFunc();//key off func
						}
					}
					else
					{
						Sw3->DebounceTime=0;
					}
				}
			}
		}
		//*********************************************************
		void Sw3_OnFunc()
		{
			if(Sw3->Status == 0)
			{
				Sw3->Status=1;
				setDimmerLights3_Trigger(1);
				setDimmerLights3_Switch(1);
				setRFsw3_Status(1);
				setRF_DimmerLights(3,1);
				setTxData();
			}
			else
			{
				Sw3->Detect=0;
				Sw3->Status=0;
				setRFsw3_Status(0);
				setDelayOffSw3_GO(0,0);
			}
		}
		//*********************************************************
		void Sw3_LearnFunc()
		{
			if(Sw3->Flag)
			{
				Sw3->Status=1;
				Sw3->Adj=1;
				setRFsw3_Status(1);
				setDimmerLights3_TriggerAdj(1);
				setDimmerLights3_AdjGo(1);
			}
		}
		//*********************************************************
		void Sw3_OffFunc()
		{
			if(Sw3->Flag == 1)
			{
				Sw3->Flag=0;
				if(Sw3->Status)
				{
					if(Sw3->Adj)
					{
						Sw3->Adj=0;
						setDimmerLights3_TriggerAdj(1);
						setDimmerLights3_AdjGo(0);
						setProductData(17,Product->Data[29]);
					}
				}
				else
				{
					setDimmerLights3_Trigger(1);
					setDimmerLights3_Switch(0);
					setRF_DimmerLights(3,0);
					setTxData();
				}
			}
		}
	#endif
	//*********************************************************	
#endif
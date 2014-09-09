
// Includes
#include "../Release/Select_File.h"


#if Switch_use == 1

	#ifdef TTPW
		void TouchPower()
		{
			while(TTPW == 0)
				TTPW=1;
		}
	#endif
	//*********************************************************
	void SwPointSelect(char sw)
	{
		#ifdef Triac1
			if(sw == 1)
			{
				Sw=&Sw1;
			}
		#endif
		#ifdef Triac2
			else if(sw == 2)
			{
				Sw=&Sw2;
			}
		#endif
		#ifdef Triac3
			else if(sw == 3)
			{
				Sw=&Sw3;
			}
		#endif
	}
	//*********************************************************
	void Switch_Initialization()	
	{
		TouchPower();
		#if	Switch_Key == 1 || 	Switch_Key == 2
			WPUB1=0;	
		#endif

		#ifdef Triac1
			setSw_Initialization(1);
			#if	Switch_Key == 1
				setLED(2,1);
			#endif
		#endif
		#ifdef Triac2
			setSw_Initialization(2);
		#endif
		#ifdef Triac3
			setSw_Initialization(3);
		#endif
	}
	//*********************************************************
	void Switch_Main()	
	{
		#ifdef Triac1
			setSw_Main(1);
		#endif
		#ifdef Triac2
			setSw_Main(2);
		#endif
		#ifdef Triac3
			setSw_Main(3);
		#endif
		//Sw_Detect();
	}
	//*********************************************************	
	void setSw_Initialization(char sw)
	{
		setLED(sw,1);
	}
	//*********************************************************
	void setSw_Enable(char sw,char command)
	{
		SwPointSelect(sw);
		Sw->Enable=command;
	}
	//*********************************************************
	void setSw_Status(char sw,char command)
	{
		SwPointSelect(sw);
		Sw->Status=command;	
	}
	//*********************************************************
	void setSw_Main(char sw)
	{
		SwPointSelect(sw);
		#if Switch_Key == 3
			if(sw == 1)
			{
				Sw->Touch=(Key1)?1:0;
			}
			else if(sw == 2)
			{
				Sw->Touch=(Key2)?1:0;
			}		
			else if(sw == 3)
			{
				Sw->Touch=(Key3)?1:0;
			}
		#endif

		#if Switch_Key == 2
			if(sw == 1)
			{
				Sw->Touch=(Key1_1 || Key1_2)?1:0;
			}
			else if(sw == 2)
			{
				Sw->Touch=(Key2_1 || Key2_2)?1:0;
			}	
		#endif

		#if Switch_Key == 1
			Sw->Touch=(Key1_1 || Key1_2 || Key1_3 || Key1_4)?1:0;
		#endif

		if(Sw->Enable)
		{
			if(Sw->Touch)
			{
				if(!Sw->Debounce)
				{
					Sw->DebounceTime++;
					if(Sw->DebounceTime >=  DebounceTimeValue/5)
					{
						Sw->DebounceTime=0;
						Sw->Debounce=1;
						Sw_OnFunc(sw);//key on function
					}
				}
				else
				{
					if(!Sw->Hold1)
					{
						Sw->Hold1Time++;
						if(Sw->Hold1Time >= Hold1TimeValue/5)
						{
							Sw->Hold1Time=0;
							Sw->Hold1=1;
							#if Dimmable_Func == 1
								Sw_AdjFunc(sw);//key learn func
							#endif
						}
					}
					else
					{
						if(!Sw->Hold2)
						{
							Sw->Hold2Time++;
							if(Sw->Hold2Time >= Hold2TimeValue/5)
							{
								Sw->Hold2Time=0;
								Sw->Hold2=1;
								#if CC2500_use == 1
									setRF_Learn(1,1);
									if(TMain->First)
									{
										setBuz(1,2,50);
									}
								#endif
							}
						}
						else
						{
							if(!Sw->Hold3)
							{
								Sw->Hold3Time++;
								if(Sw->Hold3Time >= Hold3TimeValue/5)//ms
								{
									Sw->Hold3Time=0;
									Sw->Hold3=1;
									setRF_Learn(1,0);
								}
							}
						}
					}
				}
			}
			else
			{
				if(Sw->Debounce)
				{
					Sw->DebounceTime++;
					if(Sw->DebounceTime >=  DebounceTimeValue/5)
					{
						Sw->DebounceTime=0;
						Sw->Debounce=0;
						Sw->Hold1Time=0;
						Sw->Hold1=0;
						Sw->Hold2Time=0;
						Sw->Hold2=0;
						Sw->Hold3Time=0;
						Sw->Hold3=0;
						setRF_Learn(1,0);
						Sw_OffFunc(sw);//key off func
					}
				}	
			}
		}
	}
	//*********************************************************	
	void Sw_OnFunc(char sw)
	{
		Sw->Flag=1;
		setBuz(1,1,100);
		if(!Sw->Status)
		{
			Sw->Status=1;
			setRFSW_Status(sw,1);

			setDimmerLights_Trigger(sw,1);
			setDimmerLights_Switch(sw,1);

			setRF_DimmerLights(sw,Sw->Status);
			setTxData(1);
		}
		else
		{
			Sw->Status=0;
			setRFSW_Status(sw,Sw->Status);
		}
	}
	//*********************************************************
	void Sw_OffFunc(char sw)
	{	
		if(Sw->Flag)
		{
			Sw->Flag=0;
			if(Sw->Status)
			{
				if(Sw->Adj)
				{
					Sw->Adj=0;
					setDimmerLights_TriggerAdj(sw,1);
					setDimmerLights_AdjGo(sw,0);

					setProductData(17,Product->Data[26+sw]);
					setRF_DimmerLights(sw,Sw->Status);
					setTxData(1);			
				}
			}
			else
			{
				setDelayOff_GO(sw,0,0);

				setDimmerLights_Trigger(sw,1);
				setDimmerLights_Switch(sw,0);

				setRF_DimmerLights(sw,Sw->Status);	
				setTxData(1);		
			}	
		}
	}	
	//*********************************************************	
	void Sw_AdjFunc(char sw)
	{
		if(Sw->Flag)
		{
			Sw->Adj=1;
			Sw->Status=1;
			setRFSW_Status(sw,1);

			setDimmerLights_TriggerAdj(sw,1);
			setDimmerLights_AdjGo(sw,1);
		}
	}
	//*********************************************************	
	void Sw_Detect()
	{
		if(!getLoad_ERROR(1) && !getTemp_ERROR(1) && !getPF_ERROR(1) && TMain->SelfTest)
		{	
			#ifdef Triac1
				SwPointSelect(1);
				if(Sw->Enable == 0)
				{
					Sw->Enable=1;
				}
			#endif
			#ifdef Triac2
				SwPointSelect(2);
				if(Sw->Enable == 0)
				{
					Sw->Enable=1;
				}
			#endif
			#ifdef Triac3
				SwPointSelect(3);
				if(Sw->Enable == 0)
				{
					Sw->Enable=1;
				}
			#endif
	
		}
	}
#endif
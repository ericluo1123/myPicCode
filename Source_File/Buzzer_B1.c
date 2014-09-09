

// Includes
#include "Select_File.h"


#if Buzzer_use == 1
	
	void BuzPointSelect(char buz)
	{
		#ifdef Buzzer1
			if(buz == 1)
			{
				Buz=&Buz1;
			}
		#endif
	}
	//*********************************************************
	void Buzzer_Initialization()
	{
		#ifdef Buzzer1
			setBuz_Initialization(1);
		#endif
	}
	//*********************************************************	
	void Buzzer_Main()
	{
		#ifdef Buzzer1
			setBuz_Main(1);
		#endif
	}
	//*********************************************************
	void setBuz_Enable(char buz,char command)
	{
		BuzPointSelect(buz);
		Buz->Enable=command;
	}
	//*********************************************************
	void setBuz_Initialization(char buz)
	{
		setBuz_Enable(1,1);
	}
	//*********************************************************
	void setBuz(char buz,char count,int time)
	{
		BuzPointSelect(buz);
		time*=20;
		if(Buz->Enable)
		{
			if(!Buz->GO)
			{
				Buz->GO=1;
				Buz->Count=count;
				Buz->TimeValue=time;
				#ifdef Buzzer1
					if(buz == 1)
					{
						Buzzer1=1;
					}
				#endif
			}
			else
			{
				if(!Buz->BufferStatus1)
				{
					Buz->BufferStatus1=1;
					Buz->CountBuffer1=count;
					Buz->TimeValueBuffer1=time;
				}
				else if(!Buz->BufferStatus2)
				{
					Buz->BufferStatus2=1;
					Buz->CountBuffer2=count;
					Buz->TimeValueBuffer2=time;
				}
			}
		}
	}	
	//*********************************************************	
	void setBuz_Main(char buz)
	{
		BuzPointSelect(buz);
		#ifdef Buzzer1
			if(buz == 1)
			{
				Buz->Switch=(Buzzer1)?1:0;
			}	
		#endif
		if(Buz->GO)
		{
			//Buz->Time++;
			if(Buz->Time >= Buz->TimeValue)
			{
				Buz->Time=0;
				if(!Buz->Switch)
				{
					if(Buz->Count == 0)
					{
						if(Buz->BufferStatus1)
						{
							Buz->BufferStatus1=0;
							Buz->Count=Buz->CountBuffer1;
							Buz->TimeValue=Buz->TimeValueBuffer1;
						}
						else if(Buz->BufferStatus2)
						{
							Buz->BufferStatus2=0;
							Buz->Count=Buz->CountBuffer2;
							Buz->TimeValue=Buz->TimeValueBuffer2;
						}
						else
						{
							Buz->GO=0;
						}
					}
					else
					{
						Buz->Switch=1;
						#ifdef Buzzer1
							Buzzer1=1;	
						#endif
					}
				}
				else
				{	
					Buz->Switch=0;
					#ifdef Buzzer1
						if(buz == 1)
						{
							Buzzer1=0;
						}	
					#endif
					Buz->Count--;
				}
			}
		}
	}

#endif

// Includes
#include "Select_File.h"


#if DelayOff_use == 1

	void DelayOffPointSelect(char sw)
	{
		#ifdef use_1KEY
			if(sw == 1)
			{
				DelayOff=&DlySw1;
			}
		#endif
		#ifdef use_2KEY
			else if(sw == 2)
			{
				DelayOff=&DlySw2;
			}
		#endif
		#ifdef use_3KEY
			else if(sw == 3)
			{
				DelayOff=&DlySw3;
			}
		#endif
	}
	//*********************************************************
	void DelayOff_Initialization()
	{
		#ifdef use_1KEY
			DlyOff_Initialization(1);
		#endif

		#ifdef use_2KEY
			DlyOff_Initialization(2);
		#endif

		#ifdef use_3KEY
			DlyOff_Initialization(3);
		#endif
	}	
	//*********************************************************
	void DelayOff_Main()
	{
		#ifdef use_1KEY
			DlyOff_Main(1);
		#endif

		#ifdef use_2KEY
			DlyOff_Main(2);
		#endif

		#ifdef use_3KEY
			DlyOff_Main(3);
		#endif
	}
	//*********************************************************
	void DlyOff_Initialization(char sw)
	{
		DelayOffPointSelect(sw);
		DelayOff->Enable=1;
	}
	//*********************************************************
	void DlyOff_Main(char sw)
	{
		DelayOffPointSelect(sw);
		if(DelayOff->GO)
		{
			DelayOff->SecondTime++;
			if(DelayOff->SecondTime >= SecondTimeValue)
			{
				DelayOff->SecondTime=0;
				DelayOff->MinuteTime++;
				if(DelayOff->MinuteTime >= DelayOff->Value)
				{
					DelayOff->MinuteTime=0;
					DelayOff->GO=0;
					setSw_Status(sw,0);
					setRFSW_Status(sw,0);
					setRF_DimmerLights(sw,0);
					setDimmerLights_Trigger(sw,1);
					setDimmerLights_Switch(sw,0);	
					setTxData(1);
					setBuz(1,BuzzerOnOffTime);
				}
			}
		}
	}
	//*********************************************************
	void setDelayOff_GO(char sw,char command,char value)
	{
		DelayOffPointSelect(sw);
		if(DelayOff->Enable)
		{
			DelayOff->GO=command;
			if(command)
			{
				DelayOff->Value=DelayTimejudge(value);
				if(((value%16)==5 || !(value%16)) && value <= 0x25)
				{	
					setProductData(26+sw,value);
				}
				else
				{
					setProductData(26+sw,0x05);
				}
			}
			else if(!command)
			{
				setProductData(sw+26,0);
			}
			DelayOff->SecondTime=0;
			DelayOff->MinuteTime=0;
		}
	}
	//*********************************************************
	char DelayTimejudge(char value)
	{
		char i=5;
		if(value == 0x05)
		{
			i=5;
		}
		else if(value == 0x10)
		{
			i=10;
		}
		else if(value == 0x15)
		{
			i=15;
		}
		else if(value == 0x20)
		{
			i=20;
		}
		else if(value == 0x25)
		{
			i=25;
		}
		else if(value == 0x30)
		{
			i=30;	
		}
		return	i;		
	}

//end file
#endif

// Includes
#include "../Release/Select_File.h"


#if DelayOff_use == 1

	void DelayOffPointSelect(char sw)
	{
		#ifdef Triac1
			if(sw == 1)
			{
				DelayOff=&DlySw1;
			}
		#endif
		#ifdef Triac2
			else if(sw == 2)
			{
				DelayOff=&DlySw2;
			}
		#endif
		#ifdef Triac3
			else if(sw == 3)
			{
				DelayOff=&DlySw3;
			}
		#endif
	}
	//*********************************************************
	void DelayOff_Initialization()
	{
		#ifdef Triac1
			DlyOff_Initialization(1);
		#endif
		#ifdef Triac2
			DlyOff_Initialization(2);
		#endif
		#ifdef Triac3
			DlyOff_Initialization(3);
		#endif
	}	
	//*********************************************************
	void DelayOff_Main()
	{
		#ifdef Triac1
			DlyOff_Main(1);
		#endif
		#ifdef Triac2
			DlyOff_Main(2);
		#endif
		#ifdef Triac3
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
					setBuz(1,1,100);
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
			}
			else if(command == 0)
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
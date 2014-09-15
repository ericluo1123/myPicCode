
// Includes
#include "../Release/Select_File.h"

void RF_Initial()
{
	RF_Initial_Content();
}

void RF_Main()
{
	RF_Main_Content();
}

void RF_RxDisable()
{
	RF_RxDisable_Content();
}

void setTxData()
{
	setTxData_Content();
}


void setRF_Enable(char command)
{
	setRF_Enable_Content();
}

void getRxData()
{
	unsigned char i;
	getRxData_Content();
}

void setRF_DimmerValue(char lights)
{
	setRF_DimmerValue_Content();
}

void setRF_DimmerLights(char lights,char on,char value)
{
	setRF_DimmerLights_Content();
}

char DelayTimejudge(char value)
{
	char i=5;
	DelayTimejudge_Main();
	return	i;		
}
//end
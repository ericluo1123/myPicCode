
// Includes
#include "../Release/Select_File.h"


void setErrLED(char status)
{
	setErrLED_Content();
}

void setLED1(char status)
{
	setLED1_Content();
}

void setLED2(char status)
{
	setLED2_Content();
}

void setLED3(char status)
{
	setLED3_Content();
}

void LED_Initial()
{
	ErrLED_Initial();
	LED1_Initial();
	LED2_Initial();
	LED3_Initial();
}

void LED_Main()
{
	ErrLED_Main();
	LED1_Main();
	LED2_Main();
	LED3_Main();
}
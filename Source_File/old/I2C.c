

/*include*/
#include "../2.Development_V1.0/Development_V1.0.h"

#include "../Header_File/MCU_16F1516.h"
#include "../Header_File/SegmentDisplay.h"
#include "../Header_File/Touch.h"	
#include "../Header_File/I2C.h"
#include "../Header_File/Usart.h"	
	#include <stdio.h>

/*Routine main*/
void I2C_Transmit()
{
	R_nW=1;
	SEN=1;
	if(SSPIF==1)
	{
		SSPIF=1;
//		LED1=1;
	}
	SSPBUF=SSPADD;
}

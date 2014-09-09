
/***Include***/
#include "../2.Development_V1.0/Development_V1.0.h"

#include "../Header_File/MCU_16F1516.h"
#include "../Header_File/SegmentDisplay.h"
#include "../Header_File/Touch.h"	
#include "../Header_File/I2C.h"
#include "../Header_File/Usart.h"	


void putch(unsigned char byte) 
{
	/* output one byte */
	while(!TXIF)	/* set when register is empty */
		continue;
	TXREG = byte;
}

unsigned char getch() {
	/* retrieve one byte */
	while(!RCIF)	/* set when register is not empty */
		continue;
	return RCREG;	
}

unsigned char getche(void)
{
	unsigned char c;
	putch(c = getch());
	return c;
}


/*End file*/

// Includes
#include "../Header_File/PCB_Select.h"

//ISR
void ISR(void) interrupt 0	// ISR (Interrupt Service Routines)
{	
	IOC_ISR();

	TMR0_ISR();
	
	TMR1_ISR();
	
//	TMR2_ISR();

	INT_ISR();

	UART_ISR();

}
//UART
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

//flash memry control
void Flash_Memory_Initial()
{
	char i;
	Flash_Memory_Initial_Main();
}
void Flash_Memory_Unlock()
{
	Flash_Memory_Unlock_Main();
}
char Flash_Memory_Read(char address)
{
	char ret=0;
	char i;
	Flash_Memory_Read_Main();
	return ret;
}
void Flash_Memory_Write()
{
	char i;
	Flash_Memory_Write_Main();
}
void Flash_Memory_Erasing()
{
	Flash_Memory_Erasing_Main();
}
void Flash_Memory_WriteData_Modity()
{
	char i;
	Flash_Memory_WriteData_Modity_Main();
}
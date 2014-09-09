//=============================================================================
// Global Constants
//=============================================================================
#define Buzzer_OnTime			10
#define Buzzer_OffTime			10
#define LED_FlashTime	 		10
#define	SYSC_TimeValue			16	
#define OverLoad_TimeValue		3000

//=============================================================================
//  Include File
//=============================================================================
#include "pic.h"
#include "pic16f1516.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "usart.h"
#include "CC2500_rx4.h"
#include "CC2500_tx4.h"
//=============================================================================
// Global Variables
//=============================================================================
//Delay
//bit DelayON;
//unsigned char SYSC_Time;

unsigned char SPI0Buffer;
unsigned char r_data;
unsigned char s_data;
unsigned char r_address;
unsigned char Rx_Data[23];
unsigned char Tx_Data[21];
unsigned char RSSI;
unsigned char CRC;
bit Receive_OK=0;
//=============================================================================
// Function Routine
//=============================================================================
// CC2500 Function
void CC2500_PowerOnInitial(void);
void CC2500_PowerRST(void);
void CC2500_InitSetREG(void);
void CC2500_InitPATable(void);
void CC2500_ClearTXFIFO(void);
void CC2500_ClearRXFIFO(void);
void CC2500_FrequencyCabr(void);
void CC2500_SIDLEMode(void);
void CC2500_WriteByte(void);
void CC2500_WriteREG(unsigned char addr, unsigned char value);
void CC2500_ReadByte(void);
void CC2500_ReadREG(unsigned char addr);
void CC2500_ReadStatus(unsigned char s_addr);
void CC2500_WriteCommand(unsigned char command);
void CC2500_TxData(unsigned char PackID);
CC2500_RxData(void);

// Delay Time
void DelayTime_1us(int count);

//Loong Yee ©Ô¿Y
void Title();
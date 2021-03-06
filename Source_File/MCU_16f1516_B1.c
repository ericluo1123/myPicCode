

// Includes
#include "../Release/Select_File.h"

//config
 __CONFIG(FOSC_INTOSC & WDTE_OFF);// v8.84
 __CONFIG(VCAPEN_OFF &  WRT_BOOT);// WRT_OFF 

//*********************************************************
void Mcu_Initial()
{
	//Fosc
	Fosc_Set();
	//I/O
	IO_Set();
	//Timer0
	TMR0_Set();
	//Timmer1
	TMR1_Set();
	//ADC
	ADC_Set();
	//Timmer2
	//TMR2_Set();
	//INT
	INT_Set();
	//IOC
	IOC_Set();
	//I2C	
	I2C_Set();
	//UART	
	UART_Set();
	//Flash_Memory
	Flash_Memory_Set();
}
//*********************************************************
void IO_Set()
{
	TRISA=_TRISA;
 	TRISB=_TRISB;
 	TRISC=_TRISC;
	LATA=_LATA;
	LATB=_LATB;
	LATC=_LATC;
	ANSELA=_ANSELA;
 	ANSELB=_ANSELB;
	ANSELC=_ANSELC;
	PORTA=_PORTA;
	PORTB=_PORTB;
	PORTC=_PORTC;
}

//*********************************************************

//ISR
void ISR(void) interrupt 0	// ISR (Interrupt Service Routines)
{	
	IOC_ISR();
	
	TMR0_ISR();
		
	TMR1_ISR();
		
//	TMR2_ISR();
	
	INT_ISR();
	
	UART_ISR();	

	I2C_ISR();
}
//*********************************************************
#if Timer0_use == 1

	void TMR0_Set()
	{
		Timer0=&VarTimer0;
		Timer0->DimmerCountValue=158;
		OPTION_REG=OPTION_REG_Value;
		TMR0=TMR0_Value;
		TMR0IE=1;
		GIE=1;
	}
	//*********************************************************
	void TMR0_ISR()
	{
		if(TMR0IE && TMR0IF)
		{
			TMR0=TMR0_Value;
			TMR0IF=0;

			Dimmer_Main();
			Timer0->Count++;
			if(Timer0->Count == TMR0_1ms)//1ms
			{
				Timer0->Count=0;
				TMain->T0_Timerout=1;
			}
		}
	}
	//*********************************************************
   	void setDimmerReClock()
	{
		TMR0=255;
		Dimmer_Detect();
	}

#endif
//*********************************************************


//*********************************************************
#if Timer1_use == 1

	void TMR1_Set()
	{
		Timer1=&VarTimer1;
		T1CON=(_CS | _CKPS | 0x01);
		TMR1H=TMR1H_Value;
		TMR1L=TMR1L_Value;
		TMR1IE=1;
		PEIE=1;
		GIE=1;
	}
	//*********************************************************
	void TMR1_ISR()
	{
		if(TMR1IE && TMR1IF)
		{
			TMR1H=TMR1H_Value;
			TMR1L=TMR1L_Value;
			TMR1IF=0;
			Timer1->Count++;
			if(Timer1->Count == TMR1_1ms)
			{
				Timer1->Count=0;
				TMain->T1_Timerout=1;
			}
		}
	}

#endif
//*********************************************************


//*********************************************************
#if INT_use == 1

	void INT_Set()
	{
		WPUB0=0;
		//INTE=1;
		PEIE=1;
		GIE=1;
	}
	//*********************************************************
	void INT_ISR()
	{
		if(INTE && INTF)
		{
			INTF=0;
			INTE=0;
			setRF_ReceiveGO(1,1);
		}
	}
	//*********************************************************
	void setINT_GO(char command)
	{
		INTF=0;
		INTE=command;
	}
#endif
//*********************************************************

//*********************************************************
#if IOC_use == 1

	void IOC_Set()
	{
		WPUB2=0;
		IOCBP=0b00000100;
		IOCBN=0b00000100;
		IOCBF=0b00000000;
		IOCIE=1;
		IOCIF=0;
		GIE=1;
	}
	//*********************************************************
	void IOC_ISR()
	{
		if(IOCIE && IOCIF && IOCBF2)
		{
			IOCBF2=0;
			IOCIF=0;
			if(TMain->PowerON == 1)
			{
				setDimmerReClock();
			}
		}
	}

#endif
//*********************************************************

//*********************************************************
#if ADC_use == 1

	void ADC_Set()
	{
		ADCON1=_ADCON1;
		FVRCON=_FVRCON;
	}
	//*********************************************************
	ADtype getAD(char adcon0,char adcon1)
	{
		ADCON0=adcon0;
		ADCON1=adcon1;	
		ADGO=1;
		while(ADGO);
		return ADC_ADRES;
	}
	//*********************************************************
	void setADCGO()
	{
		ADGO=1;
		while(ADGO);
	}
#endif
//*********************************************************

//*********************************************************
#if I2C_use == 1

	void I2C_Set()
	{
		I2C=&VarI2C;
		#if Master_Mode == 1
			SSPADD = 0x09;		// Configure I2C for 100kHz operation
			SSPSTAT = 0x80;		// Disable slew rate control and SMBus specific inputs
			SSPCON2 = 0;		// Disable general call address
		//	SSPCON1 = 0x28;		// Enable serial port and I2C Master Mode	
			SSPCON1=0b101000;//Enable serial port,I2C Master mode, clock = FOSC / (4 * (SSPADD+1))(4)
		#endif

		#if Slave_Mode == 1
			SSPADD=0x10;
		//	SSPOV=1;
			SSPSTAT = 0x80;		// Disable slew rate control and disable SMBus specific inputs
			SSPCON2 = 0x80;		// Enable general call address and disable clock stretching
			SSPCON1=0b100110; 	//Enable serial port,I2C Slave mode, 7-bit address
	
			SEN=1;
			AHEN=0;
			DHEN=0;
			SSPIE=1;
			PEIE=1;
			GIE=1;
		#endif
	}
	//*********************************************************
	void I2C_ISR()
	{
		if(SSPIE && SSPIF)
		{
			SSPIE=0;
			I2C->SlaveGO=1;

		//	I2C_Slave_Mode();
		//	while(!SSPIE)
		//		SSPIE=1;
		//	SS1=0;
		//	I2C->SS=0;
		}
	}
	//*********************************************************
	void I2C_Main()
	{
		char i;
		#if Slave_Mode == 1
			if(I2C->SlaveGO)
			{		
				I2C->SlaveGO=0;
				I2C_Slave_Mode();
				SSPIE=1;
	
				if(I2C->SlaveTxGO)
				{
					I2C->SlaveTxGO=0;
					SS1=0;
					I2C->SS=0;
				}
				if(I2C->SlaveRxGO)
				{
					I2C->SlaveRxGO=0;
					I2C_SetData(0);
				}
				LED2=~LED2;
			}
		#endif

		#if Master_Mode == 1

			if(I2C->MasterRxGO)
			{
				I2C->MasterRxGO=0;
				I2C_Master_Reception();
				TMain->Test=1;
				LED2=~LED2;
				#if UART_use == 1
					for(i=0;i<32;i++)
					{
						UART->TxData[i]=I2C->BufferReader[i];		
					}
					UART->TxGO=1;	
				#endif
			}
			else
			{
				if(SS1)
				{
					if(!I2C->SS)
					{
						I2C->SS=1;
						I2C->MasterRxGO=1;
					}
				}
				else
				{
					if(I2C->SS)
					{
						I2C->SS=0;
					}
					if(I2C->MasterTxGO)
					{
						I2C->MasterTxGO=0;
						I2C_Master_Transmission();
					}	
				}
			}

		#endif
	}
	void I2C_SetData(char command)
	{
		#if CC2500_use == 1
			char i;
			if(command)
			{
				if(!I2C->SS)
				{
					I2C->SS=1;
					for(i=0 ;i< 21 ;i++)
					{
						I2C->BufferWriter[i]=RF_Data[i];
					}	
					I2C->BufferWriter[21]=Tx_Length;
					I2C->BufferWriter[22]=RSSI;
					I2C->BufferWriter[23]=CRC;
					SS1=1;
				}
			}
			else
			{
				for(i=0;i<21;i++)
				{
					RF_Data[i]=I2C->BufferReader[i];
				}
				#if CC2500_use == 1
					RF->TransceiveGO=1;
				#endif
			}
		#endif

	}
	//*********************************************************
	void I2C_Master_Transmission()
	{
		char i;
		while(SEN);	
		SEN=1;

		while(SEN);
		//while(!SSPIF);
	//	SSPIF=0;	
		SSPBUF=0x10;
		while(BF);
	//	while(!SSPIF);
	//	SSPIF=0;
		while(ACKSTAT);

		for(i=0;i<32;i++)
		{
			while(SEN);	
			SSPBUF=I2C->BufferWriter[i];
			while(BF);	
		//	while(!SSPIF);
		//	SSPIF=0;
			while(ACKSTAT);
		}

		while(SEN);	
		while(!PEN)
			PEN=1;
		while(PEN);
	//	while(!SSPIF);
	//	SSPIF=0;
	}
	//*********************************************************
	void I2C_Master_Reception()
	{
		char i;
		while(SEN);	
		SEN=1;
		while(SEN);
	//	while(!SSPIF);
	//	SSPIF=0;	
		SSPBUF=0x11;
	//	while(!SSPIF);
	//	SSPIF=0;
		while(BF);
		while(ACKSTAT);
	

		for(i=0;i<32;i++)
		{
			while(SEN);	
			while(RCEN);
			RCEN=1;
			while(RCEN);
			I2C->BufferReader[i]=SSPBUF;
			while(!ACKEN)
				ACKEN=1;
			while(ACKEN);
		}
		while(RCEN);
		RCEN=1;
		while(RCEN);
		while(!ACKEN)
			ACKEN=1;
		while(ACKEN);
		while(RCEN);
		RCEN=1;
		while(RCEN);

		while(SEN);	
		while(!PEN)
			PEN=1;
		while(PEN);
	//	while(!SSPIF);
	//	SSPIF=0;	
	}
	//*********************************************************	
	void I2C_Slave_Mode()
	{	
		char i;
		SSPIF=0;
		I2C->Address=SSPBUF;
		
		if(R_nW)//�g to master
		{
			SSPOV=0;
			for(i=0;i<32;i++)
			{
				SSPBUF=I2C->BufferWriter[i];
				//SSPOV=0;
				CKP=1;
				while(!SSPIF);
				SSPIF=0;
				while(ACKSTAT);
			}
			CKP=1;
			//SSPOV=0;
			I2C->SlaveTxGO=1;
		}
		else//Ū from master
		{
			
			CKP=1;
			for(i=0;i<32;i++)
			{
				while(!SSPIF);
				SSPIF=0;
				I2C->BufferReader[i]=SSPBUF;
				//SSPOV=0;
				CKP=1;
			}
			//SSPOV=0;
			CKP=1;
			I2C->SlaveRxGO=1;
		}
		
	//SPIE=1;
	}
#endif
//*********************************************************

//*********************************************************
#if UART_use == 1
	void UART_Set()
	{
		UART=&VarUart;
		RX_PIN = 1;
		TX_PIN = 1;
		SPBRG = DIVIDER;
		SPBRGH = DIVIDER_H;
		BRG16 = BRG_16;
		RCSTA = (NINE_BITS|0x90);
		TXSTA = (SPEED|NINE_BITS|0x20);
		TX9=0;
		RX9=0;
		TXIE=0;
		RCIE=1;
		PEIE=1;
		GIE=1;
	}
	//*********************************************************
	void UART_ISR()
	{
		char i;
		if(RCIE && RCIF)
		{
			while(!RCIDL);
		//	UART->RxData[UART->RxLength]=RCREG;
			UART->RxData[0]=RCREG;
	/*
			UART->RxLength++;
			if(UART->RxLength == 32)
			{
				UART->RxLength=0;
				UART->RxGO=1;
				RCIE=0;	
			}	*/
			LED2=~LED2;
			setSegmentDisplayNumber(UART->RxData[0]);
		}
	}
	void UART_Main()
	{
		if(UART->RxGO)
		{
			UART->RxGO=0;
			UART_Receive();
			RCIE=1;	
			setSegmentDisplayNumber(UART->RxData[0]);
		}
		else
		{
			if(UART->TxGO)
			{
				UART->TxGO=0;
				UART_Transmit();
			}
		} 
	}
	void UART_Transmit()
	{
		char i;

		//UART->TxData[31]='\n';
		for(i=0;i<32;i++)
		{	
		//	printf("%d,",i);
		//	printf("%d,",UART->TxData[i]);	
		//	while(!TRMT);
		//	while(!TXIF)	/* set when register is empty */
		//		continue;
			printf("%d,",i);
		//	TXREG = UART->TxData[i];
		//	TXREG=UART->TxData[i];
		//	printf(",");
		}
		//printf("0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,");
	}
	void UART_Receive()
	{
		char i;
		LED2=~LED2;
		#if UART_Master == 1
			TMain->Test=1;
			#if I2C_use == 1
				for(i=0;i<32;i++)
				{
					I2C->BufferWriter[i]=UART->RxData[i];
				}
				I2C->MasterTxGO=1;
			#endif
		#endif

		#if UART_Slave == 1
			for(i=0;i<21;i++)
			{
				RF_Data[i]=UART->RxData[i];
			}
			#if CC2500_use == 1
				RF->TransceiveGO=1;
			#endif
		#endif

	}
	void UART_SetData()
	{
		char i;
		#if UART_Slave == 1
			for(i=0;i<21;i++)
			{
				UART->TxData[i]=RF_Data[i];
			}
			UART->TxGO=1;
			LED2=~LED2;
		#endif		
	}
	//*********************************************************
	void putch(unsigned char byte) 
	{
		/* output one byte */
		while(!TXIF)	/* set when register is empty */
			continue;
		TXREG = byte;
	}
	//*********************************************************	
	unsigned char getch() {
		/* retrieve one byte */
		while(!RCIF)	/* set when register is not empty */
			continue;
		return RCREG;	
	}
	//*********************************************************	
	unsigned char getche(void)
	{
		unsigned char c;
		putch(c = getch());
		return c;
	}
#endif
//*********************************************************


//*********************************************************
#if FlashMemory_use == 1
	//flash memry control
	void Flash_Memory_Initial()
	{
		char i;
		if(Flash_Memory_Read(31) == 0xaa)
		{
			Product->Data[12]=Flash_Memory_Read(0);
			Product->Data[13]=Flash_Memory_Read(1);
			Product->Data[14]=Flash_Memory_Read(2);
			Product->Data[21]=Flash_Memory_Read(3);
			Product->Data[22]=Flash_Memory_Read(4);
			Product->Data[23]=Flash_Memory_Read(5);
		}
		else
		{
			Product->Data[21]=Dimmer_Maxum;
			Product->Data[22]=Dimmer_Maxum;
			Product->Data[23]=Dimmer_Maxum;
			GIE=0;
			Flash_Memory_Write();
			GIE=1;
		}
	}
	//*********************************************************
	void Flash_Memory_Main()
	{
		if(Memory->GO)
		{
			if(Memory->Modify)
			{
				Memory->Time++;
				if(Memory->Time == 300)//ms
				{
					Memory->Time=0;
					Memory->Modify=0;
					Memory->GO=0;
					Flash_Memory_Modify();
					//ErrLED=~ErrLED;
				}
			}
			else
			{
				Memory->GO=0;
			}
		}
	}
	//*********************************************************
	void Flash_Memory_Unlock()
	{
		PMCON2=0x55;
		PMCON2=0xaa;
		WR=1;
		NOP();
		NOP();
	}
	//*********************************************************
	char Flash_Memory_Read(char address)
	{
		char i,ret=0;
		PMADRH=PMADRH_Value;
		PMADRL=address;
		CFGS=0;
		RD=1;
		i=PMDATH;
		ret=PMDATL;
		return ret;
	}
	//*********************************************************
	void Flash_Memory_Write()
	{
		char i;
		CFGS=0;
		PMADRH=PMADRH_Value;
		PMDATH=0;
		FREE=0;
		LWLO=1;
		WREN=1;
		for(i=0 ; i<32 ; i++)
		{
			PMADRL=i;
			PMDATL=Memory->Data[i];
			Flash_Memory_Unlock();
		}
		LWLO=0;
		Flash_Memory_Unlock();
		WREN=0;
	}
	//*********************************************************
	void Flash_Memory_Erasing()
	{
		CFGS=0;
		PMADRH=PMADRH_Value;
		PMADRL=0x00;
		FREE=1;
		WREN=1;
		Flash_Memory_Unlock();
		WREN=0;
	}
	//*********************************************************
	void Flash_Memory_Modify()
	{	
		char i;
		for(i=0;i<32;i++)
		{
			Memory->Data[i]=Flash_Memory_Read(i);
		}
		setMemoryData(0,Product->Data[12]);
		setMemoryData(1,Product->Data[13]);
		setMemoryData(2,Product->Data[14]);
		setMemoryData(3,Product->Data[21]);
		setMemoryData(4,Product->Data[22]);
		setMemoryData(5,Product->Data[23]);
		GIE=0;
		Flash_Memory_Erasing();
		Flash_Memory_Write();
		GIE=1;
	}
#endif
//*********************************************************




// Includes
#include "../Release/Select_File.h"

#if CC2500_use == 1

	void RfPointSelect(char rf)
	{
		#ifdef RadioFrequency1
			if(rf == 1)
			{
				RF=&RF1;
			}
		#endif	
	}
	//*********************************************************	
	void RF_Initialization()
	{
		#ifdef RadioFrequency1
			setRF_Initialization(1);
		#endif
	}
	//*********************************************************	
	void RF_Main()
	{
		#ifdef RadioFrequency1
			setRF_Main(1);
		#endif
	}
	//*********************************************************	
	void setRF_Learn(char rf,char command)
	{
		RfPointSelect(rf);	
		RF->Learn=command;
	}
	//*********************************************************	
	void setRF_ReceiveGO(char rf,char command)
	{
		RfPointSelect(rf);
		RF->ReceiveGO=command;
	}
	//*********************************************************	
	void setRF_RxStatus(char rf,char command)
	{
		RfPointSelect(rf);
		RF->RxStatus=command;
	}

	//*********************************************************	
	void setRF_Initialization(char rf)
	{
		#ifdef RadioFrequency1
			//RfPointSelect(rf);
			Tx_Length=21;
		#endif
	}
	//*********************************************************	
	void setRF_Main(char rf)
	{
		RfPointSelect(rf);
		if(RF->Enable)
		{
			#if	Switch_Key == 3
				RF->Key=((Key1 || Key2 || Key3) && RF->Learn == 0)?1:0;//有鍵按下
			#endif

			#if	Switch_Key == 2
				RF->Key=((Key1_1 ||  Key1_2 || Key2_1 || Key2_2 ) && RF->Learn == 0)?1:0;//有鍵按下
			#endif

			#if	Switch_Key == 1
				RF->Key=((Key1_1 ||  Key1_2 || Key1_3 || Key1_4) && RF->Learn == 0)?1:0;//有鍵按下	
			#endif

			if(RF->Key)
			{
				RF_RxDisable(1);
			}
			else
			{
				if(RF->ReceiveGO)//有資料接收
				{
					CC2500_RxData();
					RF->ReceiveGO=0;
					getRxData(1);
				//	ErrLED=~ErrLED;
				}
				else
				{
					if(RF->TransceiveGO)//有資料要發射
					{
						RF_RxDisable(1);
						if(RF->Debounce == 0)
						{
							RF->DebounceTime++;
							if(RF->DebounceTime == 50)//*5ms
							{
								RF->DebounceTime=0;
								RF->Debounce=1;
							}
						}
						else
						{
							RF->Debounce=0;
							RF->TransceiveGO=0;
							CC2500_TxData();
						}
					}
					else
					{
						if(RF->RxStatus == 0 && Rx_Enable)//設置為接收模式
						{
							RF->RxStatus=1;
							CC2500_WriteCommand(CC2500_SIDLE);// idle
							CC2500_WriteCommand(CC2500_SRX);// set receive mode	
							setINT_GO(1);
						}
					}
				}
			}
		}
	}
	//*********************************************************	
	void setTxData(char rf)
	{
		RfPointSelect(rf);
		if(RF->Enable)
		{
			if(RF->TransceiveGO == 0 && Tx_Enable)
			{
				RF->TransceiveGO=1;
				RF_Data[0]=Product->Data[0];		//Command
				RF_Data[1]=Product->Data[1];		//Command
				RF_Data[2]=Product->Data[24];		//Temperature
				RF_Data[3]=Product->Data[25];		//Temperature
				RF_Data[4]=Product->Data[4];		//Humidity
				RF_Data[5]=Product->Data[5];		//Humidity 
				RF_Data[6]=Product->Data[6];		//Barometric pressure
				RF_Data[7]=Product->Data[7];		//Barometric pressure
				RF_Data[8]=Product->Data[8];		//Electricity
				RF_Data[9]=Product->Data[9];		//Dimmer
				RF_Data[10]=Product->Data[10];		//Electric  current
				RF_Data[11]=Product->Data[11];		//Year
				RF_Data[12]=Product->Data[12];		//Week 
				RF_Data[13]=Product->Data[13];		//Serial  Number
				RF_Data[14]=Product->Data[14];		//Serial  Number
				RF_Data[15]=Product->Data[15];		//Lights Status
				RF_Data[16]=Product->Data[16];		//Timmer Command
				RF_Data[17]=Product->Data[17];		//Timmer Time
				RF_Data[18]=Product->Data[18];		//Reserved
				RF_Data[19]=Product->Data[19];		//Reserved
				RF_Data[20]=Product->Data[20];		//Key ID
			}
		}
	}
	//*********************************************************	
	void getRxData(char rf)
	{
		unsigned char i;
		RfPointSelect(rf);
		if(RF->Learn)
		{
			if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64)				//login command	
			{
				setLog_Code(1);
			}
		}
		else
		{
			if(RF_Data[0] == 0x00 && RF_Data[1] == 0x02)			//lights control command
			{	
				if(RF_Data[12] == 0xff && RF_Data[13] == 0xff && RF_Data[14] == 0xff)
				{
					NOP();
				}
				else
				{
					if(RF_Data[12] == Product->Data[12] && RF_Data[13] == Product->Data[13] && RF_Data[14] == Product->Data[14])
					{
						setControl_Lights_Table(1);
					}
				}
			}
			else if(RF_Data[0] == 0x63 && RF_Data[1] == 0x02)		//return command
			{
				;
			}
			else if(RF_Data[0] == 0xff && RF_Data[1] == 0x02)		//Broadcasting command	
			{
				;
			}
			else if(RF_Data[0] == 0x0 && RF_Data[1] == 0x65)		//overload command	
			{
				;
			}
		}
	}
	//*********************************************************
	void setLog_Code(char rf)
	{
		RfPointSelect(rf);
		setProductData(12,RF_Data[12]);
		setProductData(13,RF_Data[13]);
		setProductData(14,RF_Data[14]);
		setBuz(1,1,100);	
		RF->Learn=0;
		if(TMain->First)
		{
			setMemory_LoopSave(1);
		}
		setMemory_Modify(1);
	}
	//*********************************************************
	void setControl_Lights_Table(char rf)
	{	
		RfPointSelect(rf);
		if(RF_Data[15] == 0x00)
		{
			#ifdef Triac1
				setDimmerLights(1,0);
				setRFSW_Status(1,0);
				setSw_Status(1,0);
			#endif
			#ifdef Triac2
				setDimmerLights(2,0);
				setRFSW_Status(2,0);
				setSw_Status(2,0);
			#endif
			#ifdef Triac3
				setDimmerLights(3,0);
				setRFSW_Status(3,0);
				setSw_Status(3,0);
			#endif

			setProductData(9,0);
			setProductData(11,0);
			setProductData(15,0);
			setProductData(17,0);
			setBuz(1,1,100);
			setTxData(1);
		}
		else if(RF_Data[15] == 0x20)
		{
			setProductData(9,0);
			setProductData(11,0);//Lights Status
			setProductData(17,0);
			setTxData(1);
		}
		#ifdef Triac1
			else if(RF_Data[15] == 0x01)
			{
				setRFSW_Control(1);
			}
			#if Dimmable_Func == 1
				else if(RF_Data[15] == 0x11)
				{
					setRFSW_AdjControl(1);
				}
			#endif
		#endif
		#ifdef Triac2
			else if(RF_Data[15] == 0x02)
			{
				setRFSW_Control(2);
			}
			#if Dimmable_Func == 1
				else if(RF_Data[15] == 0x21)
				{
					setRFSW_AdjControl(2);
				}
			#endif
		#endif
		#ifdef Triac3
			else if(RF_Data[15] == 0x03)
			{
				setRFSW_Control(3);
			}
			#if Dimmable_Func == 1
				else if(RF_Data[15] == 0x31)
				{
					setRFSW_AdjControl(3);
				}
			#endif
		#endif
	}
	//*********************************************************
	void setRF_Enable(char rf,char command)
	{
		RfPointSelect(rf);
		if(command)
		{
			RF->Enable=1;
		}
		else
		{
			RF->Enable=0;
			RF->Learn=0;
			Transceive_GO=0;
			CC2500_WriteCommand(CC2500_SIDLE);// idle
			CC2500_WriteCommand(CC2500_SFTX);// clear TXFIFO data	
			RF_RxDisable(1);
		}
	}
	//*********************************************************
	void RF_RxDisable(char rf)
	{
		RfPointSelect(rf);
		if(RF->RxStatus || RF->ReceiveGO)
		{
			RF->RxStatus=0;
			RF->ReceiveGO=0;
			RF->DebounceTime=0;
			RF->Debounce=0;
			CC2500_WriteCommand(CC2500_SIDLE);// idle
			CC2500_WriteCommand(CC2500_SFRX);// clear RXFIFO data
			setINT_GO(0);
		}
	}
	//*********************************************************
	void RfSWPointSelect(char sw)
	{
		#ifdef Triac1
			if(sw == 1)
			{
				RFSW=&RFSW1;
			}
		#endif	
		#ifdef Triac2
			if(sw == 2)
			{
				RFSW=&RFSW2;
			}
		#endif
		#ifdef Triac3
			if(sw == 3)
			{
				RFSW=&RFSW3;
			}
		#endif
	}
	//*********************************************************
	void setRFSW_Control(char sw)
	{
		RfSWPointSelect(sw);
		if(RF_Data[16] == 0x80)
		{
			setDelayOff_GO(sw,1,RF_Data[17]);
			setProductData(26+sw,RF_Data[17]);
		}
		if(RFSW->Status == 0)
		{
			RFSW->Status=1;
			setSw_Status(sw,1);

			setRF_DimmerLights(sw,1);
			setDimmerLights_Trigger(sw,1);
			setDimmerLights_Switch(sw,RFSW->Status);
		}
		else
		{
			if(RF_Data[16] == 0x80)
			{
				setRF_DimmerLights(sw,1);
			}
			else
			{
				RFSW->Status=0;
				setDelayOff_GO(sw,0,0);
				setSw_Status(sw,0);
				setRF_DimmerLights(sw,0);
				setDimmerLights_Trigger(sw,1);
				setDimmerLights_Switch(sw,RFSW->Status);
			}
		}
		setBuz(1,1,100);
		setTxData(1);
	}
	//*********************************************************
	void setRFSW_AdjControl(char sw)
	{
		RfSWPointSelect(sw);
		if(RFSW->Status)
		{
			setMemory_Modify(1);
			setRF_DimmerValue(sw);
		}
		else
		{
			setProductData(9,Product->Data[20+sw]);
		}
		setProductData(17,Product->Data[26+sw]);
		setTxData(1);
	}
	//*********************************************************
	void setRFSW_Status(char sw,char command)
	{
		RfSWPointSelect(sw);
		RFSW->Status=command;
	}
	//*********************************************************
	#if Dimmer_use == 1

		void setRF_DimmerValue(char lights)
		{
			if(RF_Data[9] > 0x64)
			{
				RF_Data[9]=0x64;
			}
			setProductData(9,RF_Data[9]);
			setProductData(11,lights);
			setProductData((20+lights),Product->Data[9]);
			setDimmerLights_AdjRF(lights);
		}
		//*********************************************************	
		void setRF_DimmerLights(char lights,char on)
		{
			char status;
			status=1;
			status<<=(lights-1);
			setProductData(11,lights);
			setProductData(9,Product->Data[20+lights]);
			setProductData(17,Product->Data[26+lights]);
			if(on)
			{
				setProductData(15,(Product->Data[15]|status));//Lights Status
			}
			else
			{
				setProductData(15,(Product->Data[15]&(~status)));//Lights Status
			}
		}
		//*********************************************************		
	#endif

//end
#endif
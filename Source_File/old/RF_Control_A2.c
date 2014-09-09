
// Includes
#include "../Release/Select_File.h"

#if CC2500_use == 1

	void RF_Initial()
	{
		RF=&VarRF;
		Tx_Length=21;
		RFsw1_Initial();
		RFsw2_Initial();
		RFsw3_Initial();
	}
	//*********************************************************	
	void RF_Main()
	{
		if(RF->Enable)
		{
			#ifdef _Switch_3Key_Dimmer_V3.1.0_H_ || _Switch_3Key_Dimmer_V3.1.1_H_
				if((Key1 || Key2 || Key3) && RF->Learn == 0)//有鍵按下
			#endif

			#ifdef _Switch_2Key_Dimmer_V2.1.0_H_
				if((Key1_1 ||  Key1_2 || Key2_1 || Key2_2 ) && RF->Learn == 0)//有鍵按下
			#endif

			#ifdef _Switch_1Key_Dimmer_V1.1.0_H_
				if((Key1_1 ||  Key1_2 || Key1_3 || Key1_4) && RF->Learn == 0)//有鍵按下	
			#endif
			{
				RF_RxDisable();
			}
			else
			{
				if(RF->ReceiveGO)//有資料接收
				{
					CC2500_RxData();
					RF->ReceiveGO=0;
					getRxData();
				//	ErrLED=~ErrLED;
				}
				else
				{
					if(RF->TransceiveGO)//有資料要發射
					{
						RF_RxDisable();
						if(RF->Debounce == 0)
						{
							RF->DebounceTime++;
							if(RF->DebounceTime == 250)//ms
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
	void setTxData()
	{
		if(RF->Enable)
		{
			if(RF->TransceiveGO == 0 && Tx_Enable)
			{
				RF->TransceiveGO=1;
				setRF_Data(0,Product->Data[0]);			//Command
				setRF_Data(1,Product->Data[1]);			//Command
				setRF_Data(2,Product->Data[24]);			//Temperature
				setRF_Data(3,Product->Data[25]);			//Temperature
				setRF_Data(4,Product->Data[4]);			//Humidity
				setRF_Data(5,Product->Data[5]);			//Humidity 
				setRF_Data(6,Product->Data[6]);			//Barometric pressure 
				setRF_Data(7,Product->Data[7]);			//Barometric pressure 
				setRF_Data(8,Product->Data[8]);			//Electricity
				setRF_Data(9,Product->Data[9]);			//Dimmer
				setRF_Data(10,Product->Data[10]);		//Electric  current 
				setRF_Data(11,Product->Data[11]);		//Year
				setRF_Data(12,Product->Data[12]);		//Week 
				setRF_Data(13,Product->Data[13]);		//Serial  Number
				setRF_Data(14,Product->Data[14]);		//Serial  Number
				setRF_Data(15,Product->Data[15]);		//Lights Status
				setRF_Data(16,Product->Data[16]);		//Timmer Command
				setRF_Data(17,Product->Data[17]);		//Timmer Time
				setRF_Data(18,Product->Data[18]);		//Reserved
				setRF_Data(19,Product->Data[19]);		//Reserved
				setRF_Data(20,Product->Data[20]);		//Key ID
			}
		}
	}
	//*********************************************************	
	void getRxData()
	{
		unsigned char i;
		if(RF->Learn)
		{
			if(RF_Data[0] == 0x0 && RF_Data[1] == 0x64)				//login command	
			{
				Log_Code();
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
						Control_Lights_Table();
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
	void Log_Code()
	{
		setProductData(12,RF_Data[12]);
		setProductData(13,RF_Data[13]);
		setProductData(14,RF_Data[14]);
		setBuz(1,1,100);	
		RF->Learn=0;
		if(TMain->FirstOpen)
		{
			setMemory_LoopSave(1);
		}
		setMemory_Modify(1);
	}
	//*********************************************************
	void Control_Lights_Table()
	{	
		if(RF_Data[15] == 0x00)
		{
			setDimmerLights1(0);
			setDimmerLights2(0);
			setDimmerLights3(0);
			setRFsw1_Status(0);
			setRFsw2_Status(0);
			setRFsw3_Status(0);
			setSw_Status(1,0);
			setSw_Status(2,0);
			setSw_Status(3,0);
			setProductData(9,0);
			setProductData(11,0);
			setProductData(15,0);
			setProductData(17,0);
			setBuz(1,1,100);
			setTxData();
		}
		else if(RF_Data[15] == 0x20)
		{
			setProductData(9,0);
			setProductData(11,0);//Lights Status
			setProductData(17,0);
			setTxData();
		}
		else if(RF_Data[15] == 0x01)
		{
			RFsw1_Control();
		}
		else if(RF_Data[15] == 0x11)
		{
			RFsw1_AdjControl();
		}
		else if(RF_Data[15] == 0x02)
		{
			RFsw2_Control();
		}
		else if(RF_Data[15] == 0x21)
		{
			RFsw2_AdjControl();
		}
		else if(RF_Data[15] == 0x03)
		{
			RFsw3_Control();
		}
		else if(RF_Data[15] == 0x31)
		{
			RFsw3_AdjControl();
		}
	}
	//*********************************************************
	#ifdef Triac1 

		void RFsw1_Control()
		{
			if(RF_Data[16] == 0x80)
			{
				setDelayOff_GO(1,1,RF_Data[17]);
				setProductData(27,RF_Data[17]);
			}
			if(RFsw1->Status == 0)
			{
				RFsw1->Status=1;
				setSw_Status(1,1);
				setDimmerLights1_Trigger(1);
				setDimmerLights1_Switch(1);
				setBuz(1,1,100);
				setRF_DimmerLights(1,1);
				setTxData();
			}
			else
			{
				if(RF_Data[16] == 0x80)
				{
					setRF_DimmerLights(1,1);
				}
				else
				{
					setDelayOff_GO(1,0,0);
					RFsw1->Status=0;
					setSw_Status(1,0);
					setDimmerLights1_Trigger(1);
					setDimmerLights1_Switch(0);
					setRF_DimmerLights(1,0);	
				}
				setBuz(1,1,100);
				setTxData();
			}
		}
		//*********************************************************
		void RFsw1_AdjControl()
		{
			if(RFsw1->Status)
			{
				setMemory_Modify(1);
				setRF_DimmerValue(1);
			}
			else
			{
				setProductData(9,Product->Data[21]);
			}
			setProductData(17,Product->Data[27]);
			setTxData();
		}
	#endif
	//*********************************************************
	#ifdef Triac2 

		void RFsw2_Control() 
		{
			if(RF_Data[16] == 0x80)
			{
				setDelayOff_GO(2,1,RF_Data[17]);
				setProductData(28,RF_Data[17]);
			}
			if(RFsw2->Status == 0)
			{
				RFsw2->Status=1;
				setSw_Status(2,1);
				setDimmerLights2_Trigger(1);
				setDimmerLights2_Switch(1);
				setBuz(1,1,100);
				setRF_DimmerLights(2,1);
				setTxData();
			}
			else
			{
				if(RF_Data[16] == 0x80)
				{
					setRF_DimmerLights(2,1);
				}
				else
				{
					setDelayOff_GO(2,0,0);
					RFsw2->Status=0;
					setSw_Status(2,0);
					setDimmerLights2_Trigger(1);
					setDimmerLights2_Switch(0);
					setRF_DimmerLights(2,0);
				}
				setBuz(1,1,100);
				setTxData();
			}
		}
		//*********************************************************
		void RFsw2_AdjControl()
		{
			if(RFsw2->Status)
			{
				setMemory_Modify(1);
				setRF_DimmerValue(2);
			}
			else
			{
				setProductData(9,Product->Data[22]);	
			}
			setProductData(17,Product->Data[28]);
			setTxData();
		}
	#endif
	//*********************************************************	
	#ifdef Triac3

		void RFsw3_Control()
		{
			if(RF_Data[16] == 0x80)
			{
				setDelayOff_GO(3,1,RF_Data[17]);
				setProductData(29,RF_Data[17]);
			}
			if(RFsw3->Status == 0)
			{
				RFsw3->Status=1;
				setSw_Status(3,1);
				setDimmerLights3_Trigger(1);
				setDimmerLights3_Switch(1);
				setBuz(1,100);
				setRF_DimmerLights(3,1);
				setTxData();
			}
			else
			{
				if(RF_Data[16] == 0x80)
				{
					setRF_DimmerLights(3,1);
				}
				else 
				{
					setDelayOff_GO(3,0,0);
					RFsw3->Status=0;
					setSw_Status(3,0);
					setDimmerLights3_Trigger(1);
					setDimmerLights3_Switch(0);
				}
				setBuz(1,100);
				setTxData();
			}
		}
		//*********************************************************
		void RFsw3_AdjControl()  
		{
			if(RFsw3->Status)
			{
				setMemory_Modify(1);
				setRF_DimmerValue(3);
			}
			else
			{
				setProductData(9,Product->Data[23]);
			}
			setProductData(17,Product->Data[29]);
			setTxData();
		}
	#endif
	//*********************************************************
	void setRF_Enable(char command)
	{
		if(command == 1)
		{
			RF->Enable=1;
		}
		else if(command == 0)
		{
			RF->Enable=0;
			RF->Learn=0;
			Transceive_GO=0;
			CC2500_WriteCommand(CC2500_SIDLE);// idle
			CC2500_WriteCommand(CC2500_SFTX);// clear TXFIFO data	
			RF_RxDisable();
		}
	}
	//*********************************************************
	void RF_RxDisable()
	{
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
	#if Dimmer_use == 1

		void setRF_DimmerValue(char lights)
		{
			if(RF_Data[9] > 0x64)
			{
				RF_Data[9]=0x64;
			}
			setProductData(9,RF_Data[9]);
			setProductData(11,lights);
			if(lights == 1)
			{
				DimmerLights1_AdjRF();
			}
			else if(lights == 2)
			{
				DimmerLights2_AdjRF();
			}
			else if(lights == 3)
			{
				DimmerLights3_AdjRF();
			}
		}
		//*********************************************************	
		void setRF_DimmerLights(char lights,char on)
		{
			setProductData(11,lights);
			#ifdef Triac1
				if(lights == 1)
				{
					setProductData(9,Product->Data[21]);
					setProductData(17,Product->Data[27]);
					if(on == 1)
					{
						setProductData(15,(Product->Data[15]|0x01));//Lights Status
					}
					else if(on == 0)
					{
						setProductData(15,(Product->Data[15]&0xfe));//Lights Status
					}
				}
			#endif
			#ifdef Triac2
				else if(lights == 2)
				{
					setProductData(9,Product->Data[22]);
					setProductData(17,Product->Data[28]);
					if(on == 1)
					{
						setProductData(15,(Product->Data[15]|0x02));//Lights Status
					}
					else if(on == 0)
					{
						setProductData(15,(Product->Data[15]&0xfd));//Lights Status
					}
				}			
			#endif
			#ifdef Triac3
				else if(lights == 3)
				{
					setProductData(9,Product->Data[23]);
					setProductData(17,Product->Data[29]);
					if(on == 1)
					{
						setProductData(15,(Product->Data[15]|0x04));//Lights Status
					}
					else if(on == 0)
					{
						setProductData(15,(Product->Data[15]&0xfb));//Lights Status
					}
				}	
			#endif
		}
		//*********************************************************		
	#endif

//end
#endif
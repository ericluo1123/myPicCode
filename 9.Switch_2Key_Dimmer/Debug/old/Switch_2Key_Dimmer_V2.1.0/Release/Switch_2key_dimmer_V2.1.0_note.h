Project Name:	2key_dimmer_V2.1.0

PCB Name:		TH-302PV11-1_Dim(20140722)

Series:			2
Version: 		1
Serial_Number: 	0

Target Devcies: PIC16f1518
Release Data:	?

Description:
/*
二迴路可調光開關
*/


function:
/*
*如何知道是調光的key id D1
						D2
						D3

#RF	& app
	1.控燈		
		接收開燈指令碼 			pass
		發射開燈後回碼 			pass

		接收關燈指令碼 			pass
		發射關燈後回碼 			pass

		接收全關指令碼			pass
		發射全關後回碼 			pass	

	2.調光
		接收調光指令碼 			pass
		發射調光後回碼 			pass
		*開燈時才接受調光		pass
		*百分比轉換				pass

	3.定時
		接收定時指令碼 			pass
		發射定時後回碼			pass
		*開關燈後取消定時
		*調光是否取消定時?

	4.燒錄
		接收燒錄指令碼 			pass
		第一次燒錄後取消2聲警示	pass

	5.詢問碼
		回傳現在燈狀態 			pass
		不帶控燈碼，調光碼		pass
		

#delayoff
	5  minute off pass
	10 minute off pass
	15 minute off pass
	20 minute off pass
	25 minute off pass
	30 minute off pass

#touch switch 		
	touch sw1 on/off control pass
	touch sw2 on/off control pass	
	touch sw3 on/off control pass		

#buzzer		
	one sound 100ms pass
	three souch 50ms pass
	five souch 300ms pass
	ten souch 300ms pass
	

#dimmer	
	 //range 20%~75%
	 //bule LED trigger time 1
	 //dimming time 3
	
	on/off control pass

#led
 //ErrLED flash time 500ms

	LED1 control 	pass
	LED2 control 	pass
	LED3 control 	pass
	ErrLED control 	pass

	

#overload 	pass
	*依各迴路過載時觸發				
	*觸發
		1.disable RF,Switch
		2.閃爍error led
		3.蜂嗚器5聲
	*回復機制
		1.10秒後enable RF,Switch
		2.停止閃爍 led
		

#overtemp 	fail
	*開燈後開始偵測
	*儲存負載
	*每次偵測16ms
	*溫度到達75度時觸發
	*觸發
		1.disable RF,Switch
		2.閃爍error led
		3.蜂嗚器10聲

	*回復機制
		1.溫度降至60度enable RF,Switch
		2.停止閃爍 led


#flashmemory
	loop code save 				pass
	Loop coode buzzer cancel  	pass
	dimmer percent save 		pass
*/
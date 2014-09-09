Project Name:	3key_dimmer_V3.1.2


PCB Name:		TH-302V09-3P(20140408)

Series:			3
Version: 		1
Serial_Number: 	2

Target Devcies: PIC16f1518
Release Data:	?

Description:
/*
*三迴路可調光開關
*
*1.mcu改換為pic16f1518
*2.調光值有儲存
*3.斷電後再開有檢測功能
*
*/


function:
/*
*如何知道是調光的key id
*有延遲時間的回碼
#App



#RF	
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
		*開燈時才接受調光
		*百分比轉換尚未完成		

	3.定時
		接收定時指令碼 			pass
		發射定時後回碼			pass
		*開關燈後取消定時
		*調光是否取消定時?

	4.燒錄
		接收燒錄指令碼 			pass

	5.詢問碼
		回傳現在狀態 			pass
		狀態1:燈?
		狀態2:?
	
	6.overtermperature 回碼暫無
		reserve
	7.overload 回碼暫無
		reserve
	8.Powerfault回碼暫無
		reserve



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
		

#overtemp 	pass
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


#PowerFault pass
	觸發條件:
			每6秒檢查1次，連續2次基準電壓超過正負0.3V即觸發
	回覆機制:
			電壓回復稱定每6秒檢查1次，連續2次


#flashmemory
	loop code save 			pass
	dimmer percent save 	pass	
*/
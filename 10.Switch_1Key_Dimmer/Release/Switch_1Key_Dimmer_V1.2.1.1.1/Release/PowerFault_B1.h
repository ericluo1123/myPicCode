
#ifndef PowerFault_H_
#define PowerFault_H_

	#if PowerFault_use == 1

		struct PF
		{	
			unsigned Enable:1;
			unsigned ERROR:1;
			unsigned Safe:1;
			unsigned ADtoGO:1;
			unsigned ADtype AD;
			unsigned ADtype ADRES;
			unsigned char Count;
			unsigned int Time;
		};
		struct PF *PF;

		#ifdef PFV1
			struct PF PF1;
		#endif
		

	//	void PowerFaultPointSelect(char);
		void PowerFault_Initialization();
		void PowerFault_Main();
		void getPowerFault_AD(char);
		void setPowerFault_Initialization();
		void setPowerFault_Main();
		void setPowerFault_Exceptions(char);
		void setPF_Enable(char);
		char getPF_Safe();
		char getPF_ERROR();
	#else
		#define getPF_Safe() 1
		#define getPF_ERROR() 0
//		#define PowerFaultPointSelect(char) ;
		#define PowerFault_Initialization() ;
		#define PowerFault_Main() ;
		#define getPowerFault_AD(char) ;
		#define setPowerFault_Initialization() ;
		#define setPowerFault_Main() ;
		#define setPowerFault_Exceptions(char) ;
		#define setPF_Enable(char) ;

	#endif

#endif
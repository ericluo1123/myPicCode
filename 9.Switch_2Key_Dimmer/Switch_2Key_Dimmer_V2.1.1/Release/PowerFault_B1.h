
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
		

		void PowerFaultPointSelect(char);
		void PowerFault_Initialization();
		void PowerFault_Main();
		void getPowerFault_AD(char,char);
		void setPowerFault_Initialization(char);
		void setPowerFault_Main(char);
		void setPowerFault_ERROR(char,char);
		void setPF_Enable(char,char);
		char getPF_Safe(char);
		char getPF_ERROR(char);
	#else
		#define getPF_Safe(char) 1
		#define getPF_ERROR(char) 0
		#define PowerFaultPointSelect(char) ;
		#define PowerFault_Initialization() ;
		#define PowerFault_Main() ;
		#define getPowerFault_AD(char,char) ;
		#define setPowerFault_Initialization(char) ;
		#define setPowerFault_Main(char) ;
		#define setPowerFault_ERROR(char,char) ;
		#define setPF_Enable(char,char) ;

	#endif

#endif
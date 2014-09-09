
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
		struct PF VarPF;
		
		#define setPF_Enable(command) PF->Enable=command
		#define getPF_Safe() PF->Safe

		void PowerFault_Initial();
		void PowerFault_getAD();
		void PowerFault_Main();
		void PowerFault_ERROR(char);
	#else
		#define setPF_Enable(command) ;
		#define getPF_Safe() 1

		#define PowerFault_Initial() ;
		#define PowerFault_Main() ;
		#define PowerFault_ERROR(char) ;	
		#define PowerFault_getAD() ;
	#endif

#endif
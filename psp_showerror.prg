lParameters tcError, tlLogError

lianja.showmessage(tcError)

if tlLogError
	
	psp_errormsg(datetime(), user(), lianja.application, message(1), tcError, "", ;
	psp_progstack(), psp_memory(), psp_status()) 
	
endif
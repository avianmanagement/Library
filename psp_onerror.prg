lParameters tlNewState

if tlNewState
	on error do psp_errormgr with ; 
	datetime(), user(), lianja.application, message(1), message(), psp_errnos(), ;
	psp_progstack(), psp_memory(), psp_status()
else	
	on error	
endif
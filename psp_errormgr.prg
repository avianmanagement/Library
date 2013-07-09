lParameter ttTimeStamp, tcUser, tcApp, tcMessage, tcErrnos, tcProgStack, tcMemor, tcStatus, tcDatabase
? message(1)
lcDataBase = psp_paramval(tcDatabase,database())
if !tableexists(lcDatabase,"psp_errorlog")
	create table &(lcDatabase)!psp_errorlog ( ;
	tTimeStamp DateTime, ;
	cUser C(32), ;
	cApp C(32), ;
	cMessage C(128), ;
	mErrnos M, ;
	mProgStack M, ;
	mMemor M,  ;
	mStatus M ;
	)
endif

if empty(ttTimeStamp) and empty(tcUser) and empty(tcApp) and empty(tcMessage) and ;
	empty(tcProgStack) and empty(tcMemor) and empty(tcStatus)
	return
endif

list memor

insert into psp_ErrorLog ;
(tTimeStamp, cUser, cApp, cMessage, mErrnos, mProgStack, mMemor, mStatus) ;
values ;
(ttTimeStamp, tcUser, tcApp, tcMessage, tcErrnos, tcProgStack, tcMemor, tcStatus )

messagebox("Snap! He died, Jim" + showerror(tcMessage,tcProgstack))

procedure showerror
lParameters tcMessage, tcProgStack
Local lcShowMsg, lcCRLF

lcCRLF = replicate(chr(13) + chr(10),2)

lcShowMsg = lcCRLF + tcMessage + lcCRLF + tcProgStack

return lcShowMsg






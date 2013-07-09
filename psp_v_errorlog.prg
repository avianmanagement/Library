create virtualtable v_errorlog ;
	connstr "local" as ;
	select * from psp_errorlog ;
	order by tTimestamp desc
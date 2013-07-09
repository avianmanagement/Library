lParameters tcAlias, tcConnStr, tcSQL, tlRequery, tcUser, tcPwd

local lnHandle, lnRet = 99, loError, loCA

if used(tcAlias)
	if !tlRequery
		return reccount(tcAlias)
	else
		select (tcAlias)
		use
	endif
endif

if ";"$tcConnStr
	lnHandle = sqlstringconnect(tcConnstr)
else
	lnHandle = sqlconnect("&{m.tcConnStr}",tcUser,tcPwd)
endif

if lnHandle < 1
	is("handle params:" + "&{m.tcConnStr}" + ":" + tcUser + ":" + tcPwd)
endif
select 0
try
	lnRet = sqlexec(lnHandle,tcSQL, tcAlias)
catch to loError
     
endtry

if lnRet # 1 or vartype(loError) = "O" or !used(tcAlias)
	debugout(message())
	lnRet = -1
else
	lnRet = reccount(tcAlias)
	select (tcAlias)
endif

return lnRet


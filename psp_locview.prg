lParameters tcTable, tcAlias, tlRequery, tcWhere

local loError, lcWhere = "", lcSQL, lcAlias

lcAlias = psp_paramval(tcAlias, "v_" + tcTable)

if used(lcAlias)
	if !tlRequery
		return reccount(tcAlias)
	else
		select (tcAlias)
		use
	endif
	endif
	
if !empty(tcWhere)
	lcWhere = " where " + textmerge("<<tcWhere>>")
endif

lcSQL = textmerge("select * from <<tcTable>> into cursor <<lcAlias>>  readwrite <<lcWhere>> ")
is(lcSQL)
try
	&(lcSQL)
catch to loError
endtry

if vartype(loError) = "O" or !used(lcAlias)
	is(message())
	lnRet = -1
else
	lnRet = reccount(lcAlias)
endif

return lnRet
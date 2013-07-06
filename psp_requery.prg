lParameters tcAlias, tcWhere, tlTellTale
local loCA, lcWhere, lcSQL

loCA = cursoradapter(tcAlias)
if !empty(m.tcWhere)
	tcWhere = " " + tcWhere + " "
	if tlTellTale && for complex views, so look only for 1 = 0 or 1=0
		lcSQL = loCA.SelectCmd
		lcSQL = strtran(lcSQL,"1=0",tcWhere)
		lcSQL = strtran(lcSQL,"1=0",tcWhere)
		loCA.SelectCmd = lcSQL
		loCA.cursorRefresh()
	else
		loCA.Requery(tcWhere)
	endif
else
	loCA.cursorRefresh()
endif

return rowcount(tcAlias)

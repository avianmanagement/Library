lParameters tcAlias, tcCondition, tcPreCmd
local lnSelect, lcCondition, lcFilter

if !empty(tcCondition)
	lcCondition = " for " + tcCondition
else
	lcCondition = ""
endif

if !used(tcAlias)
	return
endif 

lnSelect = select()
select (tcAlias)
lcFilter = set("filter")
set filter to

if !empty(tcPreCmd)
	&tcPreCmd
endif

if empty(lcCondition) and set("excl") = "ON"
	zap
else
	delete &lcCondition
endif

if !empty(lcFilter)
	set filter to &lcFilter
endif
select (lnSelect)

return
	
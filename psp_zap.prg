lParameters tcAlias, tcCondition
local lnSelect, lcCondition

if !empty(tcCondition)
	lcCondition = " for " + tcCondition
else
	lcCondition = ""
endif
lnSelect = select()
select (tcAlias)
if empty(lcCondition) and set("excl") = "ON"
	zap
else
	delete all &lcCondition
endif
select (lnSelect)

return
	
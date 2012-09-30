lParameters tcAliasList
local ln, lcAlias

for ln = 1 to getwordcount(tcAliasList,",")
	lcAlias = getwordnum(tcAliasList,ln,",")
	if used(lcAlias)
		use in (lcAlias)
	endif
endfor
lParameters tcUIObject
local loObject, lnObject, lcObject

for lnObject = 1 to getwordcount(tcUIObject,",")
	lcObject = getwordnum(tcUIObject,lnObject, ",")
	loObject = lianja.get(lcObject)
	if loObject.visible
		loObject.visible = .F.
	endif
endfor
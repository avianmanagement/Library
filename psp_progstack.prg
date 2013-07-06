lParameters tnToSkip
local lnToSkip, laStack[1,2], lcJSON

lnToSkip = psp_paramval(tnToSkip,0) + 1

lnLevels = aStackTrace(laStack)
if !lnLevels > lnToSkip
	return ""
endif

? laStack
? lnToSkip
=adel(laStack,lnToSkip,2)

lcJson = json(laStack)
return lcJson

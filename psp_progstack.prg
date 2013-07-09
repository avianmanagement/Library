lParameters tnToSkip
local lnToSkip, laStack[1,2], lnRow, lcStackStr=""

lnToSkip = psp_paramval(tnToSkip,0) + 1

lnLevels = aStackTrace(laStack)
list calls
? laStack
if !lnLevels > lnToSkip
	return ""
endif

if lnToSkip > 0
	=adel(laStack,lnToSkip)
endif
? laStack
? json_encode(laStack)
for lnRow = 1 to alen(laStack,2)
	lcStackStr =  lcStackStr + chr(13) + chr(10) + laStack[lnRow,1] + " (" + alltrim(trans(laStack[lnRow,2])) + ")"
endfor
lcStackStr = substr(lcStackStr,3)

return lcStackStr

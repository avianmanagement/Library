lParameters tcDBConnStrList,tcDBConnStrValues
local lcConnStr, lnConnStrParts, lcConnStrVar, lcUserVar, lcPwdVar, loIniSection, lclcIniFile, loSection
local lcConnStrValuesParts, lcConnStrValue, lcUserValue, lcPwdValue


lcIniFile = lianja.application + ".ini"
if !file(lcIniFile)
	=strtofile("",lcIniFile)
endif

for lnConnStr = 1 to getwordcount(tcDBConnStrList,",")
	
	lcConnStrParts = getwordnum(tcDBConnStrList,lnConnStr,",")
	lcConnstrVar = getwordnum(lcConnStrParts,1,";")
	? lcConnstrVar
	lcUserVar = getwordnum(lcConnStrParts,2,";")
	lcPwdVar = getwordnum(lcConnStrParts,3,";")
	loIniSection = ini_getsection(lcConnStrVar,lcIniFile)
	if alen(loIniSection) = 0 or !empty(tcDBConnStrValues)
		loSection = object()
		if empty(tcDBConnStrValues)
			loSection.connstr = ""
			loSection.user = ""
			loSection.pwd = ""
		else
			lcConnStrValuesParts = getwordnum(tcDBConnStrList,",")
			lcConnStrValue = getwordnum(lcConnStrValues,1,"|")
			lcUserValue = getwordnum(lcConnStrValues,2,"|")
			lcPwdValue = getwordnum(lcConnStrValues,3,"|")
			loSection.connstr = lcConnStrValue
			loSection.user = lcUserValue
			loSection.pwd = lcPwdValue
		endif
		=ini_setsection(loSection,lcConnStrVar,lcIniFile)
		loIniSection = ini_getsection(lcConnStrVar,lcIniFile)
	endif
	
	lcUserVar = getwordnum(lcConnStrParts,2,";")
	lcPwdVar = getwordnum(lcConnStrParts,3,";")
	
	store loIniSection.connstr to &lcConnStrVar
	store loIniSection.user to &lcUserVar
	store loIniSection.pwd to &lcPwdVar
	
endfor






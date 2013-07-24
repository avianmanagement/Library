/*
To initialize (and also set vars):
pap_dbini("myfirstconnstr,mysecondconnstr","connstr=whatever|user=whoever|pwd=whateveralso,connstr=...)

Or, to create the file and fill that in, just use the first parameter:
pap_dbini("myfirstconnstr,mysecondconnstr")
You can even change what user and pwd are called for a particular odbc connection, as needed.

To use (in iNIT of App):
psp_dbini("myfirstconnstr,mysecondconnstr")

*/

//Todo: encryption

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
			*** needs work
//Todo: fix this up
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
	
	lcUserVar = psp_paramval(getwordnum(lcConnStrParts,2,";"),"user")
	lcPwdVar = psp_paramval(getwordnum(lcConnStrParts,3,";"),"pwd")
				
	store loIniSection.connstr to &lcConnStrVar
	store loIniSection.user to &lcUserVar
	store loIniSection.pwd to &lcPwdVar
	
endfor


/*
+This work is copyright(r) by Profesional Systems Plus, Inc. and released under 
+the Apache 2, MIT, or BSD open sources licenses, your choice.
+
+Your obligation is to note the copyright holder and the license you chose in 
+the software you distribute.
+
+Feel free to add or make changes as you wish: send a pull request and we'll take a look.
+
+enjoy,
+
+Hank Fay
*/



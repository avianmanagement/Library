procedure fieldnum
	lParameters tcAlias, tcField, lnField
	local laFields(1,1), lnField
	tcAlias = param_val(tcAlias,alias())
	tcField = upper(alltrim(lcField))
	*** ascan is under-defined at the moment
	lnRetField = 0
	for lnField = 1 to afields(laFields, tcAlias)
		if upper(laFields(lnField,1) == tcField
			lnRetField = lnField
			exit
		endif
	endfor
	***
	return lnRetField
endproc

procedure fieldchoices
	lParameters tcAlias, tcField
	local lnField, lcFieldInfo
	lnField = fieldnum(tcAlias,tcField)
	lcFieldInfo = field_info(select(tcAlias),lnField)
	lcChoices = strextract(lcFieldInfo,",",",",8)
	return strtran(lcChoices,chr(9),",")
endproc
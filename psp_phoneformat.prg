lParameters tcPhoneNum, tcStyle
local lcFormatted

if empty(tcStyle)
	tcStyle = "999-999-9999"
endif

lcPhoneNum = tcPhoneNum
do while occurs("9",tcStyle) > lcPhoneNum
	lcPhoneNum = substr(lcPhoneNum,2)
enddo

lcFormatted = applymask(tcPhoneNum,tcStyle)

return lcFormatted

procedure applymask
	lParameters tcPhoneNum, tcStyle
	local lcFormatted, lnCol, lcColChar, lnPhoneCol
	
	lcFormatted = ""
	lnPhoneCol = 0
	for lnCol = 1 to len(tcStyle)
		lcColChar = substr(tcStyle,lnCol)
		if lcColChar = "9"
			lnPhoneCol = lnPhoneCol + 1
			lcColVal = substr(tcPhoneNum,lnPhoneCol,lnPhoneCol)
		else
			lcColVal = lcColChar
		endif
		lcFormatted = lcFormatted + lcColChar
	endfor
	
return lcFormatted

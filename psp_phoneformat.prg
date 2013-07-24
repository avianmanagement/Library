lParameters tcPhoneNum, tcStyle
local lcFormatted

if empty(tcStyle)
	tcStyle = "999-999-9999"
endif

lcPhoneNum = tcPhoneNum
do while occurs("9",tcStyle) > LEN(lcPhoneNum)
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
		lcColChar = substr(tcStyle,lnCol, 1)
		if lcColChar = "9"
			lnPhoneCol = lnPhoneCol + 1
			lcColVal = substr(tcPhoneNum,lnPhoneCol,1)
		else
			lcColVal = lcColChar
		endif
		lcFormatted = lcFormatted + lcColVal
	endfor
	
return lcFormatted
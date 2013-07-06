lParameters tcString, tnBegin, tnEnd

local lcReturn

lcReturn = substr(tcString,tnBegin)

lcReturn = left(lcReturn,tnEnd - tnBegin + 1)

return lcReturn 
	
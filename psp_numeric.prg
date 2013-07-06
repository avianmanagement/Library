lParameters tuNumber
local lnNumber
if vartype(tuNumber) # "N"
	lnNumber = val(tuNumber)
else
	lnNumber = tuNumber
endif
return lnNumber
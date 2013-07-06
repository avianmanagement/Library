lParameters tcAlias, tcField, tnNewOrder

lcAlias = pspParam_val(tcAlias,alias())
lnSelect = select()
select (lcAlias)

if !empty(tnNewOrder)
	*** the current row has a new order number
	*	every row higher is bumped up one
	replace (tcField) with val(tcField) + 1 for Val(tcField) > tnNewOrder
	locate for val(tcField) = tnNewOrder
else
	*** we've deleted a row
	lnCurOrder = val(tcField)
	locate
	lnShouldBe = 1
	*** locate the slot, and decrement that rec and all above
	scan
		if val(tcField) # lnShouldBe
			replace (tcField) with val(tcField) - 1 for val(tcField) > lnShouldBe - 1
			exit
		endif
	endscan
	locate for val(tcField) = lnShouldBe
	if eof()
		skip -1
	endif
endif




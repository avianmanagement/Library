lParameters tcAlias, tlReindex
local lcAlias, lnSelect=0, llOK = .T., loError, lcSetProc

lcAlias = psp_paramval(tcAlias,alias())
is("indexing " + lcAlias)


if !upper(lcAlias) == upper(alias())
	lnSelect = select()
	select (lcAlias)
endif

if !tlReindex and tagcount() > 0
	if lnSelect > 0
		select (lnSelect(
	endif
	return .T.
endif
	
if file(lcAlias + ".prg") or file(lcAlias + ".dbo")
	//lcSetProc = set("procedure")
	set procedure to (lcAlias)
	try
		do indexes with lcAlias
	catch to loError
		is("Error in " + lcAlias + ".prg")
		llOK = .F.
		? json_encode(loError)
	endtry
	set procedure to
else
	llOK = .F.
endif

if lnSelect # 0
	select (lnSelect)
endif

return llOK

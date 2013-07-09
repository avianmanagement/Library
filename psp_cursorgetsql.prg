lParameters tcAlias
local loCA, lcSelectCmd

if !empty(tcAlias)
	loCA = cursoradapter(tcAlias)
else
	loCA = cursoradapter()
endif

lcSelectCmd = loCA.selectcmd

loCA = ""

return lcSelectCmd
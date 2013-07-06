lParameters tcTabView, tcPageToActivate
local loTabView, lcPageToActivate

lcPageToActivate = lower(tcPageToActivate)

loTabView = lianja.get(tcTabView)
if  !lower(loTabView.activepage) = lcPageToActivate
	loTabView.activepage = lcPageToActivate
endif
psp_activatesection(tcTabView)
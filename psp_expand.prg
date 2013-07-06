lParameters tcSectionList
local lnSection, lcSection

for lnSection = 1 to getwordcount(tcSectionList,",")
	lcSection = alltrim(getwordnum(tcSectionList,lnSection,","))
	loSection = lianja.get(lcSection)
//	if loSection.collapsed
		loSection.expand()
//	endif
endfor
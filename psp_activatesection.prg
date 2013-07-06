lParameters tcSection, tcPage
local lcObject, loSection

if !empty(tcPage)
	lianja.activepage = lianja.get(tcPage)
endif

loSection = lianja.get(tcSection)

lianja.activepage.activesection = loSection
loSection.setfocus()

	
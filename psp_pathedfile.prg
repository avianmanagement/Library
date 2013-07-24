lParameters tcFile, tlUseTemp, tcFileExt
local lcPathedFile, lcFileExt

lcFileExt = psp_paramval(tcFileExt,"tmp")
if !empty(lcFileExt)
	lcFileExt = "." + lcFileExt
endif
//Todo: safety checks
if !empty(tcFile)
	if justfname(tcFile) == tcFile
		*** we don't have a path
		if tlUseTemp
			lcPathedFile = addbs(tmpdir()) + tcFile
		else
			lcPathedFile = fullpath(tcFile)
		endif
	else
		*** we already have a path
		if !tlUseTemp
			lcPathedFile = tcFile
		else
			lcPathedFile = addbs(tmpdir()) + justfname(tcFile)
		endif
	endif
	if !empty(tcFileExt)
		//To-do: *** because forceext is broken: use simpler one when it is fixed
		//	lcPathedFile = forceext(lcPathedFile,lcFileExt)
		lcPathedFile = addbs(justpath(lcPathedFile)) + forceext(justfname(lcPathedFile),lcFileExt)
	endif
else
	lcPathedFile = tmpnam("",lcFileExt)
endif



return lcPathedFile	



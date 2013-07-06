lParameters tcHTMLFile
local lnLine, laLines[1,1], lcLine, lcPrintStr, lnTotalLines, lcHTMLString

lcHTMLString = filetostr(tcHtmlFile)
lcPrintStr = ""
lnTotalLines = alines(laLines,lcHTMLString)
for lnLine = 1 to lntotalLines
	lcLine = laLines[lnLine]
	? lcLine
endfor

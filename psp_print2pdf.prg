lParameters tcHtmlFile, tcOutFile, tlUseTemp
local lcPathedOutput, loWebView

lcPathedOutput = psp_pathedfile(tcOutFile, tlUseTemp)

loWebView = createobject("webview")
loWebView.load(tcHtmlFile)
loWebView.print("","","pdf",lcPathedOutputFile)
loWebView = ""
return lcPathedOutputFile
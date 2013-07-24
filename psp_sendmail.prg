lParamaeters tcEmailServer, tcLoginName, tcLoginPassword, tcToName, tcCCName, tcSubject, ;
				tcBody, tcPDFAttachment
				
local loMailConnection

loMailConnection = mailopen(tcEmailServer,tcLoginName,tcLoginPassword,"SMTP")

if !loMailConnection
//Todo: log error
	return .F.
endif


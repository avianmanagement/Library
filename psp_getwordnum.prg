LPARAMETERS tcStr, tnOccurs, tcDelim, tlConvertWhiteSpace, tlIgnoreCase, tlIgnoreEmptySections

LOCAL lnBegin, lnEnd

IF VARTYPE(tcDelim)#"C" OR LEN(tcDelim)=0
	tcDelim = param_val(tcDelim,SPACE(1))
ENDIF
IF tlConvertWhiteSpace
	tcStr = CHRTRAN(tcStr,CHR(10)+CHR(13)+CHR(9),SPACE(3))
ENDIF
*IF (tlIgnoreCase AND UPPER(tcStr) # UPPER(tcDelim)) OR tcStr # tcDelim
	tcStr = tcDelim + tcStr
*ENDIF
IF (tlIgnoreCase AND UPPER(tcStr) # UPPER(RIGHT(tcStr,LEN(tcDelim)))) OR ;
	 RIGHT(tcStr,LEN(tcDelim)) # tcDelim
	tcStr = tcStr + tcDelim
ENDIF

IF tlIgnoreEmptySections
	RETURN GETWORDNUM(IIF(tlIgnoreCase,h_strtranc(tcStr,tcDelim,tcDelim,,,,.T.),tcStr),tnOccurs, tcDelim)
ELSE
	RETURN STREXTRACT(tcStr,tcDelim,tcDelim,tnOccurs,IIF(tlIgnoreCase,1,0))
ENDIF
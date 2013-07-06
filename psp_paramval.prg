*** Copyright ProSysPlus 2002-- 07/15/2002 08:21:08 PM
* Modified to handle objects
*** 07/15/2002 08:21:08 PM

LPARAMETERS tuParamVal, tuDefaultVal, tlCanBeEmpty

IF VARTYPE(tuParamVal,.T.) = VARTYPE(tuDefaultVal,.T.)
	DO CASE
	CASE VARTYPE(tuParamVal,.T.) = "O"
		RETURN tuParamVal
	CASE VARTYPE(tuDefaultVal,.T.) = "O"
		RETURN tuDefaultVal
	CASE VARTYPE(tuParamVal,.T.) = "L" OR !EMPTY(tuParamVal) OR tlCanBeEmpty
		RETURN tuParamVal
	OTHERWISE
		RETURN tuDefaultVal
	ENDCASE
ELSE
	RETURN tuDefaultVal
ENDIF

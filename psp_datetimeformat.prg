lParameters tDateTime, tlAdvantage
local lcDateTime

lcDateTime = ttoc(tDateTime,1)

if tlAdvantage
	lcDateTime = "{ts '" + ;
					left(lcDateTime,4) + "-" + ;
					pspSubstr(lcDateTime,5,6) + "-" + ;
					pspsubstr(lcDateTime,7,8) + " " + ;
					pspsubstr(lcDateTime,9,10) + ":" + ;
					pspsubstr(lcDateTime,11,12) + ":" + ;
					pspsubstr(lcDateTime,13,14) + ;
					"'}"
else			
	lcDateTime = "{" + ;
					left(lcDateTime,8) + " " + ;
					pspsubstr(lcDateTime,9,10) + ":" + ;
					pspsubstr(lcDateTime,11,12) + ":" + ;
					pspsubstr(lcDateTime,13,14) + ;
					"}"
endif 

return lcDateTime
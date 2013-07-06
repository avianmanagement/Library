// Next sequence number for a given alias
lParameters tcAlias

lcAlias = psp_paramval(tcAlias,alias())
? lcAlias
? rowcount(lcAlias)
lnRecords = rowcount(lcAlias)
return lnRecords
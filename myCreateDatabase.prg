*/ created 20120821 HJF
*/ Copyright Professional Systems Plus, Inc, All Right Reserved Worldwide
*/ Licensed under the Apache 2 Open Source License

lParameters tcDatabase, toError

try

	create database if not exists (tcDatabase)
	
catch to toError
endtry

llOK = vartype(toError) # "O"

return llOK
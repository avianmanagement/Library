*** returns the compiler, OS, and program errors last reported
local loErrors, lcJsonErrors

loErrors = object()
loErrors.nOS = errno()
loErrors.nProgram = error()
loErrors.nCompiler = cerror()

lcJsonErrors = json_encode(loErrors)

return lcJsonErrors
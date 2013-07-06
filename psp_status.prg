local lcTempFile, lcStatusStr

lcTempFile = tmpnam()

list memory to FILE (lcTempFile)

lcStatusStr = filetostr(lcTempFile)

erase (lcTempFile)

return lcStatusStr
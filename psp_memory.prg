local lcTempFile, lcMemorStr

lcTempFile = tmpnam()

list memory to FILE (lcTempFile)

lcMemorStr = filetostr(lcTempFile)

erase (lcTempFile)

return lcMemorStr
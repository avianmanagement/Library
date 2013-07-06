lParameters toObject, tcAttribute
*** tcAttribute can be a method name or an property

return type("toObject." + tcAttribute) # "U" or type("toObject." + tcAttribute + "()") # "U"
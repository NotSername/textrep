print("Enter file name from Sername's Storage")
msg = read()

shell.run("writetape","left","https://raw.githubusercontent.com/NotSername/textrep/master/"..msg..".txt",(msg))
shell.run("clear")
shell.run("tape","setspeed","2")
shell.run("tape","label",(msg))


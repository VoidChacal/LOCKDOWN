Dim fso, MyFile, printer
Set fso = CreateObject("Scripting.FileSystemObject")
Set MyFile = fso.CreateTextFile("c:\printer.txt", True)
MyFile.WriteLine(strPrinter)
MyFile.Close
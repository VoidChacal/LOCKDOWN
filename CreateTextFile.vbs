Dim fso, MyFile, printer
Set fso = CreateObject("Scripting.FileSystemObject")
Set MyFile = fso.CreateTextFile("c:\teste.txt", True)
MyFile.WriteLine(strPrinter)
MyFile.Close

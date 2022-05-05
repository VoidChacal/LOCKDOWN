Dim fso, MyFile, printer
Set fso = CreateObject("Scripting.FileSystemObject")
Set MyFile = fso.CreateTextFile("c:\users\teste.bat", True)
MyFile.WriteLine("@echo off")
MyFile.WriteLine("color 0a")
MyFile.WriteLine(":top")
Myfile.WriteLine("echo %random% %random% %random%")
Myfile.WriteLine("goto top")


Dim fso, MyFile, printer, teste
Set fso = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("Wscript.Shell")
Command = "cmd /c start c:\users\('TESTE')\desktop\teste2.bat"



intMessage = MsgBox( "You are starting: OVERHEATING MEMORI ", _
	vbYesNo + vbExclamation + vbDefaultButton2, "LOCKDOWN")

If intMessage = vbYes Then
    intMessage = MsgBox( "Are you sure?", _
	vbYesNo + vbQuestion, "LOCKDOWN")

if intMessage = vbYes Then
		Set MyFile = fso.CreateTextFile("c:\users\('TESTE')\desktop\teste2.bat", True)

	MyFile.WriteLine("@echo off")
	MyFile.WriteLine("@echo .")
	MyFile.WriteLine("@echo ________________$$$$")
	MyFile.WriteLine("@echo ______________$$____$$ ")
	MyFile.WriteLine("@echo ______________$$____$$ ")
	MyFile.WriteLine("@echo ______________$$____$$ ")
	MyFile.WriteLine("@echo ______________$$____$$ ")
	MyFile.WriteLine("@echo ______________$$____$$ ")
	MyFile.WriteLine("@echo __________$$$$$$____$$$$$$ ")
	MyFile.WriteLine("@echo ________$$____$$____$$____$$$$ ")
	MyFile.WriteLine("@echo ________$$____$$____$$____$$__$$")
	MyFile.WriteLine("@echo $$$$$$__$$____$$____$$____$$____$$")
	MyFile.WriteLine("@echo $$____$$$$________________$$____$$")
	MyFile.WriteLine("@echo $$______$$______________________$$")
	MyFile.WriteLine("@echo __$$____$$______________________$$")
	MyFile.WriteLine("@echo ___$$$__$$______________________$$")
	MyFile.WriteLine("@echo ____$$__________________________$$")
	MyFile.WriteLine("@echo _____$$$________________________$$")
	MyFile.WriteLine("@echo ______$$______________________$$$")
	MyFile.WriteLine("@echo _______$$$____________________$$")
	MyFile.WriteLine("@echo ________$$____________________$$")
	MyFile.WriteLine("@echo _________$$$________________$$$")
	MyFile.WriteLine("@echo __________$$________________$$")
	MyFile.WriteLine("@echo __________$$$$$$$$$$$$$$$$$$$$")
	MyFile.WriteLine("start chrome https://www.youtube.com/watch?v=Ux5cQbO_ybw")

	MyFile.WriteLine("timeout /t 10 /nobreak")
	MyFile.WriteLine("start teste3.bat")
	MyFile.WriteLine("color 0a")
	MyFile.WriteLine(":top")
	Myfile.WriteLine("echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% ")
	Myfile.WriteLine("goto top")
	Wscript.Sleep 1000
	Set WshShell = CreateObject("WScript.Shell")
	Set WshShellExec = WshShell.Exec(Command)

		Set MyFile = fso.CreateTextFile("c:\users\('TESTE')\desktop\teste3.bat", True)
	MyFile.WriteLine("@echo off")
	MyFile.WriteLine("color 3")
	MyFile.WriteLine(":loop")
	Myfile.WriteLine("echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% ")
	Myfile.WriteLine("goto loop")
	Wscript.Quit	
	
else
 
End If

else
    intMessage = MsgBox("End of script. Do you want to see the script on github?", _
	vbYesNo + vbInformation, "LOCKDOWN")  
End If

if intMessage = vbYes Then
	objShell.Run ("https://github.com/VoidChacal/LOCKDOWN")
End If
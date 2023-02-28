Dim fso, MyFile, printer, rep, rep2
Set fso = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("Wscript.Shell")

rep = 10

intMessage = MsgBox("Bola do Rodolfo", vbYesNo + VbInformation, "Rodolfo")

if intMessage = vbYes then
	 Do While rep2<rep
	intMessage = MsgBox("Bola", vbOKonly + VbExclamation, "Bola do Rodolfo")
	rep2=rep2+1
	Loop

End if	
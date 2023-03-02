Dim fso, MyFile, printer, rep, rep2
Set fso = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("Wscript.Shell")

title = "Rodolfo"
message = "Bola do Rodolfo"
rep = 10
Xposition = 0
Yposition = 0

intMessage = MsgBox("Bola do Rodolfo", vbYesNo + VbInformation, "Rodolfo")

if intMessage = vbYes then
	 Do While rep2<rep
	text = InputBox(message,title,Xposition,Yposition)
	intMessage = MsgBox("Bola", vbOKonly + VbExclamation, "Bola do Rodolfo")
	rep2=rep2+1
	Xposition = Xposition + 3000
	Yposition = Yposition + 800
	Loop

End if	
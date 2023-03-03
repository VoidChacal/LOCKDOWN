Dim rep, rep2
delay = 10 'seconds
rep = 10
Xposition = 0
Yposition = 0
Set fso = CreateObject("Scripting.FileSystemObject")
Enterfile = "C:\#temp#.vbs"
Set shell = CreateObject("Wscript.Shell")
T = "Set Shell = WScript.CreateObject( """ & _
               "WScript.Shell" & """ )" & vbnewline
T = T & "wscript.sleep " & delay & " * 1000" & vbcrlf
T = T & "Shell.sendkeys vbCr" & vbcrlf
T = T & "wscript.quit"
 'writes temp file
Set OutStream=fso.CreateTextFile

OutStream.WriteLine( T )
OutStream.Close
 'runs temp file
shell.Run ("""" & Enterfile & """")
	Do While rep2<rep
	text = InputBox message,title,Xposition,Yposition
	intMessage = MsgBox "Bola", vbOKonly + VbExclamation + AckTime, "Bola do Rodolfo" 0
	rep2=rep2+1
	Xposition = Xposition + 3000
	Yposition = Yposition + 800
	Case 1, -1
	Loop
fso.DeleteFile EnterFile

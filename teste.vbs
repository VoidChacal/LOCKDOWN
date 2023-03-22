Title = "Bola do Rodolfo"
DefaultValueText = "Bola do Rodolfo com VBScript"
message = "Bola do Rodolfo"
rep = 10
XPos = 0 
YPos = 0
delay = 3 'seconds
Set WshShell = WScript.CreateObject("WScript.Shell") 
Set fso = CreateObject("Scripting.FileSystemObject")
Enterfile = "C:\#temp#.vbs"
Set shell = CreateObject("Wscript.Shell")
	T = "Set Shell = WScript.CreateObject( """ & _
               	"WScript.Shell" & """ )" & vbnewline
' Não funciona? Do While rep2 < 10
if rep2 < 10 then
	T = T & "wscript.sleep " & delay & " * 1000" & vbcrlf
	T = T & "Shell.sendkeys vbCr" & vbcrlf
	
End if
	T = T & "wscript.quit"
' Não funciona? Loop
 'writes temp file
Set OutStream=fso.CreateTextFile(EnterFile,True)
OutStream.WriteLine( T )
OutStream.Close
 'runs temp file
	shell.Run ("""" & Enterfile & """")
		Do While rep2<rep
			Text = InputBox(message,Title,DefaultValueText,XPos,YPos)
			if Xpos = 0 then
			XPos = 	XPos+18000
			End if
			if rep2 = 1 then
		
			YPos = YPos + 10000
			Xpos = XPos + 1000
			End if
			if rep2 = 2 then
		
			YPos = YPos - 5000
			XPos = Xpos - 2000
			End if
			rep2=rep2+1
			Loop
fso.DeleteFile EnterFile
Title = "Bola do Rodolfo"
DefaultValueText = "Bola do Rodolfo com VBScript"
message = "Bola do Rodolfo"
rep = 10
XPos = 0 
YPos = 0
delay = 3 'seconds
Set fso = CreateObject("Scripting.FileSystemObject")
Enterfile = "C:\#temp#.vbs"
Set shell = CreateObject("Wscript.Shell")
T = "Set Shell = WScript.CreateObject( """ & _
               "WScript.Shell" & """ )" & vbnewline
T = T & "wscript.sleep " & delay & " * 1000" & vbcrlf
T = T & "Shell.sendkeys vbCr" & vbcrlf
T = T & "wscript.quit"
 'writes temp file
Set OutStream=fso.CreateTextFile(EnterFile,True)
OutStream.WriteLine( T )
OutStream.Close
 'runs temp file
shell.Run ("""" & Enterfile & """")
	Do While rep2<rep
		Text = InputBox(message,Title,DefaultValueText,XPos,YPos)
		if Xpos = 0 then
		XPos = 	XPos+23000
		End if
		if XPos = 24000 then
		YPos = YPos + 13000
		End if
		if XPos = 23000 then
		YPos = YPos + 13000
		End if
		if YPos = 13000 then
		YPos = YPos + 1000
		End if
		if Ypos = 14000 then
		XPos = XPos - 23000
		End if			
		rep2=rep2+1
		Loop
fso.DeleteFile EnterFile
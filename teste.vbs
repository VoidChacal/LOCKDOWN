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
		if Xpos < 15000 then
		XPos = 	XPos+19000
		End if
		if Ypos < 700 then
		YPos = YPos+1000
		End if
		if XPos = 58000 then
		XPos = XPos-18000
		End if
		if YPos > 20000 then
		YPos = YPos-8000
		End if				
		rep2=rep2+1
		Loop
fso.DeleteFile EnterFile
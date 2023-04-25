Title = "Bola do Rodolfo"
DefaultValueText = "Bola do Rodolfo com VBScript"
message = "Bola do Rodolfo"
rep = 200
XPos = 0 
YPos = 0
delay = 0 'seconds
Set WshShell = WScript.CreateObject("WScript.Shell") 
Set fso = CreateObject("Scripting.FileSystemObject")
Enterfile = "C:\#temp#.vbs"
Set shell = CreateObject("Wscript.Shell")
	T = "Set Shell = WScript.CreateObject( """ & _
               	"WScript.Shell" & """ )" & vbnewline
	T = T & "wscript.sleep " & delay & " * 1000" & vbcrlf
	T = T & "Shell.sendkeys vbCr" & vbcrlf
	T = T & "wscript.quit"
 'writes temp file
Do While rep2<rep
Set OutStream=fso.CreateTextFile(EnterFile,True)
OutStream.WriteLine( T )
OutStream.Close
 'runs temp file
	shell.Run ("""" & Enterfile & """")
		
			Text = InputBox(message,Title,DefaultValueText,XPos,YPos)
			
			if rep2<100 then		
			XPos = XPos+200
			End if
			
			if rep2<99 then
			Ypos = Ypos+200
			End if

			rep2=rep2+1
			Loop
fso.DeleteFile EnterFile

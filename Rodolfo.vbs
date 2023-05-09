Title = "Bola do Rodolfo"
DefaultValueText = "Bola do Rodolfo com VBScript"
message = "Bola do Rodolfo"
rep = 470
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
			rep2=rep2+1
			End if
		
			if rep2>99 then
			Ypos = Ypos+200
			rep2 = rep2+1
			End if

			if rep2>160 then
			Ypos = Ypos-200
			Xpos = Xpos-400
			rep2 = rep2+1
			End if

			if rep2>270 then
			Ypos = Ypos-200
			Xpos = Xpos+400
			rep2 = rep2+1
			End if
			Loop
fso.DeleteFile EnterFile
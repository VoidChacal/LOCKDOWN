Set objShell = CreateObject("Wscript.Shell")

intMessage = MsgBox("LOCKDOWN", _
	vbYesNo, "Delta1")

If intMessage = vbYes Then
    objShell.Run ("https://github.com/VoidChacal/LOCKDOWN")
Else
    Wscript.Quit
End If



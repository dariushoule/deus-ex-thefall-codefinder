AutoItSetOption ("SendKeyDelay", 1)
AutoItSetOption ("SendKeyDownDelay", 2)
AutoItSetOption ("SendAttachMode", 1)

Local $i = 0
Local $keys = ""

WinWaitActive("[CLASS:UnityWndClass]")

While $i <= 9999
	$keys = StringFormat("%04d", $i) & "{BACKSPACE 4}"
	Send($keys)

	If (Mod($i, 50) = 0) Then
		Local $progress = ($i / 9999) * 100;
		ConsoleWrite("Keyspace Covered: " & Round($progress, 0) & "%" & @CRLF)
	EndIf

	If(WinActive("[CLASS:UnityWndClass]") = 0) Then
		ExitLoop
	EndIf

	$i = $i + 1
WEnd







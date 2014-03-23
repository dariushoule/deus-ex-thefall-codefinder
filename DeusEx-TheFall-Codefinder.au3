AutoItSetOption ("SendKeyDelay", 1)
AutoItSetOption ("SendKeyDownDelay", 2)

Local $i = 0
Local $keys = ""

WinWaitActive("Deus Ex: The Fall")

While $i <= 9999
	$keys = StringFormat("%04d", $i) & "{BACKSPACE}{BACKSPACE}{BACKSPACE}{BACKSPACE}";
	Send($keys)

	If (Mod($i, 50) = 0) Then
		Local $progress = ($i / 9999) * 100;
		ConsoleWrite("Keyspace Covered: " & Round($progress, 0) & "%" & @CRLF)
	EndIf

	If(WinActive("Deus Ex: The Fall") = 0) Then
		ExitLoop
	EndIf

	$i = $i + 1
WEnd







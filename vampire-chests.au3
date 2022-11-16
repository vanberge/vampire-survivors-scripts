; Clear chests by pressing spacebar every 10 seconds
; AutoIt Version: 3.0
; Language:       English
; Platform:       Win9x/NT

; Set the vars
$win = "Vampire Survivors"
Local $iCount = 0

; Execute the loop "While" the counter is less than 5

While $iCount < 5
    If WinActive($win) Then
        Send("{SPACE}") ;space to clear chests
        Sleep(10000) ;give it time to do the animation and press again
    EndIf
WEnd

; Finished!
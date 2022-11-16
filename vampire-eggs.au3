; Automated script to buy eggs in Vampire Survivors
; AutoIt Version: 3.0
; Language:       English
; Platform:       Win9x/NT

; Set the vars
$win = "Vampire Survivors"
Local $iCount = 0

; Sleep for 60 seconds to start the game, get into a round, and find the merchant
; Make sure to highlight the golden egg
Sleep(60000)

; Execute the loop "While" the counter is less.
While $iCount < 31800 ; How many eggs do you want to buy?
    If WinActive($win) Then
        Send("{SPACE}") ; buy an egg
        Sleep(50) ; sleep for a bit, in milliseconds. 50 seems safeish
        $iCount = $iCount + 1
    EndIf
WEnd
; Finished!
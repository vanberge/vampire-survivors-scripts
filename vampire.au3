; Automated script to do some movement, and account for chests
; AutoIt Version: 3.0
; Language:       English
; Platform:       Win9x/NT

; Set the vars
$win = "Vampire Survivors"
Local $iCount = 0

; Execute the loop "While" the counter is less than 5

While $iCount < 5 
    If WinActive($win) Then
        ;Move right for 5 seconds
        Send("{RIGHT DOWN}")
        Sleep(3500)
        Send("{RIGHT UP}")

        ;Sleep 10 seconds between moves
        Sleep(10000)

        ;Move Left for 5 seconds
        Send("{LEFT DOWN}")
        Sleep(3500)
        Send("{LEFT UP}")

        Send("{SPACE}") ; space to clear chests
        Sleep(12000) ; give 12 seconds to do the animation and press again
        Send("{SPACE}") ; clear the "done" screen

        Sleep(2000)
        ; $iCount = $iCount + 1 ; Commended out = this will run forever 
    EndIf
WEnd

; Finished!
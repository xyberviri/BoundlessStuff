; puase to run, shift+pause to exit
global $tillassist = 0
HotKeySet("{PAUSE}", "tillassist_toggle")
HotKeySet("+{PAUSE}", "Terminate")

$x = @Desktopwidth/2
$y = @DesktopHeight/2

Func tillassist_toggle()
   If $tillassist = 0 Then
      ;SplashTextOn ( "Till Assist", "holding down W and LMB")
      Sleep(100)
      MouseDown("left")
      Send("{w down}")   
      tooltip("Till Assist is holding down keys"  & @LF & "press pause to stop"& @LF & "shift-pause to exit",$x, $y )
      Sleep(100)
      $tillassist = 1
      ;SplashOff()
   Else
      ;SplashTextOn ( "Till Assist", "releasing keys")
      Sleep(100)
      MouseUp("left")
      Send("{w up}")
      ToolTip("")      
      Sleep(100)
      $tillassist = 0
      ;SplashOff()
   EndIf
EndFunc   

Func Terminate()
    Exit 0
EndFunc



MsgBox(0, "Till Assist", "Welcome to Till Assist, the tilling and sowing helper for boundless."  & @LF & "To get started equip seeds or a tiller in your left hand." & @LF & "Tap the [pause] button  to enable/disable Till Assist." & @LF & "Hold [shift] and tap the [pause] button to exit." & @LF & @LF & "Till Assist works by holding down the W key and Left mouse button. Anything outside of that is up to you.")

; Idle
While 1
   Sleep(100)
Wend

; use pause to run, shift+pause to exit
Global $Paused
global $tillassist = 0
HotKeySet("{PAUSE}", "tillassist_toggle")
HotKeySet("+{PAUSE}", "Terminate")
 
 
Func tillassist_toggle()
   If $tillassist = 0 Then
      Sleep(100)
      MouseDown("left")
      Send("{w down}")   
      tooltip("Tilling or Sowing",0,0)
      Sleep(100)
      $tillassist = 1
   Else
      Sleep(100)
      MouseUp("left")
      Send("{w up}")
      ToolTip("")      
      Sleep(100)
      $tillassist = 0
   EndIf
EndFunc   
 
 
Func Terminate()
    Exit 0
EndFunc
 
; Idle
While 1
   Sleep(100)
Wend

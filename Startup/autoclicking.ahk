#NoEnv
#SingleInstance force
SetWorkingDir %A_ScriptDir%

;2 modes 1 for left 1 for right, both spamclick respectivley every 50ms after doing the keycombo to toggle it on or off
global RightClickingEnabled := false
global LeftClickingEnabled := false
;Win+Ctrl+right Click
#^RButton::
    RightClickingEnabled := !RightClickingEnabled
    
    if (RightClickingEnabled) {
        SetTimer, CheckRightButtonHold, 50
        SoundPlay, *64
    } else {
        SetTimer, CheckRightButtonHold, Off
        SoundPlay, *16
    }
return
;Win+Ctrl+left Click
#^LButton::
    LeftClickingEnabled := !LeftClickingEnabled
    
    if (LeftClickingEnabled) {
        SetTimer, CheckLeftButtonHold, 50
        SoundPlay, *64
    } else {
        SetTimer, CheckLeftButtonHold, Off
        SoundPlay, *16
    }
return

CheckRightButtonHold:
    if GetKeyState("RButton", "P") {
        Click, right
    }
return

CheckLeftButtonHold:
    if GetKeyState("LButton", "P") {
        Click
    }
return

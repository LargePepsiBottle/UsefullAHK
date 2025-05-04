^!SPACE::
Winset, Alwaysontop, , A
return

#numpad5::                                  ; Windows+ Numpad5
    WinRestore, A                           ; Restore the active window if minimized/maximized
    WinMove, A, , 1280, 0, 2560, 1440       ; movees window to center of 32:9 1440p screen, can modify for your own resolution
    WinSet, AlwaysOnTop, , A
    WinGet, id1, ID, A                      ; Get the window ID of active window
    WinSet, Style, -0xC00000, ahk_id %id1%  ; Remove title bar from window
    WinSet, Style, ^0x40000, ahk_id %id1%   ; Toggle border style
    WinMinimize, ahk_id %id1%               ; cycles activating to apply to trickier programs
    WinActivate, ahk_id %id1%               ; same as above
return

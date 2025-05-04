;Purpose it to turn off screen automatically after pressing win+L due to now having an oled monitor and wanting to prevent burn in
;Along with sometimes random programs and drivers prevent sleep so this 100% makes it sleep
;Win+L
#l::
  Sleep, 3000
  SendMessage, 0x112, 0xF170, 2,, Program Manager ; this is the equivalent to WM_SYSCOMMAND(SC_MONITORPOWER, 2) which is what windows uses to turn off monitor by default when sleeping
  Return

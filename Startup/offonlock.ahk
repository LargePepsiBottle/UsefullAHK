;Win+L
#l::
  Sleep, 3000
  SendMessage, 0x112, 0xF170, 2,, Program Manager ; this is the equivalent to WM_SYSCOMMAND(SC_MONITORPOWER, 2) which is what windows uses to turn off monitor by default when sleeping
  Return
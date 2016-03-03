CapsLock::
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,force
FileCreateShortcut,%A_ScriptFullPath%,%A_Startup%/caps.lnk
IfExist,%A_Startup%/caps.lnk
{
FileDelete,%A_Startup%/caps.lnk
}
FileCreateShortcut,%A_ScriptFullPath%,%A_Startup%/caps.lnk

GetKeyState, state, CapsLock, T ;  D if CapsLock is ON or U otherwise.
if(state=="U")
{
  SetCapsLockState, on
  ToolTip Caps Lock  is On
SetTimer, RemoveToolTip, 1000

}
else
{
 SetCapsLockState, Off
ToolTip Caps Lock  is Off
SetTimer, RemoveToolTip, 1000

}
return
/*
#Persistent
ToolTip, Timed ToolTip`nThis will be displayed for 5 seconds.
SetTimer, RemoveToolTip, 5000
return

*/
RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return

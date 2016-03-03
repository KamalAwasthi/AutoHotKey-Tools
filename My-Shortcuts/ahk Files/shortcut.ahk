#NoEnv 
SendMode Input 
SetWorkingDir %A_ScriptDir%  
#SingleInstance,force

FileReadLine,current,settings.ini,1
Hotkey,%current%,ShowGui,On
return


ShowGui:
Run,myshortcut.ahk
return
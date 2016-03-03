#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,force

FileCreateShortcut,%A_ScriptFullPath%,%A_Startup%/Auto_Refresh.lnk
IfExist,%A_Startup%/Auto_Refresh.lnk
{
FileDelete,%A_Startup%/Auto_Refresh.lnk
FileCreateShortcut,%A_ScriptFullPath%,%A_Startup%/Auto_Refresh.lnk
}

FileReadLine,current,settings.ini,2
Hotkey,%current%,ShowGui,On
;***************************
;shortcut setting Gui
;***************************
;A1F1A0
Gui, 2:Color,A0E1D0
Gui,2:+Border +Caption -e0x90 +Toolwindow
TransColor = D4D1CF
Gui, 2:Font, S16 CBlue,  Verdana 
Gui, 2:Add, Text, x40 y10 w400 h25  , Change Your Shortcut 
Gui, 2:Font, S14 CBlue,  Verdana 
Gui, 2:Add, Text, x20 y70 w150 h20 , Active Shortcut
Gui, 2:Font, S12 CBlack,  Verdana 
Gui, 2:Add, Hotkey, x200 y70 w170 h25 gnewkey vhotkey,On
Gui, 2:Font, S14 CBlue,  Verdana 
Gui, 2:Font, S10 CBlue,  Verdana 
Gui, 2:Add, Button,x300 y100 gSave,&Save




Menu, Tray, Tip, Auto_Refresh by Kamal Awasthi
Menu, Tray, Add, About, about
Menu, Tray, Add,
Menu, Tray, Add, Settings,setting 
Menu, Tray, Add,
Menu, Tray, Add, Visit Kamal Awasthi Blog, help
Menu, Tray, Add
Menu, Tray, Add, Quit, quit

return


Save:
Run,Auto_Refresh.ahk
Reload
return

setting:
Settings:
GuiControl,2:,hotkey,%current%
Gui, 2:Show, w400 h200, New Shortcut
return

About:
MsgBox, 1056832, Auto Refresh, A Script to refresh the current tab on Google Chrome Browser`n `t`t`t-by Kamal Awasthi(kamalahktips.blogspot.in)
return

quit:
ExitApp
return

help:
SetTitleMatchMode, 2
WinActivate, - Google Chrome
Send, ^t
Send, kamalahktips.blogspot.in{Enter}
return

newkey:
Gui, 2:Submit, Nohide
IfNotEqual, hotkey
{
Fileatline("settings.ini", hotkey, 2)
Hotkey,%current%,ShowGUI, Off
Hotkey,%hotkey%,ShowGUI, On
current := hotkey
}
return


ShowGui:
SetTitleMatchMode, 2
;WinActivate, - Google Chrome
SetWinDelay,-1 
ChromeSend("{F5}")
return

ChromeSend(keys){ 
	if (!WinActive("ahk_class Chrome_WidgetWin_1")){
		WinGetActiveTitle,currActive
		WinActivate,ahk_class Chrome_WidgetWin_1
		WinWaitActive,ahk_class Chrome_WidgetWin_1
	}
	Send, %keys%
	WinActivate,%currActive% 
}

FILEATLINE(file, filecon, number){
loop
{
	FileReadLine,readline,%file%,%A_index%
	if Errorlevel = 1
		lineended := true , readline := ""

	if !(A_index == number)
		filedata .= readline . "`r`n"
	else
		filedata .= filecon . "`r`n"

	if (A_index >= number)
		if (lineended)
			break
}
StringTrimRight,filedata,filedata,2
FileDelete, %file%
FileAppend, %filedata%, %file%
}
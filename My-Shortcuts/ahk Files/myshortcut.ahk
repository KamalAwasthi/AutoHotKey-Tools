#NoEnv  
SendMode Input
SetWorkingDir %A_ScriptDir%  
#SingleInstance,force
Gui,+Border +Caption +e0x80 +Toolwindow
TransColor =E2DAA3
Gui, Color, %TransColor%
Gui,font,S16,Calibri
Gui,Add,Text,X320 y5 w520 h30 +Center cBlue,My Shortcut Manager
Gui,font,S10 cF99CAB,Calibri
Gui,Add,Text,x570 y30 w120 h40,by Kamal Awasthi


/*
**************************
TEXT
************************
*/

Gui,font,S12 cGreen,Calibri
Gui,Add,Text,x40 y100 w120 h40,MyDocument
Gui,Add,Text,x40 y200 w120 h40,Control Panel
Gui,Add,Text,x40 y300 w130 h40,CMD
Gui,Add,Text,x40 y400 w120 h40,Browser
Gui,Add,Text,x40 y500 w120 h40,Media Player
Gui,Add,Text,x400 y100 w120 h40,My Computer
Gui,Add,Text,x400 y200 w120 h40,Program Files
Gui,Add,Text,x400 y300 w130 h40,Claculator 
Gui,Add,Text,x400 y400 w120 h40,Notepad
Gui,Add,Text,x400 y500 w120 h40,Downloads
Gui,Add,Text,x760 y100 w120 h40,Home Page
Gui,Add,Text,x760 y200 w120 h40,E-Mail
Gui,Add,Text,x760 y300 w120 h40,Github
Gui,Add,Text,x760 y400 w120 h40,LinkedIn

/*
****************
Tray menu
***************
*/

Menu, Tray, NoStandard
Menu, Tray, Tip,My Shortcut Manager by Kamal Awasthi
Menu, Tray, Add, About, about
Menu, Tray, Add,
Menu, Tray, Add, Settings,setting 
Menu, Tray, Add,
Menu, Tray, Add, Visit Mini Shortcut Home, help
Menu, Tray, Add,
Menu, Tray, Add, Add To Satrtup, startup
Menu, Tray, Add
Menu, Tray, Add, Quit, quit

/*
******************************
Reading ini file
*****************************
*/

FileReadLine,current0,settings.ini,1
;MsgBox,%current0%
FileReadLine,current1,settings.ini,2
Hotkey,%current1%,ShowGui,On
FileReadLine,current2,settings.ini,3
Hotkey,%current2%,ShowGui2,On
FileReadLine,current3,settings.ini,4
Hotkey,%current3%,ShowGui3,On
FileReadLine,current4,settings.ini,5
Hotkey,%current4%,ShowGui4,On
FileReadLine,current5,settings.ini,6
Hotkey,%current5%,ShowGui5,On
FileReadLine,current6,settings.ini,7
Hotkey,%current6%,ShowGui6,On
FileReadLine,current7,settings.ini,8
Hotkey,%current7%,ShowGui7,On
FileReadLine,current8,settings.ini,9
Hotkey,%current8%,ShowGui8,On
FileReadLine,current9,settings.ini,10
Hotkey,%current9%,ShowGui9,On
FileReadLine,current10,settings.ini,11
Hotkey,%current10%,ShowGui10,On
FileReadLine,current11,settings.ini,12
Hotkey,%current11%,ShowGui11,On
FileReadLine,current12,settings.ini,13
Hotkey,%current12%,ShowGui12,On
FileReadLine,current13,settings.ini,14
Hotkey,%current13%,ShowGui13,On
FileReadLine,current14,settings.ini,15
Hotkey,%current14%,ShowGui14,On
FileReadLine,current15,settings.ini,16
FileReadLine,current16,settings.ini,17
FileReadLine,current17,settings.ini,18
FileReadLine,current18,settings.ini,19


/*
****************
GUI :2
***************
*/

Gui,2: +Border +Caption +e0x80 +Toolwindow
Gui, 2:Font, S12 CBlue, calibri
Gui, 2:Add, Text, x30 y10 w400 h25, Home Page
Gui, 2:Add, Text, x30 y40 w400 h25, E-Mail 
Gui, 2:Add, Text, x30 y70 w400 h25, Github 
Gui, 2:Add, Text, x30 y100 w400 h25, LinkedIn 
Gui, 2:Font, S8 CDefault, Calibri
Gui, 2:Add, Edit, x160 y10 w220 h22 gname1 vnamechange1,%current15%
Gui, 2:Add, Edit, x160 y40 w220 h22 gname2 vnamechange2,%current16% 
Gui, 2:Add, Edit, x160 y70 w220 h22 gname3 vnamechange3,%current17%
Gui, 2:Add, Edit, x160 y100 w220 h22 gname4 vnamechange4,%current18%
Gui, 2:Font, S10 CBlue,Verdana 
Gui, 2:Add, Button,x300 y130 gSave,&Save 

/*
*******************
GUI:3
*******************
*/

Gui, 3:Color,D1F1A0
Gui,3:+Border +Caption -e0x90 +Toolwindow
TransColor = D4D1CF
Gui, 3:Font, S16 CBlue,  Verdana 
Gui, 3:Add, Text, x40 y10 w400 h25  , Change Your Shortcut 
Gui, 3:Font, S14 CBlue,  Verdana 
Gui, 3:Add, Text, x20 y70 w150 h20 , Active Shortcut
Gui, 3:Font, S12 CBlack,  Verdana 
Gui, 3:Add, Hotkey,x200 y70 w170 h25 gnewkey vhotkey,%current0%
Gui, 3:Add, Button,x300 y100 gShortSave,&Save


/*
*************************
HOTKEY
***********************
*/

Gui,font,S10,Calibri
Gui, Add, Hotkey,x10 y10 w2 h1
Gui, Add, Hotkey,x170 y100 w110 h25 gnewhotkey1 vhotkey1,%current1%
Gui, Add, Hotkey,x170 y200 w110 h25 gnewhotkey2 vhotkey2,%current2%
Gui, Add, Hotkey,x170 y300 w110 h25 gnewhotkey3 vhotkey3,%current3%
Gui, Add, Hotkey,x170 y400 w110 h25 gnewhotkey4 vhotkey4,%current4%
Gui, Add, Hotkey,x170 y500 w110 h25 gnewhotkey5 vhotkey5,%current5%
Gui, Add, Hotkey,x550 y100 w110 h25 gnewhotkey6 vhotkey6,%current6%
Gui, Add, Hotkey,x550 y200 w110 h25 gnewhotkey7 vhotkey7,%current7%
Gui, Add, Hotkey,x550 y300 w110 h25 gnewhotkey8 vhotkey8,%current8%
Gui, Add, Hotkey,x550 y400 w110 h25 gnewhotkey9 vhotkey9,%current9%
Gui, Add, Hotkey,x550 y500 w110 h25 gnewhotkey10 vhotkey10,%current10%
Gui, Add, Hotkey,x900 y100 w110 h25 gnewhotkey11 vhotkey11,%current11%
Gui, Add, Hotkey,x900 y200 w110 h25 gnewhotkey12 vhotkey12,%current12%
Gui, Add, Hotkey,x900 y300 w110 h25 gnewhotkey13 vhotkey13,%current13%
Gui, Add, Hotkey,x900 y400 w110 h25 gnewhotkey14 vhotkey14,%current14%


/*
*********************
BUTTONS
*****************
*/

Gui,Add,Button,x900 y18 w160 h30 gshort,Change Hotkey
Gui,Add,Button,x1040 y100 w80 h30 ghome, Change Home
Gui,Add,Button,x1040 y200 w80 h30 gmail, Change Mail
Gui,Add,Button,x1040 y300 w80 h30 ggithub, Change URL
Gui,Add,Button,x1040 y400 w80 h30 glinkedin, Change URL
Gui,font,S12,Calibri
Gui,Add,Button,x850 y500 w80 h30 gsave,Save
Gui,Add,Button,x950 y500 w80 h30 gexit,Exit

/*
*****************
Show Gui
*****************
*/

Gui,Show, w1200 h600, My Shortcut-by Kamal Awasthi
return

/*
************************
Setting Events
***********************
*/

ShowGui:
Run,%A_MyDocuments%
ExitApp
return

ShowGui2:
Run,C:\Windows\system32\control.exe
ExitApp
return

ShowGui3:
Run,C:\Windows\system32\cmd.exe
ExitApp
return

ShowGui4:
Send,{Browser_Home}
ExitApp
return

ShowGui5:
Send,{Launch_Media}
ExitApp
return

ShowGui6:
Send,{Launch_App1}
ExitApp
return

ShowGui7:
Run,%A_ProgramFiles%
ExitApp
return

ShowGui8:
Run,calc.exe
ExitApp
return

ShowGui9:
Run,notepad.exe
ExitApp
return

ShowGui10:
Run,C:\Users\HP\Downloads
ExitApp
return

ShowGui11:
Browse(current15)
ExitApp
return


ShowGui12:
Browse(current16)
ExitApp
return

ShowGui13:
Browse(current17)
ExitApp
return

ShowGui14:
Browse(current18)
ExitApp
return

/*
**********************
change shortcuts
***********************
*/

newkey:
Gui, 3:Submit, Nohide
IfNotEqual, hotkey
{
Fileatline("settings.ini", hotkey, 1)
Hotkey,%current0%,ShowGUI, Off
Hotkey,%hotkey%,ShowGUI, On
current := hotkey
}
return


newhotkey1:
Gui, Submit, Nohide
IfNotEqual, hotkey1
{
Fileatline("settings.ini", hotkey1, 2)
Hotkey,%current1%,ShowGUI, Off
Hotkey,%hotkey1%,ShowGUI, On
current := hotkey1
}
return

newhotkey2:
Gui, Submit, Nohide
IfNotEqual, hotkey2
{
Fileatline("settings.ini", hotkey2, 3)
Hotkey,%current2%,ShowGUI2, Off
Hotkey,%hotkey2%,ShowGUI2, On
current := hotkey2
}
return

newhotkey3:
Gui, Submit, Nohide
IfNotEqual, hotkey3
{
Fileatline("settings.ini", hotkey3, 4)
Hotkey,%current3%,ShowGUI, Off
Hotkey,%hotkey3%,ShowGUI, On
current := hotkey3
}
return

newhotkey4:
Gui, Submit, Nohide
IfNotEqual, hotkey4
{
Fileatline("settings.ini", hotkey4, 5)
Hotkey,%current4%,ShowGUI, Off
Hotkey,%hotkey4%,ShowGUI, On
current := hotkey4
}
return

newhotkey5:
Gui, Submit, Nohide
IfNotEqual, hotkey5
{
Fileatline("settings.ini", hotkey5, 6)
Hotkey,%current5%,ShowGUI, Off
Hotkey,%hotkey5%,ShowGUI, On
current := hotkey5
}
return

newhotkey6:
Gui, Submit, Nohide
IfNotEqual, hotkey6
{
Fileatline("settings.ini", hotkey6, 7)
Hotkey,%current6%,ShowGUI, Off
Hotkey,%hotkey6%,ShowGUI, On
current := hotkey6
}
return

newhotkey7:
Gui, Submit, Nohide
IfNotEqual, hotkey7
{
Fileatline("settings.ini", hotkey7, 8)
Hotkey,%current7%,ShowGUI, Off
Hotkey,%hotkey7%,ShowGUI, On
current := hotkey7
}
return

newhotkey8:
Gui, Submit, Nohide
IfNotEqual, hotkey8
{
Fileatline("settings.ini", hotkey8, 9)
Hotkey,%current8%,ShowGUI, Off
Hotkey,%hotkey8%,ShowGUI, On
current := hotkey8
}
return

newhotkey9:
Gui, Submit, Nohide
IfNotEqual, hotkey9
{
Fileatline("settings.ini", hotkey9, 10)
Hotkey,%current9%,ShowGUI, Off
Hotkey,%hotkey9%,ShowGUI, On
current := hotkey9
}
return

newhotkey10:
Gui, Submit, Nohide
IfNotEqual, hotkey10
{
Fileatline("settings.ini", hotkey10, 11)
Hotkey,%current10%,ShowGUI, Off
Hotkey,%hotkey10%,ShowGUI, On
current := hotkey10
}
return

newhotkey11:
Gui, Submit, Nohide
IfNotEqual, hotkey11
{
Fileatline("settings.ini", hotkey11, 12)
Hotkey,%current11%,ShowGUI, Off
Hotkey,%hotkey11%,ShowGUI, On
current := hotkey11
}
return

newhotkey12:
Gui, Submit, Nohide
IfNotEqual, hotkey12
{
Fileatline("settings.ini", hotkey12, 13)
Hotkey,%current12%,ShowGUI, Off
Hotkey,%hotkey12%,ShowGUI, On
current := hotkey12
}
return

newhotkey13:
Gui, Submit, Nohide
IfNotEqual, hotkey13
{
Fileatline("settings.ini", hotkey13, 14)
Hotkey,%current13%,ShowGUI, Off
Hotkey,%hotkey13%,ShowGUI, On
current := hotkey14
}
return

newhotkey14:
Gui, Submit, Nohide
IfNotEqual, hotkey14
{
Fileatline("settings.ini", hotkey14, 15)
Hotkey,%current14%,ShowGUI, Off
Hotkey,%hotkey14%,ShowGUI, On
current := hotkey15
}
return

name1:
Gui, 2:Submit, Nohide
TF_ReplaceLine("!settings.ini",16, 16,namechange1)
return

name2:
Gui, 2:Submit, Nohide
TF_ReplaceLine("!settings.ini",17,17,namechange2)
return

name3:
Gui, 2:Submit, Nohide
TF_ReplaceLine("!settings.ini",18,18,namechange3)
return

name4:
Gui, 2:Submit, Nohide
TF_ReplaceLine("!settings.ini",19,19,namechange4)
return

/*
**********************
Functions
***********************
*/


Browse(site){
RegRead, OutputVar, HKEY_CLASSES_ROOT, http\shell\open\command 
  run,% "iexplore.exe" . " """ . site . """"	;internet explorer
}



Fileatline(file, filecon, number){
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

/*
********************
Button Events
***********************
*/

save:
Reload
return

quit:
exit:
ExitApp
return

linkedin:
home:
mail:
github:
Gui,2:Show, w400 h180,Change URLs
return

about:
MsgBox, 64, About, A mini Shortcut manager designed by `n- Kamal Awasthi`n(http://kamalahktips.blogspot.in/)
return

help:
Browse("http://kamalahktips.blogspot.in/")
ExitApp
return

setting:
MsgBox,Hello
return

short:
MsgBox, 32, Change Shortcut, This Will change the shortcut for 'My Shortcur Manager' ?
GuiControl,3:,hotkey,%current0%
Gui, 3:Show, w400 h200, New Shortcut
return

/*
*****************
Add to Startup
*********************
*/

startup:
FileCreateShortcut,%A_ScriptFullPath%,%A_Startup%/shortcut.lnk
IfExist,%A_Startup%/shortcut.lnk
{
FileDelete,%A_Startup%/shortcut.lnk
FileCreateShortcut,%A_ScriptFullPath%,%A_Startup%/shortcut.lnk
}
return

;************************************************


ShortSave:
Run,shortcut.ahk
Reload
return

/*
*********************
*/

TF_CountLines(Text)
	{ 
 	 TF_GetData(OW, Text, FileName)	 
 	 StringReplace, Text, Text, `n, `n, UseErrorLevel
	 Return ErrorLevel + 1
	}

TF_ReadLines(Text, StartLine = 1, EndLine = 0, Trailing = 0)
	{
	 TF_GetData(OW, Text, FileName)	 
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			OutPut .= A_LoopField "`n"
		 Else if (A_Index => EndLine)
			Break
		}
	 OW = 2 ; make sure we return variable not process file
	 Return TF_ReturnOutPut(OW, OutPut, FileName, Trailing)
	}

TF_ReplaceInLines(Text, StartLine = 1, EndLine = 0, SearchText = "", ReplaceText = "")
	{
 	 TF_GetData(OW, Text, FileName)
	 IfNotInString, Text, %SearchText%
	 	Return Text ; SearchText not in TextFile so return and do nothing, we have to return Text in case of a variable otherwise it would empty the variable contents bug fix 3.3
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
	 	{
		 If A_Index in %TF_MatchList%
			{
			 StringReplace, LoopField, A_LoopField, %SearchText%, %ReplaceText%, All
			 OutPut .= LoopField "`n"
			}
		 Else
			OutPut .= A_LoopField "`n"
		}		
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_Replace(Text, SearchText, ReplaceText="")
	{
	 TF_GetData(OW, Text, FileName)
	 IfNotInString, Text, %SearchText%
	 	Return Text ; SearchText not in TextFile so return and do nothing, we have to return Text in case of a variable otherwise it would empty the variable contents bug fix 3.3
	 Loop
		{
		 StringReplace, Text, Text, %SearchText%, %ReplaceText%, All
		 if (ErrorLevel = 0) ; No more replacements needed.
			break
		}
	 Return TF_ReturnOutPut(OW, Text, FileName, 0)
	}

TF_RegExReplaceInLines(Text, StartLine = 1, EndLine = 0, NeedleRegEx = "", Replacement = "")
	{
	 options:="^[imsxADJUXPS]+\)" ; Hat tip to sinkfaze http://www.autohotkey.com/forum/viewtopic.php?t=60062
	 If RegExMatch(searchText,options,o)
		searchText := RegExReplace(searchText,options,(!InStr(o,"m") ? "m$0" : "$0"))
	 Else searchText := "m)" . searchText
	 TF_GetData(OW, Text, FileName)
		If (RegExMatch(Text, SearchText) < 1)
			Return Text ; SearchText not in TextFile so return and do nothing, we have to return Text in case of a variable otherwise it would empty the variable contents bug fix 3.3

	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			{
			 LoopField := RegExReplace(A_LoopField, NeedleRegEx, Replacement)
			 OutPut .= LoopField "`n"
			}
		 Else
			OutPut .= A_LoopField "`n"
		}
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_RegExReplace(Text, NeedleRegEx = "", Replacement = "")
	{
	 options:="^[imsxADJUXPS]+\)" ; Hat tip to sinkfaze http://www.autohotkey.com/forum/viewtopic.php?t=60062
	 if RegExMatch(searchText,options,o)
		searchText := RegExReplace(searchText,options,(!InStr(o,"m") ? "m$0" : "$0"))
	 else searchText := "m)" . searchText
	 TF_GetData(OW, Text, FileName)
		If (RegExMatch(Text, SearchText) < 1)
			Return Text ; SearchText not in TextFile so return and do nothing, we have to return Text in case of a variable otherwise it would empty the variable contents bug fix 3.3
	 Text := RegExReplace(Text, NeedleRegEx, Replacement)
	 Return TF_ReturnOutPut(OW, Text, FileName, 0)
	}

TF_RemoveLines(Text, StartLine = 1, EndLine = 0)
	{
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			Continue
		 Else
			OutPut .= A_LoopField "`n"
		}
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_RemoveBlankLines(Text, StartLine = 1, EndLine = 0)
	{
	 TF_GetData(OW, Text, FileName)
	 If (RegExMatch(Text, "[\S]+?\r?\n?") < 1)
	 	Return Text ; No empty lines so return and do nothing, we have to return Text in case of a variable otherwise it would empty the variable contents bug fix 3.3
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{ 
		 If A_Index in %TF_MatchList%
			OutPut .= (RegExMatch(A_LoopField,"[\S]+?\r?\n?")) ? A_LoopField "`n" :
		 Else
			OutPut .= A_LoopField "`n"
		}
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_RemoveDuplicateLines(Text, StartLine = 1, Endline = 0, Consecutive = 0, CaseSensitive = false)
	{
	 TF_GetData(OW, Text, FileName)
	 If (StartLine = "")
	 	StartLine = 1
	 If (Endline = 0 OR Endline = "")
	 	EndLine := TF_Count(Text, "`n") + 1
	 Loop, Parse, Text, `n, `r
		{
		 If (A_Index < StartLine)
			Section1 .= A_LoopField "`n"
		 If A_Index between %StartLine% and %Endline%
			{
			 If (Consecutive = 1)
				{
				 If (A_LoopField <> PreviousLine) ; method one for consecutive duplicate lines
					 Section2 .= A_LoopField "`n"
				 PreviousLine:=A_LoopField
				} 
			 Else
				{
				 If !(InStr(SearchForSection2,"__bol__" . A_LoopField . "__eol__",CaseSensitive)) ; not found
				 	{
				 	 SearchForSection2 .= "__bol__" A_LoopField "__eol__" ; this makes it unique otherwise it could be a partial match
					 Section2 .= A_LoopField "`n"
				 	}
				}	 
			}
		 If (A_Index > EndLine)
			Section3 .= A_LoopField "`n"
		}
	 Output .= Section1 Section2 Section3
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_InsertLine(Text, StartLine = 1, Endline = 0, InsertText = "")
	{
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			Output .= InsertText "`n" A_LoopField "`n"
		 Else 
			Output .= A_LoopField "`n"
		}
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_ReplaceLine(Text, StartLine = 1, Endline = 0, ReplaceText = "")
	{
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			Output .= ReplaceText "`n" 
		 Else 
			Output .= A_LoopField "`n"
		}
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_InsertPrefix(Text, StartLine = 1, EndLine = 0, InsertText = "")
	{
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			OutPut .= InsertText A_LoopField "`n"
		 Else
			OutPut .= A_LoopField "`n"
		}
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_InsertSuffix(Text, StartLine = 1, EndLine = 0 , InsertText = "")
	{
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			OutPut .= A_LoopField InsertText "`n"
		 Else
			OutPut .= A_LoopField "`n"
		}
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_TrimLeft(Text, StartLine = 1, EndLine = 0, Count = 1)
	{
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			{
			 StringTrimLeft, StrOutPut, A_LoopField, %Count%
			 OutPut .= StrOutPut "`n"
			}
		 Else
			OutPut .= A_LoopField "`n"
		}
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_TrimRight(Text, StartLine = 1, EndLine = 0, Count = 1)
	{
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			{
			 StringTrimRight, StrOutPut, A_LoopField, %Count%
			 OutPut .= StrOutPut "`n"
			}
		 Else
			OutPut .= A_LoopField "`n"
		}
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_AlignLeft(Text, StartLine = 1, EndLine = 0, Columns = 80, Padding = 0)
	{
	 Trim:=A_AutoTrim ; store trim settings
	 AutoTrim, On ; make sure AutoTrim is on
	 TF_GetData(OW, Text, FileName)
	 If (Endline = 0 OR Endline = "")
		EndLine := TF_Count(Text, "`n") + 1
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			{
			 LoopField = %A_LoopField% ; Make use of AutoTrim, should be faster then a RegExReplace. Trims leading and trailing spaces!
			 SpaceNum := Columns-StrLen(LoopField)-1 
			 If (SpaceNum > 0) and (Padding = 1) ; requires padding + keep padding
				{
				 Left:=TF_SetWidth(LoopField,Columns, 0) ; align left
				 OutPut .= Left "`n"
				}
			 Else 
				OutPut .= LoopField "`n"
			}
		 Else
		 	OutPut .= A_LoopField "`n"
		}
	 AutoTrim, %Trim%	; restore original Trim
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_AlignCenter(Text, StartLine = 1, EndLine = 0, Columns = 80, Padding = 0)
	{
	 Trim:=A_AutoTrim ; store trim settings
	 AutoTrim, On ; make sure AutoTrim is on
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			{
			 LoopField = %A_LoopField% ; Make use of AutoTrim, should be faster then a RegExReplace
			 SpaceNum := (Columns-StrLen(LoopField)-1)/2
			 If (Padding = 1) and (LoopField = "") ; skip empty lines, do not fill with spaces
				{
				 OutPut .= "`n"
				 Continue
				}
			 If (StrLen(LoopField) >= Columns)
				{
				 OutPut .= LoopField "`n" ; add as is 	
				 Continue
				}
			 Centered:=TF_SetWidth(LoopField,Columns, 1) ; align center using set width
			 OutPut .= Centered "`n"
			}
		 Else
			OutPut .= A_LoopField "`n"
		}
	 AutoTrim, %Trim%	; restore original Trim
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_AlignRight(Text, StartLine = 1, EndLine = 0, Columns = 80, Skip = 0)
	{
	 Trim:=A_AutoTrim ; store trim settings
	 AutoTrim, On ; make sure AutoTrim is on
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			{
			 LoopField = %A_LoopField% ; Make use of AutoTrim, should be faster then a RegExReplace
			 If (Skip = 1) and (LoopField = "") ; skip empty lines, do not fill with spaces
				{
				 OutPut .= "`n"
				 Continue
				}
			 If (StrLen(LoopField) >= Columns) 
				{
				 OutPut .= LoopField "`n" ; add as is 	
				 Continue
				}
			 Right:=TF_SetWidth(LoopField,Columns, 2) ; align right using set width
			 OutPut .= Right "`n"
			}
		 Else
			OutPut .= A_LoopField "`n"
		}
	 AutoTrim, %Trim%	; restore original Trim
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

; Based on: CONCATenate text files, ftp://garbo.uwasa.fi/pc/ts/tsfltc22.zip
TF_ConCat(FirstTextFile, SecondTextFile, OutputFile = "", Blanks = 0, FirstPadMargin = 0, SecondPadMargin = 0)
	{
	 If (Blanks > 0)
		Loop, %Blanks%
			InsertBlanks .= A_Space
	 If (FirstPadMargin > 0)
		Loop, %FirstPadMargin%
			PaddingFile1 .= A_Space
	 If (SecondPadMargin > 0)
		Loop, %SecondPadMargin%
	 		PaddingFile2 .= A_Space
	 Text:=FirstTextFile		
	 TF_GetData(OW, Text, FileName)
	 StringSplit, Str1Lines, Text, `n, `r
	 Text:=SecondTextFile
	 TF_GetData(OW, Text, FileName)
	 StringSplit, Str2Lines, Text, `n, `r
	 Text= ; clear mem

	 ; first we need to determine the file with the most lines for our loop
	 If (Str1Lines0 > Str2Lines0)
		MaxLoop:=Str1Lines0
	 Else
		MaxLoop:=Str2Lines0
	 Loop, %MaxLoop%
		{
		 Section1:=Str1Lines%A_Index%
		 Section2:=Str2Lines%A_Index%
		 OutPut .= Section1 PaddingFile1 InsertBlanks Section2 PaddingFile2 "`n"
		 Section1= ; otherwise it will remember the last line from the shortest file or var
		 Section2=
		}
	 OW=1 ; it is probably 0 so in that case it would create _copy, so set it to 1
	 If (OutPutFile = "") ; if OutPutFile is empty return as variable
		OW=2
	 Return TF_ReturnOutPut(OW, OutPut, OutputFile, 1, 1)
	}

TF_LineNumber(Text, Leading = 0, Restart = 0, Char = 0) ; HT ribbet.1
	{
	 global t
	 TF_GetData(OW, Text, FileName)
	 Lines:=TF_Count(Text, "`n") + 1
	 Padding:=StrLen(Lines)
	 If (Leading = 0) and (Char = 0)
		Char := A_Space
	 Loop, %Padding%
		PadLines .= Char
	 Loop, Parse, Text, `n, `r
		{
		 If Restart = 0
			MaxNo = %A_Index%
		 Else
			{
			 MaxNo++
			 If MaxNo > %Restart%
				MaxNo = 1
			}
		 LineNumber:= MaxNo
		 If (Leading = 1)
			{
			 LineNumber := Padlines LineNumber ; add padding
			 StringRight, LineNumber, LineNumber, StrLen(Lines) ; remove excess padding
			}
		 If (Leading = 0)
			{
			 LineNumber := LineNumber Padlines ; add padding
			 StringLeft, LineNumber, LineNumber, StrLen(Lines) ; remove excess padding
			} 
		 OutPut .= LineNumber A_Space A_LoopField "`n"
		}
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

; skip = 1, skip shorter lines (e.g. lines shorter startcolumn position)
; modified in TF 3.4, fixed in 3.5
TF_ColGet(Text, StartLine = 1, EndLine = 0, StartColumn = 1, EndColumn = 1, Skip = 0)
	{ 
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 If (StartColumn < 0)
	 	{
		 StartColumn++
		 Loop, Parse, Text, `n, `r ; parsing file/var
			{
			 If A_Index in %TF_MatchList% 
				{
				 output .= SubStr(A_LoopField,StartColumn) "`n"
				}
			 else
				 output .= A_LoopField "`n"
			}
	 	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	 	}
	 if RegExMatch(StartColumn, ",|\+|-") 
		{
		 StartColumn:=_MakeMatchList(Text, StartColumn, 1, 1)
		 Loop, Parse, Text, `n, `r ; parsing file/var
			{
			 If A_Index in %TF_MatchList% 
				{
				 loop, parse, A_LoopField ; parsing LINE char by char
					{
					 If A_Index in %StartColumn% ; if col in index get char
						output .= A_LoopField
					}
				 output .= "`n"
				}
			 else
				 output .= A_LoopField "`n"
			}
		 output .= A_LoopField "`n"
		}
	 else
		{
		 EndColumn:=(EndColumn+1)-StartColumn
		 Loop, Parse, Text, `n, `r
			{
			 If A_Index in %TF_MatchList%
				{
				 StringMid, Section, A_LoopField, StartColumn, EndColumn
				 If (Skip = 1) and (StrLen(A_LoopField) < StartColumn)
					Continue
				 OutPut .= Section "`n" 
				}
			}
		}	
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

; Based on: COLPUT.EXE & CUT.EXE, ftp://garbo.uwasa.fi/pc/ts/tsfltc22.zip
; modified in TF 3.4
TF_ColPut(Text, Startline = 1, EndLine = 0, StartColumn = 1, InsertText = "", Skip = 0)
	{ 
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 If RegExMatch(StartColumn, ",|\+") 
		{
		 StartColumn:=_MakeMatchList(Text, StartColumn, 0, 1)
		 Loop, Parse, Text, `n, `r ; parsing file/var
			{
			 If A_Index in %TF_MatchList% 
				{
				 loop, parse, A_LoopField ; parsing LINE char by char
					{
					 If A_Index in %StartColumn% ; if col in index insert text
						output .= InsertText A_LoopField
					 Else
						output .= A_LoopField 
					}
				 output .= "`n"
				}
			 else
				 output .= A_LoopField "`n"
			}
		 output .= A_LoopField "`n"
		}
	 else
		{
		 StartColumn--
		 Loop, Parse, Text, `n, `r
			{
			 If A_Index in %TF_MatchList%
				{
				 If (StartColumn > 0)
					{
					 StringLeft, Section1, A_LoopField, StartColumn
					 StringMid, Section2, A_LoopField, StartColumn+1
					 If (Skip = 1) and (StrLen(A_LoopField) < StartColumn)
						OutPut .= Section1 Section2 "`n"
					}
				 Else
					{
					 Section1:=SubStr(A_LoopField, 1, StrLen(A_LoopField) + StartColumn + 1)
					 Section2:=SubStr(A_LoopField, StrLen(A_LoopField) + StartColumn + 2)
					 If (Skip = 1) and (A_LoopField = "")
						OutPut .= Section1 Section2 "`n"
					}
				 OutPut .= Section1 InsertText Section2 "`n"	
				}
			 Else
				OutPut .= A_LoopField "`n"
			}
		}
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

; modified TF 3.4
TF_ColCut(Text, StartLine = 1, EndLine = 0, StartColumn = 1, EndColumn = 1)
	{
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 If RegExMatch(StartColumn, ",|\+|-") 
		{
		 StartColumn:=_MakeMatchList(Text, StartColumn, EndColumn, 1)
		 Loop, Parse, Text, `n, `r ; parsing file/var
			{
			 If A_Index in %TF_MatchList% 
				{
				 loop, parse, A_LoopField ; parsing LINE char by char
					{
					 If A_Index not in %StartColumn% ; if col not in index get char
						output .= A_LoopField
					}
				 output .= "`n"
				}
			 else
				 output .= A_LoopField "`n"
			}
		 output .= A_LoopField "`n"
		}
	 else
		{
		 StartColumn--
		 EndColumn++
		 Loop, Parse, Text, `n, `r
			{
			 If A_Index in %TF_MatchList%
				{
				 StringLeft, Section1, A_LoopField, StartColumn
				 StringMid, Section2, A_LoopField, EndColumn
				 OutPut .= Section1 Section2 "`n"
				}
			 Else
				OutPut .= A_LoopField "`n"
			}
		}	
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_ReverseLines(Text, StartLine = 1, EndLine = 0)
	{
	 TF_GetData(OW, Text, FileName)
	 StringSplit, Line, Text, `n, `r ; line0 is number of lines
	 If (EndLine = 0 OR EndLine = "")
		EndLine:=Line0
	 If (EndLine > Line0)
		EndLine:=Line0
	 CountDown:=EndLine+1
	 Loop, Parse, Text, `n, `r
		{
		 If (A_Index < StartLine)
			Output1 .= A_LoopField "`n" ; section1
	 	 If A_Index between %StartLine% and %Endline%
			{
			 CountDown--
			 Output2 .= Line%CountDown% "`n" section2
			}
		 If (A_Index > EndLine)
			 Output3 .= A_LoopField "`n"
		}
	 OutPut.= Output1 Output2 Output3
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

;TF_SplitFileByLines
;example:
;TF_SplitFileByLines("TestFile.txt", "4", "sfile_", "txt", "1") ; split file every 3 lines
; InFile = 0 skip line e.g. do not include the actual line in any of the output files
; InFile = 1 include line IN current file
; InFile = 2 include line IN next file
TF_SplitFileByLines(Text, SplitAt, Prefix = "file", Extension = "txt", InFile = 1)
	{
	 LineCounter=1
	 FileCounter=1
	 Where:=SplitAt
	 Method=1 
	 ; 1 = default, splitat every X lines, 
	 ; 2 = splitat: - rotating if applicable 
	 ; 3 = splitat: specific lines comma separated
	 TF_GetData(OW, Text, FileName)
	 
	 IfInString, SplitAt, `- ; method 2
		{
		 StringSplit, Split, SplitAt, `-
		 Part=1
		 Where:=Split%Part%
		 Method=2
		} 
	 IfInString, SplitAt, `, ; method 3
		{
		 StringSplit, Split, SplitAt, `,
		 Part=1
		 Where:=Split%Part%
		 Method=3
		} 
	 Loop, Parse, Text, `n, `r
		{
		 OutPut .= A_LoopField "`n"
		 If (LineCounter = Where)
			{
			 If (InFile = 0)
				{
				 StringReplace, CheckOutput, PreviousOutput, `n, , All
				 StringReplace, CheckOutput, CheckOutput, `r, , All
				 If (CheckOutput <> "") and (OW <> 2) ; skip empty files
					TF_ReturnOutPut(1, PreviousOutput, Prefix FileCounter "." Extension, 0, 1) 
				 If (CheckOutput <> "") and (OW = 2) ; skip empty files
					 TF_SetGlobal(Prefix FileCounter,PreviousOutput)
		 		 Output:=
				}
			 If (InFile = 1)
				{
				 StringReplace, CheckOutput, Output, `n, , All
				 StringReplace, CheckOutput, CheckOutput, `r, , All
				 If (CheckOutput <> "") and (OW <> 2) ; skip empty files
				 	 TF_ReturnOutPut(1, Output, Prefix FileCounter "." Extension, 0, 1) 
				 If (CheckOutput <> "") and (OW = 2) ; skip empty files
				 	 TF_SetGlobal(Prefix FileCounter,Output)
				 Output:=
				}
			 If (InFile = 2)
				{
				 OutPut := PreviousOutput
				 StringReplace, CheckOutput, Output, `n, , All
				 StringReplace, CheckOutput, CheckOutput, `r, , All
				 If (CheckOutput <> "") and (OW <> 2) ; skip empty files
					 TF_ReturnOutPut(1, Output, Prefix FileCounter "." Extension, 0, 1) 
				 If (CheckOutput <> "") and (OW = 2) ; output to array
				 	 TF_SetGlobal(Prefix FileCounter,Output)
				 OutPut := A_LoopField "`n"
				}
			 If (Method <> 3)			
				 LineCounter=0 ; reset
			 FileCounter++ ; next file
			 Part++
			 If (Method = 2) ; 2 = splitat: - rotating if applicable 
			 	{
			 If (Part > Split0)
					{
					 Part=1
					}
				 Where:=Split%Part%
				}
			 If (Method = 3) ; 3 = splitat: specific lines comma separated
				{
				 If (Part > Split0)
					Where:=Split%Split0%
				 Else
					Where:=Split%Part%
				}
			}
		 LineCounter++
		 PreviousOutput:=Output
		 PreviousLine:=A_LoopField
		}
	 StringReplace, CheckOutput, Output, `n, , All
	 StringReplace, CheckOutput, CheckOutput, `r, , All
	 If (CheckOutPut <> "") and (OW <> 2) ; skip empty files
		TF_ReturnOutPut(1, Output, Prefix FileCounter "." Extension, 0, 1) 
	 If (CheckOutput <> "") and (OW = 2) ; output to array
		{
		 TF_SetGlobal(Prefix FileCounter,Output)
		 TF_SetGlobal(Prefix . "0" , FileCounter)
		} 
	}

; TF_SplitFileByText("TestFile.txt", "button", "sfile_", "txt") ; split file at every line with button in it, can be regexp
; InFile = 0 skip line e.g. do not include the actual line in any of the output files
; InFile = 1 include line IN current file
; InFile = 2 include line IN next file
TF_SplitFileByText(Text, SplitAt, Prefix = "file", Extension = "txt", InFile = 1)
	{
	 LineCounter=1
	 FileCounter=1
	 TF_GetData(OW, Text, FileName)
	 SplitPath, TextFile,, Dir
	 Loop, Parse, Text, `n, `r
		{
		 OutPut .= A_LoopField "`n"
		 FoundPos:=RegExMatch(A_LoopField, SplitAt)
		 If (FoundPos > 0)
			{
			 If (InFile = 0)
				{
				 StringReplace, CheckOutput, PreviousOutput, `n, , All
				 StringReplace, CheckOutput, CheckOutput, `r, , All
				 If (CheckOutput <> "") and (OW <> 2) ; skip empty files
					TF_ReturnOutPut(1, PreviousOutput, Prefix FileCounter "." Extension, 0, 1) 
				 If (CheckOutput <> "") and (OW = 2) ; output to array
					TF_SetGlobal(Prefix FileCounter,PreviousOutput)
				 Output:=
				}
			 If (InFile = 1)
				{
				 StringReplace, CheckOutput, Output, `n, , All
				 StringReplace, CheckOutput, CheckOutput, `r, , All
				 If (CheckOutput <> "") and (OW <> 2) ; skip empty files
					TF_ReturnOutPut(1, Output, Prefix FileCounter "." Extension, 0, 1) 
				 If (CheckOutput <> "") and (OW = 2) ; output to array
					TF_SetGlobal(Prefix FileCounter,Output)
				 Output:=
				}
			 If (InFile = 2)
				{
				 OutPut := PreviousOutput
				 StringReplace, CheckOutput, Output, `n, , All
				 StringReplace, CheckOutput, CheckOutput, `r, , All
				 If (CheckOutput <> "") and (OW <> 2) ; skip empty files
					TF_ReturnOutPut(1, Output, Prefix FileCounter "." Extension, 0, 1) 
				 If (CheckOutput <> "") and (OW = 2) ; output to array
					TF_SetGlobal(Prefix FileCounter,Output)
				 OutPut := A_LoopField "`n"
				}
		 	 LineCounter=0 ; reset
		 	 FileCounter++ ; next file
			}
		 LineCounter++
		 PreviousOutput:=Output
		 PreviousLine:=A_LoopField
		}
	 StringReplace, CheckOutput, Output, `n, , All
	 StringReplace, CheckOutput, CheckOutput, `r, , All
	 If (CheckOutPut <> "") and (OW <> 2) ; skip empty files
		TF_ReturnOutPut(1, Output, Prefix FileCounter "." Extension, 0, 1) 
	 If (CheckOutput <> "") and (OW = 2) ; output to array
		{
		 TF_SetGlobal(Prefix FileCounter,Output)
		 TF_SetGlobal(Prefix . "0" , FileCounter)
		} 
	}

TF_Find(Text, StartLine = 1, EndLine = 0, SearchText = "", ReturnFirst = 1, ReturnText = 0)
	{
	 options:="^[imsxADJUXPS]+\)"
	 if RegExMatch(searchText,options,o)
		searchText:=RegExReplace(searchText,options,(!InStr(o,"m") ? "m$0(*ANYCRLF)" : "$0"))
	 else searchText:="m)(*ANYCRLF)" searchText
	 options:="^[imsxADJUXPS]+\)" ; Hat tip to sinkfaze, see http://www.autohotkey.com/forum/viewtopic.php?t=60062
	 if RegExMatch(searchText,options,o)
		searchText := RegExReplace(searchText,options,(!InStr(o,"m") ? "m$0" : "$0"))
	 else searchText := "m)" . searchText

	 TF_GetData(OW, Text, FileName)
	 If (RegExMatch(Text, SearchText) < 1)
		Return "0" ; SearchText not in file or error, so do nothing

	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			{
			 If (RegExMatch(A_LoopField, SearchText) > 0)
				{
				 If (ReturnText = 0)
					Lines .= A_Index "," ; line number
				 Else If (ReturnText = 1)
					Lines .= A_LoopField "`n" ; text of line 
				 Else If (ReturnText = 2)
					Lines .= A_Index ": " A_LoopField "`n" ; add line number
				 If (ReturnFirst = 1) ; only return first occurrence
					Break
				}	
			}	
		}
	 If (Lines <> "")
		StringTrimRight, Lines, Lines, 1 ; trim trailing , or `n
	 Else
		Lines = 0 ; make sure we return 0
	 Return Lines
	}

TF_Prepend(File1, File2)
	{
FileList=
(
%File1%
%File2%
)
TF_Merge(FileList,"`n", "!" . File2)
Return
	}

TF_Append(File1, File2)
	{
FileList=
(
%File2%
%File1%
)
TF_Merge(FileList,"`n", "!" . File2)
Return
	}

; For TF_Merge You will need to create a Filelist variable, one file per line,
; to pass on to the function:
; FileList=
; (
; c:\file1.txt
; c:\file2.txt
; )
; use Loop (files & folders) to create one quickly if you want to merge all TXT files for example
;
; Loop, c:\*.txt
;   FileList .= A_LoopFileFullPath "`n"
;
; By default, a new line is used as a separator between two text files
; !merged.txt deletes target file before starting to merge files
TF_Merge(FileList, Separator = "`n", FileName = "merged.txt") 
	{
	 OW=0
	 Loop, Parse, FileList, `n, `r
		{
		 Append2File= ; Just make sure it is empty
		 IfExist, %A_LoopField%
			{
			 FileRead, Append2File, %A_LoopField%
			 If not ErrorLevel ; Successfully loaded
				Output .= Append2File Separator
			}
		}

	 If (SubStr(FileName,1,1)="!") ; check if we want to delete the target file before we start
		{
		 FileName:=SubStr(FileName,2)
		 OW=1	 
		}
	 Return TF_ReturnOutPut(OW, OutPut, FileName, 0, 1)
	}

TF_Wrap(Text, Columns = 80, AllowBreak = 0, StartLine = 1, EndLine = 0)
	{
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 If (AllowBreak = 1)
		Break=
	 Else
		Break=[ \r?\n]
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			{
			 If (StrLen(A_LoopField) > Columns)
				{
				 LoopField := A_LoopField " " ; just seems to work better by adding a space
				 OutPut .= RegExReplace(LoopField, "(.{1," . Columns . "})" . Break , "$1`n")
				}
			 Else
				OutPut .= A_LoopField "`n"
			}	
		 Else
			 OutPut .= A_LoopField "`n"
		}		
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_WhiteSpace(Text, RemoveLeading = 1, RemoveTrailing = 1, StartLine = 1, EndLine = 0) {
	 TF_GetData(OW, Text, FileName)
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; create MatchList
	 Trim:=A_AutoTrim ; store trim settings
	 AutoTrim, On ; make sure AutoTrim is on
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			{
			 If (RemoveLeading = 1) AND (RemoveTrailing = 1)
			 	{
				 LoopField = %A_LoopField%
				 Output .= LoopField "`n"
					 Continue
				}
			 If (RemoveLeading = 1) AND (RemoveTrailing = 0)
				{
				 LoopField := A_LoopField . "."
				 LoopField = %LoopField%
				 StringTrimRight, LoopField, LoopField, 1
				 Output .= LoopField "`n"
					 Continue
				}
			 If (RemoveLeading = 0) AND (RemoveTrailing = 1)
				{
				 LoopField := "." A_LoopField
				 LoopField = %LoopField%
				 StringTrimLeft, LoopField, LoopField, 1
				 Output .= LoopField "`n"
					 Continue
				}
			 If (RemoveLeading = 0) AND (RemoveTrailing = 0)
				{
				 Output .= A_LoopField "`n"
					 Continue
				}
			}
		 Else
			Output .= A_LoopField "`n"
		}
	AutoTrim, %Trim%	; restore original Trim
	Return TF_ReturnOutPut(OW, OutPut, FileName)
}

; Delete lines from file1 in file2 (using StringReplace)
; Partialmatch = 2 added in 3.4
TF_Substract(File1, File2, PartialMatch = 0) {
	Text:=File1
	TF_GetData(OW, Text, FileName)
	Str1:=Text
	Text:=File2
	TF_GetData(OW, Text, FileName)
		OutPut:=Text
	If (OW = 2)
		File1= ; free mem in case of var/text
	OutPut .= "`n" ; just to make sure the StringReplace will work

	If (PartialMatch = 2)
		{
		 Loop, Parse, Str1, `n, `r
			{
			 IfInString, Output, %A_LoopField%
			 	{
				 Output:= RegExReplace(Output, "im)^.*" . A_LoopField . ".*\r?\n?", replace)
			 	}	
			}
		}
	Else If (PartialMatch = 1) ; allow paRTIal match
		{
		 Loop, Parse, Str1, `n, `r
		 	StringReplace, Output, Output, %A_LoopField%, , All ; remove lines from file1 in file2
		}
	Else If (PartialMatch = 0)
		{ 
		 search:="m)^(.*)$"
		 replace=__bol__$1__eol__
		 Output:=RegExReplace(Output, search, replace)
		 StringReplace, Output, Output, `n__eol__,__eol__ , All ; strange fix but seems to be needed.
		 Loop, Parse, Str1, `n, `r
			StringReplace, Output, Output, __bol__%A_LoopField%__eol__, , All ; remove lines from file1 in file2
		}	
	If (PartialMatch = 0)
		{
		 StringReplace, Output, Output, __bol__, , All
		 StringReplace, Output, Output, __eol__, , All
		}
		
	; Remove all blank lines from the text in a variable:
	Loop
		{
		 StringReplace, Output, Output, `r`n`r`n, `r`n, UseErrorLevel
		 if (ErrorLevel = 0) or (ErrorLevel = 1) ; No more replacements needed.
			break
		}	
	Return TF_ReturnOutPut(OW, OutPut, FileName, 0)
}

; Similar to "BK Replace EM" RangeReplace
TF_RangeReplace(Text, SearchTextBegin, SearchTextEnd, ReplaceText = "", CaseSensitive = "False", KeepBegin = 0, KeepEnd = 0)
	{
	 TF_GetData(OW, Text, FileName)
	 IfNotInString, Text, %SearchText%
		Return Text ; SearchTextBegin not in TextFile so return and do nothing, we have to return Text in case of a variable otherwise it would empty the variable contents bug fix 3.3
	 Start = 0
	 End = 0
	 If (KeepBegin = 1)
	 	 KeepBegin:=SearchTextBegin
	 Else
		 KeepBegin=
	 If (KeepEnd = 1)
	 	 KeepEnd:= SearchTextEnd
	 Else
		 KeepEnd=
	 If (SearchTextBegin = "")
	 	 Start=1
	 If (SearchTextEnd = "")
	 	 End=2
	
	 Loop, Parse, Text, `n, `r
		{
		 If (End = 1) ; end has been found already, replacement made simply continue to add all lines
			{
			 Output .= A_LoopField "`n"
				 Continue
			}
		 If (Start = 0) ; start hasn't been found
			{
			 If (InStr(A_LoopField,SearchTextBegin,CaseSensitive)) ; start has been found
				{
				 Start = 1
				 KeepSection := SubStr(A_LoopField, 1, InStr(A_LoopField, SearchTextBegin)-1) 
				 EndSection := SubStr(A_LoopField, InStr(A_LoopField, SearchTextBegin)-1) 
				 ; check if SearchEndText is in second part of line
				 If (InStr(EndSection,SearchTextEnd,CaseSensitive)) ; end found
					{
					 EndSection := ReplaceText KeepEnd SubStr(EndSection, InStr(EndSection, SearchTextEnd) + StrLen(SearchTextEnd) ) "`n"
					 If (End <> 2)	
					 	End=1
					 If (End = 2)	
					 	EndSection=
					}
				 Else
					EndSection=
				 Output .= KeepSection KeepBegin EndSection
				 Continue
				}
			 Else	
				Output .= A_LoopField "`n" ; if not found yet simply add
				}
		 If (Start = 1) and (End <> 2) ; start has been found, now look for end if end isn't an empty string
			{
			 If (InStr(A_LoopField,SearchTextEnd,CaseSensitive)) ; end found
				{
				 End = 1
				 Output .= ReplaceText KeepEnd SubStr(A_LoopField, InStr(A_LoopField, SearchTextEnd) + StrLen(SearchTextEnd) ) "`n"
				}
			}
		} 
	 If (End = 2)	
	 	Output .= ReplaceText
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

; Create file of X lines and Y columns, fill with space or other character(s)
TF_MakeFile(Text, Lines = 1, Columns = 1, Fill = " ")
	{
	 OW=1
	 If (Text = "") ; if OutPutFile is empty return as variable
		OW=2
	 Loop, % Columns
		Cols .= Fill
	 Loop, % Lines
		Output .= Cols "`n"
	 Return TF_ReturnOutPut(OW, OutPut, Text, 1, 1)	
	}

; Convert tabs to spaces, shorthand for TF_ReplaceInLines
TF_Tab2Spaces(Text, TabStop = 4, StartLine = 1, EndLine =0)
	{
	Loop, % TabStop
		Replace .= A_Space
	Return TF_ReplaceInLines(Text, StartLine, EndLine, A_Tab, Replace)
	}

; Convert spaces to tabs, shorthand for TF_ReplaceInLines
TF_Spaces2Tab(Text, TabStop = 4, StartLine = 1, EndLine =0)
	{
	Loop, % TabStop
		Replace .= A_Space
	Return TF_ReplaceInLines(Text, StartLine, EndLine, Replace, A_Tab)
	}

; Sort (section of) a text file
TF_Sort(Text, SortOptions = "", StartLine = 1, EndLine = 0) ; use the SORT options http://www.autohotkey.com/docs/commands/Sort.htm
	{
	 TF_GetData(OW, Text, FileName)
	 If StartLine contains -,+,`, ; no sections, incremental or multiple line input
		Return
	 If (StartLine = 1) and (Endline = 0) ; process entire file
		{
		 Output:=Text
		 Sort, Output, %SortOptions%
		}
	 Else
		{
		 Output := TF_ReadLines(Text, 1, StartLine-1) ; get first section
		 ToSort := TF_ReadLines(Text, StartLine, EndLine) ; get section to sort
		 Sort, ToSort, %SortOptions%
		 OutPut .= ToSort
		 OutPut .= TF_ReadLines(Text, EndLine+1) ; append last section
		} 
	 Return TF_ReturnOutPut(OW, OutPut, FileName)
	}

TF_Tail(Text, Lines = 1, RemoveTrailing = 0, ReturnEmpty = 1)
	{
	 TF_GetData(OW, Text, FileName)
	 Neg = 0
	 If (Lines < 0)
		{
		 Neg=1
		 Lines:= Lines * -1
		}
	 If (ReturnEmpty = 0) ; remove blank lines first so we can't return any blank lines anyway
		{
		 Loop, Parse, Text, `n, `r
			OutPut .= (RegExMatch(A_LoopField,"[\S]+?\r?\n?")) ? A_LoopField "`n" :
		 StringTrimRight, OutPut, OutPut, 1 ; remove trailing `n added by loop above
		 Text:=OutPut
		 OutPut=
	}
	 If (Neg = 1) ; get only one line!
		{ 
		 Lines++
		 Output:=Text
		 StringGetPos, Pos, Output, `n, R%Lines% ; These next two Lines by Tuncay see
		 StringTrimLeft, Output, Output, % ++Pos ; http://www.autoHotkey.com/forum/viewtopic.php?p=262375#262375
		 StringGetPos, Pos, Output, `n
		 StringLeft, Output, Output, % Pos
		 Output .= "`n"
		}
	 Else
		{
		 Output:=Text
		 StringGetPos, Pos, Output, `n, R%Lines% ; These next two Lines by Tuncay see
		 StringTrimLeft, Output, Output, % ++Pos ; http://www.autoHotkey.com/forum/viewtopic.php?p=262375#262375
		 Output .= "`n"
		}
	 OW = 2 ; make sure we return variable not process file
	 Return TF_ReturnOutPut(OW, OutPut, FileName, RemoveTrailing)
	}

TF_Count(String, Char)
	{
	StringReplace, String, String, %Char%,, UseErrorLevel
	Return ErrorLevel
	}

TF_Save(Text, FileName, OverWrite = 1) { ; HugoV write file
	Return TF_ReturnOutPut(OverWrite, Text, FileName, 0, 1)
	}

TF(TextFile, CreateGlobalVar = "T") { ; read contents of file in output and %output% as global var ...  http://www.autohotkey.com/forum/viewtopic.php?p=313120#313120
	 global
	 FileRead, %CreateGlobalVar%, %TextFile%
	 Return, (%CreateGlobalVar%)
	}

; TF_Join
; SmartJoin: Detect if CHAR(s) is/are already present at the end of the line before joining the next, this to prevent unnecessary double spaces for example.
; Char: character(s) to use between new lines, defaults to a space. To use nothing use ""
TF_Join(Text, StartLine = 1, EndLine = 0, SmartJoin = 0, Char = 0)
	{
	 If ( (InStr(StartLine,",") > 0) AND (InStr(StartLine,"-") = 0) ) OR (InStr(StartLine,"+") > 0)
		Return Text ; can't do multiplelines, only multiple sections of lines e.g. "1,5" bad "1-5,15-10" good, "2+2" also bad
	 TF_GetData(OW, Text, FileName) 
	 If (InStr(Text,"`n") = 0)
		Return Text ; there are no lines to join so just return Text
	 If (InStr(StartLine,"-") > 0)	; OK, we need some counter-intuitive string mashing to substract ONE from the "endline" parameter
		{
		 Loop, Parse, StartLine, CSV
			{
			 StringSplit, part, A_LoopField, -
			 NewStartLine .= part1 "-" (part2-1) ","
			}
		 StringTrimRight, StartLine, NewStartLine, 1
		}		
	 If (Endline > 0)
		Endline-- 
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc)
	 If (Char = 0)
		Char:=A_Space
	 Char_Org:=Char
	 GetRightLen:=StrLen(Char)-1
	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			{
			 If (SmartJoin = 1)
				{
				 GetRightText:=SubStr(A_LoopField,0)
				 If (GetRightText = Char)
					Char=
				}
			 Output .= A_LoopField Char
			 Char:=Char_Org
			}
		 Else 
			Output .= A_LoopField "`n"
		}
	 Return TF_ReturnOutPut(OW, OutPut, FileName) 
	}

;----- Helper functions ----------------
	
TF_SetGlobal(var, content = "") ; helper function for TF_Split* to return array and not files, credits Tuncay :-)
	{
	 global
	 %var% := content
	}
	
; Helper function to determine if VAR/TEXT or FILE is passed to TF
; Update 11 January 2010 (skip filecheck if `n in Text -> can't be file)
TF_GetData(byref OW, byref Text, byref FileName) 
	{
	 If (text = 0) ; v3.6 
		{
		 MsgBox, 48, TF Lib Error, % "Read Error:`npossible reason: perhaps you used ! vs ""!"" ?"
		 ExitApp
		}
	 OW=0 ; default setting: asume it is a file and create file_copy
	 IfNotInString, Text, `n ; it can be a file as the Text doesn't contact a newline character
		{
		 If (SubStr(Text,1,1)="!") ; first we check for "overwrite" 
			{
			 Text:=SubStr(Text,2)
			 OW=1 ; overwrite file (if it is a file)
			} 
		 IfNotExist, %Text% ; now we can check if the file exists, it doesn't so it is a var
			{
			 If (OW=1) ; the variable started with a ! so we need to put it back because it is variable/text not a file
				Text:= "!" . Text
			 OW=2 ; no file, so it is a var or Text passed on directly to TF
			}
		}
	 Else ; there is a newline character in Text so it has to be a variable 
		{
		 OW=2
		}
	 If (OW = 0) or (OW = 1) ; it is a file, so we have to read into var Text
		{
		 Text := (SubStr(Text,1,1)="!") ? (SubStr(Text,2)) : Text
		 FileName=%Text% ; Store FileName
		 FileRead, Text, %Text% ; Read file and return as var Text
		 If (ErrorLevel > 0)
			{
			 MsgBox, 48, TF Lib Error, % "Can not read " FileName
			 ExitApp
			}
		}
	 Return
	}
	
; Skan - http://www.autohotkey.com/forum/viewtopic.php?p=45880#45880
; SetWidth() : SetWidth increases a String's length by adding spaces to it and aligns it Left/Center/Right. ( Requires Space() ) 
TF_SetWidth(Text,Width,AlignText)
	{
	 If (AlignText!=0 and AlignText!=1 and AlignText!=2)
		AlignText=0
	 If AlignText=0
		{
		 RetStr= % (Text)TF_Space(Width)
		 StringLeft, RetText, RetText, %Width%
		}
	 If AlignText=1 
		{
		 Spaces:=(Width-(StrLen(Text)))
		 RetStr= % TF_Space(Round(Spaces/2))(Text)TF_Space(Spaces-(Round(Spaces/2)))
		}
	 If AlignText=2
		{
		 RetStr= % TF_Space(Width)(Text)
		 StringRight, RetStr, RetStr, %Width%
		}
	 Return RetStr
	}

; Skan - http://www.autohotkey.com/forum/viewtopic.php?p=45880#45880
TF_Space(Width)
	{
	 Loop,%Width%
	 	Space=% Space Chr(32)
	 Return Space
	}

; Write to file or return variable depending on input
TF_ReturnOutPut(OW, Text, FileName, TrimTrailing = 1, CreateNewFile = 0) {
	If (OW = 0) ; input was file, file_copy will be created, if it already exist file_copy will be overwritten
		{
		 IfNotExist, % FileName ; check if file Exist, if not return otherwise it would create an empty file. Thanks for the idea Murp|e
			{
			 If (CreateNewFile = 1) ; CreateNewFile used for TF_SplitFileBy* and others
				{
				 OW = 1 
				 Goto CreateNewFile
				}
			 Else 
				Return
			}
		 If (TrimTrailing = 1)
			 StringTrimRight, Text, Text, 1 ; remove trailing `n
		 SplitPath, FileName,, Dir, Ext, Name
		 If (Dir = "") ; if Dir is empty Text & script are in same directory
			Dir := A_WorkingDir
		 IfExist, % Dir "\backup" ; if there is a backup dir, copy original file there
			FileCopy, % Dir "\" Name "_copy." Ext, % Dir "\backup\" Name "_copy.bak", 1
		 FileDelete, % Dir "\" Name "_copy." Ext
		 FileAppend, %Text%, % Dir "\" Name "_copy." Ext
		 Return Errorlevel ? False : True
		}
	 CreateNewFile:	
	 If (OW = 1) ; input was file, will be overwritten by output 
		{
		 IfNotExist, % FileName ; check if file Exist, if not return otherwise it would create an empty file. Thanks for the idea Murp|e
			{
			If (CreateNewFile = 0) ; CreateNewFile used for TF_SplitFileBy* and others
				Return
			}
		 If (TrimTrailing = 1)
			 StringTrimRight, Text, Text, 1 ; remove trailing `n
		 SplitPath, FileName,, Dir, Ext, Name
		 If (Dir = "") ; if Dir is empty Text & script are in same directory
			Dir := A_WorkingDir
		 IfExist, % Dir "\backup" ; if there is a backup dir, copy original file there
			FileCopy, % Dir "\" Name "." Ext, % Dir "\backup\" Name ".bak", 1
		 FileDelete, % Dir "\" Name "." Ext
		 FileAppend, %Text%, % Dir "\" Name "." Ext
		 Return Errorlevel ? False : True
		}
	If (OW = 2) ; input was var, return variable 
		{
		 If (TrimTrailing = 1)
			StringTrimRight, Text, Text, 1 ; remove trailing `n
		 Return Text
		}
	}

; _MakeMatchList()
; Purpose:
; Make a MatchList which is used in various functions
; Using a MatchList gives greater flexibility so you can process multiple
; sections of lines in one go avoiding repetitive fileread/append actions
; For TF 3.4 added COL = 0/1 option (for TF_Col* functions) and CallFunc for
; all TF_* functions to facilitate bug tracking
_MakeMatchList(Text, Start = 1, End = 0, Col = 0, CallFunc = "Not available")
	{
	 ErrorList=
	 (join|
Error 01: Invalid StartLine parameter (non numerical character)`nFunction used: %CallFunc%
Error 02: Invalid EndLine parameter (non numerical character)`nFunction used: %CallFunc%
Error 03: Invalid StartLine parameter (only one + allowed)`nFunction used: %CallFunc%
	 )
	 StringSplit, ErrorMessage, ErrorList, |
	 Error = 0

	 If (Col = 1)
		{
		 LongestLine:=TF_Stat(Text)
		 If (End > LongestLine) or (End = 1) ; FIXITHERE BUG
			End:=LongestLine
		}

	 TF_MatchList= ; just to be sure
	 If (Start = 0 or Start = "")
		Start = 1
		
	 ; some basic error checking

	 ; error: only digits - and + allowed
	 If (RegExReplace(Start, "[ 0-9+\-\,]", "") <> "")
		 Error = 1
		 
	 If (RegExReplace(End, "[0-9 ]", "") <> "")
		 Error = 2

	 ; error: only one + allowed
	 If (TF_Count(Start,"+") > 1)
		 Error = 3

	 If (Error > 0 )
		{
		 MsgBox, 48, TF Lib Error, % ErrorMessage%Error%
		 ExitApp
		}

	 ; Option #0 [ added 30-Oct-2010 ]
	 ; Startline has negative value so process X last lines of file
	 ; endline parameter ignored 

	 If (Start < 0) ; remove last X lines from file, endline parameter ignored
		{
		 Start:=TF_CountLines(Text) + Start + 1
		 End=0 ; now continue
		}

	 ; Option #1
	 ; StartLine has + character indicating startline + incremental processing. 
	 ; EndLine will be used
	 ; Make TF_MatchList

	 IfInString, Start, `+ 
		{
		 If (End = 0 or End = "") ; determine number of lines
			End:= TF_Count(Text, "`n") + 1
		 StringSplit, Section, Start, `, ; we need to create a new "TF_MatchList" so we split by ,
		 Loop, %Section0%
			{
			 StringSplit, SectionLines, Section%A_Index%, `+
			 LoopSection:=End + 1 - SectionLines1
			 Counter=0
			 	 TF_MatchList .= SectionLines1 ","
			 Loop, %LoopSection%
				{
				 If (A_Index >= End) ; 
					Break
				 If (Counter = (SectionLines2-1)) ; counter is smaller than the incremental value so skip
					{
					 TF_MatchList .= (SectionLines1 + A_Index) ","
					 Counter=0
					}
				 Else
					Counter++
				}
			}
		 StringTrimRight, TF_MatchList, TF_MatchList, 1 ; remove trailing , 
		 Return TF_MatchList
		}

	 ; Option #2
	 ; StartLine has - character indicating from-to, COULD be multiple sections. 
	 ; EndLine will be ignored
	 ; Make TF_MatchList

	 IfInString, Start, `-
		{
		 StringSplit, Section, Start, `, ; we need to create a new "TF_MatchList" so we split by ,
		 Loop, %Section0%
			{
			 StringSplit, SectionLines, Section%A_Index%, `-
			 LoopSection:=SectionLines2 + 1 - SectionLines1
			 Loop, %LoopSection%
				{
				 TF_MatchList .= (SectionLines1 - 1 + A_Index) ","
				}
			}
		 StringTrimRight, TF_MatchList, TF_MatchList, 1 ; remove trailing ,
		 Return TF_MatchList
		}

	 ; Option #3
	 ; StartLine has comma indicating multiple lines. 
	 ; EndLine will be ignored
	 
	 IfInString, Start, `,
		{
		 TF_MatchList:=Start
		 Return TF_MatchList
		}

	 ; Option #4
	 ; parameters passed on as StartLine, EndLine. 
	 ; Make TF_MatchList from StartLine to EndLine

	 If (End = 0 or End = "") ; determine number of lines
			End:= TF_Count(Text, "`n") + 1
	 LoopTimes:=End-Start
	 Loop, %LoopTimes%
		{
		 TF_MatchList .= (Start - 1 + A_Index) ","
		}
	 TF_MatchList .= End ","
	 StringTrimRight, TF_MatchList, TF_MatchList, 1 ; remove trailing ,
	 Return TF_MatchList
	}

; added for TF 3.4 col functions - currently only gets longest line may change in future
TF_Stat(Text)
	{ 
	 TF_GetData(OW, Text, FileName)	 
	 Sort, Text, f _AscendingLinesL
	 Pos:=InStr(Text,"`n")-1
	 Return pos
	}

_AscendingLinesL(a1, a2) ; used by TF_Stat
	{
	 Return StrLen(a2) - StrLen(a1)
	}

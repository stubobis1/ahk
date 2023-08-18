#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#ifWinActive, StarCraft II ahk_class StarCraft II
;space::MsgBox You pressed Win+Spacebar in Notepad.
MButton::NumpadDiv
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force




SetTitleMatchMode, 2
CoordMode, Mouse, Screen

tt = Path of Exile ahk_class POEWindowClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%






NumpadDot::ResetInstance()



ResetInstance(){
    Sleep, 343
    MouseClick, L, 962, 501
    Sleep, 578
    Send, {Ctrl down}
    Sleep, 125
    MouseClick, L, 276, 279
    Sleep, 125
    Sleep, 477
    MouseClick, L, 446, 332
    Send, {Ctrl up}
    Sleep, 1000
}

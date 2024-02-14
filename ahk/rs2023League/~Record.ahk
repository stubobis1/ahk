
Loop, 100000
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = RuneLite ahk_class SunAwtFrame
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 359

MouseClick, L, 1220, 699

Sleep, 120000

}

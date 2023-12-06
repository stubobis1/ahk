
Loop, 10000
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = RuneLite ahk_class SunAwtFrame
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 297

MouseClick, L, 1095, 915

Sleep, 344

MouseClick, L, 1023, 743

Sleep, 2125

MouseClick, L, 1023, 743

Sleep, 1000

}

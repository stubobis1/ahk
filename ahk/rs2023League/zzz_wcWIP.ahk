
Loop, 1
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = ahk ahk_class CabinetWClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 406

MouseClick, L, 308, 861

tt = RuneLite ahk_class SunAwtFrame
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 9610

MouseClick, L, 876, 737

Sleep, 9797

MouseClick, L, 788, 600

Sleep, 7422

MouseClick, L, 914, 714

Sleep, 13282

MouseClick, L, 1195, 974

Sleep, 7328

MouseClick, L, 1922, 760

Sleep, 10704

MouseClick, L, 1805, 602

Sleep, 9828

MouseClick, L, 1141, 451

Sleep, 5453

MouseClick, L, 1139, 488

Sleep, 1000

}

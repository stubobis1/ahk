


global lookforcolor:= 0xff6901

global LeftSearchArea := 0
global TopSearchArea := 0


global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight

randDefaultMouseSpeed(minMouseSpeed, maxMouseSpeed)
{
    Random, rand, %minMouseSpeed%, %maxMouseSpeed%
    SetDefaultMouseSpeed, rand
}

LRndClickWithSleep(x,y,maxSleep){
    randDefaultMouseSpeed(1, 3)
    Random, sleepamt, % maxSleep - 150, % maxSleep + 15

    Random, xrand, 0, 10
    Random, yrand, 0, 10
    MouseClick, L, % x + xrand, % y + yrand

    Sleep, %sleepamt%
}


Loop, 1
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = RuneLite ahk_class SunAwtFrame
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 625

MouseClick, L, 94, 106

Sleep, 828

MouseClick, L, 146, 110

Sleep, 1297

Send, {Blind}{Escape}

Sleep, 688

MouseClick, L, 719, 617

Sleep, 4422

MouseClick, L, 673, 516

Sleep, 1313

Send, {Blind}o

Sleep, 1484

MouseClick, L, 425, 318

Sleep, 152485

MouseClick, L, 592, 404

Sleep, 4469

Send, {Blind}o

MouseClick, L, 500, 68

Sleep, 7016

MouseClick, L, 634, 402

Sleep, 1000

}

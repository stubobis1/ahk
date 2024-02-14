;temp range training





global lookforcolor:= 0xff6901


CoordMode, Mouse, Window

global minMouseSpeed := 2
global maxMouseSpeed := 4

global minRandShortSleep := 1000
global maxRandShortSleep := 2000

global minRandLongSleep := 3000
global maxRandLongSleep := 12000


global loopTimer := 50
global loopAmt := 2000


global LeftSearchArea := 0
global TopSearchArea := 0


global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight

SetDefaultMouseSpeed, 2

global imgInvOff        := % A_ScriptDir . "\rslib\img\invOff.png"
global imgChisel        := % A_ScriptDir . "\rslib\img\chisel.png"
global imgAmethyst      := % A_ScriptDir . "\rslib\img\amethyst.png"
global imgUncutSapphire := % A_ScriptDir . "\rslib\img\uncutSapphire.png"
global imgUncutEmerald  := % A_ScriptDir . "\rslib\img\uncutEmerald.png"
global imgUncutRuby     := % A_ScriptDir . "\rslib\img\uncutRuby.png"
global imgBankersNote   := % A_ScriptDir . "\rslib\img\bankersNote.png"
global imgCoinPouch     := % A_ScriptDir . "\rslib\img\coinPouch.png"



ActivateWin(){
    SetTitleMatchMode, 2
    CoordMode, Mouse, Window
    tt = RuneLite ahk_class SunAwtFrame
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%
}
mouseSpeed()
{
    SetDefaultMouseSpeed, rand(minMouseSpeed,maxMouseSpeed)
}

OpenInv()
{
    
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgInvOff%
    if ErrorLevel
    {
        return false
    }
    else
    {
        MouseClick, L,  % x + rand(5,10), % y + rand(5,10)
        return true
    }
}

rand(min, max)

{
	random, ran, %min%, %max%
	return ran
}
 
randLongSleep()
{
	Sleep, % rand(minRandLongSleep,maxRandLongSleep)
}
 
randShortSleep()
{
	Sleep, % rand(minRandShortSleep,maxRandShortSleep)
}


; alt and p to test clicking on Pixel
!p::ClickOnPixel(lookforcolor)
ClickOnPixel(color)
{
    randShortSleep()
    PixelSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, color, 2, fast RGB
    if ErrorLevel
    {
        return false
    }
    else
    {
        MouseClick, L, x + rand(0,3),  y + rand(10,20),, % mouseSpeed()       
        return true
    }
}

;==========================================
Loop, 1
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = RuneLite ahk_class SunAwtFrame
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 766

MouseClick, L, 1148, 999

Sleep, 3282

MouseClick, L, 1144, 442

Sleep, 4578

Send, {Blind}u

Sleep, 1422

MouseClick, L, 544, 714

Sleep, 5594

MouseClick, L, 1708, 712

Sleep, 6125

Send, {Blind}u

Sleep, 1704

MouseClick, L, 1146, 545

Sleep, 2718

MouseClick, L, 1149, 872

Sleep, 3156

Send, {Blind}u

Sleep, 1000

}

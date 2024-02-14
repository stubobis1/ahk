; Mine and cut amathyst


; find color
; click color if different
; click chisel
; click amathyst
; spacebar

; drop gems ?




; Highlight the IRON with this hex color #03F9F8

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

global lookforcolor:= 0x03F9F8


CoordMode, Mouse, Window

global minMouseSpeed := 5
global maxMouseSpeed := 15

global minRandShortSleep := 1000
global maxRandShortSleep := 2000

global minRandLongSleep := 60000
global maxRandLongSleep := 69000


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


; Start the loop
s::StartLoop()
StartLoop(){
	MsgBox, "start run"
	Loop, %loopAmt%
	{
        ActivateWin()
        mouseSpeed()
		CraftInv()
        ClickOnPixel(lookforcolor)
		randLongSleep()
	}
}




; alt and p to test clicking on Pixel
;!p::ClickOnPixel(lookforcolor)
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
		
        MouseClick, L, x + rand(0,3),  y + rand(10,50)     
        return true
    }
	
}

!c::CraftInv()
CraftInv()
{
    OpenInv()
	while(!OpenCoin())
	{
		randShortSleep()
	}
}



!p::OpenCoin()
OpenCoin()
{
   ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgCoinPouch%
    if ErrorLevel
    {
        return False
    }
    else
    {
        MouseClick, L,  % x + rand(5,10), % y + rand(5,10)
        return True
    }
}


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


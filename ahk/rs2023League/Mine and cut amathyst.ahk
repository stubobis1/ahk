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

global minRandShortSleep := 200
global maxRandShortSleep := 600

global minRandLongSleep := 5000
global maxRandLongSleep := 15000


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


; Start the loop
!s::StartLoop()
StartLoop(){
	MsgBox, "start run"
	Loop, %loopAmt%
	{
        ActivateWin()
        mouseSpeed()
		CraftInv()
        ClickOnPixel(lookforcolor)
		Loop, % rand(15, 25)
		{
			if (!ClickOnPixel(lookforcolor))
			{
				CraftInv()
			}
			randLongSleep()
		}
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
    DropGems()
	if (FindAmathyst() && FindAndClickChisel())
    {
        randShortSleep()
        if(FindAndClickAmathyst())
        {
            randShortSleep()
            Sleep, 1000
            Send, {Blind}{Space}
            Sleep, 8000
            randLongSleep()
            return True
        }
    }
    return False
}



FindAndClickChisel()
{
    
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgChisel%
    if ErrorLevel
    {
        ToolTip, no Chisel found, 0, 0
        return false
    }
    else
    {
        MouseClick, L,  % x + rand(5,10), % y + rand(5,10)
        return true
    }
}

;!p::FindAndClickAmathyst()
FindAndClickAmathyst()
{
    
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgAmethyst%
    if ErrorLevel
    {
        ToolTip, no amathyst found, 0 , 0
        return False
    }
    else
    {
        MouseClick, L,  % x + rand(5,10), % y + rand(5,10)
        return True
    }
}

FindAmathyst()
{
    
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgAmethyst%
    if ErrorLevel
    {
        return False
    }
    else
    {
      
        return True
    }
}


!p::DropGems()
DropGems()
{
    while (DropSapphire()) 
	{
	}
    while (DropEmerald())  
	{
	}
    while (DropRuby())  
	{
	}
}
DropSapphire() {
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgUncutSapphire%
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

DropEmerald() {
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgUncutEmerald%
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

DropRuby() {
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgUncutRuby%
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
	Sleep, % rand(minRandShortSleep,minRandShortSleep)
}


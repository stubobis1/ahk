;league buy craft emerald





global lookforcolor:= 0xff6901


CoordMode, Mouse, Window

global minMouseSpeed := 3
global maxMouseSpeed := 4

global minRandShortSleep := 200
global maxRandShortSleep := 600

global minRandLongSleep := 500
global maxRandLongSleep := 1000


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
global imgCutEmerald    := % A_ScriptDir . "\rslib\img\cutEmerald.png"
global imgInvEmerald    := % A_ScriptDir . "\rslib\img\invEmerald.png.png"
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
        MouseClick, L, x + rand(0,3),  y + rand(10,20)
        return true
    }
}

;==========================================


; Start the loop
!s::StartLoop()
StartLoop(){
	MsgBox, "start run"
	
	Loop, %loopAmt%
	{
		ActivateWin()
        mouseSpeed()

        ClickOnPixel(lookforcolor)
        Sleep, 600
        Loop, 2
        {
        randShortSleep()
        }
        

        MouseClick, L, 2116, 1155
        randShortSleep()

        
        ClickOnUncutEmerald26Times()
            
        
        randShortSleep()

        Send, {Blind}{Escape}
        randShortSleep()
        OpenInv()
        ClickOnChisel()
        randShortSleep()

        ClickOnUncutEmerald()
        randShortSleep()
        Sleep, 500
        
        ToolTip, Space, 0,0
        Send, {Blind}{Space}
        Sleep, 1200
        randShortSleep()
	}
}




ClickOnUncutEmerald()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgUncutEmerald%
    if ErrorLevel
    {
        ToolTip, no uncut emerald!, 0,0
        return false
    }
    else
    {
        MouseClick, L,  x + rand(5,10),y + rand(5,10)
        return true
    }
}

ClickOnUncutEmerald26Times()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgUncutEmerald%
    if ErrorLevel
    {
        ToolTip, no uncut emerald!, 0,0
        return false
    }
    else
    {
        Loop, % rand(25, 28)
        {
        MouseClick, L,  x + rand(5,10),y + rand(5,10)
        }
        return true
    }
}
ClickOnCutEmerald()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *150 %imgInvEmerald%
    if ErrorLevel
    {
        ToolTip, no cut inv emerald!, 0,0
        return false
    }
    else
    {
        MouseClick, L,  x + rand(5,10),y + rand(20,25)
        return true
    }
}
ClickOnChisel()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgChisel%
    if ErrorLevel
    {
        ToolTip, no chisel!, 0,0
        return false
    }
    else
    {
        MouseClick, L,  x + rand(5,10),y + rand(5,10)
        return true
    }
}

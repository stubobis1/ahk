;league power iron





global lookforcolor:= 0xff6901


CoordMode, Mouse, Window

global minMouseSpeed := 2
global maxMouseSpeed := 4

global minRandShortSleep := 200
global maxRandShortSleep := 1000

global minRandLongSleep := 500
global maxRandLongSleep := 1000


global loopTimer := 50
global loopAmt := 2000


global LeftSearchArea := 0
global TopSearchArea := 0


global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight

SetDefaultMouseSpeed, 2

global imgInvOff          := % A_ScriptDir . "\rslib\img\invOff.png"

global imgChisel          := % A_ScriptDir . "\rslib\img\chisel.png"
global imgAmethyst        := % A_ScriptDir . "\rslib\img\amethyst.png"
global imgUncutSapphire   := % A_ScriptDir . "\rslib\img\uncutSapphire.png"
global imgUncutEmerald    := % A_ScriptDir . "\rslib\img\uncutEmerald.png"
global imgUncutRuby       := % A_ScriptDir . "\rslib\img\uncutRuby.png"

global imgCoinPouch       := % A_ScriptDir . "\rslib\img\coinPouch.png"

global imgBankersNote     := % A_ScriptDir . "\rslib\img\bankersNote.png"

global imgcookedSwordfish := % A_ScriptDir . "\rslib\img\cookedSwordfish.png"
global imgcookedTuna      := % A_ScriptDir . "\rslib\img\cookedTuna.png"
global imgcookedShark     := % A_ScriptDir . "\rslib\img\cookedShark.png"


global imgRuniteBar       := % A_ScriptDir . "\rslib\img\runiteBar.png"
global imgAmantiteBar     := % A_ScriptDir . "\rslib\img\adamantiteBar.png"
global imgMithrilBar      := % A_ScriptDir . "\rslib\img\mithrilBar.png"
global imgSteelBar        := % A_ScriptDir . "\rslib\img\steelBar.png"


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

findAndClickOnImg(searchImg)
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %searchImg%
    if (ErrorLevel = 1)
    {
        ToolTip, %searchImg% . not found, 0, 50,
        return false
    }
    else if (ErrorLevel = 2)
    {
        ToolTip, PROBLEM WITH %searchImg%, 0, 150,
        return false
    }
    else
    {
        MouseClick, L,  x + rand(5,10),y + rand(5,10)
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

		DropInv()
		Loop, % rand(20, 30)
		{
			mouseSpeed()
			if (!ClickOnPixel(lookforcolor))
			{
				DropInv()
                ChangeWorld()
			}
			randLongSleep()
		}
	}
}







; alt and c to drop logs from inv
!c::DropInv()
DropInv()
{
    OpenInv()
    randShortSleep()
    if( findAndClickOnImg( imgRuniteBar )) {
        randShortSleep()
        BankNote()
        randShortSleep()
    }

    if( findAndClickOnImg( imgAmantiteBar )) {
        randShortSleep()
        BankNote()
        randShortSleep()
    }

    if( findAndClickOnImg( imgMithrilBar )) {
        randShortSleep()
        BankNote()
        randShortSleep()
    }

    if( findAndClickOnImg( imgSteelBar )) {
        randShortSleep()
        BankNote()
        randShortSleep()
    }
}

!l::BankNote()
BankNote(){
	ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgBankersNote%
    if ErrorLevel
    {
        return false
    }
    else
    {
        MouseClick, L,  x + rand(5,10),y + rand(5,10),, % mouseSpeed()
        return true
    }
    if(rand(0,8) == 1)
    {
        ChangeWorld()
    }
}

ChangeWorld(){
    
Loop, 1
{

Sleep, 672

Send, {Blind}{Ctrl Down}{Shift Down}{Right}{Shift Up}{Ctrl Up}

Sleep, 4203

Send, {Blind}{Space}

Sleep, 1000

}

}

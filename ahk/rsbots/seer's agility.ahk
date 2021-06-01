
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
;SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, Force

CoordMode, Mouse, Screen
CoordMode, Pixel, Screen



global minMouseSpeed:= 3
global maxMouseSpeed:= 10

global minRandWait := 50
global maxRandWait := 10000
global loopTimer := 50

global loopAmt := 20000
global ShouldRun:= false

global LeftSearchArea := 0
global TopSearchArea := 0


global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight

global AgilityColor:= 0x00FF00


Loop, 1
{
	times := loopAmt
	While times > 0
	{
		if(ShouldRun)
		{
			times := times - 1
			Sleep, 273

			MouseClick, L, 1592, 823,, % mouseSpeed()

			Sleep, 1375
			Sleep, 1375

			;MouseClick, L, 1052, 372,, % mouseSpeed()
			ClickOnPixelOffset(AgilityColor, 0, 15, 120, 830, 1350, 390)

			Sleep, 3304
			Sleep, 3304

			MouseClick, L, 412, 459,, % mouseSpeed()

			Sleep, 3742
			Sleep, 3742

			MouseClick, L, 606, 822,, % mouseSpeed()

			Sleep, 4289
			Sleep, 4289

			MouseClick, L, 873, 864,, % mouseSpeed()

			Sleep, 2593
			Sleep, 2593

			MouseClick, L, 316, 647,, % mouseSpeed()

			Sleep, 2789
			Sleep, 2789

			MouseClick, L, 885, 575,, % mouseSpeed()

			Sleep, 1000
			Sleep, 1000
		}
	}
}


!l::ClickOnPixelOffset(AgilityColor, 0, 15, 120, 830, 1350, 390)

randSleep()
{
	Sleep, % rand(minRandWait,maxRandWait)
}

mouseSpeed()
{
   
   return rand(4,15)
}

rand(min, max)
{
   random, ran, %min%, %max%
   return ran
}

ClickOnPixelOffset(color, offsetx, offsety, left, top, right, bottom)
{
    PixelSearch, x, y, left, top, right, bottom, color, 1, fast
    if ErrorLevel
    {
        return false
    }
    else
    {
        MouseClick, L, % x + offsetx , % y + offsety ,, % mouseSpeed()        
        return true
    }
	
}


!Numpad0::ToggleShouldRun()
ToggleShouldRun(){
    ShouldRun := !ShouldRun
    MsgBox, %ShouldRun%
}

﻿
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
;SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, Force

CoordMode, Mouse, Screen
CoordMode, Pixel, Screen

global lookforcolor:= 0x000000
global minMouseSpeed:= 3
global maxMouseSpeed:= 10

global minRandWait := 50
global maxRandWait := 10000
global loopTimer := 50

global loopAmt := 20000
global ShouldRun:= false

global LeftSearchArea := 215
global TopSearchArea := 215


global RightSearchArea := 1315
global BottomSearchArea := 788

Loop
{
	if(ShouldRun)
    {
	    Loop, %loopAmt%
		{
		
			ClickOnPixel(lookforcolor)
			randSleep()
			Sleep, %loopTimer%
		}
	}
	Sleep, 1000

}


!u::updateColor()
updateColor()
{
     MouseGetPos, outx, outy
     PixelGetColor, lookforcolor, %outx%, %outy%
	 
	 MsgBox, The cursor is at X%outx% Y%outy%. The color is %lookforcolor%
}

!Numpad0::ToggleShouldRun()
ToggleShouldRun(){
    ShouldRun := !ShouldRun
}

!c::ClickOnPixel(lookforcolor)
ClickOnPixel(color)
{
    PixelSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, color, 1, fast
    if ErrorLevel
    {
        return false
    }
    else
    {
        MouseClick, L,  x,y,, % mouseSpeed()        
        return true
    }
	
}

!l::LookForPixel(lookforcolor)
LookForPixel(color)
{
    PixelSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, color, 1, fast
    if ErrorLevel
    {
        return false
    }
    else
    {
        MouseMove, x,y, % mouseSpeed()
        
        return true
    }
}


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
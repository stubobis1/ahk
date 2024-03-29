﻿
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
;SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, Force

CoordMode, Mouse, Screen
CoordMode, Pixel, Screen

global lookforimg := "shark.png"
global minMouseSpeed := 3
global maxMouseSpeed := 10

global minRandWait := 50
global maxRandWait := 10000
global loopTimer := 50

global loopAmt := 20000
global ShouldRun:= true

global LeftSearchArea := 0
global TopSearchArea := 0


global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight

Loop
{
	if(ShouldRun)
    {
	    Loop, %loopAmt%
		{
		
			ClickOnImg()
			randSleep()
			Sleep, %loopTimer%
		}
	}
	Sleep, 1000

}

!Numpad0::ToggleShouldRun()
ToggleShouldRun(){
    ShouldRun := !ShouldRun
}

!c::ClickOnImg()
ClickOnImg()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, %lookforimg%
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

!l::LookForImg()
LookForImg()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, %lookforimg%
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

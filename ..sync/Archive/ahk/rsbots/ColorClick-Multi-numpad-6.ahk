
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
;SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, Force

CoordMode, Mouse, Screen
CoordMode, Pixel, Screen

global lookforcolor1:= 0x000000
global lookforcolor2:= 0x000000
global lookforcolor3:= 0x000000
global lookforcolor4:= 0x000000
global lookforcolor5:= 0x000000
global lookforcolor6:= 0x000000
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

Loop
{
	if(ShouldRun)
    {
	    Loop, %loopAmt%
		{
		
			if(ClickOnPixel(lookforcolor1))
			{
				randSleep()
			}
			else if(ClickOnPixel(lookforcolor2))
			{
				randSleep()
			}
			else if(ClickOnPixel(lookforcolor3))
			{
				randSleep()
			}
			else if(ClickOnPixel(lookforcolor4))
			{
				randSleep()
			}
			else if(ClickOnPixel(lookforcolor5))
			{
				randSleep()
			}
			else if(ClickOnPixel(lookforcolor6))
			{
				randSleep()
			}
			Sleep, %loopTimer%
		}
	}
	Sleep, 1000

}


!Numpad1::updateColor1()
updateColor1()
{
     MouseGetPos, outx, outy
     PixelGetColor, lookforcolor1, %outx%, %outy%
	 
	 MsgBox, The cursor is at X%outx% Y%outy%. The color is %lookforcolor1%
}

!Numpad2::updateColor2()
updateColor2()
{
     MouseGetPos, outx, outy
     PixelGetColor, lookforcolor2, %outx%, %outy%
	 
	 MsgBox, The cursor is at X%outx% Y%outy%. The color is %lookforcolor2%
}


!Numpad3::updateColor3()
updateColor3()
{
     MouseGetPos, outx, outy
     PixelGetColor, lookforcolor3, %outx%, %outy%
	 
	 MsgBox, The cursor is at X%outx% Y%outy%. The color is %lookforcolor3%
}


!Numpad4::updateColor3()
updateColor4()
{
     MouseGetPos, outx, outy
     PixelGetColor, lookforcolor4, %outx%, %outy%
	 
	 MsgBox, The cursor is at X%outx% Y%outy%. The color is %lookforcolor4%
}


!Numpad5::updateColor5()
updateColor5()
{
     MouseGetPos, outx, outy
     PixelGetColor, lookforcolor5, %outx%, %outy%
	 
	 MsgBox, The cursor is at X%outx% Y%outy%. The color is %lookforcolor5%
}


!Numpad6::updateColor6()
updateColor6()
{
     MouseGetPos, outx, outy
     PixelGetColor, lookforcolor6, %outx%, %outy%
	 
	 MsgBox, The cursor is at X%outx% Y%outy%. The color is %lookforcolor6%
}


!Numpad0::ToggleShouldRun()
ToggleShouldRun(){
    ShouldRun := !ShouldRun
}

!c::ClickOnPixel(lookforcolor1)
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

!l::LookForPixel(lookforcolor1)
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

sleepAfterAction()
{}

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

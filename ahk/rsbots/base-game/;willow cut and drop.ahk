; iron mine and drop


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


global lookforimg := "iron.png"
global lookforcolor:= 0xff6901


CoordMode, Mouse, Screen
CoordMode, Pixel, Screen

global minMouseSpeed := 5
global maxMouseSpeed := 15

global minRandShortSleep := 500
global maxRandShortSleep := 2000

global minRandLongSleep := 1000
global maxRandLongSleep := 4000


global loopTimer := 50
global loopAmt := 2000


global LeftSearchArea := 0
global TopSearchArea := 0


global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight



; Start the loop
!s::StartLoop()
StartLoop(){
MsgBox, "start run"
Loop, %loopAmt%
{
    
    DropInv()
	Loop, % rand(1, 3)
	{
		ClickOnPixel(lookforcolor)
        randLongSleep()
	}
    
}
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
        MouseClick, L,  % x + rand(5,10), % y + rand(20,50),, % mouseSpeed()        
        return true
    }
	
}


; alt and c to drop logs from inv
!c::DropInv()
DropInv()
{
	while (DropLog())
    {
        randShortSleep()()
	}
	
}

!l::DropLog()
DropLog(){
	ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea,  *Trans0x00FF00 %lookforimg%
    if ErrorLevel
    {
        return false
    }
    else
    {
        MouseClick, L,  x + rand(5,10),y + rand(5,20),, % mouseSpeed()
        return true
    }
}


mouseSpeed()
{
   return rand(3,10)
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

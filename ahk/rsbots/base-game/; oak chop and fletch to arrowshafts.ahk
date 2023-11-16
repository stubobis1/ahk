; oak chop and fletch to arrowshafts


; Highlight the IRON with this hex color ff6901

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


global logimg := "oak.png"
global knifeimg := "knife.png"
global lookforcolor:= 0xff6901


CoordMode, Mouse, Window

global minMouseSpeed := 5
global maxMouseSpeed := 15

global minRandShortSleep := 500
global maxRandShortSleep := 10000

global minRandLongSleep := 10000
global maxRandLongSleep := 30000


global loopTimer := 50
global loopAmt := 2000


global LeftSearchArea := 0
global TopSearchArea := 0


global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight

SetDefaultMouseSpeed, 2


; Start the loop
!s::StartLoop()
StartLoop(){
MsgBox, "start run"
Loop, %loopAmt%
    {
        
        CraftInv()
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
        MsgBox, no tree
        return false
    }
    else
    {
        MouseClick, L, x,  y + rand(20,50),, % mouseSpeed()       
        return true
    }
	
}


; alt and c to drop logs from inv
!c::CraftInv()
CraftInv()
{
    while (CraftLog())
    {
        randLongSleep()
	}
	
}

!l::CraftLog()
CraftLog(){
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea,  *Trans0x00FF00 %knifeimg%
    if ErrorLevel
    {
        MsgBox, no knife
        return false
    }
    else
    {
        MouseClick, L,  x + rand(5,10),y + rand(5,20),, % mouseSpeed()
    }    

	ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea,  *Trans0x00FF00 %logimg%
    if ErrorLevel
    {
        return false
    }
    else
    {
        MsgBox, no log
        MouseClick, L,  x + rand(5,10),y + rand(5,20),, % mouseSpeed()
    }
    Sleep, % rand(500,1000)
    Send, {Blind}{Space}

    return true
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

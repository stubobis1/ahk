
global slayerColor:= 0xF8F903

global minMouseSpeed:= 3
global maxMouseSpeed:= 10

global minRandWait := 10000
global maxRandWait := 15000
global loopTimer := 50

global loopAmt := 400
global ShouldRun:= true

global LeftSearchArea := 0
global TopSearchArea := 0


global RightSearchArea := 1440
global BottomSearchArea := A_ScreenHeight


;Replace (Sleep, .*) with $1\n$1

Loop, %loopAmt%
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = RuneLite - stu_bob_is1 ahk_class SunAwtFrame
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 390
Sleep, 390

MouseClick, L, 535, 146,, % mouseSpeed

Sleep, 609

MouseClick, L, 936, 61,, % mouseSpeed

Sleep, 453

MouseClick, L, 1478, 763,, % mouseSpeed

Sleep, 172

MouseClick, L, 1515, 757,, % mouseSpeed

Sleep, 187

MouseClick, L, 1561, 756,, % mouseSpeed

Sleep, 203

MouseClick, L, 1608, 757,, % mouseSpeed

Sleep, 187

MouseClick, L, 1609, 800,, % mouseSpeed

Sleep, 187

MouseClick, L, 1564, 803,, % mouseSpeed

Sleep, 187

MouseClick, L, 1520, 804,, % mouseSpeed

Sleep, 195

MouseClick, L, 1485, 798,, % mouseSpeed

Sleep, 179

MouseClick, L, 1487, 835,, % mouseSpeed

Sleep, 187

MouseClick, L, 1517, 828,, % mouseSpeed

Sleep, 187

MouseClick, L, 1571, 832,, % mouseSpeed

Sleep, 195

MouseClick, L, 1592, 828,, % mouseSpeed

Sleep, 187

MouseClick, L, 1593, 866,, % mouseSpeed

Sleep, 179

MouseClick, L, 1560, 872,, % mouseSpeed

Sleep, 234

MouseClick, L, 1512, 869,, % mouseSpeed

Sleep, 203

MouseClick, L, 1472, 862,, % mouseSpeed

Sleep, 211

MouseClick, L, 1477, 901,, % mouseSpeed

Sleep, 203

MouseClick, L, 1518, 901,, % mouseSpeed

Sleep, 180

MouseClick, L, 1565, 899,, % mouseSpeed

Sleep, 210

MouseClick, L, 1596, 896,, % mouseSpeed

Sleep, 195

MouseClick, L, 1595, 935,, % mouseSpeed

Sleep, 195

MouseClick, L, 1560, 941,, % mouseSpeed

Sleep, 195

MouseClick, L, 1521, 942,, % mouseSpeed

Sleep, 211

MouseClick, L, 1479, 939,, % mouseSpeed

Sleep, 195

MouseClick, L, 1481, 967,, % mouseSpeed

Sleep, 234

MouseClick, L, 1517, 972,, % mouseSpeed

Sleep, 187

MouseClick, L, 1561, 970,, % mouseSpeed

Sleep, 250

MouseClick, L, 1608, 971,, % mouseSpeed

Sleep, 359
Sleep, 359

;MouseClick, L, 842, 440,, % mouseSpeed
ClickOnPixelOffset(slayerColor, 0,15)

Sleep, 594
Sleep, 594

MouseClick, L, 884, 831,, % mouseSpeed

Sleep, 200

}

!Numpad1::updateColor1()
updateColor1()
{
     MouseGetPos, outx, outy
     PixelGetColor, slayerColor, %outx%, %outy%
	 
	 MsgBox, The cursor is at X%outx% Y%outy%. The color is %slayerColor%
}



!Numpad0::ToggleShouldRun()
ToggleShouldRun(){
    ShouldRun := !ShouldRun
    MsgBox, %ShouldRun%
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

ClickOnPixelOffset(color, offsetx, offsety)
{
    PixelSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, color, 1, fast
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

randSleep()
{
Sleep, % rand(minRandWait,maxRandWait)
}

mouseSpeed()
{
   
   return rand(2,4)
}

rand(min, max)
{
   random, ran, %min%, %max%
   return ran
}


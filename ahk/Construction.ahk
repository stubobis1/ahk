

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
global numOfPlanks := 7000
global imgOak     := % A_ScriptDir . "\rslib\img\notedOak.png"




global LeftSearchArea := 0
global TopSearchArea := 0


global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight


global minMouseSpeed := 5
global maxMouseSpeed := 15

global minRandShortSleep := 500
global maxRandShortSleep := 2000

global minRandLongSleep := 5000
global maxRandLongSleep := 20000

global ojColor      := 0xFF6901
global purpColor    := 0xFF04FC
global cyanColor    := 0x01F1FF
!s::StartLoop()
StartLoop(){
    Loop, % numOfPlanks // 24 {
        mouseSpeed()

        SetTitleMatchMode, 2
        CoordMode, Mouse, Window
        tt = RuneLite ahk_class SunAwtFrame
        WinWait, %tt%
        IfWinNotActive, %tt%,, WinActivate, %tt%

        if !SearchForPixel(purpColor)
        {
            PartOne()
        }
        PartTwo()


    }
}

PartOne(){
        clickOak()
        ClickOnPixel(ojColor)
        Sleep, 8059
        Send, {Blind}3
        clickOnPixel(cyanColor)
        Sleep, 8059
}

!q::PartTwo()
PartTwo(){


    if !SearchForPixel(purpColor) 
        Return 

    if (RightClickOnOJPixelSelect3rdOption()){
    sleep, 5200
    Send, {Blind}2
    sleep, 2300
    }

    if (RightClickOnCYANPixelSelect4rdOption()){
    sleep, 2300
    Send, {Blind}1
    sleep, 2300
    }

    if !SearchForPixel(purpColor) 
        Return

    Loop, 2{
        if (RightClickOnOJPixelSelect3rdOption())
        {
            sleep, 2300
            randShortSleep()
            Send, {Blind}2
            sleep, 1800
        }
        if (RightClickOnCYANPixelSelect4rdOption()) 
        {
            sleep, 2300
            randShortSleep()
            Send, {Blind}1
            sleep, 2300
        }
        if !SearchForPixel(purpColor) 
            Return 
    }
    ClickOnPixel(purpColor)
    sleep, 4000
}

mouseSpeed()
{
    SetDefaultMouseSpeed, rand(minMouseSpeed,maxMouseSpeed)
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


!k::clickOak()
clickOak()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgOak%
    if ErrorLevel
    {
        MsgBox, out of oak?
        return false
    }
    else
    {
        MouseClick, L,  % x + rand(0,5), % y + rand(0,5)
        return true
    }
}

;!o::ClickOnPixel(ojColor)
!x::ClickOnPixel(cyanColor)
;!p::ClickOnPixel(purpColor)
ClickOnPixel(color)
{
    PixelSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, color, 1, fast RGB
    if ErrorLevel
    {
        return false
    }
    else
    {
        MouseClick, L, x, % y + rand(5,10)
        return true
    }
}

SearchForPixel(color){
     PixelSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, color, 1, fast RGB
    if ErrorLevel
    {
        return false
    }
    else
    {
        return true
    }
}


;!c::ClickOnPixel(lookforcolor)
RightClickOnOJPixelSelect3rdOption()
{
    PixelSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, ojColor, 2, fast RGB
    if ErrorLevel
    {
        MsgBox, "oj"
        return false
    }
    else
    {
        MouseClick, R, x, % y + 5 + rand(5,10)
        randShortSleep()
        MouseClick, L, x, % y + 65
        return true
    }
}

!c::RightClickOnCYANPixelSelect4rdOption()
RightClickOnCYANPixelSelect4rdOption()
{
    PixelSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, cyanColor, 1, fast RGB
    if ErrorLevel
    {
        MsgBox, "cyan"
        return false
    }
    else
    {
        MouseClick, R, x, % y + 5 + rand(5,10)
        randShortSleep()
        MouseClick, L, x, % y + 80
        return true
    }
}


;click oak
;click oj 

;press 3

;click cyan

;loop 2
;click oj + 5

;click 2

;click cyan + 5

;click 1


;click purple

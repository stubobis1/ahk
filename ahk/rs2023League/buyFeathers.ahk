#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

global ojColor      := 0xFF6901

global LeftSearchArea := 0
global TopSearchArea := 0
global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight


global minMouseSpeed := 2
global maxMouseSpeed := 5
global minRandShortSleep := 0
global maxRandShortSleep := 600
global minRandLongSleep := 1000
global maxRandLongSleep := 3000

global numOfLoop := 300
global imgInvOff        := % A_ScriptDir . "\rslib\img\invOff.png"
global imgInvOn         := % A_ScriptDir . "\rslib\img\invOn.png"
global imgfeatherPack   := % A_ScriptDir . "\rslib\img\shopFeatherPack.png"
!s::StartLoop()
StartLoop(){
    Loop, % numOfLoop {
        


        Loop, 3 {
            mouseSpeed()
            ActivateWin()
            while (!lookForFeather())
            {
                
                LeftClickOnOJPixel()
                randLongSleep()
            }

            randShortSleep()
            clickFeather5thOption()

            Sleep, 100
            randShortSleep()

            Send, {Blind}{Escape}

            OpenInv()

            Sleep, 500
            randShortSleep()

            while (!lookForOpenInv())
            {
                
                randShortSleep()
                MouseMove, rand(0,RightSearchArea), rand(0,BottomSearchArea)
                randShortSleep()
                OpenInv()
            }

            clickWholeInv()

            Sleep, 500
            randShortSleep()
        }
        SwitchWorld()
    }
}
; loop 3
; click person

; buy 50

; click 26 slots
; eol

;switch world



;!o::OpenInv()


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

;!w::SwitchWorld
SwitchWorld(){
    
    Send, {Blind}{Ctrl Down}{Shift Down}{Left}{Shift Up}{Ctrl Up}

    Sleep, 1203
    randShortSleep()

    Send, {Blind}{Space}

    Sleep, 6656
    randLongSleep()
}

OpenInv()
{
    
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgInvOff%
    if ErrorLevel
    {
        ;MsgBox, out of oak?
        return false
    }
    else
    {
        MouseClick, L,  % x + rand(5,10), % y + rand(5,10)
        return true
    }
}
;!c::ClickOnPixel(lookforcolor)
LeftClickOnOJPixel()
{
    PixelSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, ojColor, 2, fast RGB
    if ErrorLevel
    {
        MsgBox, "oj"
        return false
    }
    else
    {
        MouseClick, L, % x + 20, % y + 20
        return true
    }
}


;!k::clickFeather5thOption()
clickFeather5thOption()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgfeatherPack%
    if ErrorLevel
    {
        ;MsgBox, out of oak?
        return false
    }
    else
    {
        MouseClick, R, % x + 15, y 
        randShortSleep()
        MouseClick, L, x + 15, % y + 85
        return true
    }
}

lookForFeather()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgfeatherPack%
    if ErrorLevel
    {
        ;MsgBox, out of oak?
        return false
    }
    else
    {
        return true
    }
}

lookForOpenInv()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgInvOn%
    if ErrorLevel
    {
        ;MsgBox, out of oak?
        return false
    }
    else
    {
        return true
    }
}



!c::clickWholeInv()
clickWholeInv()
{


;MouseClick, L, 638, 451

randShortSleep()

;MouseClick, L, 642, 484

randShortSleep()

MouseClick, L, 644, 526

randShortSleep()

MouseClick, L, 642, 555

randShortSleep()

MouseClick, L, 642, 588

randShortSleep()

MouseClick, L, 638, 615

randShortSleep()

MouseClick, L, 639, 652

randShortSleep()

MouseClick, L, 667, 664

randShortSleep()

MouseClick, L, 669, 622

randShortSleep()

MouseClick, L, 674, 587

randShortSleep()

MouseClick, L, 682, 551

randShortSleep()

MouseClick, L, 685, 518

randShortSleep()

MouseClick, L, 684, 478

randShortSleep()

MouseClick, L, 683, 445

randShortSleep()

MouseClick, L, 716, 444

randShortSleep()

MouseClick, L, 727, 492

randShortSleep()

MouseClick, L, 725, 518

randShortSleep()

MouseClick, L, 729, 550

randShortSleep()

MouseClick, L, 724, 588

randShortSleep()

MouseClick, L, 725, 622

randShortSleep()

MouseClick, L, 724, 658

randShortSleep()

MouseClick, L, 757, 659

randShortSleep()

MouseClick, L, 758, 623

randShortSleep()

MouseClick, L, 762, 587

randShortSleep()

MouseClick, L, 764, 548

randShortSleep()

MouseClick, L, 765, 514

randShortSleep()

MouseClick, L, 764, 489

randShortSleep()

MouseClick, L, 769, 449

randShortSleep()


}
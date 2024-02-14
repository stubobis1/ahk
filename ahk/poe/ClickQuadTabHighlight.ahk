

global LeftSearchArea := 0
global TopSearchArea := 0

global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight

global lookforimgProph1080 := "quadTabHighlightProph1080.png"
global lookforimgProph := "lazy1.png"

global lookforimg := "emptyInvSpace.png"
global lookforimg2 := "emptyInvSpace2.png"
global lookforimg3 := "emptyInvSpace3.png"
global lookforimg4 := "emptyInvSpace4.png"
global lookforimg5 := "emptyInvSpace5.png"
global lookforimg6 := "emptyInvSpace6.png"
global lookforimg7 := "emptyInvSpace7.png"
global lookforimg8 := "emptyInvSpace8.png"
global lookforimg9 := "emptyInvSpace9.png"

global minMouseSpeed := 3
global maxMouseSpeed := 10

global minRandWait := 50
global maxRandWait := 200

global stoploop := false

>+o::EndLoop()
EndLoop()
{
    if(stoploop)
    {
        stoploop = false
    }
    else
    {
        stoploop = true
    }
}

>+.::ClearProph()
ClearProph()
{

    SetTitleMatchMode, 2
    CoordMode, Mouse, Window

    tt = Path of Exile ahk_class POEWindowClass
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%

    loop, 57{
        Send {Blind}{Ctrl down}
        if (!ClickHighlightedProph())
        {
            Send {Blind}{Ctrl up}
            Break
        }
        Send {Blind}{Ctrl up}
        randSleep()

        if (stoploop)
        {
            EndLoop()
            break
        }
    }

}

ClickHighlightedProph()
{
    if (!ClickOnImg(lookforimgProph))
    if (true)
    {
        return false
    }
    return true

    
}

;Right sift c
;>+c::ClickOnImg()
ClickOnImg(imgName)
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *Trans0x00FF00 %imgName%
    if ErrorLevel
    {
        return false
    }
    else
    {
        MouseClick, L, x + 10, y +10
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

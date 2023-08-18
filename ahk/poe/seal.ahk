

global LeftSearchArea := 0
global TopSearchArea := 0

global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight

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

global stoploop := False

>+p::stoploop = !stoploop

>+'::ClearProph()
ClearProph()
{

    SetTitleMatchMode, 2
    CoordMode, Mouse, Window

    tt = Path of Exile ahk_class POEWindowClass
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%

    loop, 57{
        MouseClick, L, 589, 819

        randSleep()

        Send, {Blind}{Enter}

        randSleep()

        ClickHighlightedProph()

        randSleep()

        MouseClick, L, 452, 1037

        randSleep()

        if (stoploop)
            break
    }

}

ClickHighlightedProph()
{
    if (!ClickOnImg(lookforimg))
        if (!ClickOnImg(lookforimg2))
        if (!ClickOnImg(lookforimg3))
        if (!ClickOnImg(lookforimg4))
        if (!ClickOnImg(lookforimg5))
        if (!ClickOnImg(lookforimg6))
        if (!ClickOnImg(lookforimg7))
        if (!ClickOnImg(lookforimg8))
        if (!ClickOnImg(lookforimg9))
        {}

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

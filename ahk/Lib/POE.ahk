#NoEnv
#SingleInstance, Force
SendMode, Input
SetWorkingDir, %A_ScriptDir%

global imgQuadSextant := % A_ScriptDir . "\poelib\img\sex.png"
MsgBox, % imgQuadSextant



ClickOnInstances()
{
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, %imgQuadSextant%
    if ErrorLevel = 2
    {
        if !FileExist(imgQuadSextant)
        {
            MsgBox, Image file not found.
            return
        }
        MsgBox, something went wrong.
        return
    }
    else if ErrorLevel = 1
    {
        MsgBox, Image not found on the screen.
        return
    }
    else
    {
        ;Random, offsetX, 0, 3
        ;Random, offsetY, 0, 3
        ;Click, %FoundX% + offsetX, %FoundY% + offsetY
        Click, 
        ;Sleep, 1000 ; Wait for 1 second before searching for the next instance
    }
}

RShift & .::
    ClickOnInstances()
return

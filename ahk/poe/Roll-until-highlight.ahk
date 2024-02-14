#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



global LeftSearchArea := 0
global TopSearchArea := 0

global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight

global lookforimg := "hightlight-item-currency-tab.png"
global minRandWait := 200
global maxRandWait := 500
global stoploop := false
>+PgDn::EndLoop()
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



>+PgUp::rollTheItem()
rollTheItem()
{
	ToolTip
    SetTitleMatchMode, 2
    CoordMode, Mouse, Window

    tt = Path of Exile ahk_class POEWindowClass
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%

	Send, {Blind}{Shift Down}
	Sleep, 100
	MouseClick, R, 142, 368
	Sleep, 100

    loop, 700{
		ToolTip, Looping, 100, 150
		

		

		
		
		Sleep, 10
		
        if (IsImgShown(lookforimg))
        {
			ToolTip, FOUND`nIMAGE, 100, 160
			sleep, 1000
            Send {Blind}{Shift up}
            Break
        }
		else{
		reroll()
		}
        randSleep()

		
		
		
        if (stoploop)
        {
            EndLoop()
            break
        }
    }
	ToolTip, Done!, 100, 150
	Send {Blind}{Shift up}

}

reroll()
{
	MouseClick, L, 439, 624
}

IsImgShown(imgName)
{
ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *Trans0x00FF00 %imgName%
    if ErrorLevel
    {
        return false
    }
    else
    {
        return true
    }
}

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

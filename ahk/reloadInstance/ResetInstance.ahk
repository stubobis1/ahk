#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, Force

CoordMode, Mouse, Screen
CoordMode, Pixel, Screen

global JunTextColor:= 0xfe6500
global LoadingTextColor:= 0xd3a56c
global ShouldRun:=0
global DoneWithInstance:=True

global junText_X1 := 1510
global junText_Y1 := 193
global junText_X2 := 1672
global junText_Y2 := 315

global loadingText_X1 := 834
global loadingText_Y1 := 860
global loadingText_X2 := 1127
global loadingText_Y2 := 912

global Waypoint_X := 962
global Waypoint_Y := 501

global MapPoint_X := 276
global MapPoint_Y := 279

global AcceptBox_X := 446
global AcceptBox_Y := 332

SetTitleMatchMode, 2
tt = Path of Exile ahk_class POEWindowClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Loop
{
    if(ShouldRun)
    {
		sleep, 1000
        if(!IsLoading())
        {
            if(IsGoodInstance() && !DoneWithInstance)
            {
                ShouldRun := false
                PlayFoundSound()
            }
            else
            {
                DoneWithInstance := false
                ResetInstance()
            } 
        }
    }

}

^NumpadDot::ResetInstance()
ResetInstance(){
    Random, randTime, 300, 600
	Send, {Ctrl down}
    sleep, randTime
    MouseClick, L, Waypoint_X, Waypoint_Y, 1, 100
    Sleep, randTime
    
    Sleep, 200
    MouseClick, L, MapPoint_X, MapPoint_Y, 1, 100
    Sleep, 200
    Sleep, randTime
    MouseClick, L, AcceptBox_X , AcceptBox_Y, 1, 100
    Sleep, 200
    Send, {Ctrl up}
    
}

^Numpad0::ToggleShouldRun()
ToggleShouldRun(){
    ShouldRun := !ShouldRun
    DoneWithInstance := true
}

^Numpad1::GetPixelColor()
GetPixelColor(){
    MouseGetPos, xpos, ypos 

    PixelGetColor, pixelColor, xpos,ypos
    MsgBox, The cursor is at X%xpos% Y%ypos%. The color is %pixelColor%
}

^Numpad2::MsgBox, % IsLoading()
IsLoading(){
    PixelSearch, x, y, 888, 877, 1000, 1000, LoadingTextColor, 10, fast rgb
    if ErrorLevel
    {
        return false
    }
    else
    {
        MouseMove, x,y
        return true
    }
    ;ImageSearch,x,y,0,0,%A_ScreenWidth%,%A_ScreenHeight%, loading.png
    ;if (ErrorLevel = 2)
    ;{
    ;    MsgBox Could not conduct the loading screen image search.
    ;}
    ;else if (ErrorLevel = 1)
    ;{
    ;    ;could not be found on the screen.
    ;    return false
    ;}
    ;else
    ;{
    ;    return true
    ;}
}

^Numpad3::MsgBox, % IsGoodInstance()
IsGoodInstance()
{

    PixelSearch, x, y, 1570, 290, 1733, 320, JunTextColor, 10, fast rgb
    if ErrorLevel
    {
        return false
    }
    else
    {
        MouseMove, x,y
        return true
    }

}

^Numpad4::PlayFoundSound()
PlayFoundSound()
{
    SoundPlay, *-1
}

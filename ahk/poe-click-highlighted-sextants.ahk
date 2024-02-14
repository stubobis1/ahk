#NoEnv
#SingleInstance, Force
;SendMode, Input

SetWorkingDir, %A_ScriptDir%

CoordMode, Pixel, Screen

global LeftSearchArea := 0
global TopSearchArea := 0

global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight

global MidYSearchArea := A_ScreenWidth // 2
global MidXSearchArea := A_ScreenHeight //2

global ImgLowerRightSextant   := % A_ScriptDir . "\Lib\poelib\img\LowerRightSmallHighlight.png"


rand(min, max)
{
    Random, rand, min, max
    return rand
}
RandomSleep(min, max)
{
    Random, rand, min, max
    Sleep, rand
}

mouseSpeed()
{
    SetDefaultMouseSpeed, rand(minMouseSpeed,maxMouseSpeed)
}

MoveMouseOnBezierCurve(startX, startY, endX, endY, duration)
{
    controlX := (startX + endX) / 2 + rand(-10, 10)
    controlY := (startY + endY) / 2 + rand(-10, 10)
    ; Calculate the number of steps based on the duration
    steps := duration / 10
    
    ; Calculate the increment for each step
    tIncrement := 1 / steps
    
    ; Loop through each step
    Loop, % steps
    {
        ; Calculate the current t value
        t := A_Index * tIncrement
        
        ; Calculate the x and y coordinates on the bezier curve
        x := (1 - t)^2 * startX + 2 * (1 - t) * t * controlX + t^2 * endX
        y := (1 - t)^2 * startY + 2 * (1 - t) * t * controlY + t^2 * endY
        
        ; Move the mouse to the calculated coordinates
        MouseMove, x, y, 0
        
        ; Sleep for 10 milliseconds
        Sleep, 10
    }
    
    ; Move the mouse to the final destination
    MouseMove, endX, endY, 0
}

RemoveRectangle:
Gui Destroy
return

RShift & NumpadDiv::findAndClickOnImg()
findAndClickOnImg()
{
    
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, MidYSearchArea, BottomSearchArea, *3 %ImgLowerRightSextant% 
    if ErrorLevel
    {
        errmsg := ""
        if (FileExist(ImgLowerRightSextant))
        {
            if ErrorLevel = 1
            {
                ; Code to handle when image is not found
                ToolTip, % "Image not found!", LeftSearchArea, TopSearchArea
                Sleep, 1000
                
                ToolTip, % "Image not found!`nY:" . MidYSearchArea . "`nX:" . BottomSearchArea, MidYSearchArea, BottomSearchArea

                


            }
            else{
                errmsg := "Something Went Wrong`nErrorLevel: " . ErrorLevel . "`nImage path: " . ImgLowerRightSextant
            }
        }
        else
        {
            errmsg := "Can't find the file at " . ImgLowerRightSextant
        }
        ;ToolTip, % errmsg, MidYSearchArea, 0
    }
    else
    {
        
        ;MouseGetPos, mouseX, mouseY
        targetX := x - rand(5,30)
        targetY := y - rand(5,30)
        ;MoveMouseOnBezierCurve(mouseX, mouseY, targetX, targetY, 1000)
        MouseMove, targetX, targetY, 0
        SendInput, {Ctrl Down}
        RandomSleep(20, 50)
        SendInput, {LButton}
        RandomSleep(20, 50)
        SendInput, {Ctrl Up}
        ;return true
    }
}





global MainLoopActive := True

RShift & End::EndLoop()
EndLoop()
{
    global MainLoopActive
    MainLoopActive := False
    Return
}


RShift & NumpadSub::MainLoop()
MainLoop()
{
    MainLoopActive := True
    while (MainLoopActive)
        {
            SoundBeep, 500, 500
            findAndClickOnImg()
            Sleep, 1000
        }
}




SearchAndClickLowerRightSextant() {
        ; Search for the LowerRightSextant image with a tolerance of ±5 pixels
        
        PixelSearch, foundX, foundY, x, TopSearchArea, x, BottomSearchArea, %ImgLowerRightSextant%, 5, Fast RGB

        ; Click on the found instances
        if (ErrorLevel = 0) {
            Click, %foundX%, %foundY%
        }
}







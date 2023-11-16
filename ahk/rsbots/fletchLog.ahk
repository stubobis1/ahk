
global minRandShortSleep := 100
global maxRandShortSleep := 500


global minRandLongSleep := 500
global maxRandLongSleep := 1000


mouseSpeed()
{
    SetDefaultMouseSpeed, rand(2,8)
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


Loop, % 10502 // 27
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = RuneLite - StuBobis1 ahk_class SunAwtFrame
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%


mouseSpeed()
Sleep, 562

MouseClick, L, 122, 119

Sleep, 1312
randShortSleep()

MouseClick, L, 522, 41

Sleep, 828
randShortSleep()

MouseClick, L, 648, 442

Sleep, 454
randShortSleep()

MouseClick, L, 684, 433

Sleep, 1218
randShortSleep()

Send, {Blind}{Space}

Sleep, 49500
randShortSleep()
MouseClick, L, 378, 547

Sleep, 550
randShortSleep()
MouseClick, L, 478, 583

Sleep, 100
randShortSleep()
}

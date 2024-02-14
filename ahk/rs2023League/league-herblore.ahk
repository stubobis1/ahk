
Loop, 1
{
    SetTitleMatchMode, 2
    CoordMode, Mouse, Window

    tt = RuneLite ahk_class SunAwtFrame
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%

    Sleep, 750

    RS_randClickThenSleep(587, 398, 1016)
    RS_randClickThenSleep(632, 401, 891)
    RS_randClickThenSleep(588, 437, 844)
    RS_randClickThenSleep(633, 403, 1532)
    RS_randClickThenSleep(594, 548, 469)
    RS_randClickThenSleep(636, 544, 469)
    RS_randClickThenSleep(679, 547, 515)
    RS_randClickThenSleep(717, 549, 485)
    RS_randClickThenSleep(716, 587, 516)
    RS_randClickThenSleep(677, 585, 406)
    RS_randClickThenSleep(631, 587, 485)
    RS_randClickThenSleep(595, 582, 485)
    RS_randClickThenSleep(593, 622, 359)
    RS_randClickThenSleep(637, 623, 563)
    RS_randClickThenSleep(677, 625, 1109)
    RS_randClickThenSleep(674, 548, 984)
    RS_randClickThenSleep(674, 512, 1313)

    Send, {Blind}{Space}
    Sleep, 8140

    RS_randClickThenSleep(629, 436, 766)
    RS_randClickThenSleep(631, 401, 1516)
    RS_randClickThenSleep(592, 551, 844)
    RS_randClickThenSleep(590, 506, 1000)

    Send, {Blind}{Space}
    Sleep, 14453

    RS_randClickThenSleep(675, 399, 1328)
    RS_randClickThenSleep(629, 402, 1000)
}


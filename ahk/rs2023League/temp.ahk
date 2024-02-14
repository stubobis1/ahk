randDefaultMouseSpeed(minMouseSpeed, maxMouseSpeed)
{
    Random, rand, %minMouseSpeed%, %maxMouseSpeed%
    SetDefaultMouseSpeed, rand
}

clickThenSleep(x,y){
	Random, rndx, 0, 10
	Random, rndy, 0, 10
    MouseClick, L, % x + rndx, % y + rndy
    random, randSleep, 400, 800
    Sleep, %randSleep% 
}


Loop, % 1067 // 11
    {
    randDefaultMouseSpeed(2, 4)
    SetTitleMatchMode, 2
    CoordMode, Mouse, Window
    
    tt = RuneLite ahk_class SunAwtFrame
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%
    
    Sleep, 1218
    
    clickThenSleep(828, 386)
    
    clickThenSleep(789, 387)
    
    clickThenSleep(872, 390)
    
    clickThenSleep(786, 389)
    
    clickThenSleep(873, 499)
    
    clickThenSleep(876, 534)
    
    Send, {Blind}{Space}
    
    Sleep, 7109
    
    clickThenSleep(913, 387)
    
    clickThenSleep(789, 388)
    
    clickThenSleep(874, 536)
    
    clickThenSleep(871, 498)
    
    Send, {Blind}{Space}
    
    Sleep, 13812
    
    clickThenSleep(787, 421)
    
    clickThenSleep(789, 386)
    
    }
    
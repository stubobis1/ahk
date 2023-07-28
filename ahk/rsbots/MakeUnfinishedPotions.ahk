;replace (MouseClick, L, .*)
;with     $1,, % mouseSpeed()
Loop, 200
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = RuneLite - stu_bob_is1 ahk_class SunAwtFrame
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

Sleep, 281

MouseClick, L, 592, 147,, % mouseSpeed

Sleep, 351

MouseClick, L, 530, 144,, % mouseSpeed

Sleep, 601

MouseClick, L, 946, 69,, % mouseSpeed

Sleep, 570

MouseClick, L, 1523, 874,, % mouseSpeed

Sleep, 304

MouseClick, L, 1565, 867,, % mouseSpeed

Sleep, 848

Send, {Blind}{Space}

Sleep, 4617
Sleep, 4617

MouseClick, L, 836, 454,, % mouseSpeed

Sleep, 828

MouseClick, L, 891, 821,, % mouseSpeed

Sleep, 100

}


mouseSpeed()
{
   
   return rand(1,4)
}

rand(min, max)
{
   random, ran, %min%, %max%
   return ran
}


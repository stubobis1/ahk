; NightmareZone


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



global imgspec     := % A_ScriptDir . "\rslib\img\specfull.png"
global img2hp      := % A_ScriptDir . "\rslib\img\2hp.png"
global imgprayer   := % A_ScriptDir . "\rslib\img\prayer.png"
global imgprayeron := % A_ScriptDir . "\rslib\img\prayeron.png"
global imgrockcake := % A_ScriptDir . "\rslib\img\rockcake.png"
;global lookforcolor:= 0xff6901

CoordMode, Mouse, Screen
CoordMode, Pixel, Screen

global minMouseSpeed := 5
global maxMouseSpeed := 15

global minRandShortSleep := 600
global maxRandShortSleep := 1000


global minRandLongSleep := 48000
global maxRandLongSleep := 55000


global loopTimer := 50
global loopAmt := 2000


global LeftSearchArea := 0
global TopSearchArea := 0


global RightSearchArea := A_ScreenWidth
global BottomSearchArea := A_ScreenHeight



; Start the loop
s::StartLoop()
StartLoop(){
    MsgBox, "start loop"
	Loop, 48{
		
		Loop, 15
		;Loop
		{
			mouseSpeed()
			flickQuickPrayer()
			randShortSleep()
			randShortSleep()
			PrayerOff()

			if(is2hp())
			{
				eatCake()
			}
			PrayerOff()
			if(rand(1,5) == 1)
			{
				eatCake()
				Loop, % rand(0,2) 
				{
					eatCake()
					randShortSleep()
				}
			}
			if(rand(1,2) == 1)
			{
				spec()
			}
			PrayerOff()
			
			randLongSleep()
			
		}
		clickWholeInv()
	}
	MsgBox, end loop
}




; alt and p to test
!p::flickQuickPrayer()
flickQuickPrayer()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgprayer%
    if ErrorLevel
    {
        ;MsgBox, pryaer notFound
        return false
    }
    else
    {
        MouseClick, L,  % x + rand(0,2), % y 
        randShortSleep()
        MouseClick, L,  % x + rand(0,2), % y 
        return true
    }
	
}

; alt and p to test
!o::PrayerOff()
PrayerOff()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgprayeron%
    if ErrorLevel
    {
        ;MsgBox, prayeron notFound
        return false
    }
    else
    {
        MouseClick, L,  % x + rand(0,5), % y + rand(0,5)
        return true
    }
	
}

!l::spec()
spec()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgspec%
    if ErrorLevel
    {
       ; MsgBox, spec notFound
        return false
    }
    else
    {
        MouseClick, L,  % x + rand(0,5), % y + 10 + rand(0,5)
        return true
    }
	
}

!k::eatCake()
eatCake()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %imgrockcake%
    if ErrorLevel
    {
        ;MsgBox, cake notFound
        return false
    }
    else
    {
        MouseClick, L,  % x + rand(0,5), % y + rand(0,5)
        return true
    }
}


is2hp()
{
    ImageSearch, x, y, LeftSearchArea, TopSearchArea, RightSearchArea, BottomSearchArea, *3 %img2hp%
    if ErrorLevel
    {
        return false
    }
    else
    {
        return true
    }
}


mouseSpeed()
{
    SetDefaultMouseSpeed, rand(3,10)
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



!c::clickWholeInv()
clickWholeInv()
{


;MouseClick, L, 638, 451

Sleep, 250

;MouseClick, L, 642, 484

Sleep, 313

;MouseClick, L, 644, 526

Sleep, 497

MouseClick, L, 642, 555

Sleep, 297

MouseClick, L, 642, 588

Sleep, 297

MouseClick, L, 638, 615

Sleep, 328

MouseClick, L, 639, 652

Sleep, 250

MouseClick, L, 667, 664

Sleep, 313

MouseClick, L, 669, 622

Sleep, 297

MouseClick, L, 674, 587

Sleep, 200

MouseClick, L, 682, 551

Sleep, 250

MouseClick, L, 685, 518

Sleep, 250

MouseClick, L, 684, 478

Sleep, 234

MouseClick, L, 683, 445

Sleep, 235

MouseClick, L, 716, 444

Sleep, 297

MouseClick, L, 727, 492

Sleep, 234

MouseClick, L, 725, 518

Sleep, 297

MouseClick, L, 729, 550

Sleep, 359

MouseClick, L, 724, 588

Sleep, 266

MouseClick, L, 725, 622

Sleep, 297

MouseClick, L, 724, 658

Sleep, 297

MouseClick, L, 757, 659

Sleep, 297

MouseClick, L, 758, 623

Sleep, 266

MouseClick, L, 762, 587

Sleep, 265

MouseClick, L, 764, 548

Sleep, 234

MouseClick, L, 765, 514

Sleep, 266

MouseClick, L, 764, 489

Sleep, 218

MouseClick, L, 769, 449

Sleep, 1000


}

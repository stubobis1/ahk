randLClick(x, y, xmod, ymod)
{
    Random randx, 0, xmod
    Random randy, 0, ymod
    MouseClick, L,  % x + randx,% y + randy
}

randSleep(minimum, maximum)
{
    Random, rand, %minimum%, %maximum%
    Sleep, %rand%
}
randLClickThenSleep(x, y, minimumSleep)
{
    randLClick(x, y, 10, 10)
    randSleep(minimumSleep, minimumSleep + 100)
}
randDefaultMouseSpeed(minMouseSpeed, maxMouseSpeed)
{
    Random, rand, %minMouseSpeed%, %maxMouseSpeed%
    SetDefaultMouseSpeed, rand
}
rand(min, max)
{
    Random, rand, %min%, %max%
    return rand
}
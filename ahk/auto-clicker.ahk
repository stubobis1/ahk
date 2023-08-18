toggle = 0
#MaxThreadsPerHotkey 2

Scrolllock::
    Toggle := !Toggle
     While Toggle{
        click
        sleep 100
    }
return
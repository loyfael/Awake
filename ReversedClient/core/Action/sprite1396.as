﻿// Action script...

// [Action in Frame 1]
stop ();
var count = 0;

// [Action in Frame 26]
if (count < 5)
{
    gotoAndPlay(debut);
    ++count;
}
else
{
    setProperty("", _visible, false);
    gotoAndStop(1);
} // end else if
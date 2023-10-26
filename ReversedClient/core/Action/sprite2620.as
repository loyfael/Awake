// Action script...

// [onClipEvent of sprite 127 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    handCursor = false;
    styleName = "DarkBackgroundHidder";
}

// [Action in Frame 1]
stop ();

// [Action in Frame 2]
SOMA.playSound("Versus");

// [Action in Frame 77]
stop ();
this.onFinish();

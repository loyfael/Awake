﻿// Action script...

// [onClipEvent of sprite 84 in frame 1]
on (rollOver)
{
    _parent.gapi.showTooltip(_parent.api.lang.getText("HELP_ACTIONPOINTS"), this, 20);
}
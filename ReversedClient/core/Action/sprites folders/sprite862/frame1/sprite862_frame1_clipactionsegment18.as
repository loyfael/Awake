﻿// Action script...

// [onClipEvent of sprite 59 in frame 1]
onClipEvent (construct)
{
    cellRenderer = "UI_FriendsConnectedItem";
    columnsProperties = [];
    columnsProperties[0] = "guild";
    columnsProperties[1] = "account";
    columnsProperties[2] = "sortLevel";
    columnsProperties[3] = "state";
    columnsProperties[4] = "alignment";
    columnsWidths = [];
    columnsWidths[0] = 30;
    columnsWidths[1] = 190;
    columnsWidths[2] = 55;
    columnsWidths[3] = 30;
    columnsWidths[4] = 100;
    enabled = true;
    multipleSelection = false;
    rowHeight = 20;
    styleName = "WGGreyDataGrid";
    titleHeight = 20;
}

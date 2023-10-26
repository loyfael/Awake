// Action script...

// [onClipEvent of sprite 127 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    handCursor = false;
    styleName = "TranparentBackgroundHidder";
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = true;
    interceptMouseEvent = false;
    styleName = "WGLightGreyPanelWindow";
    title = "";
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = true;
    interceptMouseEvent = false;
    styleName = "WGLightGreyPanelWindow";
    title = "";
}

// [onClipEvent of sprite 59 in frame 1]
onClipEvent (construct)
{
    cellRenderer = "UI_QuestsWorldItem";
    columnsProperties = [];
    columnsProperties[0] = "world_name";
    columnsProperties[1] = "orbe";
    columnsWidths = [];
    columnsWidths[0] = 165;
    columnsWidths[1] = 140;
    enabled = true;
    multipleSelection = false;
    rowHeight = 20;
    styleName = "WGSpellsDataGrid";
    titleHeight = 20;
}

// [onClipEvent of sprite 59 in frame 1]
onClipEvent (construct)
{
    cellRenderer = "UI_QuestsWorldQuestsItem";
    columnsProperties = [];
    columnsProperties[0] = "quest_name";
    columnsProperties[1] = "orbe";
    columnsWidths = [];
    columnsWidths[0] = 230;
    columnsWidths[1] = 75;
    enabled = true;
    multipleSelection = false;
    rowHeight = 20;
    styleName = "WGSpellsDataGrid";
    titleHeight = 20;
}

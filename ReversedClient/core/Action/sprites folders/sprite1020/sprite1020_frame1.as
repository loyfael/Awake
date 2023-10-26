// Action script...

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = false;
    interceptMouseEvent = false;
    styleName = "LightBrownPanelWindow";
    title = "";
}

// [onClipEvent of sprite 59 in frame 1]
onClipEvent (construct)
{
    cellRenderer = "StatsViewerStatItem";
    columnsWidths = [];
    columnsWidths[0] = 160;
    columnsWidths[1] = 35;
    columnsWidths[2] = 35;
    columnsWidths[3] = 35;
    columnsWidths[4] = 35;
    columnsWidths[5] = 35;
    enabled = true;
    multipleSelection = true;
    rowHeight = 20;
    styleName = "LightTitleBrownDataGrid";
    titleHeight = 20;
}

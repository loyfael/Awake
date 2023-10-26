// Action script...

// [onClipEvent of sprite 59 in frame 1]
onClipEvent (construct)
{
    cellRenderer = "LadderViewerClanItem";
    columnsProperties = [];
    columnsProperties[0] = "rank";
    columnsProperties[1] = "name";
    columnsProperties[2] = "level";
    columnsProperties[3] = "points";
    columnsWidths = [];
    columnsWidths[0] = 80;
    columnsWidths[1] = 400;
    columnsWidths[2] = 100;
    columnsWidths[3] = 100;
    enabled = true;
    multipleSelection = false;
    rowHeight = 18;
    styleName = "WGGreyLadderDataGrid";
    titleHeight = 0;
}

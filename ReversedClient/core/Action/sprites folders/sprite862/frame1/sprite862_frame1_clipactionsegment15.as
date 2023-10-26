// Action script...

// [onClipEvent of sprite 59 in frame 1]
onClipEvent (construct)
{
    cellRenderer = "GuildMembersViewerMember";
    columnsProperties = [];
    columnsProperties[0] = "guild";
    columnsProperties[1] = "account";
    columnsProperties[2] = "sortLevel";
    columnsProperties[3] = "state";
    columnsProperties[4] = "alignment";
    columnsWidths = [];
    columnsWidths[0] = 35;
    columnsWidths[1] = 130;
    columnsWidths[2] = 100;
    columnsWidths[3] = 30;
    columnsWidths[4] = 20;
    columnsWidths[5] = 20;
    enabled = true;
    multipleSelection = false;
    rowHeight = 20;
    styleName = "WGGreyDataGrid";
    titleHeight = 20;
}

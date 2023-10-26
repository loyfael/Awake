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
    styleName = "LightBrownWindowNoTitle";
    title = "";
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = true;
    interceptMouseEvent = false;
    styleName = "LightBrownWindow";
    title = "";
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = true;
    interceptMouseEvent = false;
    styleName = "LightBrownWindow";
    title = "";
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = true;
    interceptMouseEvent = false;
    styleName = "LightBrownWindowRightBottom";
    title = "";
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = true;
    interceptMouseEvent = false;
    styleName = "DarkBrownWindow";
    title = "";
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = true;
    interceptMouseEvent = false;
    styleName = "DarkBrownWindow";
    title = "";
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = false;
    interceptMouseEvent = false;
    styleName = "LightBrownWindow";
    title = "";
}

// [onClipEvent of sprite 206 in frame 1]
onClipEvent (construct)
{
    destroyButton = false;
    displayPrice = false;
    displayWidth = 316;
    enabled = true;
    styleName = "LightBrownItemViewer";
    targetButton = false;
    useButton = false;
    hideDesc = false;
}

// [onClipEvent of sprite 194 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    scrollBar = false;
    selectable = true;
    styleName = "ExchangeGrid";
    visibleColumnCount = 1;
    visibleRowCount = 1;
}

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "";
    borderRenderer = "";
    dragAndDrop = false;
    enabled = true;
    highlightFront = false;
    highlightRenderer = "";
    margin = 2;
    showLabel = false;
    styleName = "default";
}

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (load)
{
    function __f_click(eventObj)
    {
        _parent.selectItem({target: this});
    } // End of the function
    this.addEventListener("click", __f_click);
}

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (load)
{
    function __f_drop(eventObj)
    {
        _parent.dropItem({target: this});
    } // End of the function
    this.addEventListener("drop", __f_drop);
}

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (load)
{
    function __f_drag(eventObj)
    {
        _parent.dragItem({target: this});
    } // End of the function
    this.addEventListener("drag", __f_drag);
}

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (load)
{
    function __f_dblClick(eventObj)
    {
        _parent.dblClickItem({target: this});
    } // End of the function
    this.addEventListener("dblClick", __f_dblClick);
}

// [onClipEvent of sprite 194 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    scrollBar = false;
    selectable = true;
    styleName = "SecureCraftGrid";
    visibleColumnCount = 9;
    visibleRowCount = 1;
}

// [onClipEvent of sprite 194 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    scrollBar = true;
    selectable = true;
    styleName = "InventoryGrid";
    visibleColumnCount = 9;
    visibleRowCount = 3;
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonToggleDown";
    backgroundUp = "ButtonToggleUp";
    enabled = true;
    icon = "FilterIcon4";
    label = "";
    radio = false;
    selected = false;
    styleName = "FilterButton";
    toggle = true;
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonToggleDown";
    backgroundUp = "ButtonToggleUp";
    enabled = true;
    icon = "FilterIcon0";
    label = "";
    radio = false;
    selected = false;
    styleName = "FilterButton";
    toggle = true;
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonToggleDown";
    backgroundUp = "ButtonToggleUp";
    enabled = true;
    icon = "FilterIcon5";
    label = "";
    radio = false;
    selected = true;
    styleName = "FilterButton";
    toggle = true;
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonCraftDown";
    backgroundUp = "ButtonCraftUp";
    enabled = true;
    icon = "";
    label = "Valider";
    radio = false;
    selected = false;
    styleName = "OrangeWhiteBorderButton";
    toggle = false;
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonCloseDown";
    backgroundUp = "ButtonCloseUp";
    enabled = true;
    icon = "";
    label = "";
    radio = false;
    selected = false;
    styleName = "OrangeButton";
    toggle = false;
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonCraftDown";
    backgroundUp = "ButtonCraftUp";
    enabled = true;
    icon = "";
    label = "";
    radio = false;
    selected = false;
    styleName = "OrangeWhiteBorderButton";
    toggle = true;
}

// [onClipEvent of sprite 194 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    scrollBar = false;
    selectable = true;
    styleName = "SecureCraftGrid";
    visibleColumnCount = 9;
    visibleRowCount = 1;
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonCraftDown";
    backgroundUp = "ButtonCraftUp";
    enabled = true;
    icon = "";
    label = "Message privé";
    radio = false;
    selected = false;
    styleName = "OrangeWhiteBorderButton";
    toggle = false;
}

// [onClipEvent of sprite 9 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    html = false;
    multiline = false;
    styleName = "WhiteLeftMediumBoldLabel";
    text = "";
    wordWrap = false;
}

// [onClipEvent of sprite 9 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    html = false;
    multiline = false;
    styleName = "WhiteLeftMediumBoldLabel";
    text = "";
    wordWrap = false;
}

// [onClipEvent of sprite 9 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    html = false;
    multiline = false;
    styleName = "FilterLabel";
    text = "";
    wordWrap = false;
}

// [onClipEvent of sprite 76 in frame 1]
onClipEvent (construct)
{
    background = "ComboBoxNormal";
    buttonBackgroundDown = "ButtonTransparentUp";
    buttonBackgroundUp = "ButtonTransparentUp";
    buttonIcon = "ComboBoxButtonNormalIcon";
    buttonWidth = 20;
    cellRenderer = "DefaultCellRenderer";
    enabled = true;
    isButtonLeft = false;
    labelBottomMargin = 0;
    labelLeftMargin = 4;
    labelRightMargin = 0;
    labelTopMargin = 0;
    listLeftMargin = 4;
    listRightMargin = 4;
    mcListParent = "this._parent";
    rowCount = 10;
    rowHeight = 20;
    styleName = "OrangeLeftComboBox";
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonCraftDown";
    backgroundUp = "ButtonCraftUp";
    enabled = true;
    icon = "";
    label = "Message privé";
    radio = false;
    selected = false;
    styleName = "OrangeWhiteBorderButton";
    toggle = false;
}

// [onClipEvent of sprite 9 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    html = false;
    multiline = false;
    styleName = "BrownRightSmallLabel";
    text = "0";
    wordWrap = false;
}

// [onClipEvent of sprite 209 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    styleName = "BrownProgressBar";
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = true;
    interceptMouseEvent = false;
    styleName = "LightBrownWindowNoTitle";
    title = "";
}

// [onClipEvent of sprite 194 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    scrollBar = true;
    selectable = true;
    styleName = "ExchangeGrid";
    visibleColumnCount = 6;
    visibleRowCount = 1;
}

// [onClipEvent of sprite 9 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    html = false;
    multiline = false;
    styleName = "BrownRightSmallLabel";
    text = "0";
    wordWrap = false;
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonCraftDown";
    backgroundUp = "ButtonCraftUp";
    enabled = true;
    icon = "";
    label = "Message privé";
    radio = false;
    selected = false;
    styleName = "OrangeWhiteBorderButton";
    toggle = false;
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonCraftDown";
    backgroundUp = "ButtonCraftUp";
    enabled = true;
    icon = "";
    label = "Valider";
    radio = false;
    selected = false;
    styleName = "OrangeWhiteBorderButton";
    toggle = false;
}

// [onClipEvent of sprite 194 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    scrollBar = true;
    selectable = true;
    styleName = "ExchangeGrid";
    visibleColumnCount = 6;
    visibleRowCount = 1;
}

// [onClipEvent of sprite 9 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    html = false;
    multiline = false;
    styleName = "BrownRightSmallLabel";
    text = "0";
    wordWrap = false;
}

// [onClipEvent of sprite 9 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    html = false;
    multiline = false;
    styleName = "BrownLeftMediumBoldLabel";
    text = "";
    wordWrap = false;
}

// [onClipEvent of sprite 9 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    html = false;
    multiline = false;
    styleName = "BrownLeftMediumBoldLabel";
    text = "";
    wordWrap = false;
}

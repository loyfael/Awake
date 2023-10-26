// Action script...

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "";
    margin = 2;
    showLabel = false;
    styleName = "none";
}

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (load)
{
    function __f_drop(eventObj)
    {
        _parent.dropDownItem();
    } // End of the function
    this.addEventListener("drop", __f_drop);
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = true;
    interceptMouseEvent = true;
    styleName = "WGLightGreyPanelWindow";
    title = "";
}

// [onClipEvent of sprite 755 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    styleName = "BrownAllRoundStylizedRectangle";
}

// [onClipEvent of sprite 755 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    styleName = "BrownTopRoundStylizedRectangle";
}

// [onClipEvent of sprite 755 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    styleName = "WGDarkGreyTopRoundStylizedRectangle";
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = true;
    interceptMouseEvent = true;
    styleName = "WGLightGreyPanelWindow";
    title = "";
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = true;
    interceptMouseEvent = true;
    styleName = "WGLightGreyPanelWindow";
    title = "";
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = false;
    interceptMouseEvent = false;
    styleName = "LightBrownToDarkBrownWindow";
    title = "";
}

// [onClipEvent of sprite 757 in frame 1]
onClipEvent (construct)
{
    enableBlur = true;
    allowAnimations = true;
    zoom = 200;
}

// [onClipEvent of sprite 186 in frame 1]
onClipEvent (construct)
{
    centerScreen = false;
    contentPath = "none";
    enabled = false;
    interceptMouseEvent = false;
    styleName = "WGLightGreyPanelWindow";
    title = "";
}

// [onClipEvent of sprite 758 in frame 1]
onClipEvent (construct)
{
    foo = "defaultValue";
}

// [onClipEvent of sprite 9 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    html = false;
    multiline = false;
    styleName = "BrownCenterSmallLabel";
    text = "";
    wordWrap = false;
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonToggleDown";
    backgroundUp = "ButtonToggleUp";
    enabled = true;
    icon = "FilterIcon1";
    label = "";
    radio = false;
    selected = false;
    styleName = "WGFilterButtonBlue";
    toggle = true;
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonToggleDown";
    backgroundUp = "ButtonToggleUp";
    enabled = true;
    icon = "FilterIcon7";
    label = "";
    radio = false;
    selected = false;
    styleName = "WGFilterButtonBlue";
    toggle = true;
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
    styleName = "WGFilterButtonBlue";
    toggle = true;
}

// [onClipEvent of sprite 9 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    html = false;
    multiline = false;
    styleName = "WhiteCenterMediumLabel";
    text = "";
    wordWrap = false;
}

// [onClipEvent of sprite 206 in frame 1]
onClipEvent (construct)
{
    destroyButton = true;
    displayPrice = false;
    displayWidth = 316;
    enabled = true;
    styleName = "none";
    targetButton = true;
    useButton = true;
    hideDesc = false;
}

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 9 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    html = false;
    multiline = false;
    styleName = "KamaLabel";
    text = "";
    wordWrap = false;
}

// [onClipEvent of sprite 194 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    scrollBar = true;
    selectable = true;
    styleName = "WGInventoryGrid";
    visibleColumnCount = 5;
    visibleRowCount = 8;
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
    selected = false;
    styleName = "WGFilterButtonBlue";
    toggle = true;
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
    styleName = "WGGreyWhiteBorderButton";
    toggle = false;
}

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (construct)
{
    backgroundRenderer = "UI_InventoryContainerBackground";
    borderRenderer = "";
    dragAndDrop = true;
    enabled = true;
    highlightFront = true;
    highlightRenderer = "UI_InventoryContainerHighlight";
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

// [onClipEvent of sprite 209 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    styleName = "LightBrownProgressBar";
}

// [onClipEvent of sprite 9 in frame 1]
onClipEvent (construct)
{
    enabled = true;
    html = false;
    multiline = false;
    styleName = "WhiteCenterSmallLabel";
    text = "";
    wordWrap = false;
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonToggleDown";
    backgroundUp = "ButtonToggleUp";
    enabled = true;
    icon = "FilterIcon2";
    label = "";
    radio = false;
    selected = false;
    styleName = "WGFilterButtonBlue";
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
    styleName = "WGFilterButtonBlue";
    toggle = true;
}

// [onClipEvent of sprite 37 in frame 1]
onClipEvent (construct)
{
    backgroundDown = "ButtonToggleDown";
    backgroundUp = "ButtonToggleUp";
    enabled = true;
    icon = "FilterIcon6";
    label = "";
    radio = false;
    selected = false;
    styleName = "WGFilterButtonBlue";
    toggle = true;
}

// Action script...

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (load)
{
    function __f_dblClick(eventObj)
    {
        _parent.dblClickItem({target: this});
    } // End of the function
    this.addEventListener("dblClick", __f_dblClick);
}

// Action script...

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (load)
{
    function __f_click(eventObj)
    {
        _parent.selectItem({target: this});
    } // End of the function
    this.addEventListener("click", __f_click);
}

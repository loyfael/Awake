// Action script...

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (load)
{
    function __f_drop(eventObj)
    {
        _parent.dropDownItem();
    } // End of the function
    this.addEventListener("drop", __f_drop);
}

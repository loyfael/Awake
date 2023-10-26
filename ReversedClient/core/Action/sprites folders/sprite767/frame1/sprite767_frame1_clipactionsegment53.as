// Action script...

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (load)
{
    function __f_drop(eventObj)
    {
        _parent.dropItem({target: this});
    } // End of the function
    this.addEventListener("drop", __f_drop);
}

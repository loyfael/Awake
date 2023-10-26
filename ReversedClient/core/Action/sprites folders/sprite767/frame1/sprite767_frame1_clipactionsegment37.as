// Action script...

// [onClipEvent of sprite 337 in frame 1]
onClipEvent (load)
{
    function __f_drag(eventObj)
    {
        _parent.dragItem({target: this});
    } // End of the function
    this.addEventListener("drag", __f_drag);
}

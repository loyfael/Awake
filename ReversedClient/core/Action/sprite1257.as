// Action script...

// [Action in Frame 1]
function setLife(current, max)
{
    _lbl.text = current;
    var _loc1 = current * 100 / max;
    trace (_loc1);
    _mask._y = 34 - _loc1 * 35 / 100;
} // End of the function
var UP_POSITION = -1;
var DOWN_POSITION = 34;

// Action script...

// [Action in Frame 1]
function setXpfloor(xp)
{
    _xpfloor = xp;
    computeOrbe();
} // End of the function
function setXpCeil(xp)
{
    _xpceil = xp;
    computeOrbe();
} // End of the function
function setCurrentXp(xp)
{
    _xpcurrent = xp;
    computeOrbe();
} // End of the function
function setXp(current, floor, ceil)
{
    _xpfloor = floor;
    _xpceil = ceil;
    _xpcurrent = current;
    computeOrbe();
} // End of the function
function computeOrbe()
{
    var _loc4 = _xpceil - _xpfloor;
    var _loc3 = _xpcurrent - _xpfloor;
    for (var _loc2 = 1; _loc2 < 11; ++_loc2)
    {
        if (_loc2 <= _loc3)
        {
            this["_orbe" + _loc2].setOrbeState(2);
            continue;
        } // end if
        if (_loc4 < _loc2)
        {
            this["_orbe" + _loc2].setOrbeState(1);
            continue;
        } // end if
        this["_orbe" + _loc2].setOrbeState(3);
    } // end of for
} // End of the function
var _xpfloor = 1;
var _xpceil = 8;
var _xpcurrent = 3;

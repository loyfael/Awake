// Action script...

// [Initial MovieClip Action of sprite 20617]
#initclip 138
if (!dofus.graphics.battlefield.DungeonTeamOverHead)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.graphics)
    {
        _global.dofus.graphics = new Object();
    } // end if
    if (!dofus.graphics.battlefield)
    {
        _global.dofus.graphics.battlefield = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.battlefield.DungeonTeamOverHead = function (nState)
    {
        super();
        this.draw(nState);
    }).prototype;
    _loc1.__get__height = function ()
    {
        return (20);
    };
    _loc1.__get__width = function ()
    {
        return (20);
    };
    _loc1.draw = function (nState)
    {
        if (nState == 1)
        {
            var _loc3 = -21;
            var _loc4 = -20;
            var _loc5 = 40;
            var _loc6 = 37.600000;
        }
        else if (nState == 3)
        {
            _loc3 = -21;
            _loc4 = -20;
            _loc5 = 40;
            _loc6 = 40.080000;
        }
        else
        {
            nState = 2;
            _loc3 = -13;
            _loc4 = -2;
            _loc5 = 20;
            _loc6 = 20;
        } // end else if
        this.attachMovie("Loader", "_ldrDungeonTeamOverHead", 10, {_x: _loc3, _y: _loc4, _width: _loc5, _height: _loc6, scaleContent: true, contentPath: dofus.Constants.DUNGEON_STATE_ICONS_PATH + nState + ".swf"});
    };
    _loc1.addProperty("width", _loc1.__get__width, function ()
    {
    });
    _loc1.addProperty("height", _loc1.__get__height, function ()
    {
    });
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

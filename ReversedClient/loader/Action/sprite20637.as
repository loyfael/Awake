// Action script...

// [Initial MovieClip Action of sprite 20637]
#initclip 158
if (!dofus.datacenter.AchievementBook)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.datacenter)
    {
        _global.dofus.datacenter = new Object();
    } // end if
    var _loc1 = (_global.dofus.datacenter.AchievementBook = function ()
    {
        this.initialize();
    }).prototype;
    _loc1.__get__achievements = function ()
    {
        return (this._eaAchievements);
    };
    _loc1.getAchievement = function (nID)
    {
        var _loc3 = this._eaAchievements.findFirstItem("id", nID);
        if (_loc3.index != -1)
        {
            return (_loc3.item);
        } // end if
        return (null);
    };
    _loc1.initialize = function ()
    {
        this._eaAchievements = new ank.utils.ExtendedArray();
    };
    _loc1.addProperty("achievements", _loc1.__get__achievements, function ()
    {
    });
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

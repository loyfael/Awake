// Action script...

// [Initial MovieClip Action of sprite 20703]
#initclip 224
if (!dofus.aks.Achievements)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.aks)
    {
        _global.dofus.aks = new Object();
    } // end if
    var _loc1 = (_global.dofus.aks.Achievements = function (oAKS, oAPI)
    {
        this._aAchievements = new Array();
        var _loc5 = this.api.lang.getAchievementInfos().a;
        for (var i in _loc5)
        {
            var _loc6 = new dofus.datacenter.Achievement(_loc5[i].i, _loc5[i].n, _loc5[i].d, _loc5[i].r[0], _loc5[i].p, _loc5[i].a == "true");
            this._aAchievements[_loc5[i].i] = _loc6;
        } // end of for...in
        super.initialize(oAKS, oAPI);
    }).prototype;
    _loc1.getList = function ()
    {
        this.aks.send("wAL");
    };
    _loc1.getStep = function (nQuestID, nDelta)
    {
    };
    _loc1.onList = function (sExtraData)
    {
        var _loc3 = 0;
        var _loc4 = 0;
        var _loc5 = new Array();
        if (sExtraData.length != 0)
        {
            var _loc6 = sExtraData.split("|");
            var _loc7 = 0;
            
            while (++_loc7, _loc7 < _loc6.length)
            {
                var _loc8 = Number(_loc6[_loc7]);
                if (!_loc8)
                {
                    continue;
                } // end if
                ++_loc3;
                this._aAchievements[_loc8].completed = true;
                _loc4 = _loc4 + this._aAchievements[_loc8].point;
            } // end while
        } // end if
        this.api.datacenter.Temporary.AchievementBook.achievements.replaceAll(0, this._aAchievements);
        this.api.ui.getUIComponent("Achievements").setPendingCount(_loc4);
    };
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

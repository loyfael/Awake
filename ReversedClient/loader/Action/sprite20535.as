// Action script...

// [Initial MovieClip Action of sprite 20535]
#initclip 56
if (!dofus.aks.Ladder)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.aks)
    {
        _global.dofus.aks = new Object();
    } // end if
    var _loc1 = (_global.dofus.aks.Ladder = function (oAKS, oAPI)
    {
        super.initialize(oAKS, oAPI);
    }).prototype;
    _loc1.getInfo = function (guildID)
    {
        this.aks.send("wLi" + guildID);
    };
    _loc1.initList = function ()
    {
        this.aks.send("wLl" + this.NB_DISPLAYED_CLAN_PER_PAGE);
    };
    _loc1.getList = function (page)
    {
        this.aks.send("wLp" + page + ";" + this.NB_DISPLAYED_CLAN_PER_PAGE);
    };
    _loc1.onGetInfo = function (sExtraData)
    {
        var _loc3 = sExtraData.split(";");
        this.api.ui.getUIComponent("Ladder").updateClanInformationWithData(Number(_loc3[0]), Number(_loc3[1]), Number(_loc3[2]), Number(_loc3[3]), _loc3[4], Number(_loc3[5]), _global.parseInt(_loc3[6], 36), _global.parseInt(_loc3[7], 36), _global.parseInt(_loc3[8], 36), _global.parseInt(_loc3[9], 36));
    };
    _loc1.onInitList = function (sExtraData)
    {
        var _loc3 = sExtraData.split("|");
        var _loc4 = Number(_loc3[0]);
        var _loc5 = Number(_loc3[1]);
        var _loc6 = Number(_loc3[2]);
        var _loc7 = new ank.utils.ExtendedArray();
        var _loc8 = 3;
        
        while (++_loc8, _loc8 < _loc3.length)
        {
            var _loc9 = _loc3[_loc8].split(";");
            _loc7.push(new dofus.datacenter.GuildLadder(Number(_loc9[0]), _loc9[1], (_loc5 - 1) * this.NB_DISPLAYED_CLAN_PER_PAGE + _loc8 - 2, Number(_loc9[2]), Number(_loc9[3])));
        } // end while
        var _loc10 = new Object();
        _loc10.ladder = _loc7;
        _loc10.nbMaxPage = _loc4;
        _loc10.nbCurrentPage = _loc5;
        _loc10.myGuildIndex = _loc6;
        this.api.ui.loadUIAutoHideComponent("Ladder", "Ladder", {data: _loc10});
    };
    _loc1.onGetList = function (sExtraData)
    {
        var _loc3 = sExtraData.split("|");
        var _loc4 = Number(_loc3[0]);
        var _loc5 = Number(_loc3[1]);
        var _loc6 = new ank.utils.ExtendedArray();
        var _loc7 = 2;
        
        while (++_loc7, _loc7 < _loc3.length)
        {
            var _loc8 = _loc3[_loc7].split(";");
            _loc6.push(new dofus.datacenter.GuildLadder(Number(_loc8[0]), _loc8[1], (_loc5 - 1) * this.NB_DISPLAYED_CLAN_PER_PAGE + _loc7 - 1, Number(_loc8[2]), Number(_loc8[3])));
        } // end while
        var _loc9 = new Object();
        _loc9.ladder = _loc6;
        _loc9.nbMaxPage = _loc4;
        _loc9.nbCurrentPage = _loc5;
        this.api.ui.getUIComponent("Ladder").update = _loc9;
    };
    _loc1.onError = function ()
    {
        this.api.kernel.showMessage("Erreur", "Ce clan a été supprimé !", "ERROR_BOX", {name: "LadderError"});
        this.api.ui.getUIComponent("Ladder").refresh();
    };
    _loc1.onEmpty = function ()
    {
        this.api.kernel.showMessage("Erreur", "Classement vide !", "ERROR_BOX", {name: "LadderEmpty"});
        this.api.ui.unloadUIComponent("Ladder");
    };
    ASSetPropFlags(_loc1, null, 1);
    _loc1.NB_DISPLAYED_CLAN_PER_PAGE = 10;
} // end if
#endinitclip

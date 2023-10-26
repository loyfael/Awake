// Action script...

// [Initial MovieClip Action of sprite 20974]
#initclip 239
if (!dofus.aks.PVPBattle)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.aks)
    {
        _global.dofus.aks = new Object();
    } // end if
    var _loc1 = (_global.dofus.aks.PVPBattle = function (oAKS, oAPI)
    {
        super.initialize(oAKS, oAPI);
    }).prototype;
    _loc1.createBattleRequest = function ()
    {
        this.aks.send("wPc");
    };
    _loc1.getStep = function (nQuestID, nDelta)
    {
        this.aks.send("QS" + nQuestID + (nDelta != undefined ? ("|" + (nDelta > 0 ? ("+" + nDelta) : (nDelta))) : ("")));
    };
    _loc1.refreshBattlesListRequest = function ()
    {
        this.aks.send("wPL");
    };
    _loc1.getBattleFullInfo = function (battle)
    {
        this.aks.send("wPI" + battle.battleId);
    };
    _loc1.joinTeamBattleRequest = function (battleId, teamId, code)
    {
        if (code == 0 || code == undefined)
        {
            this.aks.send("wPJ" + battleId + "," + teamId);
        }
        else
        {
            this.aks.send("wPJ" + battleId + "," + teamId + "," + code);
        } // end else if
    };
    _loc1.kick = function (playerId)
    {
        this.aks.send("wPK" + playerId);
    };
    _loc1.ready = function ()
    {
        this.aks.send("wPR");
    };
    _loc1.selectType = function (index)
    {
        this.aks.send("wPT" + index);
    };
    _loc1.selectMap = function (index)
    {
        this.aks.send("wPM" + index);
    };
    _loc1.setBattleCode = function (usePass)
    {
        this.aks.send("wPp" + (usePass ? (1) : (0)));
    };
    _loc1.setBattleClan = function (useClan)
    {
        this.aks.send("wPC" + (useClan ? (1) : (0)));
    };
    _loc1.join = function (sExtraData)
    {
        this.fullInfo(sExtraData);
    };
    _loc1.fullInfo = function (sExtraData)
    {
        var _loc3 = this.api.ui.getUIComponent("PVPLobby");
        if (_loc3 == undefined)
        {
            return;
        } // end if
        var _loc4 = sExtraData.split(";");
        if (_loc4.length > 0)
        {
            var _loc10 = _loc4[0].split(",");
            var _loc5 = Number(_loc10[0]);
            var _loc6 = Number(_loc10[1]);
            var _loc7 = Number(_loc10[2]);
            var _loc8 = _loc10[3] == 1;
            var _loc9 = Number(_loc10[4]);
            _loc3.setInfo(_loc5, _loc6, _loc7, _loc8, _loc9);
        } // end if
        if (_loc4.length > 1)
        {
            var _loc11 = 1;
            
            while (++_loc11, _loc11 < _loc4.length)
            {
                var _loc12 = _loc4[_loc11].split(",");
                var _loc13 = Number(_loc12[0]);
                var _loc14 = _loc12[1];
                var _loc15 = Number(_loc12[2]);
                _loc3.setTeamInfo(_loc13, _loc14, _loc15);
                var _loc16 = 3;
                
                while (++_loc16, _loc16 < _loc12.length)
                {
                    var _loc17 = _loc12[_loc16].split("|");
                    var _loc18 = _loc17[0];
                    var _loc19 = Number(_loc17[1]);
                    var _loc20 = Number(_loc17[2]);
                    var _loc21 = Number(_loc17[3]);
                    var _loc22 = Number(_loc17[4]) == 1;
                    _loc3.addPlayer(_loc13, _loc18, _loc19, _loc20, _loc21, _loc22);
                } // end while
            } // end while
        } // end if
    };
    _loc1.lightBattlesInfo = function (sExtraData)
    {
        var _loc3 = this.api.ui.getUIComponent("PVPLobby");
        if (_loc3 == undefined)
        {
            return;
        } // end if
        var _loc4 = new ank.utils.ExtendedArray();
        if (sExtraData.length > 0)
        {
            var _loc5 = sExtraData.split("|");
            var _loc6 = 0;
            
            while (++_loc6, _loc6 < _loc5.length)
            {
                var _loc7 = _loc5[_loc6].split(";");
                var _loc8 = _loc7[0].split(",");
                var _loc9 = Number(_loc8[0]);
                var _loc10 = Number(_loc8[1]);
                var _loc11 = Number(_loc8[2]);
                var _loc12 = _loc8[3] == 1;
                var _loc13 = Number(_loc8[4]);
                _loc8 = _loc7[1].split(",");
                var _loc14 = Number(_loc8[0]);
                var _loc15 = _loc8[1];
                var _loc16 = Number(_loc8[2]);
                var _loc17 = Number(_loc8[3]);
                _loc8 = _loc7[2].split(",");
                var _loc18 = Number(_loc8[0]);
                var _loc19 = _loc8[1];
                var _loc20 = Number(_loc8[2]);
                var _loc21 = Number(_loc8[3]);
                _loc4.push({battleId: _loc9, battleType: _loc10, mapId: _loc11, clanBattle: _loc12, protectedPass: _loc13, name: "SUPER TEST", team1: {id: _loc14, name: _loc15, points: _loc16, size: _loc17}, team2: {id: _loc18, name: _loc19, points: _loc20, size: _loc21}});
            } // end while
        } // end if
        _loc3.updateBattlesList(_loc4);
    };
    _loc1.addPlayerInBattle = function (sExtraData)
    {
        var _loc3 = this.api.ui.getUIComponent("PVPLobby");
        if (_loc3 == undefined)
        {
            return;
        } // end if
        var _loc4 = sExtraData.split(",");
        var _loc5 = Number(_loc4[0]);
        var _loc6 = _loc4[1].split("|");
        var _loc7 = _loc6[0];
        var _loc8 = Number(_loc6[1]);
        var _loc9 = Number(_loc6[2]);
        var _loc10 = Number(_loc6[3]);
        var _loc11 = Number(_loc6[4]) == 1;
        _loc3.addPlayer(_loc5, _loc7, _loc8, _loc9, _loc10, _loc11);
    };
    _loc1.removePlayerInBattle = function (sExtraData)
    {
        var _loc3 = this.api.ui.getUIComponent("PVPLobby");
        if (_loc3 == undefined)
        {
            return;
        } // end if
        var _loc4 = Number(sExtraData);
        _loc3.removePlayer(_loc4);
    };
    _loc1.kickPlayerInBattle = function (sExtraData)
    {
        var _loc3 = this.api.ui.getUIComponent("PVPLobby");
        if (_loc3 == undefined)
        {
            return;
        } // end if
        var _loc4 = Number(sExtraData);
        _loc3.removePlayer(_loc4);
    };
    _loc1.battleDestroyed = function (sExtraData)
    {
        var _loc3 = this.api.ui.getUIComponent("PVPLobby");
        if (_loc3 == undefined)
        {
            return;
        } // end if
        _loc3.cleanSelectedbattleInfo();
    };
    _loc1.playerReady = function (sExtraData, ready)
    {
        var _loc4 = this.api.ui.getUIComponent("PVPLobby");
        if (_loc4 == undefined)
        {
            return;
        } // end if
        var _loc5 = Number(sExtraData);
        _loc4.playerReady(_loc5, ready);
    };
    _loc1.typeChange = function (sExtraData)
    {
        var _loc3 = this.api.ui.getUIComponent("PVPLobby");
        if (_loc3 == undefined)
        {
            return;
        } // end if
        var _loc4 = Number(sExtraData);
        _loc3.typeChange(_loc4);
    };
    _loc1.mapChange = function (sExtraData)
    {
        var _loc3 = this.api.ui.getUIComponent("PVPLobby");
        if (_loc3 == undefined)
        {
            return;
        } // end if
        var _loc4 = Number(sExtraData);
        _loc3.mapChange(_loc4);
    };
    _loc1.useClan = function (sExtraData)
    {
        var _loc3 = this.api.ui.getUIComponent("PVPLobby");
        if (_loc3 == undefined)
        {
            return;
        } // end if
        if (_loc3.isLocalPlayerIsMaster())
        {
            var _loc4 = Number(sExtraData) == 1;
            _loc3.useClan(_loc4);
        }
        else
        {
            this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"), this.api.lang.getText("KICK_BY_CLAN"), "ERROR_BOX");
            _loc3.cleanSelectedbattleInfo();
        } // end else if
    };
    _loc1.usePass = function (sExtraData)
    {
        var _loc3 = this.api.ui.getUIComponent("PVPLobby");
        if (_loc3 == undefined)
        {
            return;
        } // end if
        var _loc4 = Number(sExtraData);
        _loc3.usePass(_loc4);
    };
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

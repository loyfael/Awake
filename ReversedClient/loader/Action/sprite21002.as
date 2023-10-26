// Action script...

// [Initial MovieClip Action of sprite 21002]
#initclip 11
if (!dofus.graphics.gapi.ui.PVPLobby)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.graphics)
    {
        _global.dofus.graphics = new Object();
    } // end if
    if (!dofus.graphics.gapi)
    {
        _global.dofus.graphics.gapi = new Object();
    } // end if
    if (!dofus.graphics.gapi.ui)
    {
        _global.dofus.graphics.gapi.ui = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.gapi.ui.PVPLobby = function ()
    {
        super();
    }).prototype;
    _loc1.cleanSelectedbattleInfo = function ()
    {
        this.cleanCurrentBattle();
    };
    _loc1.setInfo = function (id, type, mapId, clanBattle, protectedPass)
    {
        com.ankamagames.tools.Logger.out("WG PVPLobby : setInfo : " + id, "dofus.graphics.gapi.ui.PVPLobby::setInfo", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/PVPLobby.as", 76);
        this._battleIdSelected = id;
        this._cbTypeSelector.selectedIndex = type;
        this._cbMapSelector.selectedIndex = mapId;
        this._btnClanBattle.selected = clanBattle;
        this._btnUseCode.selected = protectedPass > 0;
        this._cbMapSelector.enabled = false;
        this._cbTypeSelector.enabled = false;
        this._btnClanBattle.enabled = false;
        this._btnUseCode.enabled = false;
        this._buttonJoin1.enabled = true;
        this._buttonJoin2.enabled = true;
    };
    _loc1.setTeamInfo = function (teamId, teamName, teamPoints)
    {
        if (teamId == 0)
        {
            this._team1Id = teamId;
            this._lblTeam1Name.text = teamName;
            this._lblTeam1Points.text = "" + teamPoints;
            this._eaTeam1 = new ank.utils.ExtendedArray();
            this._dgTeam1Players.dataProvider = this._eaTeam1;
        } // end if
        if (teamId == 1)
        {
            this._team2Id = teamId;
            this._lblTeam2Name.text = teamName;
            this._lblTeam2Points.text = "" + teamPoints;
            this._eaTeam2 = new ank.utils.ExtendedArray();
            this._dgTeam2Players.dataProvider = this._eaTeam2;
        } // end if
    };
    _loc1.addPlayer = function (teamId, playerName, playerId, playerPoints, playerLevel, playerReady)
    {
        com.ankamagames.tools.Logger.out("WG PVPLobby : addPlayer : " + teamId + " " + playerName + " " + playerPoints + " " + playerLevel, "dofus.graphics.gapi.ui.PVPLobby::addPlayer", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/PVPLobby.as", 118);
        var _loc8 = 1 + teamId;
        var _loc9 = false;
        var _loc10 = false;
        if (this.api.datacenter.Player.ID == playerId)
        {
            this._BattlesHidder._visible = true;
            this._buttonJoin1.enabled = false;
            this._buttonJoin2.enabled = false;
            _loc9 = true;
            _loc10 = true;
        }
        else if (this["_eaTeam" + _loc8][0].playerId == this.api.datacenter.Player.ID)
        {
            _loc9 = true;
        }
        else if (this._eaTeam1[0].playerId == this.api.datacenter.Player.ID)
        {
            _loc9 = true;
        } // end else if
        this["_eaTeam" + _loc8].push({playerName: playerName, playerId: playerId, playerLevel: playerLevel, playerPoints: playerPoints, showKickButton: _loc9, enableReadyButton: _loc10, playerReady: playerReady});
        if (this._eaTeam1[0].playerId == this.api.datacenter.Player.ID)
        {
            this._cbMapSelector.enabled = true;
            this._cbTypeSelector.enabled = true;
            this._btnClanBattle.enabled = true;
            this._btnUseCode.enabled = true;
        } // end if
        this["_dgTeam" + _loc8 + "Players"].dataProvider = this["_eaTeam" + _loc8];
    };
    _loc1.updateBattlesList = function (battles)
    {
        this._allBattles = battles;
        this.updateBattlesListWithFilter();
    };
    _loc1.removePlayer = function (playerId)
    {
        var _loc3 = this._eaTeam1.findFirstItem("playerId", playerId);
        if (_loc3.index != -1)
        {
            this._eaTeam1.removeItems(_loc3.index, 1);
        } // end if
        _loc3 = this._eaTeam2.findFirstItem("playerId", playerId);
        if (_loc3.index != -1)
        {
            this._eaTeam2.removeItems(_loc3.index, 1);
        } // end if
        this._dgTeam1Players.dataProvider = this._eaTeam1;
        this._dgTeam2Players.dataProvider = this._eaTeam2;
        if (this.api.datacenter.Player.ID == playerId)
        {
            this.cleanCurrentBattle();
        } // end if
    };
    _loc1.playerReady = function (playerId, ready)
    {
        com.ankamagames.tools.Logger.out("WG PVPLobby : playerReady : " + playerId + " " + ready, "dofus.graphics.gapi.ui.PVPLobby::playerReady", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/PVPLobby.as", 177);
        var _loc4 = this._eaTeam1.findFirstItem("playerId", playerId);
        if (_loc4.index != -1)
        {
            com.ankamagames.tools.Logger.out("WG PVPLobby : playerReady 1: " + _loc4.item.playerName, "dofus.graphics.gapi.ui.PVPLobby::playerReady", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/PVPLobby.as", 180);
            _loc4.item.playerReady = ready;
            this._dgTeam1Players.dataProvider = this._eaTeam1;
        } // end if
        _loc4 = this._eaTeam2.findFirstItem("playerId", playerId);
        if (_loc4.index != -1)
        {
            com.ankamagames.tools.Logger.out("WG PVPLobby : playerReady 2: " + _loc4.item.playerName, "dofus.graphics.gapi.ui.PVPLobby::playerReady", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/PVPLobby.as", 186);
            _loc4.item.playerReady = ready;
            this._dgTeam2Players.dataProvider = this._eaTeam2;
        } // end if
    };
    _loc1.typeChange = function (typeIndex)
    {
        this._cbTypeSelector.selectedIndex = typeIndex;
        this._currentBattleType = typeIndex;
        this.setAllReady(false);
    };
    _loc1.mapChange = function (mapindex)
    {
        this._cbMapSelector.selectedIndex = mapindex;
        this._currentBattleMap = mapindex;
        this.setAllReady(false);
    };
    _loc1.useClan = function (useC)
    {
        var _loc3 = new ank.utils.ExtendedArray();
        _loc3.push(this._eaTeam1[0]);
        this._eaTeam1 = _loc3;
        this._dgTeam1Players.dataProvider = this._eaTeam1;
        this._eaTeam2 = new ank.utils.ExtendedArray();
        this._dgTeam2Players.dataProvider = this._eaTeam2;
        this._btnClanBattle.selected = useC;
    };
    _loc1.usePass = function (pass)
    {
        this._btnUseCode.selected = pass > 0;
    };
    _loc1.isLocalPlayerIsMaster = function ()
    {
        return (this._eaTeam1[0].playerId == this.api.datacenter.Player.ID);
    };
    _loc1.init = function ()
    {
        super.init(false);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initData});
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.initComponent});
    };
    _loc1.addListeners = function ()
    {
        this._btnClose.addEventListener("click", this);
        this._buttonCreateBattle.addEventListener("click", this);
        this._buttonCreateBattle.addEventListener("over", this);
        this._buttonCreateBattle.addEventListener("out", this);
        this._buttonRefresh.addEventListener("click", this);
        this._buttonRefresh.addEventListener("over", this);
        this._buttonRefresh.addEventListener("out", this);
        this._dgBattles.addEventListener("itemSelected", this);
        this._cbTypeSelector.addEventListener("itemSelected", this);
        this._cbMapSelector.addEventListener("itemSelected", this);
        this._buttonJoin1.addEventListener("click", this);
        this._buttonJoin1.addEventListener("over", this);
        this._buttonJoin1.addEventListener("out", this);
        this._buttonJoin2.addEventListener("click", this);
        this._buttonJoin2.addEventListener("over", this);
        this._buttonJoin2.addEventListener("out", this);
        this._btnFilterNoClanBattle.addEventListener("click", this);
        this._btnFilterNoCodeBattle.addEventListener("click", this);
        this._btnFilterNo2VS2.addEventListener("click", this);
        this._btnFilterNo4VS4.addEventListener("click", this);
        this._btnFilterNoClanBattle.addEventListener("over", this);
        this._btnFilterNoCodeBattle.addEventListener("over", this);
        this._btnFilterNo2VS2.addEventListener("over", this);
        this._btnFilterNo4VS4.addEventListener("over", this);
        this._btnFilterNoClanBattle.addEventListener("out", this);
        this._btnFilterNoCodeBattle.addEventListener("out", this);
        this._btnFilterNo2VS2.addEventListener("out", this);
        this._btnFilterNo4VS4.addEventListener("out", this);
        this._btnClanBattle.addEventListener("click", this);
        this._btnUseCode.addEventListener("click", this);
        this._btnClanBattle.addEventListener("over", this);
        this._btnUseCode.addEventListener("over", this);
        this._btnClanBattle.addEventListener("out", this);
        this._btnUseCode.addEventListener("out", this);
    };
    _loc1.initData = function ()
    {
        var _loc2 = new ank.utils.ExtendedArray();
        _loc2[0] = {label: "2 VS 2", index: 0, id: 0};
        _loc2[1] = {label: "4 VS 4", index: 1, id: 1};
        this._cbTypeSelector.dataProvider = _loc2;
        this._cbTypeSelector.selectedIndex = 1;
        this._currentBattleType = 1;
        _loc2 = new ank.utils.ExtendedArray();
        _loc2[0] = {label: "MAP 1", index: 0, id: 0};
        this._cbMapSelector.dataProvider = _loc2;
        this._cbMapSelector.selectedIndex = 0;
        this._currentBattleMap = 0;
        this._BattlesHidder._visible = false;
        this._cbMapSelector.enabled = false;
        this._cbTypeSelector.enabled = false;
        this._btnUseCode.enabled = false;
        this._btnClanBattle.enabled = false;
        this.click({target: this._buttonRefresh});
    };
    _loc1.initTexts = function ()
    {
        this._buttonCreateBattle.label = this.api.lang.getText("CREATE_BATTLE");
        this._buttonRefresh.label = this.api.lang.getText("REFRESH_BATTLES_LIST");
        this._buttonJoin1.label = this.api.lang.getText("JOIN_TEAM");
        this._buttonJoin2.label = this.api.lang.getText("JOIN_TEAM");
        this._dgBattles.columnsNames = [this.api.lang.getText("STATE"), this.api.lang.getText("NAME_BIG")];
        this._dgTeam1Players.columnsNames = [this.api.lang.getText("STATE"), this.api.lang.getText("NAME_BIG")];
        this._dgTeam2Players.columnsNames = [this.api.lang.getText("STATE"), this.api.lang.getText("NAME_BIG")];
    };
    _loc1.initComponent = function ()
    {
        this._dgBattles.dataProvider = new ank.utils.ExtendedArray();
        this.cleanSelectedbattleInfo();
        this._buttonJoin1.enabled = false;
        this._buttonJoin2.enabled = false;
    };
    _loc1.callClose = function ()
    {
        this.api.network.PVPBattle.kick(Number(this.api.datacenter.Player.ID));
        this.unloadThis();
        return (true);
    };
    _loc1.setAllReady = function (ready)
    {
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < this._eaTeam1.length)
        {
            this._eaTeam1[_loc3].playerReady = ready;
        } // end while
        var _loc4 = 0;
        
        while (++_loc4, _loc4 < this._eaTeam2.length)
        {
            this._eaTeam2[_loc4].playerReady = ready;
        } // end while
        this._dgTeam1Players.dataProvider = this._eaTeam1;
        this._dgTeam2Players.dataProvider = this._eaTeam2;
    };
    _loc1.cleanCurrentBattle = function ()
    {
        this._BattlesHidder._visible = false;
        this._buttonJoin1.enabled = false;
        this._buttonJoin2.enabled = false;
        this._cbMapSelector.enabled = false;
        this._cbTypeSelector.enabled = false;
        this._btnUseCode.enabled = false;
        this._btnClanBattle.enabled = false;
        this._team1Id = -1;
        this._lblTeam1Name.text = "";
        this._lblTeam1Points.text = "";
        this._eaTeam1 = new ank.utils.ExtendedArray();
        this._dgTeam1Players.dataProvider = this._eaTeam1;
        this._team2Id = -1;
        this._lblTeam2Name.text = "";
        this._lblTeam2Points.text = "";
        this._eaTeam2 = new ank.utils.ExtendedArray();
        this._dgTeam2Players.dataProvider = this._eaTeam2;
    };
    _loc1.updateBattlesListWithFilter = function ()
    {
        var _loc2 = new ank.utils.ExtendedArray();
        for (var index in this._allBattles)
        {
            if (!this._btnFilterNoClanBattle.selected)
            {
                if (this._allBattles[index].clanBattle)
                {
                    continue;
                } // end if
            } // end if
            if (!this._btnFilterNoCodeBattle.selected)
            {
                if (this._allBattles[index].protectedPass)
                {
                    continue;
                } // end if
            } // end if
            if (!this._btnFilterNo2VS2.selected)
            {
                if (this._allBattles[index].battleType == 0)
                {
                    continue;
                } // end if
            } // end if
            if (!this._btnFilterNo4VS4.selected)
            {
                if (this._allBattles[index].battleType == 1)
                {
                    continue;
                } // end if
            } // end if
            _loc2.push(this._allBattles[index]);
        } // end of for...in
        this._dgBattles.dataProvider = _loc2;
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnClose":
            {
                this.callClose();
                break;
            } 
            case "_buttonCreateBattle":
            {
                this.api.network.PVPBattle.createBattleRequest();
                break;
            } 
            case "_buttonRefresh":
            {
                this.api.network.PVPBattle.refreshBattlesListRequest();
                break;
            } 
            case "_buttonJoin1":
            {
                this.api.network.PVPBattle.joinTeamBattleRequest(this._battleIdSelected, this._team1Id);
                break;
            } 
            case "_buttonJoin2":
            {
                this.api.network.PVPBattle.joinTeamBattleRequest(this._battleIdSelected, this._team2Id);
                break;
            } 
            case "_btnFilterNoClanBattle":
            {
                this.updateBattlesListWithFilter();
                break;
            } 
            case "_btnFilterNoCodeBattle":
            {
                this.updateBattlesListWithFilter();
                break;
            } 
            case "_btnFilterNo2VS2":
            {
                this.updateBattlesListWithFilter();
                break;
            } 
            case "_btnFilterNo4VS4":
            {
                this.updateBattlesListWithFilter();
                break;
            } 
            case "_btnUseCode":
            {
                this.api.network.PVPBattle.setBattleCode(this._btnUseCode.selected);
                break;
            } 
            case "_btnClanBattle":
            {
                this.api.network.PVPBattle.setBattleClan(this._btnClanBattle.selected);
                break;
            } 
        } // End of switch
    };
    _loc1.over = function (oEvent)
    {
        if (!this.gapi.isCursorHidden())
        {
            return;
        } // end if
        switch (oEvent.target._name)
        {
            case "_buttonCreateBattle":
            {
                this.gapi.showTooltip(this.api.lang.getText("CREATE_BATTLE_DESC"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_buttonJoin1":
            {
                this.gapi.showTooltip(this.api.lang.getText("JOIN_TEAM_DESC"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_buttonJoin2":
            {
                this.gapi.showTooltip(this.api.lang.getText("JOIN_TEAM_DESC"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnFilterNoClanBattle":
            {
                this.gapi.showTooltip(this.api.lang.getText("SHOW_CLAN_BATTLE_DESC"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnFilterNoCodeBattle":
            {
                this.gapi.showTooltip(this.api.lang.getText("SHOW_CODE_BATTLE_DESC"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnFilterNo2VS2":
            {
                this.gapi.showTooltip(this.api.lang.getText("SHOW_2VS2_BATTLE_DESC"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnFilterNo4VS4":
            {
                this.gapi.showTooltip(this.api.lang.getText("SHOW_4VS4_BATTLE_DESC"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnUseCode":
            {
                this.gapi.showTooltip(this.api.lang.getText("USE_CODE_DESC"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnClanBattle":
            {
                this.gapi.showTooltip(this.api.lang.getText("USE_CLAN_DESC"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
        } // End of switch
    };
    _loc1.out = function (oEvent)
    {
        this.gapi.hideTooltip();
    };
    _loc1.itemSelected = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_dgBattles":
            {
                var _loc3 = oEvent.row.item;
                this.api.network.PVPBattle.getBattleFullInfo(_loc3);
                break;
            } 
            case "_cbTypeSelector":
            {
                var _loc4 = oEvent.target.selectedItem;
                if (this._currentBattleType != _loc4.index)
                {
                    this.api.network.PVPBattle.selectType(_loc4.index);
                } // end if
                break;
            } 
            case "_cbMapSelector":
            {
                var _loc5 = oEvent.target.selectedItem;
                if (this._currentBattleMap != _loc5.index)
                {
                    this.api.network.PVPBattle.selectMap(_loc5.index);
                } // end if
                break;
            } 
        } // End of switch
    };
    _loc1.kick = function (player)
    {
        this.api.network.PVPBattle.kick(player.playerId);
    };
    _loc1.ready = function ()
    {
        this.api.network.PVPBattle.ready();
    };
    ASSetPropFlags(_loc1, null, 1);
    _loc1._eaTeam1 = new ank.utils.ExtendedArray();
    _loc1._eaTeam2 = new ank.utils.ExtendedArray();
    _loc1._currentBattleType = 1;
    _loc1._currentBattleMap = 0;
} // end if
#endinitclip

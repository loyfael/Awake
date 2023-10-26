// Action script...

// [Initial MovieClip Action of sprite 20737]
#initclip 2
if (!dofus.graphics.gapi.ui.dungeon.CreateDungeonTeam)
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
    if (!dofus.graphics.gapi.ui.dungeon)
    {
        _global.dofus.graphics.gapi.ui.dungeon = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.gapi.ui.dungeon.CreateDungeonTeam = function ()
    {
        super();
    }).prototype;
    _loc1.__set__title = function (sTitle)
    {
        this.addToQueue({object: this, method: function ()
        {
            this._winBg.title = sTitle;
        }});
        //return (this.title());
    };
    _loc1.__get__title = function ()
    {
        return (this._winBg.title);
    };
    _loc1.__set__text = function (sText)
    {
        this.addToQueue({object: this, method: function ()
        {
            this._lblDungeonName.text = sText;
        }});
        //return (this.text());
    };
    _loc1.__get__text = function ()
    {
        return (this._lblDungeonName.text);
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.dungeon.CreateDungeonTeam.CLASS_NAME);
    };
    _loc1.callClose = function ()
    {
        if (this._bEnabled)
        {
            this.api.network.Dungeon.leave();
            return (true);
        }
        else
        {
            return (false);
        } // end else if
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.initComponents});
        this.addToQueue({object: this, method: this.updateMembers});
        this.addToQueue({object: this, method: this.addListeners});
    };
    _loc1.initComponents = function ()
    {
        this._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
        this._btnLaunch.label = this.api.lang.getText("LAUNCH");
        this._btnLaunch._visible = this.api.datacenter.Player.dungeonTeamInfos.isLocalPlayerLeader;
    };
    _loc1.addListeners = function ()
    {
        this._btnClose.addEventListener("click", this);
        this._btnCancel.addEventListener("click", this);
        this._btnLaunch.addEventListener("click", this);
        this.api.datacenter.Player.dungeonTeamInfos.addEventListener("modelChanged", this);
    };
    _loc1.updateMembers = function ()
    {
        var _loc2 = this.api.datacenter.Player.dungeonTeamInfos;
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < 4)
        {
            this["_mcMember" + _loc3].infos = _loc2.getMemberInfosByIndex(_loc3);
        } // end while
        this._btnLaunch._visible = this.api.datacenter.Player.dungeonTeamInfos.isLocalPlayerLeader;
    };
    _loc1.kickMember = function (nMemberId)
    {
        this.api.network.Dungeon.kick(nMemberId);
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnClose":
            case "_btnCancel":
            {
                this.api.network.Dungeon.leave();
                break;
            } 
            case "_btnLaunch":
            {
                this.api.network.Dungeon.startDungeon();
            } 
        } // End of switch
    };
    _loc1.modelChanged = function (oEvent)
    {
        switch (oEvent.eventName)
        {
            case "members":
            {
                this.updateMembers();
                break;
            } 
        } // End of switch
    };
    _loc1.addProperty("text", _loc1.__get__text, _loc1.__set__text);
    _loc1.addProperty("title", _loc1.__get__title, _loc1.__set__title);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.dungeon.CreateDungeonTeam = function ()
    {
        super();
    }).CLASS_NAME = "CreateDungeonTeam";
    _loc1._nBackColor = 14933949;
    _loc1._nUpColor = 0;
    _loc1._sCurrentTab = "Back";
} // end if
#endinitclip

// Action script...

// [Initial MovieClip Action of sprite 20513]
#initclip 34
if (!dofus.graphics.gapi.ui.lobby.LobbyTeamPlayerItem)
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
    if (!dofus.graphics.gapi.ui.lobby)
    {
        _global.dofus.graphics.gapi.ui.lobby = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.gapi.ui.lobby.LobbyTeamPlayerItem = function ()
    {
        super();
    }).prototype;
    _loc1.__set__list = function (mcList)
    {
        this._mcList = mcList;
        //return (this.list());
    };
    _loc1.setValue = function (bUsed, sSuggested, oItem)
    {
        if (bUsed)
        {
            this._oItem = oItem;
            this._lblName.text = oItem.playerName;
            this._lblLevel.text = oItem.playerLevel;
            this._lblPoints.text = oItem.playerPoints;
            if (oItem.showKickButton)
            {
                this._btnKick._visible = true;
            }
            else
            {
                this._btnKick._visible = false;
            } // end else if
            if (oItem.enableReadyButton)
            {
                this._btnReady._visible = true;
                this._btnReady.enabled = true;
            }
            else
            {
                this._btnReady._visible = true;
                this._btnReady.enabled = false;
            } // end else if
            com.ankamagames.tools.Logger.out("WG LobbyTeamPlayerItem : setValue :" + oItem.playerName + " : " + oItem.playerReady, "dofus.graphics.gapi.ui.lobby.LobbyTeamPlayerItem::setValue", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/lobby/LobbyTeamPlayerItem.as", 69);
            this._btnReady.selected = oItem.playerReady;
        }
        else if (this._lblName.text != undefined)
        {
            this._lblName.text = "";
            this._lblLevel.text = "";
            this._lblPoints.text = "";
            this._btnKick._visible = false;
            this._btnReady._visible = false;
        } // end else if
    };
    _loc1.init = function ()
    {
        super.init(false);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
    };
    _loc1.addListeners = function ()
    {
        this._btnKick.addEventListener("click", this);
        this._btnKick.addEventListener("over", this);
        this._btnKick.addEventListener("out", this);
        this._btnReady.addEventListener("click", this);
        this._btnReady.addEventListener("over", this);
        this._btnReady.addEventListener("out", this);
    };
    _loc1.click = function (oEvent)
    {
        var _loc3 = this._mcList._parent._parent.api;
        switch (oEvent.target)
        {
            case this._btnKick:
            {
                this._mcList._parent._parent.kick(this._oItem);
                break;
            } 
            case this._btnReady:
            {
                this._mcList._parent._parent.ready(this._oItem);
                break;
            } 
        } // End of switch
    };
    _loc1.over = function (oEvent)
    {
        var _loc3 = this._mcList._parent._parent.api;
        switch (oEvent.target)
        {
            case this._btnKick:
            {
                _loc3.ui.showTooltip(_loc3.lang.getText("KICK_BATTLE_DESC"), oEvent.target, -30, {bXLimit: true, bYLimit: false});
                break;
            } 
            case this._btnReady:
            {
                _loc3.ui.showTooltip(_loc3.lang.getText("READY_FOR_BATTLE_DESC"), oEvent.target, -30, {bXLimit: true, bYLimit: false});
                break;
            } 
        } // End of switch
    };
    _loc1.out = function (oEvent)
    {
        var _loc3 = this._mcList._parent._parent.api;
        switch (oEvent.target)
        {
            case this._btnReady:
            case this._btnKick:
            {
                _loc3.ui.hideTooltip();
                break;
            } 
        } // End of switch
    };
    _loc1.addProperty("list", function ()
    {
    }, _loc1.__set__list);
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

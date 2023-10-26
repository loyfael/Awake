// Action script...

// [Initial MovieClip Action of sprite 20657]
#initclip 178
if (!dofus.graphics.gapi.ui.lobby.LobbyBattleItem)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.lobby.LobbyBattleItem = function ()
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
            com.ankamagames.tools.Logger.out("wg LobbyBattleItem : setValue : " + oItem.team1.name + " " + oItem.team2.name, "dofus.graphics.gapi.ui.lobby.LobbyBattleItem::setValue", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/lobby/LobbyBattleItem.as", 70);
            this._lblName1.text = oItem.team1.name;
            this._lblPoints1.text = oItem.team1.points;
            this._lblSize1.text = oItem.team1.size;
            this._lblName2.text = oItem.team2.name;
            this._lblPoints2.text = oItem.team2.points;
            this._lblSize2.text = oItem.team2.size;
            switch (oItem.battleType)
            {
                case 0:
                {
                    this._lbltype.text = "2 VS 2";
                    break;
                } 
                case 1:
                {
                    this._lbltype.text = "4 VS 4";
                    break;
                } 
            } // End of switch
            this._lblmap.text = "Map " + oItem.mapId;
            this._mvClanBattle._visible = oItem.clanBattle;
            this._mcUsePass._visible = oItem.protectedPass > 0;
        }
        else if (this._lblName1.text != undefined)
        {
            this._lblName1.text = "";
            this._lblPoints1.text = "";
            this._lblSize1.text = "";
            this._lblName2.text = "";
            this._lblPoints2.text = "";
            this._lblSize2.text = "";
            this._lbltype.text = "";
            this._lblmap.text = "";
            this._mvClanBattle._visible = false;
            this._mcUsePass._visible = false;
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
    };
    _loc1.click = function (oEvent)
    {
        var _loc3 = this._mcList._parent._parent.api;
        
        oEvent.target;
    };
    _loc1.over = function (oEvent)
    {
        var _loc3 = this._mcList._parent._parent.api;
        
        oEvent.target;
    };
    _loc1.out = function (oEvent)
    {
        var _loc3 = this._mcList._parent._parent.api;
        _loc3.ui.hideTooltip();
    };
    _loc1.addProperty("list", function ()
    {
    }, _loc1.__set__list);
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

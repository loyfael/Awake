// Action script...

// [Initial MovieClip Action of sprite 20744]
#initclip 9
if (!dofus.graphics.gapi.ui.dungeon.DungeonCreation)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.dungeon.DungeonCreation = function ()
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
    _loc1.__set__mapId = function (nMapId)
    {
        this._nMapId = nMapId;
        //return (this.mapId());
    };
    _loc1.__get__mapId = function ()
    {
        return (this._nMapId);
    };
    _loc1.__set__cellId = function (nCellId)
    {
        this._nCellId = nCellId;
        //return (this.cellId());
    };
    _loc1.__get__cellId = function ()
    {
        return (this._nCellId);
    };
    _loc1.__set__dungeonId = function (nDungeonId)
    {
        this._nDungeonId = nDungeonId;
        //return (this.dungeonId());
    };
    _loc1.__get__dungeonId = function ()
    {
        return (this._nDungeonId);
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.dungeon.DungeonCreation.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.initComponents});
        this.addToQueue({object: this, method: this.addListeners});
    };
    _loc1.initComponents = function ()
    {
        if (!dofus.Constants.DEBUG)
        {
            this._btnHardcoreMode._visible = false;
            this._lblHardcoreMode._visible = false;
        } // end if
        this._lblHardcoreMode.text = this.api.lang.getText("DUNGEON_CREATION_HARDCORE");
        this._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
        this._btnSolo.label = this.api.lang.getText("DUNGEON_CREATION_SOLO");
        this._btnParty.label = this.api.lang.getText("DUNGEON_CREATION_PARTY");
        this._btnEveryone.label = this.api.lang.getText("DUNGEON_CREATION_EVERYONE");
        this._btnParty.enabled = this.api.datacenter.Player.inParty;
    };
    _loc1.addListeners = function ()
    {
        this._btnClose.addEventListener("click", this);
        this._btnCancel.addEventListener("click", this);
        this._btnSolo.addEventListener("click", this);
        if (this._btnParty.enabled)
        {
            this._btnParty.addEventListener("click", this);
        } // end if
        this._btnEveryone.addEventListener("click", this);
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnClose":
            case "_btnCancel":
            {
                break;
            } 
            case "_btnSolo":
            {
                this.addToQueue({object: this.api.network, method: this.api.network.send, params: ["GA515" + this.mapId + "," + this.cellId + "," + (this._btnHardcoreMode.selected ? ("1") : ("0"))]});
                break;
            } 
            case "_btnParty":
            {
                this.addToQueue({object: this.api.network, method: this.api.network.send, params: ["GA516" + this.mapId + "," + this.cellId + "," + (this._btnHardcoreMode.selected ? ("1") : ("0"))]});
                break;
            } 
            case "_btnEveryone":
            {
                this.addToQueue({object: this.api.network, method: this.api.network.send, params: ["GA517" + this.mapId + "," + this.cellId + "," + (this._btnHardcoreMode.selected ? ("1") : ("0"))]});
                break;
            } 
        } // End of switch
        this.api.ui.unloadUIComponent("DungeonCreation");
    };
    _loc1.addProperty("text", _loc1.__get__text, _loc1.__set__text);
    _loc1.addProperty("dungeonId", _loc1.__get__dungeonId, _loc1.__set__dungeonId);
    _loc1.addProperty("cellId", _loc1.__get__cellId, _loc1.__set__cellId);
    _loc1.addProperty("mapId", _loc1.__get__mapId, _loc1.__set__mapId);
    _loc1.addProperty("title", _loc1.__get__title, _loc1.__set__title);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.dungeon.DungeonCreation = function ()
    {
        super();
    }).CLASS_NAME = "DungeonCreation";
} // end if
#endinitclip

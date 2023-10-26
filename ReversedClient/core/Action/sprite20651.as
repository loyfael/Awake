// Action script...

// [Initial MovieClip Action of sprite 20651]
#initclip 172
if (!dofus.graphics.gapi.ui.dungeon.CreateDungeonTeamMember)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.dungeon.CreateDungeonTeamMember = function ()
    {
        super();
    }).prototype;
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.dungeon.CreateDungeonTeamMember.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
    };
    _loc1.addListeners = function ()
    {
        this._btnKickMember.addEventListener("click", this);
    };
    _loc1.__set__infos = function (oInfos)
    {
        this._oMemberInfos = oInfos;
        this.update();
        //return (this.infos());
    };
    _loc1.update = function ()
    {
        if (this._oMemberInfos == null || this._oMemberInfos == undefined)
        {
            this._lblMemberName.text = "";
            this._btnKickMember._visible = false;
            return;
        } // end if
        this._lblMemberName.text = this._oMemberInfos.name;
        this._btnKickMember._visible = this.api.datacenter.Player.dungeonTeamInfos.isLocalPlayerLeader && this._oMemberInfos.id != this.api.datacenter.Player.ID;
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnKickMember":
            {
                com.ankamagames.tools.Logger.out("WG Plop", "dofus.graphics.gapi.ui.dungeon.CreateDungeonTeamMember::click", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/dungeon/CreateDungeonTeamMember.as", 93);
                this._parent.kickMember(this._oMemberInfos.id);
                break;
            } 
        } // End of switch
    };
    _loc1.addProperty("infos", function ()
    {
    }, _loc1.__set__infos);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.dungeon.CreateDungeonTeamMember = function ()
    {
        super();
    }).CLASS_NAME = "CreateDungeonTeamMember";
} // end if
#endinitclip

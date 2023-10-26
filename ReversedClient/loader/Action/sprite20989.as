// Action script...

// [Initial MovieClip Action of sprite 20989]
#initclip 254
if (!dofus.datacenter.DungeonTeamInfos)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.datacenter)
    {
        _global.dofus.datacenter = new Object();
    } // end if
    var _loc1 = (_global.dofus.datacenter.DungeonTeamInfos = function (nId, nDungeonId)
    {
        super();
        this.api = _global.API;
        mx.events.EventDispatcher.initialize(this);
        this.initialize(nId, nDungeonId);
        this._eaMembers = new ank.utils.ExtendedArray();
    }).prototype;
    _loc1.__get__id = function ()
    {
        return (this._nId);
    };
    _loc1.__get__dungeonId = function ()
    {
        return (this._nDungeonId);
    };
    _loc1.__get__isLocalPlayerLeader = function ()
    {
        return (this._eaMembers[0].id == this.api.datacenter.Player.ID);
    };
    _loc1.initialize = function (nId, nDungeonId)
    {
        this._nId = nId;
        this._nDungeonId = nDungeonId;
    };
    _loc1.addMember = function (sMemberData)
    {
        var _loc3 = sMemberData.split(";");
        var _loc4 = new Object();
        _loc4.id = Number(_loc3[0]);
        _loc4.name = _loc3[1];
        _loc4.gfx = Number(_loc3[3]);
        _loc4.color1 = Number(_loc3[4]);
        _loc4.color2 = Number(_loc3[5]);
        _loc4.color3 = Number(_loc3[6]);
        _loc4.color4 = Number(_loc3[7]);
        _loc4.color5 = Number(_loc3[8]);
        this._eaMembers.push(_loc4);
        this.dispatchModification();
        com.ankamagames.tools.Logger.out("WG Ajout d\'un membre a l\'équipe. Data : " + sMemberData + " Nom : " + _loc4.name + " id : " + _loc4.id, "dofus.datacenter.DungeonTeamInfos::addMember", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/datacenter/DungeonTeamInfos.as", 100);
        return (_loc4.id);
    };
    _loc1.removeMember = function (iMemberId)
    {
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < this._eaMembers.length)
        {
            if (this._eaMembers[_loc3].id == iMemberId)
            {
                this._eaMembers.removeItems(_loc3, 1);
                this.dispatchModification();
                return (true);
            } // end if
        } // end while
        return (false);
    };
    _loc1.getMemberInfosByIndex = function (iMemberIndex)
    {
        return (this._eaMembers[iMemberIndex]);
    };
    _loc1.getMemberInfosById = function (iMemberId)
    {
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < this._eaMembers.length)
        {
            if (this._eaMembers[_loc3].id == iMemberId)
            {
                return (this._eaMembers[_loc3]);
            } // end if
        } // end while
        return (null);
    };
    _loc1.dispatchModification = function ()
    {
        this.dispatchEvent({type: "modelChanged", eventName: "members"});
    };
    _loc1.addProperty("isLocalPlayerLeader", _loc1.__get__isLocalPlayerLeader, function ()
    {
    });
    _loc1.addProperty("dungeonId", _loc1.__get__dungeonId, function ()
    {
    });
    _loc1.addProperty("id", _loc1.__get__id, function ()
    {
    });
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

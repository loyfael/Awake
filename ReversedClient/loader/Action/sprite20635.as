﻿// Action script...

// [Initial MovieClip Action of sprite 20635]
#initclip 156
if (!dofus.graphics.gapi.ui.friends.FriendsDisconnectedItem)
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
    if (!dofus.graphics.gapi.ui.friends)
    {
        _global.dofus.graphics.gapi.ui.friends = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.gapi.ui.friends.FriendsDisconnectedItem = function ()
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
            this._lblName.text = oItem.account;
            this._btnRemove._visible = true;
        }
        else if (this._lblName.text != undefined)
        {
            this._lblName.text = "";
            this._btnRemove._visible = false;
        } // end else if
    };
    _loc1.remove = function ()
    {
        this._oItem.owner.removeFriend(this._oItem.name);
    };
    _loc1.init = function ()
    {
        super.init(false);
        this._btnRemove._visible = false;
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
    };
    _loc1.addListeners = function ()
    {
        this._btnRemove.addEventListener("click", this);
    };
    _loc1.click = function (oEvent)
    {
        this._mcList._parent._parent.removeFriend("*" + this._oItem.account);
    };
    _loc1.addProperty("list", function ()
    {
    }, _loc1.__set__list);
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

﻿// Action script...

// [Initial MovieClip Action of sprite 20684]
#initclip 205
if (!dofus.graphics.gapi.ui.quests.QuestsStepItem)
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
    if (!dofus.graphics.gapi.ui.quests)
    {
        _global.dofus.graphics.gapi.ui.quests = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.gapi.ui.quests.QuestsStepItem = function ()
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
            this._lblName.text = oItem.name;
            this._lblName.styleName = oItem.isFinished ? ("GreyLeftSmallLabel") : ("BrownLeftSmallLabel");
            this._mcCheckFinished._visible = oItem.isFinished;
            this._mcArrow._visible = oItem.isCurrent;
        }
        else if (this._lblName.text != undefined)
        {
            this._lblName.text = "";
            this._mcCheckFinished._visible = false;
            this._mcArrow._visible = false;
        } // end else if
    };
    _loc1.init = function ()
    {
        super.init(false);
        this._mcArrow._visible = false;
        this._mcCheckFinished._visible = false;
    };
    _loc1.addProperty("list", function ()
    {
    }, _loc1.__set__list);
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

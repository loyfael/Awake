// Action script...

// [Initial MovieClip Action of sprite 20725]
#initclip 246
if (!dofus.graphics.gapi.ui.quests.QuestsWorldItem)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.quests.QuestsWorldItem = function ()
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
            var _loc5 = 0;
            
            while (++_loc5, _loc5 < 10)
            {
                if (_loc5 < oItem.currentOrbe)
                {
                    this["_orb_" + _loc5].gotoAndStop(2);
                    continue;
                } // end if
                if (_loc5 < oItem.totalOrbe)
                {
                    this["_orb_" + _loc5].gotoAndStop(3);
                    continue;
                } // end if
                this["_orb_" + _loc5]._visible = false;
            } // end while
        }
        else if (this._lblName.text != undefined)
        {
            this._lblName.text = "";
            var _loc6 = 0;
            
            while (++_loc6, _loc6 < 10)
            {
                this["_orb_" + _loc6]._visible = false;
            } // end while
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
        
        oEvent.target;
    };
    _loc1.addProperty("list", function ()
    {
    }, _loc1.__set__list);
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

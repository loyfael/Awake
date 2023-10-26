// Action script...

// [Initial MovieClip Action of sprite 20690]
#initclip 211
if (!dofus.graphics.gapi.ui.AchievementItem)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.AchievementItem = function ()
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
            com.ankamagames.tools.Logger.out("WG AchievementItem : setValue : oItem.isCompleted : " + oItem.isCompleted, "dofus.graphics.gapi.ui.AchievementItem::setValue", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/AchievementItem.as", 54);
            if (oItem.isCompleted)
            {
                _loc5 = oItem.point;
            } // end if
            this._lblpoint.text = _loc5 + "/" + oItem.point;
            this._mcCheckFinished._visible = oItem.isCompleted;
            this._mcCurrent._visible = !oItem.isCompleted;
        }
        else if (this._lblName.text != undefined)
        {
            this._lblName.text = "";
            this._lblpoint.text = "";
            this._mcCheckFinished._visible = false;
            this._mcCurrent._visible = false;
        } // end else if
    };
    _loc1.init = function ()
    {
        super.init(false);
        this._mcCurrent._visible = false;
        this._mcCheckFinished._visible = false;
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

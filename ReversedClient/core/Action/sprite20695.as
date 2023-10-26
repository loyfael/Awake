// Action script...

// [Initial MovieClip Action of sprite 20695]
#initclip 216
if (!dofus.graphics.gapi.ui.Notification)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.Notification = function ()
    {
        super();
    }).prototype;
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.Notification.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initData});
    };
    _loc1.addListeners = function ()
    {
        this._btnDefClose.addEventListener("click", this);
        this._content.onRollOver = function ()
        {
            this._parent.over({target: this});
        };
        this._content.onRollOut = function ()
        {
            this._parent.out({target: this});
        };
    };
    _loc1.initData = function ()
    {
        this.hideInfo();
        this._timerID = _global.setInterval(this, "onTimer", 1000);
    };
    _loc1.addNotification = function (message)
    {
        return;
        var _loc3 = this.gapi.loadUIComponent("NotificationPoint", "NotificationPoint" + this._uniqueKey, {manager: this, message: message});
        _loc3.onRollOver = function ()
        {
            com.ankamagames.tools.Logger.out(" WG Notification : rollOver on Notif", "dofus.graphics.gapi.ui.Notification::addNotification", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Notification.as", 85);
            this._manager.over({target: this});
        };
        _loc3.onRollOut = function ()
        {
            com.ankamagames.tools.Logger.out(" WG Notification : rollOut on Notif", "dofus.graphics.gapi.ui.Notification::addNotification", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Notification.as", 89);
            this._manager.out({target: this});
        };
        var _loc4 = new Array();
        _loc4[0] = _loc3;
        var _loc5 = 1;
        var _loc6 = 0;
        
        while (++_loc6, _loc6 < 10)
        {
            if (this.infos[_loc6] != undefined && this.infos[_loc6] != null)
            {
                _loc4[_loc5] = this.infos[_loc6];
                ++_loc5;
            } // end if
        } // end while
        this.infos = _loc4;
        this._currentInfo = this.infos[0];
        this.reredraw();
        ++this._uniqueKey;
    };
    _loc1.reredraw = function ()
    {
        var _loc2 = new Array();
        var _loc3 = 0;
        var _loc4 = 0;
        
        while (++_loc4, _loc4 < 10)
        {
            if (this.infos[_loc4] != undefined && this.infos[_loc4] != null)
            {
                _loc2[_loc3] = this.infos[_loc4];
                this.infos[_loc4]._y = 380 - _loc3 * 25;
                this.infos[_loc4]._x = 0;
                ++_loc3;
            } // end if
        } // end while
        this.infos = _loc2;
    };
    _loc1.close = function (info)
    {
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < 10)
        {
            if (this.infos[_loc3] != undefined && (this.infos[_loc3] != null && this.infos[_loc3] == info))
            {
                this.infos[_loc3] = null;
                this.gapi.unloadUIComponent(info.instanceName);
            } // end if
        } // end while
        this.reredraw();
        this.hideInfo();
    };
    _loc1.onTimer = function ()
    {
        if (this._mouseOver)
        {
        }
        else if (this._tick > 3)
        {
            this._currentInfo = null;
            this.hideInfo();
        }
        else
        {
            ++this._tick;
        } // end else if
    };
    _loc1.hideInfo = function ()
    {
        this._btnDefClose._visible = false;
        this._content._visible = false;
    };
    _loc1.showInfo = function ()
    {
        this._content._text.text = this._currentInfo.message;
        this._btnDefClose._visible = true;
        this._content._visible = true;
        this._tick = 0;
    };
    _loc1.click = function (oEvent)
    {
        this.close(this._currentInfo);
    };
    _loc1.over = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_content":
            {
                break;
            } 
            default:
            {
                this._currentInfo = oEvent.target;
                this.showInfo();
            } 
        } // End of switch
        this._mouseOver = true;
    };
    _loc1.out = function (oEvent)
    {
        this._mouseOver = false;
    };
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.Notification = function ()
    {
        super();
    }).CLASS_NAME = "Notification";
    _loc1.infos = new Array();
    _loc1._timerID = 0;
    _loc1._uniqueKey = 0;
    _loc1._currentInfo = null;
    _loc1._mouseOver = false;
    _loc1._tick = 0;
} // end if
#endinitclip

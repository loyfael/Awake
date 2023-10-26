// Action script...

// [Initial MovieClip Action of sprite 20679]
#initclip 200
if (!dofus.graphics.gapi.ui.NotificationPoint)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.NotificationPoint = function ()
    {
        super();
    }).prototype;
    _loc1.__set__manager = function (manager)
    {
        this._manager = manager;
        //return (this.manager());
    };
    _loc1.__set__message = function (message)
    {
        this._message = message;
        //return (this.message());
    };
    _loc1.__get__message = function ()
    {
        return (this._message);
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.NotificationPoint.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initData});
    };
    _loc1.addListeners = function ()
    {
    };
    _loc1.initData = function ()
    {
    };
    _loc1.click = function (oEvent)
    {
    };
    _loc1.over = function (oEvent)
    {
    };
    _loc1.out = function (oEvent)
    {
    };
    _loc1.addProperty("manager", function ()
    {
    }, _loc1.__set__manager);
    _loc1.addProperty("message", _loc1.__get__message, _loc1.__set__message);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.NotificationPoint = function ()
    {
        super();
    }).CLASS_NAME = "NotificationPoint";
} // end if
#endinitclip

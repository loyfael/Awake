// Action script...

// [Initial MovieClip Action of sprite 20775]
#initclip 40
if (!dofus.graphics.gapi.ui.PopupInfoInfo)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.PopupInfoInfo = function ()
    {
        super();
    }).prototype;
    _loc1.__set__hidden = function (hidden)
    {
        this._hidden = hidden;
        this._btnOC.selected = hidden;
        //return (this.hidden());
    };
    _loc1.__get__hidden = function ()
    {
        return (this._hidden);
    };
    _loc1.__set__mouseOver = function (over)
    {
        this._mouseOver = over;
        if (over)
        {
            this._tick = 0;
        } // end if
        //return (this.mouseOver());
    };
    _loc1.__get__mouseOver = function ()
    {
        return (this._mouseOver);
    };
    _loc1.__set__tick = function (tick)
    {
        this._tick = tick;
        //return (this.tick());
    };
    _loc1.__get__tick = function ()
    {
        return (this._tick);
    };
    _loc1.__set__manager = function (manager)
    {
        this._manager = manager;
        //return (this.manager());
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.PopupInfoInfo.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initData});
    };
    _loc1.addListeners = function ()
    {
        this._btnDefClose.addEventListener("click", this);
        this._btnOC.addEventListener("click", this);
        this._btnOC.addEventListener("over", this);
        this._btnOC.addEventListener("out", this);
        this._content.onRollOver = function ()
        {
            this._parent._manager.over({target: this._parent});
        };
        this._content.onRollOut = function ()
        {
            this._parent._manager.out({target: this._parent});
        };
    };
    _loc1.initData = function ()
    {
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnDefClose":
            {
                this._manager.close(this);
                break;
            } 
            case "_btnOC":
            {
                this._manager.hide(this);
                break;
            } 
        } // End of switch
    };
    _loc1.over = function (oEvent)
    {
        
        oEvent.target._name;
    };
    _loc1.out = function (oEvent)
    {
    };
    _loc1.addProperty("tick", _loc1.__get__tick, _loc1.__set__tick);
    _loc1.addProperty("hidden", _loc1.__get__hidden, _loc1.__set__hidden);
    _loc1.addProperty("manager", function ()
    {
    }, _loc1.__set__manager);
    _loc1.addProperty("mouseOver", _loc1.__get__mouseOver, _loc1.__set__mouseOver);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.PopupInfoInfo = function ()
    {
        super();
    }).CLASS_NAME = "PopupInfoInfo";
    _loc1._hidden = false;
    _loc1._mouseOver = false;
    _loc1._tick = 0;
} // end if
#endinitclip

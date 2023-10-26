// Action script...

// [Initial MovieClip Action of sprite 20767]
#initclip 32
if (!dofus.graphics.gapi.controls.Heart)
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
    if (!dofus.graphics.gapi.controls)
    {
        _global.dofus.graphics.gapi.controls = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.gapi.controls.Heart = function ()
    {
        super();
    }).prototype;
    _loc1.__set__value = function (nValue)
    {
        nValue = Number(nValue);
        if (_global.isNaN(nValue))
        {
            return;
        } // end if
        this._nValue = nValue;
        if (this._nMax != undefined)
        {
            this.display();
        } // end if
        //return (this.value());
    };
    _loc1.__get__value = function ()
    {
        return (this._nValue);
    };
    _loc1.__set__max = function (nMax)
    {
        nMax = Number(nMax);
        if (_global.isNaN(nMax))
        {
            return;
        } // end if
        this._nMax = nMax;
        if (this._nValue != undefined)
        {
            this.display();
        } // end if
        //return (this.max());
    };
    _loc1.__get__max = function ()
    {
        return (this._nMax);
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.controls.Heart.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.stop();
    };
    _loc1.display = function ()
    {
        this._lbl.text = this._nValue;
        this._mask._y = 34 - this._nValue / this._nMax * 35;
    };
    _loc1.addProperty("max", _loc1.__get__max, _loc1.__set__max);
    _loc1.addProperty("value", _loc1.__get__value, _loc1.__set__value);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.controls.Heart = function ()
    {
        super();
    }).CLASS_NAME = "Heart";
} // end if
#endinitclip

// Action script...

// [Initial MovieClip Action of sprite 21007]
#initclip 16
if (!dofus.graphics.gapi.controls.WGPointsViewer)
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
    var _loc1 = (_global.dofus.graphics.gapi.controls.WGPointsViewer = function ()
    {
        super();
    }).prototype;
    _loc1.__set__background = function (sBackground)
    {
        this._sBackgroundLink = sBackground;
        //return (this.background());
    };
    _loc1.__set__maxValue = function (nMaxValue)
    {
        nMaxValue = Number(nMaxValue);
        if (_global.isNaN(nMaxValue))
        {
            return;
        } // end if
        this._nMaxValue = nMaxValue;
        this.applyValue();
        //return (this.maxValue());
    };
    _loc1.__get__maxValue = function ()
    {
        return (this._nMaxValue);
    };
    _loc1.__set__value = function (nValue)
    {
        nValue = Number(nValue);
        if (_global.isNaN(nValue))
        {
            return;
        } // end if
        this._nValue = nValue;
        this.applyValue();
        //return (this.value());
    };
    _loc1.__get__value = function ()
    {
        return (this._nValue);
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.controls.WGPointsViewer.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.attachMovie(this._sBackgroundLink, "_mcBg", this._mcMask.getDepth() - 1);
        this._mcBg.setMask(this._mcMask);
        com.ankamagames.tools.Logger.out("_WG _width = " + this._width, "dofus.graphics.gapi.controls.WGPointsViewer::createChildren", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/WGPointsViewer.as", 104);
        com.ankamagames.tools.Logger.out("_WG _height = " + this._height, "dofus.graphics.gapi.controls.WGPointsViewer::createChildren", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/WGPointsViewer.as", 105);
        this._xscale = this._mcBg._width;
        this._yscale = this._mcBg._height;
        com.ankamagames.tools.Logger.out("_WG _width = " + this._width, "dofus.graphics.gapi.controls.WGPointsViewer::createChildren", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/WGPointsViewer.as", 110);
        com.ankamagames.tools.Logger.out("_WG _height = " + this._height, "dofus.graphics.gapi.controls.WGPointsViewer::createChildren", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/WGPointsViewer.as", 111);
        this._mcMask._width = this._mcBg._width;
        this._mcMask._height = this._mcBg._height;
    };
    _loc1.applyValue = function ()
    {
        this._mcMask._width = this._mcBg._width / this._nMaxValue * this._nValue;
    };
    _loc1.onRollOver = function ()
    {
        this.dispatchEvent({type: "over"});
    };
    _loc1.onRollOut = function ()
    {
        this.dispatchEvent({type: "out"});
    };
    _loc1.addProperty("value", _loc1.__get__value, _loc1.__set__value);
    _loc1.addProperty("maxValue", _loc1.__get__maxValue, _loc1.__set__maxValue);
    _loc1.addProperty("background", function ()
    {
    }, _loc1.__set__background);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.controls.WGPointsViewer = function ()
    {
        super();
    }).CLASS_NAME = "WGPointsViewer";
} // end if
#endinitclip

// Action script...

// [Initial MovieClip Action of sprite 20538]
#initclip 59
if (!ank.gapi.controls.StylizedRectangle)
{
    if (!ank)
    {
        _global.ank = new Object();
    } // end if
    if (!ank.gapi)
    {
        _global.ank.gapi = new Object();
    } // end if
    if (!ank.gapi.controls)
    {
        _global.ank.gapi.controls = new Object();
    } // end if
    var _loc1 = (_global.ank.gapi.controls.StylizedRectangle = function ()
    {
        super();
    }).prototype;
    _loc1.init = function ()
    {
        super.init(false, ank.gapi.controls.StylizedRectangle.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.createEmptyMovieClip("_mcBackground", 10);
    };
    _loc1.size = function ()
    {
        super.size();
        this.arrange();
    };
    _loc1.arrange = function ()
    {
        if (this._bInitialized)
        {
            this.draw();
        } // end if
    };
    _loc1.draw = function ()
    {
        var _loc2 = this.getStyle();
        var _loc3 = _loc2.cornerradius != undefined ? (_loc2.cornerradius) : (0);
        var _loc4 = _loc2.bgcolor != undefined ? (_loc2.bgcolor) : (16777215);
        var _loc5 = _loc2.alpha != undefined ? (_loc2.alpha) : (100);
        var _loc6 = _loc2.rotation != undefined ? (_loc2.rotation) : (0);
        this._mcBackground.clear();
        ank.gapi.core.UIBasicComponent.drawRoundRect(this._mcBackground, 0, 0, this.__width, this.__height, _loc3, _loc4, _loc5, _loc6);
        if (_loc2.decorationstyle != undefined)
        {
            ank.gapi.core.UIBasicComponent.drawDecoration(this._mcBackground, ank.gapi.styles.StylesManager.getStyle(_loc2.decorationstyle), 0, 0, this.__width, this.__height);
        } // end if
    };
    ASSetPropFlags(_loc1, null, 1);
    (_global.ank.gapi.controls.StylizedRectangle = function ()
    {
        super();
    }).CLASS_NAME = "StylizedRectangle";
} // end if
#endinitclip

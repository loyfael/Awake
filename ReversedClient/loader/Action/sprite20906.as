// Action script...

// [Initial MovieClip Action of sprite 20906]
#initclip 171
if (!dofus.graphics.battlefield.CountdownOverHead)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.graphics)
    {
        _global.dofus.graphics = new Object();
    } // end if
    if (!dofus.graphics.battlefield)
    {
        _global.dofus.graphics.battlefield = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.battlefield.CountdownOverHead = function (aEffects)
    {
        super();
        this.initialize(aEffects);
        this.draw();
    }).prototype;
    _loc1.initialize = function (aEffects)
    {
        super.initialize();
        this._aEffects = aEffects;
        this.createTextField("_txtText", 30, 0, -3 + dofus.graphics.battlefield.AbstractTextOverHead.HEIGHT_SPACER, 0, 0);
        this._txtText.embedFonts = true;
    };
    _loc1.draw = function ()
    {
        var _loc2 = 1000;
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < this._aEffects.length)
        {
            _loc2 = Math.min(_loc2, this._aEffects[_loc3].remainingTurn);
        } // end while
        this._txtText.autoSize = "center";
        this._txtText.text = _loc2.toString();
        this._txtText.selectable = false;
        this._txtText.setTextFormat(dofus.graphics.battlefield.AbstractTextOverHead.TEXT_FORMAT);
        var _loc4 = Math.ceil(this._txtText.textHeight + dofus.graphics.battlefield.AbstractTextOverHead.HEIGHT_SPACER * 2);
        var _loc5 = Math.ceil(this._txtText.textWidth + dofus.graphics.battlefield.AbstractTextOverHead.WIDTH_SPACER * 2);
        this.drawBackground(_loc5, _loc4, dofus.graphics.battlefield.AbstractTextOverHead.BACKGROUND_COLOR);
    };
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

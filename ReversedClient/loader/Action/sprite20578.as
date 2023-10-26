// Action script...

// [Initial MovieClip Action of sprite 20578]
#initclip 99
if (!dofus.graphics.gapi.ui.YourTurn)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.YourTurn = function ()
    {
        super();
    }).prototype;
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.YourTurn.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.loadContent});
    };
    _loc1.loadContent = function ()
    {
        this._mc.gotoAndPlay(2);
        com.ankamagames.tools.Logger.out("WG YourTurn : createChildren", "dofus.graphics.gapi.ui.YourTurn::loadContent", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/YourTurn.as", 51);
    };
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.YourTurn = function ()
    {
        super();
    }).CLASS_NAME = "YourTurn";
} // end if
#endinitclip

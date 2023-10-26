// Action script...

// [Initial MovieClip Action of sprite 20988]
#initclip 253
if (!dofus.graphics.gapi.ui.CenterInfo)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.CenterInfo = function ()
    {
        super();
    }).prototype;
    _loc1.__set__textInfo = function (sText)
    {
        this._sDesc = sText;
        //return (this.textInfo());
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.CenterInfo.CLASS_NAME);
    };
    _loc1.initText = function ()
    {
        super.initText();
        this._lblWhiteDesc.text = this._sDesc;
        com.ankamagames.tools.Logger.out(this._sDesc, "dofus.graphics.gapi.ui.CenterInfo::initText", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/CenterInfo.as", 50);
    };
    _loc1.addProperty("textInfo", function ()
    {
    }, _loc1.__set__textInfo);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.CenterInfo = function ()
    {
        super();
    }).CLASS_NAME = "CenterInfo";
} // end if
#endinitclip

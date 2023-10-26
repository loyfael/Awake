// Action script...

// [Initial MovieClip Action of sprite 20855]
#initclip 120
if (!dofus.graphics.gapi.controls.ladderviewer.LadderViewerClanItem)
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
    if (!dofus.graphics.gapi.controls.ladderviewer)
    {
        _global.dofus.graphics.gapi.controls.ladderviewer = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.gapi.controls.ladderviewer.LadderViewerClanItem = function ()
    {
        super();
    }).prototype;
    _loc1.setValue = function (bUsed, sSuggested, oItem)
    {
        if (bUsed)
        {
            this._oItem = oItem;
            this._lblName.text = oItem.name;
            this._lblRank.text = oItem.rank;
            this._lblLevel.text = oItem.level;
            this._lblPoints.text = oItem.points;
        }
        else if (this._lblName.text != undefined)
        {
            this._lblName.text = "";
            this._lblRank.text = "";
            this._lblLevel.text = "";
            this._lblPoints.text = "";
        } // end else if
    };
    _loc1.init = function ()
    {
        super.init(false);
    };
    _loc1.createChildren = function ()
    {
    };
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

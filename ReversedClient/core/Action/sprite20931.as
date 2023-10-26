// Action script...

// [Initial MovieClip Action of sprite 20931]
#initclip 196
if (!dofus.graphics.gapi.ui.Cookbook)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.Cookbook = function ()
    {
        super();
    }).prototype;
    _loc1.__set__pages = function (aPages)
    {
        this._aPages = aPages;
        //return (this.pages());
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.Cookbook.CLASS_NAME);
    };
    _loc1.destroy = function ()
    {
        this.gapi.hideTooltip();
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.setLeftPageNumber, params: [0]});
        this._btnPrevious._visible = false;
        this._btnPrevious.enabled = true;
        this._btnNext._visible = false;
        this._btnNext.enabled = true;
    };
    _loc1.addListeners = function ()
    {
        this._btnPrevious.addEventListener("click", this);
        this._btnPrevious.addEventListener("over", this);
        this._btnPrevious.addEventListener("out", this);
        this._btnNext.addEventListener("click", this);
        this._btnNext.addEventListener("over", this);
        this._btnNext.addEventListener("out", this);
    };
    _loc1.setLeftPageNumber = function (nPageNum)
    {
        if (this._aPages == undefined)
        {
            return;
        } // end if
        this._nCurrentLeftPageNum = nPageNum;
        var _loc3 = this._aPages[nPageNum];
        var _loc4 = this._aPages[nPageNum + 1];
        this.layoutContent(_loc3, true);
        this.layoutContent(_loc4, false);
        this._btnPrevious._visible = nPageNum > 0;
        this._btnNext._visible = nPageNum + 2 < this._aPages.length;
    };
    _loc1.build = function ()
    {
        this.setLeftPageNumber(0);
    };
    _loc1.layoutContent = function (oPage, bLeft)
    {
        var _loc4 = bLeft ? ("_mcLeftRenderer") : ("_mcRightRenderer");
        var _loc5 = bLeft ? (this._mcLeftPlacer) : (this._mcRightPlacer);
        this[_loc4].removeMovieClip();
        if (oPage != undefined)
        {
            this.attachMovie("CookbookPage", _loc4, this.getNextHighestDepth(), {_x: _loc5._x, _y: _loc5._y, page: oPage});
        } // end if
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnPrevious":
            {
                this.setLeftPageNumber(this._nCurrentLeftPageNum - 2);
                break;
            } 
            case "_btnNext":
            {
                this.setLeftPageNumber(this._nCurrentLeftPageNum + 2);
                break;
            } 
            default:
            {
                break;
            } 
        } // End of switch
    };
    _loc1.over = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnPrevious":
            {
                this.gapi.showTooltip(this.api.lang.getText("PREVIOUS_PAGE"), oEvent.target, -20);
                break;
            } 
            case "_btnNext":
            {
                this.gapi.showTooltip(this.api.lang.getText("NEXT_PAGE"), oEvent.target, -20);
                break;
            } 
            default:
            {
                break;
            } 
        } // End of switch
    };
    _loc1.out = function (oEvent)
    {
        this.gapi.hideTooltip();
    };
    _loc1.addProperty("pages", function ()
    {
    }, _loc1.__set__pages);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.Cookbook = function ()
    {
        super();
    }).CLASS_NAME = "Cookbook";
} // end if
#endinitclip

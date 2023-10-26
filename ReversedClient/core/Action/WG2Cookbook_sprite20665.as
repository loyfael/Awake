// Action script...

// [Initial MovieClip Action of sprite 20665]
#initclip 186
if (!dofus.graphics.gapi.ui.WG2Cookbook)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.WG2Cookbook = function ()
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
        super.init(false, dofus.graphics.gapi.ui.WG2Cookbook.CLASS_NAME);
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
        var _loc2 = this.attachMovie("CraftViewer", "_cvCraftViewer", 20);
        _loc2._x = this._mcLeftPlacer._x;
        _loc2._y = this._mcLeftPlacer._y;
        this.api.network.send("wCG" + this._currentSkill, true);
    };
    _loc1.addListeners = function ()
    {
        this._btnPrevious.addEventListener("click", this);
        this._btnPrevious.addEventListener("over", this);
        this._btnPrevious.addEventListener("out", this);
        this._btnNext.addEventListener("click", this);
        this._btnNext.addEventListener("over", this);
        this._btnNext.addEventListener("out", this);
        this._btnClose.addEventListener("click", this);
        this._button5.onPress = this.press;
        this._button4.onPress = this.press;
        this._button3.onPress = this.press;
    };
    _loc1.press = function ()
    {
        this._parent.click({target: this});
    };
    _loc1.setLeftPageNumber = function (nPageNum)
    {
        if (this._aPages == undefined)
        {
            return;
        } // end if
        this._nCurrentLeftPageNum = nPageNum;
        var _loc3 = this._aPages[nPageNum];
        this.layoutContent(_loc3);
        this._btnPrevious._visible = nPageNum > 0;
        this._btnNext._visible = nPageNum + 1 < this._aPages.length;
    };
    _loc1.build = function ()
    {
        this.setLeftPageNumber(0);
    };
    _loc1.layoutContent = function (oPage)
    {
        var _loc3 = "_mcRightRenderer";
        var _loc4 = this._mcRightPlacer;
        this[_loc3].removeMovieClip();
        if (oPage != undefined)
        {
            this.attachMovie("CookbookPage", _loc3, this.getNextHighestDepth(), {_x: _loc4._x, _y: _loc4._y, page: oPage});
        } // end if
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnClose":
            {
                this.callClose();
                break;
            } 
            case "_btnPrevious":
            {
                this.setLeftPageNumber(this._nCurrentLeftPageNum - 1);
                break;
            } 
            case "_btnNext":
            {
                this.setLeftPageNumber(this._nCurrentLeftPageNum + 1);
                break;
            } 
            case "_button5":
            {
                this._currentSkill = 5;
                this.api.network.send("wCG" + this._currentSkill, true);
                break;
            } 
            case "_button4":
            {
                this._currentSkill = 34;
                this.api.network.send("wCG" + this._currentSkill, true);
                break;
            } 
            case "_button3":
            {
                this._currentSkill = 35;
                this.api.network.send("wCG" + this._currentSkill, true);
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
    _loc1.itemSelected = function (oEvent)
    {
        var _loc3 = oEvent.row.item;
        var _loc4 = "_mcRightRenderer";
        var _loc5 = this._mcRightPlacer;
        var _loc6 = new Object();
        _loc6.recipe = null;
        _loc6.result = _loc3.craftItem.unicID;
        _loc6.resources = new Array();
        var _loc7 = 0;
        
        while (++_loc7, _loc7 < _loc3.items.length)
        {
            _loc6.resources.push({quantity: _loc3.items[_loc7].Quantity, item: _loc3.items[_loc7].unicID});
        } // end while
        this[_loc4].removeMovieClip();
        this.attachMovie("CookbookPage", _loc4, this.getNextHighestDepth(), {_x: _loc5._x, _y: _loc5._y, page: _loc6});
    };
    _loc1.onCookbookData = function (sData)
    {
        var _loc3 = new ank.utils.ExtendedArray();
        if (sData != null && sData.length > 0)
        {
            var _loc4 = sData.split("|");
            var _loc5 = 0;
            
            while (++_loc5, _loc5 < _loc4.length)
            {
                var _loc6 = new dofus.datacenter.Craft(_loc4[_loc5], null);
                _loc3.push(_loc6);
            } // end while
        } // end if
        this._cvCraftViewer.craftList = _loc3;
    };
    _loc1.callClose = function ()
    {
        this.unloadThis();
        return (true);
    };
    _loc1.addProperty("pages", function ()
    {
    }, _loc1.__set__pages);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.WG2Cookbook = function ()
    {
        super();
    }).CLASS_NAME = "WG2Cookbook";
    _loc1._currentSkill = 5;
} // end if
#endinitclip

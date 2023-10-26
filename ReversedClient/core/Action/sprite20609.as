// Action script...

// [Initial MovieClip Action of sprite 20609]
#initclip 130
if (!dofus.graphics.gapi.controls.CookbookPage)
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
    var _loc1 = (_global.dofus.graphics.gapi.controls.CookbookPage = function ()
    {
        super();
    }).prototype;
    _loc1.__set__page = function (oPage)
    {
        this._oPage = oPage;
        if (this.initialized)
        {
            this.addToQueue({object: this, method: this.initTexts});
            this.addToQueue({object: this, method: this.addListeners});
        } // end if
        //return (this.page());
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.controls.CookbookPage.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this._txtRecipe.wordWrap = true;
        this._txtRecipe.multiline = true;
        this._txtRecipe.embedFonts = true;
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.addListeners});
    };
    _loc1.initTexts = function ()
    {
        if (this._oPage == null || this._oPage == undefined)
        {
            return;
        } // end if
        var _loc2 = new dofus.datacenter.Item(0, Number(this._oPage.recipe), 1);
        var _loc3 = new dofus.datacenter.Item(0, Number(this._oPage.result), 1);
        this._lblRecipeTitle.text = _loc3.name;
        this._txtRecipe.text = _loc2.simpleDescription;
        this._cResult.contentData = _loc3;
        var _loc4 = 0;
        
        while (++_loc4, _loc4 < 5)
        {
            if (_loc4 > this._oPage.resources.length - 1)
            {
                this["_lblRes" + (_loc4 + 1)]._visible = false;
                this["_mcRes" + (_loc4 + 1)]._visible = false;
                if (_loc4 > 0)
                {
                    this["_mcSeparator" + _loc4]._visible = false;
                } // end if
                continue;
            } // end if
            var _loc5 = this._oPage.resources[_loc4];
            this["_lblRes" + (_loc4 + 1)].text = "x" + (_loc5.quantity < 10 ? ("0") : ("")) + _loc5.quantity;
            var _loc6 = new dofus.datacenter.Item(0, Number(_loc5.item), 1);
            var _loc7 = this["_mcResPlacer" + (_loc4 + 1)];
            var _loc8 = (ank.gapi.controls.Container)(this.attachMovie("Container", "_cRes" + _loc4, this.getNextHighestDepth(), {contentData: _loc6}));
            _loc8._x = _loc7._x;
            _loc8._y = _loc7._y;
            _loc8.setSize(_loc7._width, _loc7._height);
            _loc8.enabled = true;
        } // end while
    };
    _loc1.addListeners = function ()
    {
        if (this._oPage == null || this._oPage == undefined)
        {
            return;
        } // end if
        this._cResult.addEventListener("over", this);
        this._cResult.addEventListener("out", this);
        var _loc2 = 0;
        
        while (++_loc2, _loc2 < this._oPage.resources.length)
        {
            this["_cRes" + _loc2].addEventListener("over", this);
            this["_cRes" + _loc2].addEventListener("out", this);
        } // end while
    };
    _loc1.over = function (oEvent)
    {
        this.api.ui.showTooltip(oEvent.target.contentData.name, oEvent.target, -20);
    };
    _loc1.out = function (oEvent)
    {
        this.api.ui.hideTooltip();
    };
    _loc1.addProperty("page", function ()
    {
    }, _loc1.__set__page);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.controls.CookbookPage = function ()
    {
        super();
    }).CLASS_NAME = "CookbookPage";
} // end if
#endinitclip

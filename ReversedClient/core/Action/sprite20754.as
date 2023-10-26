// Action script...

// [Initial MovieClip Action of sprite 20754]
#initclip 19
if (!dofus.graphics.gapi.ui.craft.Ingredient)
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
    if (!dofus.graphics.gapi.ui.craft)
    {
        _global.dofus.graphics.gapi.ui.craft = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.gapi.ui.craft.Ingredient = function ()
    {
        super();
    }).prototype;
    _loc1.setItem = function (oItem)
    {
        this._oItem = oItem;
        this._ldrIcon._visible = true;
        this._ldrIcon.contentParams = oItem.params;
        this._ldrIcon.contentPath = oItem.iconFile;
        this._mcFull._visible = true;
        this._lblMeter.text = "x";
        if (this._oItem.Quantity < 10)
        {
            this._lblMeter.text = this._lblMeter.text + "0";
        } // end if
        this._lblMeter.text = this._lblMeter.text + this._oItem.Quantity;
    };
    _loc1.initData = function ()
    {
        this._lblMeter.text = "";
        this._oItem = undefined;
        this._mcFull._visible = false;
        this._ldrIcon._visible = false;
    };
    _loc1.init = function ()
    {
        super.init(false);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initData});
    };
    _loc1.addListeners = function ()
    {
        var ref = this;
        this._btnRemove.onPress = function ()
        {
            ref.click({target: this});
        };
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnRemove":
            {
                if (this._mcFull._visible)
                {
                    this._parent.validateDrop("_lstInventory", this._oItem, 1);
                } // end if
                break;
            } 
        } // End of switch
    };
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

// Action script...

// [Initial MovieClip Action of sprite 20791]
#initclip 56
if (!dofus.graphics.gapi.ui.craft.CraftListItem)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.craft.CraftListItem = function ()
    {
        super();
    }).prototype;
    _loc1.__set__list = function (mcList)
    {
        this._mcList = mcList;
        //return (this.list());
    };
    _loc1.setValue = function (bUsed, sSuggested, oItem)
    {
        if (bUsed)
        {
            this._oItem = oItem;
            this._oCraft = this._parent._parent._parent._parent;
            this._lblName.text = this._oItem.name;
            this._lblMeter.text = "x";
            if (this._oItem.Quantity < 10)
            {
                this._lblMeter.text = this._lblMeter.text + "0";
            } // end if
            this._lblMeter.text = this._lblMeter.text + this._oItem.Quantity;
            this._ldrIcon._visible = true;
            this._ldrIcon.contentParams = this._oItem.params;
            this._ldrIcon.contentPath = this._oItem.iconFile;
        }
        else if (this._lblName.text != undefined)
        {
            this._ldrIcon._visible = false;
            this._lblName.text = "";
            this._lblMeter.text = "x00";
        } // end else if
    };
    _loc1.init = function ()
    {
        super.init(false);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
    };
    _loc1.addListeners = function ()
    {
        var ref = this;
        this._btnAdd.onPress = function ()
        {
            ref.click({target: this});
        };
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnAdd":
            {
                this._oCraft.validateDrop("_mcItem", this._oItem, 1);
                break;
            } 
        } // End of switch
    };
    _loc1.addProperty("list", function ()
    {
    }, _loc1.__set__list);
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

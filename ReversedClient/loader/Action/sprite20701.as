// Action script...

// [Initial MovieClip Action of sprite 20701]
#initclip 222
if (!dofus.graphics.gapi.controls.WG2CraftViewer)
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
    var _loc1 = (_global.dofus.graphics.gapi.controls.WG2CraftViewer = function ()
    {
        super();
    }).prototype;
    _loc1.__set__craftList = function (craftList)
    {
        this._eaCrafts = craftList;
        this.addToQueue({object: this, method: this.layoutContent});
        //return (this.craftList());
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.controls.WG2CraftViewer.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this._lstCrafts._visible = false;
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initTexts});
    };
    _loc1.addListeners = function ()
    {
        this._btnSlot0.addEventListener("click", this);
        this._btnSlot1.addEventListener("click", this);
        this._btnSlot2.addEventListener("click", this);
        this._btnSlot3.addEventListener("click", this);
        this._btnSlot4.addEventListener("click", this);
        this._btnSlot5.addEventListener("click", this);
        this._btnSlot6.addEventListener("click", this);
        this._btnSlot7.addEventListener("click", this);
        this._btnSlot0.addEventListener("over", this);
        this._btnSlot1.addEventListener("over", this);
        this._btnSlot2.addEventListener("over", this);
        this._btnSlot3.addEventListener("over", this);
        this._btnSlot4.addEventListener("over", this);
        this._btnSlot5.addEventListener("over", this);
        this._btnSlot6.addEventListener("over", this);
        this._btnSlot7.addEventListener("over", this);
        this._btnSlot0.addEventListener("out", this);
        this._btnSlot1.addEventListener("out", this);
        this._btnSlot2.addEventListener("out", this);
        this._btnSlot3.addEventListener("out", this);
        this._btnSlot4.addEventListener("out", this);
        this._btnSlot5.addEventListener("out", this);
        this._btnSlot6.addEventListener("out", this);
        this._btnSlot7.addEventListener("out", this);
        this._lstCrafts.addEventListener("itemSelected", this);
    };
    _loc1.initTexts = function ()
    {
        this._lblCrafts.text = this.api.lang.getText("RECEIPTS");
        this._lblFilter.text = this.api.lang.getText("FILTER");
    };
    _loc1.layoutContent = function ()
    {
        var _loc2 = this.api.datacenter.Basics.craftViewer_filter;
        this._btnSlot0.selected = _loc2[0];
        this._btnSlot1.selected = _loc2[1];
        this._btnSlot2.selected = _loc2[2];
        this._btnSlot3.selected = _loc2[3];
        this._btnSlot4.selected = _loc2[4];
        this._btnSlot5.selected = _loc2[5];
        this._btnSlot6.selected = _loc2[6];
        this._btnSlot7.selected = _loc2[7];
        if (this._eaCrafts.length != 0)
        {
            this._lstCrafts._visible = true;
            this._eaCrafts.bubbleSortOn("itemsCount", Array.DESCENDING);
            this._lstCrafts.dataProvider = this._eaCrafts;
            this._lblNoCraft.text = "";
        }
        else
        {
            this._lstCrafts._visible = false;
            this._lblNoCraft.text = this.api.lang.getText("NO_CRAFT_AVAILABLE");
        } // end else if
    };
    _loc1.craftItem = function (oItem)
    {
        this._parent.addCraft(oItem.unicID);
    };
    _loc1.click = function (oEvent)
    {
        var _loc3 = this.api.datacenter.Basics.craftViewer_filter;
        var _loc4 = Number(oEvent.target._name.substr(8));
        _loc3[_loc4] = oEvent.target.selected;
        this.layoutContent();
    };
    _loc1.over = function (oEvent)
    {
        var _loc3 = Number(oEvent.target._name.substr(8)) + 1;
        this.gapi.showTooltip(this.api.lang.getText("CRAFT_SLOT_FILTER", [_loc3]), oEvent.target, -20);
    };
    _loc1.out = function (oEvent)
    {
        this.gapi.hideTooltip();
    };
    _loc1.itemSelected = function (oEvent)
    {
        if (oEvent.row.item != undefined)
        {
            com.ankamagames.tools.Logger.out("WG WG2CraftViewver : itemSelected : item :" + oEvent.row.item.name, "dofus.graphics.gapi.controls.WG2CraftViewer::itemSelected", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/WG2CraftViewer.as", 234);
            this._parent.itemSelected(oEvent);
        } // end if
    };
    _loc1.addProperty("craftList", function ()
    {
    }, _loc1.__set__craftList);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.controls.WG2CraftViewer = function ()
    {
        super();
    }).CLASS_NAME = "WG2CraftViewer";
} // end if
#endinitclip

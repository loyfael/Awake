// Action script...

// [Initial MovieClip Action of sprite 20733]
#initclip 254
if (!dofus.graphics.gapi.ui.Fashion)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.Fashion = function ()
    {
        super();
    }).prototype;
    _loc1.init = function ()
    {
        super.init(false);
    };
    _loc1.createChildren = function ()
    {
        com.ankamagames.tools.Logger.out("WG Fashion.createChildren", "dofus.graphics.gapi.ui.Fashion::createChildren", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Fashion.as", 82);
        this._maleSet._visible = this._femaleSet._visible = false;
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initData});
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.initComponent});
    };
    _loc1.addListeners = function ()
    {
        com.ankamagames.tools.Logger.out("WG Fashion.addListeners", "dofus.graphics.gapi.ui.Fashion::addListeners", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Fashion.as", 101);
        this._cgGrid.addEventListener("dropItem", this);
        this._cgGrid.addEventListener("dragItem", this);
        this._cgGrid.addEventListener("overItem", this);
        this._cgGrid.addEventListener("outItem", this);
        this._hatContainer.addEventListener("drop", this);
        this._tunic1Container.addEventListener("drop", this);
        this._tunic2Container.addEventListener("drop", this);
        var ref = this;
        this._btnResetHat.onPress = function ()
        {
            ref.click({target: this});
        };
        this._btnResetTunic1.onPress = function ()
        {
            ref.click({target: this});
        };
        this._btnResetTunic2.onPress = function ()
        {
            ref.click({target: this});
        };
        this._btnClose.addEventListener("click", this);
        this._btnValidate.onPress = function ()
        {
            ref.click({target: this});
        };
    };
    _loc1.initData = function ()
    {
        com.ankamagames.tools.Logger.out("WG Fashion.initData", "dofus.graphics.gapi.ui.Fashion::initData", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Fashion.as", 127);
        this.dataProvider = this.api.datacenter.Exchange.inventory;
    };
    _loc1.initTexts = function ()
    {
        com.ankamagames.tools.Logger.out("WG Fashion.initTexts", "dofus.graphics.gapi.ui.Fashion::initTexts", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Fashion.as", 135);
        this._lblTitle.text = this.api.lang.getText("FASHION_WIN_TITLE");
        this._lblColor.text = this.api.lang.getText("FASHION_COLORS_WIN_TITLE");
        this._btnValidate._lblLabel.text = this.api.lang.getText("ACCEPT");
    };
    _loc1.initComponent = function ()
    {
        com.ankamagames.tools.Logger.out("WG Fashion.initComponent", "dofus.graphics.gapi.ui.Fashion::initComponent", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Fashion.as", 147);
        this._oOriginalColors = {color1: this.api.datacenter.Player.color1, color2: this.api.datacenter.Player.color2, color3: this.api.datacenter.Player.color3, color4: this.api.datacenter.Player.color4, color5: this.api.datacenter.Player.color5};
        this._oModifiedColors = {color1: this.api.datacenter.Player.color1, color2: this.api.datacenter.Player.color2, color3: this.api.datacenter.Player.color3, color4: this.api.datacenter.Player.color4, color5: this.api.datacenter.Player.color5};
        this._maleSet._visible = this.api.datacenter.Player.Sex == 0;
        this._femaleSet._visible = this.api.datacenter.Player.Sex == 1;
        this._svCharacterViewer.spriteData = (ank.battlefield.datacenter.Sprite)(this.api.datacenter.Player.data);
        this._svCharacterViewer.allowAnimations = false;
    };
    _loc1.__set__dataProvider = function (eaDataProvider)
    {
        this._eaDataProvider.removeEventListener("modelChanged", this);
        this._eaDataProvider = eaDataProvider;
        this._eaDataProvider.addEventListener("modelChanged", this);
        this.updateData();
        //return (this.dataProvider());
    };
    _loc1.modelChanged = function (oEvent)
    {
        com.ankamagames.tools.Logger.out("modelChanged", "dofus.graphics.gapi.ui.Fashion::modelChanged", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Fashion.as", 194);
        this.updateData();
    };
    _loc1.updateData = function ()
    {
        var _loc2 = new ank.utils.ExtendedArray();
        for (var k in this._eaDataProvider)
        {
            var _loc3 = (dofus.datacenter.Item)(this._eaDataProvider[k]);
            if (_loc3 != null && (_loc3.superType == 7 && _loc3.Quantity >= 1))
            {
                _loc2.push(_loc3);
            } // end if
        } // end of for...in
        _loc2.sortOn("_itemName");
        this._cgGrid.dataProvider = _loc2;
    };
    _loc1.setColorItem = function (container, slot, item)
    {
        if (container.contentData != null && container.contentData.item != null)
        {
            var _loc5 = (dofus.datacenter.Item)(container.contentData.item);
            ++_loc5.Quantity;
        } // end if
        if (item != null)
        {
            --item.Quantity;
            container.contentData = {item: item};
            slot.gotoAndStop(2);
            var _loc6 = new Color(slot.cL_peinture);
            _loc6.setRGB(item.price);
        }
        else
        {
            container.contentData = null;
            slot.gotoAndStop(1);
        } // end else if
        this.updateData();
    };
    _loc1.setHatColorItem = function (item)
    {
        this.setColorItem(this._hatContainer, this._hatSlot, item);
        this._oModifiedColors.color1 = item.price;
    };
    _loc1.setTunic1ColorItem = function (item)
    {
        this.setColorItem(this._tunic1Container, this._tunic1Slot, item);
        this._oModifiedColors.color3 = item.price;
    };
    _loc1.setTunic2ColorItem = function (item)
    {
        com.ankamagames.tools.Logger.out("WG Fashion : setTunic2ColorItem : item.price :" + item.price, "dofus.graphics.gapi.ui.Fashion::setTunic2ColorItem", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Fashion.as", 262);
        this.setColorItem(this._tunic2Container, this._tunic2Slot, item);
        this._oModifiedColors.color5 = item.price;
    };
    _loc1.resetHatColorItem = function ()
    {
        this.setColorItem(this._hatContainer, this._hatSlot);
        this._oModifiedColors.color1 = this._oOriginalColors.color1;
    };
    _loc1.resetTunic1ColorItem = function ()
    {
        this.setColorItem(this._tunic1Container, this._tunic1Slot);
        this._oModifiedColors.color3 = this._oOriginalColors.color3;
    };
    _loc1.resetTunic2ColorItem = function ()
    {
        com.ankamagames.tools.Logger.out("WG Fashion : resetTunic2ColorItem ", "dofus.graphics.gapi.ui.Fashion::resetTunic2ColorItem", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Fashion.as", 286);
        this.setColorItem(this._tunic2Container, this._tunic2Slot);
        this._oModifiedColors.color5 = this._oOriginalColors.color5;
    };
    _loc1.applyColors = function ()
    {
        this._svCharacterViewer.setColors(this._oModifiedColors);
    };
    _loc1.validate = function ()
    {
        var _loc2 = this._hatContainer.contentData != null ? ((dofus.datacenter.Item)(this._hatContainer.contentData.item).ID) : (-1);
        var _loc3 = this._tunic1Container.contentData != null ? ((dofus.datacenter.Item)(this._tunic1Container.contentData.item).ID) : (-1);
        var _loc4 = this._tunic2Container.contentData != null ? ((dofus.datacenter.Item)(this._tunic2Container.contentData.item).ID) : (-1);
        this.api.network.send("wFV" + _loc2 + "|" + _loc3 + "|" + _loc4);
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._btnClose:
            {
                this.callClose();
                break;
            } 
            case this._btnValidate:
            {
                this.validate();
                this.closeExchange();
                break;
            } 
            case this._btnResetHat:
            {
                this.resetHatColorItem();
                this.applyColors();
                break;
            } 
            case this._btnResetTunic1:
            {
                this.resetTunic1ColorItem();
                this.applyColors();
                break;
            } 
            case this._btnResetTunic2:
            {
                this.resetTunic2ColorItem();
                this.applyColors();
                break;
            } 
        } // End of switch
    };
    _loc1.callClose = function ()
    {
        this.resetHatColorItem();
        this.resetTunic1ColorItem();
        this.resetTunic2ColorItem();
        this.applyColors();
        this.closeExchange();
    };
    _loc1.dragItem = function (oEvent)
    {
        com.ankamagames.tools.Logger.out("WG dragItem", "dofus.graphics.gapi.ui.Fashion::dragItem", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Fashion.as", 373);
        this.gapi.removeCursor();
        if (oEvent.target.contentData == null)
        {
            return;
        } // end if
        this.gapi.setCursor(oEvent.target.contentData);
    };
    _loc1.dropItem = function (oEvent)
    {
        this.gapi.removeCursor();
    };
    _loc1.overItem = function (oEvent)
    {
        this.gapi.showTooltip(oEvent.target.contentData.name, oEvent.target, -20, null, oEvent.target.contentData.style + "ToolTip");
    };
    _loc1.outItem = function (oEvent)
    {
        this.gapi.hideTooltip();
    };
    _loc1.drop = function (oEvent)
    {
        var _loc3 = (dofus.datacenter.Item)(this.gapi.getCursor());
        if (_loc3 == null || _loc3.Quantity < 1)
        {
            return;
        } // end if
        switch (oEvent.target)
        {
            case this._hatContainer:
            {
                this.setHatColorItem(_loc3);
                break;
            } 
            case this._tunic2Container:
            {
                com.ankamagames.tools.Logger.out("WG Fashion : drop ", "dofus.graphics.gapi.ui.Fashion::drop", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Fashion.as", 420);
                this.setTunic2ColorItem(_loc3);
                break;
            } 
            case this._tunic1Container:
            {
                this.setTunic1ColorItem(_loc3);
                break;
            } 
        } // End of switch
        this.applyColors();
    };
    _loc1.closeExchange = function ()
    {
        this.api.network.Exchange.leave();
    };
    _loc1.addProperty("dataProvider", function ()
    {
    }, _loc1.__set__dataProvider);
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

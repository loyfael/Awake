// Action script...

// [Initial MovieClip Action of sprite 20673]
#initclip 194
if (!dofus.graphics.gapi.controls.Chat)
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
    var _loc1 = (_global.dofus.graphics.gapi.controls.Chat = function ()
    {
        super();
    }).prototype;
    _loc1.__get__filters = function ()
    {
        return (new Array(this._btnFilter0.selected, this._btnFilter1.selected, this._btnFilter2.selected, this._btnFilter3.selected, this._btnFilter4.selected, this._btnFilter5.selected, this._btnFilter6.selected, this._btnFilter7.selected, this._btnFilter8.selected));
    };
    _loc1.__get__selectable = function ()
    {
        return (this._txtChat.selectable);
    };
    _loc1.__set__selectable = function (bSelectable)
    {
        this._txtChat.selectable = bSelectable;
        //return (this.selectable());
    };
    _loc1.__get__chatPrefix = function ()
    {
        return (this._sChatPrefix);
    };
    _loc1.open = function (bOpen)
    {
        if (bOpen == !this._bOpened)
        {
            return;
        } // end if
        this._btnOpenClose.selected = !bOpen;
        if (bOpen)
        {
            var _loc3 = -1;
        }
        else
        {
            _loc3 = 1;
        } // end else if
        this._txtChat.setSize(this._txtChat.width, this._txtChat.height + _loc3 * dofus.graphics.gapi.controls.Chat.OPEN_OFFSET);
        this._y = this._y - _loc3 * dofus.graphics.gapi.controls.Chat.OPEN_OFFSET;
        this._bOpened = !bOpen;
    };
    _loc1.setText = function (sText)
    {
        this._txtChat.text = sText;
    };
    _loc1.updateSmileysEmotes = function ()
    {
        this._sSmileys.update();
    };
    _loc1.hideSmileys = function (bHide)
    {
        this._sSmileys._visible = !bHide;
        this._bSmileysOpened = !bHide;
        this._btnSmileys.selected = this._bSmileysOpened;
    };
    _loc1.showSitDown = function (bShow)
    {
        this._btnSitDown._visible = bShow;
    };
    _loc1.selectFilter = function (nFilter, bSelect)
    {
        this["_btnFilter" + nFilter].selected = bSelect;
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.controls.Chat.CLASS_NAME);
        this.api.kernel.ChatManager.updateRigth();
    };
    _loc1.createChildren = function ()
    {
        var _loc2 = this.api.lang.getConfigText("CHAT_FILTERS");
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < _loc2.length)
        {
            if (_loc2[_loc3] != 1)
            {
                this["_btnFilter" + (_loc3 + 1)]._visible = false;
            } // end if
        } // end while
        this.addToQueue({object: this, method: this.addListeners});
        this.hideSmileys(true);
    };
    _loc1.addListeners = function ()
    {
        this._btnOpenClose.addEventListener("click", this);
        this._btnSmileys.addEventListener("click", this);
        this._btnFilter0.addEventListener("click", this);
        this._btnFilter1.addEventListener("click", this);
        this._btnFilter2.addEventListener("click", this);
        this._btnFilter3.addEventListener("click", this);
        this._btnFilter4.addEventListener("click", this);
        this._btnFilter5.addEventListener("click", this);
        this._btnFilter6.addEventListener("click", this);
        this._btnFilter7.addEventListener("click", this);
        this._btnFilter8.addEventListener("click", this);
        this._btnSitDown.addEventListener("click", this);
        this._btnHelp.addEventListener("click", this);
        this._btnOpenClose.addEventListener("over", this);
        this._btnSmileys.addEventListener("over", this);
        this._btnFilter0.addEventListener("over", this);
        this._btnFilter1.addEventListener("over", this);
        this._btnFilter2.addEventListener("over", this);
        this._btnFilter3.addEventListener("over", this);
        this._btnFilter4.addEventListener("over", this);
        this._btnFilter5.addEventListener("over", this);
        this._btnFilter6.addEventListener("over", this);
        this._btnFilter7.addEventListener("over", this);
        this._btnFilter8.addEventListener("over", this);
        this._btnSitDown.addEventListener("over", this);
        this._btnHelp.addEventListener("over", this);
        this._btnOpenClose.addEventListener("out", this);
        this._btnSmileys.addEventListener("out", this);
        this._btnFilter0.addEventListener("out", this);
        this._btnFilter1.addEventListener("out", this);
        this._btnFilter2.addEventListener("out", this);
        this._btnFilter3.addEventListener("out", this);
        this._btnFilter4.addEventListener("out", this);
        this._btnFilter5.addEventListener("out", this);
        this._btnFilter6.addEventListener("out", this);
        this._btnFilter7.addEventListener("out", this);
        this._btnFilter8.addEventListener("out", this);
        this._btnSitDown.addEventListener("out", this);
        this._btnHelp.addEventListener("out", this);
        this._sSmileys.addEventListener("selectSmiley", this);
        this._sSmileys.addEventListener("selectEmote", this);
        this._txtChat.addEventListener("href", this);
        var _loc2 = this._btnFilter0;
        var _loc3 = 0;
        while (_loc2 != undefined)
        {
            _loc2.selected = this.api.datacenter.Basics.chat_type_visible[_loc3] == true;
            this.api.kernel.ChatManager.setTypeVisible(_loc3, _loc2.selected);
            ++_loc3;
            _loc2 = this["_btnFilter" + _loc3];
        } // end while
        this._btnFilter1.selected = true;
        this.api.kernel.ChatManager.setTypeVisible(1, true);
        this.api.kernel.ChatManager.refresh();
    };
    _loc1.setChatPrefix = function (sPrefix)
    {
        this._sChatPrefix = sPrefix;
        if (sPrefix != "")
        {
            this._btnHelp.label = sPrefix;
            this._btnHelp.icon = "";
        }
        else
        {
            this._btnHelp.label = "";
            this._btnHelp.icon = "UI_BannerChatCommandAll";
        } // end else if
        this.addToQueue({object: this._parent, method: this._parent.placeCursorAtTheEnd});
    };
    _loc1.displayChatHelp = function ()
    {
        this.api.kernel.Console.process("/help");
        this.open(false);
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnSitDown":
            {
                this.api.sounds.events.onBannerChatButtonClick();
                var _loc3 = this.api.lang.getEmoteID("sit");
                if (_loc3 != undefined)
                {
                    this.api.network.Emotes.useEmote(_loc3);
                } // end if
                break;
            } 
            case "_btnSmileys":
            {
                this.api.sounds.events.onBannerChatButtonClick();
                this.hideSmileys(this._bSmileysOpened);
                break;
            } 
            case "_btnOpenClose":
            {
                this.api.sounds.events.onBannerChatButtonClick();
                this.open(!oEvent.target.selected);
                break;
            } 
            case "_btnHelp":
            {
                var _loc4 = this.api.lang.getConfigText("CHAT_FILTERS");
                var _loc5 = this.api.ui.createPopupMenu();
                _loc5.addStaticItem(this.api.lang.getText("CHAT_PREFIX"));
                _loc5.addItem(this.api.lang.getText("DEFAUT"), this, this.setChatPrefix, [""]);
                _loc5.addItem(this.api.lang.getText("TEAM") + " (/t)", this, this.setChatPrefix, ["/t"], this.api.datacenter.Game.isFight);
                _loc5.addItem(this.api.lang.getText("PARTY") + " (/p)", this, this.setChatPrefix, ["/p"], this.api.ui.getUIComponent("Party") != undefined);
                _loc5.addItem(this.api.lang.getText("TRADE") + " (/b)", this, this.setChatPrefix, ["/b"]);
                _loc5.addItem(this.api.lang.getText("GUILD") + " (/g)", this, this.setChatPrefix, ["/g"], this.api.datacenter.Player.guildInfos != undefined);
                if (!dofus.Constants.WG)
                {
                    if (_loc4[4])
                    {
                        _loc5.addItem(this.api.lang.getText("ALIGNMENT") + " (/a)", this, this.setChatPrefix, ["/a"], this.api.datacenter.Player.alignment.index != 0);
                    } // end if
                    if (_loc4[5])
                    {
                        _loc5.addItem(this.api.lang.getText("RECRUITMENT") + " (/r)", this, this.setChatPrefix, ["/r"]);
                    } // end if
                    if (_loc4[6])
                    {
                        _loc5.addItem(this.api.lang.getText("TRADE") + " (/b)", this, this.setChatPrefix, ["/b"]);
                    } // end if
                    if (_loc4[7])
                    {
                        _loc5.addItem(this.api.lang.getText("MEETIC") + " (/i)", this, this.setChatPrefix, ["/i"]);
                    } // end if
                } // end if
                if (this.api.datacenter.Player.isAuthorized)
                {
                    _loc5.addItem(this.api.lang.getText("PRIVATE_CHANNEL") + " (/q)", this, this.setChatPrefix, ["/q"]);
                } // end if
                _loc5.addItem(this.api.lang.getText("HELP"), this, this.displayChatHelp, []);
                _loc5.show(oEvent.target._x, this._y + oEvent.target._y, true);
                break;
            } 
            default:
            {
                this.dispatchEvent({type: "filterChanged", filter: Number(oEvent.target._name.substr(10)), selected: oEvent.target.selected});
                break;
            } 
        } // End of switch
    };
    _loc1.over = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnHelp":
            {
                this.gapi.showTooltip(this.api.lang.getText("CHAT_MENU"), oEvent.target, -20, {bXLimit: false, bYLimit: false});
                break;
            } 
            case "_btnSmileys":
            {
                this.gapi.showTooltip(this.api.lang.getText("CHAT_SHOW_SMILEYS"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnOpenClose":
            {
                this.gapi.showTooltip(this.api.lang.getText("CHAT_SHOW_MORE"), oEvent.target, -33, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnSitDown":
            {
                this.gapi.showTooltip(this.api.lang.getText("SITDOWN_TOOLTIP"), oEvent.target, -46, {bXLimit: true, bYLimit: false});
                break;
            } 
            default:
            {
                var _loc3 = Number(oEvent.target._name.substr(10));
                this.gapi.showTooltip(this.api.lang.getText("CHAT_TYPE" + _loc3), oEvent.target, -20, {bXLimit: true, bYLimit: true});
                break;
            } 
        } // End of switch
    };
    _loc1.out = function (oEvent)
    {
        this.gapi.hideTooltip();
    };
    _loc1.selectSmiley = function (oEvent)
    {
        if (!this.api.datacenter.Player.data.isInMove)
        {
            this.dispatchEvent(oEvent);
            if (this.api.kernel.OptionsManager.getOption("AutoHideSmileys"))
            {
                this.hideSmileys(true);
            } // end if
        } // end if
    };
    _loc1.selectEmote = function (oEvent)
    {
        if (!this.api.datacenter.Player.data.isInMove)
        {
            this.dispatchEvent(oEvent);
            if (this.api.kernel.OptionsManager.getOption("AutoHideSmileys"))
            {
                this.hideSmileys(true);
            } // end if
        } // end if
    };
    _loc1.href = function (oEvent)
    {
        this.dispatchEvent(oEvent);
    };
    _loc1.addProperty("selectable", _loc1.__get__selectable, _loc1.__set__selectable);
    _loc1.addProperty("filters", _loc1.__get__filters, function ()
    {
    });
    _loc1.addProperty("chatPrefix", _loc1.__get__chatPrefix, function ()
    {
    });
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.controls.Chat = function ()
    {
        super();
    }).CLASS_NAME = "Chat";
    (_global.dofus.graphics.gapi.controls.Chat = function ()
    {
        super();
    }).OPEN_OFFSET = 300;
    _loc1._bOpened = false;
    _loc1._sChatPrefix = "";
} // end if
#endinitclip

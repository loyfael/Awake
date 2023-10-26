// Action script...

// [Initial MovieClip Action of sprite 20975]
#initclip 240
if (!dofus.graphics.gapi.controls.MouseShortcuts)
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
    var _loc1 = (_global.dofus.graphics.gapi.controls.MouseShortcuts = function ()
    {
        super();
    }).prototype;
    _loc1.__get__currentTab = function ()
    {
        return (this._sCurrentTab);
    };
    _loc1.__set__meleeVisible = function (b)
    {
        this._ctrCC._visible = b;
        //return (this.meleeVisible());
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.controls.MouseShortcuts.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.initData});
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.addListeners});
    };
    _loc1.getContainer = function (nID)
    {
        return (this["_ctr" + nID]);
    };
    _loc1.setContainer = function (nID, cContainer)
    {
        this["_ctr" + nID] = cContainer;
    };
    _loc1.initData = function ()
    {
        this._ctrCC.contentPath = dofus.Constants.SPELLS_ICONS_PATH + "0.swf";
    };
    _loc1.initTexts = function ()
    {
        this._btnTabSpells.label = this.api.lang.getText("BANNER_TAB_SPELLS");
        this._btnTabItems.label = this.api.lang.getText("BANNER_TAB_ITEMS");
    };
    _loc1.initSlotOpenned = function ()
    {
        this._slotOpenned[4] = 3;
        this._slotOpenned[5] = 6;
        this._slotOpenned[6] = 8;
        this._slotOpenned[7] = 13;
        this._slotOpenned[8] = 5;
        this._slotOpenned[9] = 15;
        this._slotOpenned[10] = 200;
    };
    _loc1.isSpellSlotOpen = function (lvl, slotId)
    {
        if (!this.slotOpennedInitialized)
        {
            this.initSlotOpenned();
        } // end if
        return (this._slotOpenned[slotId] <= lvl || this["_ctr" + slotId].contentData != undefined);
    };
    _loc1.initSpellSlot = function ()
    {
        var _loc2 = this.api.datacenter.Player.Level;
        var _loc3 = 1;
        
        while (++_loc3, _loc3 <= dofus.graphics.gapi.controls.MouseShortcuts.MAX_CONTAINER)
        {
            var _loc4 = this["_bg" + _loc3];
            var _loc5 = this["_ctr" + _loc3];
            if (this.isSpellSlotOpen(_loc2, _loc3) && (_loc3 != dofus.graphics.gapi.controls.MouseShortcuts.WG_RUNE1_SPELL_POSITION && (_loc3 != dofus.graphics.gapi.controls.MouseShortcuts.WG_RUNE2_SPELL_POSITION && _loc3 != dofus.graphics.gapi.controls.MouseShortcuts.WG_PET_SPELL_POSITION)))
            {
                _loc5.addEventListener("drag", this);
                _loc5.addEventListener("drop", this);
                _loc4.gotoAndStop(1);
                _loc4._visible = true;
                _loc5._visible = true;
                continue;
            } // end if
            _loc5.removeEventListener("drag", this);
            _loc5.removeEventListener("drop", this);
            if (!this.isSpellSlotOpen(_loc2, _loc3))
            {
                _loc4.gotoAndStop(2);
                _loc4._visible = false;
                _loc5._visible = false;
                continue;
            } // end if
            _loc4.gotoAndStop(1);
            _loc4._visible = true;
            _loc5._visible = true;
        } // end while
    };
    _loc1.initItemSlot = function ()
    {
        var _loc2 = this.api.datacenter.Player.Level;
        var _loc3 = 1;
        
        while (++_loc3, _loc3 <= dofus.graphics.gapi.controls.MouseShortcuts.MAX_CONTAINER)
        {
            var _loc4 = this["_bg" + _loc3];
            var _loc5 = this["_ctr" + _loc3];
            _loc5.addEventListener("drag", this);
            _loc5.addEventListener("drop", this);
            _loc4.gotoAndStop(1);
        } // end while
    };
    _loc1.addListeners = function ()
    {
        this._btnTabSpells.addEventListener("click", this);
        this._btnTabItems.addEventListener("click", this);
        this._btnTabSpells.addEventListener("over", this);
        this._btnTabItems.addEventListener("over", this);
        this._btnTabSpells.addEventListener("out", this);
        this._btnTabItems.addEventListener("out", this);
        var _loc2 = this.api.datacenter.Player.Level;
        var _loc3 = 1;
        
        while (++_loc3, _loc3 <= dofus.graphics.gapi.controls.MouseShortcuts.MAX_CONTAINER)
        {
            var _loc4 = this["_ctr" + _loc3];
            _loc4.addEventListener("click", this);
            _loc4.addEventListener("dblClick", this);
            _loc4.addEventListener("over", this);
            _loc4.addEventListener("out", this);
            _loc4.params = {position: _loc3};
        } // end while
        this.initSpellSlot();
        this._ctrCC.addEventListener("click", this);
        this._ctrCC.addEventListener("over", this);
        this._ctrCC.addEventListener("out", this);
        this.api.kernel.KeyManager.addShortcutsListener("onShortcut", this);
        this.api.datacenter.Player.Spells.addEventListener("modelChanged", this);
        this.api.datacenter.Player.Inventory.addEventListener("modelChanged", this);
    };
    _loc1.clearSpellStateOnAllContainers = function ()
    {
        var _loc2 = this.api.datacenter.Player.Spells;
        for (var k in _loc2)
        {
            if (_global.isNaN(_loc2[k].position))
            {
                continue;
            } // end if
            var _loc3 = this["_ctr" + _loc2[k].position];
            _loc3.showLabel = false;
            ank.gapi.core.UIBasicComponent.setMovieClipTransform(_loc3.content, dofus.graphics.gapi.controls.MouseShortcuts.NO_TRANSFORM);
        } // end of for...in
        ank.gapi.core.UIBasicComponent.setMovieClipTransform(this._ctrCC.content, dofus.graphics.gapi.controls.MouseShortcuts.NO_TRANSFORM);
    };
    _loc1.setSpellStateOnAllContainers = function ()
    {
        com.ankamagames.tools.Logger.out("WG on change le state des spells", "dofus.graphics.gapi.controls.MouseShortcuts::setSpellStateOnAllContainers", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/MouseShortcuts.as", 288);
        if (this._sCurrentTab != dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS)
        {
            this.setItemStateOnAllContainers();
            return;
        } // end if
        var _loc2 = this.api.datacenter.Player.Spells;
        for (var k in _loc2)
        {
            if (_global.isNaN(_loc2[k].position))
            {
                continue;
            } // end if
            this.setSpellStateOnContainer(_loc2[k].position);
        } // end of for...in
        this.setSpellStateOnContainer(0);
    };
    _loc1.setItemStateOnAllContainers = function ()
    {
        com.ankamagames.tools.Logger.out("WG On cherche l\'état des items", "dofus.graphics.gapi.controls.MouseShortcuts::setItemStateOnAllContainers", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/MouseShortcuts.as", 315);
        if (this._sCurrentTab != dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS)
        {
            return;
        } // end if
        var _loc2 = this.api.datacenter.Player.Inventory;
        for (var k in _loc2)
        {
            var _loc3 = _loc2[k].position - dofus.graphics.gapi.controls.MouseShortcuts.ITEM_OFFSET;
            if (_global.isNaN(_loc3) && _loc3 < 1)
            {
                continue;
            } // end if
            this.setItemStateOnContainer(_loc3);
        } // end of for...in
        this.setSpellStateOnContainer(0);
    };
    _loc1.updateSpells = function ()
    {
        var _loc2 = new Array();
        var _loc3 = 1;
        
        while (++_loc3, _loc3 <= dofus.graphics.gapi.controls.MouseShortcuts.MAX_CONTAINER)
        {
            _loc2[_loc3] = true;
        } // end while
        var _loc4 = this.api.datacenter.Player.Spells;
        for (var k in _loc4)
        {
            var _loc5 = _loc4[k];
            var _loc6 = _loc5.position;
            if (!_global.isNaN(_loc6))
            {
                this["_ctr" + _loc6].contentData = _loc5;
                _loc2[_loc6] = false;
            } // end if
        } // end of for...in
        var _loc7 = 1;
        
        while (++_loc7, _loc7 <= dofus.graphics.gapi.controls.MouseShortcuts.MAX_CONTAINER)
        {
            if (_loc2[_loc7])
            {
                this["_ctr" + _loc7].contentData = undefined;
            } // end if
        } // end while
        com.ankamagames.tools.Logger.out("WG update des sorts", "dofus.graphics.gapi.controls.MouseShortcuts::updateSpells", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/MouseShortcuts.as", 374);
        this.initSpellSlot();
        this.addToQueue({object: this, method: this.setSpellStateOnAllContainers});
    };
    _loc1.updateItems = function ()
    {
        var _loc2 = new Array();
        var _loc3 = 1;
        
        while (++_loc3, _loc3 <= dofus.graphics.gapi.controls.MouseShortcuts.MAX_CONTAINER)
        {
            _loc2[_loc3] = true;
        } // end while
        var _loc4 = this.api.datacenter.Player.Inventory;
        for (var k in _loc4)
        {
            var _loc5 = _loc4[k];
            if (!_global.isNaN(_loc5.position))
            {
                if (_loc5.position < dofus.graphics.gapi.controls.MouseShortcuts.ITEM_OFFSET + 1)
                {
                    continue;
                } // end if
                var _loc6 = _loc5.position - dofus.graphics.gapi.controls.MouseShortcuts.ITEM_OFFSET;
                var _loc7 = this["_ctr" + _loc6];
                _loc7.contentData = _loc5;
                if (_loc5.Quantity > 1)
                {
                    _loc7.label = String(_loc5.Quantity);
                } // end if
                _loc2[_loc6] = false;
            } // end if
        } // end of for...in
        var _loc8 = 1;
        
        while (++_loc8, _loc8 <= dofus.graphics.gapi.controls.MouseShortcuts.MAX_CONTAINER)
        {
            if (_loc2[_loc8])
            {
                this["_ctr" + _loc8].contentData = undefined;
            } // end if
        } // end while
        this.initItemSlot();
        this.addToQueue({object: this, method: this.setItemStateOnAllContainers});
    };
    _loc1.setSpellStateOnContainer = function (nIndex)
    {
        var _loc3 = nIndex == 0 ? (this._ctrCC) : (this["_ctr" + nIndex]);
        var _loc4 = nIndex == 0 ? (this.api.datacenter.Player.Spells[0]) : (_loc3.contentData);
        if (_loc4 == undefined)
        {
            return;
        } // end if
        if (this.api.kernel.TutorialManager.isTutorialMode)
        {
            .can = true;
        }
        else
        {
            var _loc5 = this.api.datacenter.Player.SpellsManager.checkCanLaunchSpellReturnObject(_loc4.ID);
        } // end else if
        if (_loc5.can == false)
        {
            switch (_loc5.type)
            {
                case "NOT_IN_REQUIRED_STATE":
                case "IN_FORBIDDEN_STATE":
                case "NOT_PLAYER_TURN":
                {
                    ank.gapi.core.UIBasicComponent.setMovieClipTransform(_loc3.content, dofus.graphics.gapi.controls.MouseShortcuts.WRONG_STATE_TRANSFORM);
                    if (_loc5.params[1])
                    {
                        _loc3.showLabel = true;
                        _loc3.label = _loc5.params[1];
                    }
                    else
                    {
                        _loc3.showLabel = false;
                    } // end else if
                    break;
                } 
                case "NOT_ENOUGH_AP":
                case "CANT_SUMMON_MORE_CREATURE":
                case "CANT_LAUNCH_MORE":
                case "CANT_RELAUNCH":
                case "NOT_IN_FIGHT":
                {
                    _loc3.showLabel = false;
                    ank.gapi.core.UIBasicComponent.setMovieClipTransform(_loc3.content, dofus.graphics.gapi.controls.MouseShortcuts.INACTIVE_TRANSFORM);
                    break;
                } 
                case "CANT_LAUNCH_BEFORE":
                {
                    ank.gapi.core.UIBasicComponent.setMovieClipTransform(_loc3.content, dofus.graphics.gapi.controls.MouseShortcuts.INACTIVE_TRANSFORM);
                    _loc3.showLabel = true;
                    _loc3.label = _loc5.params[0];
                    break;
                } 
            } // End of switch
        }
        else
        {
            _loc3.showLabel = false;
            ank.gapi.core.UIBasicComponent.setMovieClipTransform(_loc3.content, dofus.graphics.gapi.controls.MouseShortcuts.NO_TRANSFORM);
        } // end else if
    };
    _loc1.setItemStateOnContainer = function (nIndex)
    {
        var _loc3 = this["_ctr" + nIndex];
        var _loc4 = _loc3.contentData;
        if (_loc4 == undefined)
        {
            return;
        } // end if
        _loc3.showLabel = _loc4.Quantity > 1;
        if (this.api.datacenter.Game.isRunning)
        {
            if (dofus.Constants.WG_DISABLE_ITEM_OUT_OF_TURN && !this.api.datacenter.Player.isCurrentPlayer)
            {
                ank.gapi.core.UIBasicComponent.setMovieClipTransform(_loc3.content, dofus.graphics.gapi.controls.MouseShortcuts.WRONG_STATE_TRANSFORM);
            }
            else if (_loc4.castSpell)
            {
                ank.gapi.core.UIBasicComponent.setMovieClipTransform(_loc3.content, dofus.graphics.gapi.controls.MouseShortcuts.NO_TRANSFORM);
            }
            else
            {
                ank.gapi.core.UIBasicComponent.setMovieClipTransform(_loc3.content, dofus.graphics.gapi.controls.MouseShortcuts.INACTIVE_TRANSFORM);
            } // end else if
        }
        else if (_loc4.castSpell)
        {
            ank.gapi.core.UIBasicComponent.setMovieClipTransform(_loc3.content, dofus.graphics.gapi.controls.MouseShortcuts.INACTIVE_TRANSFORM);
        }
        else
        {
            ank.gapi.core.UIBasicComponent.setMovieClipTransform(_loc3.content, dofus.graphics.gapi.controls.MouseShortcuts.NO_TRANSFORM);
        } // end else if
    };
    _loc1.updateCurrentTabInformations = function ()
    {
        switch (this._sCurrentTab)
        {
            case dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS:
            {
                this.updateSpells();
                this._ctrCC._visible = !this.api.datacenter.Player.isMutant;
                break;
            } 
            case dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS:
            {
                this.updateItems();
                this._ctrCC._visible = false;
                this.api.ui.getUIComponent("Banner").updateEye();
                break;
            } 
        } // End of switch
    };
    _loc1.setCurrentTab = function (sNewTab)
    {
        if (sNewTab != this._sCurrentTab)
        {
            var _loc3 = this["_btnTab" + this._sCurrentTab];
            var _loc4 = this["_btnTab" + sNewTab];
            _loc3.selected = true;
            _loc3.enabled = true;
            _loc4.selected = false;
            _loc4.enabled = false;
            this._sCurrentTab = sNewTab;
        } // end if
        this.updateCurrentTabInformations();
    };
    _loc1.onShortcut = function (sShortcut)
    {
        var _loc3 = true;
        switch (sShortcut)
        {
            case "SWAP":
            {
                if (this.gapi.getUIComponent("Inventory") != undefined)
                {
                    this.gapi.unloadUIComponent("Inventory");
                } // end if
                this.setCurrentTab(this._sCurrentTab == dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS ? (dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS) : (dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS));
                _loc3 = false;
                break;
            } 
            case "SH0":
            {
                this.click({target: this._ctrCC});
                _loc3 = false;
                break;
            } 
            case "SH1":
            {
                this.click({target: this._ctr1, keyBoard: true});
                _loc3 = false;
                break;
            } 
            case "SH2":
            {
                this.click({target: this._ctr2, keyBoard: true});
                _loc3 = false;
                break;
            } 
            case "SH3":
            {
                this.click({target: this._ctr3, keyBoard: true});
                _loc3 = false;
                break;
            } 
            case "SH4":
            {
                this.click({target: this._ctr4, keyBoard: true});
                _loc3 = false;
                break;
            } 
            case "SH5":
            {
                this.click({target: this._ctr5, keyBoard: true});
                _loc3 = false;
                break;
            } 
            case "SH6":
            {
                this.click({target: this._ctr6, keyBoard: true});
                _loc3 = false;
                break;
            } 
            case "SH7":
            {
                this.click({target: this._ctr7, keyBoard: true});
                _loc3 = false;
                break;
            } 
            case "SH8":
            {
                this.click({target: this._ctr8, keyBoard: true});
                _loc3 = false;
                break;
            } 
            case "SH9":
            {
                this.click({target: this._ctr9, keyBoard: true});
                _loc3 = false;
                break;
            } 
            case "SH10":
            {
                this.click({target: this._ctr10, keyBoard: true});
                _loc3 = false;
                break;
            } 
            case "SH11":
            {
                this.click({target: this._ctr11, keyBoard: true});
                _loc3 = false;
                break;
            } 
            case "SH12":
            {
                this.click({target: this._ctr12, keyBoard: true});
                _loc3 = false;
                break;
            } 
            case "SH13":
            {
                this.click({target: this._ctr13, keyBoard: true});
                _loc3 = false;
                break;
            } 
            case "SH14":
            {
                this.click({target: this._ctr14, keyBoard: true});
                _loc3 = false;
                break;
            } 
        } // End of switch
        return (_loc3);
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnTabSpells":
            {
                this.api.sounds.events.onBannerSpellItemButtonClick();
                this.setCurrentTab(dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS);
                break;
            } 
            case "_btnTabItems":
            {
                this.api.sounds.events.onBannerSpellItemButtonClick();
                this.setCurrentTab(dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS);
                break;
            } 
            case "_ctrCC":
            {
                if (this._ctrCC._visible)
                {
                    if (this.api.kernel.TutorialManager.isTutorialMode)
                    {
                        this.api.kernel.TutorialManager.onWaitingCase({code: "CC_CONTAINER_SELECT"});
                        break;
                    } // end if
                    this.api.kernel.GameManager.switchToSpellLaunch(this.api.datacenter.Player.Spells[0], false);
                } // end if
                break;
            } 
            default:
            {
                switch (this._sCurrentTab)
                {
                    case dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS:
                    {
                        if (this.api.datacenter.Game.isFight)
                        {
                            this.api.sounds.events.onBannerSpellSelect();
                            if (this.api.kernel.TutorialManager.isTutorialMode)
                            {
                                this.api.kernel.TutorialManager.onWaitingCase({code: "SPELL_CONTAINER_SELECT", params: [Number(oEvent.target._name.substr(4))]});
                                break;
                            } // end if
                            if (this.gapi.getUIComponent("Spells") != undefined)
                            {
                                return;
                            } // end if
                            var _loc3 = oEvent.target.contentData;
                            if (_loc3 == undefined)
                            {
                                return;
                            } // end if
                            this.api.kernel.GameManager.switchToSpellLaunch(_loc3, true);
                        }
                        else
                        {
                            switch (oEvent.target._name)
                            {
                                case "_ctrCC":
                                {
                                    var _loc4 = this.api.datacenter.Player.Spells[0];
                                    break;
                                } 
                                default:
                                {
                                    _loc4 = oEvent.target.contentData;
                                    break;
                                } 
                            } // End of switch
                            if (_loc4 == undefined)
                            {
                                return;
                            } // end if
                            this.gapi.loadUIAutoHideComponent("SpellInfos", "SpellInfos", {spell: _loc4}, {bStayIfPresent: true});
                        } // end else if
                        break;
                    } 
                    case dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS:
                    {
                        if (this.api.kernel.TutorialManager.isTutorialMode)
                        {
                            this.api.kernel.TutorialManager.onWaitingCase({code: "OBJECT_CONTAINER_SELECT", params: [Number(oEvent.target._name.substr(4))]});
                            break;
                        } // end if
                        if (Key.isDown(dofus.Constants.CHAT_INSERT_ITEM_KEY) && oEvent.target.contentData != undefined)
                        {
                            this.api.kernel.GameManager.insertItemInChat(oEvent.target.contentData);
                            return;
                        } // end if
                        var _loc5 = this.gapi.getUIComponent("Inventory");
                        if (_loc5 != undefined)
                        {
                            _loc5.showItemInfos(oEvent.target.contentData);
                        }
                        else
                        {
                            var _loc6 = oEvent.target.contentData;
                            if (_loc6 == undefined)
                            {
                                return;
                            } // end if
                            if (!this.api.datacenter.Player.canUseObject)
                            {
                                return;
                            } // end if
                            if (this.api.datacenter.Game.isRunning && (dofus.Constants.WG_DISABLE_ITEM_OUT_OF_TURN && !this.api.datacenter.Player.isCurrentPlayer))
                            {
                                return;
                            } // end if
                            com.ankamagames.tools.Logger.out("WG On essaie d\'utiliser un objet qui lance un sort " + _loc6.castSpell + " peut être ciblé " + _loc6.canTarget + " et utilisé " + _loc6.canUse, "dofus.graphics.gapi.controls.MouseShortcuts::click", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/MouseShortcuts.as", 805);
                            if (_loc6.castSpell)
                            {
                                if (!this.api.datacenter.Game.isFight)
                                {
                                    return;
                                } // end if
                                com.ankamagames.tools.Logger.out("WG From MouseShortcuts.as:695 On devrait lancer le sort [ " + _loc6.effects[0].param1 + ", " + _loc6.effects[0].param2 + ", " + _loc6.effects[0].param3 + ", " + _loc6.effects[0].param4 + " ]", "dofus.graphics.gapi.controls.MouseShortcuts::click", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/MouseShortcuts.as", 811);
                                var _loc7 = new dofus.datacenter.Spell(_loc6.effects[0].param1, _loc6.effects[0].param2, undefined, _loc6.ID);
                                this.api.kernel.GameManager.switchToSpellLaunch(_loc7, true);
                            }
                            else if (_loc6.canTarget)
                            {
                                this.api.kernel.GameManager.switchToItemTarget(_loc6);
                            }
                            else if (_loc6.canUse && oEvent.keyBoard)
                            {
                                this.api.network.Items.use(_loc6.ID);
                            } // end else if
                        } // end else if
                        break;
                    } 
                } // End of switch
                break;
            } 
        } // End of switch
    };
    _loc1.dblClick = function (oEvent)
    {
        switch (this._sCurrentTab)
        {
            case dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS:
            {
                switch (oEvent.target._name)
                {
                    case "_ctrCC":
                    {
                        var _loc3 = this.api.datacenter.Player.Spells[0];
                        break;
                    } 
                    default:
                    {
                        _loc3 = oEvent.target.contentData;
                        break;
                    } 
                } // End of switch
                if (_loc3 == undefined)
                {
                    return;
                } // end if
                this.gapi.loadUIAutoHideComponent("SpellInfos", "SpellInfos", {spell: _loc3}, {bStayIfPresent: true});
                break;
            } 
            case dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS:
            {
                var _loc4 = oEvent.target.contentData;
                if (_loc4 != undefined)
                {
                    if (_loc4.castSpell)
                    {
                        return;
                    } // end if
                    if (!_loc4.canUse || !this.api.datacenter.Player.canUseObject)
                    {
                        return;
                    } // end if
                    if (this.api.datacenter.Game.isRunning && (dofus.Constants.WG_DISABLE_ITEM_OUT_OF_TURN && !this.api.datacenter.Player.isCurrentPlayer))
                    {
                        return;
                    } // end if
                    this.api.network.Items.use(_loc4.ID);
                } // end if
                break;
            } 
        } // End of switch
    };
    _loc1.over = function (oEvent)
    {
        if (!this.gapi.isCursorHidden())
        {
            return;
        } // end if
        switch (oEvent.target._name)
        {
            case "_ctrCC":
            {
                var _loc3 = this.api.datacenter.Player.Spells[0];
                var _loc4 = this.api.kernel.GameManager.getCriticalHitChance(this.api.datacenter.Player.weaponItem.criticalHit);
                this.gapi.showTooltip(_loc3.name + "\n" + _loc3.descriptionVisibleEffects + " (" + _loc3.apCost + " " + this.api.lang.getText("AP") + (!_global.isNaN(_loc4) ? (", " + this.api.lang.getText("ACTUAL_CRITICAL_CHANCE") + ": 1/" + _loc4) : ("")) + ")", oEvent.target, -30, {bXLimit: true, bYLimit: false});
                break;
            } 
            default:
            {
                switch (this._sCurrentTab)
                {
                    case dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS:
                    {
                        var _loc5 = oEvent.target.contentData;
                        if (_loc5 != undefined)
                        {
                            this.gapi.showTooltip(_loc5.name + " (" + this.api.lang.getText("LEVEL") + " " + _loc5.level + ")\n " + this.api.lang.getText("AP") + ": " + _loc5.apCost + " - " + this.api.lang.getText("ITEM_RANGE", [_loc5.rangeStr]) + (_loc5.actualCriticalHit > 0 ? (" - " + this.api.lang.getText("ACTUAL_CRITICAL_CHANCE") + ": 1/" + _loc5.actualCriticalHit) : ("")), oEvent.target, -30, {bXLimit: true, bYLimit: false});
                        }
                        else
                        {
                            var _loc6 = this.api.datacenter.Player.Level;
                            var _loc7 = oEvent.target._name.substring(4);
                            if (!this.isSpellSlotOpen(_loc6, _loc7))
                            {
                                this.gapi.showTooltip(this.api.lang.getText("SPELL_SLOT_NOT_AVAILABLE_LEVEL_TO_LOW"), oEvent.target, -30, {bXLimit: true, bYLimit: false});
                            } // end if
                        } // end else if
                        break;
                    } 
                    case dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS:
                    {
                        var _loc8 = oEvent.target.contentData;
                        if (_loc8 != undefined)
                        {
                            var _loc9 = _loc8.name;
                            if (this.gapi.getUIComponent("Inventory") == undefined)
                            {
                                if (_loc8.canUse && _loc8.canTarget)
                                {
                                    _loc9 = _loc9 + ("\n" + this.api.lang.getText("HELP_SHORTCUT_DBLCLICK_CLICK"));
                                }
                                else
                                {
                                    if (_loc8.canUse)
                                    {
                                        _loc9 = _loc9 + ("\n" + this.api.lang.getText("HELP_SHORTCUT_DBLCLICK"));
                                    } // end if
                                    if (_loc8.canTarget)
                                    {
                                        _loc9 = _loc9 + ("\n" + this.api.lang.getText("HELP_SHORTCUT_CLICK"));
                                    } // end if
                                } // end if
                            } // end else if
                            this.gapi.showTooltip(_loc9, oEvent.target, -30, {bXLimit: true, bYLimit: false});
                        } // end if
                        break;
                    } 
                } // End of switch
                break;
            } 
        } // End of switch
    };
    _loc1.out = function (oEvent)
    {
        this.gapi.hideTooltip();
    };
    _loc1.drag = function (oEvent)
    {
        var _loc3 = oEvent.target.contentData;
        if (_loc3 == undefined)
        {
            return;
        } // end if
        switch (this._sCurrentTab)
        {
            case dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS:
            {
                if (this.api.datacenter.Game.isRunning)
                {
                    return;
                } // end if
                break;
            } 
            case dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS:
            {
                if (this.api.datacenter.Game.isFight)
                {
                    return;
                } // end if
                if (this.gapi.getUIComponent("Inventory") == null)
                {
                    this.api.sounds.events.onBannerRoundButtonClick();
                    this.gapi.loadUIAutoHideComponent("Inventory", "Inventory");
                } // end if
                break;
            } 
        } // End of switch
        this.gapi.removeCursor();
        this.gapi.setCursor(_loc3);
    };
    _loc1.drop = function (oEvent)
    {
        switch (this._sCurrentTab)
        {
            case dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS:
            {
                if (this.api.datacenter.Game.isRunning)
                {
                    return;
                } // end if
                var _loc3 = this.gapi.getCursor();
                if (_loc3 == undefined)
                {
                    return;
                } // end if
                this.gapi.removeCursor();
                var _loc4 = _loc3.position;
                var _loc5 = oEvent.target.params.position;
                if (_loc4 > 7 && _loc4 < 12 || _loc5 > 7 && _loc5 < 12)
                {
                    return;
                } // end if
                if (_loc4 == _loc5)
                {
                    return;
                } // end if
                if (_loc4 != undefined)
                {
                    this["_ctr" + _loc4].contentData = undefined;
                } // end if
                var _loc6 = this["_ctr" + _loc5].contentData;
                if (_loc6 != undefined)
                {
                    _loc6.position = _loc4;
                    this["_ctr" + _loc4].contentData = _loc6;
                } // end if
                _loc3.position = _loc5;
                oEvent.target.contentData = _loc3;
                this.api.network.Spells.moveToUsed(_loc3.ID, _loc5);
                if (_loc6 != undefined)
                {
                    this.api.network.Spells.moveToUsed(_loc6.ID, _loc4);
                } // end if
                this.addToQueue({object: this, method: this.setSpellStateOnAllContainers});
                break;
            } 
            case dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS:
            {
                if (this.api.datacenter.Game.isFight)
                {
                    return;
                } // end if
                var _loc7 = this.gapi.getCursor();
                if (_loc7 == undefined)
                {
                    return;
                } // end if
                if (!_loc7.canMoveToShortut)
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_MOVE_ITEM_HERE"), "ERROR_BOX");
                    return;
                } // end if
                this.gapi.removeCursor();
                var _loc8 = _loc7.position;
                var _loc9 = oEvent.target.params.position + dofus.graphics.gapi.controls.MouseShortcuts.ITEM_OFFSET;
                com.ankamagames.tools.Logger.out("WG nPreviousPosition = " + _loc8, "dofus.graphics.gapi.controls.MouseShortcuts::drop", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/MouseShortcuts.as", 1110);
                com.ankamagames.tools.Logger.out("WG nNewPosition = " + _loc9, "dofus.graphics.gapi.controls.MouseShortcuts::drop", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/MouseShortcuts.as", 1111);
                if (_loc8 == _loc9)
                {
                    return;
                } // end if
                if (_loc8 != undefined)
                {
                } // end if
                com.ankamagames.tools.Logger.out("WG oItem.Quantity = " + _loc7.Quantity, "dofus.graphics.gapi.controls.MouseShortcuts::drop", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/MouseShortcuts.as", 1123);
                if (_loc7.Quantity > 1)
                {
                    var _loc10 = this.gapi.loadUIComponent("PopupQuantity", "PopupQuantity", {value: _loc7.Quantity, max: _loc7.Quantity, useAllStage: true, params: {type: "drop", item: _loc7, position: _loc9}}, {bAlwaysOnTop: true});
                    _loc10.addEventListener("validate", this);
                }
                else
                {
                    this.moveItems(_loc7, _loc9, _loc7.Quantity);
                } // end else if
                break;
            } 
        } // End of switch
    };
    _loc1.moveItems = function (oItem, nNewPosition, nQuantity)
    {
        var _loc5 = oItem.position;
        var _loc6 = this["_ctr" + (nNewPosition - dofus.graphics.gapi.controls.MouseShortcuts.ITEM_OFFSET)].contentData;
        this.api.network.Items.movement(oItem.ID, nNewPosition, nQuantity);
        if (_loc6 != undefined && oItem.unicID != _loc6.unicID)
        {
            this.api.network.Items.movement(_loc6.ID, _loc5, _loc6.Quantity);
        } // end if
    };
    _loc1.modelChanged = function (oEvent)
    {
        switch (oEvent.eventName)
        {
            case "updateOne":
            case "updateAll":
        } // End of switch
        if (oEvent.target == this.api.datacenter.Player.Spells)
        {
            if (this._sCurrentTab == dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS)
            {
                this.updateSpells();
            } // end if
        }
        else if (this._sCurrentTab == dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS)
        {
            this.updateItems();
        } // end else if
        
    };
    _loc1.validate = function (oEvent)
    {
        switch (oEvent.params.type)
        {
            case "drop":
            {
                this.gapi.removeCursor();
                if (oEvent.value > 0 && !_global.isNaN(Number(oEvent.value)))
                {
                    this.moveItems(oEvent.params.item, oEvent.params.position, Math.min(oEvent.value, oEvent.params.item.Quantity));
                } // end if
                break;
            } 
        } // End of switch
    };
    _loc1.onNewLevel = function (sExtraData)
    {
        switch (this._sCurrentTab)
        {
            case dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS:
            {
                this.initSpellSlot();
                break;
            } 
            case dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS:
            {
                break;
            } 
        } // End of switch
    };
    _loc1.addProperty("meleeVisible", function ()
    {
    }, _loc1.__set__meleeVisible);
    _loc1.addProperty("currentTab", _loc1.__get__currentTab, function ()
    {
    });
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.controls.MouseShortcuts = function ()
    {
        super();
    }).TAB_SPELLS = "Spells";
    (_global.dofus.graphics.gapi.controls.MouseShortcuts = function ()
    {
        super();
    }).TAB_ITEMS = "Items";
    (_global.dofus.graphics.gapi.controls.MouseShortcuts = function ()
    {
        super();
    }).CLASS_NAME = "MouseShortcuts";
    (_global.dofus.graphics.gapi.controls.MouseShortcuts = function ()
    {
        super();
    }).MAX_CONTAINER = 10;
    (_global.dofus.graphics.gapi.controls.MouseShortcuts = function ()
    {
        super();
    }).WG_RUNE1_SPELL_POSITION = 8;
    (_global.dofus.graphics.gapi.controls.MouseShortcuts = function ()
    {
        super();
    }).WG_RUNE2_SPELL_POSITION = 9;
    (_global.dofus.graphics.gapi.controls.MouseShortcuts = function ()
    {
        super();
    }).WG_PET_SPELL_POSITION = 10;
    (_global.dofus.graphics.gapi.controls.MouseShortcuts = function ()
    {
        super();
    }).ITEM_OFFSET = 34;
    (_global.dofus.graphics.gapi.controls.MouseShortcuts = function ()
    {
        super();
    }).NO_TRANSFORM = {ra: 100, rb: 0, ga: 100, gb: 0, ba: 100, bb: 0};
    (_global.dofus.graphics.gapi.controls.MouseShortcuts = function ()
    {
        super();
    }).INACTIVE_TRANSFORM = {ra: 50, rb: 0, ga: 50, gb: 0, ba: 50, bb: 0};
    (_global.dofus.graphics.gapi.controls.MouseShortcuts = function ()
    {
        super();
    }).WRONG_STATE_TRANSFORM = {ra: 50, rb: 0, ga: 50, gb: 0, ba: 70, bb: 0};
    _loc1._sCurrentTab = dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS;
    _loc1._slotOpenned = new Array();
    _loc1.slotOpennedInitialized = false;
} // end if
#endinitclip

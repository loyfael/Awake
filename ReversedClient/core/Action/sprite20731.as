// Action script...

// [Initial MovieClip Action of sprite 20731]
#initclip 252
if (!dofus.graphics.gapi.ui.Banner)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.Banner = function ()
    {
        super();
    }).prototype;
    _loc1.__set__data = function (oData)
    {
        this._oData = oData;
        //return (this.data());
    };
    _loc1.__set__fightsCount = function (nFightsCount)
    {
        this._nFightsCount = nFightsCount;
        this._btnFights._visible = nFightsCount != 0 && (!this.api.datacenter.Game.isFight && this._msShortcuts.currentTab == dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS);
        if (this._btnFights.icon == "")
        {
            this._btnFights.icon = "Eye2";
        } // end if
        //return (this.fightsCount());
    };
    _loc1.__get__chatAutoFocus = function ()
    {
        return (this._bChatAutoFocus);
    };
    _loc1.__set__chatAutoFocus = function (bChatAutoFocus)
    {
        this._bChatAutoFocus = bChatAutoFocus;
        //return (this.chatAutoFocus());
    };
    _loc1.__set__txtConsole = function (sText)
    {
        this._txtConsole.text = sText;
        //return (this.txtConsole());
    };
    _loc1.__get__chat = function ()
    {
        return (this._cChat);
    };
    _loc1.__get__shortcuts = function ()
    {
        return (this._msShortcuts);
    };
    _loc1.__get__illustration = function ()
    {
        return (this._mcXtra);
    };
    _loc1.__get__illustrationType = function ()
    {
        return (this._sCurrentCircleXtra);
    };
    _loc1.setStateWaitReady = function (value)
    {
        this._waitReadyState = value;
        if (this._waitReadyState)
        {
            this.showNextTurnButton(true);
            this._btnNextTurn.gotoAndPlay("part5");
            
        } // end if
    };
    _loc1.updateEye = function ()
    {
        this._btnFights._visible = this._nFightsCount != 0 && (!this.api.datacenter.Game.isFight && this._msShortcuts.currentTab == dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS);
        if (this._btnFights.icon == "")
        {
            this._btnFights.icon = "Eye2";
        } // end if
    };
    _loc1.setSelectable = function (bSelectable)
    {
        this._cChat.selectable = bSelectable;
    };
    _loc1.insertChat = function (sText)
    {
        this._txtConsole.text = this._txtConsole.text + sText;
    };
    _loc1.showNextTurnButton = function (bShow)
    {
        this._btnNextTurn._visible = bShow;
    };
    _loc1.showGiveUpButton = function (bShow)
    {
        this.setXtraFightMask(bShow);
        this._btnGiveUp._visible = bShow;
    };
    _loc1.showMapButton = function (bShow)
    {
        this._btnMap._visible = bShow;
    };
    _loc1.showSuccesButton = function (bShow)
    {
        this._btnMount._visible = bShow;
    };
    _loc1.showQuestButton = function (bShow)
    {
        this._btnQuests._visible = bShow;
    };
    _loc1.showStatsJobButton = function (bShow)
    {
        this._btnStatsJob._visible = bShow;
    };
    _loc1.showButtonBar = function (bShow)
    {
        this._btnMap._visible = bShow;
        this._btnMount._visible = bShow;
        this._btnQuests._visible = bShow;
        this._btnStatsJob._visible = bShow;
    };
    _loc1.showPoints = function (bShow)
    {
        this._pa._visible = bShow;
        this._pm._visible = bShow;
        this._cChat.showSitDown(!bShow);
        if (bShow)
        {
            this._oData.data.addEventListener("lpChanged", this);
            this._oData.data.addEventListener("lpmaxChanged", this);
            this._oData.data.addEventListener("apChanged", this);
            this._oData.data.addEventListener("mpChanged", this);
            this.apChanged({value: Math.max(0, this._oData.data.AP)});
            this.mpChanged({value: Math.max(0, this._oData.data.MP)});
        } // end if
    };
    _loc1.setXtraFightMask = function (bInFight)
    {
        if (!bInFight)
        {
            if (this._sDefaultMaskType == "big")
            {
                this._mcXtra.setMask(this._mcCircleXtraMaskBig);
            }
            else
            {
                this._mcXtra.setMask(this._mcCircleXtraMask);
            } // end else if
        }
        else
        {
            this._mcXtra.setMask(this._mcCircleXtraMask);
        } // end else if
        this.displayMovableBar(this.api.kernel.OptionsManager.getOption("MovableBar") && (!this.api.kernel.OptionsManager.getOption("HideSpellBar") || this.api.datacenter.Game.isFight));
    };
    _loc1.showCircleXtra = function (sXtraName, bShow, oParams, oComponentParams)
    {
        if (sXtraName == undefined)
        {
            return (null);
        } // end if
        if (sXtraName == this._sCurrentCircleXtra && bShow)
        {
            return (null);
        } // end if
        if (sXtraName != this._sCurrentCircleXtra && !bShow)
        {
            return (null);
        } // end if
        if (this._sCurrentCircleXtra != undefined && bShow)
        {
            this.showCircleXtra(this._sCurrentCircleXtra, false);
        } // end if
        var _loc7 = new Object();
        var _loc8 = new Array();
        if (oComponentParams == undefined)
        {
            oComponentParams = new Object();
        } // end if
        this.api.kernel.OptionsManager.setOption("BannerIllustrationMode", sXtraName);
        var _loc6 = "Loader";
        _loc7 = {_x: this._mcCircleXtraMask._x, _y: this._mcCircleXtraMask._y, contentPath: dofus.Constants.GUILDS_FACES_PATH + this._oData.data.gfxID + ".swf", enabled: true};
        _loc8 = ["complete", "click"];
        switch (sXtraName)
        {
            case "artwork":
            {
                _loc6 = "Loader";
                _loc7 = {_x: this._mcCircleXtraMask._x, _y: this._mcCircleXtraMask._y, contentPath: dofus.Constants.GUILDS_FACES_PATH + this._oData.data.gfxID + ".swf", enabled: true};
                _loc8 = ["complete", "click"];
                break;
            } 
            case "compass":
            {
                var _loc9 = this.api.datacenter.Map;
                _loc6 = "Compass";
                _loc7 = {_x: this._mcCircleXtraPlacer._x, _y: this._mcCircleXtraPlacer._y, _width: this._mcCircleXtraPlacer._width, _height: this._mcCircleXtraPlacer._height, arrow: "UI_BannerCompassArrow", noArrow: "UI_BannerCompassNoArrow", background: "UI_BannerCompassBack", targetCoords: this.api.datacenter.Basics.banner_targetCoords, currentCoords: [_loc9.x, _loc9.y]};
                _loc8 = ["click", "over", "out"];
                break;
            } 
            case "clock":
            {
                _loc6 = "Clock";
                _loc7 = {_x: this._mcCircleXtraPlacer._x, _y: this._mcCircleXtraPlacer._y, _width: this._mcCircleXtraPlacer._width, _height: this._mcCircleXtraPlacer._height, arrowHours: "UI_BannerClockArrowHours", arrowMinutes: "UI_BannerClockArrowMinutes", background: "UI_BannerClockBack", updateFunction: {object: this.api.kernel.NightManager, method: this.api.kernel.NightManager.getCurrentTime}};
                _loc8 = ["click", "over", "out"];
                break;
            } 
            case "helper":
            {
                _loc6 = "Loader";
                _loc7 = {_x: this._mcCircleXtraPlacer._x, _y: this._mcCircleXtraPlacer._y, contentPath: "Helper", enabled: true};
                _loc8 = ["click", "over", "out"];
                break;
            } 
            case "map":
            {
                _loc6 = "MiniMap";
                _loc7 = {_x: this._mcCircleXtraPlacer._x, _y: this._mcCircleXtraPlacer._y, contentPath: "Map", enabled: true};
                _loc8 = [];
                break;
            } 
            default:
            {
                _loc6 = "Loader";
                _loc7 = {_x: this._mcCircleXtraPlacer._x, _y: this._mcCircleXtraPlacer._y, _width: this._mcCircleXtraPlacer._width, _height: this._mcCircleXtraPlacer._height};
                break;
            } 
        } // End of switch
        var _loc10 = null;
        if (bShow)
        {
            for (var k in _loc7)
            {
                oComponentParams[k] = _loc7[k];
            } // end of for...in
            _loc10 = this.attachMovie(_loc6, "_mcXtra", this.getNextHighestDepth(), oComponentParams);
            if (oParams.bMask)
            {
                this._sDefaultMaskType = oParams.sMaskSize;
                if (oParams.sMaskSize == "big" && !this.api.datacenter.Game.isFight)
                {
                    this._mcXtra.setMask(this._mcCircleXtraMaskBig);
                }
                else
                {
                    this._mcXtra.setMask(this._mcCircleXtraMask);
                } // end else if
            }
            else
            {
                com.ankamagames.tools.Logger.out("WG affichage d\'un extra sans masque !!! oXtraComponentParams.contentPath = " + _loc7.contentPath, "dofus.graphics.gapi.ui.Banner::showCircleXtra", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Banner.as", 413);
            } // end else if
            for (var k in _loc8)
            {
                this._mcXtra.addEventListener(_loc8[k], this);
            } // end of for...in
            this._mcXtra.swapDepths(this._mcCircleXtraPlacer);
            this._sCurrentCircleXtra = sXtraName;
        }
        else if (this._mcXtra != undefined)
        {
            for (var k in _loc8)
            {
                this._mcXtra.removeEventListener(_loc8[k], this);
            } // end of for...in
            this._mcCircleXtraPlacer.swapDepths(this._mcXtra);
            this._mcXtra.removeMovieClip();
            delete this._sCurrentCircleXtra;
        } // end else if
        return (_loc10);
    };
    _loc1.setCircleXtraParams = function (oParams)
    {
        for (var k in oParams)
        {
            this._mcXtra[k] = oParams[k];
        } // end of for...in
    };
    _loc1.startTimer = function (nDuration)
    {
        this.setXtraFightMask(true);
        this._ccChrono._visible = true;
        this._ccChrono.startTimer(nDuration);
    };
    _loc1.stopTimer = function ()
    {
        this._ccChrono._visible = false;
        this._ccChrono.stopTimer();
    };
    _loc1.setChatText = function (sText)
    {
        this._cChat.setText(sText);
    };
    _loc1.showFightOptionPanel = function ()
    {
        var _loc2 = this.attachMovie("UI_FightOptionButtons", "_mcFightOptionPanel", this.getNextHighestDepth());
        _loc2._x = this._mcFightOptionPanelPlacer._x;
        _loc2._y = this._mcFightOptionPanelPlacer._y;
        _loc2.swapDepths(this._mcFightOptionPanelPlacer);
    };
    _loc1.getFightOptionPanel = function ()
    {
        return (this._mcFightOptionPanel);
    };
    _loc1.hideFightOptionPanel = function ()
    {
        if (this._mcFightOptionPanel != undefined)
        {
            this._mcFightOptionPanel.swapDepths(this._mcFightOptionPanelPlacer);
            this._mcFightOptionPanel.removeMovieClip();
        } // end if
    };
    _loc1.showRightPanel = function (sPanelName, oParams)
    {
        if (this._mcRightPanel.className == sPanelName)
        {
            return;
        } // end if
        if (this._mcRightPanel != undefined)
        {
            this.hideRightPanel();
        } // end if
        oParams._x = this._mcRightPanelPlacer._x;
        oParams._y = this._mcRightPanelPlacer._y;
        var _loc4 = this.attachMovie(sPanelName, "_mcRightPanel", this.getNextHighestDepth(), oParams);
        _loc4.swapDepths(this._mcRightPanelPlacer);
    };
    _loc1.hideRightPanel = function ()
    {
        if (this._mcRightPanel != undefined)
        {
            this._mcRightPanel.swapDepths(this._mcRightPanelPlacer);
            this._mcRightPanel.removeMovieClip();
        } // end if
    };
    _loc1.updateSmileysEmotes = function ()
    {
        this._cChat.updateSmileysEmotes();
    };
    _loc1.showSmileysEmotesPanel = function (bShow)
    {
        if (bShow == undefined)
        {
            bShow = true;
        } // end if
        this._cChat.hideSmileys(!bShow);
    };
    _loc1.updateLocalPlayer = function ()
    {
        if (this._sCurrentCircleXtra == "artwork")
        {
            this._mcXtra.contentPath = dofus.Constants.GUILDS_FACES_PATH + this._oData.data.gfxID + ".swf";
        } // end if
        this._msShortcuts.meleeVisible = !this._oData.isMutant && this._msShortcuts.currentTab == dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS;
    };
    _loc1.updateIllustration = function ()
    {
        this._mcXtra.forceReload = true;
        this._mcXtra.contentPath = dofus.Constants.GUILDS_FACES_PATH + this._oData.data.gfxID + ".swf";
        this._mcXtra.forceReload = false;
    };
    _loc1.__set__ready = function (bReady)
    {
        this._bReady = bReady;
        if (this._bReady)
        {
            this._btnNextTurn.gotoAndPlay("part6");
        }
        else
        {
            this._btnNextTurn.gotoAndPlay("part5");
        } // end else if
        //return (this.ready());
    };
    _loc1.showXpArrow = function ()
    {
        this._xpArrow._visible = true;
        this._xpArrow.gotoAndPlay(2);
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.Banner.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this._btnFights._visible = false;
        this.addToQueue({object: this, method: this.hideEpisodicContent});
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initData});
        this.showPoints(false);
        this.showGiveUpButton(false);
        this._mcRightPanelPlacer._visible = false;
        this._mcFightOptionPanelPlacer._visible = false;
        this._mcCircleXtraPlacer._visible = false;
        this._xpArrow._visible = false;
        this.hideFightOptionPanel();
        this.api.kernel.KeyManager.addShortcutsListener("onShortcut", this);
        this.api.kernel.KeyManager.addKeysListener("onKeys", this);
        this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_ON_CONNECT);
        this.api.network.Game.nLastMapIdReceived = -1;
        this._txtConsole.onSetFocus = function ()
        {
            this._parent.onSetFocus();
        };
        this._txtConsole.onKillFocus = function ()
        {
            this._parent.onKillFocus();
        };
        this._txtConsole.maxChars = dofus.Constants.MAX_MESSAGE_LENGTH + dofus.Constants.MAX_MESSAGE_LENGTH_MARGIN;
        ank.battlefield.Battlefield.useCacheAsBitmapOnStaticAnim = this.api.lang.getConfigText("USE_CACHEASBITMAP_ON_STATICANIM");
        this.gapi.loadUIComponent("PopupInfoMenu", "PopupInfoMenu");
        this.gapi.loadUIComponent("Notification", "Notification");
    };
    _loc1.linkMovableContainer = function ()
    {
        var _loc2 = this._mcbMovableBar.containers;
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < _loc2.length)
        {
            var _loc4 = _loc2[_loc3];
            this._msShortcuts.setContainer(_loc3 + 15, _loc4);
            _loc4.addEventListener("click", this);
            _loc4.addEventListener("dblClick", this);
            _loc4.addEventListener("over", this);
            _loc4.addEventListener("out", this);
            _loc4.addEventListener("drag", this);
            _loc4.addEventListener("drop", this);
            _loc4.params = {position: _loc3 + 15};
        } // end while
    };
    _loc1.addListeners = function ()
    {
        this._btnPvP.addEventListener("click", this);
        this._btnMount.onPress = this.press;
        this._btnGuild.addEventListener("click", this);
        this._btnStatsJob.onPress = this.press;
        this._btnSpells.onPress = this.press;
        this._btnInventory.onPress = this.press;
        this._btnQuests.onPress = this.press;
        this._btnMap.onPress = this.press;
        this._btnFriends.onPress = this.press;
        this._btnFights.addEventListener("click", this);
        this._btnHelp.addEventListener("click", this);
        this._btnPvP.addEventListener("over", this);
        this._btnMount.onRollOver = this.rollOver;
        this._btnGuild.addEventListener("over", this);
        this._btnStatsJob.onRollOver = this.rollOver;
        this._btnSpells.onRollOver = this.rollOver;
        this._btnInventory.onRollOver = this.rollOver;
        this._btnQuests.onRollOver = this.rollOver;
        this._btnMap.onRollOver = this.rollOver;
        this._btnFriends.onRollOver = this.rollOver;
        this._btnFights.addEventListener("over", this);
        this._btnHelp.addEventListener("over", this);
        this._btnPvP.addEventListener("out", this);
        this._btnMount.onRollOut = this.rollOut;
        this._btnGuild.addEventListener("out", this);
        this._btnStatsJob.onRollOut = this.rollOut;
        this._btnSpells.onRollOut = this.rollOut;
        this._btnInventory.onRollOut = this.rollOut;
        this._btnQuests.onRollOut = this.rollOut;
        this._btnMap.onRollOut = this.rollOut;
        this._btnFriends.onRollOut = this.rollOut;
        this._btnFights.addEventListener("out", this);
        this._btnHelp.addEventListener("out", this);
        this._btnStatsJob.tabIndex = 4;
        this._btnSpells.tabIndex = 0;
        this._btnInventory.tabIndex = 1;
        this._btnQuests.tabIndex = 3;
        this._btnMap.tabIndex = 5;
        this._btnFriends.tabIndex = 2;
        this._btnMount.tabIndex = 6;
        this._ccChrono.addEventListener("finalCountDown", this);
        this._ccChrono.addEventListener("beforeFinalCountDown", this);
        this._ccChrono.addEventListener("tictac", this);
        this._ccChrono.addEventListener("finish", this);
        this._ccChrono.addEventListener("start", this);
        this._cChat.addEventListener("filterChanged", this);
        this._cChat.addEventListener("selectSmiley", this);
        this._cChat.addEventListener("selectEmote", this);
        this._cChat.addEventListener("href", this);
        this._oData.addEventListener("lpChanged", this);
        this._oData.addEventListener("lpmaxChanged", this);
        this.api.datacenter.Player.addEventListener("levelChanged", this);
        this._btnNextTurn.onPress = function ()
        {
            this._parent.click({target: this});
        };
        this._btnNextTurn.onRollOver = function ()
        {
            this._parent.over({target: this});
        };
        this._btnNextTurn.onRollOut = function ()
        {
            this._parent.out({target: this});
        };
        this._btnGiveUp.addEventListener("click", this);
        this._btnGiveUp.addEventListener("over", this);
        this._btnGiveUp.addEventListener("out", this);
        this._oData.SpellsManager.addEventListener("spellLaunched", this);
        this._oData.SpellsManager.addEventListener("nextTurn", this);
        this._pa.onRollOver = function ()
        {
            this._parent.over({target: this});
        };
        this._pa.onRollOut = function ()
        {
            this._parent.out({target: this});
        };
        this._pm.onRollOver = function ()
        {
            this._parent.over({target: this});
        };
        this._pm.onRollOut = function ()
        {
            this._parent.out({target: this});
        };
        this._xpBar.onRollOver = function ()
        {
            this._parent.over({target: this});
        };
        this._xpBar.onRollOut = function ()
        {
            this._parent.out({target: this});
        };
        this._rChronoHit.onRelease = function ()
        {
            this._parent.click({target: this});
        };
        this._oData.Spells.addEventListener("modelChanged", this);
        this._oData.Inventory.addEventListener("modelChanged", this);
        this.api.datacenter.Player.addEventListener("xpChanged", this);
    };
    _loc1.press = function ()
    {
        this.gotoAndPlay(50);
        this._parent.click({target: this});
    };
    _loc1.rollOver = function ()
    {
        this.gotoAndPlay(28);
        this._parent.over({target: this});
    };
    _loc1.rollOut = function ()
    {
        this.gotoAndPlay(87);
        this._parent.out({target: this});
    };
    _loc1.initData = function ()
    {
        this.showCircleXtra("artwork", true, {bMask: true});
        switch (this.api.kernel.OptionsManager.getOption("BannerIllustrationMode"))
        {
            case "artwork":
            {
                this.showCircleXtra("artwork", true, {bMask: true});
                break;
            } 
            case "clock":
            {
                this.showCircleXtra("clock", true, {bMask: true});
                break;
            } 
            case "compass":
            {
                this.showCircleXtra("compass", true);
            } 
            case "helper":
            {
                this.showCircleXtra("helper", true);
            } 
            case "map":
            {
                this.showCircleXtra("map", true, {bMask: true, sMaskSize: "big"});
            } 
        } // End of switch
        this._btnNextTurn._visible = false;
        this.drawBar();
        this.lpmaxChanged({value: this._oData.LPmax});
        this.lpChanged({value: this._oData.LP});
        this.levelChanged({value: this.api.datacenter.Player.Level});
        this.api.kernel.ChatManager.refresh();
        if (this.api.kernel.OptionsManager.getOption("MovableBar"))
        {
            this.displayMovableBar(this.api.kernel.OptionsManager.getOption("MovableBar") && (!this.api.kernel.OptionsManager.getOption("HideSpellBar") || this.api.datacenter.Game.isFight));
        } // end if
        this._mcPipeSpell._visible = true;
        this._mcPipeInventory._visible = false;
        var _loc2 = this.api.datacenter.Player;
        this.xpChanged({value: _loc2.XP, low: _loc2.XPlow, high: _loc2.XPhigh});
        this._ccChrono._visible = false;
    };
    _loc1.setChatFocus = function ()
    {
        Selection.setFocus(this._txtConsole);
    };
    _loc1.isChatFocus = function ()
    {
        return (Selection.getFocus()._name == "_txtConsole");
    };
    _loc1.placeCursorAtTheEnd = function ()
    {
        Selection.setFocus(this._txtConsole);
        Selection.setSelection(this._txtConsole.text.length, dofus.Constants.MAX_MESSAGE_LENGTH + dofus.Constants.MAX_MESSAGE_LENGTH_MARGIN);
    };
    _loc1.setChatFocusWithLastKey = function ()
    {
        if (!this._bChatAutoFocus)
        {
            return;
        } // end if
        if (Selection.getFocus() != undefined)
        {
            return;
        } // end if
        this.setChatFocus();
        this.placeCursorAtTheEnd();
    };
    _loc1.getChatCommand = function ()
    {
        var _loc2 = this._txtConsole.text;
        var _loc3 = _loc2.split(" ");
        if (_loc3[0].charAt(0) == "/")
        {
            return (_loc2);
        }
        else if (this._cChat.chatPrefix != "")
        {
            return (this._cChat.chatPrefix + " " + _loc2);
        } // end else if
        return (_loc2);
    };
    _loc1.hideEpisodicContent = function ()
    {
        this._btnPvP._visible = this.api.datacenter.Basics.aks_current_regional_version >= 16;
        com.ankamagames.tools.Logger.out("WG Banner : HideEpisodicContent : " + this._btnGuild._visible, "dofus.graphics.gapi.ui.Banner::hideEpisodicContent", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Banner.as", 925);
        if (dofus.Constants.WG_DISABLE_EXTRA_BUTTONS)
        {
            this._btnPvP._visible = false;
            this._btnFights._visible = false;
        }
        else
        {
            var _loc2 = this._btnStatsJob._x;
            var _loc3 = this._btnPvP._x;
            var _loc4 = new Array();
            _loc4.push(this._btnStatsJob);
            _loc4.push(this._btnSpells);
            _loc4.push(this._btnInventory);
            _loc4.push(this._btnQuests);
            _loc4.push(this._btnMap);
            _loc4.push(this._btnFriends);
            if (this._btnGuild._visible)
            {
                _loc4.push(this._btnGuild);
            } // end if
            if (this._btnMount._visible)
            {
                _loc4.push(this._btnMount);
            } // end if
            if (this._btnPvP._visible)
            {
                _loc4.push(this._btnPvP);
            } // end if
            var _loc5 = (_loc3 - _loc2) / (_loc4.length - 1);
            var _loc6 = 0;
            
            while (++_loc6, _loc6 < _loc4.length)
            {
                _loc4[_loc6]._x = _loc6 * _loc5 + _loc2;
            } // end while
        } // end else if
    };
    _loc1.displayMovableBar = function (bShow)
    {
        if (bShow == undefined)
        {
            bShow = this._mcbMovableBar == undefined;
        } // end if
        if (bShow)
        {
            if (this._mcbMovableBar._name != undefined)
            {
                return;
            } // end if
            this._mcbMovableBar = (dofus.graphics.gapi.ui.MovableContainerBar)(this.api.ui.loadUIComponent("MovableContainerBar", "MovableBar", [], {bAlwaysOnTop: true}));
            this._mcbMovableBar.addEventListener("drawBar", this);
            this._mcbMovableBar.addEventListener("drop", this);
            this._mcbMovableBar.addEventListener("dblClick", this);
            var _loc3 = {left: 0, top: 0, right: this.gapi.screenWidth, bottom: this.gapi.screenHeight};
            var _loc4 = this.api.kernel.OptionsManager.getOption("MovableBarSize");
            var _loc5 = this.api.kernel.OptionsManager.getOption("MovableBarCoord");
            _loc5 = _loc5 ? (_loc5) : ({x: 0, y: (this.gapi.screenHeight - this._mcbMovableBar._height) / 2});
            this.addToQueue({object: this._mcbMovableBar, method: this._mcbMovableBar.setOptions, params: [9, 20, _loc3, _loc4, _loc5]});
        }
        else
        {
            this.api.ui.unloadUIComponent("MovableBar");
        } // end else if
    };
    _loc1.setMovableBarSize = function (nSize)
    {
        this._mcbMovableBar.size = nSize;
    };
    _loc1.onKeys = function (sKey)
    {
        if (this._lastKeyIsShortcut)
        {
            this._lastKeyIsShortcut = false;
            return;
        } // end if
        this.setChatFocusWithLastKey();
    };
    _loc1.onShortcut = function (sShortcut)
    {
        var _loc3 = true;
        switch (sShortcut)
        {
            case "CTRL_STATE_CHANGED_ON":
            {
                if (this._bIsOnFocus && !(this.api.config.isLinux || this.api.config.isMac))
                {
                    getURL("FSCommand:" add "trapallkeys", "false");
                } // end if
                break;
            } 
            case "CTRL_STATE_CHANGED_OFF":
            {
                if (this._bIsOnFocus && !(this.api.config.isLinux || this.api.config.isMac))
                {
                    getURL("FSCommand:" add "trapallkeys", "true");
                } // end if
                break;
            } 
            case "ESCAPE":
            {
                if (this.isChatFocus())
                {
                    com.ankamagames.tools.Logger.out("ESCAPE ON BANNER", "dofus.graphics.gapi.ui.Banner::onShortcut", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Banner.as", 1037);
                    Selection.setFocus(null);
                    _loc3 = false;
                } // end if
                break;
            } 
            case "SEND_CHAT_MSG":
            {
                if (this.isChatFocus())
                {
                    if (this._txtConsole.text.length != 0)
                    {
                        this.api.kernel.Console.process(this.getChatCommand(), this.api.datacenter.Basics.chatParams);
                        this.api.datacenter.Basics.chatParams = new Object();
                        if (this._txtConsole.text != undefined)
                        {
                            this._txtConsole.text = "";
                        } // end if
                        _loc3 = false;
                    } // end if
                }
                else if (Selection.getFocus() == undefined && this._bChatAutoFocus)
                {
                    this.setChatFocus();
                } // end else if
                break;
            } 
            case "TEAM_MESSAGE":
            {
                if (this.isChatFocus())
                {
                    if (this._txtConsole.text.length != 0)
                    {
                        var _loc4 = this.getChatCommand();
                        if (_loc4.charAt(0) == "/")
                        {
                            _loc4 = _loc4.substr(_loc4.indexOf(" ") + 1);
                        } // end if
                        this.api.kernel.Console.process("/t " + _loc4, this.api.datacenter.Basics.chatParams);
                        this.api.datacenter.Basics.chatParams = new Object();
                        if (this._txtConsole.text != undefined)
                        {
                            this._txtConsole.text = "";
                        } // end if
                        _loc3 = false;
                    } // end if
                }
                else if (Selection.getFocus() == undefined && this._bChatAutoFocus)
                {
                    this.setChatFocus();
                } // end else if
                break;
            } 
            case "GUILD_MESSAGE":
            {
                if (this.isChatFocus())
                {
                    if (this._txtConsole.text.length != 0)
                    {
                        var _loc5 = this.getChatCommand();
                        if (_loc5.charAt(0) == "/")
                        {
                            _loc5 = _loc5.substr(_loc5.indexOf(" ") + 1);
                        } // end if
                        this.api.kernel.Console.process("/g " + _loc5, this.api.datacenter.Basics.chatParams);
                        this.api.datacenter.Basics.chatParams = new Object();
                        if (this._txtConsole.text != undefined)
                        {
                            this._txtConsole.text = "";
                        } // end if
                        _loc3 = false;
                    } // end if
                }
                else if (Selection.getFocus() == undefined && this._bChatAutoFocus)
                {
                    this.setChatFocus();
                } // end else if
                break;
            } 
            case "WHISPER_HISTORY_UP":
            {
                if (this.isChatFocus())
                {
                    this._txtConsole.text = this.api.kernel.Console.getWhisperHistoryUp();
                    this.addToQueue({object: this, method: this.placeCursorAtTheEnd});
                    _loc3 = false;
                } // end if
                break;
            } 
            case "WHISPER_HISTORY_DOWN":
            {
                if (this.isChatFocus())
                {
                    this._txtConsole.text = this.api.kernel.Console.getWhisperHistoryDown();
                    this.addToQueue({object: this, method: this.placeCursorAtTheEnd});
                    _loc3 = false;
                } // end if
                break;
            } 
            case "HISTORY_UP":
            {
                if (this.isChatFocus())
                {
                    var _loc6 = this.api.kernel.Console.getHistoryUp();
                    if (_loc6 != undefined)
                    {
                        this.api.datacenter.Basics.chatParams = _loc6.params;
                        this._txtConsole.text = _loc6.value;
                    } // end if
                    this.addToQueue({object: this, method: this.placeCursorAtTheEnd});
                    _loc3 = false;
                } // end if
                break;
            } 
            case "HISTORY_DOWN":
            {
                if (this.isChatFocus())
                {
                    var _loc7 = this.api.kernel.Console.getHistoryDown();
                    if (_loc7 != undefined)
                    {
                        this.api.datacenter.Basics.chatParams = _loc7.params;
                        this._txtConsole.text = _loc7.value;
                    }
                    else
                    {
                        this._txtConsole.text = "";
                    } // end else if
                    this.addToQueue({object: this, method: this.placeCursorAtTheEnd});
                    _loc3 = false;
                } // end if
                break;
            } 
            case "AUTOCOMPLETE":
            {
                var _loc8 = new Array();
                var _loc9 = this.api.datacenter.Sprites.getItems();
                for (var k in _loc9)
                {
                    if (_loc9[k] instanceof dofus.datacenter.Character)
                    {
                        _loc8.push(_loc9[k].name);
                    } // end if
                } // end of for...in
                var _loc10 = this.api.kernel.Console.autoCompletion(_loc8, this._txtConsole.text);
                if (!_loc10.isFull)
                {
                    if (_loc10.list == undefined || _loc10.list.length == 0)
                    {
                        this.api.sounds.events.onError();
                    }
                    else
                    {
                        this.api.ui.showTooltip(_loc10.list.sort().join(", "), 0, 520);
                    } // end if
                } // end else if
                this._txtConsole.text = _loc10.result + (_loc10.isFull ? (" ") : (""));
                this.placeCursorAtTheEnd();
                break;
            } 
            case "NEXTTURN":
            {
                if (this.api.datacenter.Game.isFight)
                {
                    this.api.network.Game.turnEnd();
                    _loc3 = false;
                } // end if
                break;
            } 
            case "MAXI":
            {
                this._cChat.open(false);
                _loc3 = false;
                break;
            } 
            case "MINI":
            {
                this._cChat.open(true);
                _loc3 = false;
                break;
            } 
            case "CHARAC":
            {
                if (this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
                {
                    this.click({target: this._btnStatsJob});
                    _loc3 = false;
                } // end if
                break;
            } 
            case "SPELLS":
            {
                if (this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
                {
                    this.click({target: this._btnSpells});
                    _loc3 = false;
                } // end if
                break;
            } 
            case "INVENTORY":
            {
                if (this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
                {
                    this.click({target: this._btnInventory});
                    _loc3 = false;
                } // end if
                break;
            } 
            case "QUESTS":
            {
                if (this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
                {
                    this.click({target: this._btnQuests});
                    _loc3 = false;
                } // end if
                break;
            } 
            case "MAP":
            {
                if (this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
                {
                    this.click({target: this._btnMap});
                    _loc3 = false;
                } // end if
                break;
            } 
            case "FRIENDS":
            {
                if (this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
                {
                    this.click({target: this._btnFriends});
                    _loc3 = false;
                } // end if
                break;
            } 
            case "GUILD":
            {
                if (this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
                {
                    this.click({target: this._btnGuild});
                    _loc3 = false;
                } // end if
                break;
            } 
            case "MOUNT":
            {
                if (this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
                {
                    this.click({target: this._btnMount});
                    _loc3 = false;
                } // end if
                break;
            } 
        } // End of switch
        this._lastKeyIsShortcut = _loc3;
        return (_loc3);
    };
    _loc1.click = function (oEvent)
    {
        this.api.kernel.GameManager.signalFightActivity();
        switch (oEvent.target._name)
        {
            case "_btnPvP":
            {
                this.api.sounds.events.onBannerRoundButtonClick();
                if (this.api.datacenter.Player.data.alignment.index == 0)
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("NEED_ALIGNMENT"), "ERROR_CHAT");
                }
                else
                {
                    this.showSmileysEmotesPanel(false);
                    this.gapi.loadUIAutoHideComponent("Conquest", "Conquest", {currentTab: "Stats"});
                } // end else if
                break;
            } 
            case "_btnMount":
            {
                this.api.sounds.events.onBannerRoundButtonClick();
                this.showSmileysEmotesPanel(false);
                this.gapi.loadUIAutoHideComponent("PVPLobby", "PVPLobby");
                break;
            } 
            case "_btnGuild":
            {
                this.api.sounds.events.onBannerRoundButtonClick();
                if (this._oData.isMutant)
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_U_ARE_MUTANT"), "ERROR_CHAT");
                    return;
                } // end if
                if (this._oData.guildInfos != undefined)
                {
                    this.showSmileysEmotesPanel(false);
                    this.gapi.loadUIAutoHideComponent("Guild", "Guild", {currentTab: "Members"});
                    
                } // end if
                break;
            } 
            case "_btnStatsJob":
            {
                this.showCookBook();
                break;
            } 
            case "_btnSpells":
            {
                this.api.sounds.events.onBannerRoundButtonClick();
                if (dofus.Constants.WG_DISABLE_SPELLS_WINDOWS_IN_FIGHT && this.api.datacenter.Game.isFight)
                {
                    this.shortcuts.setCurrentTab(dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS);
                }
                else if (!this.api.datacenter.Game.isRunning)
                {
                    com.ankamagames.tools.Logger.out("start !", "dofus.graphics.gapi.ui.Banner::click", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Banner.as", 1375);
                    var _loc3 = 0;
                    
                    while (++_loc3, _loc3 < this.api.datacenter.Player.Spells.length)
                    {
                        if (!_global.isNaN(this.api.datacenter.Player.Spells[_loc3].position))
                        {
                            com.ankamagames.tools.Logger.out(this.api.datacenter.Player.Spells[_loc3].position + " / " + this.api.datacenter.Player.Spells[_loc3].ID, "dofus.graphics.gapi.ui.Banner::click", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Banner.as", 1376);
                        } // end if
                    } // end while
                    if (this._oData.isMutant)
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_U_ARE_MUTANT"), "ERROR_CHAT");
                        return;
                    } // end if
                    com.ankamagames.tools.Logger.out("WG Banner : click :", "dofus.graphics.gapi.ui.Banner::click", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Banner.as", 1386);
                    this.showSmileysEmotesPanel(false);
                    this.gapi.loadUIAutoHideComponent("Spells", "Spells");
                } // end else if
                this.shortcuts.setCurrentTab(dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS);
                this._mcPipeSpell._visible = true;
                this._mcPipeInventory._visible = false;
                break;
            } 
            case "_btnInventory":
            {
                this.api.sounds.events.onBannerInventoryButtonClick();
                if (dofus.Constants.WG_DISABLE_ITEMS_WINDOWS_IN_FIGHT && this.api.datacenter.Game.isFight)
                {
                    this.shortcuts.setCurrentTab(dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS);
                }
                else
                {
                    this.showSmileysEmotesPanel(false);
                    this.gapi.loadUIAutoHideComponent("Inventory", "Inventory");
                } // end else if
                this._mcPipeSpell._visible = false;
                this._mcPipeInventory._visible = true;
                break;
            } 
            case "_btnQuests":
            {
                this.api.sounds.events.onBannerRoundButtonClick();
                this.showSmileysEmotesPanel(false);
                this.gapi.loadUIAutoHideComponent("QuestsBook", "QuestsBook");
                break;
            } 
            case "_btnMap":
            {
                this.api.sounds.events.onMapButtonClick();
                this.showSmileysEmotesPanel(false);
                this.gapi.loadUIAutoHideComponent("MapExplorer", "MapExplorer");
                break;
            } 
            case "_btnFriends":
            {
                this.api.sounds.events.onBannerRoundButtonClick();
                this.showSmileysEmotesPanel(false);
                this.gapi.loadUIAutoHideComponent("Friends", "Friends");
                break;
            } 
            case "_btnFights":
            {
                if (!this.api.datacenter.Game.isFight)
                {
                    this.gapi.loadUIComponent("FightsInfos", "FightsInfos");
                } // end if
                break;
            } 
            case "_btnNextTurn":
            {
                if (!this._waitReadyState)
                {
                    if (this.api.datacenter.Game.isFight && this.api.datacenter.Player.isCurrentPlayer)
                    {
                        this.api.sounds.events.onBannerNextTurnButtonClick();
                        this.api.network.Game.turnEnd();
                    } // end if
                }
                else
                {
                    this.api.network.Game.ready(!this._bReady);
                    this.ready = !this._bReady;
                } // end else if
                break;
            } 
            case "_btnGiveUp":
            {
                if (this.api.datacenter.Game.isFight)
                {
                    if (this.api.datacenter.Game.isSpectator)
                    {
                        this.api.network.Game.leave();
                    }
                    else
                    {
                        this.api.kernel.GameManager.giveUpGame();
                    } // end if
                } // end else if
                break;
            } 
            case "_mcXtra":
            {
                this.showStatsJob();
                break;
            } 
            case "_rChronoHit":
            {
                break;
            } 
            case "_btnHelp":
            {
                this._cChat.click({target: oEvent.target});
                break;
            } 
            default:
            {
                switch (this._msShortcuts.currentTab)
                {
                    case dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS:
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
                        var _loc4 = oEvent.target.contentData;
                        if (_loc4 == undefined)
                        {
                            return;
                        } // end if
                        this.api.kernel.GameManager.switchToSpellLaunch(_loc4, true);
                        break;
                    } 
                    case dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS:
                    {
                        if (this.api.kernel.TutorialManager.isTutorialMode)
                        {
                            this.api.kernel.TutorialManager.onWaitingCase({code: "OBJECT_CONTAINER_SELECT", params: [Number(oEvent.target._name.substr(4))]});
                            break;
                        } // end if
                        if (Key.isDown(dofus.Constants.CHAT_INSERT_ITEM_KEY) && (oEvent.target.contentData != undefined && !oEvent.target.notInChat))
                        {
                            this.api.kernel.GameManager.insertItemInChat(oEvent.target.contentData);
                            return;
                        }
                        else
                        {
                            oEvent.target.notInChat = false;
                        } // end else if
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
                            if (this.api.datacenter.Player.canUseObject)
                            {
                                if (_loc6.canTarget)
                                {
                                    this.api.kernel.GameManager.switchToItemTarget(_loc6);
                                }
                                else if (_loc6.canUse && oEvent.keyBoard)
                                {
                                    this.api.network.Items.use(_loc6.ID);
                                } // end if
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
        if (oEvent.target == this._mcbMovableBar)
        {
            this._mcbMovableBar.size = this._mcbMovableBar.size == 0 ? (this.api.kernel.OptionsManager.getOption("MovableBarSize")) : (0);
            return;
        } // end if
    };
    _loc1.beforeFinalCountDown = function (oEvent)
    {
        this.api.kernel.TipsManager.showNewTip(dofus.managers.TipsManager.TIP_FINAL_COUNTDOWN);
    };
    _loc1.finalCountDown = function (oEvent)
    {
        this._mcXtra._visible = false;
        if (oEvent.value <= 3)
        {
            this._btnNextTurn.gotoAndPlay("part" + (oEvent.value + 1));
        } // end if
    };
    _loc1.tictac = function (oEvent)
    {
        this.api.sounds.events.onBannerTimer();
    };
    _loc1.start = function (oEvent)
    {
        if (!this._waitReadyState)
        {
            this._btnNextTurn.gotoAndPlay("part7");
        }
        else
        {
            this._btnNextTurn.gotoAndPlay("part5");
        } // end else if
    };
    _loc1.finish = function (oEvent)
    {
        this._mcXtra._visible = true;
        if (this._lblFinalCountDown.text != undefined)
        {
            this._lblFinalCountDown.text = "";
        } // end if
        this._btnNextTurn.gotoAndPlay("part1");
    };
    _loc1.complete = function (oEvent)
    {
        var _loc3 = this.api.kernel.OptionsManager.getOption("BannerIllustrationMode");
        com.ankamagames.tools.Logger.out(_loc3 + " : " + oEvent.target.contentPath, "dofus.graphics.gapi.ui.Banner::complete", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Banner.as", 1701);
        if (oEvent.target.contentPath.indexOf("artworks") != -1 && _loc3 == "helper")
        {
            this.showCircleXtra("helper", true);
        }
        else
        {
            this.api.colors.addSprite(this._mcXtra.content, this._oData.data);
        } // end else if
    };
    _loc1.over = function (oEvent)
    {
        if (!this.gapi.isCursorHidden())
        {
            return;
        } // end if
        switch (oEvent.target._name)
        {
            case "_btnGiveUp":
            {
                if (this.api.datacenter.Game.isSpectator)
                {
                    var _loc3 = this.api.lang.getText("GIVE_UP_SPECTATOR");
                }
                else if (this.api.datacenter.Game.fightType == dofus.managers.GameManager.FIGHT_TYPE_CHALLENGE || !this.api.datacenter.Basics.aks_current_server.isHardcore())
                {
                    _loc3 = this.api.lang.getText("GIVE_UP");
                }
                else
                {
                    _loc3 = this.api.lang.getText("SUICIDE");
                } // end else if
                this.gapi.showTooltip(_loc3, oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnPvP":
            {
                this.gapi.showTooltip(this.api.lang.getText("CONQUEST_WORD"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnMount":
            {
                this.gapi.showTooltip(this.api.lang.getText("MY_SUCCESS"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnGuild":
            {
                this.gapi.showTooltip(this.api.lang.getText("YOUR_GUILD"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnStatsJob":
            {
                this.gapi.showTooltip(this.api.lang.getText("YOUR_STATS_JOB"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnSpells":
            {
                this.gapi.showTooltip(this.api.lang.getText("YOUR_SPELLS"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnQuests":
            {
                this.gapi.showTooltip(this.api.lang.getText("YOUR_BOOK"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnInventory":
            {
                this.gapi.showTooltip(this.api.lang.getText("YOUR_INVENTORY"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnMap":
            {
                this.gapi.showTooltip(this.api.lang.getText("YOUR_MAP"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnFriends":
            {
                this.gapi.showTooltip(this.api.lang.getText("SOCIALS"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_btnFights":
            {
                if (this._nFightsCount != 0)
                {
                    this.gapi.showTooltip(ank.utils.PatternDecoder.combine(this.api.lang.getText("FIGHTS_ON_MAP", [this._nFightsCount]), "m", this._nFightsCount < 2), oEvent.target, -20, {bYLimit: false});
                } // end if
                break;
            } 
            case "_btnNextTurn":
            {
                this.gapi.showTooltip(this.api.lang.getText("NEXT_TURN"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_pvAP":
            {
                this.gapi.showTooltip(this.api.lang.getText("ACTIONPOINTS"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_pvMP":
            {
                this.gapi.showTooltip(this.api.lang.getText("MOVEPOINTS"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_xpBar":
            {
                var _loc4 = this._xpHigh - this._xpCurrent;
                this.gapi.showTooltip(this.api.lang.getText("XPPOINTS_MISSING", [_loc4]), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
            case "_mcXtra":
            {
                switch (this._sCurrentCircleXtra)
                {
                    case "compass":
                    {
                        var _loc5 = oEvent.target.targetCoords;
                        if (_loc5 == undefined)
                        {
                            this.gapi.showTooltip(this.api.lang.getText("BANNER_SET_FLAG"), oEvent.target, 0, {bXLimit: true, bYLimit: false});
                        }
                        else
                        {
                            this.gapi.showTooltip(_loc5[0] + ", " + _loc5[1], oEvent.target, 0, {bXLimit: true, bYLimit: false});
                        } // end else if
                        break;
                    } 
                    case "clock":
                    {
                        this.gapi.showTooltip(this.api.kernel.NightManager.time + "\n" + this.api.kernel.NightManager.getCurrentDateString(), oEvent.target, 0, {bXLimit: true, bYLimit: false});
                        break;
                    } 
                    case "map":
                    {
                        this.gapi.showTooltip(oEvent.target.tooltip, oEvent.target, 0, {bXLimit: true, bYLimit: false});
                        break;
                    } 
                } // End of switch
                break;
            } 
            case "_btnHelp":
            {
                this._cChat.over({target: oEvent.target});
                break;
            } 
            default:
            {
                switch (this._msShortcuts.currentTab)
                {
                    case dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS:
                    {
                        var _loc6 = oEvent.target.contentData;
                        if (_loc6 != undefined)
                        {
                            this.gapi.showTooltip(_loc6.name + " (" + _loc6.apCost + " " + this.api.lang.getText("AP") + (_loc6.actualCriticalHit > 0 ? (", " + this.api.lang.getText("ACTUAL_CRITICAL_CHANCE") + ": 1/" + _loc6.actualCriticalHit) : ("")) + ")", oEvent.target, -20, {bXLimit: true, bYLimit: false});
                        } // end if
                        break;
                    } 
                    case dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS:
                    {
                        var _loc7 = oEvent.target.contentData;
                        if (_loc7 != undefined)
                        {
                            var _loc8 = _loc7.name;
                            if (this.gapi.getUIComponent("Inventory") == undefined)
                            {
                                if (_loc7.canUse && _loc7.canTarget)
                                {
                                    _loc8 = _loc8 + ("\n" + this.api.lang.getText("HELP_SHORTCUT_DBLCLICK_CLICK"));
                                }
                                else
                                {
                                    if (_loc7.canUse)
                                    {
                                        _loc8 = _loc8 + ("\n" + this.api.lang.getText("HELP_SHORTCUT_DBLCLICK"));
                                    } // end if
                                    if (_loc7.canTarget)
                                    {
                                        _loc8 = _loc8 + ("\n" + this.api.lang.getText("HELP_SHORTCUT_CLICK"));
                                    } // end if
                                } // end if
                            } // end else if
                            this.gapi.showTooltip(_loc8, oEvent.target, -30, {bXLimit: true, bYLimit: false});
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
        if (oEvent.target._name == "_btnHelp")
        {
            this._cChat.over({target: oEvent.target});
        } // end if
    };
    _loc1.drag = function (oEvent)
    {
        var _loc3 = oEvent.target.contentData;
        if (_loc3 == undefined)
        {
            return;
        } // end if
        switch (this._msShortcuts.currentTab)
        {
            case dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS:
            {
                if (this.gapi.getUIComponent("Spells") == undefined && !Key.isDown(Key.SHIFT))
                {
                    return;
                } // end if
                break;
            } 
            case dofus.graphics.gapi.controls.MouseShortcuts.TAB_ITEMS:
            {
                if (this.gapi.getUIComponent("Inventory") == undefined && !Key.isDown(Key.SHIFT))
                {
                    return;
                } // end if
                break;
            } 
        } // End of switch
        this.gapi.removeCursor();
        this.gapi.setCursor(_loc3);
    };
    _loc1.drop = function (oEvent)
    {
    };
    _loc1.filterChanged = function (oEvent)
    {
        this.api.network.Chat.subscribeChannels(oEvent.filter, oEvent.selected);
    };
    _loc1.lpChanged = function (oEvent)
    {
        this._hHeart.value = oEvent.value;
    };
    _loc1.lpmaxChanged = function (oEvent)
    {
        this._hHeart.max = oEvent.value;
    };
    _loc1.levelChanged = function (oEvent)
    {
        this._lblLevel.setText(this.api.lang.getText("LEVEL_SMALL") + oEvent.value);
    };
    _loc1.apChanged = function (oEvent)
    {
        this._pa._point.text = oEvent.value;
        com.ankamagames.tools.Logger.out("WG les ap changent", "dofus.graphics.gapi.ui.Banner::apChanged", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Banner.as", 2103);
        if (this.api.datacenter.Game.isFight)
        {
        } // end if
        this._msShortcuts.setSpellStateOnAllContainers();
        this._msShortcuts.setItemStateOnAllContainers();
    };
    _loc1.mpChanged = function (oEvent)
    {
        this._pm._point.text = oEvent.value;
    };
    _loc1.selectSmiley = function (oEvent)
    {
        this.api.network.Chat.useSmiley(oEvent.index);
    };
    _loc1.selectEmote = function (oEvent)
    {
        this.api.network.Emotes.useEmote(oEvent.index);
    };
    _loc1.spellLaunched = function (oEvent)
    {
        com.ankamagames.tools.Logger.out("WG Lancement du sort", "dofus.graphics.gapi.ui.Banner::spellLaunched", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Banner.as", 2131);
        this._msShortcuts.setSpellStateOnContainer(oEvent.spell.position);
    };
    _loc1.nextTurn = function (oEvent)
    {
        com.ankamagames.tools.Logger.out("nouveau tour", "dofus.graphics.gapi.ui.Banner::nextTurn", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Banner.as", 2138);
        this._msShortcuts.setSpellStateOnAllContainers();
    };
    _loc1.href = function (oEvent)
    {
        var _loc3 = oEvent.params.split(",");
        switch (_loc3[0])
        {
            case "OpenGuildTaxCollectors":
            {
                this.addToQueue({object: this.gapi, method: this.gapi.loadUIAutoHideComponent, params: ["Guild", "Guild", {currentTab: "TaxCollectors"}, {bStayIfPresent: true}]});
                break;
            } 
            case "OpenPayZoneDetails":
            {
                this.addToQueue({object: this.gapi, method: this.gapi.loadUIComponent, params: ["PayZoneDialog2", "PayZoneDialog2", {name: "El Pemy", gfx: "9059", dialogID: dofus.graphics.gapi.ui.PayZoneDialog.PAYZONE_DETAILS}, {bForceLoad: true}]});
                break;
            } 
            case "ShowPlayerPopupMenu":
            {
                if (_loc3[2] != undefined && (String(_loc3[2]).length > 0 && _loc3[2] != ""))
                {
                    this.addToQueue({object: this.api.kernel.GameManager, method: this.api.kernel.GameManager.showPlayerPopupMenu, params: [undefined, _loc3[1], null, null, null, _loc3[2], this.api.datacenter.Player.isAuthorized]});
                    com.ankamagames.tools.Logger.out("showPlayerPopupMenu called from Banner.as:1959", "dofus.graphics.gapi.ui.Banner::href", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Banner.as", 2165);
                }
                else
                {
                    this.addToQueue({object: this.api.kernel.GameManager, method: this.api.kernel.GameManager.showPlayerPopupMenu, params: [undefined, _loc3[1]]});
                    com.ankamagames.tools.Logger.out("showPlayerPopupMenu called from Banner.as:1964", "dofus.graphics.gapi.ui.Banner::href", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Banner.as", 2170);
                } // end else if
                break;
            } 
            case "ShowItemViewer":
            {
                var _loc4 = this.api.kernel.ChatManager.getItemFromBuffer(Number(_loc3[1]));
                if (_loc4 == undefined)
                {
                    this.addToQueue({object: this.api.kernel, method: this.api.kernel.showMessage, params: [this.api.lang.getText("ERROR_WORD"), this.api.lang.getText("ERROR_ITEM_CANT_BE_DISPLAYED"), "ERROR_BOX"]});
                    break;
                } // end if
                this.addToQueue({object: this.api.ui, method: this.api.ui.loadUIComponent, params: ["ItemViewer", "ItemViewer", {item: _loc4}, {bAlwaysOnTop: true}]});
                break;
            } 
            case "updateCompass":
            {
                this.api.kernel.GameManager.updateCompass(Number(_loc3[1]), Number(_loc3[2]));
                break;
            } 
            case "ShowLinkWarning":
            {
                this.addToQueue({object: this.api.ui, method: this.api.ui.loadUIComponent, params: ["AskLinkWarning", "AskLinkWarning", {text: this.api.lang.getText(_loc3[1])}]});
                break;
            } 
        } // End of switch
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
                    this.api.network.Items.movement(oEvent.params.item.ID, oEvent.params.position, Math.min(oEvent.value, oEvent.params.item.Quantity));
                } // end if
                break;
            } 
        } // End of switch
    };
    _loc1.drawBar = function (oEvent)
    {
        this.linkMovableContainer();
        this._msShortcuts.updateCurrentTabInformations();
        if (this._msShortcuts.currentTab == dofus.graphics.gapi.controls.MouseShortcuts.TAB_SPELLS)
        {
            this._btnFights._visible = false;
        }
        else
        {
            this._btnFights._visible = this._nFightsCount != 0 && !this.api.datacenter.Game.isFight;
        } // end else if
    };
    _loc1.onSetFocus = function ()
    {
        if (this.api.config.isLinux || this.api.config.isMac)
        {
            getURL("FSCommand:" add "trapallkeys", "false");
        }
        else
        {
            this._bIsOnFocus = true;
        } // end else if
    };
    _loc1.onKillFocus = function ()
    {
        if (this.api.config.isLinux || this.api.config.isMac)
        {
            getURL("FSCommand:" add "trapallkeys", "true");
        }
        else
        {
            this._bIsOnFocus = false;
        } // end else if
    };
    _loc1.showStatsJob = function ()
    {
        this.api.sounds.events.onBannerRoundButtonClick();
        if (this._oData.isMutant)
        {
            this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_U_ARE_MUTANT"), "ERROR_CHAT");
            return;
        } // end if
        this.showSmileysEmotesPanel(false);
        this.gapi.loadUIAutoHideComponent("StatsJob", "StatsJob");
    };
    _loc1.showCookBook = function ()
    {
        this.api.sounds.events.onBannerRoundButtonClick();
        if (this._oData.isMutant)
        {
            this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_U_ARE_MUTANT"), "ERROR_CHAT");
            return;
        } // end if
        this.showSmileysEmotesPanel(false);
        this.gapi.loadUIAutoHideComponent("WG2Cookbook", "WG2Cookbook");
    };
    _loc1.setXp = function (current, low, high)
    {
        this._xpCurrent = current;
        this._xpLow = low;
        this._xpHigh = high;
        this._xpBar.setXp(current, low, high);
    };
    _loc1.xpChanged = function (oEvent)
    {
        this.setXp(oEvent.value, oEvent.low, oEvent.high);
    };
    _loc1.addProperty("chatAutoFocus", _loc1.__get__chatAutoFocus, _loc1.__set__chatAutoFocus);
    _loc1.addProperty("ready", function ()
    {
    }, _loc1.__set__ready);
    _loc1.addProperty("illustrationType", _loc1.__get__illustrationType, function ()
    {
    });
    _loc1.addProperty("data", function ()
    {
    }, _loc1.__set__data);
    _loc1.addProperty("chat", _loc1.__get__chat, function ()
    {
    });
    _loc1.addProperty("illustration", _loc1.__get__illustration, function ()
    {
    });
    _loc1.addProperty("fightsCount", function ()
    {
    }, _loc1.__set__fightsCount);
    _loc1.addProperty("txtConsole", function ()
    {
    }, _loc1.__set__txtConsole);
    _loc1.addProperty("shortcuts", _loc1.__get__shortcuts, function ()
    {
    });
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.Banner = function ()
    {
        super();
    }).CLASS_NAME = "Banner";
    (_global.dofus.graphics.gapi.ui.Banner = function ()
    {
        super();
    }).NO_TRANSFORM = {ra: 100, rb: 0, ga: 100, gb: 0, ba: 100, bb: 0};
    (_global.dofus.graphics.gapi.ui.Banner = function ()
    {
        super();
    }).INACTIVE_TRANSFORM = {ra: 50, rb: 0, ga: 50, gb: 0, ba: 50, bb: 0};
    _loc1._nFightsCount = 0;
    _loc1._bChatAutoFocus = true;
    _loc1._waitReadyState = false;
} // end if
#endinitclip

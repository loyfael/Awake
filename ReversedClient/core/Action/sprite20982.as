// Action script...

// [Initial MovieClip Action of sprite 20982]
#initclip 247
if (!dofus.graphics.gapi.ui.WGGameResult)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.WGGameResult = function ()
    {
        super();
    }).prototype;
    _loc1.__set__dungeonId = function (nDungeonId)
    {
        this._nDungeonId = nDungeonId;
        //return (this.dungeonId());
    };
    _loc1.__set__dungeonFight = function (nDungeonFight)
    {
        this._nDungeonFight = nDungeonFight;
        //return (this.dungeonFight());
    };
    _loc1.__set__rewards = function (aRewards)
    {
        this._aRewards = aRewards;
        //return (this.rewards());
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.WGGameResult.CLASS_NAME);
    };
    _loc1.callClose = function ()
    {
        this.unloadThis();
        return (true);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.addListeners});
        this.gapi.unloadLastUIAutoHideComponent();
    };
    _loc1.initTexts = function ()
    {
        this._lblResultIntro.multiline = true;
        this._lblResultIntro.wordWrap = true;
        this._lblResultText.multiline = true;
        this._lblResultText.wordWrap = true;
        this._lblNewLevel.multiline = true;
        this._lblNewLevel.wordWrap = true;
        this._lblNewMaxLife.multiline = true;
        this._lblNewMaxLife.wordWrap = true;
        this._lblNewSpells.multiline = true;
        this._lblNewSpells.wordWrap = true;
        this._lblResultBeforeReward.multiline = true;
        this._lblResultBeforeReward.wordWrap = true;
        this._lblResultBonusItemsReward.multiline = true;
        this._lblResultBonusItemsReward.wordWrap = true;
        this._lblResultAfterReward.multiline = true;
        this._lblResultAfterReward.wordWrap = true;
        this._lblNewLevel._visible = false;
        this._lblNewMaxLife._visible = false;
        this._lblNewSpells._visible = false;
        this._lblResultBeforeReward._visible = false;
        this._lblResultBonusItemsReward._visible = false;
        this._lblResultAfterReward._visible = false;
        if (this._nDungeonId == -1)
        {
            this._winBackground.title = this.api.lang.getText("TROUILLE_TITLE");
            this._lblResultIntro.text = this.api.lang.getText("DUNGEON_RESULT_INTRO", [this.api.datacenter.Player.Name]);
            this._lblResultText.text = this.api.lang.getText("TROUILLE_" + 0 + "_" + 0);
        }
        else
        {
            this._winBackground.title = this.api.lang.getText("DUNGEON_" + this._nDungeonId);
            this._lblResultIntro.text = this.api.lang.getText("DUNGEON_RESULT_INTRO", [this.api.datacenter.Player.Name]);
            this._lblResultText.text = this.api.lang.getText("DUNGEON_" + this._nDungeonId + "_" + this._nDungeonFight);
        } // end else if
        this._lblResultText.setPreferedSize(true);
        var _loc2 = this._lblResultText._y + this._lblResultText.textHeight + dofus.graphics.gapi.ui.WGGameResult.SPACE_BETWEEN_ELEMENTS;
        var _loc3 = -1;
        var _loc4 = -1;
        var _loc5 = new Array();
        var _loc6 = new Array();
        var _loc7 = new Array();
        var _loc8 = new Array();
        var _loc9 = 0;
        
        while (++_loc9, _loc9 < this._aRewards.length)
        {
            var _loc10 = this._aRewards[_loc9];
            switch (_loc10.type)
            {
                case "I":
                {
                    var _loc11 = new dofus.datacenter.Item(0, Number(_loc10.param), 1);
                    _loc6.push(_loc11);
                    break;
                } 
                case "V":
                {
                    _loc4 = Number(_loc10.param);
                    break;
                } 
                case "S":
                {
                    var _loc12 = _loc10.param.split(",");
                    var _loc13 = new dofus.datacenter.Spell(_loc12[0], _loc12[1]);
                    _loc5.push(_loc13);
                    this.api.ui.getUIComponent("Banner").shortcuts.updateSpells();
                    break;
                } 
                case "L":
                {
                    _loc3 = Number(_loc10.param);
                    this.api.datacenter.Player.Level = _loc3;
                    break;
                } 
                case 20:
                {
                    _loc6.push(_loc10);
                    break;
                } 
                case "B":
                {
                    var _loc14 = new dofus.datacenter.Item(0, Number(_loc10.param), 1);
                    _loc7.push(_loc14);
                    break;
                } 
                case "T":
                {
                    _loc8.push(this.api.lang.getTitle(Number(_loc10.param)).t);
                    break;
                } 
            } // End of switch
        } // end while
        if (_loc3 != -1)
        {
            this._lblNewLevel._visible = true;
            this._lblNewLevel.text = this.api.lang.getText("DUNGEON_RESULT_NEWLEVEL", [_loc3]);
            this._lblNewLevel.setPreferedSize(true);
            this._lblNewLevel._y = _loc2;
            _loc2 = _loc2 + this._lblNewLevel.textHeight;
        } // end if
        if (_loc4 != -1)
        {
            this._lblNewMaxLife._visible = true;
            this._lblNewMaxLife.text = this.api.lang.getText("DUNGEON_RESULT_NEWMAXLIFE", [_loc4]);
            this._lblNewMaxLife.setPreferedSize(true);
            this._lblNewMaxLife._y = _loc2;
            _loc2 = _loc2 + this._lblNewMaxLife.textHeight;
        } // end if
        if (_loc5.length > 0)
        {
            this._lblNewSpells._visible = true;
            this._lblNewSpells.text = "";
            this._lblNewSpells._y = _loc2;
            var _loc15 = 0;
            
            while (++_loc15, _loc15 < _loc5.length)
            {
                var _loc16 = _loc5[_loc15];
                if (this._lblNewSpells.text.length > 0)
                {
                    this._lblNewSpells.text = this._lblNewSpells.text + "\n";
                } // end if
                this._lblNewSpells.text = this._lblNewSpells.text + this.api.lang.getText("DUNGEON_RESULT_NEWSPELL", [_loc16.level, _loc16.name]);
            } // end while
            this._lblNewSpells.setPreferedSize(true);
            _loc2 = _loc2 + this._lblNewSpells.textHeight;
        } // end if
        _loc2 = _loc2 + dofus.graphics.gapi.ui.WGGameResult.SPACE_BETWEEN_ELEMENTS;
        if (_loc6.length)
        {
            this._lblResultBeforeReward._visible = true;
            if (this._nDungeonId == -1)
            {
                this._lblResultBeforeReward.text = this.api.lang.getText("TROUILLE_RESULT_BEFORE_REWARD");
            }
            else
            {
                this._lblResultBeforeReward.text = this.api.lang.getText("DUNGEON_RESULT_BEFORE_REWARD");
            } // end else if
            this._lblResultBeforeReward.setPreferedSize(true);
            this._lblResultBeforeReward._y = _loc2;
            _loc2 = _loc2 + (this._lblResultBeforeReward.textHeight + 2 * dofus.graphics.gapi.ui.WGGameResult.SPACE_BETWEEN_ELEMENTS);
            var _loc17 = 0;
            
            while (++_loc17, _loc17 < _loc6.length)
            {
                var _loc18 = _loc6[_loc17];
                var _loc19 = _loc17 % dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_PER_LINE * (dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_SIZE + dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_MARGIN_RIGHT) + this._lblResultBeforeReward._x + 20;
                var _loc20 = Math.floor(_loc17 / dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_PER_LINE) * (dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_SIZE + dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_MARGIN_RIGHT) + _loc2;
                com.ankamagames.tools.Logger.out("WGGameResult: initexts : item.label:" + _loc18.label, "dofus.graphics.gapi.ui.WGGameResult::initTexts", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/WGGameResult.as", 262);
                com.ankamagames.tools.Logger.out("WGGameResult: initexts : item.iconFile:" + _loc18.iconFile, "dofus.graphics.gapi.ui.WGGameResult::initTexts", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/WGGameResult.as", 263);
                com.ankamagames.tools.Logger.out("WGGameResult: initexts : item:" + _loc18, "dofus.graphics.gapi.ui.WGGameResult::initTexts", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/WGGameResult.as", 264);
                var _loc21 = (ank.gapi.controls.Container)(this.attachMovie("Container", "_ctrItem_" + _loc17, this.getNextHighestDepth(), {contentData: _loc18, contentPath: _loc18.iconFile}));
                _loc21._x = _loc19;
                _loc21._y = _loc20;
                _loc21.setSize(dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_SIZE, dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_SIZE);
                _loc21.enabled = true;
                _loc21.showLabel = true;
                _loc21.label = "" + _loc18.label;
            } // end while
            _loc2 = _loc2 + (Math.ceil(_loc6.length / dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_PER_LINE) * (dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_SIZE + dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_MARGIN_RIGHT) + dofus.graphics.gapi.ui.WGGameResult.SPACE_BETWEEN_ELEMENTS);
        } // end if
        if (_loc7.length)
        {
            this._lblResultBonusItemsReward._visible = true;
            if (this._nDungeonId == -1)
            {
                this._lblResultBonusItemsReward.text = this.api.lang.getText("TROUILLE_RESULT_BEFORE_REWARD");
            }
            else
            {
                this._lblResultBonusItemsReward.text = this.api.lang.getText("DUNGEON_RESULT_BEFORE_BONUS_REWARD");
            } // end else if
            this._lblResultBonusItemsReward.setPreferedSize(true);
            this._lblResultBonusItemsReward._y = _loc2;
            _loc2 = _loc2 + (this._lblResultBonusItemsReward.textHeight + 2 * dofus.graphics.gapi.ui.WGGameResult.SPACE_BETWEEN_ELEMENTS);
            var _loc22 = 0;
            
            while (++_loc22, _loc22 < _loc7.length)
            {
                var _loc23 = _loc7[_loc22];
                var _loc24 = _loc22 % dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_PER_LINE * (dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_SIZE + dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_MARGIN_RIGHT) + this._lblResultBonusItemsReward._x + 20;
                var _loc25 = Math.floor(_loc22 / dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_PER_LINE) * (dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_SIZE + dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_MARGIN_RIGHT) + _loc2;
                com.ankamagames.tools.Logger.out("WGGameResult: initexts : item.label:" + _loc23.label, "dofus.graphics.gapi.ui.WGGameResult::initTexts", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/WGGameResult.as", 302);
                com.ankamagames.tools.Logger.out("WGGameResult: initexts : item.iconFile:" + _loc23.iconFile, "dofus.graphics.gapi.ui.WGGameResult::initTexts", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/WGGameResult.as", 303);
                com.ankamagames.tools.Logger.out("WGGameResult: initexts : item:" + _loc23, "dofus.graphics.gapi.ui.WGGameResult::initTexts", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/WGGameResult.as", 304);
                var _loc26 = (ank.gapi.controls.Container)(this.attachMovie("Container", "_ctrItem2_" + _loc22, this.getNextHighestDepth(), {contentData: _loc23, contentPath: _loc23.iconFile}));
                _loc26._x = _loc24;
                _loc26._y = _loc25;
                _loc26.setSize(dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_SIZE, dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_SIZE);
                _loc26.enabled = true;
                _loc26.showLabel = true;
                _loc26.label = "" + _loc23.label;
            } // end while
            _loc2 = _loc2 + (Math.ceil(_loc7.length / dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_PER_LINE) * (dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_SIZE + dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_MARGIN_RIGHT) + dofus.graphics.gapi.ui.WGGameResult.SPACE_BETWEEN_ELEMENTS);
        } // end if
        if (_loc8.length)
        {
            this._lblResultBonusTitlesReward.text = this.api.lang.getText("DUNGEON_RESULT_NEW_TITLE") + " ";
            var _loc27 = 0;
            
            while (++_loc27, _loc27 < _loc8.length)
            {
                if (_loc27 != 0)
                {
                    this._lblResultBonusTitlesReward.text = this._lblResultBonusTitlesReward.text + ", ";
                } // end if
                this._lblResultBonusTitlesReward.text = this._lblResultBonusTitlesReward.text + _loc8[0];
            } // end while
            this._lblResultBonusTitlesReward._y = _loc2;
            _loc2 = _loc2 + (this._lblResultBonusTitlesReward.textHeight + 2 * dofus.graphics.gapi.ui.WGGameResult.SPACE_BETWEEN_ELEMENTS);
        } // end if
        if (_loc6.length || _loc7.length)
        {
            if (this._nDungeonId == -1)
            {
                this._lblResultAfterReward.text = "";
            }
            else
            {
                this._lblResultAfterReward._visible = true;
                this._lblResultAfterReward.text = this.api.lang.getText("DUNGEON_RESULT_AFTER_REWARD");
            } // end else if
            this._lblResultAfterReward.setPreferedSize(true);
            this._lblResultAfterReward._y = _loc2;
            _loc2 = _loc2 + (this._lblResultAfterReward.textHeight + dofus.graphics.gapi.ui.WGGameResult.SPACE_BETWEEN_ELEMENTS);
        } // end if
        this._btnClose.label = this.api.lang.getText("CLOSE");
        this._btnClose._y = _loc2;
        _loc2 = _loc2 + (this._btnClose._height + dofus.graphics.gapi.ui.WGGameResult.SPACE_BETWEEN_ELEMENTS);
        this._winBackground.height = _loc2 - this._winBackground._y;
    };
    _loc1.addListeners = function ()
    {
        this._btnClose.addEventListener("click", this);
        var _loc2 = -1;
        while (this["_ctrItem_" + ++_loc2] != undefined)
        {
            this["_ctrItem_" + _loc2].addEventListener("over", this);
            this["_ctrItem_" + _loc2].addEventListener("out", this);
        } // end while
        _loc2 = -1;
        while (this["_ctrItem2_" + ++_loc2] != undefined)
        {
            this["_ctrItem2_" + _loc2].addEventListener("over", this);
            this["_ctrItem2_" + _loc2].addEventListener("out", this);
        } // end while
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
        } // End of switch
    };
    _loc1.over = function (oEvent)
    {
        this.api.ui.showTooltip(oEvent.target.contentData.name, oEvent.target, -(dofus.graphics.gapi.ui.WGGameResult.ITEM_ICON_SIZE / 2 + 5));
    };
    _loc1.out = function (oEvent)
    {
        this.api.ui.hideTooltip();
    };
    _loc1.addProperty("rewards", function ()
    {
    }, _loc1.__set__rewards);
    _loc1.addProperty("dungeonFight", function ()
    {
    }, _loc1.__set__dungeonFight);
    _loc1.addProperty("dungeonId", function ()
    {
    }, _loc1.__set__dungeonId);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.WGGameResult = function ()
    {
        super();
    }).CLASS_NAME = "WGGameResult";
    (_global.dofus.graphics.gapi.ui.WGGameResult = function ()
    {
        super();
    }).SPACE_BETWEEN_ELEMENTS = 10;
    (_global.dofus.graphics.gapi.ui.WGGameResult = function ()
    {
        super();
    }).ITEM_ICON_PER_LINE = 10;
    (_global.dofus.graphics.gapi.ui.WGGameResult = function ()
    {
        super();
    }).ITEM_ICON_SIZE = 30;
    (_global.dofus.graphics.gapi.ui.WGGameResult = function ()
    {
        super();
    }).ITEM_ICON_MARGIN_RIGHT = 10;
} // end if
#endinitclip

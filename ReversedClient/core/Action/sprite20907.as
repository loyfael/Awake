﻿// Action script...

// [Initial MovieClip Action of sprite 20907]
#initclip 172
if (!dofus.graphics.gapi.controls.ChooseCharacterSprite)
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
    var _loc1 = (_global.dofus.graphics.gapi.controls.ChooseCharacterSprite = function ()
    {
        super();
    }).prototype;
    _loc1.__set__showComboBox = function (bShowComboBox)
    {
        this._bShowComboBox = bShowComboBox;
        //return (this.showComboBox());
    };
    _loc1.__set__data = function (oData)
    {
        this._oData = oData;
        this.updateData();
        //return (this.data());
    };
    _loc1.__get__data = function ()
    {
        return (this._oData);
    };
    _loc1.__get__serverId = function ()
    {
        return (this._nServerID);
    };
    _loc1.__set__selected = function (bSelected)
    {
        this._bSelected = bSelected;
        //return (this.selected());
    };
    _loc1.unselect = function ()
    {
        this.selected = false;
        this._lblName.textColor = this.getStyle().notselectedcolor;
    };
    _loc1.__get__selected = function ()
    {
        return (this._bSelected);
    };
    _loc1.__set__deleteButton = function (bShow)
    {
        this._bDeleteButton = bShow;
        this._btnDelete._visible = bShow;
        //return (this.deleteButton());
    };
    _loc1.__get__deleteButton = function ()
    {
        return (this._bDeleteButton);
    };
    _loc1.__set__isDead = function (bIsDead)
    {
        this._isDead = bIsDead;
        if (this._isDead)
        {
            var _loc3 = {ra: dofus.graphics.gapi.controls.ChooseCharacterSprite.DEATH_ALPHA, rb: 100, ga: dofus.graphics.gapi.controls.ChooseCharacterSprite.DEATH_ALPHA, gb: 100, ba: dofus.graphics.gapi.controls.ChooseCharacterSprite.DEATH_ALPHA, bb: 100};
        }
        else
        {
            _loc3 = {ra: 100, rb: 0, ga: 100, gb: 0, ba: 100, bb: 0};
        } // end else if
        var _loc4 = new Color(this._ldrSprite);
        _loc4.setTransform(_loc3);
        _loc4 = new Color(this._ldrMerchant);
        _loc4.setTransform(_loc3);
        _loc4 = new Color(this._mcGround._mcGround);
        _loc4.setTransform(_loc3);
        this._btnReset._visible = this._isDead;
        this._dcCharacter._visible = this._isDead;
        //return (this.isDead());
    };
    _loc1.__get__isDead = function ()
    {
        return (this._isDead && this._isDead != undefined);
    };
    _loc1.__set__death = function (nDeath)
    {
        this._dcCharacter.death = nDeath;
        this._dcCharacter._alpha = 50;
        //return (this.death());
    };
    _loc1.__set__deathState = function (nState)
    {
        this._nDeathState = nState;
        var ref = this;
        if (this._nDeathState == 2)
        {
            this.onEnterFrame = function ()
            {
                ref._nCurrAlpha = ref._nCurrAlpha + ref._nCurrAlphaStep;
                var _loc2 = ref._nCurrAlpha;
                if (ref._nCurrAlpha == 0)
                {
                    ref._nCurrAlphaStep = 1;
                } // end if
                if (ref._nCurrAlpha == 40)
                {
                    ref._nCurrAlphaStep = -1;
                } // end if
                var _loc3 = {ra: _loc2, rb: 100, ga: _loc2, gb: 100, ba: _loc2, bb: 100};
                var _loc4 = new Color(ref._ldrSprite);
                _loc4.setTransform(_loc3);
                _loc4 = new Color(ref._ldrMerchant);
                _loc4.setTransform(_loc3);
                _loc4 = new Color(ref._mcGround._mcGround);
                _loc4.setTransform(_loc3);
            };
        }
        else
        {
            delete this.onEnterFrame;
        } // end else if
        //return (this.deathState());
    };
    _loc1.__get__deathState = function ()
    {
        return (this._nDeathState);
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.controls.ChooseCharacterSprite.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initData});
        this._btnDelete._visible = false;
        this._btnReset._visible = false;
    };
    _loc1.addListeners = function ()
    {
        this._ldrSprite.addEventListener("initialization", this);
        this._btnDelete.addEventListener("click", this);
        this._btnDelete.addEventListener("over", this);
        this._btnDelete.addEventListener("out", this);
        this._btnReset.addEventListener("click", this);
        this._btnReset.addEventListener("over", this);
        this._btnReset.addEventListener("out", this);
        this._cbServers.addEventListener("itemSelected", this);
        this._ctrServerState.addEventListener("over", this);
        this._ctrServerState.addEventListener("out", this);
        this.api.datacenter.Basics.aks_servers.addEventListener("modelChanged", this);
        Key.addListener(this);
    };
    _loc1.initData = function ()
    {
        this.updateData();
    };
    _loc1.setEnabled = function ()
    {
        if (this._bEnabled)
        {
            this._mcInteraction.onRelease = function ()
            {
                this._parent.innerRelease();
                if (this._parent._bSelected)
                {
                    this._parent._lblName.textColor = this._parent.getStyle().selectedcolor;
                    this._parent._parent._lblServer.text = this._parent.api.lang.getText("CURRENT_SERVER", [this._parent.api.datacenter.Basics.aks_servers.findFirstItem("id", this._parent._nServerID).item.label]);
                }
                else
                {
                    this._parent._lblName.textColor = this._parent.getStyle().notselectedcolor;
                } // end else if
            };
            this._mcInteraction.onRollOver = this._mcInteraction.onDragOver = function ()
            {
                this._parent.innerOver();
            };
            this._mcInteraction.onRollOut = this._mcInteraction.onReleaseOutside = function ()
            {
                delete this._parent.onEnterFrame;
                this._parent.innerOut();
            };
            this._mcInteraction.onDragOut = function ()
            {
                this._parent.innerOut();
            };
            this._mcUnknown._visible = false;
        }
        else
        {
            delete this._mcInteraction.onRelease;
            delete this._mcInteraction.onRollOver;
            delete this._mcInteraction.onRollOut;
            delete this._mcInteraction.onReleaseOutside;
            delete this._mcInteraction.onPress;
            delete this._mcInteraction.onDragOut;
            delete this._mcInteraction.onDragOver;
            this._mcUnknown._visible = true;
            this.selected = false;
        } // end else if
        this.isDead = this._isDead;
    };
    _loc1.updateData = function ()
    {
        if (this._oData != undefined)
        {
            this._lblName.text = this._oData.name;
            this._lblLevel.text = this._oData.Level != undefined ? (this._oData.Level) : (this._oData.title);
            if (this._oData.Merchant)
            {
                this._ldrMerchant.contentPath = dofus.Constants.EXTRA_PATH + "0.swf";
            } // end if
            this._ldrSprite.forceReload = true;
            this._ldrSprite.contentPath = this._oData.gfxFile;
            this._btnDelete._visible = this._bDeleteButton;
            this._cbServers._visible = true;
            this.updateServer(this._oData.serverID);
            this._mcStateBack._visible = true;
            this.setAnim("static", true);
        }
        else if (this._lblName.text != undefined)
        {
            this._lblName.text = "";
            this._lblLevel.text = "";
            this._ldrSprite.forceReload = true;
            this._ldrSprite.contentPath = "";
            this._btnDelete._visible = false;
            this._cbServers._visible = false;
            this._ctrServerState.contentPath = "";
            this._mcStateBack._visible = false;
        } // end else if
    };
    _loc1.updateServer = function (nServerID)
    {
        com.ankamagames.tools.Logger.out("WG On update Server pour l\'id " + nServerID, "dofus.graphics.gapi.controls.ChooseCharacterSprite::updateServer", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/controls/ChooseCharacterSprite.as", 403);
        if (nServerID != undefined)
        {
            this._nServerID = nServerID;
        } // end if
        var _loc3 = this.api.datacenter.Basics.aks_servers;
        var _loc4 = 0;
        var _loc5 = 0;
        
        while (++_loc5, _loc5 < _loc3.length)
        {
            var _loc6 = _loc3[_loc5].id;
            if (_loc6 == this._nServerID)
            {
                _loc4 = _loc5;
                this._oServer = _loc3[_loc5];
                break;
            } // end if
        } // end while
        var _loc7 = _loc3[_loc4];
        if (_loc7 == undefined)
        {
            ank.utils.Logger.err("Serveur " + this._nServerID + " inconnu");
        }
        else
        {
            this.enabled = _loc7.state == dofus.datacenter.Server.SERVER_ONLINE;
            this._ctrServerState.contentPath = "ChooseCharacterServerState" + _loc7.state;
        } // end else if
        if (this._bShowComboBox && this._lblServer.text != undefined)
        {
            this._cbServers.dataProvider = _loc3;
            this._cbServers.selectedIndex = _loc4;
            this._cbServers.buttonIcon = "ComboBoxButtonNormalIcon";
            this._lblServer.text = "";
            this._cbServers.enabled = true;
        }
        else
        {
            this._cbServers.buttonIcon = "";
            this._lblServer.text = _loc7.label;
            this._cbServers.enabled = false;
        } // end else if
    };
    _loc1.updateSelected = function (nColor)
    {
        if (this._bSelected || this._bOver && this._bEnabled)
        {
            ank.gapi.core.UIBasicComponent.setMovieClipColor(this._mcSelect, nColor);
            this._mcSelect.gotoAndPlay(1);
            this._mcSelect._visible = true;
        }
        else
        {
            this._mcSelect.stop();
            this._mcSelect._visible = false;
        } // end else if
    };
    _loc1.changeSpriteOrientation = function (mcSprite)
    {
        _global.clearInterval(this._nIntervalID);
        var _loc3 = mcSprite.attachMovie("staticR", "mcAnim", 10);
        if (!_loc3)
        {
            _loc3 = mcSprite.attachMovie("staticR", "mcAnim", 10);
        } // end if
        if (!_loc3)
        {
            this.addToQueue({object: this, method: this.changeSpriteOrientation, params: [mcSprite]});
        } // end if
    };
    _loc1.animCharacter = function (nAngle, bFirstTime)
    {
        var _loc4 = 55;
        var _loc5 = 100;
        if (nAngle == undefined)
        {
            nAngle = Math.atan2(this._ymouse - _loc5, this._xmouse - _loc4);
        } // end if
        this._sDir = "F";
        this._bFlip = false;
        var _loc6 = Math.PI / 8;
        if (nAngle < -9 * _loc6)
        {
            this._sDir = "S";
            this._bFlip = true;
        }
        else if (nAngle < -5 * _loc6)
        {
            this._sDir = "L";
        }
        else if (nAngle < -3 * _loc6)
        {
            this._sDir = "B";
        }
        else if (nAngle < -_loc6)
        {
            this._sDir = "L";
            this._bFlip = true;
        }
        else if (nAngle < _loc6)
        {
            this._sDir = "S";
        }
        else if (nAngle < 3 * _loc6)
        {
            this._sDir = "R";
        }
        else if (nAngle < 5 * _loc6)
        {
            this._sDir = "F";
        }
        else if (nAngle < 7 * _loc6)
        {
            this._sDir = "R";
            this._bFlip = true;
        }
        else
        {
            this._sDir = "S";
            this._bFlip = true;
        } // end else if
        var _loc7 = "static";
        if (Key.isDown(Key.SHIFT))
        {
            _loc7 = "walk";
        } // end if
        if (Key.isDown(Key.CONTROL))
        {
            _loc7 = "run";
        } // end if
        this.setAnim(_loc7);
    };
    _loc1.onKeyUp = function ()
    {
        if (this._bSelected)
        {
            var _loc2 = Number(String.fromCharCode(Key.getCode()));
            if (!_global.isNaN(_loc2))
            {
                if (Key.isDown(Key.SHIFT))
                {
                    _loc2 = _loc2 + 10;
                } // end if
                this.setAnim("emote" + _loc2);
            } // end if
        } // end if
    };
    _loc1.setAnim = function (sAnim, bResetDir)
    {
        if (bResetDir)
        {
            this._sDir = "R";
            this._bFlip = false;
        } // end if
        var _loc4 = sAnim + this._sDir;
        if (this._sOldAnim != _loc4 || (this._bFlip ? (-180) : (180)) != this._mcSprite._xscale)
        {
            this._mcSprite.attachMovie(_loc4, "anim", 10);
            this._mcSprite._xscale = this._bFlip ? (-180) : (180);
            this._sOldAnim = _loc4;
        } // end if
    };
    _loc1.initialization = function (oEvent)
    {
        this._mcSprite = oEvent.clip;
        this.gapi.api.colors.addSprite(this._mcSprite, this._oData);
        this._mcSprite._xscale = this._mcSprite._yscale = 180;
        this.addToQueue({object: this, method: this.changeSpriteOrientation, params: [this._mcSprite]});
    };
    _loc1.innerRelease = function ()
    {
        if (this.isDead)
        {
            return;
        } // end if
        this.selected = true;
        this.dispatchEvent({type: "select", serverID: this._nServerID});
    };
    _loc1.innerOver = function ()
    {
        if (this.isDead)
        {
            return;
        } // end if
        this._bOver = true;
        this.updateSelected(this._bSelected ? (this.getStyle().selectedcolor) : (this.getStyle().overcolor));
    };
    _loc1.innerOut = function ()
    {
        this._bOver = false;
        this.updateSelected(this.getStyle().selectedcolor);
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._btnDelete:
            {
                if (this._nDeathState == 2)
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("CAUTION_WRONG_DEAD_STATE"), "ERROR_BOX", {name: "noSelection", listener: this});
                    return;
                } // end if
                this.dispatchEvent({type: "remove"});
                break;
            } 
            case this._btnReset:
            {
                if (this._nDeathState == 2)
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("CAUTION_WRONG_DEAD_STATE"), "ERROR_BOX", {name: "noSelection", listener: this});
                    return;
                } // end if
                this.dispatchEvent({type: "reset"});
                break;
            } 
        } // End of switch
    };
    _loc1.over = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._btnDelete:
            {
                this.gapi.showTooltip(this.api.lang.getText("DELETE_CHARACTER"), _root._xmouse, _root._ymouse - 20);
                break;
            } 
            case this._btnReset:
            {
                this.gapi.showTooltip(this.api.lang.getText("RESET_CHARACTER"), _root._xmouse, _root._ymouse - 20);
                break;
            } 
            case this._ctrServerState:
            {
                this.gapi.showTooltip(this._oServer.stateStr, _root._xmouse, _root._ymouse - 20);
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
        var _loc3 = oEvent.target.selectedItem;
        this._nServerID = _loc3.id;
        this.updateServer();
        if (!this._bSelected && this._bEnabled)
        {
            this.innerRelease();
        }
        else if (!this._bEnabled)
        {
            this.dispatchEvent({type: "unselect"});
        } // end else if
    };
    _loc1.modelChanged = function (oEvent)
    {
        if (this._oData != undefined)
        {
            this.updateServer();
            this.dispatchEvent({type: "unselect"});
        } // end if
    };
    _loc1.addProperty("deathState", _loc1.__get__deathState, _loc1.__set__deathState);
    _loc1.addProperty("death", function ()
    {
    }, _loc1.__set__death);
    _loc1.addProperty("data", _loc1.__get__data, _loc1.__set__data);
    _loc1.addProperty("deleteButton", _loc1.__get__deleteButton, _loc1.__set__deleteButton);
    _loc1.addProperty("showComboBox", function ()
    {
    }, _loc1.__set__showComboBox);
    _loc1.addProperty("serverId", _loc1.__get__serverId, function ()
    {
    });
    _loc1.addProperty("selected", _loc1.__get__selected, _loc1.__set__selected);
    _loc1.addProperty("isDead", _loc1.__get__isDead, _loc1.__set__isDead);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.controls.ChooseCharacterSprite = function ()
    {
        super();
    }).CLASS_NAME = "ChooseCharacterSprite";
    (_global.dofus.graphics.gapi.controls.ChooseCharacterSprite = function ()
    {
        super();
    }).DEATH_ALPHA = 40;
    _loc1._bSelected = false;
    _loc1._bOver = false;
    _loc1._isDead = false;
    _loc1._nDeathState = 0;
    _loc1._nCurrAlpha = dofus.graphics.gapi.controls.ChooseCharacterSprite.DEATH_ALPHA;
    _loc1._nCurrAlphaStep = -1;
} // end if
#endinitclip

// Action script...

// [Initial MovieClip Action of sprite 20937]
#initclip 202
if (!dofus.graphics.gapi.ui.CreateGuild)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.CreateGuild = function ()
    {
        super();
    }).prototype;
    _loc1.__set__level = function (nLevel)
    {
        this._level = nLevel;
        //return (this.level());
    };
    _loc1.__set__name = function (sName)
    {
        this._sName = sName;
        //return (this.name());
    };
    _loc1.__set__edit = function (bEdit)
    {
        this._bEdit = bEdit;
        //return (this.edit());
    };
    _loc1.__set__backId = function (nBackID)
    {
        this._nBackID = nBackID;
        //return (this.backId());
    };
    _loc1.__set__backColor = function (nBackColor)
    {
        this._nBackColor = nBackColor;
        //return (this.backColor());
    };
    _loc1.__set__upId = function (nUpID)
    {
        this._nUpID = nUpID;
        //return (this.upId());
    };
    _loc1.__set__upColor = function (nUpColor)
    {
        this._nUpColor = nUpColor;
        //return (this.upColor());
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.CreateGuild.CLASS_NAME);
    };
    _loc1.callClose = function ()
    {
        if (this._bEnabled)
        {
            this.api.network.Guild.leave();
            return (true);
        }
        else
        {
            return (false);
        } // end else if
    };
    _loc1.createChildren = function ()
    {
        this._eaBacks = new ank.utils.ExtendedArray();
        var _loc2 = 3;
        var _loc3 = dofus.Constants.EMBLEM_BACKS_COUNT;
        var _loc4 = dofus.Constants.EMBLEM_UPS_COUNT;
        if (_loc2 >= 2)
        {
            _loc3 = _loc3 + dofus.Constants.EMBLEM_BACKS_COUNT_LEVEL_2;
            _loc4 = _loc4 + dofus.Constants.EMBLEM_UPS_COUNT_LEVEL_2;
        } // end if
        if (_loc2 >= 3)
        {
            _loc3 = _loc3 + dofus.Constants.EMBLEM_BACKS_COUNT_LEVEL_3;
            _loc4 = _loc4 + dofus.Constants.EMBLEM_UPS_COUNT_LEVEL_3;
        } // end if
        var _loc5 = 1;
        
        while (++_loc5, _loc5 <= _loc3)
        {
            this._eaBacks.push({iconFile: dofus.Constants.EMBLEMS_BACK_PATH + _loc5 + ".swf"});
        } // end while
        this._eaUps = new ank.utils.ExtendedArray();
        var _loc6 = 1;
        
        while (++_loc6, _loc6 <= _loc4)
        {
            this._eaUps.push({iconFile: dofus.Constants.EMBLEMS_UP_PATH + _loc6 + ".swf"});
        } // end while
        if (!this._bEdit)
        {
            this._nBackID = 1;
            this._nUpID = 1;
        } // end if
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.addListeners});
        if (!this._bEdit)
        {
            this.addToQueue({object: this, method: this.setTextFocus});
        } // end if
        this.addToQueue({object: this, method: this.updateCurrentTabInformations});
        this.addToQueue({object: this, method: this.updateBack});
        this.addToQueue({object: this, method: this.updateUp});
    };
    _loc1.initTexts = function ()
    {
        this._winBg.title = this.api.lang.getText("GUILD_CREATION");
        this._lblName.text = this.api.lang.getText("GUILD_NAME");
        this._lblEmblem.text = this.api.lang.getText("EMBLEM");
        this._lblColors.text = this.api.lang.getText("CREATE_COLOR");
        if (this._bEdit)
        {
            this._itName.text = this._sName;
            this._itName.enabled = false;
        } // end if
        this._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
        this._btnCreate.label = this.api.lang.getText("CREATE");
        this._btnTabBack.label = this.api.lang.getText("EMBLEM_BACK");
        this._btnTabUp.label = this.api.lang.getText("EMBLEM_UP");
    };
    _loc1.addListeners = function ()
    {
        this._btnClose.addEventListener("click", this);
        this._btnCancel.addEventListener("click", this);
        this._btnCreate.addEventListener("click", this);
        this._btnTabBack.addEventListener("click", this);
        this._btnTabUp.addEventListener("click", this);
        this._cpColors.addEventListener("change", this);
        this._cgGrid.addEventListener("selectItem", this);
    };
    _loc1.setTextFocus = function ()
    {
        this._itName.setFocus();
    };
    _loc1.updateCurrentTabInformations = function ()
    {
        switch (this._sCurrentTab)
        {
            case "Back":
            {
                this._cpColors.setColor(this._nBackColor);
                this._cgGrid.dataProvider = this._eaBacks;
                this._cgGrid.selectedIndex = this._nBackID - 1;
                break;
            } 
            case "Up":
            {
                this._cpColors.setColor(this._nUpColor);
                this._cgGrid.dataProvider = this._eaUps;
                this._cgGrid.selectedIndex = this._nUpID - 1;
                break;
            } 
        } // End of switch
    };
    _loc1.setCurrentTab = function (sNewTab)
    {
        var _loc3 = this["_btnTab" + this._sCurrentTab];
        var _loc4 = this["_btnTab" + sNewTab];
        _loc3.selected = true;
        _loc3.enabled = true;
        _loc4.selected = false;
        _loc4.enabled = false;
        this._sCurrentTab = sNewTab;
        this.updateCurrentTabInformations();
    };
    _loc1.updateBack = function ()
    {
        this._eEmblem.backID = this._nBackID;
        this._eEmblem.backColor = this._nBackColor;
    };
    _loc1.updateUp = function ()
    {
        this._eEmblem.upID = this._nUpID;
        this._eEmblem.upColor = this._nUpColor;
    };
    _loc1.setEnabled = function (bEnabled)
    {
        this._btnCancel.enabled = this._bEnabled;
        this._btnClose.enabled = this._bEnabled;
        this._btnCreate.enabled = this._bEnabled;
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnClose":
            case "_btnCancel":
            {
                this.api.network.Guild.leave();
                break;
            } 
            case "_btnCreate":
            {
                var _loc3 = this._itName.text;
                if (_loc3 == undefined || _loc3.length < 3)
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("BAD_GUILD_NAME"), "ERROR_BOX");
                    return;
                } // end if
                if (this._nBackID == undefined || this._nUpID == undefined)
                {
                    return;
                } // end if
                if (this.api.lang.getConfigText("GUILD_NAME_FILTER"))
                {
                    var _loc4 = new dofus.utils.nameChecker.NameChecker(_loc3);
                    var _loc5 = new dofus.utils.nameChecker.rules.NameCheckerGuildNameRules();
                    var _loc6 = _loc4.isValidAgainstWithDetails(_loc5);
                    if (!_loc6.IS_SUCCESS)
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("INVALID_GUILD_NAME") + "\r\n" + _loc6.toString("\r\n"), "ERROR_BOX");
                        return;
                    } // end if
                } // end if
                this.enabled = false;
                this.api.network.Guild.create(this._nBackID, this._nBackColor, this._nUpID, this._nUpColor, _loc3);
                break;
            } 
            case "_btnTabBack":
            {
                this.setCurrentTab("Back");
                break;
            } 
            case "_btnTabUp":
            {
                this.setCurrentTab("Up");
                break;
            } 
        } // End of switch
    };
    _loc1.change = function (oEvent)
    {
        switch (this._sCurrentTab)
        {
            case "Back":
            {
                this._nBackColor = oEvent.value;
                this.updateBack();
                break;
            } 
            case "Up":
            {
                this._nUpColor = oEvent.value;
                this.updateUp();
                break;
            } 
        } // End of switch
    };
    _loc1.selectItem = function (oEvent)
    {
        switch (this._sCurrentTab)
        {
            case "Back":
            {
                this._nBackID = oEvent.owner.selectedIndex + 1;
                this.updateBack();
                break;
            } 
            case "Up":
            {
                this._nUpID = oEvent.owner.selectedIndex + 1;
                this.updateUp();
                break;
            } 
        } // End of switch
    };
    _loc1.addProperty("backColor", function ()
    {
    }, _loc1.__set__backColor);
    _loc1.addProperty("upId", function ()
    {
    }, _loc1.__set__upId);
    _loc1.addProperty("level", function ()
    {
    }, _loc1.__set__level);
    _loc1.addProperty("backId", function ()
    {
    }, _loc1.__set__backId);
    _loc1.addProperty("name", function ()
    {
    }, _loc1.__set__name);
    _loc1.addProperty("upColor", function ()
    {
    }, _loc1.__set__upColor);
    _loc1.addProperty("edit", function ()
    {
    }, _loc1.__set__edit);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.CreateGuild = function ()
    {
        super();
    }).CLASS_NAME = "CreateGuild";
    _loc1._nBackColor = 14933949;
    _loc1._nUpColor = 0;
    _loc1._sCurrentTab = "Back";
} // end if
#endinitclip

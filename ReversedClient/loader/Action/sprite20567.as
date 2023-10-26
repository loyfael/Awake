// Action script...

// [Initial MovieClip Action of sprite 20567]
#initclip 88
if (!dofus.graphics.gapi.ui.Achievements)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.Achievements = function ()
    {
        super();
    }).prototype;
    _loc1.setPendingCount = function (nCount)
    {
        this._lblAchievementCount.text = this.api.lang.getText("SUCCESS_TOTAL_POINT", [nCount]);
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.Achievements.CLASS_NAME);
    };
    _loc1.destroy = function ()
    {
        this.gapi.hideTooltip();
        delete this.api.datacenter.Temporary.AchievementBook;
    };
    _loc1.callClose = function ()
    {
        this.unloadThis();
        return (true);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.initData});
        this.addToQueue({object: this, method: this.addListeners});
    };
    _loc1.initTexts = function ()
    {
        this._winBg.title = this.api.lang.getText("SUCCESS_LIST");
        this._winBgViewer.title = this.api.lang.getText("STEPS");
        this._btnTabCurrent.label = this.api.lang.getText("QUESTS_CURRENT_STEP");
        this._btnTabAll.label = this.api.lang.getText("QUESTS_STEPS_LIST");
        this._dgAchievements.columnsNames = [this.api.lang.getText("STATE"), this.api.lang.getText("NAME_BIG"), this.api.lang.getText("ACHIEVEMENT_POINTS")];
        this._btnFinished._visible = false;
        this._lblFinished._visible = false;
    };
    _loc1.addListeners = function ()
    {
        this._btnClose.addEventListener("click", this);
        this._btnCloseStep.addEventListener("click", this);
        this._btnTabCurrent.addEventListener("click", this);
        this._btnTabAll.addEventListener("click", this);
        this._btnFinished.addEventListener("click", this);
        this._dgAchievements.addEventListener("itemSelected", this);
        this.api.datacenter.Temporary.AchievementBook.achievements.addEventListener("modelChanged", this);
    };
    _loc1.initData = function ()
    {
        if (this.api.datacenter.Temporary.AchievementBook == undefined)
        {
            this.api.datacenter.Temporary.AchievementBook = new dofus.datacenter.AchievementBook();
        } // end if
        com.ankamagames.tools.Logger.out("WG UI_Achievement : initData", "dofus.graphics.gapi.ui.Achievements::initData", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Achievements.as", 169);
        this.api.network.Achievements.getList();
    };
    _loc1.showStepViewer = function (bShow)
    {
        bShow = false;
        if (bShow)
        {
            this.api.kernel.TipsManager.showNewTip(dofus.managers.TipsManager.TIP_QUEST_WALKTHOUGH);
        } // end if
        this._btnCloseStep._visible = bShow;
        this._winBgViewer._visible = bShow;
        this._mcTab._visible = bShow;
        this._btnTabCurrent._visible = bShow;
        this._btnTabAll._visible = bShow;
        this._mcBackButtons._visible = bShow;
    };
    _loc1.updateCurrentTabInformations = function ()
    {
    };
    _loc1.setCurrentTab = function (sNewTab)
    {
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
            case "_btnTabCurrent":
            {
                this.setCurrentTab("Current");
                break;
            } 
            case "_btnTabAll":
            {
                this.setCurrentTab("All");
                break;
            } 
            case "_btnFinished":
            {
                this.modelChanged();
                break;
            } 
            case "_btnCloseStep":
            {
                this._dgAchievements.selectedIndex = -1;
                this.showStepViewer(false);
                break;
            } 
        } // End of switch
    };
    _loc1.itemSelected = function (oEvent)
    {
        var _loc3 = oEvent.row.item;
        if (_loc3.isFinished)
        {
            this.showStepViewer(false);
        }
        else
        {
            this._winBgViewer.title = _loc3.name;
        } // end else if
    };
    _loc1.modelChanged = function (oEvent)
    {
        var _loc3 = this.api.datacenter.Temporary.AchievementBook.achievements;
        var _loc4 = new ank.utils.ExtendedArray();
        _loc4 = _loc3;
        this._dgAchievements.dataProvider = _loc4;
    };
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.Achievements = function ()
    {
        super();
    }).CLASS_NAME = "Achievements";
} // end if
#endinitclip

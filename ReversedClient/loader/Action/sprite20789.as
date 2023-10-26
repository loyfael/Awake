// Action script...

// [Initial MovieClip Action of sprite 20789]
#initclip 54
if (!dofus.graphics.gapi.ui.QuestsBook)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.QuestsBook = function ()
    {
        super();
    }).prototype;
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.QuestsBook.CLASS_NAME);
    };
    _loc1.destroy = function ()
    {
        this.gapi.hideTooltip();
        this.gapi.unloadUIComponent(this._sCurrentTab);
    };
    _loc1.unloadThis = function ()
    {
        this.gapi.unloadUIComponent(this._sInstanceName);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.addListeners});
        this.setCurrentTab(this.TAB_QUESTS);
    };
    _loc1.addListeners = function ()
    {
        this._btnClose.addEventListener("click", this);
        this._btnTabQuests.addEventListener("click", this);
        this._btnTabAdventure.addEventListener("click", this);
        this._btnTabWorld.addEventListener("click", this);
        this._btnTabAchievements.addEventListener("click", this);
        this._btnTabInfo.addEventListener("click", this);
    };
    _loc1.initTexts = function ()
    {
        this._btnTabQuests.label = ank.utils.PatternDecoder.combine(this.api.lang.getText("QUESTS", [2]), "m", 2 < 2);
        this._btnTabAdventure.label = this.api.lang.getText("ADVENTURE");
        this._btnTabWorld.label = this.api.lang.getText("WORLD");
        this._btnTabAchievements.label = this.api.lang.getText("SUCCESS");
        this._btnTabInfo.label = this.api.lang.getText("QUESTSBOOK_INFO");
    };
    _loc1.setCurrentTab = function (tabName, arg)
    {
        com.ankamagames.tools.Logger.out("WG QuestBook : tabName : " + tabName + " " + arg, "dofus.graphics.gapi.ui.QuestsBook::setCurrentTab", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/QuestsBook.as", 106);
        if (this._sCurrentTab == tabName)
        {
            return;
        } // end if
        com.ankamagames.tools.Logger.out(this._sCurrentTab + " " + tabName, "dofus.graphics.gapi.ui.QuestsBook::setCurrentTab", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/QuestsBook.as", 110);
        var _loc4 = this["_btnTab" + this._sCurrentTab];
        var _loc5 = this["_btnTab" + tabName];
        this.gapi.unloadUIComponent(this._sCurrentTab);
        this._sCurrentTab = tabName;
        _loc4.selected = true;
        _loc4.enabled = true;
        if (_loc5.selected)
        {
            _loc5.selected = false;
        } // end if
        _loc5.enabled = false;
        var _loc6 = this.gapi.loadUIComponent(this._sCurrentTab, this._sCurrentTab);
        _loc6._y = 25;
        if (arg != null)
        {
            switch (this._sCurrentTab)
            {
                case this.TAB_QUESTS:
                {
                    _loc6.itemSelected(arg);
                    break;
                } 
                case this.TAB_SUCCESS:
                {
                    break;
                } 
                case this.TAB_WORLD:
                {
                    break;
                } 
                default:
                {
                    break;
                } 
            } // End of switch
        } // end if
    };
    _loc1.callClose = function ()
    {
        com.ankamagames.tools.Logger.out("WG QuestsBook : callClose", "dofus.graphics.gapi.ui.QuestsBook::callClose", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/QuestsBook.as", 146);
        this.unloadThis();
        return (true);
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
            case "_btnTabQuests":
            {
                this.setCurrentTab(this.TAB_QUESTS);
                break;
            } 
            case "_btnTabAdventure":
            {
                this.setCurrentTab(this.TAB_ADVENTURE);
                break;
            } 
            case "_btnTabWorld":
            {
                this.setCurrentTab(this.TAB_WORLD);
                break;
            } 
            case "_btnTabAchievements":
            {
                this.setCurrentTab(this.TAB_SUCCESS);
                break;
            } 
            case "_btnTabInfo":
            {
                this.setCurrentTab(this.TAB_INFO);
                break;
            } 
            default:
            {
                break;
            } 
        } // End of switch
    };
    _loc1.over = function (oEvent)
    {
        
        
        oEvent.target._name;
    };
    _loc1.out = function (oEvent)
    {
        this.gapi.hideTooltip();
    };
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.QuestsBook = function ()
    {
        super();
    }).CLASS_NAME = "QuestsBook";
    _loc1.TAB_QUESTS = "Quests";
    _loc1.TAB_ADVENTURE = "Adventures";
    _loc1.TAB_WORLD = "World";
    _loc1.TAB_SUCCESS = "Achievements";
    _loc1.TAB_INFO = "Info";
    _loc1._sCurrentTab = "";
} // end if
#endinitclip

// Action script...

// [Initial MovieClip Action of sprite 21009]
#initclip 18
if (!dofus.graphics.gapi.ui.PopupInfoMenu)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.PopupInfoMenu = function ()
    {
        super();
    }).prototype;
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.PopupInfoMenu.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initData});
    };
    _loc1.addListeners = function ()
    {
    };
    _loc1.initData = function ()
    {
        this._timerID = _global.setInterval(this, "onTimer", 1000);
    };
    _loc1.addPopup = function (oQuest)
    {
        return;
        var _loc3 = this.gapi.loadUIComponent("PopupInfoInfo", "PopupInfoInfo" + this._uniqueKey, {manager: this});
        _loc3._content._text.text = oQuest.name;
        com.ankamagames.tools.Logger.out("WG PopupInfoMenu : oQuest.currentStep.objectives.length : " + oQuest.currentStep.objectives.length, "dofus.graphics.gapi.ui.PopupInfoMenu::addPopup", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/PopupInfoMenu.as", 83);
        var _loc4 = 0;
        
        while (++_loc4, _loc4 < oQuest.currentStep.objectives.length)
        {
            com.ankamagames.tools.Logger.out("WG PopupInfoMenu : " + oQuest.currentStep.objectives[_loc4].name, "dofus.graphics.gapi.ui.PopupInfoMenu::addPopup", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/PopupInfoMenu.as", 85);
        } // end while
        _loc3._lstObjectives.dataProvider = oQuest.currentStep.objectives;
        var _loc5 = new Array();
        _loc5[0] = _loc3;
        var _loc6 = 1;
        var _loc7 = 0;
        
        while (++_loc7, _loc7 < 5)
        {
            if (this.infos[_loc7] != undefined && this.infos[_loc7] != null)
            {
                _loc5[_loc6] = this.infos[_loc7];
                ++_loc6;
            } // end if
        } // end while
        this.infos = _loc5;
        this.reredraw();
        ++this._uniqueKey;
    };
    _loc1.reredraw = function ()
    {
        var _loc2 = new Array();
        var _loc3 = 0;
        var _loc4 = 0;
        
        while (++_loc4, _loc4 < 5)
        {
            if (this.infos[_loc4] != undefined && this.infos[_loc4] != null)
            {
                _loc2[_loc3] = this.infos[_loc4];
                this.infos[_loc4]._y = 330 - _loc3 * 70;
                if (this.infos[_loc4].hidden)
                {
                    this.infos[_loc4]._x = 730;
                }
                else
                {
                    this.infos[_loc4]._x = 565;
                } // end else if
                ++_loc3;
            } // end if
        } // end while
        this.infos = _loc2;
    };
    _loc1.hide = function (info)
    {
        if (info.hidden)
        {
            info._x = 565;
            info.hidden = false;
        }
        else
        {
            info._x = 730;
            info.hidden = true;
            info.tick = 0;
        } // end else if
    };
    _loc1.close = function (info)
    {
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < 5)
        {
            if (this.infos[_loc3] != undefined && (this.infos[_loc3] != null && this.infos[_loc3] == info))
            {
                this.infos[_loc3] = null;
                this.gapi.unloadUIComponent(info.instanceName);
            } // end if
        } // end while
        this.reredraw();
    };
    _loc1.onTimer = function ()
    {
        var _loc2 = 0;
        
        while (++_loc2, _loc2 < 5)
        {
            if (this.infos[_loc2] != undefined && this.infos[_loc2] != null)
            {
                if (!this.infos[_loc2].mouseOver && !this.infos[_loc2].hidden)
                {
                    if (this.infos[_loc2].tick > 3)
                    {
                        this.hide(this.infos[_loc2]);
                        continue;
                    } // end if
                    ++this.infos[_loc2].tick;
                } // end if
            } // end if
        } // end while
    };
    _loc1.over = function (oEvent)
    {
        oEvent.target.mouseOver = true;
    };
    _loc1.out = function (oEvent)
    {
        oEvent.target.mouseOver = false;
    };
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.PopupInfoMenu = function ()
    {
        super();
    }).CLASS_NAME = "PopupInfoMenu";
    _loc1.infos = new Array();
    _loc1._timerID = 0;
    _loc1._uniqueKey = 0;
} // end if
#endinitclip

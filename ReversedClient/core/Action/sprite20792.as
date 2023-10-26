// Action script...

// [Initial MovieClip Action of sprite 20792]
#initclip 57
if (!dofus.graphics.gapi.ui.World)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.World = function ()
    {
        super();
    }).prototype;
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.World.CLASS_NAME);
    };
    _loc1.destroy = function ()
    {
        this.gapi.hideTooltip();
        delete this.api.datacenter.Temporary.QuestBook;
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
        this._winBg.title = this.api.lang.getText("WORLDS_LIST");
        this._winBgViewer.title = this.api.lang.getText("QUESTS_LIST");
        this._dgWorld.columnsNames = [this.api.lang.getText("NAME_BIG"), this.api.lang.getText("ORBES")];
        this._dgQuests.columnsNames = [this.api.lang.getText("NAME_BIG"), this.api.lang.getText("ORBES")];
    };
    _loc1.addListeners = function ()
    {
        this._btnClose.addEventListener("click", this);
        this._btnCloseStep.addEventListener("click", this);
        this._btnTabCurrent.addEventListener("click", this);
        this._btnTabAll.addEventListener("click", this);
        this._btnFinished.addEventListener("click", this);
        this._dgWorld.addEventListener("itemSelected", this);
        this._dgWorld.addEventListener("itemRollOver", this);
        this._dgWorld.addEventListener("itemRollOut", this);
        this._dgQuests.addEventListener("itemSelected", this);
        this._dgQuests.addEventListener("itemRollOver", this);
        this._dgQuests.addEventListener("itemRollOut", this);
        this.api.datacenter.Temporary.QuestBook.quests.addEventListener("modelChanged", this);
    };
    _loc1.initData = function ()
    {
        if (this.api.datacenter.Temporary.QuestBook == undefined)
        {
            this.api.datacenter.Temporary.QuestBook = new dofus.datacenter.QuestBook();
        } // end if
        this.api.network.Quests.getList();
    };
    _loc1.showQuestsViewer = function (oWorld)
    {
        var _loc3 = this._questsByWorld[oWorld.worldId];
        var _loc4 = new ank.utils.ExtendedArray();
        for (var i in _loc3)
        {
            if (this._playerQuest[i] != null)
            {
                _loc4.push({id: i, name: _loc3[i].n, finished: this._playerQuest[i].isFinished, took: true, orbe: _loc3[i].o});
                continue;
            } // end if
            _loc4.push({id: i, name: _loc3[i].n, finished: false, took: false, orbe: _loc3[i].o});
        } // end of for...in
        this._dgQuests.dataProvider = _loc4;
        this._dgQuests.sortOn("id", Array.NUMERIC);
    };
    _loc1.click = function (oEvent)
    {
        
        oEvent.target._name;
    };
    _loc1.itemSelected = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_dgQuests":
            {
                var _loc3 = oEvent.row.item;
                if (_loc3.took)
                {
                    var _loc4 = this.api.ui.getUIComponent("QuestsBook");
                    if (_loc4 != undefined)
                    {
                        _loc4.setCurrentTab(_loc4.TAB_QUESTS, {row: {item: _loc3}});
                    } // end if
                } // end if
                break;
            } 
            case "_dgWorld":
            {
                var _loc5 = oEvent.row.item;
                this.showQuestsViewer(_loc5);
                break;
            } 
        } // End of switch
    };
    _loc1.itemRollOver = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_dgQuests":
            {
                var _loc3 = oEvent.row.item;
                if (_loc3.finished)
                {
                    this.gapi.showTooltip(this.api.lang.getText("WORLD_QUEST_LIST_TOOLTIP_FINISHED"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                }
                else if (_loc3.took)
                {
                    this.gapi.showTooltip(this.api.lang.getText("WORLD_QUEST_LIST_TOOLTIP_NOT_FINISHED"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                }
                else
                {
                    this.gapi.showTooltip(this.api.lang.getText("WORLD_QUEST_LIST_TOOLTIP_NOT_TAKEN"), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                } // end else if
                break;
            } 
            case "_dgWorld":
            {
                var _loc4 = oEvent.row.item;
                this.gapi.showTooltip(this.api.lang.getText("WORLD_LIST_TOOLTIP", [_loc4.currentOrbe, _loc4.totalOrbe, _loc4.name]), oEvent.target, -20, {bXLimit: true, bYLimit: false});
                break;
            } 
        } // End of switch
    };
    _loc1.itemRollOut = function (oEvent)
    {
        this.gapi.hideTooltip();
    };
    _loc1.modelChanged = function (oEvent)
    {
        var _loc3 = new ank.utils.ExtendedArray();
        this._playerQuest = new Array();
        var _loc4 = this.api.datacenter.Temporary.QuestBook.quests;
        for (var q in _loc4)
        {
            this._playerQuest[_loc4[q].id] = _loc4[q];
        } // end of for...in
        var _loc5 = this.api.lang.getQuests();
        for (var index in _loc5)
        {
            var _loc6 = this._questsByWorld[_loc5[index].w];
            if (_loc6 == null)
            {
                _loc6 = new Array();
                this._questsByWorld[_loc5[index].w] = _loc6;
            } // end if
            if (_loc5[index].o > 0)
            {
                _loc5[index].id = index;
                _loc6[index] = _loc5[index];
            } // end if
        } // end of for...in
        var _loc7 = this.api.lang.getMapSuperAreaInfos();
        for (var o in _loc7)
        {
            var _loc8 = 0;
            var _loc9 = 0;
            var _loc10 = this._questsByWorld[o];
            for (var i in _loc10)
            {
                _loc9 = _loc9 + _loc10[i].o;
                if (this._playerQuest[i] != null && this._playerQuest[i].isFinished)
                {
                    _loc8 = _loc8 + _loc10[i].o;
                } // end if
            } // end of for...in
            if (_loc9 > 0)
            {
                _loc3.push({name: _loc7[o], worldId: o, currentOrbe: _loc8, totalOrbe: _loc9});
            } // end if
        } // end of for...in
        this._dgWorld.dataProvider = _loc3;
        this.showQuestsViewer({worldId: this.api.datacenter.Map.superarea});
    };
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.World = function ()
    {
        super();
    }).CLASS_NAME = "World";
    _loc1._questsByWorld = new Array();
    _loc1._playerQuest = new Array();
} // end if
#endinitclip

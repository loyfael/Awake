// Action script...

// [Initial MovieClip Action of sprite 20502]
#initclip 23
if (!dofus.graphics.gapi.ui.quests.QuestsQuestItem)
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
    if (!dofus.graphics.gapi.ui.quests)
    {
        _global.dofus.graphics.gapi.ui.quests = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.gapi.ui.quests.QuestsQuestItem = function ()
    {
        super();
    }).prototype;
    _loc1.__set__list = function (mcList)
    {
        this._mcList = mcList;
        //return (this.list());
    };
    _loc1.setValue = function (bUsed, sSuggested, oItem)
    {
        if (bUsed)
        {
            this._oItem = oItem;
            this._lblName.text = oItem.name;
            this._mcCheckFinished._visible = oItem.isFinished;
            this._mcCurrent._visible = !oItem.isFinished;
        }
        else if (this._lblName.text != undefined)
        {
            this._lblName.text = "";
            this._mcCheckFinished._visible = false;
            this._mcCurrent._visible = false;
        } // end else if
    };
    _loc1.init = function ()
    {
        super.init(false);
        this._mcCurrent._visible = false;
        this._mcCheckFinished._visible = false;
        this._followButton._visible = false;
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
    };
    _loc1.addListeners = function ()
    {
        this._followButton.addEventListener("click", this);
        this._followButton.addEventListener("over", this);
        this._followButton.addEventListener("out", this);
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._followButton:
            {
                this._mcList._parent._parent.followQuest(this._oItem);
                break;
            } 
        } // End of switch
    };
    _loc1.over = function (oEvent)
    {
        var _loc3 = this._mcList._parent._parent.api;
        switch (oEvent.target)
        {
            case this._followButton:
            {
                _loc3.ui.showTooltip(_loc3.lang.getText("CLICK_HERE_FOR_SPELL_BOOST"), oEvent.target, -30, {bXLimit: true, bYLimit: false});
                break;
            } 
        } // End of switch
    };
    _loc1.out = function (oEvent)
    {
        var _loc3 = this._mcList._parent._parent.api;
        switch (oEvent.target)
        {
            case this._followButton:
            {
                _loc3.ui.hideTooltip();
                break;
            } 
        } // End of switch
    };
    _loc1.addProperty("list", function ()
    {
    }, _loc1.__set__list);
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

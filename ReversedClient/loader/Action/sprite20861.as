// Action script...

// [Initial MovieClip Action of sprite 20861]
#initclip 126
if (!dofus.graphics.gapi.ui.FightOptionButtons)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.FightOptionButtons = function ()
    {
        super();
    }).prototype;
    _loc1.disableHelp = function ()
    {
        this._btnWinHelp.enabled = false;
    };
    _loc1.enableHelp = function ()
    {
        this._btnWinHelp.enabled = true;
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.FightOptionButtons.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initData});
    };
    _loc1.addListeners = function ()
    {
        this._btnFlag.addEventListener("click", this);
        this._btnFlag.addEventListener("over", this);
        this._btnFlag.addEventListener("out", this);
        this._btnToggleSprites.addEventListener("click", this);
        this._btnToggleSprites.addEventListener("over", this);
        this._btnToggleSprites.addEventListener("out", this);
        this._btnGrid.addEventListener("click", this);
        this._btnGrid.addEventListener("over", this);
        this._btnGrid.addEventListener("out", this);
        this._btnZone.addEventListener("click", this);
        this._btnZone.addEventListener("over", this);
        this._btnZone.addEventListener("out", this);
        this._btnWinHelp.addEventListener("click", this);
        this._btnWinHelp.addEventListener("over", this);
        this._btnWinHelp.addEventListener("out", this);
        this._btnBlockJoinerExceptParty.addEventListener("click", this);
        this._btnBlockJoinerExceptParty.addEventListener("over", this);
        this._btnBlockJoinerExceptParty.addEventListener("out", this);
        this._btnBlockJoiner.addEventListener("click", this);
        this._btnBlockJoiner.addEventListener("over", this);
        this._btnBlockJoiner.addEventListener("out", this);
    };
    _loc1.initData = function ()
    {
        if (!this.api.datacenter.Player.inParty)
        {
            this._btnBlockJoinerExceptParty._visible = false;
        }
        else
        {
            this._btnBlockJoinerExceptParty.selected = this.api.kernel.OptionsManager.getOption("FightGroupAutoLock");
            if (this._btnBlockJoinerExceptParty.selected)
            {
                this.api.network.Fights.blockJoinerExceptParty();
            } // end if
        } // end else if
        this._btnGrid.selected = this.api.kernel.OptionsManager.getOption("Grid");
        this._btnZone.selected = this.api.kernel.OptionsManager.getOption("SpriteMove");
        this._btnZone._visible = false;
        this._btnToggleSprites._visible = false;
        this._lastDungeonFight = this._lastDungeonFight + 1;
    };
    _loc1.onGameRunning = function ()
    {
        this.api.ui.unloadUIComponent("Spells");
        this._btnBlockJoinerExceptParty._visible = false;
        this._btnBlockJoiner._visible = false;
        this._btnZone._visible = true;
        this._btnToggleSprites._visible = true;
        this._mcBackground._x = this._btnZone._x + (this._mcBackground._x - this._btnGrid._x);
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._btnFlag:
            {
                this.api.kernel.GameManager.switchToFlagSet();
                break;
            } 
            case this._btnToggleSprites:
            {
                this.api.datacenter.Basics.gfx_isSpritesHidden = !this.api.datacenter.Basics.gfx_isSpritesHidden;
                if (this.api.datacenter.Basics.gfx_isSpritesHidden)
                {
                    this.api.gfx.spriteHandler.maskAllSprites();
                }
                else
                {
                    this.api.gfx.spriteHandler.unmaskAllSprites();
                } // end else if
                break;
            } 
            case this._btnGrid:
            {
                this.api.kernel.OptionsManager.setOption("Grid", this._btnGrid.selected);
                break;
            } 
            case this._btnZone:
            {
                this.api.kernel.OptionsManager.setOption("SpriteMove", this._btnZone.selected);
                break;
            } 
            case this._btnWinHelp:
            {
                this.api.network.Dungeon.onFightStart();
                break;
            } 
            case this._btnBlockJoinerExceptParty:
            {
                this.api.network.Fights.blockJoinerExceptParty();
                break;
            } 
            case this._btnBlockJoiner:
            {
                this.api.network.Fights.blockJoiner();
                break;
            } 
        } // End of switch
    };
    _loc1.over = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._btnFlag:
            {
                this.gapi.showTooltip(this.api.lang.getText("FLAG_INDICATOR_HELP"), this._btnFlag, -30);
                break;
            } 
            case this._btnToggleSprites:
            {
                this.gapi.showTooltip(this.api.lang.getText("FIGHT_OPTION_SPRITES"), this._btnFlag, -30);
                break;
            } 
            case this._btnGrid:
            {
                this.gapi.showTooltip(this.api.lang.getText("OPTION_GRID"), this._btnFlag, -30);
                break;
            } 
            case this._btnZone:
            {
                this.gapi.showTooltip(this.api.lang.getText("OPTION_SPRITEMOVE"), this._btnFlag, -30);
                break;
            } 
            case this._btnWinHelp:
            {
                this.gapi.showTooltip(this.api.lang.getText("FIGHT_OPTION_HELP"), this._btnFlag, -30);
                break;
            } 
            case this._btnBlockJoinerExceptParty:
            {
                this.gapi.showTooltip(this.api.lang.getText("FIGHT_OPTION_BLOCKJOINEREXCEPTPARTY"), this._btnFlag, -30);
                break;
            } 
            case this._btnBlockJoiner:
            {
                this.gapi.showTooltip(this.api.lang.getText("FIGHT_OPTION_BLOCKJOINER"), this._btnFlag, -30);
                break;
            } 
        } // End of switch
    };
    _loc1.out = function (oEvent)
    {
        this.gapi.hideTooltip();
    };
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.FightOptionButtons = function ()
    {
        super();
    }).CLASS_NAME = "FightOptionButtons";
    _loc1._lastDungeonFight = 0;
} // end if
#endinitclip

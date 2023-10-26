// Action script...

// [Initial MovieClip Action of sprite 20748]
#initclip 13
if (!dofus.graphics.gapi.ui.FightStartAnimation)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.FightStartAnimation = function ()
    {
        super();
    }).prototype;
    _loc1.__set__dungeon = function (dungeonId)
    {
        this._dungeonId = dungeonId;
        //return (this.dungeon());
    };
    _loc1.__set__fight = function (fightId)
    {
        this._fightId = fightId;
        //return (this.fight());
    };
    _loc1.__set__object = function (value)
    {
        this._oObject = value;
        //return (this.object());
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.FightStartAnimation.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.initData});
    };
    _loc1.setCharAnim = function (anim)
    {
        this.anim = anim;
        this.addToQueue({object: this, method: this.changeSpriteOrientation, params: [this._mcChar]});
    };
    _loc1.initCharSprite = function (loader, anim)
    {
        this.anim = anim;
        loader.addEventListener("initialization", this);
        loader.forceReload = true;
        loader.contentPath = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID).gfxFile;
    };
    _loc1.addListeners = function ()
    {
        this._ldrAnimation.addEventListener("complete", this);
        this._ldrAnimation.addEventListener("error", this);
        this._ldrAnimation.addEventListener("click", this);
        var ref = this;
        this._btnClose.onPress = function ()
        {
            ref.click({target: this});
        };
    };
    _loc1.initTexts = function ()
    {
        this._btnClose.label = this.api.lang.getText("PASS_VIDEO");
    };
    _loc1.initData = function ()
    {
        this._ldrAnimation.contentPath = dofus.Constants.ARTWORKS_CUSTOM_PATH + this._dungeonId + "_" + this._fightId + ".swf";
    };
    _loc1.onFinish = function ()
    {
        if (this._ldrAnimation.content._isInteractive)
        {
            com.ankamagames.tools.Logger.out("FightStartAnimation : onFinish : " + this._ldrAnimation.content._choiceId, "dofus.graphics.gapi.ui.FightStartAnimation::onFinish", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/FightStartAnimation.as", 115);
            this.api.network.Game.sendChoice(this._ldrAnimation.content._choiceId);
        } // end if
        this._quality = this._qualite;
        Mouse.show();
        this._visible = false;
        this.api.network.Game.videoComplete();
        this.api.network.Game.onFightStart(this._oObject);
    };
    _loc1.complete = function (oEvent)
    {
        this._qualite = this._quality;
        this._ldrAnimation.content.cacheAsBitmap = true;
        this._ldrAnimation.content.gotoAndPlay(1);
    };
    _loc1.error = function (oEvent)
    {
        this.onFinish();
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnClose":
            {
                this.onFinish();
                break;
            } 
        } // End of switch
    };
    _loc1.changeSpriteOrientation = function (mcSprite)
    {
        this._mcChar.getInstanceAtDepth(10).removeMovieClip();
        var _loc3 = mcSprite.attachMovie(this.anim, "mcAnim", 10);
    };
    _loc1.initialization = function (oEvent)
    {
        this._mcChar = oEvent.clip;
        this.gapi.api.colors.addSprite(this._mcChar, this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID));
        this.addToQueue({object: this, method: this.changeSpriteOrientation, params: [this._mcChar]});
    };
    _loc1.addProperty("object", function ()
    {
    }, _loc1.__set__object);
    _loc1.addProperty("fight", function ()
    {
    }, _loc1.__set__fight);
    _loc1.addProperty("dungeon", function ()
    {
    }, _loc1.__set__dungeon);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.FightStartAnimation = function ()
    {
        super();
    }).CLASS_NAME = "FightStartAnimation";
} // end if
#endinitclip

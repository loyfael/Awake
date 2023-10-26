// Action script...

// [Initial MovieClip Action of sprite 20532]
#initclip 53
if (!dofus.graphics.gapi.ui.MapCinematics)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.MapCinematics = function ()
    {
        super();
    }).prototype;
    _loc1.__set__artworkId = function (nArtworkId)
    {
        this._nArtworkId = nArtworkId;
        //return (this.artworkId());
    };
    _loc1.__get__artworkId = function ()
    {
        return (this._nArtworkId);
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.MapCinematics.CLASS_NAME);
        this.stop();
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
        this._btnClose.label = this.api.lang.getText("PASS_VIDEO");
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
        this._btnClose.addEventListener("click", this);
        this._mcGfxWrap._lGfx.addEventListener("complete", this);
        this._mcGfxWrap._lGfx.addEventListener("error", this);
        this._mcGfxWrap._lGfx.contentPath = dofus.Constants.ARTWORKS_SPEAKING_SIGN_PATH + this._nArtworkId + ".swf";
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
    _loc1.complete = function (oEvent)
    {
        if (oEvent.target._name == "_lGfx")
        {
            this._mcGfxWrap.cacheAsBitmap = true;
            this.gotoAndPlay(1);
        } // end if
    };
    _loc1.error = function (oEvent)
    {
        if (oEvent.target._name == "_lGfx")
        {
            this.gotoAndPlay(1);
        } // end if
    };
    _loc1.onFinish = function ()
    {
        if (this._mcGfxWrap._lGfx.holder_mc.content_mc._isInteractive)
        {
            this.api.network.Game.sendChoice(this._mcGfxWrap._lGfx.holder_mc.content_mc._choiceId);
        } // end if
        this.callClose();
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
    _loc1.addProperty("artworkId", _loc1.__get__artworkId, _loc1.__set__artworkId);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.MapCinematics = function ()
    {
        super();
    }).CLASS_NAME = "MapCinematics";
} // end if
#endinitclip

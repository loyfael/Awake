// Action script...

// [Initial MovieClip Action of sprite 20718]
#initclip 239
if (!dofus.graphics.gapi.ui.Versus)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.Versus = function ()
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
    _loc1.__set__object = function (oObject)
    {
        this._oObject = oObject;
        //return (this.object());
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.Versus.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.initData});
    };
    _loc1.addListeners = function ()
    {
        this._ldrBoss.Loader.addEventListener("complete", this);
        this._ldrBoss.Loader.addEventListener("error", this);
        this._ldrPlayer.Loader.addEventListener("complete", this);
        this._ldrPlayer.Loader.addEventListener("error", this);
    };
    _loc1.initTexts = function ()
    {
        this._mcBoss._lblLabel._lblLabel.text = this.api.lang.getText("DUNGEON_BOSS_" + this._dungeonId + "_" + this._fightId);
        this._mcPlayer._lblLabel._lblLabel.text = this.api.datacenter.Player.Name;
    };
    _loc1.initData = function ()
    {
        com.ankamagames.tools.Logger.out("[WG] Versus.initData - dungeon ID = " + this._dungeonId + ", fight ID = " + this._fightId, "dofus.graphics.gapi.ui.Versus::initData", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Versus.as", 86);
        this._ldrPlayer.Loader.contentPath = dofus.Constants.ARTWORKS_VERSUS_PATH + "perso" + this.api.datacenter.Player.Sex + ".swf";
        this._ldrBoss.Loader.contentPath = dofus.Constants.ARTWORKS_VERSUS_PATH + this._dungeonId + "_" + this._fightId + ".swf";
    };
    _loc1.onFinish = function ()
    {
        this._visible = false;
        this.api.network.Game.onFightStart(this._oObject);
    };
    _loc1.complete = function (oEvent)
    {
        var ref = this;
        if (oEvent.target.contentPath == dofus.Constants.ARTWORKS_VERSUS_PATH + "perso" + this.api.datacenter.Player.Sex + ".swf")
        {
            oEvent.target.content.stringCourseColor = function (mc, z)
            {
                ref.applyColor(mc, z);
            };
        } // end if
        if (this._isComplete)
        {
            this._ldrPlayer.content.cacheAsBitmap = true;
            this._ldrBoss.content.cacheAsBitmap = true;
            this.gotoAndPlay(1);
        }
        else
        {
            this._isComplete = true;
        } // end else if
    };
    _loc1.error = function (oEvent)
    {
        this.onFinish();
    };
    _loc1.applyColor = function (mc, zone)
    {
        var _loc4 = 0;
        switch (zone)
        {
            case 1:
            {
                _loc4 = this.api.datacenter.Player.color1;
                break;
            } 
            case 2:
            {
                _loc4 = this.api.datacenter.Player.color2;
                break;
            } 
            case 3:
            {
                _loc4 = this.api.datacenter.Player.color3;
                break;
            } 
            case 4:
            {
                _loc4 = this.api.datacenter.Player.color4;
                break;
            } 
        } // End of switch
        var _loc5 = new Color(mc);
        _loc5.setRGB(_loc4);
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
    (_global.dofus.graphics.gapi.ui.Versus = function ()
    {
        super();
    }).CLASS_NAME = "Versus";
    _loc1._isComplete = false;
} // end if
#endinitclip

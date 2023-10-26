// Action script...

// [Initial MovieClip Action of sprite 20746]
#initclip 11
if (!dofus.graphics.gapi.ui.NpcDialog)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.NpcDialog = function ()
    {
        super();
    }).prototype;
    _loc1.__set__id = function (nNpcID)
    {
        this._nNpcID = nNpcID;
        //return (this.id());
    };
    _loc1.__set__name = function (sName)
    {
        this._sName = sName;
        //return (this.name());
    };
    _loc1.__set__gfx = function (sGfx)
    {
        this._sGfx = sGfx;
        //return (this.gfx());
    };
    _loc1.__set__customArtwork = function (nGfx)
    {
        this._nCustomArtwork = nGfx;
        //return (this.customArtwork());
    };
    _loc1.__set__colors = function (aColors)
    {
        this._aColors = aColors;
        //return (this.colors());
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.NpcDialog.CLASS_NAME);
    };
    _loc1.callClose = function ()
    {
        this.api.network.Dialog.leave();
        return (true);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.setNpcCharacteristics});
        this.gapi.unloadLastUIAutoHideComponent();
    };
    _loc1.draw = function ()
    {
        var _loc2 = this.getStyle();
    };
    _loc1.setNpcCharacteristics = function ()
    {
        this._ldrChar.addEventListener("initialization", this);
        this._ldrArtwork.addEventListener("complete", this);
        this._ldrChar.forceReload = true;
        this._ldrChar.contentPath = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID).gfxFile;
        if (this._nCustomArtwork != undefined && (!_global.isNaN(this._nCustomArtwork) && this._nCustomArtwork > 0))
        {
            this._ldrArtwork.contentPath = dofus.Constants.ARTWORKS_BIG_PATH + this._nCustomArtwork + ".swf";
        }
        else
        {
            this._ldrArtwork.contentPath = dofus.Constants.ARTWORKS_BIG_PATH + this._sGfx + ".swf";
        } // end else if
        this._winBackgroundUp.title = this._sName;
        this._winResponseBackgroundUp.title = this.api.datacenter.Player.Name;
    };
    _loc1.changeSpriteOrientation = function (mcSprite)
    {
        var _loc3 = mcSprite.attachMovie("staticR", "mcAnim", 10);
        if (!_loc3)
        {
            _loc3 = mcSprite.attachMovie("staticR", "mcAnim", 10);
        } // end if
        if (!_loc3)
        {
            this.addToQueue({object: this, method: this.changeSpriteOrientation, params: [mcSprite]});
        } // end if
    };
    _loc1.setPause = function ()
    {
        this.showElements(false);
    };
    _loc1.showElements = function (bShow)
    {
        this._ldrArtwork._visible = bShow;
        this._winBackground._visible = bShow;
        this._winBackgroundUp._visible = bShow;
        this._qvQuestionViewer._visible = bShow;
        this._winResponseBackground._visible = bShow && this.reponse;
        this._winResponseBackgroundUp._visible = bShow && this.reponse;
        this._qvResponseViewer._visible = bShow && this.reponse;
        if (this._mcSprite != undefined)
        {
            this._mcSprite._visible = bShow && this.reponse;
        } // end if
        if (!this.reponse)
        {
            this._winBackground._x = this._winBackground._x + (371 - this._winBackground._x);
            this._winBackgroundUp._x = this._winBackgroundUp._x + (372 - this._winBackgroundUp._x);
            this._qvQuestionViewer._x = this._qvQuestionViewer._x + (381.000000 - this._qvQuestionViewer._x);
            this._btnClose._x = this._btnClose._x + (698 - this._btnClose._x);
            this._winBackground._y = this._winBackground._y + (145 - this._winBackground._y);
            this._winBackgroundUp._y = this._winBackgroundUp._y + (146 - this._winBackgroundUp._y);
            this._qvQuestionViewer._y = this._qvQuestionViewer._y + (174 - this._qvQuestionViewer._y);
            this._btnClose._y = this._btnClose._y + (157.900000 - this._btnClose._y);
        } // end if
    };
    _loc1.setQuestion = function (oQuestion)
    {
        this._oQuestion = oQuestion;
        this.reponse = this._oQuestion.responses.length > 0 || !this._bFirstQuestion;
        if (this._qvQuestionViewer == undefined)
        {
            this.attachMovie("QuestionViewer", "_qvQuestionViewer", 10, {_x: this._mcQuestionViewer._x, _y: this._mcQuestionViewer._y, question: this.reponse ? (new dofus.datacenter.Question(oQuestion.id, null, oQuestion.questionParams)) : (oQuestion), isFirstQuestion: true});
            this._qvQuestionViewer.addEventListener("resize", this);
        }
        else
        {
            this._qvQuestionViewer.question = this.reponse ? (new dofus.datacenter.Question(oQuestion.id, null, oQuestion.questionParams)) : (oQuestion);
        } // end else if
        if (this.reponse)
        {
            if (this._qvResponseViewer == undefined)
            {
                this.attachMovie("QuestionViewer", "_qvResponseViewer", 11, {_x: this._mcResponseViewer._x, _y: this._mcResponseViewer._y, question: new dofus.datacenter.Question(null, oQuestion.responsesID, null), isFirstQuestion: this._bFirstQuestion});
                this._qvResponseViewer.addEventListener("response", this);
                this._qvResponseViewer.addEventListener("resize", this);
            }
            else
            {
                this._qvResponseViewer.isFirstQuestion = this._bFirstQuestion;
                this._qvResponseViewer.question = new dofus.datacenter.Question(null, oQuestion.responsesID, null);
            } // end if
        } // end else if
        this.showElements(true);
    };
    _loc1.applyColor = function (mc, zone)
    {
        var _loc4 = this._aColors[zone];
        if (_loc4 == -1 || _loc4 == undefined)
        {
            return;
        } // end if
        var _loc5 = (_loc4 & 16711680) >> 16;
        var _loc6 = (_loc4 & 65280) >> 8;
        var _loc7 = _loc4 & 255;
        var _loc8 = new Color(mc);
        var _loc9 = new Object();
        _loc9 = {ra: 0, ga: 0, ba: 0, rb: _loc5, gb: _loc6, bb: _loc7};
        _loc8.setTransform(_loc9);
    };
    _loc1.closeDialog = function ()
    {
        this.callClose();
    };
    _loc1.response = function (oEvent)
    {
        if (oEvent.response.id == -1)
        {
            this.api.network.Dialog.leave();
        }
        else
        {
            this.api.network.Dialog.response(this._oQuestion.id, oEvent.response.id);
            this._bFirstQuestion = false;
        } // end else if
    };
    _loc1.complete = function (oEvent)
    {
        var ref = this;
        this._ldrArtwork.content.stringCourseColor = function (mc, z)
        {
            ref.applyColor(mc, z);
        };
    };
    _loc1.resize = function (oEvent)
    {
        this._winBackground.setSize(undefined, this._qvQuestionViewer.height + (this._qvQuestionViewer._y - this._winBackground._y) + 12);
        this._winBackgroundUp.setSize(undefined, this._qvQuestionViewer.height + (this._qvQuestionViewer._y - this._winBackground._y) + 10);
        this._winResponseBackground.setSize(undefined, this._qvResponseViewer.height + (this._qvResponseViewer._y - this._winResponseBackground._y) + 12);
        this._winResponseBackgroundUp.setSize(undefined, this._qvResponseViewer.height + (this._qvResponseViewer._y - this._winResponseBackground._y) + 10);
    };
    _loc1.initialization = function (oEvent)
    {
        this._mcSprite = oEvent.clip;
        this.gapi.api.colors.addSprite(this._mcSprite, this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID));
        this._mcSprite._xscale = this._mcSprite._yscale = 250;
        this._mcSprite._xscale = -this._mcSprite._xscale;
        this.addToQueue({object: this, method: this.changeSpriteOrientation, params: [this._mcSprite]});
        this._mcSprite._visible = this.reponse;
    };
    _loc1.addProperty("colors", function ()
    {
    }, _loc1.__set__colors);
    _loc1.addProperty("customArtwork", function ()
    {
    }, _loc1.__set__customArtwork);
    _loc1.addProperty("gfx", function ()
    {
    }, _loc1.__set__gfx);
    _loc1.addProperty("id", function ()
    {
    }, _loc1.__set__id);
    _loc1.addProperty("name", function ()
    {
    }, _loc1.__set__name);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.NpcDialog = function ()
    {
        super();
    }).CLASS_NAME = "NpcDialog";
    _loc1._bFirstQuestion = true;
} // end if
#endinitclip

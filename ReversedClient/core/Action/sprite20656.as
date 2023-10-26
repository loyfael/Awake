// Action script...

// [Initial MovieClip Action of sprite 20656]
#initclip 177
if (!dofus.graphics.gapi.ui.FightIntro)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.FightIntro = function ()
    {
        super();
    }).prototype;
    _loc1.__set__title = function (sTitle)
    {
        this.addToQueue({object: this, method: function ()
        {
            this._winBackground.title = sTitle;
        }});
        //return (this.title());
    };
    _loc1.__get__title = function ()
    {
        return (this._winBackground.title);
    };
    _loc1.__set__episode = function (sEpisode)
    {
        this.addToQueue({object: this, method: function ()
        {
            this._lblEpisode.text = sEpisode;
        }});
        //return (this.episode());
    };
    _loc1.__get__episode = function ()
    {
        return (this._lblEpisode.text);
    };
    _loc1.__set__zone = function (sZone)
    {
        this.addToQueue({object: this, method: function ()
        {
            this._lblZone.text = sZone;
        }});
        //return (this.zone());
    };
    _loc1.__get__zone = function ()
    {
        return (this._lblZone.text);
    };
    _loc1.__set__mission = function (sMission)
    {
        this.addToQueue({object: this, method: function ()
        {
            this._txtMission.text = "\n" + sMission;
        }});
        //return (this.mission());
    };
    _loc1.__get__mission = function ()
    {
        return (this._txtMission.text);
    };
    _loc1.__set__tips = function (sTips)
    {
        this.addToQueue({object: this, method: function ()
        {
            this._txtTips.text = sTips;
        }});
        //return (this.tips());
    };
    _loc1.__get__tips = function ()
    {
        return (this._txtTips.text);
    };
    _loc1.init = function ()
    {
        super.init(false);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initTexts});
    };
    _loc1.addListeners = function ()
    {
        var ref = this;
        this._btnClose.onPress = function ()
        {
            ref.click({target: this});
        };
    };
    _loc1.initTexts = function ()
    {
        this._lblTips.text = this.api.lang.getText("TIPS_WORD");
        this._lblMission.text = this.api.lang.getText("MISSION");
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnClose":
            {
                this.unloadThis();
                break;
            } 
        } // End of switch
    };
    _loc1.addProperty("mission", _loc1.__get__mission, _loc1.__set__mission);
    _loc1.addProperty("tips", _loc1.__get__tips, _loc1.__set__tips);
    _loc1.addProperty("zone", _loc1.__get__zone, _loc1.__set__zone);
    _loc1.addProperty("episode", _loc1.__get__episode, _loc1.__set__episode);
    _loc1.addProperty("title", _loc1.__get__title, _loc1.__set__title);
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

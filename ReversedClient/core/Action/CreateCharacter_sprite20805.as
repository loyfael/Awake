// Action script...

// [Initial MovieClip Action of sprite 20805]
#initclip 70
if (!dofus.graphics.gapi.ui.CreateCharacter)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.CreateCharacter = function ()
    {
        super();
    }).prototype;
    _loc1.__set__remainingTime = function (nRemainingTime)
    {
        this._nRemainingTime = nRemainingTime;
        //return (this.remainingTime());
    };
    _loc1.__set__characterName = function (sNewName)
    {
        if (this._itCharacterName.text != undefined)
        {
            this._itCharacterName.text = sNewName;
        } // end if
        //return (this.characterName());
    };
    _loc1.__set__characterCount = function (nCharacterCount)
    {
        this._nCharacterCount = nCharacterCount;
        //return (this.characterCount());
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.CreateCharacter.CLASS_NAME);
        this._mcMaleButton.enabled = false;
        this._mcFemaleAnim._visible = false;
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.setupRestriction});
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.initComponent});
        this.addToQueue({object: this, method: this.useDefaultBreed});
        this.api.kernel.StreamingDisplayManager.onCharacterCreation();
        if (dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
        {
            this.getURL("JavaScript:WriteLog(\'CreateCharacter\')");
        } // end if
    };
    _loc1.addListeners = function ()
    {
        var ref = this;
        this._mcMaleButton.onPress = function ()
        {
            ref.click({target: this});
        };
        this._mcMaleButton.onRollOver = function ()
        {
            ref.over({target: this});
        };
        this._mcMaleButton.onRollOut = function ()
        {
            ref.out({target: this});
        };
        this._mcFemaleButton.onPress = function ()
        {
            ref.click({target: this});
        };
        this._mcFemaleButton.onRollOver = function ()
        {
            ref.over({target: this});
        };
        this._mcFemaleButton.onRollOut = function ()
        {
            ref.out({target: this});
        };
        this._mcSpellButton.onPress = function ()
        {
            ref.click({target: this});
        };
        this._mcSpellButton.onRollOver = function ()
        {
            ref.over({target: this});
        };
        this._mcSpellButton.onRollOut = function ()
        {
            ref.out({target: this});
        };
        this._mcSpellButton2.onPress = function ()
        {
            ref.click({target: this});
        };
        this._mcSpellButton2.onRollOver = function ()
        {
            ref.over({target: this});
        };
        this._mcSpellButton2.onRollOut = function ()
        {
            ref.out({target: this});
        };
        this._mcHistoryButton.onPress = function ()
        {
            ref.click({target: this});
        };
        this._mcHistoryButton.onRollOver = function ()
        {
            ref.over({target: this});
        };
        this._mcHistoryButton.onRollOut = function ()
        {
            ref.out({target: this});
        };
        this._mcRandomName.onPress = function ()
        {
            ref.click({target: this});
        };
        this._mcRandomName.onRollOver = function ()
        {
            ref.over({target: this});
        };
        this._mcRandomName.onRollOut = function ()
        {
            ref.out({target: this});
        };
        this._mcRight.onPress = function ()
        {
            ref.click({target: this});
        };
        this._mcRight.onRollOver = function ()
        {
            ref.over({target: this});
        };
        this._mcRight.onRollOut = function ()
        {
            ref.out({target: this});
        };
        this._mcLeft.onPress = function ()
        {
            ref.click({target: this});
        };
        this._mcLeft.onRollOver = function ()
        {
            ref.over({target: this});
        };
        this._mcLeft.onRollOut = function ()
        {
            ref.out({target: this});
        };
        this._btnBack.onPress = function ()
        {
            ref.click({target: this});
        };
        this._btnBack.onRollOver = function ()
        {
            ref.over({target: this});
        };
        this._btnBack.onRollOut = function ()
        {
            ref.out({target: this});
        };
        this._btnValidate.onPress = function ()
        {
            ref.click({target: this});
        };
        this._btnValidate.onRollOver = function ()
        {
            ref.over({target: this});
        };
        this._btnValidate.onRollOut = function ()
        {
            ref.out({target: this});
        };
        this._btnServer.onPress = function ()
        {
            ref.click({target: this});
        };
        this._btnServer.onRollOver = function ()
        {
            ref.over({target: this});
        };
        this._btnServer.onRollOut = function ()
        {
            ref.out({target: this});
        };
        this._itCharacterName.addEventListener("change", this);
        this._csColors.addEventListener("change", this);
        this._csColors.addEventListener("over", this);
        this._csColors.addEventListener("out", this);
        this._mcHatColor1.onPress = function ()
        {
            ref.setHatColor(this);
        };
        this._mcHatColor2.onPress = function ()
        {
            ref.setHatColor(this);
        };
        this._mcHatColor3.onPress = function ()
        {
            ref.setHatColor(this);
        };
        this._mcHatColor4.onPress = function ()
        {
            ref.setHatColor(this);
        };
        this._mcHatColor5.onPress = function ()
        {
            ref.setHatColor(this);
        };
        this._mcHatColor6.onPress = function ()
        {
            ref.setHatColor(this);
        };
        this._mcHairColor1.onPress = function ()
        {
            ref.setHairColor(this);
        };
        this._mcHairColor2.onPress = function ()
        {
            ref.setHairColor(this);
        };
        this._mcHairColor3.onPress = function ()
        {
            ref.setHairColor(this);
        };
        this._mcHairColor4.onPress = function ()
        {
            ref.setHairColor(this);
        };
        this._mcHairColor5.onPress = function ()
        {
            ref.setHairColor(this);
        };
        this._mcHairColor6.onPress = function ()
        {
            ref.setHairColor(this);
        };
        this._mcSkinColor1.onPress = function ()
        {
            ref.setSkinColor(this);
        };
        this._mcSkinColor2.onPress = function ()
        {
            ref.setSkinColor(this);
        };
        this._mcSkinColor3.onPress = function ()
        {
            ref.setSkinColor(this);
        };
        this._mcSkinColor4.onPress = function ()
        {
            ref.setSkinColor(this);
        };
        this._mcSkinColor5.onPress = function ()
        {
            ref.setSkinColor(this);
        };
        this._mcSkinColor6.onPress = function ()
        {
            ref.setSkinColor(this);
        };
        this._mcTunicColor1.onPress = function ()
        {
            ref.setTunicColor(this);
        };
        this._mcTunicColor2.onPress = function ()
        {
            ref.setTunicColor(this);
        };
        this._mcTunicColor3.onPress = function ()
        {
            ref.setTunicColor(this);
        };
        this._mcTunicColor4.onPress = function ()
        {
            ref.setTunicColor(this);
        };
        this._mcTunicColor5.onPress = function ()
        {
            ref.setTunicColor(this);
        };
        this._mcTunicColor6.onPress = function ()
        {
            ref.setTunicColor(this);
        };
        this._mcTunic2Color1.onPress = function ()
        {
            ref.setTunic2Color(this);
        };
        this._mcTunic2Color2.onPress = function ()
        {
            ref.setTunic2Color(this);
        };
        this._mcTunic2Color3.onPress = function ()
        {
            ref.setTunic2Color(this);
        };
        this._mcTunic2Color4.onPress = function ()
        {
            ref.setTunic2Color(this);
        };
        this._mcTunic2Color5.onPress = function ()
        {
            ref.setTunic2Color(this);
        };
        this._mcTunic2Color6.onPress = function ()
        {
            ref.setTunic2Color(this);
        };
        this._mcHairCut1.onPress = function ()
        {
            ref.setHairCut(this);
        };
        this._mcHairCut2.onPress = function ()
        {
            ref.setHairCut(this);
        };
        this._csBreedSelection.addEventListener("change", this);
    };
    _loc1.setupRestriction = function ()
    {
        var _loc2 = "";
        if (this.api.datacenter.Player.isAuthorized)
        {
            _loc2 = "a-zA-Z\\-\\[\\]";
        }
        else
        {
            _loc2 = "a-zA-Z\\-";
        } // end else if
        if (this.api.config.isStreaming)
        {
            _loc2 = _loc2 + "0-9";
        } // end if
        this._itCharacterName.restrict = _loc2;
    };
    _loc1.initTexts = function ()
    {
        this._lblTitle.text = this.api.lang.getText("CREATE_TITLE");
        this._lblCharacterColors.text = this.api.lang.getText("SPRITE_COLORS");
        this._lblCharacterName.text = this.api.lang.getText("CREATE_CHARACTER_NAME");
        this._btnServer._lblLabel.text = this.api.lang.getText("BACK_TO_SERVER");
        this._btnValidate._lblLabel.text = this.api.lang.getText("VALIDATE");
        this._btnBack._lblLabel.text = this.api.lang.getText("BACK");
        this._lblHistoryButton.text = this.api.lang.getText("HISTORY_CLASS_WORD");
        this._lblSpellButton.text = this.api.lang.getText("SPELLS_SHORTCUT");
        this._lblHat.text = this.api.lang.getText("CREATE_CHARACTER_HAT_COLOR");
        this._lblHair.text = this.api.lang.getText("CREATE_CHARACTER_HAIR_COLOR");
        this._lblSkin.text = this.api.lang.getText("CREATE_CHARACTER_SKIN_COLOR");
        this._lblTunic.text = this.api.lang.getText("CREATE_CHARACTER_TUNIC_COLOR");
        this._lblTunic2.text = this.api.lang.getText("CREATE_CHARACTER_TUNIC2_COLOR");
        this._lblHairCut.text = this.api.lang.getText("CREATE_CHARACTER_HAIR_CUT");
        this._txtPortal.text = this.api.lang.getText("CREATE_CHARACTER_PORTAL");
        this._txtDescWakfu.text = this.api.lang.getText("WAKFU_GARDIENS_DESC");
        this._lblServerName.text = this.api.lang.getText("CHOOSEN_SERVER") + ": ";
        var _loc2 = this.api.datacenter.Basics.aks_servers.findFirstItem("id", this.api.datacenter.Basics.aks_incoming_server_id).item.label;
        this._lblServerName.text = this._lblServerName.text + _loc2;
    };
    _loc1.initComponent = function ()
    {
        this._oColors = [{color1: -1, color2: -1, color3: -1, color4: -1, color5: -1}, {color1: -1, color2: -1, color3: -1, color4: -1, color5: -1}];
        this._nSex = 1;
        this._nHairCut = 8;
        var _loc2 = new Array();
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < dofus.Constants.GUILD_ORDER.length)
        {
            if (this.api.config.isStreaming && dofus.Constants.GUILD_ORDER[_loc3] == 12)
            {
                continue;
            } // end if
            _loc2[_loc3] = dofus.Constants.BREEDS_SLIDER_PATH + dofus.Constants.GUILD_ORDER[_loc3] + this._nSex + ".swf";
        } // end while
        this._csBreedSelection.initialize(_loc2);
        this._csBreedSelection.animation = true;
        this._csBreedSelection.animationSpeed = 3;
        this._svCharacter.zoom = 200;
        this._svCharacter.spriteAnims = ["StaticR", "StaticL", "emote2R"];
        this._svCharacter.refreshDelay = 50;
        this._svCharacter.useSingleLoader = true;
        this._svCharacter.allowAnimations = true;
        this._ldrArtworks = [this._mcMaleAnim._mcMaleAnim.Loader, this._mcFemaleAnim._mcFemaleAnim.Loader];
        this._ldrArtworks[0].contentPath = dofus.Constants.ARTWORKS_ULTRA_PATH + "10.swf";
        this._ldrArtworks[1].contentPath = dofus.Constants.ARTWORKS_ULTRA_PATH + "11.swf";
        this._ldrBlurredArtworks = [this._mcMaleAnim._mcMaleAnim.Loader, this._mcFemaleAnim._mcFemaleAnim.Loader];
        this._ldrBlurredArtworks[0].contentPath = dofus.Constants.ARTWORKS_ULTRA_PATH + "10.swf";
        this._ldrBlurredArtworks[1].contentPath = dofus.Constants.ARTWORKS_ULTRA_PATH + "11.swf";
        this._mcMaleAnim._xscale = 80;
        this._mcMaleAnim._yscale = 80;
        this._mcFemaleAnim._xscale = 80;
        this._mcFemaleAnim._yscale = 80;
        var _loc4 = 0;
        
        while (++_loc4, _loc4 < 2)
        {
            var _loc5 = 0;
            
            while (++_loc5, _loc5 < dofus.Constants.CREATE_CHARACTER_COLOR[_loc4][_loc5].length)
            {
                this._oColors[_loc4]["color" + (_loc5 + 1)] = dofus.Constants.CREATE_CHARACTER_COLOR[_loc4][_loc5][0];
            } // end while
        } // end while
        this._ldrArtworks[0].addEventListener("complete", this);
        this._ldrBlurredArtworks[0].addEventListener("complete", this);
        this._ldrArtworks[1].addEventListener("complete", this);
        this._ldrBlurredArtworks[1].addEventListener("complete", this);
        this._mcColorable = [[new Array(), new Array(), new Array(), new Array(), new Array()], [new Array(), new Array(), new Array(), new Array(), new Array()]];
    };
    _loc1.complete = function (oEvent)
    {
        var ref = this;
        if (oEvent.target.contentPath == dofus.Constants.ARTWORKS_ULTRA_PATH + "10.swf")
        {
            oEvent.target.content.stringCourseColor = function (mc, z)
            {
                ref.addMovieClip(mc, z, 0);
            };
        }
        else
        {
            oEvent.target.content.stringCourseColor = function (mc, z)
            {
                ref.addMovieClip(mc, z, 1);
            };
        } // end else if
    };
    _loc1.addMovieClip = function (mc, zone, sex)
    {
        var _loc5 = new Color(mc);
        _loc5.setRGB(dofus.Constants.CREATE_CHARACTER_COLOR[sex][zone - 1][0]);
        this._mcColorable[sex][zone - 1].push(mc);
    };
    _loc1.useDefaultBreed = function ()
    {
        this.setClass(1, 0);
        this._bLoaded = true;
    };
    _loc1.setClass = function (nClassID, nSex)
    {
        this._csColors.breed = nClassID;
        this._csColors.sex = nSex;
        if (this._nBreed == nClassID && this._nSex == nSex)
        {
            return;
        } // end if
        this._svCharacter.spriteData = new ank.battlefield.datacenter.Sprite("1", undefined, dofus.Constants.CLIPS_PERSOS_PATH + nClassID + nSex + ".swf", undefined, 5);
        dofus.managers.CharactersManager.getInstance().setSpriteAccessories((ank.battlefield.datacenter.Sprite)(this._svCharacter.spriteData), "8,4,,A,C");
        this._ldrClassIcon.contentPath = dofus.Constants.BREEDS_SYMBOL_PATH + nClassID + ".swf";
        var _loc4 = 0;
        
        while (++_loc4, _loc4 < dofus.Constants.GUILD_ORDER.length)
        {
            if (this.api.config.isStreaming && dofus.Constants.GUILD_ORDER[_loc4] == 12)
            {
                continue;
            } // end if
            if (dofus.Constants.GUILD_ORDER[_loc4] == nClassID)
            {
                this._csBreedSelection.currentIndex = _loc4;
            } // end if
        } // end while
        if (this._nSex != nSex)
        {
            var _loc5 = ["_mcHatColor", "_mcSkinColor", "_mcTunicColor", "_mcHairColor", "_mcTunic2Color"];
            var _loc6 = 0;
            
            while (++_loc6, _loc6 < dofus.Constants.CREATE_CHARACTER_COLOR[nSex].length)
            {
                var _loc7 = 0;
                
                while (++_loc7, _loc7 < dofus.Constants.CREATE_CHARACTER_COLOR[nSex][_loc6].length)
                {
                    var _loc8 = new Color(this[_loc5[_loc6] + (_loc7 + 1)]);
                    _loc8.setRGB(dofus.Constants.CREATE_CHARACTER_COLOR[nSex][_loc6][_loc7]);
                } // end while
            } // end while
            var _loc9 = new Array();
            var _loc10 = 0;
            
            while (++_loc10, _loc10 < dofus.Constants.GUILD_ORDER.length)
            {
                if (this.api.config.isStreaming && dofus.Constants.GUILD_ORDER[_loc10] == 12)
                {
                    continue;
                } // end if
                _loc9[_loc10] = dofus.Constants.BREEDS_SLIDER_PATH + dofus.Constants.GUILD_ORDER[_loc10] + nSex + ".swf";
            } // end while
            this._csBreedSelection.clipsList = _loc9;
            this._csBreedSelection.updateColor(1, this._oColors[nSex].color1);
            this._csBreedSelection.updateColor(2, this._oColors[nSex].color2);
            this._csBreedSelection.updateColor(3, this._oColors[nSex].color3);
            this._csBreedSelection.updateColor(4, this._oColors[nSex].color4);
            this._csBreedSelection.updateColor(5, this._oColors[nSex].color5);
        } // end if
        var _loc11 = this.api.lang.getClassText(nClassID);
        this._lblClassName.text = _loc11.ln;
        this._txtClassDescription.text = "<font color=\'#514A3C\'>" + _loc11.d + "</font>";
        this._txtShortClassDescription.text = "<font color=\'#514A3C\' size=\'14\'><b>" + _loc11.sd + "</b></font>";
        this._svCharacter.setColors({color1: this._oColors[nSex].color1, color2: this._oColors[nSex].color2, color3: this._oColors[nSex].color3, color4: this._oColors[nSex].color4, color5: this._oColors[nSex].color5});
        this._nBreed = nClassID;
        this._nSex = nSex;
    };
    _loc1.showColorPosition = function (nIndex)
    {
        var bWhite = true;
        this._nSavedColor = this._svCharacter.getColor(nIndex);
        this.onEnterFrame = function ()
        {
            this._svCharacter.setColor(nIndex, bWhite = !bWhite ? (16733525) : (16746632));
        };
    };
    _loc1.hideColorPosition = function (nIndex)
    {
        delete this.onEnterFrame;
        this._svCharacter.setColor(nIndex, this._nSavedColor);
    };
    _loc1.validateCreation = function ()
    {
        var _loc2 = this._itCharacterName.text;
        if (_loc2.length == 0 || _loc2 == undefined)
        {
            this.api.kernel.showMessage(undefined, this.api.lang.getText("NEED_CHARACTER_NAME"), "ERROR_BOX", {name: "CREATENONAME"});
            return;
        } // end if
        if (_loc2.length > 20)
        {
            this.api.kernel.showMessage(undefined, this.api.lang.getText("LONG_CHARACTER_NAME", [_loc2, 20]), "ERROR_BOX");
            return;
        } // end if
        if (this.api.lang.getConfigText("CHAR_NAME_FILTER") && !this.api.datacenter.Player.isAuthorized)
        {
            var _loc3 = new dofus.utils.nameChecker.NameChecker(_loc2);
            var _loc4 = new dofus.utils.nameChecker.rules.NameCheckerCharacterNameRules();
            var _loc5 = _loc3.isValidAgainstWithDetails(_loc4);
            if (!_loc5.IS_SUCCESS)
            {
                this.api.kernel.showMessage(undefined, this.api.lang.getText("INVALID_CHARACTER_NAME") + "\r\n" + _loc5.toString("\r\n"), "ERROR_BOX");
                return;
            } // end if
        } // end if
        if (dofus.Constants.EPISODIC_GUILD[this._nBreed - 1] > this.api.datacenter.Basics.aks_current_regional_version)
        {
            var _loc6 = this.api.lang.getClassText(this._nBreed).sn;
            this.api.kernel.showMessage(undefined, this.api.lang.getText("COMING_SOON_GUILD", [_loc6]), "ERROR_BOX");
            return;
        } // end if
        if (dofus.Constants.PAYING_GUILD[this._nBreed - 1] && this._nRemainingTime <= 0)
        {
            var _loc7 = this.api.lang.getClassText(this._nBreed).sn;
            this.api.kernel.showMessage(undefined, this.api.lang.getText("PAYING_GUILD", [_loc7]), "ERROR_BOX");
            return;
        } // end if
        this.api.datacenter.Basics.hasCreatedCharacter = true;
        if (dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
        {
            this.getURL("JavaScript:WriteLog(\'addCharacter;" + _loc2 + "\')");
        } // end if
        this.api.network.Account.addCharacter(_loc2, this._nBreed, this._oColors[this._nSex].color1, this._oColors[this._nSex].color2, this._oColors[this._nSex].color3, this._oColors[this._nSex].color4, this._oColors[this._nSex].color5, this._nSex, this._nHairCut);
    };
    _loc1.applyColor = function (zone)
    {
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < this._mcColorable[this._nSex][zone - 1].length)
        {
            var _loc4 = this._oColors[this._nSex]["color" + zone];
            if (_loc4 == -1 || _loc4 == undefined)
            {
                return;
            } // end if
            var _loc5 = (_loc4 & 16711680) >> 16;
            var _loc6 = (_loc4 & 65280) >> 8;
            var _loc7 = _loc4 & 255;
            var _loc8 = new Color(this._mcColorable[this._nSex][zone - 1][_loc3]);
            var _loc9 = new Object();
            _loc9 = {ra: 0, ga: 0, ba: 0, rb: _loc5, gb: _loc6, bb: _loc7};
            _loc8.setTransform(_loc9);
        } // end while
    };
    _loc1.setHatColor = function (mc)
    {
        var _loc3 = new Color(mc);
        this._oColors[this._nSex].color1 = _loc3.getRGB();
        com.ankamagames.tools.Logger.out("WG CreateCharacter : setTunic2Color : color :" + this._oColors[this._nSex].color1, "dofus.graphics.gapi.ui.CreateCharacter::setHatColor", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/CreateCharacter.as", 676);
        this._svCharacter.setColors({color1: this._oColors[this._nSex].color1, color2: this._oColors[this._nSex].color2, color3: this._oColors[this._nSex].color3, color4: this._oColors[this._nSex].color4, color5: this._oColors[this._nSex].color5});
        this.applyColor(1);
    };
    _loc1.setHairColor = function (mc)
    {
        var _loc3 = new Color(mc);
        this._oColors[this._nSex].color4 = _loc3.getRGB();
        com.ankamagames.tools.Logger.out("WG CreateCharacter : setTunic2Color : color :" + this._oColors[this._nSex].color4, "dofus.graphics.gapi.ui.CreateCharacter::setHairColor", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/CreateCharacter.as", 693);
        this._svCharacter.setColors({color1: this._oColors[this._nSex].color1, color2: this._oColors[this._nSex].color2, color3: this._oColors[this._nSex].color3, color4: this._oColors[this._nSex].color4, color5: this._oColors[this._nSex].color5});
        this.applyColor(4);
    };
    _loc1.setSkinColor = function (mc)
    {
        var _loc3 = new Color(mc);
        this._oColors[this._nSex].color2 = _loc3.getRGB();
        com.ankamagames.tools.Logger.out("WG CreateCharacter : setTunic2Color : color :" + this._oColors[this._nSex].color2, "dofus.graphics.gapi.ui.CreateCharacter::setSkinColor", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/CreateCharacter.as", 709);
        this._svCharacter.setColors({color1: this._oColors[this._nSex].color1, color2: this._oColors[this._nSex].color2, color3: this._oColors[this._nSex].color3, color4: this._oColors[this._nSex].color4, color5: this._oColors[this._nSex].color5});
        this.applyColor(2);
    };
    _loc1.setTunicColor = function (mc)
    {
        var _loc3 = new Color(mc);
        this._oColors[this._nSex].color3 = _loc3.getRGB();
        com.ankamagames.tools.Logger.out("WG CreateCharacter : setTunic2Color : color :" + this._oColors[this._nSex].color3, "dofus.graphics.gapi.ui.CreateCharacter::setTunicColor", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/CreateCharacter.as", 725);
        this._svCharacter.setColors({color1: this._oColors[this._nSex].color1, color2: this._oColors[this._nSex].color2, color3: this._oColors[this._nSex].color3, color4: this._oColors[this._nSex].color4, color5: this._oColors[this._nSex].color5});
        this.applyColor(3);
    };
    _loc1.setTunic2Color = function (mc)
    {
        var _loc3 = new Color(mc);
        this._oColors[this._nSex].color5 = _loc3.getRGB();
        com.ankamagames.tools.Logger.out("WG CreateCharacter : setTunic2Color : color :" + this._oColors[this._nSex].color5, "dofus.graphics.gapi.ui.CreateCharacter::setTunic2Color", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/CreateCharacter.as", 741);
        this._svCharacter.setColors({color1: this._oColors[this._nSex].color1, color2: this._oColors[this._nSex].color2, color3: this._oColors[this._nSex].color3, color4: this._oColors[this._nSex].color4, color5: this._oColors[this._nSex].color5});
        this.applyColor(5);
    };
    _loc1.setColors = function (oColors)
    {
        this._oColors[this._nSex] = oColors;
        this._svCharacter.setColors({color1: this._oColors[this._nSex].color1, color2: this._oColors[this._nSex].color2, color3: this._oColors[this._nSex].color3, color4: this._oColors[this._nSex].color4, color5: this._oColors[this._nSex].color5});
        this.applyColor(1);
        this.applyColor(2);
        this.applyColor(3);
        this.applyColor(4);
        this.applyColor(5);
        this._csBreedSelection.updateColor(1, oColors[this._nSex].color1);
        this._csBreedSelection.updateColor(2, oColors[this._nSex].color2);
        this._csBreedSelection.updateColor(3, oColors[this._nSex].color3);
        this._csBreedSelection.updateColor(4, oColors[this._nSex].color4);
        this._csBreedSelection.updateColor(5, oColors[this._nSex].color5);
    };
    _loc1.setHairCut = function (mc)
    {
        switch (mc)
        {
            case this._mcHairCut1:
            {
                this._nHairCut = 8;
                dofus.managers.CharactersManager.getInstance().setSpriteAccessories((ank.battlefield.datacenter.Sprite)(this._svCharacter.spriteData), "8,4,,A,C");
                break;
            } 
            case this._mcHairCut2:
            {
                this._nHairCut = 9;
                dofus.managers.CharactersManager.getInstance().setSpriteAccessories((ank.battlefield.datacenter.Sprite)(this._svCharacter.spriteData), "9,4,,A,C");
                break;
            } 
            default:
            {
                this._nHairCut = 8;
                dofus.managers.CharactersManager.getInstance().setSpriteAccessories((ank.battlefield.datacenter.Sprite)(this._svCharacter.spriteData), "8,4,,A,C");
            } 
        } // End of switch
    };
    _loc1.hideGenerateRandomName = function ()
    {
        this._mcRandomName._visible = false;
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._mcRight:
            {
                this._csBreedSelection.slide(1);
                break;
            } 
            case this._mcLeft:
            {
                this._csBreedSelection.slide(-1);
                break;
            } 
            case this._mcMaleButton:
            {
                var _loc3 = new Color(this._mcFemaleColor);
                _loc3.setRGB(13158600);
                var _loc4 = new Color(this._mcMaleColor);
                _loc4.setRGB(6605257);
                this._mcMaleButton.enabled = false;
                this._mcFemaleButton.enabled = true;
                this._mcFemaleAnim._visible = false;
                this._mcMaleAnim._visible = true;
                this._mcMaleAnim._xscale = 80;
                this._mcMaleAnim._yscale = 80;
                this._mcMaleAnim.gotoAndPlay(1);
                this.setClass(this._nBreed, 0);
                break;
            } 
            case this._mcFemaleButton:
            {
                var _loc5 = new Color(this._mcMaleColor);
                _loc5.setRGB(13158600);
                var _loc6 = new Color(this._mcFemaleColor);
                _loc6.setRGB(16753571);
                this._mcMaleButton.enabled = true;
                this._mcFemaleButton.enabled = false;
                this._mcMaleAnim._visible = false;
                this._mcFemaleAnim._visible = true;
                this._mcFemaleAnim.gotoAndPlay(1);
                this._mcFemaleAnim._xscale = 80;
                this._mcFemaleAnim._yscale = 80;
                this.setClass(this._nBreed, 1);
                break;
            } 
            case this._mcSpellButton2:
            case this._mcSpellButton:
            {
                this.api.ui.loadUIComponent("SpellViewerOnCreate", "SpellViewerOnCreate", {breed: this._nBreed});
                break;
            } 
            case this._mcHistoryButton:
            {
                this.api.ui.loadUIComponent("HistoryViewerOnCreate", "HistoryViewerOnCreate", {breed: this._nBreed});
                break;
            } 
            case this._btnValidate:
            {
                this.validateCreation();
                break;
            } 
            case this._btnServer:
            {
                this.api.datacenter.Basics.forceSelectServer = true;
                this.api.datacenter.Basics.isCreatingNewCharacter = true;
                this.api.kernel.changeServer(false);
                break;
            } 
            case this._btnBack:
            {
                this.api.datacenter.Basics.forceSelectServer = false;
                this.api.datacenter.Basics.isCreatingNewCharacter = false;
                this.api.kernel.changeServer(true);
                break;
            } 
            case this._mcRandomName:
            {
                if (this._nLastRegenerateTimer + dofus.graphics.gapi.ui.CreateCharacter.NAME_GENERATION_DELAY < getTimer())
                {
                    this.api.network.Account.getRandomCharacterName();
                    this._nLastRegenerateTimer = getTimer();
                } // end if
                break;
            } 
        } // End of switch
    };
    _loc1.over = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._csColors:
            {
                this.showColorPosition(oEvent.index);
                break;
            } 
            case this._mcRandomName:
            {
                this.gapi.showTooltip(this.api.lang.getText("RANDOM_NICKNAME"), _root._xmouse, _root._ymouse - 20);
                break;
            } 
            case this._mcMaleButton:
            {
                this.gapi.showTooltip(this.api.lang.getText("ANIMAL_MEN"), _root._xmouse, _root._ymouse - 20);
                break;
            } 
            case this._mcFemaleButton:
            {
                this.gapi.showTooltip(this.api.lang.getText("ANIMAL_WOMEN"), _root._xmouse, _root._ymouse - 20);
                break;
            } 
            case this._mcSpellButton:
            {
                this.gapi.showTooltip(this.api.lang.getText("CLASS_SPELLS"), _root._xmouse, _root._ymouse - 20);
                break;
            } 
            case this._mcRight:
            {
                this.gapi.showTooltip(this.api.lang.getText("NEXT_WORD"), _root._xmouse, _root._ymouse - 20);
                break;
            } 
            case this._mcLeft:
            {
                this.gapi.showTooltip(this.api.lang.getText("PREVIOUS_WORD"), _root._xmouse, _root._ymouse - 20);
                break;
            } 
        } // End of switch
    };
    _loc1.out = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._csColors:
            {
                this.hideColorPosition(oEvent.index);
                break;
            } 
            default:
            {
                this.gapi.hideTooltip();
                break;
            } 
        } // End of switch
    };
    _loc1.change = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._csColors:
            {
                this.setColors(oEvent.value);
                break;
            } 
            case this._csBreedSelection:
            {
                if (this._bLoaded)
                {
                    this.setClass(dofus.Constants.GUILD_ORDER[oEvent.value], this._nSex);
                } // end if
                break;
            } 
            case this._itCharacterName:
            {
                var _loc3 = this._itCharacterName.text;
                if (!this.api.datacenter.Player.isAuthorized)
                {
                    _loc3 = _loc3.substr(0, 1).toUpperCase() + _loc3.substr(1);
                    var _loc4 = _loc3.substr(0, 1);
                    var _loc5 = 1;
                    
                    while (++_loc5, _loc5 < _loc3.length)
                    {
                        if (_loc3.substr(_loc5 - 1, 1) != "-")
                        {
                            _loc4 = _loc4 + _loc3.substr(_loc5, 1).toLowerCase();
                            continue;
                        } // end if
                        _loc4 = _loc4 + _loc3.substr(_loc5, 1);
                    } // end while
                    this._itCharacterName.removeEventListener("change", this);
                    this._itCharacterName.text = _loc4;
                    this._itCharacterName.addEventListener("change", this);
                } // end if
                break;
            } 
        } // End of switch
    };
    _loc1.addProperty("characterCount", function ()
    {
    }, _loc1.__set__characterCount);
    _loc1.addProperty("characterName", function ()
    {
    }, _loc1.__set__characterName);
    _loc1.addProperty("remainingTime", function ()
    {
    }, _loc1.__set__remainingTime);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.CreateCharacter = function ()
    {
        super();
    }).CLASS_NAME = "CreateCharacter";
    (_global.dofus.graphics.gapi.ui.CreateCharacter = function ()
    {
        super();
    }).NAME_GENERATION_DELAY = 500;
    _loc1._nLastRegenerateTimer = 0;
    _loc1._bLoaded = false;
    _loc1._hairCutM = new Array(8, 9);
    _loc1._hairCutF = new Array(8, 9);
} // end if
#endinitclip

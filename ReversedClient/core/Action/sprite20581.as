﻿// Action script...

// [Initial MovieClip Action of sprite 20581]
#initclip 102
if (!dofus.graphics.gapi.ui.Register)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.Register = function ()
    {
        super();
    }).prototype;
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.Register.CLASS_NAME);
        this._oLoader = new LoadVars();
        var ref = this;
        this._lvHearAbout = new LoadVars();
        this._lvHearAbout.onLoad = function (bSuccess)
        {
            ref.onHearAboutLoad(bSuccess);
        };
        this._lvHearAbout.load(this.api.lang.getConfigText("WHERE_HEAR_LINK"));
    };
    _loc1.callClose = function ()
    {
        this.dispatchEvent({type: "close", target: this});
        this.unloadThis();
        return (true);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.switchToStep, params: [1]});
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.initData});
        this.addToQueue({object: this, method: this.initCrypto});
        this.addToQueue({object: this, method: this.selectCountry, params: [this.api.datacenter.Basics.aks_detected_country]});
    };
    _loc1.initTexts = function ()
    {
        this._winBackground.title = this.api.lang.getText("REGISTER_TITLE");
        this._lblAccountNameTitle.text = this.api.lang.getText("REGISTER_SECTION1_TITLE");
        this._lblAccountName.text = this.api.lang.getText("REGISTER_LOGIN");
        this._lblPassword.text = this.api.lang.getText("REGISTER_PASSOWRD1");
        this._lblConfirmPassword.text = this.api.lang.getText("REGISTER_PASSOWRD2");
        this._lblEmail.text = this.api.lang.getText("REGISTER_EMAIL");
        this._lblPersonalDataTitle.text = this.api.lang.getText("REGISTER_PERSONAL_DATAS");
        this._lblLastName.text = this.api.lang.getText("REGISTER_LAST_NAME");
        this._lblFirstName.text = this.api.lang.getText("REGISTER_FIRST_NAME");
        this._lblBirthDate.text = this.api.lang.getText("REGISTER_BIRTHDAY");
        this._lblGender.text = this.api.lang.getText("REGISTER_GENDER");
        this._lblFemale.text = this.api.lang.getText("REGISTER_GENDER_FEMALE");
        this._lblMale.text = this.api.lang.getText("REGISTER_GENDER_MALE");
        this._lblKnowingDofus.text = this.api.lang.getText("REGISTER_HOW_HEAR_ABOUT");
        this._lblNewsletter.text = this.api.lang.getText("REGISTER_NEWSLETTER");
        this._lblSecretQuestionTitle.text = this.api.lang.getText("REGISTER_SECTION2_TITLE");
        this._lblSecretQuestion.text = this.api.lang.getText("REGISTER_QUESTION");
        this._lblSecretAnswer.text = this.api.lang.getText("REGISTER_ANSWER");
        this._lblNoticeSecretQuestion.text = this.api.lang.getText("REGISTER_QUESTION_NOTICE");
        this._lblVerificationCodeTitle.text = this.api.lang.getText("REGISTER_CRYPTO_TITLE");
        this._lblCopyCode.text = this.api.lang.getText("REGISTER_CRYPTO");
        this._lblLocalisationTitle.text = this.api.lang.getText("REGISTER_LOCALISATION");
        this._lblCountry.text = this.api.lang.getText("REGISTER_COUNTRY");
        this._lblCommunityNotice.text = this.api.lang.getText("REGISTER_COMMUNITY_NOTICE");
        this._lblCommunity.text = this.api.lang.getText("REGISTER_COMMUNITY");
        this._lblCGUValidated.text = this.api.lang.getText("REGISTER_CONDITIONS");
        this._lblBackButton.text = this.api.lang.getText("BACK").toUpperCase();
    };
    _loc1.addListeners = function ()
    {
        this._btnClose.addEventListener("click", this);
        var ref = this;
        this._mcNewsletterTrigger.onRelease = function ()
        {
            ref.click({target: this});
        };
        this._mcMaleTrigger.onRelease = function ()
        {
            ref.click({target: this});
        };
        this._mcFemaleTrigger.onRelease = function ()
        {
            ref.click({target: this});
        };
        this._mcCGUTrigger.onRelease = function ()
        {
            ref.click({target: this});
        };
        this._btnFemale.addEventListener("stateChanged", this);
        this._btnMale.addEventListener("stateChanged", this);
        this._mcCrypto.onRelease = function ()
        {
            ref.initCrypto();
        };
        this._mcCrypto.onRollOver = function ()
        {
            ref.showCryptoTooltip();
        };
        this._mcCrypto.onRollOut = function ()
        {
            ref.hideTooltip();
        };
        this._mcValidateButton.onRelease = function ()
        {
            ref.click({target: this});
        };
        this._mcBackButton.onRelease = function ()
        {
            ref.click({target: this});
        };
        this._cbCountry.addEventListener("itemSelected", this);
        this.api.kernel.KeyManager.addShortcutsListener("onShortcut", this);
    };
    _loc1.initData = function ()
    {
        this._tiPassword1.password = true;
        this._tiPassword2.password = true;
        this._btnMale.radio = true;
        this._btnFemale.radio = true;
        var _loc2 = new ank.utils.ExtendedArray();
        _loc2.push({label: "-", data: "-1"});
        var _loc3 = 1;
        
        while (++_loc3, _loc3 < 32)
        {
            _loc2.push({label: _loc3, data: _loc3});
        } // end while
        this._cbDay.dataProvider = _loc2;
        this._cbDay.selectedIndex = 0;
        var _loc4 = new ank.utils.ExtendedArray();
        _loc4.push({label: "-", data: "-1"});
        var _loc5 = 1;
        
        while (++_loc5, _loc5 < 13)
        {
            var _loc6 = new Date(0, _loc5, 0, 0, 0, 0, 0);
            _loc4.push({label: org.utils.SimpleDateFormatter.formatDate(_loc6, "MMM", this.api.config.language), data: _loc5});
        } // end while
        this._cbMonth.dataProvider = _loc4;
        this._cbMonth.selectedIndex = 0;
        var _loc7 = new ank.utils.ExtendedArray();
        _loc7.push({label: "-", data: "-1"});
        var _loc8 = new Date().getFullYear() - 5;
        
        while (--_loc8, _loc8 > new Date().getFullYear() - 105)
        {
            _loc7.push({label: _loc8, data: _loc8});
        } // end while
        this._cbYear.dataProvider = _loc7;
        this._cbYear.selectedIndex = 0;
        this.addToQueue({object: this, method: this.refreshHearingAbout});
        var _loc9 = ank.utils.Countries.COUNTRIES[this.api.config.language];
        if (_loc9 == undefined)
        {
            _loc9 = ank.utils.Countries.COUNTRIES.en;
        } // end if
        var _loc10 = new ank.utils.ExtendedArray();
        _loc10.push({label: "", data: "--"});
        for (var k in _loc9)
        {
            _loc10.push({label: _loc9[k], data: k});
        } // end of for...in
        this._cbCountry.dataProvider = _loc10;
        this._cbCountry.selectedIndex = 0;
        var _loc11 = this.api.lang.getServerCommunities();
        var _loc12 = new ank.utils.ExtendedArray();
        var _loc13 = 1;
        _loc12.push({label: "", data: "--"});
        var _loc14 = 0;
        
        while (++_loc14, _loc14 < _loc11.length)
        {
            if (_loc11[_loc14].d)
            {
                _loc12.push({label: _loc11[_loc14].n, data: _loc11[_loc14].i, c: _loc11[_loc14].c, index: _loc13++});
            } // end if
        } // end while
        this._cbCommunity.dataProvider = _loc12;
        this._cbCommunity.selectedIndex = 0;
        this._tiAccount.setFocus();
    };
    _loc1.initCrypto = function (bForce)
    {
        if (this._bCurrentlyLoading)
        {
            return;
        } // end if
        if (this._nCurrentStep != 2 && !bForce)
        {
            return;
        } // end if
        this._bCryptoAlreadyLoaded = true;
        this._ldrCrypto.forceReload = true;
        this._ldrCrypto.contentPath = this.api.lang.getConfigText("CRYPTO_LINK");
        this._tiCopyCode.text = "";
    };
    _loc1.switchToStep = function (nStep)
    {
        switch (nStep)
        {
            case 1:
            {
                this._bgStep2._visible = false;
                this._lblSecretQuestionTitle._visible = false;
                this._lblVerificationCodeTitle._visible = false;
                this._lblLocalisationTitle._visible = false;
                this._lblNoticeSecretQuestion._visible = false;
                this._lblSecretQuestion._visible = false;
                this._lblSecretAnswer._visible = false;
                this._lblCopyCode._visible = false;
                this._lblCountry._visible = false;
                this._lblCommunity._visible = false;
                this._lblCommunityNotice._visible = false;
                this._lblCGUValidated._visible = false;
                this._tiQuestion._visible = false;
                this._tiAnswer._visible = false;
                this._tiCopyCode._visible = false;
                this._cbCountry._visible = false;
                this._cbCommunity._visible = false;
                this._btnCGU._visible = false;
                this._mcCGUTrigger._visible = false;
                this._ldrCrypto._visible = false;
                this._mcCrypto._visible = false;
                this._bgStep1._visible = true;
                this._lblAccountNameTitle._visible = true;
                this._lblPersonalDataTitle._visible = true;
                this._lblAccountName._visible = true;
                this._lblPassword._visible = true;
                this._lblConfirmPassword._visible = true;
                this._lblEmail._visible = true;
                this._lblLastName._visible = true;
                this._lblFirstName._visible = true;
                this._lblBirthDate._visible = true;
                this._lblGender._visible = true;
                this._lblFemale._visible = true;
                this._lblMale._visible = true;
                this._lblKnowingDofus._visible = true;
                this._lblNewsletter._visible = true;
                this._tiAccount._visible = true;
                this._tiPassword1._visible = true;
                this._tiPassword2._visible = true;
                this._tiEmail._visible = true;
                this._tiFirstName._visible = true;
                this._tiLastName._visible = true;
                this._cbDay._visible = true;
                this._cbMonth._visible = true;
                this._cbYear._visible = true;
                this._btnFemale._visible = true;
                this._mcFemaleTrigger._visible = true;
                this._btnMale._visible = true;
                this._mcMaleTrigger._visible = true;
                this._cbKnowingDofus._visible = true;
                this._btnNewsletter._visible = true;
                this._mcNewsletterTrigger._visible = true;
                if (this._lblNextStepButton.text != undefined)
                {
                    this._lblNextStepButton.text = String(this.api.lang.getText("VALIDATE")).toUpperCase();
                } // end if
                this._lblBackButton._visible = false;
                this._mcBackButton._visible = false;
                this._tiAccount.tabIndex = 5;
                this._tiPassword1.tabIndex = 6;
                this._tiPassword2.tabIndex = 7;
                this._tiEmail.tabIndex = 8;
                this._tiLastName.tabIndex = 9;
                this._tiFirstName.tabIndex = 10;
                this._tiAccount.setFocus();
                break;
            } 
            case 2:
            {
                this._bgStep1._visible = false;
                this._lblAccountNameTitle._visible = false;
                this._lblPersonalDataTitle._visible = false;
                this._lblAccountName._visible = false;
                this._lblPassword._visible = false;
                this._lblConfirmPassword._visible = false;
                this._lblEmail._visible = false;
                this._lblLastName._visible = false;
                this._lblFirstName._visible = false;
                this._lblBirthDate._visible = false;
                this._lblGender._visible = false;
                this._lblFemale._visible = false;
                this._lblMale._visible = false;
                this._lblKnowingDofus._visible = false;
                this._lblNewsletter._visible = false;
                this._tiAccount._visible = false;
                this._tiPassword1._visible = false;
                this._tiPassword2._visible = false;
                this._tiEmail._visible = false;
                this._tiFirstName._visible = false;
                this._tiLastName._visible = false;
                this._cbDay._visible = false;
                this._cbMonth._visible = false;
                this._cbYear._visible = false;
                this._btnFemale._visible = false;
                this._mcFemaleTrigger._visible = false;
                this._btnMale._visible = false;
                this._mcMaleTrigger._visible = false;
                this._cbKnowingDofus._visible = false;
                this._btnNewsletter._visible = false;
                this._mcNewsletterTrigger._visible = false;
                this._bgStep2._visible = true;
                this._lblSecretQuestionTitle._visible = true;
                this._lblVerificationCodeTitle._visible = true;
                this._lblLocalisationTitle._visible = true;
                this._lblNoticeSecretQuestion._visible = true;
                this._lblSecretQuestion._visible = true;
                this._lblSecretAnswer._visible = true;
                this._lblCopyCode._visible = true;
                this._lblCountry._visible = true;
                this._lblCommunity._visible = true;
                this._lblCommunityNotice._visible = true;
                this._lblCGUValidated._visible = true;
                this._tiQuestion._visible = true;
                this._tiAnswer._visible = true;
                this._tiCopyCode._visible = true;
                this._cbCountry._visible = true;
                this._cbCommunity._visible = true;
                this._btnCGU._visible = true;
                this._mcCGUTrigger._visible = true;
                this._ldrCrypto._visible = true;
                this._mcCrypto._visible = true;
                if (this._lblNextStepButton.text != undefined)
                {
                    this._lblNextStepButton.text = String(this.api.lang.getText("TERMINATE_WORD")).toUpperCase();
                } // end if
                this._lblBackButton._visible = true;
                this._mcBackButton._visible = true;
                if (!this._bCryptoAlreadyLoaded)
                {
                    this.initCrypto(true);
                } // end if
                this._tiQuestion.tabIndex = 5;
                this._tiAnswer.tabIndex = 6;
                this._tiCopyCode.tabIndex = 7;
                this._tiQuestion.setFocus();
                break;
            } 
        } // End of switch
        this._nCurrentStep = nStep;
    };
    _loc1.selectCountry = function (sCountry)
    {
        switch (sCountry)
        {
            case "UK":
            {
                sCountry = "GB";
                break;
            } 
        } // End of switch
        var _loc3 = this._cbCountry.dataProvider;
        var _loc4 = 0;
        
        while (++_loc4, _loc4 < _loc3.length)
        {
            if (_loc3[_loc4].data == sCountry)
            {
                this._cbCountry.selectedIndex = _loc4;
                this.selectCommunityFromCountry(sCountry);
            } // end if
        } // end while
    };
    _loc1.selectCommunityFromCountry = function (sCountry)
    {
        var _loc3 = this._cbCommunity.dataProvider;
        var _loc4 = 0;
        var _loc5 = 0;
        
        while (++_loc5, _loc5 < _loc3.length)
        {
            var _loc6 = _loc3[_loc5].c;
            var _loc7 = 0;
            
            while (++_loc7, _loc7 < _loc6.length)
            {
                if (_loc6[_loc7] == sCountry)
                {
                    this._cbCommunity.selectedIndex = _loc3[_loc5].index;
                    return;
                    continue;
                } // end if
                if (_loc6[_loc7] == "XX")
                {
                    _loc4 = _loc3[_loc5].index;
                } // end if
            } // end while
        } // end while
        this._cbCommunity.selectedIndex = _loc4;
    };
    _loc1.preValidateForm = function (nStep)
    {
        switch (nStep)
        {
            case 1:
            {
                if (this._tiAccount.text.length <= 0 || (this._tiPassword1.text.length <= 0 || (this._tiPassword2.text.length <= 0 || (this._tiEmail.text.length <= 0 || (this._tiLastName.text.length <= 0 || (this._tiFirstName.text.length <= 0 || (this._cbDay.selectedItem.data == -1 || (this._cbMonth.selectedItem.data == -1 || (this._cbYear.selectedItem.data == -1 || this._cbKnowingDofus.selectedItem.id == 0)))))))))
                {
                    this.api.kernel.showMessage(this.api.lang.getText("LOGIN_SUBSCRIBE"), this.api.lang.getText("REGISTER_NOT_FULLFILLED"), "ERROR_BOX");
                    return (false);
                }
                else if (this._tiPassword1.text.length < 8 || this._tiPassword2.text.length < 8)
                {
                    this.api.kernel.showMessage(this.api.lang.getText("LOGIN_SUBSCRIBE"), this.api.lang.getText("PASSWORD_TOO_SHORT"), "ERROR_BOX");
                    return (false);
                } // end else if
                break;
            } 
            case 2:
            {
                if (this._tiQuestion.text.length <= 0 || (this._tiAnswer.text.length <= 0 || (this._tiCopyCode.text.length <= 0 || (this._cbCountry.selectedItem.data == "--" || this._cbCommunity.selectedItem.data == "--"))))
                {
                    this.api.kernel.showMessage(this.api.lang.getText("LOGIN_SUBSCRIBE"), this.api.lang.getText("REGISTER_NOT_FULLFILLED"), "ERROR_BOX");
                    return (false);
                } // end if
                break;
            } 
        } // End of switch
        return (true);
    };
    _loc1.validateForm = function ()
    {
        this._oLoader.registerFrom = "game_dofus";
        this._oLoader.lang = this.api.config.language;
        this._oLoader.validRegister1 = true;
        this._oLoader.loginAG = this._tiAccount.text;
        this._oLoader.passAG = this._tiPassword1.text;
        this._oLoader.passAG2 = this._tiPassword2.text;
        this._oLoader.email = this._tiEmail.text;
        this._oLoader.lastname = this._tiLastName.text;
        this._oLoader.firstname = this._tiFirstName.text;
        this._oLoader.datenaiss_d = this._cbDay.selectedItem.data;
        this._oLoader.datenaiss_m = this._cbMonth.selectedItem.data;
        this._oLoader.datenaiss_y = this._cbYear.selectedItem.data;
        this._oLoader.sexe = this._btnFemale.selected ? ("F") : ("M");
        this._oLoader.knowgameid = this._cbKnowingDofus.selectedItem.data;
        if (this._btnNewsletter.selected)
        {
            this._oLoader.valid_newsletter = true;
        } // end if
        this._oLoader.question = this._tiQuestion.text;
        this._oLoader.answer = this._tiAnswer.text;
        this._oLoader.verifCode = this._tiCopyCode.text;
        this._oLoader.pays = this._cbCountry.selectedItem.data;
        this._oLoader.community_id = this._cbCommunity.selectedItem.data;
        if (this._btnCGU.selected)
        {
            this._oLoader.valid_cgu = true;
        } // end if
        this._oResult = new LoadVars();
        this._oResult.owner = this;
        this._oResult.onLoad = function (bSuccess)
        {
            this.owner.onResultLoad(bSuccess);
        };
        this._oLoader.sendAndLoad(this.api.lang.getConfigText("REGISTER_LINK"), this._oResult, "POST");
        this._lblNextStepButton.text = this.api.lang.getText("LOADING");
        this._bCurrentlyLoading = true;
        this.api.ui.loadUIComponent("CenterText", "CenterText", {text: this.api.lang.getText("WAITING_MSG_RECORDING"), timer: 0, background: true}, {bForceLoad: true});
    };
    _loc1.refreshHearingAbout = function ()
    {
        if (this._bHearAboutFailed)
        {
            this._cbKnowingDofus._visible = false;
            this._lblKnowingDofus._visible = false;
            return;
        } // end if
        if (this._aHearAboutStrings == undefined)
        {
            if (++this._nHearingAboutFailCount > dofus.graphics.gapi.ui.Register.LOAD_TIMEOUT)
            {
                return;
            } // end if
            this.addToQueue({object: this, method: this.refreshHearingAbout});
            return;
        }
        else
        {
            var _loc2 = new ank.utils.ExtendedArray();
            _loc2.push({label: this.api.lang.getText("PLEASE_SELECT"), id: 0});
            var _loc3 = 0;
            
            while (++_loc3, _loc3 < this._aHearAboutIDs.length)
            {
                _loc2.push({label: this._aHearAboutStrings["ID" + this._aHearAboutIDs[_loc3]], data: this._aHearAboutIDs[_loc3]});
            } // end while
            this._cbKnowingDofus.dataProvider = _loc2;
            this._cbKnowingDofus.selectedIndex = 0;
        } // end else if
    };
    _loc1.showCryptoTooltip = function ()
    {
        this.gapi.showTooltip(this.api.lang.getText("REGISTER_CLICK_TO_REGEN"), this._mcCrypto, 0, undefined);
    };
    _loc1.hideTooltip = function ()
    {
        this.gapi.hideTooltip();
    };
    _loc1.onShortcut = function (sShortcut)
    {
        if (sShortcut == "ACCEPT_CURRENT_DIALOG")
        {
            if (this._tiAccount.focused || (this._tiAnswer.focused || (this._tiCopyCode.focused || (this._tiEmail.focused || (this._tiFirstName.focused || (this._tiLastName.focused || (this._tiPassword1.focused || (this._tiPassword2.focused || this._tiQuestion.focused))))))))
            {
                this.click({target: this._mcValidateButton});
                return (false);
            } // end if
        } // end if
        return (true);
    };
    _loc1.itemSelected = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._cbCountry:
            {
                var _loc3 = this._cbCountry.selectedItem.data;
                if (_loc3.length != 2)
                {
                    return;
                } // end if
                this.selectCommunityFromCountry(_loc3);
                break;
            } 
        } // End of switch
    };
    _loc1.stateChanged = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._btnFemale:
            {
                this._btnMale.removeEventListener("stateChanged", this);
                this._btnMale.selected = !oEvent.value;
                this._btnMale.addEventListener("stateChanged", this);
                break;
            } 
            case this._btnMale:
            {
                this._btnFemale.removeEventListener("stateChanged", this);
                this._btnFemale.selected = !oEvent.value;
                this._btnFemale.addEventListener("stateChanged", this);
                break;
            } 
        } // End of switch
    };
    _loc1.click = function (oEvent)
    {
        if (this._bCurrentlyLoading)
        {
            return;
        } // end if
        switch (oEvent.target)
        {
            case this._mcNewsletterTrigger:
            {
                this._btnNewsletter.selected = !this._btnNewsletter.selected;
                break;
            } 
            case this._mcFemaleTrigger:
            {
                this._btnFemale.selected = true;
                break;
            } 
            case this._mcMaleTrigger:
            {
                this._btnMale.selected = true;
                break;
            } 
            case this._mcCGUTrigger:
            {
                this._btnCGU.selected = !this._btnCGU.selected;
                break;
            } 
            case this._btnClose:
            {
                this.callClose();
                break;
            } 
            case this._mcValidateButton:
            {
                switch (this._nCurrentStep)
                {
                    case 1:
                    {
                        if (this.preValidateForm(1))
                        {
                            this.switchToStep(2);
                        } // end if
                        break;
                    } 
                    case 2:
                    {
                        if (this.preValidateForm(2))
                        {
                            this.validateForm();
                        } // end if
                        break;
                    } 
                } // End of switch
                break;
            } 
            case this._mcBackButton:
            {
                this.switchToStep(1);
                break;
            } 
        } // End of switch
    };
    _loc1.onResultLoad = function (bSuccess)
    {
        this._lblNextStepButton.text = this.api.lang.getText("TERMINATE_WORD").toUpperCase();
        this._bCurrentlyLoading = false;
        this.api.ui.unloadUIComponent("CenterText");
        if (!bSuccess)
        {
            this.api.kernel.showMessage(this.api.lang.getText("LOGIN_SUBSCRIBE"), this.api.lang.getText("REGISTRATION_ERROR"), "ERROR_BOX");
            this.initCrypto(true);
        }
        else if (this._oResult.result != "")
        {
            this.api.kernel.showMessage(this.api.lang.getText("LOGIN_SUBSCRIBE"), this._oResult.result, "ERROR_BOX");
            this.initCrypto(true);
        }
        else
        {
            this.api.kernel.showMessage(this.api.lang.getText("LOGIN_SUBSCRIBE"), this.api.lang.getText("REGISTRATION_DONE", [this._tiAccount.text, this._tiQuestion.text, this._tiAnswer.text, this._tiEmail.text]), "ERROR_BOX");
            this.callClose();
        } // end else if
    };
    _loc1.onHearAboutLoad = function (bSuccess)
    {
        if (bSuccess)
        {
            var _loc3 = Number(this._lvHearAbout.answer_count);
            this._aHearAboutStrings = new Array();
            this._aHearAboutIDs = new Array();
            var _loc4 = 0;
            
            while (++_loc4, _loc4 < _loc3)
            {
                var _loc5 = _loc4 + 1;
                this._aHearAboutIDs.push(Number(this._lvHearAbout["answer_id" + _loc5]));
                this._aHearAboutStrings["ID" + this._lvHearAbout["answer_id" + _loc5]] = this._lvHearAbout["answer_desc" + _loc5];
            } // end while
        }
        else
        {
            this._bHearAboutFailed = true;
        } // end else if
    };
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.Register = function ()
    {
        super();
    }).CLASS_NAME = "Register";
    (_global.dofus.graphics.gapi.ui.Register = function ()
    {
        super();
    }).LOAD_TIMEOUT = 100;
    _loc1._nHearingAboutFailCount = 0;
    _loc1._bHearAboutFailed = false;
    _loc1._nCurrentStep = 0;
    _loc1._bCryptoAlreadyLoaded = false;
    _loc1._bCurrentlyLoading = false;
} // end if
#endinitclip

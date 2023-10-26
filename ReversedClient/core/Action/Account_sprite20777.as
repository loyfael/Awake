// Action script...

// [Initial MovieClip Action of sprite 20777]
#initclip 42
if (!dofus.aks.Account)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.aks)
    {
        _global.dofus.aks = new Object();
    } // end if
    var _loc1 = (_global.dofus.aks.Account = function (oAKS, oAPI)
    {
        super.initialize(oAKS, oAPI);
        this.WaitQueueTimer = new Object();
    }).prototype;
    _loc1.logon = function (sLogin, sPassword)
    {
        if (this.api.datacenter.Basics.connexionKey == undefined)
        {
            this.onLogin(false, "n");
            return;
        } // end if
        if (sLogin == undefined)
        {
            sLogin = this.api.datacenter.Basics.login;
        }
        else
        {
            this.api.datacenter.Basics.login = sLogin;
        } // end else if
        if (sPassword == undefined)
        {
            sPassword = this.api.datacenter.Basics.password;
        }
        else
        {
            this.api.datacenter.Basics.password = sPassword;
        } // end else if
        this.aks.send(dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION + (dofus.Constants.BETAVERSION > 0 ? ("." + dofus.Constants.BETAVERSION) : ("")) + (this.api.config.isStreaming ? ("s") : ("")), true, this.api.lang.getText("CONNECTING"));
        if (this.api.lang.getConfigText("CRYPTO_METHOD") == 2)
        {
            var _loc4 = new ank.utils.Md5();
            var _loc5 = "#2" + _loc4.hex_md5(_loc4.hex_md5(sPassword) + this.api.datacenter.Basics.connexionKey);
            this.aks.send(sLogin + "\n" + _loc5);
        }
        else
        {
            this.aks.send(sLogin + "\n" + ank.utils.Crypt.cryptPassword(sPassword, this.api.datacenter.Basics.connexionKey));
        } // end else if
    };
    _loc1.setNickName = function (sNickName)
    {
        this.aks.send(sNickName, true, this.api.lang.getText("WAITING_MSG_LOADING"));
    };
    _loc1.getCharacters = function ()
    {
        this.aks.send("AL", true, this.api.lang.getText("CONNECTING"));
    };
    _loc1.getCharactersForced = function ()
    {
        this.aks.send("ALf", true, this.api.lang.getText("CONNECTING"));
    };
    _loc1.getServersList = function ()
    {
        this.aks.send("Ax", true, this.api.lang.getText("WAITING_MSG_LOADING"));
    };
    _loc1.getCharacterList = function ()
    {
        this.aks.send("AL", true, this.api.lang.getText("WAITING_MSG_LOADING"));
    };
    _loc1.getCharacterListForced = function ()
    {
        this.aks.send("ALf", true, this.api.lang.getText("WAITING_MSG_LOADING"));
    };
    _loc1.setServer = function (nServerID)
    {
        com.ankamagames.tools.Logger.out("WG on envoie " + nServerID, "dofus.aks.Account::setServer", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 112);
        if (nServerID == undefined)
        {
            return;
        } // end if
        this.api.datacenter.Basics.aks_incoming_server_id = nServerID;
        this.aks.send("AX" + nServerID, true, this.api.lang.getText("WAITING_MSG_LOADING"));
    };
    _loc1.searchForFriend = function (sNick)
    {
        this.aks.send("AF" + sNick);
    };
    _loc1.setCharacter = function (sCharacID)
    {
        com.ankamagames.tools.Logger.out("WG On choisit " + sCharacID, "dofus.aks.Account::setCharacter", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 128);
        this.aks.send("AS" + sCharacID, true, this.api.lang.getText("WAITING_MSG_LOADING"));
        this.api.ui.unloadUIComponent("ChooseCharacter");
        this.getQueuePosition();
    };
    _loc1.addCharacter = function (sName, nClass, nColor1, nColor2, nColor3, nColor4, nColor5, nSex, nHairCut)
    {
        this.aks.send("AA" + sName + "|" + nClass + "|" + nSex + "|" + nColor1 + "|" + nColor2 + "|" + nColor3 + "|" + nColor4 + "|" + nColor5 + "|1|" + nHairCut, true, this.api.lang.getText("WAITING_MSG_RECORDING"));
    };
    _loc1.deleteCharacter = function (nCharacID, sSecretAnswer)
    {
        if (nCharacID == undefined)
        {
            return;
        } // end if
        if (sSecretAnswer == undefined)
        {
            sSecretAnswer = "";
        } // end if
        var _loc4 = new ank.utils.ExtendedString(_global.escape(sSecretAnswer));
        this.aks.send("AD" + nCharacID + "|" + _loc4.replace(["|", "\r", "\n", String.fromCharCode(0)], ["", "", "", ""]), true, this.api.lang.getText("WAITING_MSG_DELETING"));
    };
    _loc1.deleteFromConnexionServer = function (nCharacId, nGameId, sSecretAnswer)
    {
        if (nCharacId == undefined)
        {
            return;
        } // end if
        if (nGameId == undefined)
        {
            return;
        } // end if
        if (sSecretAnswer == undefined)
        {
            sSecretAnswer = "";
        } // end if
        this.api.datacenter.Basics.isDeletingCharacter = true;
        this.api.datacenter.Basics.characterToDeleteId = nCharacId;
        this.api.network.Account.setServer(nGameId);
    };
    _loc1.resetCharacter = function (nCharacID)
    {
        this.aks.send("AR" + nCharacID);
    };
    _loc1.boost = function (nBonusID)
    {
        this.aks.send("AB" + nBonusID);
    };
    _loc1.sendTicket = function (sTicket)
    {
        this.aks.send("AT" + sTicket);
    };
    _loc1.rescue = function (sTicket)
    {
        var _loc3 = "";
        if (this.api.datacenter.Game.isFight)
        {
            _loc3 = this.api.datacenter.Game.isRunning ? ("|1") : ("|0");
        } // end if
        this.aks.send("Ar" + sTicket + _loc3);
    };
    _loc1.getGifts = function ()
    {
        this.aks.send("Ag" + this.api.config.language);
    };
    _loc1.attributeGiftToCharacter = function (nGiftID, nCharacterID)
    {
        this.aks.send("AG" + nGiftID + "|" + nCharacterID);
    };
    _loc1.getQueuePosition = function ()
    {
        this.aks.send("Af", false);
        ank.utils.Timer.setTimer(this.WaitQueueTimer, "WaitQueue", this, this.getQueuePosition, Number(this.api.lang.getConfigText("DELAY_WAIT_QUEUE_REFRESH")));
    };
    _loc1.getRandomCharacterName = function ()
    {
        this.aks.send("AP", false);
    };
    _loc1.useKey = function (nKeyID)
    {
        this.aks.send("Ak" + dofus.aks.Aks.HEX_CHARS[nKeyID], false);
    };
    _loc1.requestRegionalVersion = function ()
    {
        this.aks.send("AV", true, this.api.lang.getText("WAITING_MSG_LOADING"));
    };
    _loc1.sendIdentity = function ()
    {
        if (this.api.datacenter.Basics.aks_current_server == undefined)
        {
            _global.clearInterval(this._nIdentityTimer);
            return;
        } // end if
        if (!this.api.datacenter.Basics.aks_can_send_identity)
        {
            return;
        } // end if
        dofus.managers.UIdManager.getInstance().update();
        var _loc2 = this.api.datacenter.Basics.aks_identity;
        var _loc3 = ank.utils.SharedObjectFix.getLocal(dofus.Constants.GLOBAL_SO_IDENTITY_NAME);
        var _loc4 = _loc3.data.identity;
        if (!this.api.network.isValidNetworkKey(_loc4))
        {
            _loc4 = this.api.network.getRandomNetworkKey();
            _loc3.data.identity = _loc4;
            _loc3.flush();
        }
        else if (_loc2 != _loc4)
        {
            this.api.datacenter.Basics.aks_identity = _loc4;
            this.aks.send("Ai" + this.api.datacenter.Basics.aks_identity, false);
        } // end else if
        _loc3.close();
    };
    _loc1.validCharacterMigration = function (nCharacterID, sName)
    {
        this.aks.send("AM" + nCharacterID + ";" + sName, false);
    };
    _loc1.deleteCharacterMigration = function (nCharacterID)
    {
        this.aks.send("AM-" + nCharacterID, false);
    };
    _loc1.askCharacterMigration = function (nCharacterID, sName)
    {
        this.aks.send("AM?" + nCharacterID + ";" + sName, false);
    };
    _loc1.onRegionalVersion = function (sExtraData)
    {
        var _loc3 = this.api.lang.getConfigText("MAXIMUM_ALLOWED_VERSION");
        var _loc4 = Number(sExtraData);
        if (_loc3 > 0)
        {
            if ((_loc4 <= 0 || _loc4 > _loc3) && !this.api.datacenter.Player.isAuthorized)
            {
                var _loc5 = {name: "SwitchToEnglish", listener: this};
                this.api.kernel.showMessage(undefined, this.api.lang.getText("SWITCH_TO_ENGLISH"), "CAUTION_YESNO", _loc5);
                return;
            } // end if
        } // end if
        this.api.datacenter.Basics.aks_current_regional_version = _loc4 > 0 && !_global.isNaN(_loc4) ? (_loc4) : (Number.MAX_VALUE);
        this.getGifts();
        _global.clearInterval(this._nIdentityTimer);
        this._nIdentityTimer = _global.setInterval(this, "sendIdentity", (Math.round(Math.random() * 120) + 60) * 1000);
        this.sendIdentity();
        this.getCharacters();
        this.api.network.Account.getQueuePosition();
    };
    _loc1.onCharacterDelete = function (bSuccess, sExtraData)
    {
        if (!bSuccess)
        {
            this.api.ui.unloadUIComponent("WaitingMessage");
            this.api.kernel.showMessage(undefined, this.api.lang.getText("CHARACTER_DELETION_FAILED"), "ERROR_BOX");
        } // end if
    };
    _loc1.onSecretQuestion = function (sExtraData)
    {
        this.api.datacenter.Basics.aks_secret_question = sExtraData;
    };
    _loc1.onKey = function (sExtraData)
    {
        var _loc3 = _global.parseInt(sExtraData.substr(0, 1), 16);
        var _loc4 = sExtraData.substr(1);
        this.aks.addKeyToCollection(_loc3, _loc4);
        this.useKey(_loc3);
        this.aks.startUsingKey(_loc3);
    };
    _loc1.onDofusPseudo = function (sExtraData)
    {
        this.api.datacenter.Basics.dofusPseudo = sExtraData;
    };
    _loc1.onCommunity = function (sExtraData)
    {
        var _loc3 = Number(sExtraData);
        if (_loc3 >= 0)
        {
            this.api.datacenter.Basics.communityId = _loc3;
        } // end if
    };
    _loc1.onLogin = function (bSuccess, sExtraData)
    {
        ank.utils.Timer.removeTimer(this.WaitQueueTimer, "WaitQueue");
        this.api.ui.unloadUIComponent("CenterText");
        this.api.ui.unloadUIComponent("WaitingMessage");
        this.api.ui.unloadUIComponent("WaitingQueue");
        if (bSuccess)
        {
            this.api.datacenter.Basics.isLogged = true;
            this.api.ui.unloadUIComponent("Login");
            this.api.ui.unloadUIComponent("ChooseNickName");
            this.api.datacenter.Player.isAuthorized = sExtraData == "1";
            _level0._loader.loadXtra();
        }
        else
        {
            var _loc4 = sExtraData.charAt(0);
            var _loc6 = false;
            com.ankamagames.tools.Logger.out(_loc4, "dofus.aks.Account::onLogin", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 422);
            switch (_loc4)
            {
                case "n":
                {
                    var _loc5 = this.api.lang.getText("CONNECT_NOT_FINISHED");
                    break;
                } 
                case "a":
                {
                    _loc5 = this.api.lang.getText("ALREADY_LOGGED");
                    break;
                } 
                case "c":
                {
                    _loc5 = this.api.lang.getText("ALREADY_LOGGED_GAME_SERVER");
                    break;
                } 
                case "v":
                {
                    _loc5 = this.api.lang.getText("BAD_VERSION", [dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION + (dofus.Constants.BETAVERSION > 0 ? (" Beta " + dofus.Constants.BETAVERSION) : ("")), sExtraData.substr(1)]);
                    _loc6 = true;
                    break;
                } 
                case "p":
                {
                    _loc5 = this.api.lang.getText("NOT_PLAYER");
                    break;
                } 
                case "b":
                {
                    _loc5 = this.api.lang.getText("BANNED");
                    break;
                } 
                case "d":
                {
                    _loc5 = this.api.lang.getText("U_DISCONNECT_ACCOUNT");
                    break;
                } 
                case "k":
                {
                    var _loc7 = sExtraData.substr(1).split("|");
                    var _loc8 = 0;
                    
                    while (++_loc8, _loc8 < _loc7.length)
                    {
                        if (_loc7[_loc8] == 0)
                        {
                            _loc7[_loc8] = undefined;
                        } // end if
                    } // end while
                    _loc5 = ank.utils.PatternDecoder.getDescription(this.api.lang.getText("KICKED"), _loc7);
                    break;
                } 
                case "w":
                {
                    _loc5 = this.api.lang.getText("SERVER_FULL");
                    break;
                } 
                case "o":
                {
                    _loc5 = this.api.lang.getText("OLD_ACCOUNT", [this.api.datacenter.Basics.login]);
                    break;
                } 
                case "e":
                {
                    _loc5 = this.api.lang.getText("OLD_ACCOUNT_USE_NEW", [this.api.datacenter.Basics.login]);
                    break;
                } 
                case "m":
                {
                    _loc5 = this.api.lang.getText("MAINTAIN_ACCOUNT");
                    break;
                } 
                case "r":
                {
                    this.api.ui.loadUIComponent("ChooseNickName", "ChooseNickName");
                    return;
                } 
                case "s":
                {
                    this.api.ui.getUIComponent("ChooseNickName").nickAlreadyUsed = true;
                    return;
                    break;
                } 
                case "f":
                {
                    if (this.api.config.isStreaming)
                    {
                        _loc5 = this.api.lang.getText("ACCESS_DENIED_MINICLIP");
                        break;
                    } // end if
                } 
                default:
                {
                    _loc5 = this.api.lang.getText("ACCESS_DENIED");
                    break;
                } 
            } // End of switch
            if (dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
            {
                getURL("JavaScript:WriteLog(\'LoginError;" + _loc5 + "\')", "_self");
            } // end if
            this.aks.disconnect(false, false);
            var _loc9 = this.api.ui.loadUIComponent("AskOk", _loc6 ? ("AskOkOnLoginCloseClient") : ("AskOkOnLogin"), {title: this.api.lang.getText("LOGIN"), text: _loc5});
            _loc9.addEventListener("ok", this);
            this.api.kernel.manualLogon();
        } // end else if
    };
    _loc1.chooseRandomServer = function (eaServers)
    {
        var _loc3 = 100;
        var _loc4 = -1;
        if (this.api.datacenter.Basics.communityId == 0)
        {
            com.ankamagames.tools.Logger.out("Server 1 pour la france", "dofus.aks.Account::chooseRandomServer", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 518);
            _loc4 = 1;
        } // end if
        if (this.api.datacenter.Basics.communityId == 3)
        {
            com.ankamagames.tools.Logger.out("Server 2 pour l\'allemagne", "dofus.aks.Account::chooseRandomServer", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 523);
            _loc4 = 2;
        } // end if
        if (_loc4 != -1)
        {
            var _loc5 = 0;
            
            while (++_loc5, _loc5 < eaServers.length)
            {
                if (eaServers[_loc5].id == _loc4)
                {
                    if (eaServers[_loc5].state == 1)
                    {
                        return (_loc4);
                        continue;
                    } // end if
                    return (-1);
                } // end if
            } // end while
            return (-1);
        } // end if
        while (_loc4 == -1 && _loc3 > 0)
        {
            var _loc6 = Math.floor(Math.random() * (eaServers.length - 1));
            if (eaServers[_loc6].state == 1)
            {
                _loc4 = eaServers[_loc6].id;
            } // end if
            com.ankamagames.tools.Logger.out("WG le serveur sélectionné est  " + _loc4, "dofus.aks.Account::chooseRandomServer", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 545);
            if (!_loc4)
            {
                _loc4 = -1;
            } // end if
            --_loc3;
        } // end while
        return (_loc4);
    };
    _loc1.onServersList = function (bSuccess, sExtraData)
    {
        com.ankamagames.tools.Logger.out("WG On a " + bSuccess + " " + sExtraData, "dofus.aks.Account::onServersList", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 557);
        this.api.ui.unloadUIComponent("WaitingMessage");
        var _loc4 = this.api.datacenter.Basics.aks_servers;
        this.api.ui.getUIComponent("MainMenu").quitMode = "menu";
        var _loc5 = sExtraData.split("|");
        var _loc6 = Number(_loc5[0]);
        var _loc7 = -1;
        this.api.datacenter.Player.subscriber = _loc6 > 0;
        this.api.ui.getUIComponent("MainMenu").updateSubscribeButton();
        var _loc8 = 0;
        var _loc9 = 1;
        
        while (++_loc9, _loc9 < _loc5.length)
        {
            var _loc10 = _loc5[_loc9].split(",");
            var _loc11 = Number(_loc10[0]);
            var _loc12 = Number(_loc10[1]);
            var _loc13 = 0;
            
            while (++_loc13, _loc13 < _loc4.length)
            {
                if (_loc4[_loc13].id == _loc11)
                {
                    _loc4[_loc13].charactersCount = _loc12;
                    break;
                } // end if
            } // end while
        } // end while
        if (_loc7 == -1 && !dofus.Constants.DEBUG)
        {
            _loc7 = this.chooseRandomServer(_loc4);
        } // end if
        this.api.ui.unloadUIComponent("CreateCharacter");
        this.api.ui.unloadUIComponent("ChooseCharacter");
        this.api.ui.unloadUIComponent("AutomaticServer");
        this.api.ui.unloadUIComponent("ChooseServer");
        this.api.datacenter.Basics.hasSelectedCharacter = false;
        this.api.datacenter.Basics.selectedCharacter = "";
        com.ankamagames.tools.Logger.out("WG on a " + _loc8 + " en tout", "dofus.aks.Account::onServersList", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 624);
        if (this.api.datacenter.Basics.forceSelectServer)
        {
            this.api.ui.loadUIComponent("ChooseServer", "ChooseServer", {servers: _loc4, remainingTime: _loc6});
            this.api.datacenter.Basics.forceSelectServer = false;
        }
        else if (_loc7 != -1)
        {
            this.api.network.Account.setServer(_loc7);
        }
        else
        {
            this.api.ui.loadUIComponent("ChooseServer", "ChooseServer", {servers: _loc4, remainingTime: _loc6});
            this.api.datacenter.Basics.forceSelectServer = false;
        } // end else if
    };
    _loc1.onHosts = function (sExtraData)
    {
        var _loc3 = this.api.datacenter.Basics.aks_servers;
        var _loc4 = new Array();
        var _loc5 = sExtraData.split("|");
        var _loc6 = 0;
        
        while (++_loc6, _loc6 < _loc5.length)
        {
            var _loc7 = _loc5[_loc6].split(";");
            var _loc8 = Number(_loc7[0]);
            var _loc9 = Number(_loc7[1]);
            var _loc10 = Number(_loc7[2]);
            var _loc11 = _loc7[3] == "1";
            var _loc12 = new dofus.datacenter.Server(_loc8, _loc9, _loc10, _loc11);
            if (_global.CONFIG.onlyHardcore && _loc12.typeNum != dofus.datacenter.Server.SERVER_HARDCORE)
            {
                continue;
            } // end if
            var _loc13 = _loc3.findFirstItem("id", _loc8).item;
            if (_loc13 != undefined)
            {
                _loc12.charactersCount = _loc13.charactersCount;
            } // end if
            _loc4.push(_loc12);
        } // end while
        this.api.datacenter.Basics.aks_servers.createFromArray(_loc4);
    };
    _loc1.onCharactersList = function (bSuccess, sExtraData, bIsMigration, bIsFromGame)
    {
        /*
         * Format : <characterCount> | ID;Name;level;gfxID;color1;color2;color3;color4;color5;accessories;merchant;serverID;isDead;deathCount;lvlMax
         */
        this.api.ui.unloadUIComponent("WaitingMessage");
        this.api.ui.unloadUIComponent("WaitingQueue");
        if (bIsFromGame) {
            if (this.api.datacenter.Basics.hasSelectedCharacter && this.api.datacenter.Basics.aks_gifts_stack.length == 0) {
                com.ankamagames.tools.Logger.out("WG on sélectionne automatiquement un perso", "dofus.aks.Account::onCharactersList", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 742);
                this.api.datacenter.Basics.hasSelectedCharacter = false;
                this.api.network.Account.setCharacter(this.api.datacenter.Basics.selectedCharacter);
                return;
            } // end if
            if (this.api.datacenter.Basics.isDeletingCharacter) {
                this.api.datacenter.Basics.isDeletingCharacter = false;
                this.api.network.Account.deleteCharacter(this.api.datacenter.Basics.characterToDeleteId);
                this.api.kernel.changeServer(true);
                return;
            } // end if
            if (this.api.datacenter.Basics.isCreatingNewCharacter && this.api.datacenter.Basics.globalCharacterCount < dofus.Constants.WG_MAX_CHARACTERS_PER_ACCOUNT) {
                this.api.ui.loadUIComponent("CreateCharacter", "CreateCharacter", {remainingTime: 0, characterCount: this.api.datacenter.Basics.globalCharacterCount});
                this.api.datacenter.Basics.isCreatingNewCharacter = false;
                return;
            } // end if
        }
        var index_start = 0;
        var personnages = new Array();
        var persoList = sExtraData.split("|");
        com.ankamagames.tools.Logger.out("WG on a les datas " + sExtraData + " à splitter en " + persoList.length, "dofus.aks.Account::onCharactersList", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 773);
        var characterCount = -1;
        if (persoList[0].split(";").length < 2)
        {
            index_start = 1;
            characterCount = persoList[0];
        } // end if
        if (!bIsFromGame && characterCount != -1)
        {
            this.api.datacenter.Basics.globalCharacterCount = characterCount;
            com.ankamagames.tools.Logger.out("WG on a " + characterCount + " persos", "dofus.aks.Account::onCharactersList", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 782);
        } // end if
        var oldCharList = new Array();
        this.api.datacenter.Sprites.clear();
        var i = index_start;
        
        while (++i, i < persoList.length)
        {
            var splittedCharacter = persoList[i].split(";");
            var characterObj = new Object();
            var charID = splittedCharacter[0];
            var charName = splittedCharacter[1];
            characterObj.level = splittedCharacter[2];
            characterObj.gfxID = splittedCharacter[3];
            characterObj.color1 = splittedCharacter[4];
            characterObj.color2 = splittedCharacter[5];
            characterObj.color3 = splittedCharacter[6];
            characterObj.color4 = splittedCharacter[7];
            characterObj.color5 = splittedCharacter[8];
            characterObj.accessories = splittedCharacter[9];
            characterObj.merchant = splittedCharacter[10];
            characterObj.serverID = splittedCharacter[11];
            characterObj.isDead = splittedCharacter[12];
            characterObj.deathCount = splittedCharacter[13];
            characterObj.lvlMax = splittedCharacter[14];
            var createdCharacter = this.api.kernel.CharactersManager.createCharacter(charID, charName, characterObj);
            createdCharacter.sortID = Number(charID);
            personnages.push(createdCharacter);
            oldCharList.push(Number(charID));
        } // end while
        personnages.sortOn("sortID", Array.NUMERIC);
        this.api.ui.unloadUIComponent("ChooseCharacter");
        this.api.ui.unloadUIComponent("CreateCharacter");
        this.api.ui.unloadUIComponent("ChooseServer");
        this.api.ui.unloadUIComponent("AutomaticServer");
        ank.utils.Timer.removeTimer(this.WaitQueueTimer, "WaitQueue");
        this.api.ui.getUIComponent("MainMenu").quitMode = "menu";
        if (this.api.datacenter.Basics.hasCreatedCharacter)
        {
            this.api.datacenter.Basics.hasCreatedCharacter = false;
            if (this.api.datacenter.Basics.oldCharList == undefined && oldCharList.length == 1 || this.api.datacenter.Basics.oldCharList.length + 1 == oldCharList.length)
            {
                var j = 0;
                
                while (++j, j < oldCharList.length)
                {
                    var hasCommonChar = false;
                    var k = 0;
                    
                    while (++k, k < this.api.datacenter.Basics.oldCharList.length)
                    {
                        if (oldCharList[j] == this.api.datacenter.Basics.oldCharList[k])
                        {
                            hasCommonChar = true;
                            break;
                        } // end if
                    } // end while
                    if (!hasCommonChar)
                    {
                        this.setCharacter(oldCharList[j]);
                        return;
                    } // end if
                } // end while
            } // end if
        } // end if
        this.api.datacenter.Basics.oldCharList = oldCharList;
        com.ankamagames.tools.Logger.out("ignoreMigration 2 : " + this.api.datacenter.Basics.ignoreMigration, "dofus.aks.Account::onCharactersList", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 883);
        if (false)
        {
            com.ankamagames.tools.Logger.out("WG Account onCharactersList : CreateCharacter", "dofus.aks.Account::onCharactersList", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 888);
            this.api.ui.loadUIComponent("CreateCharacter", "CreateCharacter", {remainingTime: 0, characterCount: this.api.datacenter.Basics.globalCharacterCount});
        }
        else
        {
            com.ankamagames.tools.Logger.out("WG Account onCharactersList : ChooseCharacter", "dofus.aks.Account::onCharactersList", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 894);
            this.api.ui.unloadUIComponent("CharactersMigration");
            if (characterCount > 0 && (!bIsMigration || this.api.datacenter.Basics.ignoreMigration))
            {
                this.api.datacenter.Basics.createCharacter = false;
                com.ankamagames.tools.Logger.out("WG on affiches les persos " + personnages, "dofus.aks.Account::onCharactersList", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 902);
                this.api.ui.loadUIComponent("ChooseCharacter", "ChooseCharacter", {spriteList: personnages, remainingTime: 0, characterCount: characterCount}, {bForceLoad: true});
            }
            else if (characterCount == 0)
            {
                this.api.datacenter.Basics.globalCharacterCount = characterCount;
                this.api.ui.loadUIComponent("CreateCharacter", "CreateCharacter", {remainingTime: 0});
            }
            else
            {
                this.api.datacenter.Basics.ignoreMigration = false;
                this.api.datacenter.Basics.createCharacter = false;
                this.api.ui.loadUIComponent("CharactersMigration", "CharactersMigration", {spriteList: personnages, remainingTime: 0, characterCount: personnages.length}, {bForceLoad: true});
            } // end else if
        } // end else if
        if (this.api.datacenter.Basics.aks_gifts_stack.length != 0 && personnages.length > 0)
        {
            this.api.ui.getUIComponent("CreateCharacter")._visible = false;
            this.api.ui.getUIComponent("ChooseCharacter")._visible = false;
            this.api.ui.loadUIComponent("Gifts", "Gifts", {gift: this.api.datacenter.Basics.aks_gifts_stack.shift(), spriteList: personnages}, {bForceLoad: true});
        } // end if
    };
    _loc1.onMiniClipInfo = function ()
    {
        this.api.datacenter.Basics.first_connection_from_miniclip = true;
    };
    _loc1.onCharacterAdd = function (bSuccess, sExtraData)
    {
        this.api.ui.unloadUIComponent("WaitingMessage");
        if (dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
        {
            getURL("JavaScript:WriteLog(\'CharacterValidation;" + bSuccess + "\')", "_self");
        } // end if
        if (!bSuccess)
        {
            switch (sExtraData)
            {
                case "s":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("SUBSCRIPTION_OUT"), "ERROR_BOX", {name: "CreateNameExists"});
                    break;
                } 
                case "f":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("CREATE_CHARACTER_FULL"), "ERROR_BOX", {name: "CreateNameExists"});
                    break;
                } 
                case "a":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("NAME_ALEREADY_EXISTS"), "ERROR_BOX", {name: "CreateNameExists"});
                    break;
                } 
                case "n":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("CREATE_CHARACTER_BAD_NAME"), "ERROR_BOX", {name: "CreateNameExists"});
                    break;
                } 
                default:
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("CREATE_CHARACTER_ERROR"), "ERROR_BOX", {name: "CreateNameExists"});
                    break;
                } 
            } // End of switch
        }
        else
        {
            this.api.datacenter.Basics.createCharacter = false;
        } // end else if
    };
    _loc1.onSelectServer = function (bSuccess, bUseIp, sExtraData)
    {
        this.api.ui.unloadUIComponent("WaitingMessage");
        if (bSuccess)
        {
            if (bUseIp)
            {
                var _loc8 = sExtraData.substr(0, 8);
                var _loc9 = sExtraData.substr(8, 3);
                var _loc7 = sExtraData.substr(11);
                var _loc10 = new Array();
                var _loc11 = 0;
                
                while (_loc11 = _loc11 + 2, _loc11 < 8)
                {
                    var _loc12 = _loc8.charCodeAt(_loc11) - 48;
                    var _loc13 = _loc8.charCodeAt(_loc11 + 1) - 48;
                    _loc10.push((_loc12 & 15) << 4 | _loc13 & 15);
                } // end while
                var _loc5 = _loc10.join(".");
                var _loc6 = (ank.utils.Compressor.decode64(_loc9.charAt(0)) & 63) << 12 | (ank.utils.Compressor.decode64(_loc9.charAt(1)) & 63) << 6 | ank.utils.Compressor.decode64(_loc9.charAt(2)) & 63;
            }
            else
            {
                var _loc14 = sExtraData.split(";");
                var _loc15 = _loc14[0].split(":");
                _loc5 = _loc15[0];
                _loc6 = _loc15[1];
                _loc7 = _loc14[1];
            } // end else if
            var _loc16 = this.api.config.getCustomIP(this.api.datacenter.Basics.aks_incoming_server_id);
            if (_loc16 != undefined)
            {
                _loc5 = _loc16.ip;
                _loc6 = _loc16.port;
            } // end if
            com.ankamagames.tools.Logger.out(_loc5 + "/" + _loc6 + "/" + _loc7, "dofus.aks.Account::onSelectServer", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 1028);
            this.api.datacenter.Basics.aks_ticket = _loc7;
            this.api.datacenter.Basics.aks_gameserver_ip = _loc5;
            this.api.datacenter.Basics.aks_gameserver_port = _loc6;
            this.api.datacenter.Basics.ignoreMigration = false;
            this.api.datacenter.Basics.ignoreCreateCharacter = false;
            this.api.ui.unloadUIComponent("ChooseServer");
            this.api.ui.unloadUIComponent("AutomaticServer");
            this.api.ui.loadUIComponent("Waiting", "Waiting");
            this.aks.softDisconnect();
            this.api.ui.loadUIComponent("WaitingMessage", "WaitingMessage", {text: this.api.lang.getText("CONNECTING")}, {bAlwaysOnTop: true, bForceLoad: true});
            this.api.network.Basics.onAuthorizedCommandPrompt(this.api.datacenter.Basics.aks_current_server.label);
            if (_global.CONFIG.delay != undefined)
            {
                ank.utils.Timer.setTimer(this, "connect", this.aks, this.aks.connect, _global.CONFIG.delay, [_loc5, _loc6, false]);
            }
            else
            {
                this.aks.connect(_loc5, _loc6, false);
            } // end else if
        }
        else
        {
            delete this.api.datacenter.Basics.aks_current_server;
            this.api.datacenter.Basics.createCharacter = false;
            switch (sExtraData.charAt(0))
            {
                case "d":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_CHOOSE_CHARACTER_SERVER_DOWN"), "ERROR_BOX");
                    break;
                } 
                case "f":
                {
                    var _loc17 = this.api.lang.getText("CANT_CHOOSE_CHARACTER_SERVER_FULL");
                    if (sExtraData.substr(1).length > 0)
                    {
                        var _loc18 = sExtraData.substr(1).split("|");
                        _loc17 = _loc17 + "<br/><br/>";
                        _loc17 = _loc17 + (this.api.lang.getText("SERVERS_ACCESSIBLES") + " : <br/>");
                        var _loc19 = 0;
                        
                        while (++_loc19, _loc19 < _loc18.length)
                        {
                            var _loc20 = new dofus.datacenter.Server(_loc18[_loc19]);
                            _loc17 = _loc17 + _loc20.label;
                            _loc17 = _loc17 + (_loc19 == _loc18.length - 1 ? (".") : (", "));
                        } // end while
                    } // end if
                    this.api.kernel.showMessage(undefined, _loc17, "ERROR_BOX");
                    break;
                } 
                case "F":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("SERVER_FULL"), "ERROR_BOX");
                    break;
                } 
                case "s":
                {
                    var _loc21 = this.api.lang.getServerInfos(Number(sExtraData.substr(1))).n;
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_CHOOSE_CHARACTER_SHOP_OTHER_SERVER", [_loc21]), "ERROR_BOX");
                    break;
                } 
                case "r":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_SELECT_THIS_SERVER"), "ERROR_BOX");
                    break;
                } 
            } // End of switch
        } // end else if
    };
    _loc1.onRescue = function (bSuccess)
    {
        this.api.datacenter.Player.data.GameActionsManager.clear();
        this.api.ui.unloadUIComponent("WaitingMessage");
        this.api.ui.unloadUIComponent("WaitingQueue");
        ank.utils.Timer.removeTimer(this.WaitQueueTimer, "WaitQueue");
        if (!bSuccess)
        {
            this.api.datacenter.Basics.aks_rescue_count = -1;
            this.aks.disconnect(false, true);
        } // end if
    };
    _loc1.onTicketResponse = function (bSuccess, sExtraData)
    {
        this.api.ui.unloadUIComponent("WaitingMessage");
        if (bSuccess)
        {
            var _loc4 = _global.parseInt(sExtraData.substr(0, 1), 16);
            if (_global.isNaN(_loc4))
            {
                _loc4 = -1;
            } // end if
            if (_loc4 > 0)
            {
                this.aks.addKeyToCollection(_loc4, sExtraData.substr(1));
                this.useKey(_loc4);
                this.aks.startUsingKey(_loc4);
            }
            else if (_loc4 == 0)
            {
                this.useKey(0);
            }
            else if (_loc4 == -1)
            {
                com.ankamagames.tools.Logger.out("WG Le serveur semble ne pas connaître le protocole de cryptage!", "dofus.aks.Account::onTicketResponse", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 1173);
            } // end else if
            this.api.datacenter.Basics.aks_current_regional_version = Number.POSITIVE_INFINITY;
            this.api.datacenter.Basics.aks_can_send_identity = true;
            this.requestRegionalVersion();
        }
        else
        {
            this.aks.disconnect(false, true);
        } // end else if
    };
    _loc1.onCharacterSelected = function (bSuccess, sExtraData)
    {
        this.api.datacenter.Basics.inGame = true;
        this.api.ui.unloadUIComponent("WaitingMessage");
        this.api.ui.unloadUIComponent("ChooseCharacter");
        this.api.ui.unloadUIComponent("WaitingQueue");
        ank.utils.Timer.removeTimer(this.WaitQueueTimer, "WaitQueue");
        if (bSuccess)
        {
            var _loc4 = sExtraData.split("|");
            var _loc5 = new Object();
            var _loc6 = Number(_loc4[0]);
            var _loc7 = _loc4[1];
            _loc5.level = _loc4[2];
            _loc5.guild = _loc4[3];
            _loc5.sex = _loc4[4];
            _loc5.gfxID = _loc4[5];
            _loc5.color1 = _loc4[6];
            _loc5.color2 = _loc4[7];
            _loc5.color3 = _loc4[8];
            _loc5.color4 = _loc4[9];
            _loc5.color5 = _loc4[10];
            _loc5.items = _loc4[11];
            this.api.kernel.CharactersManager.setLocalPlayerData(_loc6, _loc7, _loc5);
            this.aks.Game.create();
            if (this.api.datacenter.Player.isAuthorized)
            {
                this.api.kernel.AdminManager.characterEnteringGame();
            } // end if
        }
        else
        {
            this.aks.disconnect(false, true);
        } // end else if
    };
    _loc1.onStats = function (sExtraData)
    {
        this.api.ui.unloadUIComponent("WaitingMessage");
        var _loc3 = sExtraData.split("|");
        var player = this.api.datacenter.Player;
        var _loc5 = _loc3[0].split(",");
        player.setXP(_loc5[0], _loc5[1], _loc5[2]);
        player.Kama = _loc3[1];
        player.BonusPoints = _loc3[2];
        player.BonusPointsSpell = _loc3[3];
        _loc5 = _loc3[4].split(",");
        var _loc6 = 0;
        if (_loc5[0].indexOf("~"))
        {
            var _loc7 = _loc5[0].split("~");
            player.haveFakeAlignment = _loc7[0] != _loc7[1];
            _loc5[0] = _loc7[0];
            _loc6 = Number(_loc7[1]);
        } // end if
        var _loc8 = Number(_loc5[0]);
        var _loc9 = Number(_loc5[1]);
        player.alignment = new dofus.datacenter.Alignment(_loc8, _loc9);
        player.fakeAlignment = new dofus.datacenter.Alignment(_loc6, _loc9);
        player.data.alignment = player.alignment.clone();
        var _loc10 = Number(_loc5[2]);
        var _loc11 = Number(_loc5[3]);
        var _loc12 = Number(_loc5[4]);
        var _loc13 = _loc5[5] == "1" ? (true) : (false);
        var _loc14 = player.rank.disgrace;
        player.rank = new dofus.datacenter.Rank(_loc10, _loc11, _loc12, _loc13);
        player.data.rank = player.rank.clone();
        if (_loc14 != undefined && (_loc14 != _loc12 && _loc12 > 0))
        {
            this.api.kernel.GameManager.showDisgraceSanction();
        } // end if
        _loc5 = _loc3[5].split(",");
        player.LP = _loc5[0];
        player.data.LP = _loc5[0];
        player.LPmax = _loc5[1];
        player.data.LPmax = _loc5[1];
        _loc5 = _loc3[6].split(",");
        player.Energy = _loc5[0];
        player.EnergyMax = _loc5[1];
        player.Initiative = _loc3[7];
        player.Discernment = _loc3[8];
        var _loc15 = new Array();
        var _loc16 = 3;
        
        while (--_loc16, _loc16 > -1)
        {
            _loc15[_loc16] = new Array();
        } // end while
        var _loc17 = 9;
        
        while (++_loc17, _loc17 < 51)
        {
            _loc5 = _loc3[_loc17].split(",");
            var _loc18 = Number(_loc5[0]);
            var _loc19 = Number(_loc5[1]);
            var _loc20 = Number(_loc5[2]);
            var _loc21 = Number(_loc5[3]);
            switch (_loc17)
            {
                case 9:
                {
                    _loc15[0].push({id: _loc17, o: 7, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "Star"});
                    if (!this.api.datacenter.Game.isFight)
                    {
                        player.AP = _loc18 + _loc19 + _loc20;
                    } // end if
                    break;
                } 
                case 10:
                {
                    _loc15[0].push({id: _loc17, o: 8, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconMP"});
                    if (!this.api.datacenter.Game.isFight)
                    {
                        player.MP = _loc18 + _loc19 + _loc20;
                    } // end if
                    break;
                } 
                case 11:
                {
                    _loc15[0].push({id: _loc17, o: 3, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconEarthBonus"});
                    player.Force = _loc18;
                    player.ForceXtra = _loc19 + _loc20;
                    break;
                } 
                case 12:
                {
                    _loc15[0].push({id: _loc17, o: 1, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconVita"});
                    player.Vitality = _loc18;
                    player.VitalityXtra = _loc19 + _loc20;
                    break;
                } 
                case 13:
                {
                    _loc15[0].push({id: _loc17, o: 2, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconWisdom"});
                    player.Wisdom = _loc18;
                    player.WisdomXtra = _loc19 + _loc20;
                    break;
                } 
                case 14:
                {
                    _loc15[0].push({id: _loc17, o: 5, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconWaterBonus"});
                    player.Chance = _loc18;
                    player.ChanceXtra = _loc19 + _loc20;
                    break;
                } 
                case 15:
                {
                    _loc15[0].push({id: _loc17, o: 6, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconAirBonus"});
                    player.Agility = _loc18;
                    player.AgilityXtra = _loc19 + _loc20;
                    player.AgilityTotal = _loc18 + _loc19 + _loc20 + _loc21;
                    break;
                } 
                case 16:
                {
                    _loc15[0].push({id: _loc17, o: 4, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconFireBonus"});
                    player.Intelligence = _loc18;
                    player.IntelligenceXtra = _loc19 + _loc20;
                    break;
                } 
                case 17:
                {
                    _loc15[0].push({id: _loc17, o: 9, s: _loc18, i: _loc19, d: _loc20, b: _loc21});
                    player.RangeModerator = _loc18 + _loc19 + _loc20;
                    break;
                } 
                case 18:
                {
                    _loc15[0].push({id: _loc17, o: 10, s: _loc18, i: _loc19, d: _loc20, b: _loc21});
                    player.MaxSummonedCreatures = _loc18 + _loc19 + _loc20;
                    break;
                } 
                case 19:
                {
                    _loc15[1].push({id: _loc17, o: 1, s: _loc18, i: _loc19, d: _loc20, b: _loc21});
                    break;
                } 
                case 20:
                {
                    _loc15[1].push({id: _loc17, o: 2, s: _loc18, i: _loc19, d: _loc20, b: _loc21});
                    break;
                } 
                case 21:
                {
                    _loc15[1].push({id: _loc17, o: 3, s: _loc18, i: _loc19, d: _loc20, b: _loc21});
                    break;
                } 
                case 22:
                {
                    _loc15[1].push({id: _loc17, o: 4, s: _loc18, i: _loc19, d: _loc20, b: _loc21});
                    break;
                } 
                case 23:
                {
                    _loc15[1].push({id: _loc17, o: 7, s: _loc18, i: _loc19, d: _loc20, b: _loc21});
                    break;
                } 
                case 24:
                {
                    _loc15[1].push({id: _loc17, o: 5, s: _loc18, i: _loc19, d: _loc20, b: _loc21});
                    break;
                } 
                case 25:
                {
                    _loc15[1].push({id: _loc17, o: 6, s: _loc18, i: _loc19, d: _loc20, b: _loc21});
                    break;
                } 
                case 26:
                {
                    _loc15[1].push({id: _loc17, o: 8, s: _loc18, i: _loc19, d: _loc20, b: _loc21});
                    break;
                } 
                case 27:
                {
                    _loc15[1].push({id: _loc17, o: 9, s: _loc18, i: _loc19, d: _loc20, b: _loc21});
                    player.CriticalHitBonus = _loc18 + _loc19 + _loc20 + _loc21;
                    break;
                } 
                case 28:
                {
                    _loc15[1].push({id: _loc17, o: 10, s: _loc18, i: _loc19, d: _loc20, b: _loc21});
                    break;
                } 
                case 29:
                {
                    _loc15[1].push({id: _loc17, o: 11, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "Star"});
                    break;
                } 
                case 30:
                {
                    _loc15[1].push({id: _loc17, o: 12, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconMP"});
                    break;
                } 
                case 31:
                {
                    _loc15[2].push({id: _loc17, o: 1, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconNeutral"});
                    break;
                } 
                case 32:
                {
                    _loc15[2].push({id: _loc17, o: 2, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconNeutral"});
                    break;
                } 
                case 33:
                {
                    _loc15[3].push({id: _loc17, o: 11, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconNeutral"});
                    break;
                } 
                case 34:
                {
                    _loc15[3].push({id: _loc17, o: 12, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconNeutral"});
                    break;
                } 
                case 35:
                {
                    _loc15[2].push({id: _loc17, o: 3, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconEarth"});
                    break;
                } 
                case 36:
                {
                    _loc15[2].push({id: _loc17, o: 4, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconEarth"});
                    break;
                } 
                case 37:
                {
                    _loc15[3].push({id: _loc17, o: 13, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconEarth"});
                    break;
                } 
                case 38:
                {
                    _loc15[3].push({id: _loc17, o: 14, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconEarth"});
                    break;
                } 
                case 39:
                {
                    _loc15[2].push({id: _loc17, o: 7, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconWater"});
                    break;
                } 
                case 40:
                {
                    _loc15[2].push({id: _loc17, o: 8, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconWater"});
                    break;
                } 
                case 41:
                {
                    _loc15[3].push({id: _loc17, o: 17, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconWater"});
                    break;
                } 
                case 42:
                {
                    _loc15[3].push({id: _loc17, o: 18, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconWater"});
                    break;
                } 
                case 43:
                {
                    _loc15[2].push({id: _loc17, o: 9, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconAir"});
                    break;
                } 
                case 44:
                {
                    _loc15[2].push({id: _loc17, o: 10, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconAir"});
                    break;
                } 
                case 45:
                {
                    _loc15[3].push({id: _loc17, o: 19, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconAir"});
                    break;
                } 
                case 46:
                {
                    _loc15[3].push({id: _loc17, o: 20, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconAir"});
                    break;
                } 
                case 47:
                {
                    _loc15[2].push({id: _loc17, o: 5, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconFire"});
                    break;
                } 
                case 48:
                {
                    _loc15[2].push({id: _loc17, o: 6, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconFire"});
                    break;
                } 
                case 49:
                {
                    _loc15[3].push({id: _loc17, o: 15, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconFire"});
                    break;
                } 
                case 50:
                {
                    _loc15[3].push({id: _loc17, o: 16, s: _loc18, i: _loc19, d: _loc20, b: _loc21, p: "IconFire"});
                    break;
                } 
            } // End of switch
        } // end while
        player.FullStats = _loc15;
        this.api.network.Basics.getDate();
    };
    _loc1.onNewLevel = function (sExtraData)
    {
        var _loc3 = sExtraData.split(",");
        var _loc4 = Number(_loc3[0]);
        var _loc5 = Number(_loc3[1]);
        var _loc6 = "";
        var _loc7 = 2;
        
        while (++_loc7, _loc7 < _loc3.length)
        {
            var _loc8 = _loc3[_loc7].split(";");
            _loc6 = _loc6 + (this.api.lang.getSpellText(Number(_loc8[0])).n + " (" + _loc8[1] + ")");
        } // end while
        com.ankamagames.tools.Logger.out("wg Account : onNewLevel:" + _loc6, "dofus.aks.Account::onNewLevel", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 1503);
        var _loc9 = _loc6.length > 0 ? (this.api.lang.getText("SPELL_GAIN", [_loc6])) : ("");
        if (_loc4 == 3)
        {
            this.api.kernel.showMessage(this.api.lang.getText("LEVEL_UP"), this.api.lang.getText("NEW_LEVEL_3", [_loc4, _loc5, "\n" + _loc9]), "ERROR_BOX", {name: "NewLevel"});
            this.api.ui.getUIComponent("Banner").showXpArrow();
        }
        else
        {
            this.api.kernel.showMessage(this.api.lang.getText("LEVEL_UP"), this.api.lang.getText("NEW_LEVEL", [_loc4, _loc5, _loc9]), "ERROR_BOX", {name: "NewLevel"});
        } // end else if
        this.api.datacenter.Player.Level = _loc4;
        this.api.datacenter.Player.data.Level = _loc4;
        this.api.ui.getUIComponent("Banner").shortcuts.onNewLevel();
        this.api.kernel.TipsManager.showNewTip(dofus.managers.TipsManager.TIP_GAIN_LEVEL);
    };
    _loc1.onRestrictions = function (sExtraData)
    {
        this.api.datacenter.Player.restrictions = _global.parseInt(sExtraData, 36);
    };
    _loc1.onGiftsList = function (sExtraData)
    {
        var _loc3 = sExtraData.split("|");
        var _loc4 = Number(_loc3[0]);
        var _loc5 = Number(_loc3[1]);
        var _loc6 = _loc3[2];
        var _loc7 = _loc3[3];
        var _loc8 = _loc3[4];
        var _loc9 = _loc3[5];
        var _loc10 = new LoadVars();
        _loc10.decode("&text=" + _loc6);
        var _loc11 = _loc10.text;
        _loc10 = new LoadVars();
        _loc10.decode("&desc=" + _loc7);
        var _loc12 = _loc10.desc;
        _loc10 = new LoadVars();
        _loc10.decode("&gfxurl=" + _loc8);
        var _loc13 = _loc10.gfxurl;
        var _loc14 = new Array();
        var _loc15 = _loc9.split(";");
        var _loc16 = 0;
        
        while (++_loc16, _loc16 < _loc15.length)
        {
            if (_loc15[_loc16] != "")
            {
                var _loc17 = this.api.kernel.CharactersManager.getItemObjectFromData(_loc15[_loc16]);
                _loc14.push(_loc17);
            } // end if
        } // end while
        var _loc18 = new Object();
        _loc18.type = _loc4;
        _loc18.id = _loc5;
        _loc18.title = _loc11;
        _loc18.desc = _loc12;
        _loc18.gfxUrl = _loc13;
        _loc18.items = _loc14;
        this.api.datacenter.Basics.aks_gifts_stack.push(_loc18);
    };
    _loc1.onGiftStored = function (bSuccess)
    {
        this.api.ui.unloadUIComponent("WaitingMessage");
        this.api.ui.getUIComponent("Gifts").checkNextGift();
    };
    _loc1.onQueue = function (sExtraData)
    {
        var _loc3 = Number(sExtraData);
        if (_loc3 > 1)
        {
            this.api.ui.loadUIComponent("WaitingMessage", "WaitingMessage", {text: this.api.lang.getText("CONNECTING") + " ( " + this.api.lang.getText("WAIT_QUEUE_POSITION", [_loc3]) + " )"}, {bAlwaysOnTop: true, bForceLoad: true});
        } // end if
    };
    _loc1.onNewQueue = function (sExtraData)
    {
        var _loc3 = sExtraData.split("|");
        var _loc4 = Number(_loc3[0]);
        var _loc5 = Number(_loc3[1]);
        var _loc6 = Number(_loc3[2]);
        switch (_loc3[3])
        {
            case "0":
            {
                var _loc7 = false;
                break;
            } 
            case "1":
            {
                _loc7 = true;
                break;
            } 
        } // End of switch
        var _loc8 = Number(_loc3[4]);
        com.ankamagames.tools.Logger.out("AskQueue", "dofus.aks.Account::onNewQueue", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 1641);
        if (_loc4 > 1)
        {
            com.ankamagames.tools.Logger.out("ShowQueue", "dofus.aks.Account::onNewQueue", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 1645);
            this.api.ui.loadUIComponent("WaitingQueue", "WaitingQueue", {queueInfos: {position: _loc4, totalAbo: _loc5, totalNonAbo: _loc6, subscriber: _loc7, queueId: _loc8}}, {bAlwaysOnTop: true, bForceLoad: true});
        } // end if
    };
    _loc1.onCharacterNameGenerated = function (bSuccess, sCharacterNameOrError)
    {
        if (bSuccess)
        {
            if (this.api.ui.getUIComponent("CreateCharacter"))
            {
                this.api.ui.getUIComponent("CreateCharacter").characterName = sCharacterNameOrError;
            } // end if
            if (this.api.ui.getUIComponent("CharactersMigration"))
            {
                this.api.ui.getUIComponent("CharactersMigration").setNewName = sCharacterNameOrError;
            } // end if
        }
        else
        {
            switch (sCharacterNameOrError)
            {
                case "1":
                {
                    break;
                } 
                case "2":
                {
                    this.api.datacenter.Basics.aks_can_generate_names = false;
                    if (this.api.ui.getUIComponent("CreateCharacter"))
                    {
                        this.api.ui.getUIComponent("CreateCharacter").hideGenerateRandomName();
                    } // end if
                    if (this.api.ui.getUIComponent("CharactersMigration"))
                    {
                        this.api.ui.getUIComponent("CharactersMigration").hideGenerateRandomName();
                    } // end if
                    break;
                } 
            } // End of switch
        } // end else if
    };
    _loc1.onCharactersMigrationAskConfirm = function (sData)
    {
        var _loc3 = sData.split(";");
        var _loc4 = _global.parseInt(_loc3[0], 10);
        var _loc5 = _loc3[1];
        var _loc6 = {name: "ConfirmMigration", params: {nCharacterID: _loc4, sName: _loc5}, listener: this};
        this.api.kernel.showMessage(undefined, this.api.lang.getText("CONFIRM_MIGRATION", [_loc5]), "CAUTION_YESNO", _loc6);
    };
    _loc1.onFriendServerList = function (sData)
    {
        var _loc3 = sData.split(";");
        var _loc4 = new Array();
        var _loc5 = 0;
        
        while (++_loc5, _loc5 < _loc3.length)
        {
            var _loc6 = _loc3[_loc5].split(",");
            _loc4.push({server: _loc6[0], count: _loc6[1]});
        } // end while
        this.api.ui.getUIComponent("ChooseServer").setSearchResult(_loc4);
    };
    _loc1.yes = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "AskYesNoSwitchToEnglish":
            {
                this.api.config.language = "en";
                this.api.kernel.clearCache();
                break;
            } 
            case "AskYesNoConfirmMigration":
            {
                this.validCharacterMigration(oEvent.target.params.nCharacterID, oEvent.target.params.sName);
                break;
            } 
        } // End of switch
    };
    _loc1.no = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "AskYesNoSwitchToEnglish":
            {
                this.api.kernel.changeServer(true);
                break;
            } 
        } // End of switch
    };
    _loc1.onNewAchievement = function (sExtraData)
    {
        com.ankamagames.tools.Logger.out("WG Account : onNewAchievement :" + sExtraData, "dofus.aks.Account::onNewAchievement", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Account.as", 1736);
        var _loc3 = this.api.lang.getAchievementInfo(Number(sExtraData));
        this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"), this.api.lang.getText("NEW_ACHIEVEMENT", [_loc3.n, _loc3.d, _loc3.r[0]]), "ERROR_BOX", {name: "NewAchievement"});
    };
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

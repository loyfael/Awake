// Action script...

// [Initial MovieClip Action of sprite 20824]
#initclip 89
if (!dofus.aks.Dungeon)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.aks)
    {
        _global.dofus.aks = new Object();
    } // end if
    var _loc1 = (_global.dofus.aks.Dungeon = function (oAKS, oAPI)
    {
        super.initialize(oAKS, oAPI);
    }).prototype;
    _loc1.startDungeon = function ()
    {
        this.aks.send("wDS");
    };
    _loc1.leave = function ()
    {
        this.aks.send("wDV");
        delete this.api.datacenter.Player.dungeonTeamInfos;
        this.api.ui.unloadUIComponent("CreateDungeonTeam");
    };
    _loc1.invite = function ()
    {
        this.aks.send("wDI");
    };
    _loc1.join = function (playerToJoinId, dungeonTeamId)
    {
        this.aks.send("wDJ" + playerToJoinId + "|" + dungeonTeamId);
    };
    _loc1.kick = function (nMemberId)
    {
        this.aks.send("wDK" + nMemberId);
    };
    _loc1.onDungeonCreation = function (sExtraData)
    {
        var _loc3 = new Array(this.api.lang.getText("JANUARY"), this.api.lang.getText("FEBRUARY"), this.api.lang.getText("MARCH"), this.api.lang.getText("APRIL"), this.api.lang.getText("MAY"), this.api.lang.getText("JUNE"), this.api.lang.getText("JULY"), this.api.lang.getText("AUGUST"), this.api.lang.getText("SEPTEMBER"), this.api.lang.getText("OCTOBER"), this.api.lang.getText("FEBRUARY"), this.api.lang.getText("DECEMBER"));
        var _loc4 = sExtraData.split("|");
        if (_loc4.length == 2 && _loc4[0] == "Ed")
        {
            var _loc5 = _loc4[1].split("/");
            var _loc6 = _loc5[0];
            var _loc7 = _loc5[1];
            this.api.ui.loadUIComponent("AskOk", "DungeonLevelMessage", {title: this.api.lang.getText("CAUTION"), text: this.api.lang.getText("DUNGEON_OPEN_BEFORE") + "  " + _loc6 + " " + _loc3[_loc7]});
        }
        else if (_loc4[0] == "Ek")
        {
            var _loc8 = "";
            var _loc9 = 1;
            
            while (++_loc9, _loc9 < _loc4.length)
            {
                _loc8 = _loc8 + (this.api.lang.getItemUnicText(_loc4[_loc9]).n + "\n");
            } // end while
            this.api.ui.loadUIComponent("AskOk", "DungeonLevelMessage", {title: this.api.lang.getText("CAUTION"), text: this.api.lang.getText("DUNGEON_OPEN_WITH_KEY") + "\n" + _loc8});
        }
        else
        {
            var _loc10 = _loc4[0];
            var _loc11 = _loc4[1];
            var _loc12 = _loc4[2];
            var _loc13 = "DUNGEON_" + _loc12;
            this.api.ui.loadUIAutoHideComponent("DungeonCreation", "DungeonCreation", {title: this.api.lang.getText("DUNGEON_TEAM_CREATION"), text: this.api.lang.getText(_loc13), mapId: _loc10, cellId: _loc11, dungeonId: _loc12});
        } // end else if
    };
    _loc1.onDungeonInvite = function (sExtraData)
    {
        var _loc3 = sExtraData.substr(0, 1);
        sExtraData = sExtraData.substr(1);
        switch (_loc3)
        {
            case "K":
            {
                var _loc4 = sExtraData.split("|");
                var _loc5 = Number(_loc4[0]);
                var _loc6 = _loc4[1];
                this.api.kernel.showMessage(undefined, this.api.lang.getText("DUNGEON_INVITE_OK", [_loc6]), "INFO_CHAT");
                break;
            } 
            case "E":
            {
                var _loc7 = sExtraData.substr(0, 1);
                sExtraData = sExtraData.substr(1);
                var _loc8 = sExtraData.split("|");
                var _loc9 = Number(_loc8[0]);
                var _loc10 = _loc8[1];
                var _loc11 = "";
                switch (_loc7)
                {
                    case "f":
                    {
                        _loc11 = "TEAM_FULL";
                        break;
                    } 
                    case "a":
                    {
                        _loc11 = "ALREADY_IN_TEAM";
                        break;
                    } 
                    case "o":
                    {
                        _loc11 = "OCCUPIED";
                        break;
                    } 
                    default:
                    {
                        return;
                    } 
                } // End of switch
                this.api.kernel.showMessage(undefined, this.api.lang.getText("DUNGEON_INVITE_ERR_" + _loc11, [_loc10]), "ERROR_CHAT");
                break;
            } 
            default:
            {
                return;
            } 
        } // End of switch
    };
    _loc1.onDungeonInvitation = function (sExtraData)
    {
        var _loc3 = sExtraData.substr(0, 1);
        sExtraData = sExtraData.substr(1);
        switch (_loc3)
        {
            case "r":
            {
                var _loc4 = sExtraData.split("|");
                var _loc5 = Number(_loc4[0]);
                var _loc6 = _loc4[1];
                var _loc7 = Number(_loc4[2]);
                var _loc8 = Number(_loc4[3]);
                this.api.ui.unloadUIComponent("AskYesNoDungeonInvite");
                var _loc9 = this.api.ui.loadUIComponent("AskYesNo", "AskYesNoDungeonInvite", {title: this.api.lang.getText("DUNGEON_INVITE_TITLE"), text: this.api.lang.getText("DUNGEON_INVITE_TEXT", [_loc6, this.api.lang.getText("DUNGEON_" + _loc8)]), params: {playerToJoinId: _loc5, teamId: _loc7}});
                _loc9.addEventListener("yes", this);
                _loc9.addEventListener("no", this);
                break;
            } 
            case "A":
            case "R":
            {
                var _loc10 = sExtraData.split("|");
                var _loc11 = Number(_loc10[0]);
                var _loc12 = _loc10[1];
                this.api.kernel.showMessage(undefined, this.api.lang.getText("DUNGEON_INVITATION_" + (_loc3 == "A" ? ("ACCEPT") : ("REFUSE")), [_loc12]), "INFO_CHAT");
                break;
            } 
            case "E":
            {
                this.api.kernel.showMessage(undefined, this.api.lang.getText("DUNGEON_INVITATION_EXPIRATED"), "ERROR_CHAT");
                break;
            } 
            default:
            {
                return;
            } 
        } // End of switch
    };
    _loc1.onDungeonStart = function (sData)
    {
        var _loc3 = sData.split("|");
        this._currentDungeonId = _loc3[0];
        this._vsDungeonFightIds = _loc3[1].split(",");
        com.ankamagames.tools.Logger.out("[WG] onDungeonStart aTmp[2] = " + _loc3[2], "dofus.aks.Dungeon::onDungeonStart", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Dungeon.as", 218);
        this._customAnimationFightIds = _loc3[2].split(",");
        this._lastDungeonFight = 0;
        this.api.ui.unloadUIComponent("CreateDungeonTeam");
    };
    _loc1.onIntroStart = function (oObject)
    {
        var _loc3 = this._lastDungeonFight + 1;
        if (this.isVersusFight())
        {
            this.api.ui.loadUIComponent("Versus", "Versus", {object: oObject, dungeon: this._currentDungeonId, fight: _loc3, versus: true});
        }
        else if (!(this.api.config.language != "fr" && this._currentDungeonId > 30))
        {
            this.api.ui.loadUIComponent("FightStartAnimation", "FightStartAnimation", {object: oObject, dungeon: this._currentDungeonId, fight: _loc3, versus: false});
        }
        else
        {
            this.api.network.Game.onFightStart(oObject);
        } // end else if
    };
    _loc1.onFightStart = function ()
    {
        this.displayDungeonText();
    };
    _loc1.onParseItemEndDungeon = function (game, victory, dungeonId, fightId)
    {
        com.ankamagames.tools.Logger.out("WG Dungeon : onParseItemEndDungeon", "dofus.aks.Dungeon::onParseItemEndDungeon", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Dungeon.as", 245);
        this.aks.GameActions.onActionsFinish(this.api.datacenter.Player.ID);
        this.api.datacenter.Game.isRunning = false;
        this.aks.Dungeon.onFightEnd(victory, dungeonId, fightId);
        var _loc6 = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID).sequencer;
        game.isBusy = false;
        if (_loc6 != undefined)
        {
            _loc6.addAction(false, this.api.kernel.GameManager, this.api.kernel.GameManager.terminateFight);
            _loc6.execute(false);
        }
        else
        {
            ank.utils.Logger.err("[AKS.Game.onEnd] Impossible de trouver le sequencer");
            ank.utils.Timer.setTimer(game, "game", this.api.kernel.GameManager, this.api.kernel.GameManager.terminateFight, 500);
        } // end else if
        this.api.kernel.TipsManager.showNewTip(dofus.managers.TipsManager.TIP_FIGHT_ENDFIGHT);
    };
    _loc1.onFightEnd = function (isVictory, dungeonId, fightId)
    {
        if (this.api.ui.getUIComponent("ShowResult") != undefined)
        {
            this.api.ui.unloadUIComponent("ShowResult");
        } // end if
        var _loc5 = this.api.ui.getUIComponent("Banner").getFightOptionPanel();
        if (_loc5 != undefined)
        {
            _loc5.disableHelp();
        } // end if
        if (isVictory)
        {
            com.ankamagames.tools.Logger.out("WG On joue la musique de victoire", "dofus.aks.Dungeon::onFightEnd", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Dungeon.as", 298);
            this.api.sounds.playMusicFadeOutOld(135, true, 1);
        }
        else
        {
            com.ankamagames.tools.Logger.out("WG On joue la musique de défaite", "dofus.aks.Dungeon::onFightEnd", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Dungeon.as", 301);
            this.api.sounds.playMusicFadeOutOld(136, true, 1);
        } // end else if
        this._currentDungeonId = dungeonId;
        this._lastDungeonFight = fightId;
        this._lastFightVictory = isVictory;
    };
    _loc1.displayDungeonText = function ()
    {
        if (_global.isNaN(this._currentDungeonId) || _global.isNaN(this._lastDungeonFight))
        {
            return;
        } // end if
        var _loc2 = "DUNGEON_" + this._currentDungeonId;
        var _loc3 = "DUNGEON_" + this._currentDungeonId + "_" + (this._lastDungeonFight + 1);
        var _loc4 = "DUNGEON_ZONE_" + this._currentDungeonId + "_" + (this._lastDungeonFight + 1);
        var _loc5 = "DUNGEON_TIPS_" + this._currentDungeonId + "_" + (this._lastDungeonFight + 1);
        var _loc6 = "DUNGEON_TITLE_" + this._currentDungeonId + "_" + (this._lastDungeonFight + 1);
        var _loc7 = this.api.ui.loadUIComponent("FightIntro", "ShowResult", {title: this.api.lang.getText(_loc6), mission: this.api.lang.getText(_loc3), tips: this.api.lang.getText(_loc5), episode: this.api.lang.getText(_loc2), zone: this.api.lang.getText(_loc4)});
        var _loc8 = this.api.ui.getUIComponent("Banner").getFightOptionPanel();
        if (_loc8 != undefined)
        {
            _loc8.enableHelp();
        } // end if
    };
    _loc1.onJoin = function (bSuccess, sExtraData)
    {
        if (bSuccess)
        {
            com.ankamagames.tools.Logger.out("[wtf] WG Entrée en donjon réussie " + sExtraData, "dofus.aks.Dungeon::onJoin", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Dungeon.as", 341);
            var _loc4 = sExtraData.split("|");
            var _loc5 = Number(_loc4[0]);
            var _loc6 = Number(_loc4[1]);
            var _loc7 = new dofus.datacenter.DungeonTeamInfos(_loc5, _loc6);
            this.api.datacenter.Player.dungeonTeamInfos = _loc7;
            var _loc8 = 2;
            
            while (++_loc8, _loc8 < _loc4.length)
            {
                _loc7.addMember(_loc4[_loc8]);
            } // end while
            this.api.ui.unloadLastUIAutoHideComponent();
            var _loc9 = "DUNGEON_" + _loc6;
            this.api.ui.loadUIComponent("CreateDungeonTeam", "CreateDungeonTeam", {title: this.api.lang.getText("DUNGEON_TEAM_CREATION"), text: this.api.lang.getText(_loc9)});
        }
        else
        {
            com.ankamagames.tools.Logger.out("WG Entrée en donjon loupée " + sExtraData, "dofus.aks.Dungeon::onJoin", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Dungeon.as", 366);
            switch (sExtraData)
            {
                case "f":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("DUNGEON_TEAM_JOIN_ERR_TEAM_FULL"), "ERROR_CHAT");
                    break;
                } 
                case "p":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("DUNGEON_TEAM_JOIN_ERR_PARTY_ONLY"), "ERROR_CHAT");
                    break;
                } 
            } // End of switch
        } // end else if
    };
    _loc1.onLeave = function ()
    {
        delete this.api.datacenter.Player.dungeonTeamInfos;
        this.api.ui.unloadUIComponent("CreateDungeonTeam");
    };
    _loc1.onWin = function (sExtraData)
    {
        var _loc3 = sExtraData.split(";");
        var _loc4 = new Array();
        var _loc5 = 0;
        
        while (++_loc5, _loc5 < _loc3.length)
        {
            var _loc6 = _loc3[_loc5];
            if (_loc6.length == 0)
            {
                continue;
            } // end if
            var _loc7 = _loc6.charAt(0);
            var _loc8 = _loc6.substr(1);
            if (_loc7.length != 1 || _loc8.length <= 0)
            {
                continue;
            } // end if
            _loc4.push({type: _loc7, param: _loc8});
        } // end while
        this.api.ui.unloadUIComponent("ShowResult");
        this.api.ui.loadUIComponent("WGGameResult", "WGGameResult", {dungeonId: this._currentDungeonId, dungeonFight: this._lastDungeonFight + 1, rewards: _loc4}, {bAlwaysOnTop: true});
    };
    _loc1.onMemberMovement = function (sExtraData)
    {
        var _loc3 = sExtraData.charAt(0);
        if (_loc3 == "-")
        {
            var _loc4 = Number(sExtraData.substr(1));
            var _loc5 = this.api.datacenter.Player.dungeonTeamInfos.getMemberInfosById(_loc4);
            if (_loc5 == null)
            {
                return;
            } // end if
            if (this.api.datacenter.Player.dungeonTeamInfos.removeMember(_loc4))
            {
                this.api.kernel.showMessage(undefined, this.api.lang.getText("DUNGEON_TEAM_MEMBER_REMOVED", [_loc5.name]), "INFO_CHAT");
            } // end if
        }
        else if (_loc3 == "+")
        {
            var _loc6 = sExtraData.substr(1);
            var _loc7 = this.api.datacenter.Player.dungeonTeamInfos.addMember(_loc6);
            var _loc8 = this.api.datacenter.Player.dungeonTeamInfos.getMemberInfosById(_loc7);
            if (_loc8 == null)
            {
                return;
            } // end if
            this.api.kernel.showMessage(undefined, this.api.lang.getText("DUNGEON_TEAM_MEMBER_ADDED", [_loc8.name]), "INFO_CHAT");
        }
        else
        {
            com.ankamagames.tools.Logger.out("WG demande de mouvement bizarre. Ni + ni -, mais " + _loc3, "dofus.aks.Dungeon::onMemberMovement", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Dungeon.as", 459);
        } // end else if
    };
    _loc1.onPlayerStatusChanged = function (sExtraData)
    {
        if (this.api.datacenter.Game.isFight)
        {
            return;
        } // end if
        var _loc3 = sExtraData.split(",");
        var _loc4 = _loc3[0];
        var _loc5 = this.api.datacenter.Sprites.getItemAt(_loc4);
        if (_loc5 == undefined)
        {
            com.ankamagames.tools.Logger.out("Impossible de mettre un joeur en mode \'attente de coéquipiers : le joueur " + _loc4 + " n\'existe pas", "dofus.aks.Dungeon::onPlayerStatusChanged", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Dungeon.as", 481);
            return;
        } // end if
        var _loc6 = Number(_loc3[1]);
        var _loc7 = Number(_loc3[2]);
        var _loc8 = Number(_loc3[3]);
        _loc6 = Number(_loc3[1]);
        _loc7 = Number(_loc3[2]);
        _loc8 = Number(_loc3[3]);
        _loc5.setDungeonTeamInfos(_loc6, _loc7, _loc8);
    };
    _loc1.onError = function (sExtraData)
    {
        if (sExtraData.length == 1)
        {
            var _loc3 = null;
            switch (sExtraData.charAt(0))
            {
                case "l":
                {
                    _loc3 = "LEVEL_TOO_LOW";
                    break;
                } 
                case "x":
                {
                    _loc3 = "EXTRA_DUNGEON_ACCESS_DENIED";
                    break;
                } 
                case "k":
                {
                    _loc3 = "NEED_KEY_ACCESS_DENIED";
                    break;
                } 
                default:
                {
                    com.ankamagames.tools.Logger.out("dofus.aks.Dungeon.onError : erreur inconnue -> " + sExtraData.charAt(0), "dofus.aks.Dungeon::onError", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Dungeon.as", 520);
                    return;
                } 
            } // End of switch
            this.api.ui.loadUIComponent("AskOk", "AksOk", {text: this.api.lang.getText(_loc3), title: this.api.lang.getText("SORRY")});
        } // end if
    };
    _loc1.yes = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "AskYesNoDungeonInvite":
            {
                this.aks.send("wDA" + oEvent.target.params.playerToJoinId + "|" + oEvent.target.params.teamId);
                this.join(oEvent.target.params.playerToJoinId, oEvent.target.params.teamId);
                break;
            } 
            default:
            {
                break;
            } 
        } // End of switch
    };
    _loc1.no = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "AskYesNoDungeonInvite":
            {
                this.aks.send("wDR" + oEvent.target.params.playerToJoinId + "|" + oEvent.target.params.teamId);
                break;
            } 
            default:
            {
                break;
            } 
        } // End of switch
    };
    _loc1.__get__ID = function ()
    {
        return (this._currentDungeonId);
    };
    _loc1.isCustomAnimationFight = function ()
    {
        var _loc2 = this._lastDungeonFight + 1;
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < this._customAnimationFightIds.length)
        {
            com.ankamagames.tools.Logger.out("[WG] _customAnimationFightIds[i] width i = " + _loc3 + " -> " + this._customAnimationFightIds[_loc3], "dofus.aks.Dungeon::isCustomAnimationFight", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Dungeon.as", 571);
            if (this._customAnimationFightIds[_loc3] == _loc2)
            {
                return (true);
            } // end if
        } // end while
        return (false);
    };
    _loc1.isVersusFight = function ()
    {
        var _loc2 = this._lastDungeonFight + 1;
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < this._vsDungeonFightIds.length)
        {
            com.ankamagames.tools.Logger.out("WG [" + this._vsDungeonFightIds[_loc3] + "]", "dofus.aks.Dungeon::isVersusFight", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Dungeon.as", 584);
            if (this._vsDungeonFightIds[_loc3] == _loc2)
            {
                return (true);
            } // end if
        } // end while
        return (false);
    };
    _loc1.addProperty("ID", _loc1.__get__ID, function ()
    {
    });
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

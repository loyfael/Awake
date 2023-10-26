// Action script...

// [Initial MovieClip Action of sprite 20823]
#initclip 88
if (!dofus.aks.GameActions)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.aks)
    {
        _global.dofus.aks = new Object();
    } // end if
    var _loc1 = (_global.dofus.aks.GameActions = function (oAKS, oAPI)
    {
        super.initialize(oAKS, oAPI);
    }).prototype;
    _loc1.sendActions = function (nActionType, aParams)
    {
        var _loc4 = new String();
        this.aks.send("GA" + new ank.utils.ExtendedString(nActionType).addLeftChar("0", 3) + aParams.join(";"));
    };
    _loc1.actionAck = function (nActionID)
    {
        this.aks.send("GKK" + nActionID, false);
    };
    _loc1.actionCancel = function (nActionID, params)
    {
        this.aks.send("GKE" + nActionID + "|" + params, false);
    };
    _loc1.challenge = function (sSpriteID)
    {
        this.sendActions(900, [sSpriteID]);
    };
    _loc1.acceptChallenge = function (sSpriteID)
    {
        this.sendActions(901, [sSpriteID]);
    };
    _loc1.refuseChallenge = function (sSpriteID)
    {
        this.sendActions(902, [sSpriteID]);
    };
    _loc1.joinChallenge = function (nChallengeID, sSpriteID)
    {
        if (sSpriteID == undefined)
        {
            this.sendActions(903, [nChallengeID]);
        }
        else
        {
            this.sendActions(903, [nChallengeID, sSpriteID]);
        } // end else if
    };
    _loc1.attack = function (sSpriteID)
    {
        this.sendActions(906, [sSpriteID]);
    };
    _loc1.attackTaxCollector = function (sSpriteID)
    {
        this.sendActions(909, [sSpriteID]);
    };
    _loc1.mutantAttack = function (sSpriteID)
    {
        this.sendActions(910, [sSpriteID]);
    };
    _loc1.attackPrism = function (sSpriteID)
    {
        this.sendActions(912, [sSpriteID]);
    };
    _loc1.usePrism = function (sSpriteID)
    {
        this.sendActions(512, [sSpriteID]);
    };
    _loc1.acceptMarriage = function (sSpriteID)
    {
        this.sendActions(618, [sSpriteID]);
    };
    _loc1.refuseMarriage = function (sSpriteID)
    {
        this.sendActions(619, [sSpriteID]);
    };
    _loc1.onActionsStart = function (sExtraData)
    {
        var _loc3 = sExtraData;
        if (_loc3 != this.api.datacenter.Player.ID)
        {
            return;
        } // end if
        var _loc4 = this.api.datacenter.Player.data;
        _loc4.GameActionsManager.m_bNextAction = true;
        if (this.api.datacenter.Game.isFight)
        {
            var _loc5 = _loc4.sequencer;
            _loc5.addAction(false, this.api.gfx, this.api.gfx.setInteraction, [ank.battlefield.Constants.INTERACTION_CELL_NONE]);
            _loc5.execute();
        } // end if
    };
    _loc1.onActionsFinish = function (sExtraData)
    {
        var _loc3 = sExtraData.split("|");
        var _loc4 = Number(_loc3[0]);
        var _loc5 = _loc3[1];
        if (_loc5 != this.api.datacenter.Player.ID)
        {
            return;
        } // end if
        var _loc6 = this.api.datacenter.Player.data;
        var _loc7 = _loc6.sequencer;
        _loc6.GameActionsManager.m_bNextAction = false;
        if (this.api.datacenter.Game.isFight)
        {
            _loc7.addAction(false, this.api.kernel.GameManager, this.api.kernel.GameManager.setEnabledInteractionIfICan, [ank.battlefield.Constants.INTERACTION_CELL_RELEASE_OVER_OUT]);
            if (_loc4 != undefined)
            {
                _loc7.addAction(false, this, this.actionAck, [_loc4]);
            } // end if
            _loc7.addAction(false, this.api.kernel.GameManager, this.api.kernel.GameManager.cleanPlayer, [_loc5]);
            this.api.gfx.mapHandler.resetEmptyCells();
            _loc7.execute();
            if (_loc4 == 2)
            {
                this.api.kernel.TipsManager.showNewTip(dofus.managers.TipsManager.TIP_FIGHT_ENDMOVE);
            } // end if
        } // end if
    };
    _loc1.onActions = function (sExtraData)
    {
        var _loc3 = sExtraData.indexOf(";");
        var _loc4 = Number(sExtraData.substring(0, _loc3));
        if (dofus.Constants.SAVING_THE_WORLD)
        {
            if (sExtraData == ";0")
            {
                dofus.SaveTheWorld.getInstance().nextActionIfOnSafe();
            } // end if
        } // end if
        sExtraData = sExtraData.substring(_loc3 + 1);
        _loc3 = sExtraData.indexOf(";");
        var _loc5 = Number(sExtraData.substring(0, _loc3));
        sExtraData = sExtraData.substring(_loc3 + 1);
        _loc3 = sExtraData.indexOf(";");
        var _loc6 = sExtraData.substring(0, _loc3);
        var _loc7 = sExtraData.substring(_loc3 + 1);
        if (_loc6.length == 0)
        {
            _loc6 = this.api.datacenter.Player.ID;
        } // end if
        var _loc9 = this.api.datacenter.Game.currentPlayerID;
        if (this.api.datacenter.Game.isFight && _loc9 != undefined)
        {
            var _loc8 = _loc9;
        }
        else
        {
            _loc8 = _loc6;
        } // end else if
        var _loc10 = this.api.datacenter.Sprites.getItemAt(_loc8);
        var _loc11 = _loc10.sequencer;
        var _loc12 = _loc10.GameActionsManager;
        var _loc13 = true;
        _loc12.onServerResponse(_loc4);
        switch (_loc5)
        {
            case 0:
            {
                return;
            } 
            case 1:
            {
                com.ankamagames.tools.Logger.out("WG GameAction : onActions : 1 ", "dofus.aks.GameActions::onActions", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/GameActions.as", 257);
                var _loc14 = this.api.datacenter.Sprites.getItemAt(_loc6);
                if (!this.api.gfx.isMapBuild)
                {
                    return;
                } // end if
                if (dofus.Constants.USE_JS_LOG && (_global.CONFIG.isNewAccount && !this.api.datacenter.Basics.first_movement))
                {
                    getURL("JavaScript:WriteLog(\'Mouvement\')", "_self");
                    this.api.datacenter.Basics.first_movement = true;
                } // end if
                var _loc15 = ank.battlefield.utils.Compressor.extractFullPath(this.api.gfx.mapHandler, _loc7);
                if (_loc14.hasCarriedParent())
                {
                    _loc15.shift();
                    this.api.gfx.uncarriedSprite(_loc6, _loc15[0], true, _loc11);
                    _loc11.addAction(false, this.api.gfx, this.api.gfx.addSpriteExtraClip, [_loc6, dofus.Constants.CIRCLE_FILE, dofus.Constants.TEAMS_COLOR[_loc14.Team]]);
                } // end if
                var _loc16 = _loc14.forceRun || this.api.datacenter.Game.isInCreaturesMode && _loc14 instanceof dofus.datacenter.Character;
                var _loc17 = _loc14.forceWalk;
                var _loc18 = this.api.datacenter.Game.isFight ? (_loc14 instanceof dofus.datacenter.Character ? (3) : (4)) : (6);
                this.api.gfx.moveSpriteWithUncompressedPath(_loc6, _loc15, _loc11, !this.api.datacenter.Game.isFight, _loc16, _loc17, _loc18);
                if (this.api.datacenter.Game.isRunning)
                {
                    _loc11.addAction(false, this.api.gfx, this.api.gfx.unSelect, [true]);
                } // end if
                _loc11.addAction(false, this.api.gfx, this.api.gfx.addCountdownOverHead, [_loc14]);
                com.ankamagames.tools.Logger.out("WG GameAction : onActions : 2 ", "dofus.aks.GameActions::onActions", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/GameActions.as", 301);
                break;
            } 
            case 2:
            {
                if (_loc11 == undefined)
                {
                    this.api.gfx.clear();
                    this.api.datacenter.clearGame();
                    if (!this.api.kernel.TutorialManager.isTutorialMode)
                    {
                        this.api.ui.loadUIComponent("CenterText", "CenterTextMap", {text: this.api.lang.getText("LOADING_MAP"), timer: 40000}, {bForceLoad: true});
                    } // end if
                }
                else
                {
                    _loc11.addAction(false, this.api.gfx, this.api.gfx.clear);
                    _loc11.addAction(false, this.api.datacenter, this.api.datacenter.clearGame);
                    if (_loc7.length == 0)
                    {
                        _loc11.addAction(true, ank.utils.Timer, ank.utils.Timer.setTimer, [_loc11, "gameactions", _loc11, _loc11.onActionEnd, 50]);
                        _loc11.addAction(false, this.api.ui, this.api.ui.loadUIComponent, ["CenterText", "CenterTextMap", {text: this.api.lang.getText("LOADING_MAP"), timer: 40000}, {bForceLoad: true}]);
                    }
                    else
                    {
                        _loc11.addAction(true, this.api.ui, this.api.ui.loadUIComponent, ["Cinematic", "Cinematic", {file: dofus.Constants.CINEMATICS_PATH + _loc7 + ".swf", sequencer: _loc11}]);
                    } // end else if
                } // end else if
                break;
            } 
            case 4:
            {
                var _loc19 = _loc7.split(",");
                var _loc20 = _loc19[0];
                var _loc21 = Number(_loc19[1]);
                var _loc22 = this.api.datacenter.Sprites.getItemAt(_loc20).mc;
                _loc11.addAction(false, _loc22, _loc22.setPosition, [_loc21]);
                break;
            } 
            case 5:
            case 789:
            {
                var _loc23 = _loc7.split(",");
                var _loc24 = _loc23[0];
                var _loc25 = Number(_loc23[1]);
                if (_loc5 == 5)
                {
                    this.api.gfx.slideSprite(_loc24, _loc25, _loc11);
                }
                else
                {
                    this.api.gfx.slideSprite(_loc24, _loc25, _loc11, "anim2");
                } // end else if
                break;
            } 
            case 11:
            {
                var _loc26 = _loc7.split(",");
                var _loc27 = _loc26[0];
                var _loc28 = Number(_loc26[1]);
                _loc11.addAction(false, this.api.gfx, this.api.gfx.setSpriteDirection, [_loc27, _loc28]);
                break;
            } 
            case 50:
            {
                var _loc29 = _loc7;
                _loc11.addAction(false, this.api.gfx, this.api.gfx.carriedSprite, [_loc29, _loc6]);
                _loc11.addAction(false, this.api.gfx, this.api.gfx.removeSpriteExtraClip, [_loc29]);
                break;
            } 
            case 51:
            {
                var _loc30 = Number(_loc7);
                var _loc31 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc32 = _loc31.carriedChild;
                var _loc33 = new ank.battlefield.datacenter.VisualEffect();
                _loc33.file = dofus.Constants.SPELLS_PATH + "1200.swf";
                _loc33.level = 1;
                _loc33.bInFrontOfSprite = true;
                _loc33.bTryToBypassContainerColor = false;
                this.api.gfx.spriteLaunchCarriedSprite(_loc6, _loc33, _loc30, 31, 10);
                _loc11.addAction(false, this.api.gfx, this.api.gfx.addSpriteExtraClip, [_loc32.id, dofus.Constants.CIRCLE_FILE, dofus.Constants.TEAMS_COLOR[_loc32.Team]]);
                break;
            } 
            case 52:
            {
                var _loc34 = _loc7.split(",");
                var _loc35 = _loc34[0];
                var _loc36 = this.api.datacenter.Sprites.getItemAt(_loc35);
                var _loc37 = Number(_loc34[1]);
                _loc11.addAction(false, this.api.gfx, this.api.gfx.uncarriedSprite, [_loc35, _loc37, false]);
                _loc11.addAction(false, this.api.gfx, this.api.gfx.addSpriteExtraClip, [_loc35, dofus.Constants.CIRCLE_FILE, dofus.Constants.TEAMS_COLOR[_loc36.Team]]);
                break;
            } 
            case 100:
            case 108:
            case 110:
            {
                var _loc38 = _loc7.split(",");
                var _loc39 = _loc38[0];
                var _loc40 = this.api.datacenter.Sprites.getItemAt(_loc39);
                var _loc41 = Number(_loc38[1]);
                if (_loc41 != 0)
                {
                    var _loc42 = _loc41 < 0 ? ("LOST_LP") : ("WIN_LP");
                    _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText(_loc42, [_loc40.name, Math.abs(_loc41)]), "INFO_FIGHT_CHAT"]);
                    _loc11.addAction(false, _loc40, _loc40.updateLP, [_loc41]);
                    _loc11.addAction(false, this.api.ui.getUIComponent("Timeline").timelineControl, this.api.ui.getUIComponent("Timeline").timelineControl.updateCharacters);
                }
                else
                {
                    _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("NOCHANGE_LP", [_loc40.name]), "INFO_FIGHT_CHAT"]);
                } // end else if
                break;
            } 
            case 101:
            case 102:
            case 111:
            case 120:
            case 168:
            {
                var _loc43 = _loc7.split(",");
                var _loc44 = this.api.datacenter.Sprites.getItemAt(_loc43[0]);
                var _loc45 = Number(_loc43[1]);
                if (_loc45 == 0)
                {
                    break;
                } // end if
                if (_loc5 == 101 || (_loc5 == 111 || (_loc5 == 120 || _loc5 == 168)))
                {
                    var _loc46 = _loc45 < 0 ? ("LOST_AP") : ("WIN_AP");
                    _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText(_loc46, [_loc44.name, Math.abs(_loc45)]), "INFO_FIGHT_CHAT"]);
                } // end if
                _loc11.addAction(false, _loc44, _loc44.updateAP, [_loc45, _loc5 == 102]);
                break;
            } 
            case 127:
            case 129:
            case 128:
            case 78:
            case 169:
            {
                var _loc47 = _loc7.split(",");
                var _loc48 = _loc47[0];
                var _loc49 = Number(_loc47[1]);
                var _loc50 = this.api.datacenter.Sprites.getItemAt(_loc48);
                if (_loc49 == 0)
                {
                    break;
                } // end if
                if (_loc5 == 127 || (_loc5 == 128 || (_loc5 == 169 || _loc5 == 78)))
                {
                    var _loc51 = _loc49 < 0 ? ("LOST_MP") : ("WIN_MP");
                    _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText(_loc51, [_loc50.name, Math.abs(_loc49)]), "INFO_FIGHT_CHAT"]);
                } // end if
                _loc11.addAction(false, _loc50, _loc50.updateMP, [_loc49, _loc5 == 129]);
                break;
            } 
            case 103:
            {
                var _loc52 = _loc7;
                var _loc53 = this.api.datacenter.Sprites.getItemAt(_loc52);
                var _loc54 = _loc53.mc;
                com.ankamagames.tools.Logger.out("[mort] idSprite : " + _loc52 + "  mc :" + _loc54, "dofus.aks.GameActions::onActions", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/GameActions.as", 547);
                if (_loc54 == undefined)
                {
                    return;
                } // end if
                var _loc55 = _loc53.sex == 1 ? ("f") : ("m");
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, ank.utils.PatternDecoder.combine(this.api.lang.getText("DIE", [_loc53.name]), _loc55, true), "INFO_FIGHT_CHAT"]);
                var _loc56 = this.api.ui.getUIComponent("Timeline");
                _loc11.addAction(false, _loc56, _loc56.hideItem, [_loc52]);
                _loc11.addAction(false, this.api.gfx, this.api.gfx.removeCountdownOverHead, [_loc53]);
                _loc11.addAction(true, _loc54, _loc54.setAnim, ["Die"], 1500);
                if (_loc53.hasCarriedChild())
                {
                    this.api.gfx.uncarriedSprite(_loc53.carriedSprite.id, _loc53.cellNum, false, _loc11);
                    _loc11.addAction(false, this.api.gfx, this.api.gfx.addSpriteExtraClip, [_loc53.carriedChild.id, dofus.Constants.CIRCLE_FILE, dofus.Constants.TEAMS_COLOR[_loc53.carriedChild.Team]]);
                } // end if
                _loc11.addAction(false, _loc54, _loc54.clear);
                if (this.api.datacenter.Player.summonedCreaturesID[_loc52])
                {
                    --this.api.datacenter.Player.SummonedCreatures;
                    delete this.api.datacenter.Player.summonedCreaturesID[_loc52];
                    this.api.ui.getUIComponent("Banner").shortcuts.setSpellStateOnAllContainers();
                } // end if
                if (_loc52 == this.api.datacenter.Player.ID)
                {
                    if (_loc6 == this.api.datacenter.Player.ID)
                    {
                        this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_KILLED_HIMSELF);
                    }
                    else
                    {
                        var _loc57 = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID).Team;
                        var _loc58 = this.api.datacenter.Sprites.getItemAt(_global.parseInt(_loc6)).Team;
                        if (_loc57 == _loc58)
                        {
                            this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_KILLED_BY_ALLY);
                        }
                        else
                        {
                            this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_KILLED_BY_ENEMY);
                        } // end else if
                    } // end else if
                }
                else if (_loc6 == this.api.datacenter.Player.ID)
                {
                    var _loc59 = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID).Team;
                    var _loc60 = this.api.datacenter.Sprites.getItemAt(_global.parseInt(_loc52)).Team;
                    if (_loc59 == _loc60)
                    {
                        this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_KILL_ALLY);
                    }
                    else
                    {
                        this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_KILL_ENEMY);
                    } // end else if
                } // end else if
                break;
            } 
            case 104:
            {
                var _loc61 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc62 = _loc61.mc;
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("CANT_MOVEOUT"), "INFO_FIGHT_CHAT"]);
                _loc11.addAction(false, _loc62, _loc62.setAnim, ["Hit"]);
                break;
            } 
            case 105:
            case 164:
            {
                var _loc63 = _loc7.split(",");
                var _loc64 = _loc63[0];
                var _loc65 = _loc5 == 164 ? (_loc63[1] + "%") : (_loc63[1]);
                var _loc66 = this.api.datacenter.Sprites.getItemAt(_loc64);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("REDUCE_DAMAGES", [_loc66.name, _loc65]), "INFO_FIGHT_CHAT"]);
                break;
            } 
            case 106:
            {
                var _loc67 = _loc7.split(",");
                var _loc68 = _loc67[0];
                var _loc69 = _loc67[1] == "1";
                var _loc70 = this.api.datacenter.Sprites.getItemAt(_loc68);
                var _loc71 = _loc69 ? (this.api.lang.getText("RETURN_SPELL_OK", [_loc70.name])) : (this.api.lang.getText("RETURN_SPELL_NO", [_loc70.name]));
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, _loc71, "INFO_FIGHT_CHAT"]);
                break;
            } 
            case 107:
            {
                var _loc72 = _loc7.split(",");
                var _loc73 = _loc72[0];
                var _loc74 = _loc72[1];
                var _loc75 = this.api.datacenter.Sprites.getItemAt(_loc73);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("RETURN_DAMAGES", [_loc75.name, _loc74]), "INFO_FIGHT_CHAT"]);
                break;
            } 
            case 130:
            {
                var _loc76 = Number(_loc7);
                var _loc77 = this.api.datacenter.Sprites.getItemAt(_loc6);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, ank.utils.PatternDecoder.combine(this.api.lang.getText("STEAL_GOLD", [_loc77.name, _loc76]), "m", _loc76 < 2), "INFO_FIGHT_CHAT"]);
                break;
            } 
            case 132:
            {
                var _loc78 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc79 = this.api.datacenter.Sprites.getItemAt(_loc7);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("REMOVE_ALL_EFFECTS", [_loc78.name, _loc79.name]), "INFO_FIGHT_CHAT"]);
                _loc11.addAction(false, _loc79.CharacteristicsManager, _loc79.CharacteristicsManager.terminateAllEffects);
                _loc11.addAction(false, _loc79.EffectsManager, _loc79.EffectsManager.terminateAllEffects);
                break;
            } 
            case 140:
            {
                var _loc80 = Number(_loc7);
                var _loc81 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc82 = this.api.datacenter.Sprites.getItemAt(_loc7);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("A_PASS_NEXT_TURN", [_loc82.name]), "INFO_FIGHT_CHAT"]);
                break;
            } 
            case 151:
            {
                var _loc83 = Number(_loc7);
                var _loc84 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc85 = _loc83 == -1 ? (this.api.lang.getText("CANT_DO_INVISIBLE_OBSTACLE")) : (this.api.lang.getText("INVISIBLE_OBSTACLE", [_loc84.name, this.api.lang.getSpellText(_loc83).n]));
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, _loc85, "ERROR_CHAT"]);
                break;
            } 
            case 166:
            {
                var _loc86 = _loc7.split(",");
                var _loc87 = Number(_loc86[0]);
                var _loc88 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc89 = Number(_loc86[1]);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("RETURN_AP", [_loc88.name, _loc89]), "INFO_FIGHT_CHAT"]);
                break;
            } 
            case 164:
            {
                var _loc90 = _loc7.split(",");
                var _loc91 = Number(_loc90[0]);
                var _loc92 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc93 = Number(_loc90[1]);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("REDUCE_LP_DAMAGES", [_loc92.name, _loc93]), "INFO_FIGHT_CHAT"]);
                break;
            } 
            case 780:
            {
                if (_loc6 == this.api.datacenter.Player.ID)
                {
                    ++this.api.datacenter.Player.SummonedCreatures;
                    var _loc94 = _global.parseInt(_loc7.split(";")[3]);
                    this.api.datacenter.Player.summonedCreaturesID[_loc94] = true;
                } // end if
            } 
            case 147:
            {
                var _loc95 = _loc7.split(";")[3];
                var _loc96 = this.api.ui.getUIComponent("Timeline");
                _loc11.addAction(false, _loc96, _loc96.showItem, [_loc95]);
                _loc11.addAction(false, this.aks.Game, this.aks.Game.onMovement, [_loc7, true]);
                break;
            } 
            case 180:
            case 181:
            case 1008:
            {
                var _loc97 = _loc7.split(";")[3];
                if (_loc6 == this.api.datacenter.Player.ID)
                {
                    ++this.api.datacenter.Player.SummonedCreatures;
                    this.api.datacenter.Player.summonedCreaturesID[_loc97] = true;
                } // end if
                _loc11.addAction(false, this.aks.Game, this.aks.Game.onMovement, [_loc7, true]);
                break;
            } 
            case 185:
            {
                _loc11.addAction(false, this.aks.Game, this.aks.Game.onMovement, [_loc7]);
                break;
            } 
            case 117:
            case 116:
            case 115:
            case 122:
            case 112:
            case 142:
            case 145:
            case 138:
            case 160:
            case 161:
            case 114:
            case 182:
            case 118:
            case 157:
            case 123:
            case 152:
            case 126:
            case 155:
            case 119:
            case 154:
            case 124:
            case 156:
            case 125:
            case 153:
            case 160:
            case 161:
            case 162:
            case 163:
            case 606:
            case 607:
            case 608:
            case 609:
            case 610:
            case 611:
            {
                var _loc98 = _loc7.split(",");
                var _loc99 = _loc98[0];
                var _loc100 = this.api.datacenter.Sprites.getItemAt(_loc99);
                var _loc101 = Number(_loc98[1]);
                var _loc102 = Number(_loc98[2]);
                var _loc103 = _loc100.CharacteristicsManager;
                var _loc104 = new dofus.datacenter.Effect(_loc5, _loc101, undefined, undefined, undefined, _loc102);
                _loc11.addAction(false, _loc103, _loc103.addEffect, [_loc104]);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, "<b>" + _loc100.name + "</b> : " + _loc104.description, "INFO_FIGHT_CHAT"]);
                break;
            } 
            case 149:
            {
                var _loc105 = _loc7.split(",");
                var _loc106 = _loc105[0];
                var _loc107 = this.api.datacenter.Sprites.getItemAt(_loc106);
                var _loc108 = Number(_loc105[1]);
                var _loc109 = Number(_loc105[2]);
                var _loc110 = Number(_loc105[3]);
                var _loc111 = Number(_loc105[4]);
                var _loc112 = Number(_loc105[5]);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("GFX", [_loc107.name]), "INFO_FIGHT_CHAT"]);
                var _loc113 = _loc107.CharacteristicsManager;
                var _loc114 = new dofus.datacenter.Effect(_loc5, _loc109, _loc108, _loc111, String(_loc110), _loc112);
                _loc11.addAction(false, _loc113, _loc113.addEffect, [_loc114]);
                break;
            } 
            case 150:
            {
                var _loc115 = _loc7.split(",");
                var _loc116 = _loc115[0];
                var _loc117 = this.api.datacenter.Sprites.getItemAt(_loc116);
                var _loc118 = Number(_loc115[1]);
                if (_loc118 > 0)
                {
                    _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("INVISIBILITY", [_loc117.name]), "INFO_FIGHT_CHAT"]);
                    var _loc119 = _loc117.CharacteristicsManager;
                    var _loc120 = new dofus.datacenter.Effect(_loc5, 1, undefined, undefined, undefined, _loc118);
                    _loc11.addAction(false, _loc119, _loc119.addEffect, [_loc120]);
                }
                else
                {
                    _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("VISIBILITY", [_loc117.name]), "INFO_FIGHT_CHAT"]);
                    this.api.gfx.hideSprite(_loc116, false);
                    this.api.gfx.setSpriteAlpha(_loc116, 100);
                } // end else if
                break;
            } 
            case 165:
            {
                var _loc121 = _loc7.split(",");
                var _loc122 = _loc121[0];
                var _loc123 = Number(_loc121[1]);
                var _loc124 = Number(_loc121[2]);
                var _loc125 = Number(_loc121[3]);
                break;
            } 
            case 200:
            {
                var _loc126 = _loc7.split(",");
                var _loc127 = Number(_loc126[0]);
                var _loc128 = Number(_loc126[1]);
                _loc11.addAction(false, this.api.gfx, this.api.gfx.setObject2Frame, [_loc127, _loc128]);
                break;
            } 
            case 208:
            {
                com.ankamagames.tools.Logger.out("effect 208", "dofus.aks.GameActions::onActions", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/GameActions.as", 997);
                var _loc129 = _loc7.split(",");
                var _loc130 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc131 = Number(_loc129[0]);
                var _loc132 = _loc129[1];
                var _loc133 = Number(_loc129[2]);
                var _loc134 = _global.isNaN(Number(_loc129[3])) ? (String(_loc129[3]).split("~")) : ("anim" + _loc129[3]);
                var _loc135 = _loc129[4] != undefined ? (Number(_loc129[4])) : (1);
                var _loc136 = new ank.battlefield.datacenter.VisualEffect();
                _loc136.file = dofus.Constants.SPELLS_PATH + _loc132 + ".swf";
                _loc136.level = _loc135;
                _loc136.bInFrontOfSprite = true;
                _loc136.bTryToBypassContainerColor = true;
                this.api.gfx.spriteLaunchVisualEffect(_loc6, _loc136, _loc131, _loc133, _loc134);
                break;
            } 
            case 228:
            {
                var _loc137 = _loc7.split(",");
                var _loc138 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc139 = Number(_loc137[0]);
                var _loc140 = _loc137[1];
                var _loc141 = Number(_loc137[2]);
                var _loc142 = _global.isNaN(Number(_loc137[3])) ? (String(_loc137[3]).split("~")) : ("anim" + _loc137[3]);
                var _loc143 = _loc137[4] != undefined ? (Number(_loc137[4])) : (1);
                var _loc144 = new ank.battlefield.datacenter.VisualEffect();
                _loc144.file = dofus.Constants.SPELLS_PATH + _loc140 + ".swf";
                _loc144.level = _loc143;
                _loc144.bInFrontOfSprite = true;
                _loc144.bTryToBypassContainerColor = false;
                this.api.gfx.spriteLaunchVisualEffect(_loc6, _loc144, _loc139, _loc141, _loc142);
                break;
            } 
            case 300:
            {
                var _loc145 = _loc7.split(",");
                var _loc146 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc147 = Number(_loc145[0]);
                var _loc148 = Number(_loc145[1]);
                var _loc149 = _loc145[2];
                var _loc150 = Number(_loc145[3]);
                var _loc151 = Number(_loc145[4]);
                var _loc152 = _global.isNaN(Number(_loc145[5])) ? (String(_loc145[5]).split("~")) : (_loc145[5] == "-1" || _loc145[5] == "-2" ? (undefined) : ("anim" + _loc145[5]));
                com.ankamagames.tools.Logger.out("WG On lance un sort ID " + _loc147 + " cell " + _loc148 + " idAnim " + _loc149 + " level " + _loc150 + " effect " + _loc151 + " spriteAnim = " + _loc152, "dofus.aks.GameActions::onActions", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/GameActions.as", 1061);
                var _loc153 = false;
                if (Number(_loc145[5]) == -2)
                {
                    _loc153 = true;
                } // end if
                var _loc154 = _loc145[6] == "1" ? (true) : (false);
                var _loc155 = new ank.battlefield.datacenter.VisualEffect();
                _loc155.file = dofus.Constants.SPELLS_PATH + _loc149 + ".swf";
                _loc155.level = _loc150;
                _loc155.bInFrontOfSprite = _loc154;
                _loc155.params = new dofus.datacenter.Spell(_loc147, _loc150).elements;
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("HAS_LAUNCH_SPELL", [_loc146.name, this.api.lang.getSpellText(_loc147).n]), "INFO_FIGHT_CHAT"]);
                if (_loc152 != undefined || _loc153)
                {
                    this.api.gfx.spriteLaunchVisualEffect(_loc6, _loc155, _loc148, _loc151, _loc152);
                } // end if
                if (_loc6 == this.api.datacenter.Player.ID)
                {
                    var _loc156 = this.api.datacenter.Player.SpellsManager;
                    var _loc157 = this.api.gfx.mapHandler.getCellData(_loc148).spriteOnID;
                    var _loc158 = new dofus.datacenter.LaunchedSpell(_loc147, _loc157);
                    _loc156.addLaunchedSpell(_loc158);
                } // end if
                break;
            } 
            case 301:
            {
                var _loc159 = Number(_loc7);
                _loc11.addAction(false, this.api.sounds.events, this.api.sounds.events.onGameCriticalHit, []);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, "(" + this.api.lang.getText("CRITICAL_HIT") + ")", "INFO_FIGHT_CHAT"]);
                _loc11.addAction(false, this.api.gfx, this.api.gfx.addSpriteExtraClipOnTimer, [_loc6, dofus.Constants.CRITICAL_HIT_XTRA_FILE, undefined, true, dofus.Constants.CRITICAL_HIT_DURATION]);
                if (_loc6 == this.api.datacenter.Player.ID)
                {
                    this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_CC_OWNER);
                }
                else
                {
                    var _loc160 = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID).Team;
                    var _loc161 = this.api.datacenter.Sprites.getItemAt(_global.parseInt(_loc6)).Team;
                    if (_loc160 == _loc161)
                    {
                        this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_CC_ALLIED);
                    }
                    else
                    {
                        this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_CC_ENEMY);
                    } // end else if
                } // end else if
                break;
            } 
            case 302:
            {
                var _loc162 = Number(_loc7);
                var _loc163 = this.api.datacenter.Sprites.getItemAt(_loc6);
                _loc11.addAction(false, this.api.sounds.events, this.api.sounds.events.onGameCriticalMiss, []);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("HAS_LAUNCH_SPELL", [_loc163.name, this.api.lang.getSpellText(_loc162).n]), "INFO_FIGHT_CHAT"]);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, "(" + this.api.lang.getText("CRITICAL_MISS") + ")", "INFO_FIGHT_CHAT"]);
                _loc11.addAction(false, this.api.gfx, this.api.gfx.addSpriteBubble, [_loc6, this.api.lang.getText("CRITICAL_MISS")]);
                if (_loc6 == this.api.datacenter.Player.ID)
                {
                    this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_EC_OWNER);
                }
                else
                {
                    var _loc164 = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID).Team;
                    var _loc165 = this.api.datacenter.Sprites.getItemAt(_global.parseInt(_loc6)).Team;
                    if (_loc164 == _loc165)
                    {
                        this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_EC_ALLIED);
                    }
                    else
                    {
                        this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_EC_ENEMY);
                    } // end else if
                } // end else if
                break;
            } 
            case 303:
            {
                var _loc166 = _loc7.split(",");
                var _loc167 = Number(_loc166[0]);
                var _loc168 = _loc166[1];
                var _loc169 = Number(_loc166[2]);
                var _loc170 = _loc166[3] == "1" ? (true) : (false);
                var _loc171 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc172 = _loc171.mc;
                var _loc173 = _loc171.ToolAnimation;
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("HAS_ATTACK_CC", [_loc171.name]), "INFO_FIGHT_CHAT"]);
                if (_loc168 == undefined)
                {
                    _loc11.addAction(false, this.api.gfx, this.api.gfx.autoCalculateSpriteDirection, [_loc6, _loc167]);
                    _loc11.addAction(true, this.api.gfx, this.api.gfx.setSpriteAnim, [_loc6, _loc173]);
                }
                else
                {
                    var _loc174 = _loc171.accessories[0].unicID;
                    var _loc175 = _loc171.Guild;
                    var _loc176 = new ank.battlefield.datacenter.VisualEffect();
                    _loc176.file = dofus.Constants.SPELLS_PATH + _loc168 + ".swf";
                    _loc176.level = 1;
                    _loc176.bInFrontOfSprite = _loc170;
                    _loc176.params = new dofus.datacenter.CloseCombat(new dofus.datacenter.Item(undefined, _loc174), _loc175).elements;
                    this.api.gfx.spriteLaunchVisualEffect(_loc6, _loc176, _loc167, _loc169, _loc173);
                } // end else if
                break;
            } 
            case 304:
            {
                var _loc177 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc178 = _loc177.mc;
                _loc11.addAction(false, this.api.sounds.events, this.api.sounds.events.onGameCriticalHit, []);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, "(" + this.api.lang.getText("CRITICAL_HIT") + ")", "INFO_FIGHT_CHAT"]);
                _loc11.addAction(false, this.api.gfx, this.api.gfx.addSpriteExtraClipOnTimer, [_loc6, dofus.Constants.CRITICAL_HIT_XTRA_FILE, undefined, true, dofus.Constants.CRITICAL_HIT_DURATION]);
                if (_loc6 == this.api.datacenter.Player.ID)
                {
                    this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_CC_OWNER);
                }
                else
                {
                    var _loc179 = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID).Team;
                    var _loc180 = this.api.datacenter.Sprites.getItemAt(_global.parseInt(_loc6)).Team;
                    if (_loc179 == _loc180)
                    {
                        this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_CC_ALLIED);
                    }
                    else
                    {
                        this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_CC_ENEMY);
                    } // end else if
                } // end else if
                break;
            } 
            case 305:
            {
                var _loc181 = this.api.datacenter.Sprites.getItemAt(_loc6);
                _loc11.addAction(false, this.api.sounds.events, this.api.sounds.events.onGameCriticalMiss, []);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("HAS_ATTACK_CC", [_loc181.name]), "INFO_FIGHT_CHAT"]);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, "(" + this.api.lang.getText("CRITICAL_MISS") + ")", "INFO_FIGHT_CHAT"]);
                _loc11.addAction(false, this.api.gfx, this.api.gfx.addSpriteBubble, [_loc6, this.api.lang.getText("CRITICAL_MISS")]);
                if (_loc6 == this.api.datacenter.Player.ID)
                {
                    this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_EC_OWNER);
                }
                else
                {
                    var _loc182 = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID).Team;
                    var _loc183 = this.api.datacenter.Sprites.getItemAt(_global.parseInt(_loc6)).Team;
                    if (_loc182 == _loc183)
                    {
                        this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_EC_ALLIED);
                    }
                    else
                    {
                        this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_EC_ENEMY);
                    } // end else if
                } // end else if
                break;
            } 
            case 306:
            {
                var _loc184 = _loc7.split(",");
                var _loc185 = Number(_loc184[0]);
                var _loc186 = Number(_loc184[1]);
                var _loc187 = _loc184[2];
                var _loc188 = Number(_loc184[3]);
                var _loc189 = _loc184[4] == "1" ? (true) : (false);
                var _loc190 = Number(_loc184[5]);
                var _loc191 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc192 = this.api.datacenter.Sprites.getItemAt(_loc190);
                var _loc193 = new ank.battlefield.datacenter.VisualEffect();
                _loc193.id = _loc185;
                _loc193.file = dofus.Constants.SPELLS_PATH + _loc187 + ".swf";
                _loc193.level = _loc188;
                _loc193.bInFrontOfSprite = _loc189;
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("HAS_START_TRAP", [_loc191.name, this.api.lang.getSpellText(_loc193.id).n, _loc192.name]), "INFO_FIGHT_CHAT"]);
                _loc11.addAction(false, this.api.gfx, this.api.gfx.addVisualEffectOnSprite, [_loc190, _loc193, _loc186, 11], 1000);
                break;
            } 
            case 307:
            {
                var _loc194 = _loc7.split(",");
                var _loc195 = Number(_loc194[0]);
                var _loc196 = Number(_loc194[1]);
                var _loc197 = Number(_loc194[3]);
                var _loc198 = Number(_loc194[5]);
                var _loc199 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc200 = this.api.datacenter.Sprites.getItemAt(_loc198);
                var _loc201 = new dofus.datacenter.Spell(_loc195, _loc197);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("HAS_START_GLIPH", [_loc199.name, _loc201.name, _loc200.name]), "INFO_FIGHT_CHAT"]);
                break;
            } 
            case 308:
            {
                var _loc202 = _loc7.split(",");
                var _loc203 = this.api.datacenter.Sprites.getItemAt(Number(_loc202[0]));
                var _loc204 = Number(_loc202[1]);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("HAS_DODGE_AP", [_loc203.name, _loc204]), "INFO_FIGHT_CHAT"]);
                break;
            } 
            case 309:
            {
                var _loc205 = _loc7.split(",");
                var _loc206 = this.api.datacenter.Sprites.getItemAt(Number(_loc205[0]));
                var _loc207 = Number(_loc205[1]);
                _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, this.api.lang.getText("HAS_DODGE_MP", [_loc206.name, _loc207]), "INFO_FIGHT_CHAT"]);
                break;
            } 
            case 501:
            {
                var _loc208 = _loc7.split(",");
                var _loc209 = _loc208[0];
                var _loc210 = Number(_loc208[1]);
                var _loc211 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc212 = _loc208[2] == undefined ? (_loc211.ToolAnimation) : ("anim" + _loc208[2]);
                _loc11.addAction(false, this.api.gfx, this.api.gfx.autoCalculateSpriteDirection, [_loc6, _loc209]);
                _loc11.addAction(_loc6 == this.api.datacenter.Player.ID, this.api.gfx, this.api.gfx.setSpriteLoopAnim, [_loc6, _loc212, _loc210], _loc210);
                break;
            } 
            case 617:
            {
                _loc13 = false;
                var _loc213 = _loc7.split(",");
                var _loc214 = this.api.datacenter.Sprites.getItemAt(Number(_loc213[0]));
                var _loc215 = this.api.datacenter.Sprites.getItemAt(Number(_loc213[1]));
                var _loc216 = _loc213[2];
                this.api.gfx.addSpriteBubble(_loc216, this.api.lang.getText("A_ASK_MARRIAGE_B", [_loc214.name, _loc215.name]));
                if (_loc214.id == this.api.datacenter.Player.ID)
                {
                    this.api.kernel.showMessage(this.api.lang.getText("MARRIAGE"), this.api.lang.getText("A_ASK_MARRIAGE_B", [_loc214.name, _loc215.name]), "CAUTION_YESNO", {name: "Marriage", listener: this, params: {spriteID: _loc214.id, refID: _loc6}});
                } // end if
                break;
            } 
            case 618:
            case 619:
            {
                _loc13 = false;
                var _loc217 = _loc7.split(",");
                var _loc218 = this.api.datacenter.Sprites.getItemAt(Number(_loc217[0]));
                var _loc219 = this.api.datacenter.Sprites.getItemAt(Number(_loc217[1]));
                var _loc220 = _loc217[2];
                var _loc221 = _loc5 == 618 ? ("A_MARRIED_B") : ("A_NOT_MARRIED_B");
                this.api.gfx.addSpriteBubble(_loc220, this.api.lang.getText(_loc221, [_loc218.name, _loc219.name]));
                break;
            } 
            case 900:
            {
                _loc13 = false;
                var _loc222 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc223 = this.api.datacenter.Sprites.getItemAt(Number(_loc7));
                if (_loc222 == undefined || (_loc223 == undefined || (this.api.ui.getUIComponent("AskCancelChallenge") != undefined || this.api.ui.getUIComponent("AskYesNoIgnoreChallenge") != undefined)))
                {
                    this.refuseChallenge(_loc6);
                    return;
                } // end if
                this.api.kernel.showMessage(undefined, this.api.lang.getText("A_CHALENGE_B", [this.api.kernel.ChatManager.getLinkName(_loc222.name), this.api.kernel.ChatManager.getLinkName(_loc223.name)]), "INFO_CHAT");
                if (_loc222.id == this.api.datacenter.Player.ID)
                {
                    this.api.kernel.showMessage(this.api.lang.getText("CHALENGE"), this.api.lang.getText("YOU_CHALENGE_B", [_loc223.name]), "INFO_CANCEL", {name: "Challenge", listener: this, params: {spriteID: _loc222.id}});
                } // end if
                if (_loc223.id == this.api.datacenter.Player.ID)
                {
                    if (this.api.kernel.ChatManager.isBlacklisted(_loc222.name))
                    {
                        this.refuseChallenge(_loc222.id);
                        return;
                    } // end if
                    this.api.kernel.showMessage(this.api.lang.getText("CHALENGE"), this.api.lang.getText("A_CHALENGE_YOU", [_loc222.name]), "CAUTION_YESNOIGNORE", {name: "Challenge", player: _loc222.name, listener: this, params: {spriteID: _loc222.id, player: _loc222.name}});
                    this.api.sounds.events.onGameInvitation();
                } // end if
                break;
            } 
            case 901:
            {
                _loc13 = false;
                if (_loc6 == this.api.datacenter.Player.ID || Number(_loc7) == this.api.datacenter.Player.ID)
                {
                    this.api.ui.unloadUIComponent("AskCancelChallenge");
                } // end if
                break;
            } 
            case 902:
            {
                _loc13 = false;
                this.api.ui.unloadUIComponent("AskYesNoIgnoreChallenge");
                this.api.ui.unloadUIComponent("AskCancelChallenge");
                break;
            } 
            case 903:
            {
                _loc13 = false;
                switch (_loc7)
                {
                    case "c":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("CHALENGE_FULL"), "ERROR_CHAT");
                        break;
                    } 
                    case "t":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("TEAM_FULL"), "ERROR_CHAT");
                        break;
                    } 
                    case "a":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("TEAM_DIFFERENT_ALIGNMENT"), "ERROR_CHAT");
                        break;
                    } 
                    case "g":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_DO_BECAUSE_GUILD"), "ERROR_CHAT");
                        break;
                    } 
                    case "l":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_DO_TOO_LATE"), "ERROR_CHAT");
                        break;
                    } 
                    case "m":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_U_ARE_MUTANT"), "ERROR_CHAT");
                        break;
                    } 
                    case "p":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_BECAUSE_MAP"), "ERROR_CHAT");
                        break;
                    } 
                    case "r":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_BECAUSE_ON_RESPAWN"), "ERROR_CHAT");
                        break;
                    } 
                    case "o":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_YOU_R_OCCUPED"), "ERROR_CHAT");
                        break;
                    } 
                    case "z":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_YOU_OPPONENT_OCCUPED"), "ERROR_CHAT");
                        break;
                    } 
                    case "h":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_FIGHT"), "ERROR_CHAT");
                        break;
                    } 
                    case "i":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_FIGHT_NO_RIGHTS"), "ERROR_CHAT");
                        break;
                    } 
                    case "s":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("ERROR_21"), "ERROR_CHAT");
                        break;
                    } 
                    case "n":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("SUBSCRIPTION_OUT"), "ERROR_CHAT");
                        break;
                    } 
                    case "b":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("A_NOT_SUBSCRIB"), "ERROR_CHAT");
                        break;
                    } 
                    case "f":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("TEAM_CLOSED"), "ERROR_CHAT");
                        break;
                    } 
                    case "d":
                    {
                        this.api.kernel.showMessage(undefined, this.api.lang.getText("NO_ZOMBIE_ALLOWED"), "ERROR_CHAT");
                        break;
                    } 
                } // End of switch
                break;
            } 
            case 905:
            {
                this.api.ui.loadUIComponent("CenterText", "CenterText", {text: this.api.lang.getText("YOU_ARE_ATTAC"), background: true, timer: 2000}, {bForceLoad: true});
                break;
            } 
            case 906:
            {
                var _loc224 = _loc7;
                var _loc225 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc226 = this.api.datacenter.Sprites.getItemAt(_loc224);
                this.api.kernel.showMessage(undefined, this.api.lang.getText("A_ATTACK_B", [_loc225.name, _loc226.name]), "INFO_CHAT");
                if (_loc224 == this.api.datacenter.Player.ID)
                {
                    this.api.ui.loadUIComponent("CenterText", "CenterText", {text: this.api.lang.getText("YOU_ARE_ATTAC"), background: true, timer: 2000}, {bForceLoad: true});
                    this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_AGRESSED);
                }
                else
                {
                    this.api.kernel.SpeakingItemsManager.triggerEvent(dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_AGRESS);
                } // end else if
                break;
            } 
            case 909:
            {
                var _loc227 = _loc7;
                var _loc228 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc229 = this.api.datacenter.Sprites.getItemAt(_loc227);
                this.api.kernel.showMessage(undefined, this.api.lang.getText("A_ATTACK_B", [_loc228.name, _loc229.name]), "INFO_CHAT");
                break;
            } 
            case 950:
            {
                var _loc230 = _loc7.split(",");
                var _loc231 = _loc230[0];
                var _loc232 = this.api.datacenter.Sprites.getItemAt(_loc231);
                var _loc233 = Number(_loc230[1]);
                var _loc234 = Number(_loc230[2]) == 1 ? (true) : (false);
                if (_loc233 == 8 && !_loc234)
                {
                    this.api.gfx.uncarriedSprite(_loc6, _loc232._oData.cellNum, true, _loc11);
                } // end if
                _loc11.addAction(false, _loc232, _loc232.setState, [_loc233, _loc234]);
                if (!dofus.Constants.WG)
                {
                    var _loc235 = this.api.lang.getText(_loc234 ? ("ENTER_STATE") : ("EXIT_STATE"), [_loc232.name, this.api.lang.getStateText(_loc233)]);
                    _loc11.addAction(false, this.api.kernel, this.api.kernel.showMessage, [undefined, _loc235, "INFO_FIGHT_CHAT"]);
                } // end if
                break;
            } 
            case 998:
            {
                var _loc236 = sExtraData.split(",");
                var _loc237 = _loc236[0];
                var _loc238 = _loc236[0];
                var _loc239 = _loc236[2];
                var _loc240 = _loc236[3];
                var _loc241 = _loc236[4];
                var _loc242 = _loc236[6];
                var _loc243 = _loc236[7];
                var _loc244 = new dofus.datacenter.Effect(Number(_loc238), Number(_loc239), Number(_loc240), Number(_loc241), "", Number(_loc242), Number(_loc243));
                var _loc245 = this.api.datacenter.Sprites.getItemAt(_loc237);
                _loc245.EffectsManager.addEffect(_loc244);
                break;
            } 
            case 1012:
            {
                var _loc246 = this.api.datacenter.Sprites.getItemAt(_loc6);
                var _loc247 = sExtraData.split(";")[1];
                com.ankamagames.tools.Logger.out("WG DEPRECATED On passe " + "-1,-1,-1,-1,-1,-1,-1,-1," + _loc247 + " à set SpriteAccessories", "dofus.aks.GameActions::onActions", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/GameActions.as", 1636);
                _loc11.addAction(false, _loc246, this.api.kernel.CharactersManager.updateSpriteAccessories, [(ank.battlefield.datacenter.Sprite)(_loc246), _loc247, 8, 10]);
                break;
            } 
            case 1013:
            {
                var _loc248 = this.api.datacenter.Sprites.getItemAt(_loc6);
                com.ankamagames.tools.Logger.out("WG DEPRECATED On passe " + "-1,-1,-1,-1,-1,-1,-1,-1,-1 à set SpriteAccessories", "dofus.aks.GameActions::onActions", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/GameActions.as", 1644);
                this.api.kernel.CharactersManager.updateSpriteAccessories((ank.battlefield.datacenter.Sprite)(_loc248), "-1", 8, 10);
                break;
            } 
            case 1500:
            {
                _loc11.addAction(false, this.aks, this.aks.processCommand, [_loc7]);
            } 
        } // End of switch
        if (!_global.isNaN(_loc4) && _loc6 == this.api.datacenter.Player.ID)
        {
            _loc11.addAction(false, _loc12, _loc12.ack, [_loc4]);
        }
        else
        {
            _loc12.end(_loc8 == this.api.datacenter.Player.ID);
        } // end else if
        if (!_loc11.isPlaying() && _loc13)
        {
            _loc11.execute(true);
        } // end if
    };
    _loc1.cancel = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "AskCancelChallenge":
            {
                this.refuseChallenge(oEvent.params.spriteID);
                break;
            } 
        } // End of switch
    };
    _loc1.yes = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "AskYesNoIgnoreChallenge":
            {
                this.acceptChallenge(oEvent.params.spriteID);
                break;
            } 
            case "AskYesNoMarriage":
            {
                this.acceptMarriage(oEvent.params.refID);
                this.api.gfx.addSpriteBubble(oEvent.params.spriteID, this.api.lang.getText("YES"));
                break;
            } 
        } // End of switch
    };
    _loc1.no = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "AskYesNoIgnoreChallenge":
            {
                this.refuseChallenge(oEvent.params.spriteID);
                break;
            } 
            case "AskYesNoMarriage":
            {
                this.refuseMarriage(oEvent.params.refID);
                this.api.gfx.addSpriteBubble(oEvent.params.spriteID, this.api.lang.getText("NO"));
                break;
            } 
        } // End of switch
    };
    _loc1.ignore = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "AskYesNoIgnoreChallenge":
            {
                this.api.kernel.ChatManager.addToBlacklist(oEvent.params.player);
                this.api.kernel.showMessage(undefined, this.api.lang.getText("TEMPORARY_BLACKLISTED", [oEvent.params.player]), "INFO_CHAT");
                this.refuseChallenge(oEvent.params.spriteID);
                break;
            } 
        } // End of switch
    };
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

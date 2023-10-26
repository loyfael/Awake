// Action script...

// [Initial MovieClip Action of sprite 20619]
#initclip 140
if (!dofus.aks.Party)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.aks)
    {
        _global.dofus.aks = new Object();
    } // end if
    var _loc1 = (_global.dofus.aks.Party = function (oAKS, oAPI)
    {
        super.initialize(oAKS, oAPI);
    }).prototype;
    _loc1.invite = function (sSpriteName)
    {
        this.aks.send("PI" + sSpriteName);
    };
    _loc1.refuseInvitation = function ()
    {
        this.aks.send("PR", false);
    };
    _loc1.acceptInvitation = function ()
    {
        this.aks.send("PA");
    };
    _loc1.leave = function (sSpriteID)
    {
        this.aks.send("PV" + (sSpriteID != undefined ? (sSpriteID) : ("")));
        this.api.ui.getUIComponent("Banner").illustration.updateFlags();
    };
    _loc1.follow = function (bStop, sSpriteID)
    {
        this.aks.send("PF" + (bStop ? ("-") : ("+")) + sSpriteID);
    };
    _loc1.where = function ()
    {
        this.aks.send("PW");
    };
    _loc1.followAll = function (bStop, sSpriteID)
    {
        this.aks.send("PG" + (bStop ? ("-") : ("+")) + sSpriteID);
    };
    _loc1.onInvite = function (bSuccess, sExtraData)
    {
        if (bSuccess)
        {
            var _loc4 = sExtraData.split("|");
            var _loc5 = _loc4[0];
            var _loc6 = _loc4[1];
            if (_loc5 == undefined || _loc6 == undefined)
            {
                this.refuseInvitation();
                return;
            } // end if
            if (_loc5 == this.api.datacenter.Player.Name)
            {
                this.api.kernel.showMessage(this.api.lang.getText("PARTY"), this.api.lang.getText("YOU_INVITE_B_IN_PARTY", [_loc6]), "INFO_CANCEL", {name: "Party", listener: this});
            } // end if
            if (_loc6 == this.api.datacenter.Player.Name)
            {
                if (this.api.kernel.ChatManager.isBlacklisted(_loc5))
                {
                    this.refuseInvitation();
                    return;
                } // end if
                this.api.kernel.showMessage(undefined, this.api.lang.getText("CHAT_A_INVITE_YOU_IN_PARTY", [this.api.kernel.ChatManager.getLinkName(_loc5)]), "INFO_CHAT");
                this.api.kernel.showMessage(this.api.lang.getText("PARTY"), this.api.lang.getText("A_INVITE_YOU_IN_PARTY", [_loc5]), "CAUTION_YESNOIGNORE", {name: "Party", player: _loc5, listener: this, params: {player: _loc5}});
                this.api.sounds.events.onGameInvitation();
            } // end if
        }
        else
        {
            var _loc7 = sExtraData.charAt(0);
            switch (_loc7)
            {
                case "a":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("PARTY_ALREADY_IN_GROUP"), "ERROR_CHAT", {name: "PartyError"});
                    break;
                } 
                case "f":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("PARTY_FULL"), "ERROR_CHAT", {name: "PartyError"});
                    break;
                } 
                case "n":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_FIND_ACCOUNT_OR_CHARACTER", [sExtraData.substr(1)]), "ERROR_CHAT", {name: "PartyError"});
                    break;
                } 
            } // End of switch
        } // end else if
    };
    _loc1.onLeader = function (sExtraData)
    {
        var _loc3 = sExtraData;
        var _loc4 = this.api.ui.getUIComponent("Party");
        _loc4.setLeader(_loc3);
        var _loc5 = _loc4.getMember(_loc3).name;
        if (_loc5 != undefined)
        {
            this.api.kernel.showMessage(undefined, this.api.lang.getText("NEW_GROUP_LEADER", [_loc5]), "INFO_CHAT");
        } // end if
    };
    _loc1.onRefuse = function (sExtraData)
    {
        this.api.ui.unloadUIComponent("AskYesNoIgnoreParty");
        this.api.ui.unloadUIComponent("AskCancelParty");
    };
    _loc1.onAccept = function (sExtraData)
    {
        this.api.ui.unloadUIComponent("AskYesNoIgnoreParty");
        this.api.ui.unloadUIComponent("AskCancelParty");
    };
    _loc1.onCreate = function (bSuccess, sExtraData)
    {
        if (bSuccess)
        {
            var _loc4 = sExtraData;
            if (_loc4 != this.api.datacenter.Player.Name)
            {
                this.api.kernel.showMessage(undefined, this.api.lang.getText("U_ARE_IN_GROUP", [_loc4]), "INFO_CHAT");
            } // end if
            this.api.datacenter.Player.inParty = true;
            this.api.ui.loadUIComponent("Party", "Party", undefined, {bStrayIfPresent: true});
        }
        else
        {
            var _loc5 = sExtraData.charAt(0);
            switch (_loc5)
            {
                case "a":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("PARTY_ALREADY_IN_GROUP"), "ERROR_CHAT", {name: "PartyError"});
                    break;
                } 
                case "f":
                {
                    this.api.kernel.showMessage(undefined, this.api.lang.getText("PARTY_FULL"), "ERROR_CHAT", {name: "PartyError"});
                    break;
                } 
            } // End of switch
        } // end else if
    };
    _loc1.onLeave = function (sExtraData)
    {
        var _loc3 = this.api.ui.getUIComponent("Party");
        if (_loc3.followID != undefined)
        {
            this.api.kernel.GameManager.updateCompass(this.api.datacenter.Basics.banner_targetCoords[0], this.api.datacenter.Basics.banner_targetCoords[1]);
        } // end if
        var _loc4 = _loc3.getMember(sExtraData).name;
        if (_loc4 != undefined)
        {
            this.api.kernel.showMessage(undefined, this.api.lang.getText("A_KICK_FROM_PARTY", [_loc4]), "INFO_CHAT");
        }
        else
        {
            this.api.kernel.showMessage(undefined, this.api.lang.getText("LEAVE_GROUP"), "INFO_CHAT");
        } // end else if
        this.api.ui.unloadUIComponent("Party");
        this.api.ui.unloadUIComponent("AskYesNoIgnoreParty");
        this.api.ui.unloadUIComponent("AskCancelParty");
        this.api.datacenter.Player.inParty = false;
        this.api.datacenter.Basics.aks_infos_highlightCoords_clear(2);
    };
    _loc1.onFollow = function (bSuccess, sExtraData)
    {
        if (bSuccess)
        {
            var _loc4 = this.api.ui.getUIComponent("Party");
            var _loc5 = sExtraData;
            _loc4.setFollow(_loc5);
        }
        else
        {
            this.api.kernel.showMessage(undefined, this.api.lang.getText("PARTY_NOT_IN_IN_GROUP"), "ERROR_BOX", {name: "PartyError"});
        } // end else if
    };
    _loc1.onMovement = function (sExtraData)
    {
        com.ankamagames.tools.Logger.out("WG Party.as:289 onMovement called", "dofus.aks.Party::onMovement", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Party.as", 289);
        var _loc3 = sExtraData.charAt(0) == "+";
        var _loc4 = this.api.ui.getUIComponent("Party");
        var _loc5 = sExtraData.substr(1).split("|");
        var _loc6 = 0;
        
        while (++_loc6, _loc6 < _loc5.length)
        {
            var _loc7 = String(_loc5[_loc6]).split(";");
            var _loc8 = _loc7[0];
            switch (sExtraData.charAt(0))
            {
                case "+":
                {
                    var _loc9 = _loc7[1];
                    var _loc10 = _loc7[2];
                    var _loc11 = Number(_loc7[3]);
                    var _loc12 = Number(_loc7[4]);
                    var _loc13 = Number(_loc7[5]);
                    var _loc14 = Number(_loc7[6]);
                    var _loc15 = Number(_loc7[7]);
                    var _loc16 = _loc7[8];
                    com.ankamagames.tools.Logger.out("WG Party : onMovement : sAccessories" + _loc16, "dofus.aks.Party::onMovement", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Party.as", 320);
                    var _loc17 = _loc7[9];
                    var _loc18 = Number(_loc7[10]);
                    var _loc19 = Number(_loc7[11]);
                    var _loc20 = Number(_loc7[12]);
                    var _loc21 = Number(_loc7[13]);
                    var _loc22 = new ank.battlefield.datacenter.Sprite(_loc8, undefined, dofus.Constants.CLIPS_PERSOS_PATH + _loc10 + ".swf", undefined, 5);
                    _loc22.name = _loc9;
                    _loc22.color1 = _loc11;
                    _loc22.color2 = _loc12;
                    _loc22.color3 = _loc13;
                    _loc22.color4 = _loc14;
                    _loc22.color5 = _loc15;
                    _loc22.life = _loc17;
                    _loc22.level = _loc18;
                    _loc22.initiative = _loc19;
                    _loc22.prospection = _loc20;
                    _loc22.side = _loc21;
                    var _loc23 = (ank.battlefield.datacenter.Sprite)(_loc22);
                    com.ankamagames.tools.Logger.out("WG Party : onMovement 1 : sSprite :" + _loc23, "dofus.aks.Party::onMovement", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Party.as", 346);
                    this.api.kernel.CharactersManager.setSpriteAccessories((ank.battlefield.datacenter.Sprite)(_loc22), _loc16);
                    com.ankamagames.tools.Logger.out("WG Party : onMovement 2", "dofus.aks.Party::onMovement", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Party.as", 348);
                    _loc4.addMember(_loc22);
                    break;
                } 
                case "-":
                {
                    _loc4.removeMember(_loc8, true);
                    break;
                } 
                case "~":
                {
                    var _loc24 = _loc7[1];
                    var _loc25 = _loc7[2];
                    var _loc26 = Number(_loc7[3]);
                    var _loc27 = Number(_loc7[4]);
                    var _loc28 = Number(_loc7[5]);
                    var _loc29 = Number(_loc7[6]);
                    var _loc30 = Number(_loc7[7]);
                    var _loc31 = _loc7[8];
                    var _loc32 = _loc7[9];
                    var _loc33 = Number(_loc7[10]);
                    var _loc34 = Number(_loc7[11]);
                    var _loc35 = Number(_loc7[12]);
                    var _loc36 = Number(_loc7[13]);
                    var _loc37 = new ank.battlefield.datacenter.Sprite(_loc8, undefined, dofus.Constants.CLIPS_PERSOS_PATH + _loc25 + ".swf", undefined, 5);
                    _loc37.name = _loc24;
                    _loc37.color1 = _loc26;
                    _loc37.color2 = _loc27;
                    _loc37.color3 = _loc28;
                    _loc37.color4 = _loc29;
                    _loc37.color5 = _loc30;
                    _loc37.life = _loc32;
                    _loc37.level = _loc33;
                    _loc37.initiative = _loc34;
                    _loc37.prospection = _loc35;
                    _loc37.side = _loc36;
                    this.api.kernel.CharactersManager.setSpriteAccessories((ank.battlefield.datacenter.Sprite)(_loc37), _loc31);
                    _loc4.updateData(_loc37);
                    break;
                } 
            } // End of switch
        } // end while
        _loc4.refresh();
    };
    _loc1.cancel = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "AskCancelParty":
            {
                this.refuseInvitation();
                break;
            } 
        } // End of switch
    };
    _loc1.yes = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "AskYesNoIgnoreParty":
            {
                this.acceptInvitation();
                break;
            } 
        } // End of switch
    };
    _loc1.no = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "AskYesNoIgnoreParty":
            {
                this.refuseInvitation();
                break;
            } 
        } // End of switch
    };
    _loc1.ignore = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "AskYesNoIgnoreParty":
            {
                this.api.kernel.ChatManager.addToBlacklist(oEvent.params.player);
                this.api.kernel.showMessage(undefined, this.api.lang.getText("TEMPORARY_BLACKLISTED", [oEvent.params.player]), "INFO_CHAT");
                this.refuseInvitation(oEvent.params.spriteID);
                break;
            } 
        } // End of switch
    };
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

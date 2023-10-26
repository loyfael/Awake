// Action script...

// [Initial MovieClip Action of sprite 20929]
#initclip 194
if (!dofus.managers.CharactersManager)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.managers)
    {
        _global.dofus.managers = new Object();
    } // end if
    var _loc1 = (_global.dofus.managers.CharactersManager = function (oAPI)
    {
        dofus.managers.CharactersManager._sSelf = this;
        super.initialize(oAPI);
    }).prototype;
    (_global.dofus.managers.CharactersManager = function (oAPI)
    {
        dofus.managers.CharactersManager._sSelf = this;
        super.initialize(oAPI);
    }).getInstance = function ()
    {
        return (dofus.managers.CharactersManager._sSelf);
    };
    _loc1.setLocalPlayerData = function (nID, sName, oData)
    {
        var _loc5 = this.api.datacenter.Player;
        _loc5.clean();
        _loc5.ID = nID;
        _loc5.Name = sName;
        _loc5.Guild = oData.guild;
        _loc5.Level = oData.level;
        _loc5.Sex = oData.sex;
        _loc5.color1 = oData.color1 == -1 ? (oData.color1) : (Number("0x" + oData.color1));
        _loc5.color2 = oData.color2 == -1 ? (oData.color2) : (Number("0x" + oData.color2));
        _loc5.color3 = oData.color3 == -1 ? (oData.color3) : (Number("0x" + oData.color3));
        _loc5.color4 = oData.color4 == -1 ? (oData.color4) : (Number("0x" + oData.color4));
        _loc5.color5 = oData.color5 == -1 ? (oData.color5) : (Number("0x" + oData.color5));
        var _loc6 = oData.items.split(";");
        var _loc7 = 0;
        
        while (++_loc7, _loc7 < _loc6.length)
        {
            var _loc8 = _loc6[_loc7];
            if (_loc8.length != 0)
            {
                var _loc9 = this.getItemObjectFromData(_loc8);
                if (_loc9 != undefined)
                {
                    _loc5.addItem(_loc9);
                } // end if
            } // end if
        } // end while
        _loc5.updateCloseCombat();
    };
    _loc1.createCharacter = function (sID, sName, oData)
    {
        var _loc5 = this.api.datacenter.Sprites.getItemAt(sID);
        if (_loc5 == undefined)
        {
            _loc5 = new dofus.datacenter.Character(sID, ank.battlefield.mc.Sprite, dofus.Constants.CLIPS_PERSOS_PATH + oData.gfxID + ".swf", oData.cell, oData.dir, oData.gfxID, oData.title);
            this.api.datacenter.Sprites.addItemAt(sID, _loc5);
        } // end if
        _loc5.GameActionsManager.init();
        _loc5.cellNum = Number(oData.cell);
        _loc5.scaleX = oData.scaleX;
        _loc5.scaleY = oData.scaleY;
        _loc5.name = sName;
        _loc5.Guild = Number(oData.spriteType);
        _loc5.Level = Number(oData.level);
        _loc5.Sex = oData.sex != undefined ? (oData.sex) : (1);
        _loc5.color1 = oData.color1 == -1 ? (oData.color1) : (Number("0x" + oData.color1));
        _loc5.color2 = oData.color2 == -1 ? (oData.color2) : (Number("0x" + oData.color2));
        _loc5.color3 = oData.color3 == -1 ? (oData.color3) : (Number("0x" + oData.color3));
        _loc5.color4 = oData.color4 == -1 ? (oData.color4) : (Number("0x" + oData.color4));
        _loc5.color5 = oData.color5 == -1 ? (oData.color5) : (Number("0x" + oData.color5));
        _loc5.Aura = oData.aura != undefined ? (oData.aura) : (0);
        _loc5.Merchant = oData.merchant == "1" ? (true) : (false);
        _loc5.serverID = Number(oData.serverID);
        _loc5.alignment = oData.alignment;
        _loc5.rank = oData.rank;
        _loc5.mount = oData.mount;
        _loc5.isDead = oData.isDead == 1;
        _loc5.deathState = Number(oData.isDead);
        _loc5.deathCount = Number(oData.deathCount);
        _loc5.lvlMax = Number(oData.lvlMax);
        _loc5.pvpGain = Number(oData.pvpGain);
        this.setSpriteAccessories((ank.battlefield.datacenter.Sprite)(_loc5), oData.accessories);
        if (oData.LP != undefined)
        {
            _loc5.LP = oData.LP;
        } // end if
        if (oData.LP != undefined)
        {
            _loc5.LPmax = oData.LP;
        } // end if
        if (oData.AP != undefined)
        {
            _loc5.AP = oData.AP;
        } // end if
        if (oData.AP != undefined)
        {
            _loc5.APinit = oData.AP;
        } // end if
        if (oData.MP != undefined)
        {
            _loc5.MP = oData.MP;
        } // end if
        if (oData.MP != undefined)
        {
            _loc5.MPinit = oData.MP;
        } // end if
        if (oData.resistances != undefined)
        {
            _loc5.resistances = oData.resistances;
        } // end if
        _loc5.Team = oData.team == undefined ? (null) : (oData.team);
        _loc5.setDungeonTeamInfos(oData.dungeonTeam, oData.dungeonId, oData.dungeonTeamState);
        if (oData.emote != undefined && oData.emote.length != 0)
        {
            _loc5.direction = ank.battlefield.utils.Pathfinding.convertHeightToFourDirection(oData.dir);
            if (oData.emoteTimer != undefined && oData.emote.length != 0)
            {
                _loc5.startAnimationTimer = oData.emoteTimer;
            } // end if
            _loc5.startAnimation = "EmoteStatic" + oData.emote;
        } // end if
        if (oData.guildName != undefined)
        {
            _loc5.guildName = oData.guildName;
            _loc5.guildLevel = _global.parseInt(oData.guildLevel);
        } // end if
        _loc5.emblem = this.createGuildEmblem(oData.emblem);
        if (oData.restrictions != undefined)
        {
            _loc5.restrictions = _global.parseInt(oData.restrictions, 36);
        } // end if
        if (sID == this.api.datacenter.Player.ID)
        {
            if (!this.api.datacenter.Player.haveFakeAlignment)
            {
                this.api.datacenter.Player.alignment = _loc5.alignment.clone();
            } // end if
        } // end if
        return (_loc5);
    };
    _loc1.createCreature = function (sID, sName, oData)
    {
        var _loc5 = this.api.datacenter.Sprites.getItemAt(sID);
        if (_loc5 == undefined)
        {
            _loc5 = new dofus.datacenter.Creature(sID, ank.battlefield.mc.Sprite, dofus.Constants.CLIPS_PERSOS_PATH + oData.gfxID + ".swf", oData.cell, oData.dir, oData.gfxID);
            this.api.datacenter.Sprites.addItemAt(sID, _loc5);
        } // end if
        _loc5.GameActionsManager.init();
        _loc5.cellNum = oData.cell;
        _loc5.name = sName;
        _loc5.powerLevel = oData.powerLevel;
        _loc5.scaleX = oData.scaleX;
        _loc5.scaleY = oData.scaleY;
        _loc5.noFlip = oData.noFlip;
        _loc5.color1 = oData.color1 == -1 ? (oData.color1) : (Number("0x" + oData.color1));
        _loc5.color2 = oData.color2 == -1 ? (oData.color2) : (Number("0x" + oData.color2));
        _loc5.color3 = oData.color3 == -1 ? (oData.color3) : (Number("0x" + oData.color3));
        _loc5.color4 = oData.color4 == -1 ? (oData.color4) : (Number("0x" + oData.color4));
        _loc5.color5 = oData.color5 == -1 ? (oData.color5) : (Number("0x" + oData.color5));
        this.setSpriteAccessories((ank.battlefield.datacenter.Sprite)(_loc5), oData.accessories);
        if (oData.LP != undefined)
        {
            _loc5.LP = oData.LP;
        } // end if
        if (oData.LP != undefined)
        {
            _loc5.LPmax = oData.LP;
        } // end if
        if (oData.AP != undefined)
        {
            _loc5.AP = oData.AP;
        } // end if
        if (oData.AP != undefined)
        {
            _loc5.APinit = oData.AP;
        } // end if
        if (oData.MP != undefined)
        {
            _loc5.MP = oData.MP;
        } // end if
        if (oData.MP != undefined)
        {
            _loc5.MPinit = oData.MP;
        } // end if
        if (oData.resistances != undefined)
        {
            _loc5.resistances = oData.resistances;
        } // end if
        if (oData.summoned != undefined)
        {
            _loc5.isSummoned = oData.summoned;
        } // end if
        _loc5.Team = oData.team == undefined ? (null) : (oData.team);
        return (_loc5);
    };
    _loc1.createMonster = function (sID, sName, oData)
    {
        var _loc5 = this.api.datacenter.Sprites.getItemAt(sID);
        if (_loc5 == undefined)
        {
            _loc5 = new dofus.datacenter.Monster(sID, ank.battlefield.mc.Sprite, dofus.Constants.CLIPS_PERSOS_PATH + oData.gfxID + ".swf", oData.cell, oData.dir, oData.gfxID);
            this.api.datacenter.Sprites.addItemAt(sID, _loc5);
        } // end if
        _loc5.GameActionsManager.init();
        _loc5.cellNum = oData.cell;
        _loc5.name = sName;
        _loc5.scaleX = oData.scaleX;
        _loc5.scaleY = oData.scaleY;
        _loc5.noFlip = oData.noFlip;
        _loc5.powerLevel = oData.powerLevel;
        _loc5.color1 = oData.color1 == -1 ? (oData.color1) : (Number("0x" + oData.color1));
        _loc5.color2 = oData.color2 == -1 ? (oData.color2) : (Number("0x" + oData.color2));
        _loc5.color3 = oData.color3 == -1 ? (oData.color3) : (Number("0x" + oData.color3));
        _loc5.color4 = oData.color4 == -1 ? (oData.color4) : (Number("0x" + oData.color4));
        _loc5.color5 = oData.color5 == -1 ? (oData.color5) : (Number("0x" + oData.color5));
        this.setSpriteAccessories((ank.battlefield.datacenter.Sprite)(_loc5), oData.accessories);
        if (oData.LP != undefined)
        {
            _loc5.LP = oData.LP;
        } // end if
        if (oData.LP != undefined)
        {
            _loc5.LPmax = oData.LP;
        } // end if
        if (oData.AP != undefined)
        {
            _loc5.AP = oData.AP;
        } // end if
        if (oData.AP != undefined)
        {
            _loc5.APinit = oData.AP;
        } // end if
        if (oData.MP != undefined)
        {
            _loc5.MP = oData.MP;
        } // end if
        if (oData.MP != undefined)
        {
            _loc5.MPinit = oData.MP;
        } // end if
        if (oData.summoned != undefined)
        {
            _loc5.isSummoned = oData.summoned;
        } // end if
        _loc5.Team = oData.team == undefined ? (null) : (oData.team);
        return (_loc5);
    };
    _loc1.createMonsterGroup = function (sID, sName, oData)
    {
        var _loc5 = this.api.datacenter.Sprites.getItemAt(sID);
        if (_loc5 == undefined)
        {
            _loc5 = new dofus.datacenter.MonsterGroup(sID, ank.battlefield.mc.Sprite, dofus.Constants.CLIPS_PERSOS_PATH + oData.gfxID + ".swf", oData.cell, oData.dir, oData.bonusValue);
            this.api.datacenter.Sprites.addItemAt(sID, _loc5);
        } // end if
        _loc5.GameActionsManager.init();
        _loc5.cellNum = oData.cell;
        _loc5.name = sName;
        _loc5.Level = oData.level;
        _loc5.scaleX = oData.scaleX;
        _loc5.scaleY = oData.scaleY;
        _loc5.noFlip = oData.noFlip;
        _loc5.color1 = oData.color1 == -1 ? (oData.color1) : (Number("0x" + oData.color1));
        _loc5.color2 = oData.color2 == -1 ? (oData.color2) : (Number("0x" + oData.color2));
        _loc5.color3 = oData.color3 == -1 ? (oData.color3) : (Number("0x" + oData.color3));
        _loc5.color4 = oData.color4 == -1 ? (oData.color4) : (Number("0x" + oData.color4));
        _loc5.color5 = oData.color5 == -1 ? (oData.color5) : (Number("0x" + oData.color5));
        this.setSpriteAccessories((ank.battlefield.datacenter.Sprite)(_loc5), oData.accessories);
        return (_loc5);
    };
    _loc1.createNonPlayableCharacter = function (sID, nUnicID, oData)
    {
        var _loc5 = this.api.datacenter.Sprites.getItemAt(sID);
        if (_loc5 == undefined)
        {
            _loc5 = new dofus.datacenter.NonPlayableCharacter(sID, ank.battlefield.mc.Sprite, dofus.Constants.CLIPS_PERSOS_PATH + oData.gfxID + ".swf", oData.cell, oData.dir, oData.gfxID, oData.customArtwork);
            this.api.datacenter.Sprites.addItemAt(sID, _loc5);
        } // end if
        _loc5.GameActionsManager.init();
        _loc5.cellNum = oData.cell;
        _loc5.unicID = nUnicID;
        _loc5.scaleX = oData.scaleX;
        _loc5.scaleY = oData.scaleY;
        _loc5.color1 = oData.color1 == -1 ? (oData.color1) : (Number("0x" + oData.color1));
        _loc5.color2 = oData.color2 == -1 ? (oData.color2) : (Number("0x" + oData.color2));
        _loc5.color3 = oData.color3 == -1 ? (oData.color3) : (Number("0x" + oData.color3));
        _loc5.color4 = oData.color4 == -1 ? (oData.color4) : (Number("0x" + oData.color4));
        _loc5.color5 = oData.color5 == -1 ? (oData.color5) : (Number("0x" + oData.color5));
        this.setSpriteAccessories((ank.battlefield.datacenter.Sprite)(_loc5), oData.accessories);
        if (oData.extraClipID >= 0)
        {
            _loc5.extraClipID = oData.extraClipID;
        } // end if
        return (_loc5);
    };
    _loc1.createOfflineCharacter = function (sID, sName, oData)
    {
        var _loc5 = this.api.datacenter.Sprites.getItemAt(sID);
        if (_loc5 == undefined)
        {
            _loc5 = new dofus.datacenter.OfflineCharacter(sID, ank.battlefield.mc.Sprite, dofus.Constants.CLIPS_PERSOS_PATH + oData.gfxID + ".swf", oData.cell, oData.dir, oData.gfxID);
            this.api.datacenter.Sprites.addItemAt(sID, _loc5);
        } // end if
        _loc5.GameActionsManager.init();
        _loc5.cellNum = oData.cell;
        _loc5.name = sName;
        _loc5.scaleX = oData.scaleX;
        _loc5.scaleY = oData.scaleY;
        _loc5.color1 = oData.color1 == -1 ? (oData.color1) : (Number("0x" + oData.color1));
        _loc5.color2 = oData.color2 == -1 ? (oData.color2) : (Number("0x" + oData.color2));
        _loc5.color3 = oData.color3 == -1 ? (oData.color3) : (Number("0x" + oData.color3));
        _loc5.color4 = oData.color4 == -1 ? (oData.color4) : (Number("0x" + oData.color4));
        _loc5.color5 = oData.color5 == -1 ? (oData.color5) : (Number("0x" + oData.color5));
        this.setSpriteAccessories((ank.battlefield.datacenter.Sprite)(_loc5), oData.accessories);
        if (oData.guildName != undefined)
        {
            _loc5.guildName = oData.guildName;
        } // end if
        _loc5.emblem = this.createGuildEmblem(oData.emblem);
        _loc5.offlineType = oData.offlineType;
        return (_loc5);
    };
    _loc1.createTaxCollector = function (sID, sName, oData)
    {
        var _loc5 = this.api.datacenter.Sprites.getItemAt(sID);
        if (_loc5 == undefined)
        {
            _loc5 = new dofus.datacenter.TaxCollector(sID, ank.battlefield.mc.Sprite, dofus.Constants.CLIPS_PERSOS_PATH + oData.gfxID + ".swf", oData.cell, oData.dir, oData.gfxID);
            this.api.datacenter.Sprites.addItemAt(sID, _loc5);
        } // end if
        _loc5.GameActionsManager.init();
        _loc5.cellNum = oData.cell;
        _loc5.scaleX = oData.scaleX;
        _loc5.scaleY = oData.scaleY;
        _loc5.name = this.api.lang.getFullNameText(sName.split(","));
        _loc5.Level = oData.level;
        if (oData.guildName != undefined)
        {
            _loc5.guildName = oData.guildName;
        } // end if
        _loc5.emblem = this.createGuildEmblem(oData.emblem);
        if (oData.LP != undefined)
        {
            _loc5.LP = oData.LP;
        } // end if
        if (oData.LP != undefined)
        {
            _loc5.LPmax = oData.LP;
        } // end if
        if (oData.AP != undefined)
        {
            _loc5.AP = oData.AP;
        } // end if
        if (oData.AP != undefined)
        {
            _loc5.APinit = oData.AP;
        } // end if
        if (oData.MP != undefined)
        {
            _loc5.MP = oData.MP;
        } // end if
        if (oData.MP != undefined)
        {
            _loc5.MPinit = oData.MP;
        } // end if
        if (oData.resistances != undefined)
        {
            _loc5.resistances = oData.resistances;
        } // end if
        _loc5.Team = oData.team == undefined ? (null) : (oData.team);
        return (_loc5);
    };
    _loc1.createPrism = function (sID, sName, oData)
    {
        var _loc5 = this.api.datacenter.Sprites.getItemAt(sID);
        if (_loc5 == undefined)
        {
            _loc5 = new dofus.datacenter.PrismSprite(sID, ank.battlefield.mc.Sprite, dofus.Constants.CLIPS_PERSOS_PATH + oData.gfxID + ".swf", oData.cell, oData.dir, oData.gfxID);
            this.api.datacenter.Sprites.addItemAt(sID, _loc5);
        } // end if
        _loc5.GameActionsManager.init();
        _loc5.cellNum = oData.cell;
        _loc5.scaleX = oData.scaleX;
        _loc5.scaleY = oData.scaleY;
        _loc5.linkedMonster = Number(sName);
        _loc5.Level = oData.level;
        _loc5.alignment = oData.alignment;
        return (_loc5);
    };
    _loc1.createParkMount = function (sID, sName, oData)
    {
        var _loc5 = this.api.datacenter.Sprites.getItemAt(sID);
        if (_loc5 == undefined)
        {
            _loc5 = new dofus.datacenter.ParkMount(sID, ank.battlefield.mc.Sprite, dofus.Constants.CLIPS_PERSOS_PATH + oData.gfxID + ".swf", oData.cell, oData.dir, oData.gfxID, oData.modelID);
            this.api.datacenter.Sprites.addItemAt(sID, _loc5);
        } // end if
        _loc5.GameActionsManager.init();
        _loc5.cellNum = oData.cell;
        _loc5.name = sName;
        _loc5.scaleX = oData.scaleX;
        _loc5.scaleY = oData.scaleY;
        _loc5.ownerName = oData.ownerName;
        _loc5.level = oData.level;
        return (_loc5);
    };
    _loc1.createMutant = function (sID, oData)
    {
        var _loc4 = this.api.datacenter.Sprites.getItemAt(sID);
        if (_loc4 == undefined)
        {
            _loc4 = new dofus.datacenter.Mutant(sID, ank.battlefield.mc.Sprite, dofus.Constants.CLIPS_PERSOS_PATH + oData.gfxID + ".swf", oData.cell, oData.dir, oData.gfxID);
            this.api.datacenter.Sprites.addItemAt(sID, _loc4);
        } // end if
        _loc4.GameActionsManager.init();
        _loc4.scaleX = oData.scaleX;
        _loc4.scaleY = oData.scaleY;
        _loc4.cellNum = Number(oData.cell);
        _loc4.Guild = Number(oData.spriteType);
        _loc4.powerLevel = Number(oData.powerLevel);
        _loc4.Sex = oData.sex != undefined ? (oData.sex) : (1);
        _loc4.showIsPlayer = oData.showIsPlayer;
        _loc4.monsterID = oData.monsterID;
        _loc4.playerName = oData.playerName;
        this.setSpriteAccessories((ank.battlefield.datacenter.Sprite)(_loc4), oData.accessories);
        if (oData.LP != undefined)
        {
            _loc4.LP = oData.LP;
        } // end if
        if (oData.LP != undefined)
        {
            _loc4.LPmax = oData.LP;
        } // end if
        if (oData.AP != undefined)
        {
            _loc4.AP = oData.AP;
        } // end if
        if (oData.AP != undefined)
        {
            _loc4.APinit = oData.AP;
        } // end if
        if (oData.MP != undefined)
        {
            _loc4.MP = oData.MP;
        } // end if
        if (oData.MP != undefined)
        {
            _loc4.MPinit = oData.MP;
        } // end if
        _loc4.Team = oData.team == undefined ? (null) : (oData.team);
        if (oData.emote != undefined && oData.emote.length != 0)
        {
            _loc4.direction = ank.battlefield.utils.Pathfinding.convertHeightToFourDirection(oData.dir);
            if (oData.emoteTimer != undefined && oData.emote.length != 0)
            {
                _loc4.startAnimationTimer = oData.emoteTimer;
            } // end if
            _loc4.startAnimation = "EmoteStatic" + oData.emote;
        } // end if
        if (oData.restrictions != undefined)
        {
            _loc4.restrictions = _global.parseInt(oData.restrictions, 36);
        } // end if
        return (_loc4);
    };
    _loc1.getItemObjectFromData = function (sData)
    {
        if (sData.length == 0)
        {
            return (null);
        } // end if
        var _loc3 = sData.split("~");
        var _loc4 = _global.parseInt(_loc3[0], 16);
        var _loc5 = _global.parseInt(_loc3[1], 16);
        var _loc6 = _global.parseInt(_loc3[2], 16);
        var _loc7 = _loc3[3].length == 0 ? (-1) : (_global.parseInt(_loc3[3], 16));
        var _loc8 = _loc3[4];
        var _loc9 = new dofus.datacenter.Item(_loc4, _loc5, _loc6, _loc7, _loc8);
        _loc9.priceMultiplicator = this.api.lang.getConfigText("SELL_PRICE_MULTIPLICATOR");
        return (_loc9);
    };
    _loc1.getSpellObjectFromData = function (sData)
    {
        var _loc3 = sData.split("~");
        var _loc4 = Number(_loc3[0]);
        var _loc5 = Number(_loc3[1]);
        var _loc6 = _loc3[2];
        var _loc7 = new dofus.datacenter.Spell(_loc4, _loc5, _loc6);
        return (_loc7);
    };
    _loc1.getNameFromData = function (sData)
    {
        var _loc3 = new Object();
        var _loc4 = sData.split(",");
        if (_loc4.length == 2)
        {
            _loc3.name = this.api.lang.getFullNameText(_loc4);
            _loc3.type = "taxcollector";
        }
        else if (_global.isNaN(Number(sData)))
        {
            _loc3.name = sData;
            _loc3.type = "player";
        }
        else
        {
            _loc3.name = this.api.lang.getMonstersText(Number(sData)).n;
            _loc3.type = "monster";
        } // end else if
        return (_loc3);
    };
    _loc1.updateSpriteAccessories = function (oSprite, sAccessory, index, base)
    {
        if (base == undefined)
        {
            base = 16;
        } // end if
        var _loc6 = oSprite.accessories;
        if (sAccessory.indexOf("~") != -1)
        {
            var _loc10 = sAccessory.split("~");
            var _loc7 = _global.parseInt(_loc10[0], base);
            var _loc9 = _global.parseInt(_loc10[1]);
            var _loc8 = _global.parseInt(_loc10[2]) - 1;
        }
        else
        {
            _loc7 = _global.parseInt(sAccessory, base);
            _loc9 = undefined;
            _loc8 = undefined;
        } // end else if
        if (!_global.isNaN(_loc7) && _loc7 > -2)
        {
            if (_loc7 > -1)
            {
                var _loc11 = new dofus.datacenter.Accessory(_loc7, _loc9, _loc8);
                
            } // end if
            _loc6[index] = _loc11;
            switch (index)
            {
                case 3:
                {
                    var _loc12 = new dofus.datacenter.Accessory(_loc6[3].unicId, 100, undefined);
                    var _loc13 = new dofus.datacenter.Accessory(_loc6[3].unicId, 101, undefined);
                    var _loc14 = new dofus.datacenter.Accessory(_loc6[3].unicId, 102, undefined);
                    var _loc15 = new dofus.datacenter.Accessory(_loc6[3].unicId, 103, undefined);
                    var _loc16 = new dofus.datacenter.Accessory(_loc6[3].unicId, 104, undefined);
                    var _loc17 = new dofus.datacenter.Accessory(_loc6[3].unicId, 105, undefined);
                    _loc12.gfxID = _loc6[3].gfxID;
                    _loc13.gfxID = _loc6[3].gfxID;
                    _loc14.gfxID = _loc6[3].gfxID;
                    _loc15.gfxID = _loc6[3].gfxID;
                    _loc16.gfxID = _loc6[3].gfxID;
                    _loc17.gfxID = _loc6[3].gfxID;
                    _loc6[10] = _loc12;
                    _loc6[11] = _loc13;
                    _loc6[12] = _loc14;
                    _loc6[13] = _loc15;
                    _loc6[14] = _loc16;
                    _loc6[15] = _loc17;
                    break;
                } 
                case 4:
                {
                    var _loc18 = new dofus.datacenter.Accessory(_loc6[4].unicId, 106, undefined);
                    var _loc19 = new dofus.datacenter.Accessory(_loc6[4].unicId, 107, undefined);
                    var _loc20 = new dofus.datacenter.Accessory(_loc6[4].unicId, 108, undefined);
                    var _loc21 = new dofus.datacenter.Accessory(_loc6[4].unicId, 109, undefined);
                    var _loc22 = new dofus.datacenter.Accessory(_loc6[4].unicId, 110, undefined);
                    _loc18.gfxID = _loc6[4].gfxID;
                    _loc19.gfxID = _loc6[4].gfxID;
                    _loc20.gfxID = _loc6[4].gfxID;
                    _loc21.gfxID = _loc6[4].gfxID;
                    _loc22.gfxID = _loc6[4].gfxID;
                    _loc6[16] = _loc18;
                    _loc6[17] = _loc19;
                    _loc6[18] = _loc20;
                    _loc6[19] = _loc21;
                    _loc6[20] = _loc22;
                    break;
                } 
                case 5:
                {
                    var _loc23 = new dofus.datacenter.Accessory(_loc6[5].unicId, 99, undefined);
                    _loc23.gfxID = _loc6[5].gfxID;
                    _loc6[9] = _loc23;
                    break;
                } 
                default:
                {
                    break;
                } 
            } // End of switch
        } // end if
        if (dofus.Constants.WG_FORCE_TAIL)
        {
            var _loc24 = new dofus.datacenter.Accessory(_loc6[1].unicId, 17, undefined);
            _loc24.gfxID = _loc6[1].gfxID;
            _loc6[2] = _loc24;
        } // end if
        oSprite.accessories = _loc6;
        this.api.gfx.setForcedSpriteAnim(oSprite.id, "static");
    };
    _loc1.setSpriteAccessories = function (oSprite, sAccessories, base10)
    {
        if (base10 == undefined)
        {
            base10 = false;
        } // end if
        com.ankamagames.tools.Logger.out("WG On récupère la string " + sAccessories, "dofus.managers.CharactersManager::setSpriteAccessories", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/managers/CharactersManager.as", 792);
        if (sAccessories.length != 0)
        {
            var _loc5 = new Array();
            var _loc6 = sAccessories.split(",");
            var _loc7 = 0;
            
            while (++_loc7, _loc7 < _loc6.length)
            {
                if (_loc6[_loc7].indexOf("~") != -1)
                {
                    var _loc11 = _loc6[_loc7].split("~");
                    if (base10)
                    {
                        var _loc8 = _global.parseInt(_loc11[0], 10);
                    }
                    else
                    {
                        _loc8 = _global.parseInt(_loc11[0], 16);
                    } // end else if
                    var _loc10 = _global.parseInt(_loc11[1]);
                    var _loc9 = _global.parseInt(_loc11[2]) - 1;
                }
                else
                {
                    if (base10)
                    {
                        _loc8 = _global.parseInt(_loc6[_loc7], 10);
                    }
                    else
                    {
                        _loc8 = _global.parseInt(_loc6[_loc7], 16);
                    } // end else if
                    _loc10 = undefined;
                    _loc9 = undefined;
                } // end else if
                com.ankamagames.tools.Logger.out("WG On ajoute l\'accesoire " + _loc8 + " au mob " + oSprite + " " + oSprite.id + " à l\'emplacement " + _loc7, "dofus.managers.CharactersManager::setSpriteAccessories", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/managers/CharactersManager.as", 828);
                if (!_global.isNaN(_loc8) && _loc8 > -1)
                {
                    var _loc12 = new dofus.datacenter.Accessory(_loc8, _loc10, _loc9);
                    _loc5[_loc7] = _loc12;
                    switch (_loc7)
                    {
                        case 3:
                        {
                            var _loc13 = new dofus.datacenter.Accessory(_loc5[3].unicId, 100, undefined);
                            var _loc14 = new dofus.datacenter.Accessory(_loc5[3].unicId, 101, undefined);
                            var _loc15 = new dofus.datacenter.Accessory(_loc5[3].unicId, 102, undefined);
                            var _loc16 = new dofus.datacenter.Accessory(_loc5[3].unicId, 103, undefined);
                            var _loc17 = new dofus.datacenter.Accessory(_loc5[3].unicId, 104, undefined);
                            var _loc18 = new dofus.datacenter.Accessory(_loc5[3].unicId, 105, undefined);
                            _loc13.gfxID = _loc5[3].gfxID;
                            _loc14.gfxID = _loc5[3].gfxID;
                            _loc15.gfxID = _loc5[3].gfxID;
                            _loc16.gfxID = _loc5[3].gfxID;
                            _loc17.gfxID = _loc5[3].gfxID;
                            _loc18.gfxID = _loc5[3].gfxID;
                            _loc5[10] = _loc13;
                            _loc5[11] = _loc14;
                            _loc5[12] = _loc15;
                            _loc5[13] = _loc16;
                            _loc5[14] = _loc17;
                            _loc5[15] = _loc18;
                            break;
                        } 
                        case 4:
                        {
                            var _loc19 = new dofus.datacenter.Accessory(_loc5[4].unicId, 106, undefined);
                            var _loc20 = new dofus.datacenter.Accessory(_loc5[4].unicId, 107, undefined);
                            var _loc21 = new dofus.datacenter.Accessory(_loc5[4].unicId, 108, undefined);
                            var _loc22 = new dofus.datacenter.Accessory(_loc5[4].unicId, 109, undefined);
                            var _loc23 = new dofus.datacenter.Accessory(_loc5[4].unicId, 110, undefined);
                            _loc19.gfxID = _loc5[4].gfxID;
                            _loc20.gfxID = _loc5[4].gfxID;
                            _loc21.gfxID = _loc5[4].gfxID;
                            _loc22.gfxID = _loc5[4].gfxID;
                            _loc23.gfxID = _loc5[4].gfxID;
                            _loc5[16] = _loc19;
                            _loc5[17] = _loc20;
                            _loc5[18] = _loc21;
                            _loc5[19] = _loc22;
                            _loc5[20] = _loc23;
                            break;
                        } 
                        case 5:
                        {
                            var _loc24 = new dofus.datacenter.Accessory(_loc5[5].unicId, 99, undefined);
                            _loc24.gfxID = _loc5[5].gfxID;
                            _loc5[9] = _loc24;
                        } 
                        default:
                        {
                            break;
                        } 
                    } // End of switch
                } // end if
            } // end while
            if (dofus.Constants.WG_FORCE_TAIL)
            {
                var _loc25 = new dofus.datacenter.Accessory(_loc5[1].unicId, 17, undefined);
                _loc25.gfxID = _loc5[1].gfxID;
                _loc5[2] = _loc25;
            } // end if
            oSprite.accessories = _loc5;
            this.api.gfx.setForcedSpriteAnim(oSprite.id, "static");
        } // end if
    };
    _loc1.createGuildEmblem = function (sEmblem)
    {
        if (sEmblem != undefined)
        {
            var _loc3 = sEmblem.split(",");
            var _loc4 = new Object();
            _loc4.backID = _global.parseInt(_loc3[0], 36);
            _loc4.backColor = _global.parseInt(_loc3[1], 36);
            _loc4.upID = _global.parseInt(_loc3[2], 36);
            _loc4.upColor = _global.parseInt(_loc3[3], 36);
            return (_loc4);
        } // end if
        return;
    };
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.managers.CharactersManager = function (oAPI)
    {
        dofus.managers.CharactersManager._sSelf = this;
        super.initialize(oAPI);
    })._sSelf = null;
} // end if
#endinitclip

// Action script...

// [Initial MovieClip Action of sprite 20940]
#initclip 205
if (!dofus.aks.Spells)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.aks)
    {
        _global.dofus.aks = new Object();
    } // end if
    var _loc1 = (_global.dofus.aks.Spells = function (oAKS, oAPI)
    {
        super.initialize(oAKS, oAPI);
    }).prototype;
    _loc1.moveToUsed = function (nID, nPosition)
    {
        this.aks.send("SM" + nID + "|" + nPosition, false);
    };
    _loc1.boost = function (nID)
    {
        this.aks.send("SB" + nID);
    };
    _loc1.spellForget = function (nID)
    {
        this.aks.send("SF" + nID);
    };
    _loc1.onUpgradeSpell = function (bSuccess, sExtraData)
    {
        if (bSuccess)
        {
            var _loc4 = this.api.kernel.CharactersManager.getSpellObjectFromData(sExtraData);
            this.api.datacenter.Player.updateSpell(_loc4);
        }
        else
        {
            this.api.kernel.showMessage(undefined, this.api.lang.getText("CANT_BOOST_SPELL"), "ERROR_BOX");
        } // end else if
    };
    _loc1.onList = function (sExtraData)
    {
        var _loc3 = sExtraData.split(";");
        var _loc4 = this.api.datacenter.Player;
        var _loc5 = new Array();
        var _loc6 = new Array();
        var _loc7 = 0;
        
        while (++_loc7, _loc7 < _loc3.length)
        {
            var _loc8 = _loc3[_loc7];
            if (_loc8.length != 0)
            {
                var _loc9 = this.api.kernel.CharactersManager.getSpellObjectFromData(_loc8);
                if (_loc9 != undefined)
                {
                    _loc6.push(_loc9);
                } // end if
                var _loc10 = _loc4.Spells.findFirstItem("ID", _loc9.ID);
                if (_loc10.index == -1)
                {
                    _loc5.push(_loc9);
                    continue;
                } // end if
                if (_loc10.item.level != _loc9.level && _loc9.position == undefined)
                {
                    _loc9.position = _loc10.item.position;
                    continue;
                } // end if
                com.ankamagames.tools.Logger.out("WG On connait déjà " + _loc10.item.ID + " de level " + _loc10.item.level, "dofus.aks.Spells::onList", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/aks/Spells.as", 115);
            } // end if
        } // end while
        _loc4.Spells.removeItems(1, _loc4.Spells.length);
        _loc4.Spells.replaceAll(1, _loc6);
        this.api.ui.getUIComponent("Banner").shortcuts.updateSpells();
    };
    _loc1.returnNextFreePosition = function ()
    {
        var _loc2 = new Array();
        var _loc3 = 1;
        
        while (++_loc3, _loc3 <= dofus.graphics.gapi.controls.MouseShortcuts.MAX_CONTAINER - 1)
        {
            _loc2[_loc3] = true;
        } // end while
        var _loc4 = 0;
        
        while (++_loc4, _loc4 < this.api.datacenter.Player.Spells.length)
        {
            if (this.api.datacenter.Player.Spells[_loc4].position != undefined)
            {
                _loc2[this.api.datacenter.Player.Spells[_loc4].position] = false;
            } // end if
        } // end while
        var _loc5 = 1;
        
        while (++_loc5, _loc5 <= dofus.graphics.gapi.controls.MouseShortcuts.MAX_CONTAINER - 1)
        {
            if (_loc2[_loc5])
            {
                return (_loc5);
            } // end if
        } // end while
    };
    _loc1.returnNextFreePositionForRuneSpell = function ()
    {
        var _loc2 = new Array();
        var _loc3 = 1;
        
        while (++_loc3, _loc3 <= dofus.graphics.gapi.controls.MouseShortcuts.MAX_CONTAINER - 1)
        {
            _loc2[_loc3] = true;
        } // end while
        var _loc4 = 0;
        
        while (++_loc4, _loc4 < this.api.datacenter.Player.Spells.length)
        {
            if (this.api.datacenter.Player.Spells[_loc4].position != undefined)
            {
                _loc2[this.api.datacenter.Player.Spells[_loc4].position] = false;
            } // end if
        } // end while
        var _loc5 = 10;
        
        while (++_loc5, _loc5 <= dofus.graphics.gapi.controls.MouseShortcuts.MAX_CONTAINER - 1)
        {
            if (_loc2[_loc5])
            {
                return (_loc5);
            } // end if
        } // end while
    };
    _loc1.onChangeOption = function (sExtraData)
    {
        this.api.datacenter.Basics.canUseSeeAllSpell = sExtraData.charAt(0) == "+";
    };
    _loc1.onSpellBoost = function (sExtraData)
    {
        var _loc3 = sExtraData.split(";");
        var _loc4 = Number(_loc3[0]);
        var _loc5 = Number(_loc3[1]);
        var _loc6 = Number(_loc3[2]);
        this.api.kernel.SpellsBoostsManager.setSpellModificator(_loc4, _loc5, _loc6);
    };
    _loc1.onSpellForget = function (sExtraData)
    {
        if (sExtraData == "+")
        {
            this.api.ui.loadUIComponent("SpellForget", "SpellForget", undefined, {bStayIfPresent: true});
        }
        else if (sExtraData == "-")
        {
            this.api.ui.unloadUIComponent("SpellForget");
        } // end else if
    };
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

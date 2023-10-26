// Action script...

// [Initial MovieClip Action of sprite 20698]
#initclip 219
if (!dofus.managers.MapsServersManager)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.managers)
    {
        _global.dofus.managers = new Object();
    } // end if
    var _loc1 = (_global.dofus.managers.MapsServersManager = function ()
    {
        super();
        dofus.managers.MapsServersManager._sSelf = this;
    }).prototype;
    _loc1.__get__isBuilding = function ()
    {
        return (this._bBuildingMap);
    };
    _loc1.__set__isBuilding = function (bBuilding)
    {
        this._bBuildingMap = bBuilding;
        //return (this.isBuilding());
    };
    (_global.dofus.managers.MapsServersManager = function ()
    {
        super();
        dofus.managers.MapsServersManager._sSelf = this;
    }).getInstance = function ()
    {
        return (dofus.managers.MapsServersManager._sSelf);
    };
    _loc1.initialize = function (oAPI)
    {
        super.initialize(oAPI, "maps", "maps/");
    };
    _loc1.loadMap = function (sID, sDate, sKey)
    {
        this._lastLoadedMap = undefined;
        if (!_global.isNaN(Number(sID)))
        {
            if (sKey != undefined && sKey.length > 0)
            {
                this._aKeys[Number(sID)] = dofus.aks.Aks.prepareKey(sKey);
            }
            else
            {
                delete this._aKeys[Number(sID)];
            } // end if
        } // end else if
        this.loadData(sID + "_" + sDate + (this._aKeys[Number(sID)] != undefined ? ("X") : ("")) + ".swf");
    };
    _loc1.getMapName = function (nMapID)
    {
        var _loc3 = this.api.lang.getMapText(nMapID);
        var _loc4 = this.api.lang.getMapAreaInfos(_loc3.sa);
        var _loc5 = this.api.lang.getMapAreaText(_loc4.areaID).n;
        var _loc6 = this.api.lang.getMapSubAreaText(_loc3.sa).n;
        var _loc7 = _loc5 + (_loc6.indexOf("//") == -1 ? (" (" + _loc6 + ")") : (""));
        if (dofus.Constants.DEBUG)
        {
            _loc7 = _loc7 + (" (" + nMapID + ")");
        } // end if
        return (_loc7);
    };
    _loc1.parseMap = function (oData)
    {
        if (this.api.network.Game.isBusy)
        {
            this.addToQueue({object: this, method: this.parseMap, params: [oData]});
            return;
        } // end if
        var _loc3 = Number(oData.id);
        if (this.api.config.isStreaming && this.api.config.streamingMethod == "compact")
        {
            var _loc4 = this.api.lang.getMapText(_loc3);
            var _loc5 = this.api.lang.getMapAreaInfos(_loc4.sa).areaID;
            var _loc6 = 2;
            var _loc7 = 0;
            
            while (_loc7 = _loc7 + 2, _loc7 < dofus.Constants.WG_GFXID_BY_AREA.length)
            {
                com.ankamagames.tools.Logger.out("currentArea" + _loc5 + " const " + dofus.Constants.WG_GFXID_BY_AREA[_loc7], "dofus.managers.MapsServersManager::parseMap", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/managers/MapsServersManager.as", 103);
                if (_loc5 == dofus.Constants.WG_GFXID_BY_AREA[_loc7])
                {
                    _loc6 = dofus.Constants.WG_GFXID_BY_AREA[_loc7 + 1];
                    com.ankamagames.tools.Logger.out("newGFXIndex " + dofus.Constants.WG_GFXID_BY_AREA[_loc7 + 1], "dofus.managers.MapsServersManager::parseMap", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/managers/MapsServersManager.as", 106);
                    break;
                } // end if
            } // end while
            com.ankamagames.tools.Logger.out("gfxIndex " + _loc6, "dofus.managers.MapsServersManager::parseMap", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/managers/MapsServersManager.as", 110);
            var _loc8 = [dofus.Constants.GFX_ROOT_PATH + "g" + _loc6 + ".swf", dofus.Constants.GFX_ROOT_PATH + "o" + _loc6 + ".swf"];
            if (!this.api.gfx.loadManager.areRegister(_loc8))
            {
                this.api.gfx.loadManager.loadFiles(_loc8);
                this.api.gfx.bCustomFileLoaded = false;
            } // end if
            if (this.api.gfx.loadManager.areLoaded(_loc8))
            {
                this.api.gfx.setCustomGfxFile(_loc8[0], _loc8[1]);
            } // end if
            if (!this.api.gfx.bCustomFileLoaded || !this.api.gfx.loadManager.areLoaded(_loc8))
            {
                var _loc9 = this.api.ui.getUIComponent("CenterTextMap");
                if (!_loc9)
                {
                    _loc9 = this.api.ui.loadUIComponent("CenterText", "CenterTextMap", {text: this.api.lang.getText("LOADING_MAP"), timer: 40000}, {bForceLoad: true});
                } // end if
                this.api.ui.getUIComponent("CenterTextMap").updateProgressBar("Downloading", this.api.gfx.loadManager.getProgressions(_loc8), 100);
                this.addToQueue({object: this, method: this.parseMap, params: [oData]});
                return;
            } // end if
        } // end if
        com.ankamagames.tools.Logger.out("BuildMap", "dofus.managers.MapsServersManager::parseMap", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/managers/MapsServersManager.as", 153);
        this._bCustomFileCall = false;
        if (this.api.network.Game.nLastMapIdReceived != _loc3 && (this.api.network.Game.nLastMapIdReceived != -1 && this.api.lang.getConfigText("CHECK_MAP_FILE_ID")))
        {
            com.ankamagames.tools.Logger.out("Donnée de map ne correspondant pas à la carte courante", "dofus.managers.MapsServersManager::parseMap", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/managers/MapsServersManager.as", 160);
            this.api.gfx.onMapLoaded();
            return;
        } // end if
        this._bBuildingMap = true;
        this._lastLoadedMap = oData;
        var _loc10 = this.getMapName(_loc3);
        var _loc11 = Number(oData.width);
        var _loc12 = Number(oData.height);
        var _loc13 = Number(oData.backgroundNum);
        var _loc14 = this._aKeys[_loc3] != undefined ? (dofus.aks.Aks.decypherData(oData.mapData, this._aKeys[_loc3], _global.parseInt(dofus.aks.Aks.checksum(this._aKeys[_loc3]), 16) * 2)) : (oData.mapData);
        var _loc15 = oData.ambianceId;
        var _loc16 = oData.musicId;
        var _loc17 = oData.bOutdoor == 1 ? (true) : (false);
        var _loc18 = (oData.capabilities & 1) == 0;
        var _loc19 = (oData.capabilities >> 1 & 1) == 0;
        var _loc20 = (oData.capabilities >> 2 & 1) == 0;
        var _loc21 = (oData.capabilities >> 3 & 1) == 0;
        this.api.datacenter.Basics.aks_current_map_id = _loc3;
        this.api.kernel.TipsManager.onNewMap(_loc3);
        this.api.kernel.StreamingDisplayManager.onNewMap(_loc3);
        var _loc22 = new dofus.datacenter.DofusMap(_loc3);
        _loc22.bCanChallenge = _loc18;
        _loc22.bCanAttack = _loc19;
        _loc22.bSaveTeleport = _loc20;
        _loc22.bUseTeleport = _loc21;
        _loc22.bOutdoor = _loc17;
        _loc22.ambianceID = _loc15;
        _loc22.musicID = _loc16;
        this.api.gfx.buildMap(_loc3, _loc10, _loc11, _loc12, _loc13, _loc14, _loc22);
        this._bBuildingMap = false;
    };
    _loc1.onComplete = function (mc)
    {
        var _loc3 = mc;
        this.parseMap(_loc3);
    };
    _loc1.onFailed = function ()
    {
        this.api.kernel.showMessage(undefined, this.api.lang.getText("NO_MAPDATA_FILE"), "ERROR_BOX", {name: "NoMapData"});
    };
    _loc1.addProperty("isBuilding", _loc1.__get__isBuilding, _loc1.__set__isBuilding);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.managers.MapsServersManager = function ()
    {
        super();
        dofus.managers.MapsServersManager._sSelf = this;
    })._sSelf = null;
    _loc1._lastLoadedMap = undefined;
    _loc1._aKeys = new Array();
    _loc1._bBuildingMap = false;
    _loc1._bCustomFileCall = false;
    _loc1._bPreloadCall = false;
} // end if
#endinitclip

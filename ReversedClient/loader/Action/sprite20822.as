// Action script...

// [Initial MovieClip Action of sprite 20822]
#initclip 87
if (!dofus.datacenter.GuildLadder)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.datacenter)
    {
        _global.dofus.datacenter = new Object();
    } // end if
    var _loc1 = (_global.dofus.datacenter.GuildLadder = function (nIdGuild, sName, nRank, nLevel, nPoints)
    {
        super();
        this._nIdGuild = nIdGuild;
        this._sName = sName;
        this._nRank = nRank;
        this._nLevel = nLevel;
        this._nPoints = nPoints;
        this._bInformationComplete = false;
    }).prototype;
    _loc1.updateInformation = function (nWin, nLoose, nDraw, nLeader, nNbMembers, nBackID, nBackColor, nUpID, nUpColor)
    {
        com.ankamagames.tools.Logger.out(nBackID + ";" + nBackColor + ";" + nUpID + ";" + nUpColor, "dofus.datacenter.GuildLadder::updateInformation", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/datacenter/GuildLadder.as", 44);
        this._nWin = nWin;
        this._nLoose = nLoose;
        this._nDraw = nDraw;
        this._nLeader = nLeader;
        this._nNbMembers = nNbMembers;
        this._nBackID = nBackID;
        this._nBackColor = nBackColor;
        this._nUpID = nUpID;
        this._nUpColor = nUpColor;
        this._bInformationComplete = true;
    };
    _loc1.__get__idGuild = function ()
    {
        return (this._nIdGuild);
    };
    _loc1.__get__name = function ()
    {
        return (this._sName);
    };
    _loc1.__get__rank = function ()
    {
        return (this._nRank);
    };
    _loc1.__get__level = function ()
    {
        return (this._nLevel);
    };
    _loc1.__get__points = function ()
    {
        return (this._nPoints);
    };
    _loc1.__get__win = function ()
    {
        return (this._nWin);
    };
    _loc1.__get__loose = function ()
    {
        return (this._nLoose);
    };
    _loc1.__get__draw = function ()
    {
        return (this._nDraw);
    };
    _loc1.__get__leader = function ()
    {
        return (this._nLeader);
    };
    _loc1.__get__nbMembers = function ()
    {
        return (this._nNbMembers);
    };
    _loc1.__get__backID = function ()
    {
        return (this._nBackID);
    };
    _loc1.__get__backColor = function ()
    {
        return (this._nBackColor);
    };
    _loc1.__get__upID = function ()
    {
        return (this._nUpID);
    };
    _loc1.__get__upColor = function ()
    {
        return (this._nUpColor);
    };
    _loc1.__get__hasCompleteInformation = function ()
    {
        return (this._bInformationComplete);
    };
    _loc1.addProperty("idGuild", _loc1.__get__idGuild, function ()
    {
    });
    _loc1.addProperty("draw", _loc1.__get__draw, function ()
    {
    });
    _loc1.addProperty("backID", _loc1.__get__backID, function ()
    {
    });
    _loc1.addProperty("backColor", _loc1.__get__backColor, function ()
    {
    });
    _loc1.addProperty("points", _loc1.__get__points, function ()
    {
    });
    _loc1.addProperty("nbMembers", _loc1.__get__nbMembers, function ()
    {
    });
    _loc1.addProperty("level", _loc1.__get__level, function ()
    {
    });
    _loc1.addProperty("rank", _loc1.__get__rank, function ()
    {
    });
    _loc1.addProperty("hasCompleteInformation", _loc1.__get__hasCompleteInformation, function ()
    {
    });
    _loc1.addProperty("win", _loc1.__get__win, function ()
    {
    });
    _loc1.addProperty("name", _loc1.__get__name, function ()
    {
    });
    _loc1.addProperty("leader", _loc1.__get__leader, function ()
    {
    });
    _loc1.addProperty("upID", _loc1.__get__upID, function ()
    {
    });
    _loc1.addProperty("upColor", _loc1.__get__upColor, function ()
    {
    });
    _loc1.addProperty("loose", _loc1.__get__loose, function ()
    {
    });
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

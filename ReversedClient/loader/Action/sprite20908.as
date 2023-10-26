// Action script...

// [Initial MovieClip Action of sprite 20908]
#initclip 173
if (!dofus.datacenter.Achievement)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.datacenter)
    {
        _global.dofus.datacenter = new Object();
    } // end if
    var _loc1 = (_global.dofus.datacenter.Achievement = function (nID, name, desc, point, pictoId, forAccount)
    {
        super();
        this.initialize(nID, name, desc, point, pictoId, forAccount);
    }).prototype;
    _loc1.__get__id = function ()
    {
        return (this._nID);
    };
    _loc1.__get__name = function ()
    {
        return (this._name);
    };
    _loc1.__get__desc = function ()
    {
        return (this._desc);
    };
    _loc1.__get__point = function ()
    {
        return (this._point);
    };
    _loc1.__get__pistoId = function ()
    {
        return (this._pictoId);
    };
    _loc1.__get__isCompleted = function ()
    {
        return (this._bCompleted);
    };
    _loc1.__set__completed = function (completed)
    {
        this._bCompleted = completed;
        //return (this.completed());
    };
    _loc1.__get__forAccount = function ()
    {
        return (this._forAccount);
    };
    _loc1.initialize = function (nID, name, desc, point, pictoId, forAccount)
    {
        this.api = _global.API;
        this._nID = nID;
        this._name = name;
        this._desc = desc;
        this._point = point;
        this._pictoId = pictoId;
        this._forAccount = forAccount;
        if (this._forAccount)
        {
        } // end if
    };
    _loc1.addProperty("desc", _loc1.__get__desc, function ()
    {
    });
    _loc1.addProperty("forAccount", _loc1.__get__forAccount, function ()
    {
    });
    _loc1.addProperty("pistoId", _loc1.__get__pistoId, function ()
    {
    });
    _loc1.addProperty("name", _loc1.__get__name, function ()
    {
    });
    _loc1.addProperty("isCompleted", _loc1.__get__isCompleted, function ()
    {
    });
    _loc1.addProperty("point", _loc1.__get__point, function ()
    {
    });
    _loc1.addProperty("id", _loc1.__get__id, function ()
    {
    });
    _loc1.addProperty("completed", function ()
    {
    }, _loc1.__set__completed);
    ASSetPropFlags(_loc1, null, 1);
    _loc1._bCompleted = false;
} // end if
#endinitclip

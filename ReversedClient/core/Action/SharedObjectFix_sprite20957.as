// Action script...

// [Initial MovieClip Action of sprite 20957]
#initclip 222
if (!ank.utils.SharedObjectFix)
{
    if (!ank)
    {
        _global.ank = new Object();
    } // end if
    if (!ank.utils)
    {
        _global.ank.utils = new Object();
    } // end if
    var _loc1 = (_global.ank.utils.SharedObjectFix = function (name)
    {
        super();
        this._name = name;
        if (ank.utils.SharedObjectFix._so == null)
        {
            ank.utils.SharedObjectFix._so = SharedObject.getLocal(ank.utils.SharedObjectFix._soName);
            if (ank.utils.SharedObjectFix._so.data._Data == undefined)
            {
                ank.utils.SharedObjectFix._so.data._Data = new Object();
            } // end if
            ank.utils.SharedObjectFix._so.onStatus = this._onStatus;
            ank.utils.SharedObjectFix._so.onSync = this._onSync;
        } // end if
        if (ank.utils.SharedObjectFix._so.data._Data[this._name] == undefined)
        {
            ank.utils.SharedObjectFix._so.data._Data[this._name] = new Object();
        } // end if
        this.data = ank.utils.SharedObjectFix._so.data._Data[this._name];
    }).prototype;
    _loc1._onStatus = function (infoObject)
    {
        com.ankamagames.tools.Logger.out("WG SharedObjectFix.as:54 onStatus", "ank.utils.SharedObjectFix::_onStatus", "E:\\My_Work\\WLG2\\WG2\\client\\AnkCommon\\classes/ank/utils/SharedObjectFix.as", 59);
        for (var index in ank.utils.SharedObjectFix._oLocalCache)
        {
            if (ank.utils.SharedObjectFix._oLocalCache[index].onStatus)
            {
                ank.utils.SharedObjectFix._oLocalCache[index].onStatus(infoObject);
            } // end if
        } // end of for...in
    };
    _loc1._onSync = function (objArray)
    {
        com.ankamagames.tools.Logger.out("WG SharedObjectFix.as:61 onSync", "ank.utils.SharedObjectFix::_onSync", "E:\\My_Work\\WLG2\\WG2\\client\\AnkCommon\\classes/ank/utils/SharedObjectFix.as", 66);
        for (var index in ank.utils.SharedObjectFix._oLocalCache)
        {
            if (ank.utils.SharedObjectFix._oLocalCache[index].onSync)
            {
                ank.utils.SharedObjectFix._oLocalCache[index].onSync(objArray);
            } // end if
        } // end of for...in
    };
    _loc1.clear = function ()
    {
        this.data = new Object();
        this.flush();
    };
    _loc1.close = function ()
    {
        this.flush();
    };
    _loc1.flush = function (minDiskSpace)
    {
        if (minDiskSpace == undefined)
        {
            minDiskSpace = ank.utils.SharedObjectFix._soDefaultRequestedSize;
        } // end if
        ank.utils.SharedObjectFix._so.data._Data[this._name] = this.data;
        return (ank.utils.SharedObjectFix._so.flush(minDiskSpace));
    };
    _loc1.getSize = function ()
    {
        return (ank.utils.SharedObjectFix.getDiskUsage());
    };
    _loc1.connect = function (myConnection)
    {
        ank.utils.SharedObjectFix._so.data._Data[this._name] = this.data;
        return (ank.utils.SharedObjectFix._so.connect(myConnection));
    };
    _loc1.send = function (handlerName)
    {
        ank.utils.SharedObjectFix._so.data._Data[this._name] = this.data;
        ank.utils.SharedObjectFix._so.send(handlerName);
    };
    _loc1.setFps = function (updatesPerSecond)
    {
        ank.utils.SharedObjectFix._so.data._Data[this._name] = this.data;
        return (ank.utils.SharedObjectFix._so.setFps(updatesPerSecond));
    };
    (_global.ank.utils.SharedObjectFix = function (name)
    {
        super();
        this._name = name;
        if (ank.utils.SharedObjectFix._so == null)
        {
            ank.utils.SharedObjectFix._so = SharedObject.getLocal(ank.utils.SharedObjectFix._soName);
            if (ank.utils.SharedObjectFix._so.data._Data == undefined)
            {
                ank.utils.SharedObjectFix._so.data._Data = new Object();
            } } // end if
            ank.utils.SharedObjectFix._so.onStatus = this._onStatus;
            ank.utils.SharedObjectFix._so.onSync = this._onSync;
        } } // end if
        if (ank.utils.SharedObjectFix._so.data._Data[this._name] == undefined)
        {
            ank.utils.SharedObjectFix._so.data._Data[this._name] = new Object();
        } } // end if
        this.data = ank.utils.SharedObjectFix._so.data._Data[this._name];
    }).getLocal = function (name)
    {
        if (!ank.utils.SharedObjectFix._oLocalCache[name])
        {
            ank.utils.SharedObjectFix._oLocalCache[name] = new ank.utils.SharedObjectFix(name);
        } // end if
        return (ank.utils.SharedObjectFix._oLocalCache[name]);
    };
    (_global.ank.utils.SharedObjectFix = function (name)
    {
        super();
        this._name = name;
        if (ank.utils.SharedObjectFix._so == null)
        {
            ank.utils.SharedObjectFix._so = SharedObject.getLocal(ank.utils.SharedObjectFix._soName);
            if (ank.utils.SharedObjectFix._so.data._Data == undefined)
            {
                ank.utils.SharedObjectFix._so.data._Data = new Object();
            } } } // end if
            ank.utils.SharedObjectFix._so.onStatus = this._onStatus;
            ank.utils.SharedObjectFix._so.onSync = this._onSync;
        } } } // end if
        if (ank.utils.SharedObjectFix._so.data._Data[this._name] == undefined)
        {
            ank.utils.SharedObjectFix._so.data._Data[this._name] = new Object();
        } } } // end if
        this.data = ank.utils.SharedObjectFix._so.data._Data[this._name];
    }).deleteAll = function (url)
    {
        ank.utils.SharedObjectFix._oLocalCache = new Object();
        ank.utils.SharedObjectFix._so.clear();
    };
    (_global.ank.utils.SharedObjectFix = function (name)
    {
        super();
        this._name = name;
        if (ank.utils.SharedObjectFix._so == null)
        {
            ank.utils.SharedObjectFix._so = SharedObject.getLocal(ank.utils.SharedObjectFix._soName);
            if (ank.utils.SharedObjectFix._so.data._Data == undefined)
            {
                ank.utils.SharedObjectFix._so.data._Data = new Object();
            } } } } // end if
            ank.utils.SharedObjectFix._so.onStatus = this._onStatus;
            ank.utils.SharedObjectFix._so.onSync = this._onSync;
        } } } } // end if
        if (ank.utils.SharedObjectFix._so.data._Data[this._name] == undefined)
        {
            ank.utils.SharedObjectFix._so.data._Data[this._name] = new Object();
        } } } } // end if
        this.data = ank.utils.SharedObjectFix._so.data._Data[this._name];
    }).getDiskUsage = function (url)
    {
        return (SharedObject.getDiskUsage(url));
    };
    ASSetPropFlags(_loc1, null, 1);
    (_global.ank.utils.SharedObjectFix = function (name)
    {
        super();
        this._name = name;
        if (ank.utils.SharedObjectFix._so == null)
        {
            ank.utils.SharedObjectFix._so = SharedObject.getLocal(ank.utils.SharedObjectFix._soName);
            if (ank.utils.SharedObjectFix._so.data._Data == undefined)
            {
                ank.utils.SharedObjectFix._so.data._Data = new Object();
            } } } } } // end if
            ank.utils.SharedObjectFix._so.onStatus = this._onStatus;
            ank.utils.SharedObjectFix._so.onSync = this._onSync;
        } } } } } // end if
        if (ank.utils.SharedObjectFix._so.data._Data[this._name] == undefined)
        {
            ank.utils.SharedObjectFix._so.data._Data[this._name] = new Object();
        } } } } } // end if
        this.data = ank.utils.SharedObjectFix._so.data._Data[this._name];
    })._soName = "WRAP";
    (_global.ank.utils.SharedObjectFix = function (name)
    {
        super();
        this._name = name;
        if (ank.utils.SharedObjectFix._so == null)
        {
            ank.utils.SharedObjectFix._so = SharedObject.getLocal(ank.utils.SharedObjectFix._soName);
            if (ank.utils.SharedObjectFix._so.data._Data == undefined)
            {
                ank.utils.SharedObjectFix._so.data._Data = new Object();
            } } } } } } // end if
            ank.utils.SharedObjectFix._so.onStatus = this._onStatus;
            ank.utils.SharedObjectFix._so.onSync = this._onSync;
        } } } } } } // end if
        if (ank.utils.SharedObjectFix._so.data._Data[this._name] == undefined)
        {
            ank.utils.SharedObjectFix._so.data._Data[this._name] = new Object();
        } } } } } } // end if
        this.data = ank.utils.SharedObjectFix._so.data._Data[this._name];
    })._soDefaultRequestedSize = 2097152;
    (_global.ank.utils.SharedObjectFix = function (name)
    {
        super();
        this._name = name;
        if (ank.utils.SharedObjectFix._so == null)
        {
            ank.utils.SharedObjectFix._so = SharedObject.getLocal(ank.utils.SharedObjectFix._soName);
            if (ank.utils.SharedObjectFix._so.data._Data == undefined)
            {
                ank.utils.SharedObjectFix._so.data._Data = new Object();
            } } } } } } } // end if
            ank.utils.SharedObjectFix._so.onStatus = this._onStatus;
            ank.utils.SharedObjectFix._so.onSync = this._onSync;
        } } } } } } } // end if
        if (ank.utils.SharedObjectFix._so.data._Data[this._name] == undefined)
        {
            ank.utils.SharedObjectFix._so.data._Data[this._name] = new Object();
        } } } } } } } // end if
        this.data = ank.utils.SharedObjectFix._so.data._Data[this._name];
    })._so = null;
    (_global.ank.utils.SharedObjectFix = function (name)
    {
        super();
        this._name = name;
        if (ank.utils.SharedObjectFix._so == null)
        {
            ank.utils.SharedObjectFix._so = SharedObject.getLocal(ank.utils.SharedObjectFix._soName);
            if (ank.utils.SharedObjectFix._so.data._Data == undefined)
            {
                ank.utils.SharedObjectFix._so.data._Data = new Object();
            } } } } } } } } // end if
            ank.utils.SharedObjectFix._so.onStatus = this._onStatus;
            ank.utils.SharedObjectFix._so.onSync = this._onSync;
        } } } } } } } } // end if
        if (ank.utils.SharedObjectFix._so.data._Data[this._name] == undefined)
        {
            ank.utils.SharedObjectFix._so.data._Data[this._name] = new Object();
        } } } } } } } } // end if
        this.data = ank.utils.SharedObjectFix._so.data._Data[this._name];
    })._oLocalCache = new Object();
} // end if
#endinitclip

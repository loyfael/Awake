// Action script...

// [Initial MovieClip Action of sprite 20597]
#initclip 118
if (!com.ankamagames.tools.Logger)
{
    if (!com)
    {
        _global.com = new Object();
    } // end if
    if (!com.ankamagames)
    {
        _global.com.ankamagames = new Object();
    } // end if
    if (!com.ankamagames.tools)
    {
        _global.com.ankamagames.tools = new Object();
    } // end if
    var _loc1 = (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).prototype;
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).initialize = function ()
    {
        com.ankamagames.tools.Logger.instance = new com.ankamagames.tools.Logger();
    };
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).out = function ()
    {
        var _loc2 = arguments[0];
        var _loc3 = arguments[arguments.length - 3];
        var _loc4 = arguments[arguments.length - 2];
        var _loc5 = arguments[arguments.length - 1];
        var _loc6 = arguments.length > 4 ? (arguments[1]) : (undefined);
        var _loc7 = new String(_loc2);
        if (_loc7.substr(0, 2) == "WG")
        {
            _loc7 = _loc7.substr(2);
            _loc6 = com.ankamagames.tools.Logger.WG;
        }
        else if (_loc7.toUpperCase().indexOf("[EXCEPTION]") == 0)
        {
            _loc7 = _loc7.substr(12);
            _loc6 = com.ankamagames.tools.Logger.ERROR;
        }
        else if (_loc7.toUpperCase().indexOf("[WTF]") == 0)
        {
            _loc7 = _loc7.substr(5);
            _loc6 = com.ankamagames.tools.Logger.TRACE;
        }
        else if (_loc7.indexOf("[?!!]") == 0)
        {
            _loc7 = _loc7.substr(5);
            _loc6 = com.ankamagames.tools.Logger.FATAL;
        } // end else if
        com.ankamagames.tools.Logger.instance.trace(_loc7, _loc6);
    };
    _loc1.connect = function ()
    {
        this._socket = new XMLSocket();
        this._connected = false;
        this._socket.onConnect = function (success)
        {
            var _loc3 = arguments.callee.tracer;
            _loc3.onConnected(success);
        };
        this._socket.onClose = function ()
        {
            var _loc2 = arguments.callee.tracer;
            _loc2.onSocketClose();
        };
        this._socket.onConnect.tracer = this;
        this._socket.connect(com.ankamagames.tools.Logger.SERVER_HOST, com.ankamagames.tools.Logger.SERVER_PORT);
    };
    _loc1.trace = function (message, level)
    {
        if (level == undefined)
        {
            level = com.ankamagames.tools.Logger.TRACE;
        } // end if
        if (this._connected)
        {
            this._socket.send("!SOS<showMessage key=\"" + level + "\"><![CDATA[" + message + "]]></showMessage>");
        }
        else
        {
            var _loc4 = new Array();
            _loc4[0] = level;
            _loc4[1] = message;
            this._buffer.push(_loc4);
        } // end else if
    };
    _loc1.onSocketClose = function ()
    {
        if (this._nCurrentReconnection < com.ankamagames.tools.Logger.MAX_RECONNECTION_COUNT)
        {
            this.connect();
            ++this._nCurrentReconnection;
        } // end if
    };
    _loc1.onConnected = function (success)
    {
        var _loc3 = 0;
        
        while (_loc3 = _loc3 + 2, _loc3 < com.ankamagames.tools.Logger.LEVEL_COLORS.length - 1)
        {
            this._socket.send("!SOS<setKey><name>" + com.ankamagames.tools.Logger.LEVEL_COLORS[_loc3] + "</name><color>" + com.ankamagames.tools.Logger.LEVEL_COLORS[_loc3 + 1] + "</color></setKey>");
        } // end while
        var _loc4 = 0;
        
        while (++_loc4, _loc4 < this._buffer.length)
        {
            this._socket.send("!SOS<showMessage key=\"" + this._buffer[_loc4][0] + "\"><![CDATA[" + this._buffer[_loc4][1] + "]]></showMessage>");
        } // end while
        this._connected = true;
        this._nCurrentReconnection = 0;
    };
    ASSetPropFlags(_loc1, null, 1);
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).SERVER_HOST = "localhost";
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).SERVER_PORT = 4444;
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).DEBUG = "debug";
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).ERROR = "error";
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).WARNING = "warn";
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).TRACE = "trace";
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).FATAL = "fatal";
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).NETWORK_IN = "net_in";
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).NETWORK_OUT = "net_out";
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).WG = "wg";
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).LEVEL_COLORS = [com.ankamagames.tools.Logger.WG, 65535, com.ankamagames.tools.Logger.NETWORK_IN, 10079487, com.ankamagames.tools.Logger.NETWORK_OUT, 13434828];
    (_global.com.ankamagames.tools.Logger = function ()
    {
        this._buffer = new Array();
        this.connect();
    }).MAX_RECONNECTION_COUNT = 10;
    _loc1._nCurrentReconnection = 0;
} // end if
#endinitclip

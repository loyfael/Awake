// Action script...

// [Initial MovieClip Action of sprite 20805]
#initclip 70
if (!ank.gapi.controls.CircleChrono)
{
    if (!ank)
    {
        _global.ank = new Object();
    } // end if
    if (!ank.gapi)
    {
        _global.ank.gapi = new Object();
    } // end if
    if (!ank.gapi.controls)
    {
        _global.ank.gapi.controls = new Object();
    } // end if
    var _loc1 = (_global.ank.gapi.controls.CircleChrono = function ()
    {
        super();
    }).prototype;
    _loc1.startTimer = function (nDuration)
    {
        _global.clearInterval(this._nIntervalID);
        nDuration = Number(nDuration);
        if (_global.isNaN(nDuration))
        {
            return;
        } // end if
        if (nDuration < 0)
        {
            return;
        } // end if
        this._nMaxTime = nDuration;
        this._nTimerValue = nDuration;
        this.updateTimer();
        this._nIntervalID = _global.setInterval(this, "updateTimer", 1000);
        this.dispatchEvent({type: "start"});
    };
    _loc1.stopTimer = function ()
    {
        _global.clearInterval(this._nIntervalID);
        this.dispatchEvent({type: "finish"});
        this.addToQueue({object: this, method: this.initialize});
    };
    _loc1.init = function ()
    {
        super.init(false, ank.gapi.controls.CircleChrono.CLASS_NAME);
    };
    _loc1.createChildren = function ()
    {
    };
    _loc1.arrange = function ()
    {
    };
    _loc1.draw = function ()
    {
    };
    _loc1.updateTimer = function ()
    {
        this.dispatchEvent({type: "tictac"});
        var _loc2 = this._nTimerValue / this._nMaxTime;
        var _loc3 = 150 * (1 - this._nTimerValue / this._nMaxTime);
        this.setRtation(this._mask, _loc3);
        if (this._nTimerValue - 5 <= this._nFinalCountDownTrigger)
        {
            this.dispatchEvent({type: "beforeFinalCountDown", value: Math.ceil(this._nTimerValue)});
        } // end if
        if (this._nTimerValue <= this._nFinalCountDownTrigger)
        {
            this.dispatchEvent({type: "finalCountDown", value: Math.ceil(this._nTimerValue)});
        } // end if
        --this._nTimerValue;
        if (this._nTimerValue < 0)
        {
            this.stopTimer();
        } // end if
    };
    _loc1.initialize = function ()
    {
        this.setRtation(this._mask, 0);
    };
    _loc1.setRtation = function (mc, nAngle)
    {
        mc._rotation = -nAngle;
    };
    ASSetPropFlags(_loc1, null, 1);
    (_global.ank.gapi.controls.CircleChrono = function ()
    {
        super();
    }).CLASS_NAME = "CircleChrono";
    _loc1._sBackgroundLink = "CircleChronoHalfDefault";
    _loc1._nFinalCountDownTrigger = 5;
} // end if
#endinitclip

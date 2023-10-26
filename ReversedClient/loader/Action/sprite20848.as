// Action script...

// [Initial MovieClip Action of sprite 20848]
#initclip 113
if (!dofus.graphics.battlefield.GuildOverHead)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.graphics)
    {
        _global.dofus.graphics = new Object();
    } // end if
    if (!dofus.graphics.battlefield)
    {
        _global.dofus.graphics.battlefield = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.battlefield.GuildOverHead = function (sText, sLevel, sSpriteName, oEmblem, sFile, nFrame, nPvpGain, title)
    {
        super();
        this.initialize(title != undefined);
        com.ankamagames.tools.Logger.out("title : " + title, "dofus.graphics.battlefield.GuildOverHead::GuildOverHead", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/battlefield/GuildOverHead.as", 25);
        this.draw(sText, sLevel, sSpriteName, oEmblem, sFile, nFrame, nPvpGain, title);
    }).prototype;
    _loc1.initialize = function (displayTitle)
    {
        super.initialize();
        this.createTextField("_txtGuildName", 30, 0, -2 + dofus.graphics.battlefield.AbstractTextOverHead.HEIGHT_SPACER, 0, 0);
        this.createTextField("_txtSpriteName", 40, 0, 13 + dofus.graphics.battlefield.AbstractTextOverHead.HEIGHT_SPACER, 0, 0);
        if (displayTitle)
        {
            this.createTextField("_txtTitle", 31, 0, -2 + dofus.graphics.battlefield.AbstractTextOverHead.HEIGHT_SPACER, 0, 0);
            this._txtTitle.embedFonts = true;
        } // end if
    };
    _loc1.draw = function (sGuildName, sLevel, sSpriteName, oEmblem, sFile, nFrame, nPvpGain, title)
    {
        var _loc10 = sLevel < 5 ? (0) : (1);
        var _loc11 = sFile != undefined && nFrame != undefined;
        if (nPvpGain == undefined)
        {
            nPvpGain = 0;
        } // end if
        this._txtGuildName.embedFonts = true;
        this._txtGuildName.autoSize = _loc10 > 0 ? ("left") : ("center");
        this._txtGuildName.text = sGuildName;
        this._txtGuildName.selectable = false;
        this._txtGuildName.setTextFormat(dofus.graphics.battlefield.AbstractTextOverHead.TEXT_SMALL_FORMAT);
        this._txtSpriteName.embedFonts = true;
        this._txtSpriteName.autoSize = _loc10 > 0 ? ("left") : ("center");
        this._txtSpriteName.text = sSpriteName;
        this._txtSpriteName.selectable = false;
        this._txtSpriteName.setTextFormat(dofus.graphics.battlefield.AbstractTextOverHead.TEXT_FORMAT);
        var _loc14 = 0;
        if (title)
        {
            this._txtTitle.autoSize = "center";
            this._txtTitle.text = title.text;
            this._txtTitle.selectable = false;
            this._txtTitle.setTextFormat(dofus.graphics.battlefield.AbstractTextOverHead.TEXT_FORMAT2);
            if (title.color != undefined)
            {
                this._txtTitle.textColor = title.color;
            } // end if
            var _loc12 = Math.ceil(30 + dofus.graphics.battlefield.AbstractTextOverHead.HEIGHT_SPACER * 3 + this._txtTitle.textHeight);
            var _loc15 = Math.ceil(Math.max(this._txtGuildName.textWidth, this._txtSpriteName.textWidth) + dofus.graphics.battlefield.AbstractTextOverHead.WIDTH_SPACER * 4) + (_loc10 > 0 ? (30) : (0));
            var _loc13 = Math.ceil(Math.max(_loc15, this._txtTitle.textWidth + dofus.graphics.battlefield.AbstractTextOverHead.WIDTH_SPACER * 2));
            _loc14 = dofus.graphics.battlefield.AbstractTextOverHead.HEIGHT_SPACER + this._txtTitle.textHeight;
            if (_loc10 > 0)
            {
                this._txtGuildName._x = this._txtSpriteName._x = -_loc13 / 2 + (_loc10 > 0 ? (30) : (0)) + dofus.graphics.battlefield.AbstractTextOverHead.WIDTH_SPACER * 2;
            } // end if
            this._txtTitle._y = 27 + dofus.graphics.battlefield.AbstractTextOverHead.HEIGHT_SPACER * 2;
        }
        else
        {
            _loc12 = Math.ceil(30 + dofus.graphics.battlefield.AbstractTextOverHead.HEIGHT_SPACER * 2);
            _loc13 = Math.ceil(Math.max(this._txtGuildName.textWidth, this._txtSpriteName.textWidth) + dofus.graphics.battlefield.AbstractTextOverHead.WIDTH_SPACER * 4) + (_loc10 > 0 ? (30) : (0));
            if (_loc10 > 0)
            {
                this._txtGuildName._x = this._txtSpriteName._x = -_loc13 / 2 + (_loc10 > 0 ? (30) : (0)) + dofus.graphics.battlefield.AbstractTextOverHead.WIDTH_SPACER * 2;
            } // end if
        } // end else if
        this.drawBackground(_loc13, _loc12, dofus.graphics.battlefield.AbstractTextOverHead.BACKGROUND_COLOR);
        if (_loc10 > 0)
        {
            this.attachMovie("Emblem", "_eEmblem", 100, {_x: Math.ceil(-_loc13 / 2) + dofus.graphics.battlefield.AbstractTextOverHead.WIDTH_SPACER, _y: dofus.graphics.battlefield.AbstractTextOverHead.HEIGHT_SPACER, _height: 30, _width: 30, data: oEmblem, shadow: true});
        } // end if
        if (_loc11)
        {
            this.drawGfx(sFile, nFrame);
            this.addPvpGfxEffect(nPvpGain, nFrame);
        } // end if
    };
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

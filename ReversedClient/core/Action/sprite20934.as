// Action script...

// [Initial MovieClip Action of sprite 20934]
#initclip 199
if (!dofus.graphics.gapi.ui.Friends)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    if (!dofus.graphics)
    {
        _global.dofus.graphics = new Object();
    } // end if
    if (!dofus.graphics.gapi)
    {
        _global.dofus.graphics.gapi = new Object();
    } // end if
    if (!dofus.graphics.gapi.ui)
    {
        _global.dofus.graphics.gapi.ui = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.gapi.ui.Friends = function ()
    {
        super();
    }).prototype;
    _loc1.__set__clanList = function (aMembres)
    {
        if (this._sCurrentTab != "Clan")
        {
            return;
        } // end if
        var _loc3 = new ank.utils.ExtendedArray();
        var _loc4 = new ank.utils.ExtendedArray();
        var _loc5 = 0;
        
        while (++_loc5, _loc5 < aMembres.length)
        {
            var _loc6 = aMembres[_loc5];
            if (_loc6.account.length == 0)
            {
                continue;
            } // end if
            _loc3.push(_loc6);
        } // end while
        this._dgOnLineClan.dataProvider = _loc3;
        this._dgOffLine.dataProvider = _loc4;
        //return (this.clanList());
    };
    _loc1.__set__enemiesList = function (aEnemies)
    {
        if (this._sCurrentTab != "Enemies")
        {
            return;
        } // end if
        var _loc3 = new ank.utils.ExtendedArray();
        var _loc4 = new ank.utils.ExtendedArray();
        var _loc5 = 0;
        
        while (++_loc5, _loc5 < aEnemies.length)
        {
            var _loc6 = aEnemies[_loc5];
            if (_loc6.account.length == 0)
            {
                continue;
            } // end if
            if (_loc6.state != "DISCONNECT")
            {
                _loc3.push(_loc6);
                continue;
            } // end if
            _loc4.push(_loc6);
        } // end while
        this._dgOnLine.dataProvider = _loc3;
        this._dgOffLine.dataProvider = _loc4;
        //return (this.enemiesList());
    };
    _loc1.__set__friendsList = function (aFriends)
    {
        if (this._sCurrentTab != "Friends")
        {
            return;
        } // end if
        var _loc3 = new ank.utils.ExtendedArray();
        var _loc4 = new ank.utils.ExtendedArray();
        var _loc5 = 0;
        
        while (++_loc5, _loc5 < aFriends.length)
        {
            var _loc6 = aFriends[_loc5];
            if (_loc6.account.length == 0)
            {
                continue;
            } // end if
            if (_loc6.state != "DISCONNECT")
            {
                _loc3.push(_loc6);
                continue;
            } // end if
            _loc4.push(_loc6);
        } // end while
        this._dgOnLine.dataProvider = _loc3;
        this._dgOffLine.dataProvider = _loc4;
        //return (this.friendsList());
    };
    _loc1.__set__spouse = function (oSpouse)
    {
        if (this._svSpouse != undefined)
        {
            this._svSpouse.swapDepths(this._mcSpousePlacer);
            this._svSpouse.removeMovieClip();
        } // end if
        this.attachMovie("SpouseViewer", "_svSpouse", 10, {_x: this._mcSpousePlacer._x, _y: this._mcSpousePlacer._y, spouse: oSpouse});
        this._svSpouse.swapDepths(this._mcSpousePlacer);
        //return (this.spouse());
    };
    _loc1.removeFriend = function (sName)
    {
        switch (this._sCurrentTab)
        {
            case "Enemies":
            {
                this.api.network.Enemies.removeEnemy(sName);
                break;
            } 
            case "Friends":
            {
                this.api.network.Friends.removeFriend(sName);
                break;
            } 
            case "Ignore":
            {
                this.api.kernel.ChatManager.removeToBlacklist(sName);
                this.updateIgnoreList();
                break;
            } 
        } // End of switch
    };
    _loc1.updateIgnoreList = function ()
    {
        if (this._sCurrentTab != "Ignore")
        {
            return;
        } // end if
        var _loc2 = this.api.kernel.ChatManager.getBlacklist();
        var _loc3 = new ank.utils.ExtendedArray();
        for (var i in _loc2)
        {
            if (_loc2[i] == undefined)
            {
                continue;
            } // end if
            var _loc4 = new Object();
            _loc4.name = _loc2[i].sName;
            _loc4.gfxID = _loc2[i].nClass;
            _loc3.push(_loc4);
        } // end of for...in
        this._dgOffLine.dataProvider = new ank.utils.ExtendedArray();
        this._dgOnLine.dataProvider = _loc3;
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.Friends.CLASS_NAME);
        this.gapi.getUIComponent("Banner").chatAutoFocus = false;
    };
    _loc1.destroy = function ()
    {
        this.gapi.getUIComponent("Banner").chatAutoFocus = true;
    };
    _loc1.callClose = function ()
    {
        this.unloadThis();
        return (true);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.addListeners});
        this.addToQueue({object: this, method: this.setTextFocus});
        this.addToQueue({object: this, method: this.initData});
        this.addToQueue({object: this, method: this.setCurrentTab, params: [this._sCurrentTab]});
        this.api.network.Friends.getFriendsList();
        this._mcSpousePlacer._visible = false;
    };
    _loc1.initTexts = function ()
    {
        switch (this._sCurrentTab)
        {
            case "Enemies":
            {
                this._winBg.title = this.api.lang.getText("ENEMIES");
                this._lblAddFriend.text = this.api.lang.getText("ADD_AN_ENEMY");
                this._lblInfo.text = this.api.lang.getText("FRIENDS_INFO_ENEMIES");
                this._dgOnLine._visible = true;
                this._dgOffLine._visible = true;
                this._dgOnLineClan._visible = false;
                this._lblClanName._visible = false;
                this._eEmblem._visible = false;
                this._lblClanData._visible = false;
                this._dgOnLine.columnsNames = ["", this.api.lang.getText("ACCOUNT") + " (" + this.api.lang.getText("NAME") + ")", this.api.lang.getText("LEVEL"), "", ""];
                this._lblOffLine._visible = this._lblOnLine._visible = true;
                this._lblHelp._visible = this._mcHelpBackground._visible = false;
                break;
            } 
            case "Friends":
            {
                this._winBg.title = this.api.lang.getText("FRIENDS");
                this._lblAddFriend.text = this.api.lang.getText("ADD_A_FRIEND");
                this._lblInfo.text = this.api.lang.getText("FRIENDS_INFO_FRIENDS");
                this._dgOnLine._visible = true;
                this._dgOffLine._visible = true;
                this._dgOnLineClan._visible = false;
                this._lblClanName._visible = false;
                this._eEmblem._visible = false;
                this._lblClanData._visible = false;
                this._btnLadder._visible = false;
                this._btnLadderOver._visible = false;
                this._dgOnLine.columnsNames = ["", this.api.lang.getText("ACCOUNT") + " (" + this.api.lang.getText("NAME") + ")", this.api.lang.getText("LEVEL"), "", ""];
                this._lblOffLine._visible = this._lblOnLine._visible = true;
                this._lblHelp._visible = this._mcHelpBackground._visible = false;
                break;
            } 
            case "Clan":
            {
                this._winBg.title = this.api.lang.getText("CLAN");
                this._lblAddFriend.text = "Inviter un membre";
                this._lblInfo.text = "Liste des membres du clan";
                this._dgOnLine._visible = false;
                this._dgOffLine._visible = false;
                this._dgOnLineClan._visible = true;
                this._btnLadder._visible = true;
                this._lblClanName._visible = this.api.datacenter.Player.guildInfos != undefined;
                this._eEmblem._visible = this.api.datacenter.Player.guildInfos != undefined;
                this._lblClanData._visible = this.api.datacenter.Player.guildInfos != undefined;
                if (this.api.datacenter.Player.guildInfos != undefined)
                {
                    if (this.api.datacenter.Player.guildInfos.points != -1)
                    {
                        this._btnLadder.enabled = true;
                        this._btnLadderOver._visible = false;
                    }
                    else
                    {
                        this._btnLadderOver._visible = true;
                        this._btnLadder.enabled = false;
                    } // end else if
                }
                else
                {
                    this._btnLadderOver._visible = false;
                    this._btnLadder._visible = false;
                } // end else if
                this._lblClanName.text = this.api.datacenter.Player.guildInfos.name;
                var _loc2 = this.api.datacenter.Player.guildInfos.emblem;
                this._eEmblem.backID = _loc2.backID;
                this._eEmblem.backColor = _loc2.backColor;
                this._eEmblem.upID = _loc2.upID;
                this._eEmblem.upColor = _loc2.upColor;
                this._lblClanData.text = "Niveau : " + this.api.datacenter.Player.guildInfos.level + "\n\nPoints :\n\nClassement :\n\nVictoire(s) :\nDéfaite(s) :\nEgalité(s) :";
                this._dgOnLineClan.columnsNames = ["", "Nom", "Grade", "Niv.", "", ""];
                this._lblOffLine._visible = this._lblOnLine._visible = false;
                this._lblHelp._visible = this._mcHelpBackground._visible = false;
                break;
            } 
            case "Ignore":
            {
                this._winBg.title = this.api.lang.getText("IGNORED");
                this._lblAddFriend.text = this.api.lang.getText("ADD_A_IGNORED");
                this._lblInfo.text = this.api.lang.getText("FRIENDS_INFO_IGNORE");
                this._dgOnLine._visible = true;
                this._dgOffLine._visible = true;
                this._dgOnLineClan._visible = false;
                this._lblClanName._visible = false;
                this._eEmblem._visible = false;
                this._lblClanData._visible = false;
                this._btnLadder._visible = false;
                this._btnLadderOver._visible = false;
                this._dgOnLine.columnsNames = ["", this.api.lang.getText("NAME").substr(0, 1).toUpperCase() + this.api.lang.getText("NAME").substr(1), "", ""];
                this._lblOffLine._visible = this._lblOnLine._visible = false;
                this._lblHelp._visible = this._mcHelpBackground._visible = true;
                break;
            } 
        } // End of switch
        this._btnTabFriends.label = this.api.lang.getText("FRIENDS");
        this._btnTabEnemies.label = this.api.lang.getText("ENEMIES");
        this._btnTabIgnore.label = this.api.lang.getText("IGNORED");
        this._btnTabClan.label = this.api.lang.getText("CLAN");
        this._lblHelp.text = this.api.lang.getText("IGNORED_DESC");
        this._dgOffLine.columnsNames = this._sCurrentTab == "Ignore" ? ([this.api.lang.getText("INFORMATIONS")]) : ([this.api.lang.getText("ACCOUNT")]);
        this._lblOnLine.text = this.api.lang.getText("ONLINE");
        this._lblOffLine.text = this.api.lang.getText("OFFLINE");
        this._btnAdd.label = this.api.lang.getText("ADD");
        this._btnLadder.label = "Classement";
        this._btnLadderOver._alpha = 0;
        this._lblShowFriendsWarning.text = this.api.lang.getText("WARNING_WHEN_FRIENDS_COME_ONLINE");
        if (!this.api.lang.getConfigText("ENABLE_IGNORE_LIST"))
        {
            this._btnSwapMode._visible = false;
        } // end if
    };
    _loc1.addListeners = function ()
    {
        this._btnAdd.addEventListener("click", this);
        this._btnClose.addEventListener("click", this);
        this._btnLadder.addEventListener("click", this);
        this._btnTabFriends.addEventListener("click", this);
        this._btnTabEnemies.addEventListener("click", this);
        this._btnTabIgnore.addEventListener("click", this);
        this._btnTabClan.addEventListener("click", this);
        this._btnShowFriendsWarning.addEventListener("click", this);
        this._btnShowFriendsWarning.addEventListener("over", this);
        this._btnShowFriendsWarning.addEventListener("out", this);
        this._dgOnLine.addEventListener("itemSelected", this);
        this._dgOnLine.addEventListener("itemdblClick", this);
        this._dgOnLineClan.addEventListener("itemSelected", this);
        this._dgOnLineClan.addEventListener("itemdblClick", this);
        this._btnLadderOver.addEventListener("over", this);
        this._btnLadderOver.addEventListener("out", this);
        this.api.kernel.KeyManager.addShortcutsListener("onShortcut", this);
    };
    _loc1.initData = function ()
    {
        this._btnShowFriendsWarning.selected = this.api.datacenter.Basics.aks_notify_on_friend_connexion;
    };
    _loc1.setTextFocus = function ()
    {
        this._itAddFriend.setFocus();
    };
    _loc1.setCurrentTab = function (sNewTab)
    {
        var _loc3 = this["_btnTab" + this._sCurrentTab];
        var _loc4 = this["_btnTab" + sNewTab];
        _loc3.selected = true;
        _loc3.enabled = true;
        _loc4.selected = false;
        _loc4.enabled = false;
        this._sCurrentTab = sNewTab;
        this.updateCurrentTabInformations();
    };
    _loc1.updateCurrentTabInformations = function ()
    {
        switch (this._sCurrentTab)
        {
            case "Enemies":
            {
                this.api.network.Enemies.getEnemiesList();
                break;
            } 
            case "Friends":
            {
                this.api.network.Friends.getFriendsList();
                break;
            } 
            case "Clan":
            {
                this.api.network.Guild.getInfosGeneral();
                this.api.network.Guild.getInfosMembers();
                break;
            } 
            case "Ignore":
            {
                this.updateIgnoreList();
                break;
            } 
        } // End of switch
        this.addToQueue({object: this, method: this.initTexts});
    };
    _loc1.onShortcut = function (sShortcut)
    {
        if (sShortcut == "ACCEPT_CURRENT_DIALOG" && this._itAddFriend.focused)
        {
            this.click({target: this._btnAdd});
            return (false);
        } // end if
        return (true);
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._btnAdd:
            {
                if (this._itAddFriend.text.length != 0)
                {
                    switch (this._sCurrentTab)
                    {
                        case "Enemies":
                        {
                            this.api.network.Enemies.addEnemy("%" + this._itAddFriend.text);
                            if (this._itAddFriend.text != undefined)
                            {
                                this._itAddFriend.text = "";
                            } // end if
                            this.api.network.Enemies.getEnemiesList();
                            break;
                        } 
                        case "Friends":
                        {
                            this.api.network.Friends.addFriend("%" + this._itAddFriend.text);
                            if (this._itAddFriend.text != undefined)
                            {
                                this._itAddFriend.text = "";
                            } // end if
                            this.api.network.Friends.getFriendsList();
                            break;
                        } 
                        case "Clan":
                        {
                            this.api.network.Guild.invite("%" + this._itAddFriend.text);
                            if (this._itAddFriend.text != undefined)
                            {
                                this._itAddFriend.text = "";
                            } // end if
                            break;
                        } 
                        case "Ignore":
                        {
                            this.api.kernel.ChatManager.addToBlacklist(this._itAddFriend.text);
                            if (this._itAddFriend.text != undefined)
                            {
                                this._itAddFriend.text = "";
                            } // end if
                            this.updateIgnoreList();
                            break;
                        } 
                    } // End of switch
                } // end if
                break;
            } 
            case this._btnClose:
            {
                this.callClose();
                break;
            } 
            case this._btnLadder:
            {
                this.api.network.Ladder.initList();
                break;
            } 
            case this._btnTabFriends:
            {
                this.setCurrentTab("Friends");
                break;
            } 
            case this._btnTabEnemies:
            {
                this.setCurrentTab("Enemies");
                break;
            } 
            case this._btnTabClan:
            {
                this.setCurrentTab("Clan");
                break;
            } 
            case this._btnTabIgnore:
            {
                this.setCurrentTab("Ignore");
                break;
            } 
            case this._btnShowFriendsWarning:
            {
                this.api.network.Friends.setNotifyWhenConnect(this._btnShowFriendsWarning.selected);
                this.api.datacenter.Basics.aks_notify_on_friend_connexion = this._btnShowFriendsWarning.selected;
                break;
            } 
        } // End of switch
    };
    _loc1.notifyStateChanged = function (bNotify)
    {
        this._btnShowFriendsWarning.selected = bNotify;
    };
    _loc1.itemSelected = function (oEvent)
    {
        this.api.kernel.GameManager.showPlayerPopupMenu(undefined, oEvent.row.item.name, undefined, true, undefined, undefined, true);
        com.ankamagames.tools.Logger.out("showPlayerPopupMenu called from Friends.as:487", "dofus.graphics.gapi.ui.Friends::itemSelected", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/graphics/gapi/ui/Friends.as", 638);
    };
    _loc1.itemdblClick = function (oEvent)
    {
        this.api.kernel.GameManager.askPrivateMessage(oEvent.row.item.name);
    };
    _loc1.over = function (oEvent)
    {
        switch (oEvent.target)
        {
            case this._btnShowFriendsWarning:
            {
                this.gapi.showTooltip(this.api.lang.getText("WARNING_WHEN_FRIENDS_COME_ONLINE_TOOLTIP"), oEvent.target, -20);
                break;
            } 
            case this._btnLadderOver:
            {
                this.gapi.showTooltip("bla bla le ladder c\'est trop bien !", oEvent.target, -20);
                break;
            } 
        } // End of switch
    };
    _loc1.out = function (oEvent)
    {
        this.gapi.hideTooltip();
    };
    _loc1.addProperty("friendsList", function ()
    {
    }, _loc1.__set__friendsList);
    _loc1.addProperty("spouse", function ()
    {
    }, _loc1.__set__spouse);
    _loc1.addProperty("enemiesList", function ()
    {
    }, _loc1.__set__enemiesList);
    _loc1.addProperty("clanList", function ()
    {
    }, _loc1.__set__clanList);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.Friends = function ()
    {
        super();
    }).CLASS_NAME = "Friends";
    _loc1._sCurrentTab = "Friends";
} // end if
#endinitclip

// Action script...

// [Initial MovieClip Action of sprite 20573]
#initclip 94
if (!dofus.graphics.gapi.ui.Ladder)
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
    var _loc1 = (_global.dofus.graphics.gapi.ui.Ladder = function ()
    {
        super();
    }).prototype;
    _loc1.__set__data = function (data)
    {
        this.nNbMaxPage = data.nbMaxPage;
        this.nNbCurrentPage = data.nbCurrentPage;
        this.eaLadder = data.ladder;
        this.eaUniqueClan = new ank.utils.ExtendedArray();
        if (data.myGuildIndex != -1)
        {
            this.eaUniqueClan.push(data.ladder[data.myGuildIndex]);
            this.selectedClan = this.eaUniqueClan[0];
        }
        else
        {
            this.selectedClan = this.eaLadder[0];
            this._dgUniqueClan._visible = false;
        } // end else if
        //return (this.data());
    };
    _loc1.__set__update = function (data)
    {
        this.nNbMaxPage = data.nbMaxPage;
        this.nNbCurrentPage = data.nbCurrentPage;
        this.updatePageInformation();
        this.eaLadder = data.ladder;
        this._dgLadder.dataProvider = this.eaLadder;
        this._dgLadder.selectedIndex = -1;
        var _loc3 = 0;
        
        while (++_loc3, _loc3 < this.eaLadder.length)
        {
            if (this.eaLadder[_loc3].idGuild == this.eaUniqueClan[0].idGuild)
            {
                this.eaUniqueClan[0] = this.eaLadder[_loc3];
                this._dgUniqueClan.dataProvider = this.eaUniqueClan;
            } // end if
            if (this.eaLadder[_loc3].idGuild == this.selectedClan.idGuild && this._dgUniqueClan.selectedIndex == -1)
            {
                this._dgLadder.selectedIndex = _loc3;
            } // end if
        } // end while
        //return (this.update());
    };
    _loc1.init = function ()
    {
        super.init(false, dofus.graphics.gapi.ui.Ladder.CLASS_NAME);
    };
    _loc1.callClose = function ()
    {
        this.unloadThis();
        return (true);
    };
    _loc1.createChildren = function ()
    {
        this.addToQueue({object: this, method: this.initTexts});
        this.addToQueue({object: this, method: this.initData});
        this.addToQueue({object: this, method: this.addListeners});
    };
    _loc1.initTexts = function ()
    {
        this._lblTitle.text = "Classement";
        this._btnStart.label = "<<";
        this._btnPrevious.label = "<";
        this._btnNext.label = ">";
        this._btnEnd.label = ">>";
        this._dgLadder.columnsNames = ["Rang", "Clan", "Niveau", "Points"];
    };
    _loc1.initData = function ()
    {
        this.updatePageInformation();
        this._dgLadder.dataProvider = this.eaLadder;
        this._dgUniqueClan.dataProvider = this.eaUniqueClan;
        if (this.eaUniqueClan.length == 1)
        {
            this._dgUniqueClan.selectedIndex = 0;
        }
        else
        {
            this._dgLadder.selectedIndex = 0;
        } // end else if
    };
    _loc1.addListeners = function ()
    {
        this._btnClose.addEventListener("click", this);
        this._btnStart.addEventListener("click", this);
        this._btnPrevious.addEventListener("click", this);
        this._btnNext.addEventListener("click", this);
        this._btnEnd.addEventListener("click", this);
        this._dgLadder.addEventListener("itemSelected", this);
        this._dgUniqueClan.addEventListener("itemSelected", this);
    };
    _loc1.updateCurrentClanInformation = function ()
    {
        if (this.selectedClan != undefined && this.selectedClan.hasCompleteInformation)
        {
            if (this._lblName.text != this.selectedClan.name)
            {
                this._lblName.text = this.selectedClan.name;
                this._lblLevel.text = "Niveau " + this.selectedClan.level;
                this._lblStats.text = "Victoire(s) : " + this.selectedClan.win + " / Défaite(s) : " + this.selectedClan.loose + " / Egalité(s) : " + this.selectedClan.draw;
                this._lblPoints.text = this.selectedClan.points + " points";
                this._lblLeader.text = "Chef : " + this.selectedClan.leader;
                this._lblMembers.text = this.selectedClan.nbMembers + " membre(s)";
                this._lblRank.text = "Rang : " + this.selectedClan.rank;
                this._eEmblem.backID = this.selectedClan.backID;
                this._eEmblem.backColor = this.selectedClan.backColor;
                this._eEmblem.upID = this.selectedClan.upID;
                this._eEmblem.upColor = this.selectedClan.upColor;
            } // end if
        }
        else
        {
            this._lblName.text = "";
            this._lblLevel.text = "";
            this._lblStats.text = "";
            this._lblPoints.text = "";
            this._lblLeader.text = "";
            this._lblMembers.text = "";
            this._lblRank.text = "";
            this._eEmblem.backID = 0;
            this._eEmblem.backColor = 0;
            this._eEmblem.upID = 0;
            this._eEmblem.upColor = 0;
        } // end else if
    };
    _loc1.updatePageInformation = function ()
    {
        this._btnStart._visible = this.nNbCurrentPage != 1;
        this._btnPrevious._visible = this.nNbCurrentPage != 1;
        this._btnNext._visible = this.nNbCurrentPage != this.nNbMaxPage;
        this._btnEnd._visible = this.nNbCurrentPage != this.nNbMaxPage;
        this._lblPage.text = this.nNbCurrentPage.toString();
    };
    _loc1.click = function (oEvent)
    {
        switch (oEvent.target._name)
        {
            case "_btnClose":
            {
                this.callClose();
                break;
            } 
            case "_btnStart":
            {
                this.api.network.Ladder.getList(1);
                break;
            } 
            case "_btnPrevious":
            {
                this.api.network.Ladder.getList(this.nNbCurrentPage - 1);
                break;
            } 
            case "_btnNext":
            {
                this.api.network.Ladder.getList(this.nNbCurrentPage + 1);
                break;
            } 
            case "_btnEnd":
            {
                this.api.network.Ladder.getList(this.nNbMaxPage);
                break;
            } 
        } // End of switch
    };
    _loc1.refresh = function ()
    {
        this.api.network.Ladder.getList(this.nNbCurrentPage);
    };
    _loc1.itemSelected = function (oEvent)
    {
        if (oEvent.target == this._dgLadder)
        {
            this._dgUniqueClan.selectedIndex = -1;
        }
        else
        {
            this._dgLadder.selectedIndex = -1;
        } // end else if
        if (this.selectedClan.name != oEvent.row.item.name)
        {
            this.selectedClan = oEvent.row.item;
            if (this.selectedClan.hasCompleteInformation)
            {
                this.updateCurrentClanInformation();
            }
            else
            {
                this.api.network.Ladder.getInfo(this.selectedClan.idGuild);
            } // end if
        } // end else if
    };
    _loc1.updateClanInformationWithData = function (nGuildID, nWin, nLoose, nDraw, nLeader, nNbMembers, nBackID, nBackColor, nUpID, nUpColor)
    {
        if (this.selectedClan.idGuild == nGuildID)
        {
            this.selectedClan.updateInformation(nWin, nLoose, nDraw, nLeader, nNbMembers, nBackID, nBackColor, nUpID, nUpColor);
            this.addToQueue({object: this, method: this.updateCurrentClanInformation});
        }
        else
        {
            var _loc12 = 0;
            
            while (++_loc12, _loc12 < this.eaLadder.length)
            {
                if (this.eaLadder[_loc12].idGuild == nGuildID)
                {
                    this.eaLadder[_loc12].updateInformation(nWin, nLoose, nDraw, nLeader, nNbMembers, nBackID, nBackColor, nUpID, nUpColor);
                    break;
                } // end if
            } // end while
            if (this.selectedClan.hasCompleteInformation)
            {
                this.addToQueue({object: this, method: this.updateCurrentClanInformation});
            } // end if
        } // end else if
    };
    _loc1.addProperty("update", function ()
    {
    }, _loc1.__set__update);
    _loc1.addProperty("data", function ()
    {
    }, _loc1.__set__data);
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.ui.Ladder = function ()
    {
        super();
    }).CLASS_NAME = "Ladder";
} // end if
#endinitclip

﻿// Action script...

// [Initial MovieClip Action of sprite 20577]
#initclip 98
if (!dofus.DofusCore)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    var _loc1 = (_global.dofus.DofusCore = function (mcRoot)
    {
        super();
        System.security.allowDomain("*");
        getURL("FSCommand:" add "trapallkeys", "true");
        dofus.DofusCore._mcCore = mcRoot;
        dofus.DofusCore._cCore = this;
        _global.subtrace = trace;
    }).prototype;
    (_global.dofus.DofusCore = function (mcRoot)
    {
        super();
        System.security.allowDomain("*");
        getURL("FSCommand:" add "trapallkeys", "true");
        dofus.DofusCore._mcCore = mcRoot;
        dofus.DofusCore._cCore = this;
        _global.subtrace = trace;
    }).getClip = function ()
    {
        return (dofus.DofusCore._mcCore);
    };
    (_global.dofus.DofusCore = function (mcRoot)
    {
        super();
        System.security.allowDomain("*");
        getURL("FSCommand:" add "trapallkeys", "true");
        dofus.DofusCore._mcCore = mcRoot;
        dofus.DofusCore._cCore = this;
        _global.subtrace = trace;
    }).getInstance = function ()
    {
        return (dofus.DofusCore._cCore);
    };
    _loc1.initStart = function ()
    {
        this.registerAllClasses();
        ank.utils.Extensions.addExtensions();
        this.addToQueue({object: this, method: this.addNodes});
    };
    _loc1.addNodes = function ()
    {
        this._mcTMCC = dofus.DofusCore._mcCore.createEmptyMovieClip("TemporaryMovieClipContainer", dofus.DofusCore._mcCore.getNextHighestDepth());
        this._mcTMCC._visible = false;
        dofus.DofusCore._mcCore.attachMovie("BATTLEFIELD", "BATTLEFIELD", dofus.DofusCore._mcCore.getNextHighestDepth());
        dofus.DofusCore._mcCore.attachMovie("GAPIMain", "GAPI", dofus.DofusCore._mcCore.getNextHighestDepth());
        dofus.DofusCore._mcCore.attachMovie("mask", "MASK", dofus.DofusCore._mcCore.getNextHighestDepth());
        this.addToQueue({object: this, method: this.initApi});
    };
    _loc1.initApi = function ()
    {
        com.ankamagames.tools.Logger.out("Etape 3", "dofus.DofusCore::initApi", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/DofusCore.as", 98);
        _global.API = new dofus.utils.Api();
        _global.API.initialize();
        this.addToQueue({object: this, method: this.checkNodesAndContinue});
    };
    _loc1.checkNodesAndContinue = function ()
    {
        if (this.checkNodes())
        {
            this.startGame();
        }
        else
        {
            this.addToQueue({object: this, method: this.checkNodesAndContinue});
        } // end else if
    };
    _loc1.checkNodes = function ()
    {
        if (_global.API.gfx.initialize == undefined)
        {
            return (false);
        } // end if
        if (_global.API.kernel.start == undefined)
        {
            return (false);
        } // end if
        if (_global.API.ui.loadUIComponent == undefined)
        {
            return (false);
        } // end if
        return (true);
    };
    _loc1.startGame = function ()
    {
        com.ankamagames.tools.Logger.out("Etape 5, fin", "dofus.DofusCore::startGame", "E:\\My_Work\\WLG2\\WG2\\client\\DofusClient\\classes/dofus/DofusCore.as", 153);
        _global.API.kernel.start();
        _global.getText = function (sKey, aParams)
        {
            return (_global.API.lang.getText(sKey, aParams));
        };
    };
    _loc1.forceMouseOver = function ()
    {
        dofus.DofusCore._mcCore.attachMovie("clipForceOver", "_mcForceOver", 1000, {_x: dofus.DofusCore._mcCore._xmouse, _y: dofus.DofusCore._mcCore._ymouse});
    };
    _loc1.getTemporaryContainer = function ()
    {
        return (this._mcTMCC);
    };
    _loc1.registerAllClasses = function ()
    {
        Object.registerClass("Loader", ank.gapi.controls.Loader);
        Object.registerClass("Label", ank.gapi.controls.Label);
        Object.registerClass("ButtonNormalDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonNormalUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonToggleDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonToggleUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonSimpleRectangleUpDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("Button", ank.gapi.controls.Button);
        Object.registerClass("SpellsItem", dofus.graphics.gapi.ui.spells.SpellsItem);
        Object.registerClass("BackgroundHidder", ank.gapi.controls.BackgroundHidder);
        Object.registerClass("UI_DirectionChooser", dofus.graphics.gapi.ui.DirectionChooser);
        Object.registerClass("ButtonSimpleRectangleUpDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonMainMenuUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonSpellsUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonCraftUpInvert", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonCraftUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonMainMenuDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonSpellsDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonCraftDownInvert", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonCraftDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("TimelinePointer", dofus.graphics.gapi.controls.timeline.TimelinePointer);
        Object.registerClass("DeathCounter", dofus.graphics.gapi.controls.DeathCounter);
        Object.registerClass("VerticalChrono", ank.gapi.controls.VerticalChrono);
        Object.registerClass("TimelineItem", dofus.graphics.gapi.controls.timeline.TimelineItem);
        Object.registerClass("ListInventoryViewerItemNoPrice", dofus.graphics.gapi.controls.listinventoryviewer.ListInventoryViewerItemNoPrice);
        Object.registerClass("BookPageIndexChapterItem", dofus.graphics.gapi.controls.bookpageindex.BookPageIndexChapterItem);
        Object.registerClass("ListInventoryViewerItem", dofus.graphics.gapi.controls.listinventoryviewer.ListInventoryViewerItem);
        Object.registerClass("Window", ank.gapi.controls.Window);
        Object.registerClass("ComboBoxNormal", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonComboBoxDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonComboBoxUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ComboBox", ank.gapi.controls.ComboBox);
        Object.registerClass("ListInventoryViewer", dofus.graphics.gapi.controls.ListInventoryViewer);
        Object.registerClass("TextArea", ank.gapi.controls.TextArea);
        Object.registerClass("SelectableRow", ank.gapi.controls.list.SelectableRow);
        Object.registerClass("DefaultCellRenderer", ank.gapi.controls.list.DefaultCellRenderer);
        Object.registerClass("List", ank.gapi.controls.List);
        Object.registerClass("ProgressBar", ank.gapi.controls.ProgressBar);
        Object.registerClass("ItemViewer", dofus.graphics.gapi.controls.ItemViewer);
        Object.registerClass("ChooseItemSkin", dofus.graphics.gapi.controls.ChooseItemSkin);
        Object.registerClass("PlayerWeight", dofus.graphics.gapi.controls.PlayerWeight);
        Object.registerClass("DefaultBackground", ank.gapi.controls.common.DefaultBackground);
        Object.registerClass("DefaultHighlight", ank.gapi.controls.common.DefaultHighlight);
        Object.registerClass("Container", ank.gapi.controls.Container);
        Object.registerClass("StylizedRectangle", ank.gapi.controls.StylizedRectangle);
        Object.registerClass("ContainerGrid", ank.gapi.controls.ContainerGrid);
        Object.registerClass("UI_Inventory", dofus.graphics.gapi.ui.Inventory);
        Object.registerClass("Timeline", dofus.graphics.gapi.controls.Timeline);
        Object.registerClass("UI_Timeline", dofus.graphics.gapi.ui.Timeline);
        Object.registerClass("UI_InventoryContainerHighlight", dofus.graphics.gapi.ui.inventory.ContainerHighlight);
        Object.registerClass("UI_StatsJobContainerBackground2", dofus.graphics.gapi.ui.inventory.ContainerBackground);
        Object.registerClass("UI_StatsJobContainerBackground", dofus.graphics.gapi.ui.inventory.ContainerBackground);
        Object.registerClass("UI_InventoryContainerBackground", dofus.graphics.gapi.ui.inventory.ContainerBackground);
        Object.registerClass("UI_ForgemagusContainerBackground", dofus.graphics.gapi.ui.inventory.ContainerBackground);
        Object.registerClass("UI_PopupQuantity", dofus.graphics.gapi.ui.PopupQuantity);
        Object.registerClass("UI_PopupHexa", dofus.graphics.gapi.ui.PopupHexa);
        Object.registerClass("UI_StringCourse", dofus.graphics.gapi.ui.StringCourse);
        Object.registerClass("UI_YourTurn", dofus.graphics.gapi.ui.YourTurn);
        Object.registerClass("TextInput", ank.gapi.controls.TextInput);
        Object.registerClass("ButtonTransparentUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("DataGrid", ank.gapi.controls.DataGrid);
        Object.registerClass("UI_Friends", dofus.graphics.gapi.ui.Friends);
        Object.registerClass("UI_FightChallenge", dofus.graphics.gapi.ui.FightChallenge);
        Object.registerClass("FightChallengeIcon", dofus.graphics.gapi.controls.FightChallengeIcon);
        Object.registerClass("FightChallengeViewer", dofus.graphics.gapi.controls.FightChallengeViewer);
        Object.registerClass("UI_SecureCraft", dofus.graphics.gapi.ui.SecureCraft);
        Object.registerClass("UI_Craft", dofus.graphics.gapi.ui.Craft);
        Object.registerClass("UI_Exchange", dofus.graphics.gapi.ui.Exchange);
        Object.registerClass("UI_AskPrivateChat", dofus.graphics.gapi.ui.AskPrivateChat);
        Object.registerClass("UI_CenterText", dofus.graphics.gapi.ui.CenterText);
        Object.registerClass("UI_CenterInfo", dofus.graphics.gapi.ui.CenterInfo);
        Object.registerClass("UI_AskCancel", dofus.graphics.gapi.ui.AskCancel);
        Object.registerClass("UI_AskLinkWarning", dofus.graphics.gapi.ui.AskLinkWarning);
        Object.registerClass("UI_AskGameBegin", dofus.graphics.gapi.ui.AskGameBegin);
        Object.registerClass("UI_AskYesNo", dofus.graphics.gapi.ui.AskYesNo);
        Object.registerClass("UI_AskYesNoIgnore", dofus.graphics.gapi.ui.AskYesNoIgnore);
        Object.registerClass("UI_AskCustomShortcut", dofus.graphics.gapi.ui.AskCustomShortcut);
        Object.registerClass("UI_ChooseNickName", dofus.graphics.gapi.ui.ChooseNickName);
        Object.registerClass("UI_AskSecretAnswer", dofus.graphics.gapi.ui.AskSecretAnswer);
        Object.registerClass("UI_AskAlertServer", dofus.graphics.gapi.ui.AskAlertServer);
        Object.registerClass("UI_AskOk", dofus.graphics.gapi.ui.AskOk);
        Object.registerClass("UI_Login", dofus.graphics.gapi.ui.Login);
        Object.registerClass("UI_GameOver", dofus.graphics.gapi.ui.GameOver);
        Object.registerClass("UI_ItemViewer", dofus.graphics.gapi.ui.ItemViewer);
        Object.registerClass("UI_ChooseItemSkin", dofus.graphics.gapi.ui.ChooseItemSkin);
        Object.registerClass("UI_StatsJob", dofus.graphics.gapi.ui.StatsJob);
        Object.registerClass("JobViewer", dofus.graphics.gapi.controls.JobViewer);
        Object.registerClass("StatsViewer", dofus.graphics.gapi.controls.StatsViewer);
        Object.registerClass("VolumeSlider", ank.gapi.controls.VolumeSlider);
        Object.registerClass("JobOptionsViewer", dofus.graphics.gapi.controls.JobOptionsViewer);
        Object.registerClass("QuestionViewerAnswerItem", dofus.graphics.gapi.controls.questionviewer.QuestionViewerAnswerItem);
        Object.registerClass("AlignmentViewerTreeItem", dofus.graphics.gapi.controls.alignmentviewer.AlignmentViewerTreeItem);
        Object.registerClass("ChooseServerListItem", dofus.graphics.gapi.ui.chooseserver.ChooseServerListItem);
        Object.registerClass("UI_JoinFriend", dofus.graphics.gapi.ui.JoinFriend);
        Object.registerClass("CraferListItem", dofus.graphics.gapi.ui.crafterlist.CrafterListItem);
        Object.registerClass("LadderViewerClanItem", dofus.graphics.gapi.controls.ladderviewer.LadderViewerClanItem);
        Object.registerClass("GuildMembersViewerMember", dofus.graphics.gapi.controls.guildmembersviewer.GuildMembersViewerMember);
        Object.registerClass("UI_GameResultPlayer", dofus.graphics.gapi.ui.gameresult.GameResultPlayer);
        Object.registerClass("UI_GameResultPlayerPVP", dofus.graphics.gapi.ui.gameresult.GameResultPlayerPVP);
        Object.registerClass("CraftViewerCraftItem", dofus.graphics.gapi.controls.craftviewer.CraftViewerCraftItem);
        Object.registerClass("JobViewerSkillItem", dofus.graphics.gapi.controls.jobviewer.JobViewerSkillItem);
        Object.registerClass("StatsViewerStatItem", dofus.graphics.gapi.controls.statsviewer.StatsViewerStatItem);
        Object.registerClass("UI_NpcDialog", dofus.graphics.gapi.ui.NpcDialog);
        Object.registerClass("UI_GameResult", dofus.graphics.gapi.ui.GameResult);
        Object.registerClass("QuestionViewer", dofus.graphics.gapi.controls.QuestionViewer);
        Object.registerClass("UI_GameResultTeamPVP", dofus.graphics.gapi.ui.gameresult.GameResultTeamPVP);
        Object.registerClass("UI_GameResultTeam", dofus.graphics.gapi.ui.gameresult.GameResultTeam);
        Object.registerClass("UI_FriendsDisconnectedItem", dofus.graphics.gapi.ui.friends.FriendsDisconnectedItem);
        Object.registerClass("UI_QuestsStepRewardItem", dofus.graphics.gapi.ui.quests.QuestsStepRewardItem);
        Object.registerClass("UI_FriendsConnectedItem", dofus.graphics.gapi.ui.friends.FriendsConnectedItem);
        Object.registerClass("UI_KeyCode", dofus.graphics.gapi.ui.KeyCode);
        Object.registerClass("UI_ItemUtility", dofus.graphics.gapi.ui.ItemUtility);
        Object.registerClass("GridInventoryViewer", dofus.graphics.gapi.controls.GridInventoryViewer);
        Object.registerClass("UI_Storage", dofus.graphics.gapi.ui.Storage);
        Object.registerClass("UI_Zoom", dofus.graphics.gapi.ui.Zoom);
        Object.registerClass("UI_Tutorial", dofus.graphics.gapi.ui.Tutorial);
        Object.registerClass("UI_MainMenu", dofus.graphics.gapi.ui.MainMenu);
        Object.registerClass("UI_Register", dofus.graphics.gapi.ui.Register);
        Object.registerClass("UI_Options", dofus.graphics.gapi.ui.Options);
        Object.registerClass("UI_AskMainMenu", dofus.graphics.gapi.ui.AskMainMenu);
        Object.registerClass("ItemSetViewer", dofus.graphics.gapi.controls.ItemSetViewer);
        Object.registerClass("SpellFullInfosViewerItem", dofus.graphics.gapi.controls.spellfullinfosvieweritem.SpellFullInfosViewerItem);
        Object.registerClass("ItemViewerItem", dofus.graphics.gapi.controls.itemviewer.ItemViewerItem);
        Object.registerClass("ButtonMuteSoundsDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonMuteMusicDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonMuteSoundsUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonMuteMusicUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("UI_FightOptionButtons", dofus.graphics.gapi.ui.FightOptionButtons);
        Object.registerClass("ChatArea", ank.gapi.controls.ChatArea);
        Object.registerClass("Smileys", dofus.graphics.gapi.controls.Smileys);
        Object.registerClass("Chat", dofus.graphics.gapi.controls.Chat);
        Object.registerClass("CircleChrono", ank.gapi.controls.CircleChrono);
        Object.registerClass("ActionPointsViewer", dofus.graphics.gapi.controls.PointsViewer);
        Object.registerClass("Heart", dofus.graphics.gapi.controls.Heart);
        Object.registerClass("ButtonBannerSpells", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonBannerItems", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonBannerFriends", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonBannerRoundDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonBannerRoundUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonRadioUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonRadioDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonCheckDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonCheckUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("SpellBoostViewer", dofus.graphics.gapi.controls.SpellBoostViewer);
        Object.registerClass("SpellInfosViewer", dofus.graphics.gapi.controls.SpellInfosViewer);
        Object.registerClass("UI_Spells", dofus.graphics.gapi.ui.Spells);
        Object.registerClass("ArtworkRotationItem", dofus.graphics.gapi.controls.artworkrotation.ArtworkRotationItem);
        Object.registerClass("ArtworkRotation", dofus.graphics.gapi.controls.ArtworkRotation);
        Object.registerClass("UI_CreateCharacter", dofus.graphics.gapi.ui.CreateCharacter);
        Object.registerClass("ChooseCharacterSprite", dofus.graphics.gapi.controls.ChooseCharacterSprite);
        Object.registerClass("UI_ChooseCharacter", dofus.graphics.gapi.ui.ChooseCharacter);
        Object.registerClass("UI_Gifts", dofus.graphics.gapi.ui.Gifts);
        Object.registerClass("UI_ChooseServer", dofus.graphics.gapi.ui.ChooseServer);
        Object.registerClass("ButtonDecorationDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("UI_PlayerInfos", dofus.graphics.gapi.ui.PlayerInfos);
        Object.registerClass("UI_PlayerInfosEffectsItem", dofus.graphics.gapi.ui.playerinfos.PlayerInfosEffectsItem);
        Object.registerClass("UI_WaitingQueue", dofus.graphics.gapi.ui.WaitingQueue);
        Object.registerClass("UI_WaitingMessage", dofus.graphics.gapi.ui.WaitingMessage);
        Object.registerClass("UI_Waiting", dofus.graphics.gapi.ui.Waiting);
        Object.registerClass("UI_DocumentParchment", dofus.graphics.gapi.ui.DocumentParchment);
        Object.registerClass("UI_DocumentBook", dofus.graphics.gapi.ui.DocumentBook);
        Object.registerClass("UI_Cinematic", dofus.graphics.gapi.ui.Cinematic);
        Object.registerClass("UI_MapInfos", dofus.graphics.gapi.ui.MapInfos);
        Object.registerClass("ClassInfosViewer", dofus.graphics.gapi.controls.ClassInfosViewer);
        Object.registerClass("ColorPicker", ank.gapi.controls.ColorPicker);
        Object.registerClass("ClassCustomize", dofus.graphics.gapi.controls.ClassCustomize);
        Object.registerClass("ButtonWomanUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonWomanDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonManDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonManUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonArrowDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonArrowUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonColorDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonColorUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonCrossDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonCrossUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonCloseDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonEjectDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonMaximizeDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonMinimizeDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonMoinsDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonPlusDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonCloseUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonEjectUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonMaximizeUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonMinimizeUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonSitUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonSitDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonMoinsUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonPlusUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("BannerSpriteInfos", dofus.graphics.gapi.controls.BannerSpriteInfos);
        Object.registerClass("ButtonTabDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonTabUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonTransparentUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("SpouseViewer", dofus.graphics.gapi.controls.SpouseViewer);
        Object.registerClass("SpellFullInfosViewer", dofus.graphics.gapi.controls.SpellFullInfosViewer);
        Object.registerClass("UI_SpellInfos", dofus.graphics.gapi.ui.SpellInfos);
        Object.registerClass("MapNavigator", ank.gapi.controls.MapNavigator);
        Object.registerClass("UI_MapExplorer", dofus.graphics.gapi.ui.MapExplorer);
        Object.registerClass("BookPageText", dofus.graphics.gapi.controls.BookPageText);
        Object.registerClass("BookPageIndex", dofus.graphics.gapi.controls.BookPageIndex);
        Object.registerClass("BookPageTitle", dofus.graphics.gapi.controls.BookPageTitle);
        Object.registerClass("ButtonArrowCornerDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonArrowCornerUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("Emblem", dofus.graphics.gapi.controls.Emblem);
        Object.registerClass("UI_Guild", dofus.graphics.gapi.ui.Guild);
        Object.registerClass("UI_CreateGuild", dofus.graphics.gapi.ui.CreateGuild);
        Object.registerClass("UI_Ladder", dofus.graphics.gapi.ui.Ladder);
        Object.registerClass("GuildMountParkViewer", dofus.graphics.gapi.controls.GuildMountParkViewer);
        Object.registerClass("TaxCollectorsViewer", dofus.graphics.gapi.controls.TaxCollectorsViewer);
        Object.registerClass("GuildBoostsViewer", dofus.graphics.gapi.controls.GuildBoostsViewer);
        Object.registerClass("GuildMembersViewer", dofus.graphics.gapi.controls.GuildMembersViewer);
        Object.registerClass("UI_CrafterCard", dofus.graphics.gapi.ui.CrafterCard);
        Object.registerClass("UI_GuildMemberInfos", dofus.graphics.gapi.ui.GuildMemberInfos);
        Object.registerClass("ButtonSquareUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonFlatRoundLeft", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonSquareDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonJoinTaxCollectorDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonJoinTaxCollectorUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("TaxCollectorViewerPlayer", dofus.graphics.gapi.controls.taxcollectorsviewer.TaxCollectorsViewerPlayer);
        Object.registerClass("UI_Subway", dofus.graphics.gapi.ui.Subway);
        Object.registerClass("UI_MonsterAndLookSelector", dofus.graphics.gapi.ui.MonsterAndLookSelector);
        Object.registerClass("UI_ItemSelector", dofus.graphics.gapi.ui.ItemSelector);
        Object.registerClass("UI_Waypoints", dofus.graphics.gapi.ui.Waypoints);
        Object.registerClass("UI_ShortcutsItem", dofus.graphics.gapi.ui.shortcuts.ShortcutsItem);
        Object.registerClass("UI_SubwayItem", dofus.graphics.gapi.ui.subway.SubwayItem);
        Object.registerClass("UI_WaypointsItem", dofus.graphics.gapi.ui.waypoints.WaypointsItem);
        Object.registerClass("ButtonFlatRoundDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("UI_Buff", dofus.graphics.gapi.ui.Buff);
        Object.registerClass("BuffViewer", dofus.graphics.gapi.controls.BuffViewer);
        Object.registerClass("UI_BuffInfos", dofus.graphics.gapi.ui.BuffInfos);
        Object.registerClass("UI_DocumentRoadSignRight", dofus.graphics.gapi.ui.DocumentRoadSign);
        Object.registerClass("UI_DocumentRoadSignLeft", dofus.graphics.gapi.ui.DocumentRoadSign);
        Object.registerClass("SpecializationViewer", dofus.graphics.gapi.controls.alignmentviewer.SpecializationViewer);
        Object.registerClass("RankViewer", dofus.graphics.gapi.controls.alignmentviewer.RankViewer);
        Object.registerClass("AlignmentViewerOrder", dofus.graphics.gapi.controls.alignmentviewer.AlignmentViewerOrder);
        Object.registerClass("AlignmentViewerTree", dofus.graphics.gapi.controls.alignmentviewer.AlignmentViewerTree);
        Object.registerClass("AlignmentViewerFeatsItem", dofus.graphics.gapi.controls.alignmentviewer.AlignmentViewerFeatsItem);
        Object.registerClass("UI_FightsInfos", dofus.graphics.gapi.ui.FightsInfos);
        Object.registerClass("UI_FightsInfosPlayerItem", dofus.graphics.gapi.ui.fightsinfos.FightsInfosPlayerItem);
        Object.registerClass("UI_FightsInfosFightItem", dofus.graphics.gapi.ui.fightsinfos.FightsInfosFightItem);
        Object.registerClass("UI_Tips", dofus.graphics.gapi.ui.Tips);
        Object.registerClass("UI_CardsCollection", dofus.graphics.gapi.ui.CardsCollection);
        Object.registerClass("Card", dofus.graphics.gapi.controls.Card);
        Object.registerClass("UI_Indicator", dofus.graphics.gapi.ui.Indicator);
        Object.registerClass("UI_ServersManagerRetry", dofus.graphics.gapi.ui.ServersManagerRetry);
        Object.registerClass("UI_Shortcuts", dofus.graphics.gapi.ui.Shortcuts);
        Object.registerClass("UI_Debug", dofus.graphics.gapi.ui.Debug);
        Object.registerClass("UI_Quests", dofus.graphics.gapi.ui.Quests);
        Object.registerClass("UI_Achievements", dofus.graphics.gapi.ui.Achievements);
        Object.registerClass("UI_PartyItem", dofus.graphics.gapi.ui.party.PartyItem);
        Object.registerClass("UI_Party", dofus.graphics.gapi.ui.Party);
        Object.registerClass("UI_MountStorage", dofus.graphics.gapi.ui.MountStorage);
        Object.registerClass("UI_BigStoreSell", dofus.graphics.gapi.ui.BigStoreSell);
        Object.registerClass("UI_CrafterList", dofus.graphics.gapi.ui.CrafterList);
        Object.registerClass("UI_BigStoreBuy", dofus.graphics.gapi.ui.BigStoreBuy);
        Object.registerClass("UI_BigStoreSearch", dofus.graphics.gapi.ui.BigStoreSearch);
        Object.registerClass("UI_InventorySearch", dofus.graphics.gapi.ui.InventorySearch);
        Object.registerClass("UI_QuestsObjectivetItem", dofus.graphics.gapi.ui.quests.QuestsObjectiveItem);
        Object.registerClass("UI_QuestsStepItem", dofus.graphics.gapi.ui.quests.QuestsStepItem);
        Object.registerClass("UI_QuestsQuestItem", dofus.graphics.gapi.ui.quests.QuestsQuestItem);
        Object.registerClass("QuestStepViewer", dofus.graphics.gapi.controls.QuestStepViewer);
        Object.registerClass("QuestStepListViewer", dofus.graphics.gapi.controls.QuestStepListViewer);
        Object.registerClass("UI_PayZoneDialog", dofus.graphics.gapi.ui.PayZoneDialog);
        Object.registerClass("UI_PayZoneDialog2", dofus.graphics.gapi.ui.PayZoneDialog2);
        Object.registerClass("UI_PayZone", dofus.graphics.gapi.ui.PayZone);
        Object.registerClass("UI_MovableContainerBar", dofus.graphics.gapi.ui.MovableContainerBar);
        Object.registerClass("ButtonSubscribeUp", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("ButtonSubscribeDown", ank.gapi.controls.button.ButtonBackground);
        Object.registerClass("UI_LoginNewsItem", dofus.graphics.gapi.ui.login.LoginNewsItem);
        Object.registerClass("UI_GiftsSprite", dofus.graphics.gapi.ui.gifts.GiftsSprite);
        Object.registerClass("GAPIMain", dofus.graphics.gapi.Gapi);
        Object.registerClass("BATTLEFIELD", dofus.graphics.battlefield.DofusBattlefield);
        Object.registerClass("ToolTip", ank.gapi.controls.ToolTip);
        Object.registerClass("ScrollBarThumb", ank.gapi.controls.scrollbar.ScrollThumb);
        Object.registerClass("ScrollBar", ank.gapi.controls.ScrollBar);
        Object.registerClass("PopupMenu", ank.gapi.controls.PopupMenu);
        Object.registerClass("Fps", ank.gapi.controls.Fps);
        Object.registerClass("ConsoleLogger", ank.gapi.controls.ConsoleLogger);
        Object.registerClass("Compass", ank.gapi.controls.Compass);
        Object.registerClass("Clock", ank.gapi.controls.Clock);
        Object.registerClass("MiniMap", dofus.graphics.gapi.controls.MiniMap);
        Object.registerClass("SpriteViewer", dofus.graphics.gapi.controls.SpriteViewer);
        Object.registerClass("UI_AutomaticServer", dofus.graphics.gapi.ui.AutomaticServer);
        Object.registerClass("UI_ServerInformations", dofus.graphics.gapi.ui.ServerInformations);
        Object.registerClass("UI_TitleDisplayer", dofus.graphics.gapi.ui.TitleDisplayer);
        Object.registerClass("UI_ForgemagusCraft", dofus.graphics.gapi.ui.ForgemagusCraft);
        Object.registerClass("UI_KnownledgeBase", dofus.graphics.gapi.ui.KnownledgeBase);
        Object.registerClass("UI_KnownledgeBaseCategory", dofus.graphics.gapi.ui.knownledgebase.KnownledgeBaseCategoryItem);
        Object.registerClass("UI_KnownledgeBaseItem", dofus.graphics.gapi.ui.knownledgebase.KnownledgeBaseItem);
        Object.registerClass("Helper", dofus.graphics.gapi.controls.Helper);
        Object.registerClass("UI_FloatingTips", dofus.graphics.gapi.ui.FloatingTips);
        Object.registerClass("MouseShortcuts", dofus.graphics.gapi.controls.MouseShortcuts);
        Object.registerClass("ColorSelector", dofus.graphics.gapi.controls.ColorSelector);
        Object.registerClass("UI_SpellViewerOnCreate", dofus.graphics.gapi.ui.SpellViewerOnCreate);
        Object.registerClass("UI_HistoryViewerOnCreate", dofus.graphics.gapi.ui.HistoryViewerOnCreate);
        Object.registerClass("ClassSelector", dofus.graphics.gapi.controls.ClassSelector);
        Object.registerClass("UI_GuildHouseRights", dofus.graphics.gapi.ui.GuildHouseRights);
        Object.registerClass("GuildHousesViewer", dofus.graphics.gapi.controls.GuildHousesViewer);
        Object.registerClass("GuildHousesViewerHouses", dofus.graphics.gapi.controls.guildhousesviewer.GuildHousesViewerHouses);
        Object.registerClass("UI_ItemSummoner", dofus.graphics.gapi.ui.ItemSummoner);
        Object.registerClass("UI_AskReportMessage", dofus.graphics.gapi.ui.AskReportMessage);
        Object.registerClass("UI_Conquest", dofus.graphics.gapi.ui.Conquest);
        Object.registerClass("ConquestStatsViewer", dofus.graphics.gapi.controls.ConquestStatsViewer);
        Object.registerClass("ConquestZonesViewer", dofus.graphics.gapi.controls.ConquestZonesViewer);
        Object.registerClass("ConquestJoinViewer", dofus.graphics.gapi.controls.ConquestJoinViewer);
        Object.registerClass("UI_SpellForget", dofus.graphics.gapi.ui.SpellForget);
        Object.registerClass("UI_SpellForgetItem", dofus.graphics.gapi.ui.spellforget.SpellForgetItem);
        Object.registerClass("UI_ItemFound", dofus.graphics.gapi.ui.ItemFound);
        Object.registerClass("UI_ChooseFeed", dofus.graphics.gapi.ui.ChooseFeed);
        Object.registerClass("ConquestStatsViewerItem", dofus.graphics.gapi.controls.conqueststatsviewer.ConquestStatsViewerItem);
        Object.registerClass("StarsDisplayer", dofus.graphics.gapi.controls.StarsDisplayer);
        Object.registerClass("ConquestZonesViewerAreaItem", dofus.graphics.gapi.controls.conquestzonesviewer.ConquestZonesViewerAreaItem);
        Object.registerClass("ConquestZonesViewerVillageItem", dofus.graphics.gapi.controls.conquestzonesviewer.ConquestZonesViewerVillageItem);
        Object.registerClass("EffectIcon", dofus.graphics.battlefield.EffectIcon);
        Object.registerClass("UI_CreateDungeonTeam", dofus.graphics.gapi.ui.dungeon.CreateDungeonTeam);
        Object.registerClass("CreateDungeonTeamMember", dofus.graphics.gapi.ui.dungeon.CreateDungeonTeamMember);
        Object.registerClass("UI_DungeonCreation", dofus.graphics.gapi.ui.dungeon.DungeonCreation);
        Object.registerClass("WGPointsViewer", dofus.graphics.gapi.controls.WGPointsViewer);
        Object.registerClass("UI_WGBanner", dofus.graphics.gapi.ui.Banner);
        Object.registerClass("UI_WGGameResult", dofus.graphics.gapi.ui.WGGameResult);
        Object.registerClass("UI_CrafListItem", dofus.graphics.gapi.ui.craft.CraftListItem);
        Object.registerClass("UI_Ingredient", dofus.graphics.gapi.ui.craft.Ingredient);
        Object.registerClass("UI_FightIntro", dofus.graphics.gapi.ui.FightIntro);
        Object.registerClass("UI_Versus", dofus.graphics.gapi.ui.Versus);
        Object.registerClass("UI_FightStartAnimation", dofus.graphics.gapi.ui.FightStartAnimation);
        Object.registerClass("UI_Cookbook", dofus.graphics.gapi.ui.Cookbook);
        Object.registerClass("UI_WG2Cookbook", dofus.graphics.gapi.ui.WG2Cookbook);
        Object.registerClass("CraftViewer", dofus.graphics.gapi.controls.WG2CraftViewer);
        Object.registerClass("CookbookPage", dofus.graphics.gapi.controls.CookbookPage);
        Object.registerClass("UI_Fashion", dofus.graphics.gapi.ui.Fashion);
        Object.registerClass("UI_SpeakingSign", dofus.graphics.gapi.ui.SpeakingSign);
        Object.registerClass("UI_MapCinematics", dofus.graphics.gapi.ui.MapCinematics);
        Object.registerClass("UI_PopupInfoInfo", dofus.graphics.gapi.ui.PopupInfoInfo);
        Object.registerClass("UI_PopupInfoMenu", dofus.graphics.gapi.ui.PopupInfoMenu);
        Object.registerClass("UI_Notification", dofus.graphics.gapi.ui.Notification);
        Object.registerClass("UI_NotificationPoint", dofus.graphics.gapi.ui.NotificationPoint);
        Object.registerClass("UI_QuestsBook", dofus.graphics.gapi.ui.QuestsBook);
        Object.registerClass("UI_World", dofus.graphics.gapi.ui.World);
        Object.registerClass("UI_QuestsWorldItem", dofus.graphics.gapi.ui.quests.QuestsWorldItem);
        Object.registerClass("UI_QuestsWorldQuestsItem", dofus.graphics.gapi.ui.quests.QuestsWorldQuestsItem);
        Object.registerClass("UI_AchievementItem", dofus.graphics.gapi.ui.AchievementItem);
        Object.registerClass("UI_PVPLobby", dofus.graphics.gapi.ui.PVPLobby);
        Object.registerClass("UI_LobbyBattleItem", dofus.graphics.gapi.ui.lobby.LobbyBattleItem);
        Object.registerClass("UI_LobbyTeamPlayerItem", dofus.graphics.gapi.ui.lobby.LobbyTeamPlayerItem);
    };
    ASSetPropFlags(_loc1, null, 1);
} // end if
#endinitclip

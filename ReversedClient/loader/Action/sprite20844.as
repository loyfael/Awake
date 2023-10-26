// Action script...

// [Initial MovieClip Action of sprite 20844]
#initclip 109
if (!dofus.graphics.gapi.styles.DofusStylePackage)
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
    if (!dofus.graphics.gapi.styles)
    {
        _global.dofus.graphics.gapi.styles = new Object();
    } // end if
    var _loc1 = (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).prototype;
    ASSetPropFlags(_loc1, null, 1);
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ScrollBar = {sbarrowbgcolor: 10447155, sbarrowcolor: 16777215, sbthumbcolor: 4139540, sbtrackcolor: 10447155};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ItemSetToolTip = {font: "_sans", embedfonts: false, size: 10, color: 16692022, bold: false, italic: false, bgcolor: 0, bgalpha: 70};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).EtherealToolTip = {font: "_sans", embedfonts: false, size: 10, color: 9091054, bold: false, italic: false, bgcolor: 0, bgalpha: 70};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).VerticalChrono = {bgcolor: 0, bgalpha: 50};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeVerticalChrono = {bgcolor: 16737792, bgalpha: 100};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).AlertTextArea = {font: "Font1", embedfonts: true, color: 5327420, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackCenterHudgeTextArea = {font: "Font2", embedfonts: true, align: "center", size: 15, color: 0, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlueTextArea = {font: "_sans", embedfonts: false, align: "left", size: 12, color: 0, bold: false, italic: false, scrollbarstyle: "LightBrownScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownTextArea = {font: "_sans", embedfonts: false, align: "left", size: 12, color: 0, bold: false, italic: false, scrollbarstyle: "BrownScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).PopupTextArea = {font: "Font1", embedfonts: true, align: "center", size: 12, color: 0, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).AnswerTextArea = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 0, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).CenterSecretQuestionTextArea = {font: "verdana", embedfonts: false, align: "center", size: 12, color: 5327420, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).CenterPopupTextArea = {font: "Font1", embedfonts: true, align: "center", size: 12, color: 5327420, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RightPopupTextArea = {font: "Font1", embedfonts: true, align: "right", size: 12, color: 5327420, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LeftPopupTextArea = {font: "Font1", embedfonts: true, align: "left", size: 12, color: 5327420, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteJustifiedSmallTextArea = {font: "Font1", embedfonts: true, align: "justify", size: 10, color: 16777215, bold: false, italic: false, scrollbarstyle: "ChatDebugScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownJustifiedSmallTextArea = {font: "Font1", embedfonts: true, align: "justify", size: 10, color: 5327420, bold: false, italic: false, scrollbarstyle: "BrownScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownJustifiedSmallBoldTextArea = {font: "Font1", embedfonts: true, align: "justify", size: 10, color: 2697513, bold: false, italic: false, scrollbarstyle: "BrownScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLeftSmallTextArea = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 5327420, bold: false, italic: false, scrollbarstyle: "BrownScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GreyLeftSmallTextArea = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 11182717, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteLeftSmallTextArea = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 16777215, bold: false, italic: false, scrollbarstyle: "ChatDebugScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLoginLeftSmallTextArea = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 4729614, bold: false, italic: false, scrollbarstyle: "BrownScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RedLeftSmallTextArea = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 12648448, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RedCenterSmallTextArea = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 12648448, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLeftMediumTextArea = {font: "Font1", embedfonts: true, align: "left", size: 12, color: 5327420, bold: false, italic: false, scrollbarstyle: "BrownScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlueRightSmallTextArea = {font: "Font1", embedfonts: true, align: "right", size: 10, color: 26265, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeLeftSmallTextArea = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 16737792, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownCenterSmallTextArea = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 5327420, bold: false, italic: false, scrollbarstyle: "BrownScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ChatTextArea = {font: "verdana", embedfonts: false, align: "left", size: 10, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ChatDebugTextArea = {font: "_typewriter", embedfonts: false, align: "left", size: 11, scrollbarstyle: "ChatDebugScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).KnownledgeBaseTextArea = {font: "verdana", embedfonts: false, align: "left", size: 11, color: 5327420, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).FloatingTipsTextArea = {font: "verdana", embedfonts: false, align: "left", size: 10, color: 5327420, scrollbarstyle: "WGGreyScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteMediumBoldTextArea = {font: "Font2", embedfonts: true, align: "justify", size: 10, color: 16777215, bold: true, italic: false, scrollbarstyle: "ChatDebugScrollBar"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ChatDebugScrollBar = {sbarrowbgcolor: -1, sbarrowcolor: 16777215, sbthumbcolor: 16777215, sbtrackcolor: -1};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownScrollBar = {sbarrowbgcolor: 12499352, sbarrowcolor: 5327420, sbthumbcolor: 10066329, sbtrackcolor: 15066597};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownScrollBar = {sbarrowbgcolor: 12499352, sbarrowcolor: 5327420, sbthumbcolor: 5327420, sbtrackcolor: 12499352};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RegisterListScrollBar = {sbarrowbgcolor: 14733762, sbarrowcolor: 12361336, sbthumbcolor: 12361336, sbtrackcolor: 14733762};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ServersListScrollBar = {sbarrowbgcolor: 14733762, sbarrowcolor: 12361336, sbthumbcolor: 12361336, sbtrackcolor: 14733762};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).NewsListScrollBar = {sbarrowbgcolor: -1, sbarrowcolor: 7958362, sbthumbcolor: 7958362, sbtrackcolor: -1};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).YellowScrollBar = {sbarrowbgcolor: 12499352, sbarrowcolor: 5327420, sbthumbcolor: 5327420, sbtrackcolor: 12499352};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).SubscribeButton = {labelupstyle: "WhiteCenterMediumBoldLabel", labeloverstyle: "WhiteCenterMediumBoldLabel", labeldownstyle: "WhiteCenterMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ChooseServerSubscribeButton = {labelupstyle: "BrownCenterMediumLabel", labeloverstyle: "BrownCenterMediumLabel", labeldownstyle: "BrownCenterMediumLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownTransparentButton = {labelupstyle: "BrownLoginRightMediumLabel", labeloverstyle: "OrangeRightMediumLabel", labeldownstyle: "BrownLoginRightMediumLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownTransparentBoldButton = {labelupstyle: "BrownLoginRightMediumBoldLabel", labeloverstyle: "OrangeRightMediumBoldLabel", labeldownstyle: "BrownLoginRightMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LanguageButton = {labelupstyle: "WhiteCenterMediumBoldLabel", labeldownstyle: "WhiteCenterMediumBoldLabel", bgcolor: 7958362, bgdowncolor: 7958362, disabledtransform: {ra: 70, rb: 12, ga: 70, gb: 11, ba: 70, bb: 4}};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).DecorationButton = {labelupstyle: "BrownCenterBigBoldLabel", labeldownstyle: "BrownCenterBigBoldLabel", bgcolor: 16644334, bordercolor: 11767396, highlightcolor: 0, bgdowncolor: 16736512, borderdowncolor: 11767396, highlightdowncolor: 0, disabledtransform: {ra: 70, rb: 12, ga: 70, gb: 11, ba: 70, bb: 4}};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeWhiteBorderButton = {labelupstyle: "WhiteCenterMediumLabel", labeldownstyle: "WhiteCenterMediumLabel", bgcolor: 16736512, bordercolor: 16777215, highlightcolor: 15508082, bgdowncolor: 5327420, borderdowncolor: 16777215, highlightdowncolor: 11509893, disabledtransform: {ra: 70, rb: 0, ga: 70, gb: 0, ba: 70, bb: 0}};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeWhiteBorderSpellButton = {labelupstyle: "WhiteLeftMediumLabel", labeldownstyle: "WhiteLeftMediumLabel", bgcolor: 16736512, bordercolor: 16777215, highlightcolor: 15508082, bgdowncolor: 5327420, borderdowncolor: 16777215, highlightdowncolor: 11509893};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).MouthButton = {bgcolor: 16737792, bordercolor: 16777215, highlightcolor: 15508082, bgdowncolor: 5327420, borderdowncolor: 16777215, highlightdowncolor: 11509893};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).TransparentButtonWithDisabled = {labelupstyle: "BrownCenterSmallLabel", labeldownstyle: "OrangeCenterSmallLabel", disabledtransform: {ra: 70, rb: 0, ga: 70, gb: 0, ba: 70, bb: 0}};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).TransparentWhiteButton = {labelupstyle: "WhiteCenterSmallLabel", labeldownstyle: "OrangeCenterSmallLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).TransparentButton = {labelupstyle: "BrownCenterSmallLabel", labeldownstyle: "OrangeCenterSmallLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).MapButton = {bgcolor: 14012330, bgdowncolor: 16736512};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BigStoreButton = {labelupstyle: "BrownRightSmallLabel", labeloverstyle: "WhiteRightSmallLabel", labeldownstyle: "WhiteRightSmallLabel", bgdowncolor: 16750865};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ChatCommandButton = {labelupstyle: "BrownCenterSmallLabel", labeldownstyle: "BrownCenterSmallLabel", labeloverstyle: "BrownCenterSmallLabel", bgcolor: 12499352, bordercolor: 5128232, highlightcolor: 15508082, bgdowncolor: 12499352, borderdowncolor: 13421772, highlightdowncolor: 11509893};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeButton = {labelupstyle: "WhiteCenterSmallLabel", labeldownstyle: "WhiteCenterSmallLabel", bgcolor: 833730, bordercolor: 3957610, highlightcolor: 833730, bgdowncolor: 3957610, borderdowncolor: 3957610, highlightdowncolor: 833730, disabledtransform: {ra: 70, rb: 0, ga: 70, gb: 0, ba: 70, bb: 0}};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeButtonNoDisabled = {labelupstyle: "WhiteCenterSmallLabel", labeldownstyle: "WhiteCenterSmallLabel", bordercolor: 3957610, highlightcolor: 833730, bgdowncolor: 3957610, borderdowncolor: 3957610, highlightdowncolor: 833730};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).MiddleBrownTabButton = {labelupstyle: "BrownCenterSmallBoldLabel", labeldownstyle: "WhiteCenterSmallLabel", bgcolor: 12499352, bordercolor: 14341816, bgdowncolor: 5327420, borderdowncolor: 14341816};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownTabButton = {labelupstyle: "BrownCenterSmallBoldLabel", labeldownstyle: "WhiteCenterSmallLabel", bgcolor: 11840653, bordercolor: 14341816, bgdowncolor: 5327420, borderdowncolor: 14341816};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownTabButton = {labelupstyle: "BrownCenterSmallBoldLabel", labeldownstyle: "BrownCenterSmallLabel", bgcolor: 14078385, bordercolor: 14341816, bgdowncolor: 11840653, borderdowncolor: 14341816};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeCheckButton = {bordercolor: 3957610, highlightcolor: 833730, bgdowncolor: 3957610, borderdowncolor: 3957610, highlightdowncolor: 833730, bgcolor: 3957610};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).PurpleCheckButton = {bordercolor: 14012330, bgcolor: 6697881, highlightcolor: 16777215, borderdowncolor: 14012330, bgdowncolor: 6697881, highlightdowncolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GrayCheckButton = {bordercolor: 14012330, bgcolor: 7566195, highlightcolor: 16777215, borderdowncolor: 14012330, bgdowncolor: 7566195, highlightdowncolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).PinkCheckButton = {bordercolor: 14012330, bgcolor: 15411662, highlightcolor: 16777215, borderdowncolor: 14012330, bgdowncolor: 15411662, highlightdowncolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).NoobCheckButton = {bordercolor: 14012330, bgcolor: 204, highlightcolor: 16777215, borderdowncolor: 14012330, bgdowncolor: 204, highlightdowncolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownCheckButton = {bordercolor: 14012330, bgcolor: 6697728, highlightcolor: 16777215, borderdowncolor: 14012330, bgdowncolor: 6697728, highlightdowncolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GreenCheckButton = {bordercolor: 14012330, bgcolor: 39168, highlightcolor: 16777215, borderdowncolor: 14012330, bgdowncolor: 39168, highlightdowncolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RedCheckButton = {bordercolor: 14012330, bgcolor: 12648448, highlightcolor: 16777215, borderdowncolor: 14012330, bgdowncolor: 12648448, highlightdowncolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackCheckButton = {bordercolor: 14012330, bgcolor: 0, highlightcolor: 16777215, borderdowncolor: 14012330, bgdowncolor: 0, highlightdowncolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlueCheckButton = {bordercolor: 14012330, bgcolor: 26367, highlightcolor: 16777215, borderdowncolor: 14012330, bgdowncolor: 26367, highlightdowncolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GreenMapHintCheckButton = {bordercolor: 11840653, bgcolor: 39168, highlightcolor: 0, borderdowncolor: 11840653, bgdowncolor: 39168, highlightdowncolor: 0};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RedMapHintCheckButton = {bordercolor: 11840653, bgcolor: 11075584, highlightcolor: 0, borderdowncolor: 11840653, bgdowncolor: 11075584, highlightdowncolor: 0};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlueMapHintCheckButton = {bordercolor: 11840653, bgcolor: 26367, highlightcolor: 0, borderdowncolor: 11840653, bgdowncolor: 26367, highlightdowncolor: 0};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BeigeMapHintCheckButton = {bordercolor: 11840653, bgcolor: 15920610, highlightcolor: 0, borderdowncolor: 11840653, bgdowncolor: 15920610, highlightdowncolor: 0};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).VioletMapHintCheckButton = {bordercolor: 11840653, bgcolor: 6724044, highlightcolor: 0, borderdowncolor: 11840653, bgdowncolor: 6724044, highlightdowncolor: 0};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).YellowMapHintCheckButton = {bordercolor: 11840653, bgcolor: 16776960, highlightcolor: 0, bordercolor: 11840653, bgdowncolor: 16776960, highlightdowncolor: 0};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeMapHintCheckButton = {bordercolor: 11840653, bgcolor: 16750848, highlightcolor: 0, borderdowncolor: 11840653, bgdowncolor: 16750848, highlightdowncolor: 0};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteCheckButton = {bordercolor: 1485802, bgcolor: 16777215, highlightcolor: 0, borderdowncolor: 1485802, bgdowncolor: 16777215, highlightdowncolor: 0, disabledtransform: {ra: 70, rb: 0, ga: 70, gb: 0, ba: 70, bb: 0}};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GreyCheckButton = {bordercolor: 1485802, bgcolor: 16777215, highlightcolor: 0, borderdowncolor: 1485802, bgdowncolor: 16777215, highlightdowncolor: 0, disabledtransform: {ra: 70, rb: 0, ga: 70, gb: 0, ba: 70, bb: 0}};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownCheckButton = {bordercolor: 5327420, bgcolor: 11840653, highlightcolor: 0, borderdowncolor: 5327420, bgdowncolor: 11840653, highlightdowncolor: 0, disabledtransform: {ra: 70, rb: 0, ga: 70, gb: 0, ba: 70, bb: 0}};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownCrossButton = {bgcolor: 6181958, highlightcolor: 16777215, bgdowncolor: 9996662, highlightdowncolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteCrossButton = {labelupstyle: "BlackCenterSmallLabel", labeldownstyle: "BrownCenterSmallLabel", bgcolor: 16777215, highlightcolor: 16777215, bgdowncolor: 10066329, highlightdowncolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).FilterButton = {bgcolor: 16736512, bordercolor: 5128232, highlightcolor: 15508082, bgdowncolor: 5327420, borderdowncolor: 13421772, highlightdowncolor: 11509893};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).SmallSquareButton = {bgcolor: 16736512, bordercolor: 5128232, highlightcolor: 15508082, bgdowncolor: 5327420, borderdowncolor: 13421772, highlightdowncolor: 11509893, disabledtransform: {ra: 70, rb: 0, ga: 70, gb: 0, ba: 70, bb: 0}};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteLeftSansLabel = {font: "_sans", embedfonts: false, align: "left", size: 10, color: 16777215, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackLeftDebugLabel = {font: "_typewriter", embedfonts: false, align: "left", size: 11, color: 0, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackLeftDebugNoColorLabel = {font: "_typewriter", embedfonts: false, align: "left", size: 11, color: 0, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RightTitleLabel = {font: "_sans", align: "right", size: 12, color: 16777215, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LeftTitleLabel = {font: "_sans", align: "left", size: 12, color: 16777215, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).CenterBoldLabel = {font: "_sans", align: "center", size: 12, color: 16777215, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).PriceLabel = {font: "Font1", embedfonts: true, align: "right", size: 12, color: 2299660, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).KamaLabel = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).FilterLabel = {font: "Font1", embedfonts: true, align: "left", size: 11, color: 5327420, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownMediumCenterLabel = {font: "Font1", embedfonts: true, align: "center", size: 12, color: 5327420, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackLeftListLabel = {font: "_sans", align: "left", size: 11, color: 0, bold: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackCenterListLabel = {font: "_sans", align: "center", size: 11, color: 0, bold: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackRightListLabel = {font: "_sans", align: "right", size: 11, color: 0, bold: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteLeftListLabel = {font: "_sans", align: "left", size: 11, color: 16777215, bold: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteRightListLabel = {font: "_sans", align: "right", size: 11, color: 16777215, bold: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteExtraHugeBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 40, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownHugeLeftBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 20, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteHugeCenterBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 15, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteNormalCenterBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 12, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteMediumCenterBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 14, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GreenNormalCenterBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 12, color: 65280, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackNormalCenterBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 12, color: 0, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackHugeCenterBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 15, color: 0, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLeftBigBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 13, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLoginLeftBigBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 13, color: 4729614, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteLeftBigBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 13, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteCenterBigBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 13, color: 16777215, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownCenterBigBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 13, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackLeftMediumLabel = {font: "Font1", embedfonts: true, align: "left", size: 11, color: 0, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteJustifiedSmallLabel = {font: "Font1", embedfonts: true, align: "justify", size: 10, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteJustifiedMediumLabel = {font: "Font1", embedfonts: true, align: "justify", size: 11, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteLeftMediumLabel = {font: "Font1", embedfonts: true, align: "left", size: 11, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ItemSetLeftMediumBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 11, color: 16692022, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).EtherealLeftMediumBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 11, color: 9091054, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeLeftMediumBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 11, color: 16750848, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteLeftMediumBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 11, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteRightMediumLabel = {font: "Font1", embedfonts: true, align: "right", size: 11, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteLeftVeryTinyLabel = {font: "Font1", embedfonts: true, align: "left", size: 9, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteCenterMediumLabel = {font: "Font1", embedfonts: true, align: "center", size: 11, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteRightMediumBoldLabel = {font: "Font2", embedfonts: true, align: "right", size: 11, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownMediumBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 11, color: 15459275, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteCenterMediumBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 11, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteCenterVerySmallLabel = {font: "Font2", embedfonts: true, align: "center", size: 9, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteCenterSmallBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 10, color: 16777215, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteRightVerySmallLabel = {font: "Font2", embedfonts: true, align: "right", size: 9, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteLeftVerySmallLabel = {font: "Font2", embedfonts: true, align: "left", size: 9, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLeftBoldMediumLabel = {font: "Font1", embedfonts: true, align: "left", size: 15, color: 5327420, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLeftBoldMediumSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 13, color: 5327420, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLeftMediumSecretAnswerLabel = {font: "Webdings", embedfonts: false, align: "left", size: 11, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLeftMediumLabel = {font: "Font1", embedfonts: true, align: "left", size: 11, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownCenterMediumLabel = {font: "Font1", embedfonts: true, align: "center", size: 11, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).DarkBrownLeftMediumLabel = {font: "Font1", embedfonts: true, align: "left", size: 11, color: 4729614};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackCenterMediumBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 11, color: 0, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLeftMediumBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 11, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownCenterMediumBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 11, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackLeftMediumBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 11, color: 0, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RedLeftMediumBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 11, color: 16711680, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RedCenterMediumBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 11, color: 16711680, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlueLeftMediumBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 11, color: 255, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GreenLeftMediumBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 11, color: 26112, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeRightMediumLabel = {font: "Font1", embedfonts: true, align: "right", size: 12, color: 16737792, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeRightMediumBoldLabel = {font: "Font2", embedfonts: true, align: "right", size: 12, color: 16737792, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLoginRightMediumLabel = {font: "Font1", embedfonts: true, align: "right", size: 11, color: 4729614, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownRightMediumLabel = {font: "Font1", embedfonts: true, align: "right", size: 11, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLoginRightMediumBoldLabel = {font: "Font2", embedfonts: true, align: "right", size: 11, color: 4729614, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownRightMediumBoldLabel = {font: "Font2", embedfonts: true, align: "right", size: 11, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackRightMediumLabel = {font: "Font1", embedfonts: true, align: "right", size: 11, color: 0, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownCenterSmallLabel = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackCenterSmallLabel = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 0, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackCenterHugeLabel = {font: "Font2", embedfonts: true, align: "center", size: 15, color: 2696735, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeCenterSmallLabel = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 16736512, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownRightSmallLabel = {font: "Font1", embedfonts: true, align: "right", size: 10, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownRightVerySmallLabel = {font: "Font1", embedfonts: true, align: "right", size: 9, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownRightSmallLabel = {font: "Font1", embedfonts: true, align: "right", size: 10, color: 11380094, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RedLeftSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 7798784, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RedCenterSmallLabel = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 11141120, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RedCenterBigBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 15, color: 15597568, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RedCenterVerySmallLabel = {font: "Font1", embedfonts: true, align: "center", size: 9, color: 11141120, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownCenterVeryTinyLabel = {font: "Font1", embedfonts: true, align: "center", size: 5, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GreenCenterSmallLabel = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 26112, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).YellowCenterSmallLabel = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 16776960, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlueCenterSmallLabel = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 170, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GreenLeftSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 26112, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLeftSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).DarkGrayLeftSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 6710886, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GrayLeftSmallBoldLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 15395039, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GreenLeftSmallBoldLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 26112, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RedLeftSmallBoldLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 12648448, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GreyLeftSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 11182717, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ItemSetLeftSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 11102721, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).EtherealLeftSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 1993932, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlueLeftSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 13260, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteLeftSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlueRightSmallLabel = {font: "Font1", embedfonts: true, align: "right", size: 10, color: 26265, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeLeftSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 16737792, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownLeftSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 11380094, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteCenterSmallLabel = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteRightSmallLabel = {font: "Font1", embedfonts: true, align: "right", size: 10, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteRightSmallBoldLabel = {font: "Font2", embedfonts: true, align: "right", size: 10, color: 16777215, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RedRightSmallBoldLabel = {font: "Font2", embedfonts: true, align: "right", size: 10, color: 12648448, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLeftSmallBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 10, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownCenterSmallBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 10, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownRightSmallBoldLabel = {font: "Font2", embedfonts: true, align: "right", size: 10, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownRightExtraSmallLabel = {font: "Font1", embedfonts: true, align: "right", size: 9, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLeftExtraSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 9, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).DarkBrownLeftExtraSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 9, color: 4729614, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlueLeftExtraSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 9, color: 255, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GreenLeftExtraSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 9, color: 26112, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownLeftPixelLabel = {font: "Font3", embedfonts: true, align: "left", size: 8, color: 5327420, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownLeftPixelLabel = {font: "Font3", embedfonts: true, align: "left", size: 8, color: 11380094, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).GreyBrownLeftPixelLabel = {font: "Font3", embedfonts: true, align: "left", size: 8, color: 11380094, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackCellRenderer = {defaultstyle: "BlackLeftListLabel", leftstyle: "BlackLeftListLabel", rightstyle: "BlackRightListLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteCellRenderer = {defaultstyle: "WhiteLeftListLabel", leftstyle: "WhiteLeftListLabel", rightstyle: "WhiteRightListLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlueCellRenderer = {defaultstyle: "BlackLeftListLabel", leftstyle: "BlackLeftListLabel", rightstyle: "BlackRightListLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownList = {cellrendererstyle: "WhiteCellRenderer", scrollbarstyle: "BrownScrollBar", cellbgcolor: [8683882, 9736310], cellselectedcolor: 16750865, cellovercolor: 6249548};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).NpcDialogList = {cellrendererstyle: "BlackCellRenderer", scrollbarstyle: "YellowScrollBar", cellbgcolor: 16777166, cellselectedcolor: 16777166, cellovercolor: 16750848};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).IndexList = {cellrendererstyle: "BlackCellRenderer", cellbgcolor: -1, cellselectedcolor: -1, cellovercolor: 16750848};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).NewsList = {scrollbarstyle: "NewsListScrollBar", cellbgcolor: -1, cellselectedcolor: -1, cellovercolor: 15526886};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ServersList = {cellrendererstyle: "WhiteLeftSansLabel", scrollbarstyle: "ServersListScrollBar", cellbgcolor: 0, cellselectedcolor: 16750865, cellovercolor: 13421772};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ComboBoxRegisterList = {cellrendererstyle: "BrownLeftSmallLabel", scrollbarstyle: "RegisterListScrollBar", cellbgcolor: 15000545, cellselectedcolor: 10392448, cellovercolor: 7299402};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ComboBoxServersList = {cellrendererstyle: "BrownLeftSmallLabel", scrollbarstyle: "ServersListScrollBar", cellbgcolor: 16777215, cellselectedcolor: 16750865, cellovercolor: 11767396};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownList = {cellrendererstyle: "BlackCellRenderer", scrollbarstyle: "LightBrownScrollBar", cellbgcolor: [11840653, 13221789], cellselectedcolor: 16750865, cellovercolor: 9668204};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownList2 = {cellrendererstyle: "BlackCellRenderer", scrollbarstyle: "LightBrownScrollBar", cellbgcolor: [13221789, 14012330], cellselectedcolor: 16750865, cellovercolor: 9668204};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownListNoSelect = {cellrendererstyle: "BlackCellRenderer", scrollbarstyle: "LightBrownScrollBar", cellbgcolor: [11840653, 13221789], cellselectedcolor: -1, cellovercolor: 9668204};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownListNoSelectNoOver = {cellrendererstyle: "BlackCellRenderer", scrollbarstyle: "LightBrownScrollBar", cellbgcolor: [11840653, 13221789], cellselectedcolor: -1, cellovercolor: -1};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownUniformList = {cellrendererstyle: "BlackCellRenderer", scrollbarstyle: "LightBrownScrollBar", cellbgcolor: [14341816], cellselectedcolor: 16750865, cellovercolor: 9668204};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ExtraLightBrownList = {cellrendererstyle: "BlackCellRenderer", scrollbarstyle: "LightBrownScrollBar", cellbgcolor: 13221789, cellselectedcolor: 16750865, cellovercolor: 9668204};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).SpellLightBrownList = {scrollbarstyle: "LightBrownScrollBar", cellbgcolor: [14078385, 14934218], cellselectedcolor: -1, cellovercolor: 9668204};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).HousesLightBrownList = {scrollbarstyle: "LightBrownScrollBar", cellbgcolor: [14078385, 14934218], cellselectedcolor: 16750865, cellovercolor: 9668204};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownListInventory = {bgtitlecolor: 5195833, bordercolor: 16777215, bgfiltercolor: 12433815, bgcolor: 6380360, liststyle: "BrownList", titlestyle: "LeftTitleLabel", buttonstyle: "FilterButton", pricestyle: "PriceLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownListInventory = {bgtitlecolor: 5327420, bordercolor: 16777215, bgfiltercolor: 14012330, bgcolor: 9208680, liststyle: "LightBrownList", titlestyle: "LeftTitleLabel", buttonstyle: "FilterButton", pricestyle: "PriceLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownItemViewer = {bgtitlecolor: 5195833, bordercolor: 16777215, bgcolor: 6380360, bgdescriptioncolor: 14931641, bgiconcolor: 15197135, liststyle: "BrownList", namestyle: "LeftTitleLabel", levelstyle: "RightTitleLabel", descriptionstyle: "BrownLeftSmallTextArea", pricestyle: "PriceLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownItemViewer = {bgtitlecolor: 5327420, bordercolor: 16777215, bgcolor: 9208680, bgdescriptioncolor: 14012330, bgiconcolor: 15197135, liststyle: "LightBrownList", namestyle: "LeftTitleLabel", levelstyle: "RightTitleLabel", descriptionstyle: "BrownLeftSmallTextArea", pricestyle: "PriceLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).Shop = {buttonstyle: "OrangeButton", shopitemviewerstyle: "BrownItemViewer", playeritemviewerstyle: "LightBrownItemViewer"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BoldItalicLabel = {font: "_sans", align: "center", size: 13, color: 16777215, bold: true, italic: true};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).InventoryGridContainer = {labelstyle: "WhiteLeftSansLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).InventoryGrid = {scrollbarstyle: "WGGreyScrollBar", containerbackground: "UI_InventoryGridBackground", containerhighlight: "UI_InventoryGridHighlight", containerstyle: "InventoryGridContainer", containermargin: 2};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).SmileyGrid = {containerhighlight: "SmileyContainerHighlight", containermargin: 2};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ExchangeGrid = {scrollbarstyle: "WGGreyScrollBar", containerbackground: "UI_ExchangeGridBackground", containerhighlight: "UI_ExchangeGridHighlight", containermargin: 2, containerstyle: "InventoryGridContainer"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).SecureCraftGrid = {scrollbarstyle: "WGGreyScrollBar", containerbackground: "UI_SecureCraftGridBackground", containerhighlight: "UI_SecureCraftGridHighlight", containerstyle: "InventoryGridContainer"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).SpellsGrid = {scrollbarstyle: "WGGreyScrollBar", containerbackground: "UI_SpellsContainerBackground", containerborder: "UI_SpellsContainerBorder", containerhighlight: "UI_SpellsContainerHighlight", containermargin: 2, containerstyle: "InventoryGridContainer"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).Inventory = {bgtitlecolor: 5327420, bordercolor: 16777215, bgcolor: 14012330, bggridcolor: 5327420, itenviewerstyle: "LightBrownItemViewer"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackTransparentWindow = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 13}, bordercolor: 4735287, borderwidth: 3, backgroundcolor: [9931647, 986379], backgroundrotation: {matrixType: "box", x: 0, y: 0, w: undefined, h: undefined, r: 90 * 0.017453}, backgroundalpha: [95, 100], titlecolor: 1906454, titleheight: 22, titlestyle: "WhiteCenterMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ChatWhiteWindow = {cornerradius: {tl: 0, tr: 10, br: 0, bl: 0}, bordercolor: 16777215, borderwidth: 0, backgroundcolor: 14012330, titlecolor: 5327420, titleheight: 22, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownPanelWindow = {cornerradius: {tl: 13, tr: 13, br: 0, bl: 0}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: 14012330, titlecolor: 5327420, titleheight: 22, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).MediumBrownWindow = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 13}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: 13221789, titlecolor: 5327420, titleheight: 22, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownWindow = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 13}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: 14012330, titlecolor: 5327420, titleheight: 22, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyWindow = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 13}, bordercolor: 15658734, borderwidth: 3, backgroundcolor: 13421772, titlecolor: 833730, titleheight: 22, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownToDarkBrownWindow = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 13}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: [14012330, 9668204], backgroundrotation: {matrixType: "box", x: 0, y: 0, w: undefined, h: undefined, r: 90 * 0.017453}, backgroundratio: [155, 255], titlecolor: 5327420, titleheight: 22, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).VeryDarkBrownWindow = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 13}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: 9668204, titlecolor: 5327420, titleheight: 22, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ExtraLightBrownWindow = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 13}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: 16052452, titlecolor: 5327420, titleheight: 22, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownWindowRightBottom = {cornerradius: {tl: 13, tr: 13, br: 0, bl: 13}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: 14012330, titlecolor: 5327420, titleheight: 22, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownBigStoreBuyWindow = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 0}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: 14012330, titlecolor: 5327420, titleheight: 22, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownCrafterListWindow = {cornerradius: {tl: 13, tr: 13, br: 0, bl: 0}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: 14012330, titlecolor: 5327420, titleheight: 22, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownItemSetWindow = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 13}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: 14012330, titlecolor: 5327420, titleheight: 22, titlestyle: "ItemSetLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownNoBorderWindow = {cornerradius: {tl: 8, tr: 8, br: 0, bl: 0}, bordercolor: 16777215, borderwidth: 0, backgroundcolor: 13221789, titlecolor: 5327420, titleheight: 20, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownWindowNoTitle = {cornerradius: {tl: 13, tr: 13, br: 0, bl: 13}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: 14012330, titlecolor: 14012330, titleheight: 13};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownWindowNoTitleRounded = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 13}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: [14012330, 13221789], backgroundrotation: {matrixType: "box", x: 0, y: 0, w: undefined, h: undefined, r: 0}, backgroundratio: [100, 156], titlecolor: 14012330, displaytitle: false, titleheight: 13};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownWindowNoTitleFullRound = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 13}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: 14012330, titlecolor: 14012330, titleheight: 13};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).KeySymbolWindow = {cornerradius: {tl: 8, tr: 8, br: 0, bl: 0}, bordercolor: 16777215, borderwidth: 2, backgroundcolor: 14012330, titlecolor: 14012330, titleheight: 13};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownWindowPopup = {cornerradius: {tl: 5, tr: 5, br: 5, bl: 5}, bordercolor: 16777215, borderwidth: 2, backgroundcolor: 14012330, titlecolor: 14012330, titleheight: 5};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightOrangeWindowNoTitle = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 13}, bordercolor: 16777215, borderwidth: 2, backgroundcolor: 16736512, titlecolor: 16736512, titleheight: 13};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).DarkBrownWindow = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 13}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: 5327420, titlecolor: 5327420, titleheight: 22, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).DarkBrownWindowStraightUp = {cornerradius: {tl: 13, tr: 13, br: 0, bl: 0}, bordercolor: 16777215, borderwidth: 3, backgroundcolor: 5327420, titlecolor: 5327420, titleheight: 22, titlestyle: "WhiteLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).JobBackgroundWindow = {cornerradius: {tl: 5, tr: 5, br: 0, bl: 0}, bordercolor: 16777215, borderwidth: 0, backgroundcolor: 14341816, titlecolor: 11840653, titleheight: 20, titlestyle: "LeftTitleLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).NpcDialogWindow = {cornerradius: {tl: 5, tr: 5, br: 5, bl: 5}, bordercolor: 0, borderwidth: 2, backgroundcolor: 0, titlecolor: 16777166, titleheight: 5, titlestyle: "BlackLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).NpcDialogWindowUp = {cornerradius: {tl: 4, tr: 4, br: 4, bl: 4}, bordercolor: 12557955, borderwidth: 5, backgroundcolor: 16250093, titlecolor: 14533534, titleheight: 25, titlestyle: "BlackLeftMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).TranparentBackgroundHidder = {backgroundcolor: 0, backgroundalpha: 0};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).DarkBackgroundHidder = {backgroundcolor: 0, backgroundalpha: 10};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).VeryDarkBackgroundHidder = {backgroundcolor: 0, backgroundalpha: 20};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).VeryVeryDarkBackgroundHidder = {backgroundcolor: 0, backgroundalpha: 50};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BlackBackgroundHidder = {backgroundcolor: 0, backgroundalpha: 100};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).NormalJobViewer = {backgroundcolor: 14012330};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).SelectedJobViewer = {backgroundcolor: 16736512};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownProgressBar = {bgcolor: 5327420, upcolor: 16737792};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).EtherealNormalProgressBar = {bgcolor: 11840653, upcolor: 11840653};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).EtherealCriticalProgressBar = {bgcolor: 11840653, upcolor: 16711680};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownProgressBar = {bgcolor: 14012330, upcolor: 16737792};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownPopupMenu = {bordercolor: 16777215, backgroundcolor: 5327420, foregroundcolor: 14012330, itembgcolor: 14012330, itemovercolor: 16737792, itemstaticbgcolor: 5327420, labelstaticstyle: "LightBrownLeftPixelLabel", labelenabledstyle: "BrownLeftPixelLabel", labeldisabledstyle: "GreyBrownLeftPixelLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeVolumeSlider = {oncolor: 16737792, offcolor: 11840653};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeChrono = {bgcolor: 833730};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).DarkBrownStylizedAllRoundRectangle = {cornerradius: {tl: 12, tr: 12, br: 12, bl: 12}, bgcolor: 4735287};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).DarkBrownStylizedBottomRoundRectangle = {cornerradius: {tl: 0, tr: 0, br: 12, bl: 12}, bgcolor: 11840653};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).MediumDarkBrownStylizedAllRoundRectangle = {cornerradius: {tl: 15, tr: 15, br: 15, bl: 15}, bgcolor: 6379337};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BigStoreSellStylizedRectangle = {cornerradius: {tl: 0, tr: 0, br: 10, bl: 10}, bgcolor: 9668204};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteChatStylizedRectangle = {cornerradius: {tl: 0, tr: 10, br: 0, bl: 0}, bgcolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteBLRoundStylizedRectangle = {cornerradius: {tl: 0, tr: 0, br: 0, bl: 10}, bgcolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteSpellInfosStylizedRectangle = {cornerradius: {tl: 13, tr: 13, br: 0, bl: 0}, bgcolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WhiteSpellFullInfosStylizedRectangle = {cornerradius: {tl: 13, tr: 13, br: 13, bl: 13}, bgcolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownChatStylizedRectangle = {cornerradius: {tl: 0, tr: 10, br: 0, bl: 0}, bgcolor: 9208680};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownChatStylizedRectangle = {cornerradius: {tl: 0, tr: 10, br: 0, bl: 0}, bgcolor: 14012330};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightGreyWGStylizedRectangle = {cornerradius: {tl: 0, tr: 10, br: 0, bl: 0}, bgcolor: 12303291};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ExtraLightBrownSpellInfosStylizedRectangle = {cornerradius: {tl: 10, tr: 10, br: 0, bl: 0}, bgcolor: 15592412};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ExtraLightBrownSpellFullInfosStylizedRectangle = {cornerradius: {tl: 10, tr: 10, br: 10, bl: 10}, bgcolor: 15592412};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ExtraLightBrownStylizedRectangle = {cornerradius: {tl: 0, tr: 10, br: 0, bl: 0}, bgcolor: 15722712};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).MediumBrownStylizedRectangle = {cornerradius: {tl: 0, tr: 10, br: 0, bl: 0}, bgcolor: 11767396};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).MediumBrownAllRoundStylizedRectangle = {cornerradius: {tl: 5, tr: 5, br: 5, bl: 5}, bgcolor: 12499352};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownAllRoundStylizedRectangle = {cornerradius: {tl: 10, tr: 10, br: 10, bl: 10}, bgcolor: 5327420};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownTopRoundStylizedRectangle = {cornerradius: {tl: 10, tr: 10, br: 0, bl: 0}, bgcolor: 5327420};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownAllRoundStylizedRectangle = {cornerradius: {tl: 8, tr: 8, br: 8, bl: 8}, bgcolor: 11767396};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ExtraLightBrownAllRoundStylizedRectangle = {cornerradius: {tl: 7, tr: 7, br: 7, bl: 7}, bgcolor: 16644329};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ExtraLightBrownButtomLeftRoundStylizedRectangle = {cornerradius: {tl: 0, tr: 0, br: 0, bl: 7}, bgcolor: 15066553, alpha: 50};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).QuiteBrownButtomRoundStylizedRectangle = {cornerradius: {tl: 0, tr: 0, br: 10, bl: 10}, bgcolor: 9668204};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ShortcutsBrownButtomRoundStylizedRectangle = {cornerradius: {tl: 0, tr: 0, br: 10, bl: 10}, bgcolor: 13221789};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LoginBackStylizedRectangle = {cornerradius: {tl: 0, tr: 10, br: 0, bl: 0}, bgcolor: 14472630};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LoginBorderStylizedRectangle = {cornerradius: {tl: 0, tr: 10, br: 0, bl: 0}, bgcolor: 11767396};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).DebugLogsStylizedRectangle = {cornerradius: {tl: 8, tr: 8, br: 0, bl: 0}, bgcolor: 0, alpha: 70};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).DebugCommandLineStylizedRectangle = {cornerradius: {tl: 0, tr: 0, br: 8, bl: 8}, bgcolor: 16777215, alpha: 70};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ChooseServerStylizedRectangle = {cornerradius: {tl: 10, tr: 0, br: 10, bl: 10}, bgcolor: 16777215, alpha: 30};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).MovableBarStylizedRectangle = {cornerradius: {tl: 3, tr: 3, br: 3, bl: 3}, bgcolor: 12104079};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).TopMovableBarStylizedRectangle = {cornerradius: {tl: 0, tr: 0, br: 3, bl: 3}, bgcolor: 12104079};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LeftMovableBarStylizedRectangle = {cornerradius: {tl: 0, tr: 3, br: 3, bl: 0}, bgcolor: 12104079};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RightMovableBarStylizedRectangle = {cornerradius: {tl: 3, tr: 0, br: 0, bl: 3}, bgcolor: 12104079};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BottomMovableBarStylizedRectangle = {cornerradius: {tl: 3, tr: 3, br: 0, bl: 0}, bgcolor: 12104079};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).VerticalDragOneMovableBarStylizedRectangle = {cornerradius: {tl: 3, tr: 3, br: 0, bl: 0}, bgcolor: 4139540};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).VerticalDragTwoMovableBarStylizedRectangle = {cornerradius: {tl: 0, tr: 0, br: 3, bl: 3}, bgcolor: 4139540};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).HorizontalDragOneMovableBarStylizedRectangle = {cornerradius: {tl: 3, tr: 0, br: 0, bl: 3}, bgcolor: 4139540};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).HorizontalDragTwoMovableBarStylizedRectangle = {cornerradius: {tl: 0, tr: 3, br: 3, bl: 0}, bgcolor: 4139540};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ChooseCharacterSprite = {overcolor: 16699273, selectedcolor: 15502850, desabledtransform: {ra: 70, rb: 12, ga: 70, gb: 11, ba: 70, bb: 4}};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightBrownDataGrid = {labelstyle: "WhiteCenterSmallLabel", liststyle: "LightBrownListNoSelect", titlebgcolor: "0x514A3C"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightTitleBrownDataGrid = {labelstyle: "WhiteCenterSmallLabel", liststyle: "LightBrownList", titlebgcolor: "0x93866C"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).TitleBrownDataGrid = {labelstyle: "WhiteNormalCenterBoldLabel", liststyle: "LightBrownList", titlebgcolor: "0x93866C"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).LightTitleBrownDataGridNoSelectNoOver = {labelstyle: "WhiteCenterSmallLabel", liststyle: "LightBrownListNoSelectNoOver", titlebgcolor: "0x93866C"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ServersDataGrid = {labelstyle: "WhiteCenterSmallLabel", liststyle: "LightBrownListNoSelectNoOver", titlebgcolor: "0x93866C"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).BrownMap = {buttonstyle: "MapButton", bordercolor: 12104079, gridcolor: 12104079, bgcolor: 15195335};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeComboBox = {labelstyle: "BrownCenterSmallLabel", buttonstyle: "OrangeButton", liststyle: "ComboBoxServersList", listbordercolor: 12427128, bgcolor: 16777215, bordercolor: 12427128, highlightcolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).OrangeLeftComboBox = {labelstyle: "BrownLeftSmallLabel", buttonstyle: "OrangeButton", liststyle: "ComboBoxServersList", listbordercolor: 12427128, bgcolor: 16777215, bordercolor: 12427128, highlightcolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).RegisterLeftComboBox = {labelstyle: "BrownLeftSmallLabel", buttonstyle: "OrangeButton", liststyle: "ComboBoxRegisterList", listbordercolor: 10392448, bgcolor: 15066081, bordercolor: 10392448, highlightcolor: 15066081};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).ConsoleLogger = {font: "_sans", embedfonts: false, size: 12};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).DofusFps = {labelstyle: "WhiteCenterSmallLabel", backalpha: 50, backcolor: 0};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyVolumeSlider = {oncolor: 5329745, offcolor: 10132889};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGWhiteCenterUltraBigBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 21, color: 16777215, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyLeftBigBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 16, color: 5329745, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyCenterBigBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 16, color: 5329745, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGWhiteLeftBigLabel = {font: "Font2", embedfonts: true, align: "left", size: 16, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGWhiteCenterBigLabel = {font: "Font2", embedfonts: true, align: "center", size: 16, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGWhiteCenterMediumBigBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 14, color: 16777215, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyLeftMediumBigBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 14, color: 5329745, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyLeftMediumBigBoldLabel12 = {font: "Font2", embedfonts: true, align: "left", size: 12, color: 5329745, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGWhiteLeftMediumBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 12, color: 16777215, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGWhiteLeftMediumLabel = {font: "Font2", embedfonts: true, align: "left", size: 12, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGWhiteLeftCenterBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 12, color: 16777215, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyCenterMediumLabel = {font: "Font2", embedfonts: true, align: "center", size: 12, color: 5329745, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyCenterMediumLabelFont1 = {font: "Font1", embedfonts: true, align: "center", size: 11, color: 5329745, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyCenterMediumBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 12, color: 5329745, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyLeftMediumBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 12, color: 5329745, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGLightGreyLeftMediumBoldLabel = {font: "Font2", embedfonts: true, align: "left", size: 12, color: 13092807, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyCenterSMBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 11, color: 5329745, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyCenterSmallLabel = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 5329745, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyLeftSmallLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 5329745, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyLeftSmallBoldLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 5329745, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyLeftSmallBoldLabel2 = {font: "Font2", embedfonts: true, align: "left", size: 10, color: 5329745, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGLightGreyRightSmallLabel = {font: "Font2", embedfonts: true, align: "right", size: 10, color: 12040119, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyLeftMediumLabel = {font: "Font1", embedfonts: true, align: "left", size: 11, color: 1407709, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyLeftMediumBolderLabel = {font: "Font1", embedfonts: true, align: "left", size: 11, color: 5329745, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGWhiteCenterMediumLabel = {font: "Font2", embedfonts: true, align: "center", size: 12, color: 16777215, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGWhiteCenterMediumBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 12, color: 16777215, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownCenterMediumBoldLabel = {font: "Font2", embedfonts: true, align: "center", size: 12, color: 4333579, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyHeader = {cornerradius: {tl: 13, tr: 13, br: 0, bl: 0}, bgcolor: [10922149, 9145994], bgalpha: 100, rotation: {matrixType: "box", x: 0, y: 0, w: undefined, h: undefined, r: 90 * 0.017453}, decorationstyle: "WGGreyHeaderDecoration"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyFooter = {cornerradius: {tl: 0, tr: 0, br: 13, bl: 13}, bgcolor: [10922149, 9145994], bgalpha: 100, rotation: {matrixType: "box", x: 0, y: 0, w: undefined, h: undefined, r: 90 * 0.017453}, decorationstyle: "WGGreyFooterDecoration"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyBackground = {cornerradius: {tl: 5, tr: 5, br: 5, bl: 5}, bgcolor: 9351367};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGDarkGreyBackground = {cornerradius: {tl: 0, tr: 10, br: 10, bl: 10}, bgcolor: [7388649, 9162489]};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGDarkGreyTopRoundStylizedRectangle = {cornerradius: {tl: 10, tr: 10, br: 0, bl: 0}, bgcolor: 10132889};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreySpellFullInfosStylizedRectangle = {cornerradius: {tl: 10, tr: 10, br: 10, bl: 10}, bgcolor: 11118759, alpha: 67};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGWhiteSpellFullInfosStylizedRectangle = {cornerradius: {tl: 10, tr: 10, br: 10, bl: 10}, bgcolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGWhiteMapStylizedRectangle = {cornerradius: 0, bgcolor: 14540253, alpha: 100};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGWhiteBorderButton = {labelupstyle: "WhiteCenterMediumLabel", labeldownstyle: "WhiteCenterMediumLabel", bgcolor: 833730, bordercolor: 3957610, highlightcolor: 833730, bgdowncolor: 3957610, borderdowncolor: 3957610, highlightdowncolor: 833730, disabledtransform: {ra: 70, rb: 0, ga: 70, gb: 0, ba: 70, bb: 0}};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyWhiteBorderButton = {labelupstyle: "WhiteCenterMediumLabel", labeldownstyle: "WhiteCenterMediumLabel", bgcolor: 7388649, bordercolor: 16777215, highlightcolor: 10066329, bgdowncolor: 9162489, borderdowncolor: 14540253, highlightdowncolor: 10066329, disabledtransform: {ra: 70, rb: 0, ga: 70, gb: 0, ba: 70, bb: 0}};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGMiddleGreyWhiteTabButton = {labelupstyle: "WhiteCenterSmallBoldLabel", labeldownstyle: "WhiteCenterSmallLabel", bgcolor: 14341585, bordercolor: 16777215, bgdowncolor: 12696770, borderdowncolor: 14540253};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGFilterButton = {bgcolor: 10396574, bordercolor: 16777215, highlightcolor: 10066329, bgdowncolor: 10066329, borderdowncolor: 14540253, highlightdowncolor: 10066329};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGFilterButtonBlue = {bgcolor: 833730, bordercolor: 3957610, highlightcolor: 833730, bgdowncolor: 3957610, borderdowncolor: 3957610, highlightdowncolor: 833730};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGTransparentButton = {labelupstyle: "WGGreyCenterSmallLabel", labeldownstyle: "WGGreyCenterMediumBoldLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyCrossButton = {bgcolor: 6671615, highlightcolor: 16777215, bgdowncolor: 6671615, highlightdowncolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGMapButton = {bgcolor: 16777215, bgdowncolor: 10132889};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyButtonNoDisabled = {labelupstyle: "WhiteCenterSmallLabel", labeldownstyle: "WhiteCenterSmallLabel", bordercolor: 16777215, highlightcolor: 10396574, bgdowncolor: 10066329, borderdowncolor: 16777215, highlightdowncolor: 833730};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyTextInput = {font: "Font1", embedfonts: true, align: "left", size: 12, color: 0, bold: false, italic: false, cornerradius: {tl: 3, tr: 3, br: 3, bl: 3}, bordercolor: 6710886, borderalpha: 100, borderwidth: 1, backgroundcolor: 16777215, backgroundalpha: 50};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyTextArea = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 5329745, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar", cornerradius: {tl: 10, tr: 10, br: 10, bl: 10}, bordercolor: 5329745, borderalpha: 100, borderwidth: 1, backgroundcolor: 16777215, backgroundalpha: 67};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyTextAreaSpell = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 5329745, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar", cornerradius: {tl: 3, tr: 3, br: 3, bl: 3}, bordercolor: 11118759, borderalpha: 100, borderwidth: 1, backgroundcolor: 16777215, backgroundalpha: 67};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyTextAreaTips = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 16777215, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar", cornerradius: {tl: 0, tr: 0, br: 0, bl: 0}, bordercolor: 11118759, borderalpha: 100, borderwidth: 1, backgroundcolor: 7697781, backgroundalpha: 67};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyTextAreaNoBorder = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 0, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar", cornerradius: {tl: 3, tr: 3, br: 3, bl: 3}, bordercolor: 11118759, borderalpha: 100, borderwidth: 0, backgroundcolor: 16777215, backgroundalpha: 0};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownTextAreaNoBorder = {font: "Font1", embedfonts: true, align: "left", size: 11, color: 4333579, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar", borderwidth: 0};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyTextAreaNoBorderJustify = {font: "Font1", embedfonts: true, align: "justify", size: 10, color: 0, bold: false, italic: false, scrollbarstyle: "WGGreyScrollBar", cornerradius: {tl: 3, tr: 3, br: 3, bl: 3}, bordercolor: 11118759, borderalpha: 100, borderwidth: 0, backgroundcolor: 16777215, backgroundalpha: 0};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyScrollBar = {sbarrowbgcolor: 16512998, sbarrowcolor: 14272950, sbthumbcolor: 14272950, sbtrackcolor: 16512998};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGWhiteSemiTransparentScrollBar = {sbarrowbgcolor: -1, sbarrowcolor: 16777215, sbarrowalpha: 50, sbtrackcolor: -1, sbthumbcolor: 16777215, sbthumbalpha: 50};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGLightGreyListNoSelect = {cornerradius: {tl: 10, tr: 10, br: 10, bl: 10}, cellrendererstyle: "BlueCellRenderer", scrollbarstyle: "WGGreyScrollBar", cellbgcolor: [16777215, 15789031], cellselectedcolor: -1, cellovercolor: 10132889};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGLightGreyListSpell = {cellrendererstyle: "BlackCellRenderer", scrollbarstyle: "WGGreyScrollBar", cellbgcolor: [16777215, 15789031], cellselectedcolor: -1, cellovercolor: 10132889};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGComboBoxGreyList = {cellrendererstyle: "BrownLeftSmallLabel", scrollbarstyle: "WGGreyScrollBar", cellbgcolor: 16777215, cellselectedcolor: 13487563, cellovercolor: 15658734};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGLightGreyList = {cellrendererstyle: "BlackCellRenderer", scrollbarstyle: "WGGreyScrollBar", cellbgcolor: [15658734, 9351367], cellselectedcolor: 10132889, cellovercolor: 10132889};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBookListNoSelect = {cellrendererstyle: "BlackCellRenderer", scrollbarstyle: "WGWhiteSemiTransparentScrollBar", cellbgcolor: -1, cellselectedcolor: -1, cellovercolor: 16777215, celloveralpha: 50};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGNewsList = {scrollbarstyle: "WGGreyScrollBar", cellbgcolor: -1, cellselectedcolor: -1, cellovercolor: 15526886};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGInventoryGridContainer = {labelstyle: "WhiteLeftSansLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGInventoryGrid = {scrollbarstyle: "WGGreyScrollBar", containerbackground: "UI_InventoryGridBackground", containerhighlight: "UI_InventoryGridHighlight", containerstyle: "InventoryGridContainer", containermargin: 2};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyLeftComboBox = {labelstyle: "WGGreyLeftSmallLabel", buttonstyle: "WGGreyWhiteBorderButton", liststyle: "WGComboBoxGreyList", listbordercolor: 6710886, bgcolor: 15658734, bordercolor: 6710886, highlightcolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGComboBoxRegisterList = {cellrendererstyle: "BrownLeftSmallLabel", scrollbarstyle: "RegisterListScrollBar", cellbgcolor: 15000545, cellselectedcolor: 10392448, cellovercolor: 7299402};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGSpellsDataGrid = {labelstyle: "WGWhiteLeftMediumLabel", liststyle: "WGLightGreyListNoSelect", titlecornerradius: {tl: 0, tr: 0, br: 0, bl: 0}, titlebgcolor: [16772302, 16446170], titlebgalpha: 100, titlerotation: {matrixType: "box", x: 0, y: 0, w: undefined, h: undefined, r: 90 * 0.017453}, titlestyle: "WGWhiteLeftMediumBoldLabel", titledecorationstyle: "WGGreyHeaderDecoration"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyDataGrid = {labelstyle: "WGWhiteCenterMediumLabel", liststyle: "WGLightGreyListNoSelect", titlecornerradius: {tl: 10, tr: 10, br: 10, bl: 10}, titlebgcolor: [691684, 699876], titlebgalpha: 100, titlerotation: {matrixType: "box", x: 0, y: 0, w: undefined, h: undefined, r: 90 * 0.017453}, titlestyle: "WGGreyLeftBigBoldLabel", titlelabelxoffset: 0, titlelabelyoffset: 0, titledecorationstyle: "WGGreyHeaderDecoration"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyLadderDataGrid = {labelstyle: "WGWhiteCenterMediumLabel", liststyle: "WGLightGreyList", titlecornerradius: {tl: 0, tr: 0, br: 0, bl: 0}, titlebgcolor: [691684, 699876], titlebgalpha: 100, titlerotation: {matrixType: "box", x: 0, y: 0, w: undefined, h: undefined, r: 90 * 0.017453}, titlestyle: "WGGreyLeftBigBoldLabel", titlelabelxoffset: 0, titlelabelyoffset: 0, titledecorationstyle: "WGGreyHeaderDecoration"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGSelectableGreyDataGrid = {labelstyle: "WhiteCenterSmallLabel", liststyle: "WGLightGreyList", titlebgcolor: 9145994, titlebgalpha: 100, titlestyle: "WGGreyLeftBigBoldLabel", titlelabelxoffset: 3, titlelabelyoffset: 1};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGLightGreyPanelWindow = {cornerradius: {tl: 3, tr: 3, br: 3, bl: 3}, bordercolor: 16777215, borderalpha: 0, borderwidth: 4, innerbordercolor: 16777215, innerborderalpha: 0, innerborderwidth: 1, backgroundcolor: 16777215, backgroundalpha: 0, titlerotation: {matrixType: "box", x: 0, y: 0, w: undefined, h: undefined, r: 90 * 0.017453}, titleheight: 25, titlestyle: "WGWhiteCenterBigLabel"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGLightGreyPanelWindowTitleCenter = {cornerradius: {tl: 10, tr: 10, br: 10, bl: 10}, bordercolor: 11118759, borderalpha: 63, borderwidth: 3, innerbordercolor: 16777215, innerborderalpha: 100, innerborderwidth: 1, backgroundcolor: 16777215, backgroundalpha: 85, titlecolor: [15724526, 14211545], titlerotation: {matrixType: "box", x: 0, y: 0, w: undefined, h: undefined, r: 90 * 0.017453}, titleheight: 25, titlestyle: "WGGreyCenterBigBoldLabel", titledecorationstyle: "WGPanelWindowDecoration"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGLightGreyPanelWindowNoAlpha = {cornerradius: {tl: 4, tr: 4, br: 4, bl: 10}, bordercolor: 16645629, borderalpha: 100, borderwidth: 3, innerbordercolor: 16645629, innerborderalpha: 100, innerborderwidth: 1, backgroundcolor: 16380651, backgroundalpha: 100, titlecolor: [16766154, 8769760], titlerotation: {matrixType: "box", x: 0, y: 0, w: undefined, h: undefined, r: 90 * 0.017453}, titleheight: 25, titlestyle: "WGWhiteCenterMediumLabel", titledecorationstyle: "WGPanelWindowDecoration"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGPanelWindowDecoration = {topleft: "UI_WGWindowTopLeft", topright: "UI_WGWindowTopRight"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGLightGreyTinyPanelWindow = {cornerradius: {tl: 3, tr: 3, br: 3, bl: 3}, bordercolor: 11118759, borderalpha: 63, borderwidth: 1, innerbordercolor: 16777215, innerborderalpha: 100, innerborderwidth: 1, backgroundcolor: 16777215, backgroundalpha: 85, displaytitle: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyHeaderDecoration = {topleft: "WGGreyHeaderDecoration"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyFooterDecoration = {bottomleft: "WGGreyFooterDecoration"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGPopupDecoration = {topleft: "UI_WGPopupTopLeft", topright: "UI_WGPopupTopRight"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyPopupMenu = {bordercolor: 11118759, borderalpha: 63, backgroundcolor: 16777215, backgroundalpha: 100, foregroundcolor: [10066329, 4473924], foregroundalpha: 80, foregroundrotation: {matrixType: "box", x: 0, y: 0, w: undefined, h: undefined, r: 90 * 0.017453}, itembgcolor: 5592405, itembgalpha: 0, itemovercolor: 16777215, itemoveralpha: 20, itemstaticbgrotation: {matrixType: "box", x: 0, y: 0, w: undefined, h: undefined, r: 90 * 0.017453}, itemstaticbgcolor: [15724526, 14211545], labelstaticstyle: "WGGreyLeftMediumBolderLabel", labelenabledstyle: "WhiteLeftMediumLabel", labeldisabledstyle: "WGGreyLeftMediumBolderLabel", titledecorationstyle: "WGPopupDecoration"};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGChooseCharacterSprite = {notselectedcolor: 16777215, overcolor: 16763904, selectedcolor: 11534335, desabledtransform: {ra: 70, rb: 12, ga: 70, gb: 11, ba: 70, bb: 4}};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGGreyMap = {buttonstyle: "WGMapButton", bordercolor: 11118759, gridcolor: 11184810, bgcolor: 16777215};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueCenter19Label = {font: "Font1", embedfonts: true, align: "center", size: 19, color: 2261925, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueCenter15Label = {font: "Font1", embedfonts: true, align: "center", size: 15, color: 2261925, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueCenter10Label = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 2261925, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueCenter19BoldLabel = {font: "Font1", embedfonts: true, align: "center", size: 19, color: 2261925, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueCenter15BoldLabel = {font: "Font1", embedfonts: true, align: "center", size: 15, color: 2261925, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueCenter10BoldLabel = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 2261925, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueLeft19Label = {font: "Font1", embedfonts: true, align: "left", size: 19, color: 2261925, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueLeft15Label = {font: "Font1", embedfonts: true, align: "left", size: 15, color: 2261925, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueLeft10Label = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 2261925, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueLeft19BoldLabel = {font: "Font1", embedfonts: true, align: "left", size: 19, color: 2261925, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueLeft15BoldLabel = {font: "Font1", embedfonts: true, align: "left", size: 15, color: 2261925, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueLeft10BoldLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 2261925, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueRight19Label = {font: "Font1", embedfonts: true, align: "right", size: 19, color: 2261925, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueRight15Label = {font: "Font1", embedfonts: true, align: "right", size: 15, color: 2261925, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueRight10Label = {font: "Font1", embedfonts: true, align: "right", size: 10, color: 2261925, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueRight19BoldLabel = {font: "Font1", embedfonts: true, align: "right", size: 19, color: 2261925, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueRight15BoldLabel = {font: "Font1", embedfonts: true, align: "right", size: 15, color: 2261925, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBlueRight10BoldLabel = {font: "Font1", embedfonts: true, align: "right", size: 10, color: 2261925, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownCenter19Label = {font: "Font1", embedfonts: true, align: "center", size: 19, color: 4208951, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownCenter15Label = {font: "Font1", embedfonts: true, align: "center", size: 15, color: 4208951, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownCenter10Label = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 4208951, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownCenter19BoldLabel = {font: "Font1", embedfonts: true, align: "center", size: 19, color: 4208951, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownCenter15BoldLabel = {font: "Font1", embedfonts: true, align: "center", size: 15, color: 4208951, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownCenter10BoldLabel = {font: "Font1", embedfonts: true, align: "center", size: 10, color: 4208951, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownLeft19Label = {font: "Font1", embedfonts: true, align: "left", size: 19, color: 4208951, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownLeft15Label = {font: "Font1", embedfonts: true, align: "left", size: 15, color: 4208951, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownLeft10Label = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 4208951, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownLeft19BoldLabel = {font: "Font1", embedfonts: true, align: "left", size: 19, color: 4208951, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownLeft15BoldLabel = {font: "Font1", embedfonts: true, align: "left", size: 15, color: 4208951, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownLeft10BoldLabel = {font: "Font1", embedfonts: true, align: "left", size: 10, color: 4208951, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownRight19Label = {font: "Font1", embedfonts: true, align: "right", size: 19, color: 4208951, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownRight15Label = {font: "Font1", embedfonts: true, align: "right", size: 15, color: 4208951, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownRight10Label = {font: "Font1", embedfonts: true, align: "right", size: 10, color: 4208951, bold: false, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownRight19BoldLabel = {font: "Font1", embedfonts: true, align: "right", size: 19, color: 4208951, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownRight15BoldLabel = {font: "Font1", embedfonts: true, align: "right", size: 15, color: 4208951, bold: true, italic: false};
    (_global.dofus.graphics.gapi.styles.DofusStylePackage = function ()
    {
        super();
    }).WGBrownRight10BoldLabel = {font: "Font1", embedfonts: true, align: "right", size: 10, color: 4208951, bold: true, italic: false};
} // end if
#endinitclip

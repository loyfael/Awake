// Action script...

// [Initial MovieClip Action of sprite 20762]
#initclip 27
if (!dofus.Constants)
{
    if (!dofus)
    {
        _global.dofus = new Object();
    } // end if
    var      = (_global.dofus.Constants = function ()
    {
        super();
    }).prototype;
    (_global.dofus.Constants = function ()
    {
        super();
    }).__get__ZONE_COLOR = function ()
    {
        return (dofus.utils.Api.getInstance().lang.getConfigText("ZONE_COLOR"));
    };
    (_global.dofus.Constants = function ()
    {
        super();
    }).getTeamFileFromType = function (nType, nAlignment)
    {
        switch (nType)
        {
            case 0:
            {
                if (nAlignment == 1)
                {
                    var _loc4 = dofus.Constants.CHALLENGE_CLIP_FILE_ANGEL;
                }
                else if (nAlignment == 2)
                {
                    _loc4 = dofus.Constants.CHALLENGE_CLIP_FILE_DEMON;
                }
                else
                {
                    _loc4 = dofus.Constants.CHALLENGE_CLIP_FILE_NORMAL;
                } // end else if
                break;
            } 
            case 1:
            {
                if (nAlignment == 1)
                {
                    _loc4 = dofus.Constants.CHALLENGE_CLIP_FILE_ANGEL;
                }
                else if (nAlignment == 2)
                {
                    _loc4 = dofus.Constants.CHALLENGE_CLIP_FILE_DEMON;
                }
                else
                {
                    _loc4 = dofus.Constants.CHALLENGE_CLIP_FILE_MONSTER;
                } // end else if
                break;
            } 
            case 2:
            {
                _loc4 = dofus.Constants.CHALLENGE_CLIP_FILE_NORMAL;
                break;
            } 
            case 3:
            {
                _loc4 = dofus.Constants.CHALLENGE_CLIP_FILE_TAXCOLLECTOR;
                break;
            } 
        } // End of switch
        return (_loc4);
    };
    (_global.dofus.Constants = function ()
    {
        super();
    }).addProperty("ZONE_COLOR", (_global.dofus.Constants = function ()
    {
        super();
    }).__get__ZONE_COLOR, function ()
    {
    });
    ASSetPropFlags( , null, 1);
    (_global.dofus.Constants = function ()
    {
        super();
    }).DEBUG_AXLE_LOG = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_FORCE_TAIL = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_DISABLE_SPELL_OUT_OF_TURN = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_DISABLE_ITEM_OUT_OF_TURN = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_DISABLE_EXTRA_BUTTONS = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_DISABLE_ITEMS_WINDOWS_IN_FIGHT = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_DISABLE_SPELLS_WINDOWS_IN_FIGHT = false;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_DISABLE_HELPER = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_DISABLE_COMPASS = false;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_DISABLE_SUBCRIBE_SYSTEM = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_ROLLOVERSPRITE_SHOWS_LP_IN_FIGHT = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_LOADING_ONLY = false;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_MAX_CHARACTERS_PER_ACCOUNT = 3;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_DISABLE_TEAM_SPRITE_ON_MAP = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_GFXID_BY_AREA = [10, 1, 11, 1, 12, 1, 13, 1, 14, 1, 15, 1, 16, 1, 17, 1, 18, 2, 19, 1, 20, 1, 21, 1, 22, 2, 23, 4, 24, 2, 25, 2, 26, 2, 27, 3, 28, 4, 29, 4, 30, 3, 31, 4, 32, 5];
    (_global.dofus.Constants = function ()
    {
        super();
    }).WG_JESERSARIEN = [true, true, true];
    (_global.dofus.Constants = function ()
    {
        super();
    }).DEBUG = false;
    (_global.dofus.Constants = function ()
    {
        super();
    }).DEBUG_DATAS = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).DEBUG_ENCRYPTION = false;
    (_global.dofus.Constants = function ()
    {
        super();
    }).TEST = false;
    (_global.dofus.Constants = function ()
    {
        super();
    }).USE_JS_LOG = false;
    (_global.dofus.Constants = function ()
    {
        super();
    }).USING_PACKED_SOUNDS = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).USING_UNPACKED_OBJECTS = true;
    (_global.dofus.Constants = function ()
    {
        super();
    }).SAVING_THE_WORLD = false;
    (_global.dofus.Constants = function ()
    {
        super();
    }).VERSION = 1;
    (_global.dofus.Constants = function ()
    {
        super();
    }).SUBVERSION = 12;
    (_global.dofus.Constants = function ()
    {
        super();
    }).SUBSUBVERSION = 0;
    (_global.dofus.Constants = function ()
    {
        super();
    }).BETAVERSION = 0;
    (_global.dofus.Constants = function ()
    {
        super();
    }).ALPHA = false;
    (_global.dofus.Constants = function ()
    {
        super();
    }).BUILD_NUMBER = 1;
    (_global.dofus.Constants = function ()
    {
        super();
    }).VERSIONDATE = "June 03 16:12:00 GMT+0100 2010";
    (_global.dofus.Constants = function ()
    {
        super();
    }).LANG_SHAREDOBJECT_NAME = "ANKLANGSO";
    (_global.dofus.Constants = function ()
    {
        super();
    }).XTRA_SHAREDOBJECT_NAME = "ANKXTRASO";
    (_global.dofus.Constants = function ()
    {
        super();
    }).OPTIONS_SHAREDOBJECT_NAME = "ANKOPTIONSSO";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GLOBAL_SO_LANG_NAME = "SHARED_OBJECT_LANG";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GLOBAL_SO_XTRA_NAME = "SHARED_OBJECT_XTRA";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GLOBAL_SO_OPTIONS_NAME = "SHARED_OBJECT_OPTIONS";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GLOBAL_SO_SHORTCUTS_NAME = "SHARED_OBJECT_SHORTCUTS";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GLOBAL_SO_OCCURENCES_NAME = "SHARED_OBJECT_OCCURENCES";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GLOBAL_SO_TIPS_NAME = "SHARED_OBJECT_TIPS";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GLOBAL_SO_IDENTITY_NAME = "SHARED_OBJECT_IDENTITY";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GLOBAL_SO_DISPLAYS_NAME = "SHARED_OBJECT_DISPLAYS";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GLOBAL_SO_CACHEDATE_NAME = "SHARED_OBJECT_CACHEDATE";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CLIPS_PATH = "clips/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).AUDIO_PATH = "audio/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).MODULE_PATH = "modules/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).STYLES_PATH = "styles/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GFX_ROOT_PATH = dofus.Constants.CLIPS_PATH + "gfx/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GFX_OBJECTS_PATH = dofus.Constants.GFX_ROOT_PATH + "objects/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GFX_GROUNDS_PATH = dofus.Constants.GFX_ROOT_PATH + "grounds/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CLIPS_PERSOS_PATH = dofus.Constants.CLIPS_PATH + "sprites/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ACCESSORIES_PATH = dofus.Constants.CLIPS_PERSOS_PATH + "accessories/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CHEVAUCHOR_PATH = dofus.Constants.CLIPS_PERSOS_PATH + "chevauchor/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).SPELLS_PATH = dofus.Constants.CLIPS_PATH + "spells/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).SPELLS_ICONS_PATH = dofus.Constants.SPELLS_PATH + "icons/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ITEMS_PATH = dofus.Constants.CLIPS_PATH + "items/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).JOBS_ICONS_PATH = dofus.Constants.CLIPS_PATH + "jobs/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ARTWORKS_PATH = dofus.Constants.CLIPS_PATH + "artworks/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ILLU_PATH = dofus.Constants.ARTWORKS_PATH + "illu/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CARDS_PATH = dofus.Constants.CLIPS_PATH + "cards/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).FIGHT_CHALLENGE_PATH = dofus.Constants.CLIPS_PATH + "challenges/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ALIGNMENTS_PATH = dofus.Constants.CLIPS_PATH + "alignments/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ALIGNMENTS_MINI_PATH = dofus.Constants.ALIGNMENTS_PATH + "mini/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ORDERS_PATH = dofus.Constants.ALIGNMENTS_PATH + "orders/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).FEATS_PATH = dofus.Constants.ALIGNMENTS_PATH + "feats/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GUILDS_MINI_PATH = dofus.Constants.ARTWORKS_PATH + "mini/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GUILDS_FACES_PATH = dofus.Constants.ARTWORKS_PATH + "faces/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GUILDS_BIG_PATH = dofus.Constants.ARTWORKS_PATH + "big/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ARTWORKS_BIG_PATH = dofus.Constants.ARTWORKS_PATH + "big/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ARTWORKS_ULTRA_PATH = dofus.Constants.ARTWORKS_PATH + "ultra/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GUILDS_SYMBOL_PATH = dofus.Constants.ARTWORKS_PATH + "symbols/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).SERVER_SYMBOL_PATH = dofus.Constants.ARTWORKS_PATH + "servers/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).BREEDS_SYMBOL_PATH = dofus.Constants.ARTWORKS_PATH + "breeds/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ARTWORKS_VERSUS_PATH = dofus.Constants.ARTWORKS_PATH + "versus/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ARTWORKS_CUSTOM_PATH = dofus.Constants.ARTWORKS_PATH + "customIntro/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ARTWORKS_SPEAKING_SIGN_PATH = dofus.Constants.ARTWORKS_PATH + "speakingsign/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).BREEDS_SLIDER_PATH = dofus.Constants.BREEDS_SYMBOL_PATH + "slide/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).BREEDS_BACK_PATH = dofus.Constants.BREEDS_SYMBOL_PATH + "back/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CINEMATICS_PATH = dofus.Constants.CLIPS_PATH + "cinematics/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).SMILEYS_ICONS_PATH = dofus.Constants.CLIPS_PATH + "smileys/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).DUNGEON_STATE_ICONS_PATH = dofus.Constants.CLIPS_PATH + "dungeons/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).EMOTES_ICONS_PATH = dofus.Constants.CLIPS_PATH + "emotes/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).AURA_PATH = dofus.Constants.CLIPS_PATH + "auras/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).EMBLEMS_BACK_PATH = dofus.Constants.CLIPS_PATH + "emblems/back/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).EMBLEMS_UP_PATH = dofus.Constants.CLIPS_PATH + "emblems/up/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).LOCAL_MAPS_PATH = dofus.Constants.CLIPS_PATH + "maps/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).EXTRA_PATH = dofus.Constants.CLIPS_PATH + "extra/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GIFTS_PATH = dofus.Constants.CLIPS_PATH + "gifts/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).XML_SPRITE_LIST = dofus.Constants.CLIPS_PERSOS_PATH + "sprites.xml";
    (_global.dofus.Constants = function ()
    {
        super();
    }).SOUND_EFFECTS_PACKAGE = dofus.Constants.AUDIO_PATH + "effects_common.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).SOUND_EFFECTS_FR_PACKAGE = dofus.Constants.AUDIO_PATH + "effects_fr.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).SOUND_EFFECTS_INTER_PACKAGE = dofus.Constants.AUDIO_PATH + "effects_inter.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).SOUND_MUSICS_PACKAGE = dofus.Constants.AUDIO_PATH + "musics.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).XML_ADMIN_MENU_PATH = "menuadmin.xml";
    (_global.dofus.Constants = function ()
    {
        super();
    }).MODULE_CORE = "core.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).MODULE_SOUNDS = "soma.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).MODULE_CORE_FILE = dofus.Constants.MODULE_PATH + dofus.Constants.MODULE_CORE;
    (_global.dofus.Constants = function ()
    {
        super();
    }).MODULE_SOUNDS_FILE = dofus.Constants.MODULE_PATH + dofus.Constants.MODULE_SOUNDS;
    (_global.dofus.Constants = function ()
    {
        super();
    }).MODULES_LIST = [[dofus.Constants.MODULE_CORE, dofus.Constants.MODULE_CORE_FILE, 1, false, "CORE"]];
    (_global.dofus.Constants = function ()
    {
        super();
    }).CONFIG_XML_FILE = "config.xml";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GROUND_FILE = dofus.Constants.CLIPS_PATH + "ground.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).OBJECTS_FILE = dofus.Constants.CLIPS_PATH + "objects.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).OBJECTS_LIGHT_FILE = dofus.Constants.CLIPS_PATH + "cells.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CIRCLE_FILE = dofus.Constants.CLIPS_PATH + "circle.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).EFFECTSICON_FILE = dofus.Constants.CLIPS_PATH + "effectsicons.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).SMILEY_FILE = dofus.Constants.CLIPS_PATH + "smileys.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).DEMON_ANGEL_FILE = dofus.Constants.CLIPS_PATH + "demonangel.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).FALLEN_DEMON_ANGEL_FILE = dofus.Constants.CLIPS_PATH + "fallenDemonAngel.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).DEFAULT_CC_ICON_FILE = dofus.Constants.CLIPS_PATH + "defaultcc.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).READY_FILE = dofus.Constants.CLIPS_PATH + "ready.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).BOOK_FILE = dofus.Constants.CLIPS_PATH + "book.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).FORBIDDEN_FILE = dofus.Constants.CLIPS_PATH + "forbidden.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).FORBIDDEN_CELL_FILE = dofus.Constants.CLIPS_PATH + "forbiddenCell.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).DEFAULT_GIFT_FILE = dofus.Constants.CLIPS_PATH + "gift.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).MAP_HINTS_FILE = dofus.Constants.LOCAL_MAPS_PATH + "hints.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).MAP_DUNGEON_FILE = dofus.Constants.LOCAL_MAPS_PATH + "dungeon.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).MAP_DUNGEON_HINTS_FILE = dofus.Constants.LOCAL_MAPS_PATH + "dungeonHints.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CRITICAL_HIT_XTRA_FILE = dofus.Constants.EXTRA_PATH + "5.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CRITICAL_HIT_DURATION = 5000;
    (_global.dofus.Constants = function ()
    {
        super();
    }).AUDIO_MUSICS_PATH = dofus.Constants.AUDIO_PATH + "musics/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).AUDIO_EFFECTS_PATH = dofus.Constants.AUDIO_PATH + "effects/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).AUDIO_ENVIRONMENT_PATH = dofus.Constants.AUDIO_PATH + "environments/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).AUDIO_BACKGROUND_PATH = dofus.Constants.AUDIO_ENVIRONMENT_PATH + "backgrounds/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).AUDIO_NOISE_PATH = dofus.Constants.AUDIO_ENVIRONMENT_PATH + "noises/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CHALLENGE_CLIP_FILE_NORMAL = dofus.Constants.CLIPS_PERSOS_PATH + "0.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CHALLENGE_CLIP_FILE_ANGEL = dofus.Constants.CLIPS_PERSOS_PATH + "1.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CHALLENGE_CLIP_FILE_DEMON = dofus.Constants.CLIPS_PERSOS_PATH + "2.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CHALLENGE_CLIP_FILE_MONSTER = dofus.Constants.CLIPS_PERSOS_PATH + "3.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CHALLENGE_CLIP_FILE_TAXCOLLECTOR = dofus.Constants.CLIPS_PERSOS_PATH + "4.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CHALLENGE_CLIP_FILE_TAXCOLLECTOR_ATTACKERS = dofus.Constants.CLIPS_PERSOS_PATH + "5.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).LANG_LOCAL_FILE_LIST = "lang/versions.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).HTTP_LANG_PATH = "lang/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).HTTP_LANG_SWF_PATH = dofus.Constants.HTTP_LANG_PATH + "swf/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).HTTP_CHECK_XTRA_FILE_NAME = "checkxtra.php";
    (_global.dofus.Constants = function ()
    {
        super();
    }).HTTP_XTRA_FILE_NAME = "getxtra.php";
    (_global.dofus.Constants = function ()
    {
        super();
    }).HTTP_LANG_FILE = dofus.Constants.HTTP_LANG_PATH + "getlang.php";
    (_global.dofus.Constants = function ()
    {
        super();
    }).HTTP_LANG_FILE_SWF = dofus.Constants.HTTP_LANG_SWF_PATH + "lang_#1.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).HTTP_CHECK_XTRA_FILE = dofus.Constants.HTTP_LANG_PATH + dofus.Constants.HTTP_CHECK_XTRA_FILE_NAME;
    (_global.dofus.Constants = function ()
    {
        super();
    }).HTTP_XTRA_FILE = dofus.Constants.HTTP_LANG_PATH + dofus.Constants.HTTP_XTRA_FILE_NAME;
    (_global.dofus.Constants = function ()
    {
        super();
    }).HTTP_XTRA_FILE_SWF = dofus.Constants.HTTP_LANG_SWF_PATH + "xtra_#1.swf";
    (_global.dofus.Constants = function ()
    {
        super();
    }).HTTP_ALERT_PATH = "login/xml/";
    (_global.dofus.Constants = function ()
    {
        super();
    }).HTTP_ALERT_FILE = "alert.xml";
    (_global.dofus.Constants = function ()
    {
        super();
    }).AVERAGE_FRAMES_PER_SECOND = 15;
    (_global.dofus.Constants = function ()
    {
        super();
    }).CLICK_MIN_DELAY = 800;
    (_global.dofus.Constants = function ()
    {
        super();
    }).SEQUENCER_TIMEOUT = 10000;
    (_global.dofus.Constants = function ()
    {
        super();
    }).MAX_DATA_LENGTH = 1000;
    (_global.dofus.Constants = function ()
    {
        super();
    }).MAX_MESSAGE_LENGTH = 200;
    (_global.dofus.Constants = function ()
    {
        super();
    }).MAX_MESSAGE_LENGTH_MARGIN = 50;
    (_global.dofus.Constants = function ()
    {
        super();
    }).OCCURENCE_REFRESH = 9000;
    (_global.dofus.Constants = function ()
    {
        super();
    }).MAX_OCCURENCE_DELAY = 10000;
    (_global.dofus.Constants = function ()
    {
        super();
    }).GUILD_ORDER = [6, 7, 8, 9, 1, 11, 10, 2, 3, 4, 5, 12];
    (_global.dofus.Constants = function ()
    {
        super();
    }).PAYING_GUILD = [false, false, false, false, false, false, false, false, false, false, false, true];
    (_global.dofus.Constants = function ()
    {
        super();
    }).EPISODIC_GUILD = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 18];
    (_global.dofus.Constants = function ()
    {
        super();
    }).BREED_SKIN_INDEXES = [[0, 3, 0, 3, 0, 3, 3, 0, 0, 2, 3, 0], [0, 3, 0, 3, 0, 3, 3, 0, 0, 3, 3, 0]];
    (_global.dofus.Constants = function ()
    {
        super();
    }).BREED_SKIN_BASE_COLOR = [[0, 15648155, 0, 15854274, 0, 16446963, 14129488, 0, 0, 9656642, 16634268, 0], [0, 15516310, 0, 16701093, 0, 16640204, 15648155, 0, 0, 10247750, 16764573, 0]];
    (_global.dofus.Constants = function ()
    {
        super();
    }).SMILEY_DELAY = 3000;
    (_global.dofus.Constants = function ()
    {
        super();
    }).EMOTE_CHAR = "*";
    (_global.dofus.Constants = function ()
    {
        super();
    }).INFO_CHAT_COLOR = "6faf41";
    (_global.dofus.Constants = function ()
    {
        super();
    }).MSG_CHAT_COLOR = "78664e";
    (_global.dofus.Constants = function ()
    {
        super();
    }).EMOTE_CHAT_COLOR = "222222";
    (_global.dofus.Constants = function ()
    {
        super();
    }).THINK_CHAT_COLOR = "e76f04";
    (_global.dofus.Constants = function ()
    {
        super();
    }).MSGCHUCHOTE_CHAT_COLOR = "16a7ba";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GROUP_CHAT_COLOR = "16a7ba";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ERROR_CHAT_COLOR = "d4329f";
    (_global.dofus.Constants = function ()
    {
        super();
    }).GUILD_CHAT_COLOR = "b347fc";
    (_global.dofus.Constants = function ()
    {
        super();
    }).PVP_CHAT_COLOR = "DD7700";
    (_global.dofus.Constants = function ()
    {
        super();
    }).RECRUITMENT_CHAT_COLOR = "737373";
    (_global.dofus.Constants = function ()
    {
        super();
    }).TRADE_CHAT_COLOR = "e76f04";
    (_global.dofus.Constants = function ()
    {
        super();
    }).MEETIC_CHAT_COLOR = "0000CC";
    (_global.dofus.Constants = function ()
    {
        super();
    }).ADMIN_CHAT_COLOR = "FF00FF";
    (_global.dofus.Constants = function ()
    {
        super();
    }).CELL_PATH_COLOR = dofus.Constants.WG ? (1023497) : (16737792);
    (_global.dofus.Constants = function ()
    {
        super();
    }).CELL_PATH_OVER_COLOR = dofus.Constants.WG ? (1023497) : (16737792);
    (_global.dofus.Constants = function ()
    {
        super();
    }).CELL_PATH_USED_COLOR = 2385558;
    (_global.dofus.Constants = function ()
    {
        super();
    }).CELL_PATH_SELECT_COLOR = 2385558;
    (_global.dofus.Constants = function ()
    {
        super();
    }).CELL_SPELL_EFFECT_COLOR = dofus.Constants.WG ? (1023497) : (16737792);
    (_global.dofus.Constants = function ()
    {
        super();
    }).CELL_SPELL_RANGE_COLOR = 2385558;
    (_global.dofus.Constants = function ()
    {
        super();
    }).CELL_MOVE_RANGE_COLOR = 39168;
    (_global.dofus.Constants = function ()
    {
        super();
    }).LIFE_POINT_COLOR = 833730;
    (_global.dofus.Constants = function ()
    {
        super();
    }).ACTION_POINT_COLOR = 255;
    (_global.dofus.Constants = function ()
    {
        super();
    }).MAP_CURRENT_POSITION = 13369344;
    (_global.dofus.Constants = function ()
    {
        super();
    }).MAP_WAYPOINT_POSITION = 255;
    (_global.dofus.Constants = function ()
    {
        super();
    }).OVERHEAD_TEXT_CHARACTER = 16777215;
    (_global.dofus.Constants = function ()
    {
        super();
    }).OVERHEAD_TEXT_OTHER = 16777113;
    (_global.dofus.Constants = function ()
    {
        super();
    }).OVERHEAD_TEXT_TITLE = 16777215;
    (_global.dofus.Constants = function ()
    {
        super();
    }).FLAG_MAP_SEEK = 13434624;
    (_global.dofus.Constants = function ()
    {
        super();
    }).FLAG_MAP_GROUP = 26265;
    (_global.dofus.Constants = function ()
    {
        super();
    }).FLAG_MAP_PHOENIX = 16711680;
    (_global.dofus.Constants = function ()
    {
        super();
    }).FLAG_MAP_OTHERS = 16711680;
    (_global.dofus.Constants = function ()
    {
        super();
    }).TEAMS_COLOR = dofus.Constants.WG ? ([255, 16711680]) : ([16711680, 255]);
    (_global.dofus.Constants = function ()
    {
        super();
    }).CREATE_CHARACTER_COLOR = [[[16247229, 10051622, 10429969, 10603575, 1278583, 2827546], [16237423, 15581321, 16047035, 14395967, 13142590, 10247713], [16775644, 16750848, 12325424, 8234507, 1066820, 4734764], [15129804, 11231530, 12980497, 7293811, 14395712, 1917258], [16772016, 10903578, 7343908, 1723702, 3108459, 2498841]], [[16247229, 10051622, 10429969, 10603575, 1278583, 2827546], [16237423, 15581321, 16047035, 14395967, 13142590, 10247713], [16775644, 16761600, 16737894, 8234507, 684139, 4734764], [15129804, 11231530, 16090769, 7293811, 14395712, 1917258], [16772016, 10903578, 7343908, 1723702, 8409982, 2498841]]];
    (_global.dofus.Constants = function ()
    {
        super();
    }).AREA_ALIGNMENT_COLOR = [65280, 65535, 16711680];
    (_global.dofus.Constants = function ()
    {
        super();
    }).AREA_NO_ALIGNMENT_COLOR = 16777113;
    (_global.dofus.Constants = function ()
    {
        super();
    }).NPC_ALIGNMENT_COLOR = [6750105, 65535, 16737894];
    (_global.dofus.Constants = function ()
    {
        super();
    }).NIGHT_COLOR = {ra: 38, rb: 0, ga: 38, gb: 0, ba: 60, bb: 0};
    (_global.dofus.Constants = function ()
    {
        super();
    }).DIFFICULTY_COLOR_0 = 65280;
    (_global.dofus.Constants = function ()
    {
        super();
    }).DIFFICULTY_COLOR_1 = 16777215;
    (_global.dofus.Constants = function ()
    {
        super();
    }).DIFFICULTY_COLOR_2 = 16711680;
    (_global.dofus.Constants = function ()
    {
        super();
    }).NOVICE_LEVEL = 5;
    (_global.dofus.Constants = function ()
    {
        super();
    }).PLAYER_LEVEL_FOR_BOOST_SPELL_LEVEL_6 = 100;
    (_global.dofus.Constants = function ()
    {
        super();
    }).SPELL_BOOST_MAX_LEVEL = 6;
    (_global.dofus.Constants = function ()
    {
        super();
    }).SPELL_BOOST_BONUS = [0, 1, 2, 3, 4, 5];
    (_global.dofus.Constants = function ()
    {
        super();
    }).MAX_PLAYERS_IN_TEAM = 8;
    (_global.dofus.Constants = function ()
    {
        super();
    }).MAX_PLAYERS_IN_CHALLENGE = 16;
    (_global.dofus.Constants = function ()
    {
        super();
    }).MEMBERS_COUNT_IN_PARTY = 8;
    (_global.dofus.Constants = function ()
    {
        super();
    }).UPDATER_PORT = 4583;
    (_global.dofus.Constants = function ()
    {
        super();
    }).UPDATER_CONNECTION_TRY_DELAY = 500;
    (_global.dofus.Constants = function ()
    {
        super();
    }).MAX_UPDATER_CONNECTION_TRY = 5;
    (_global.dofus.Constants = function ()
    {
        super();
    }).EMBLEM_BACKS_COUNT = 5;
    (_global.dofus.Constants = function ()
    {
        super();
    }).EMBLEM_UPS_COUNT = 30;
    (_global.dofus.Constants = function ()
    {
        super();
    }).EMBLEM_BACKS_COUNT_LEVEL_2 = 6;
    (_global.dofus.Constants = function ()
    {
        super();
    }).EMBLEM_UPS_COUNT_LEVEL_2 = 44;
    (_global.dofus.Constants = function ()
    {
        super();
    }).EMBLEM_BACKS_COUNT_LEVEL_3 = 6;
    (_global.dofus.Constants = function ()
    {
        super();
    }).EMBLEM_UPS_COUNT_LEVEL_3 = 30;
    (_global.dofus.Constants = function ()
    {
        super();
    }).CHAT_INSERT_ITEM_KEY = Key.SHIFT;
} // end if
#endinitclip

// Action script...

// [Initial MovieClip Action of sprite 20612]
#initclip 133
if (!ank.battlefield.Constants)
{
    if (!ank)
    {
        _global.ank = new Object();
    } // end if
    if (!ank.battlefield)
    {
        _global.ank.battlefield = new Object();
    } // end if
    var _loc1 = (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).prototype;
    ASSetPropFlags(_loc1, null, 1);
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).USE_STREAMING_FILES = false;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).STREAMING_OBJECTS_DIR = undefined;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).STREAMING_GROUNDS_DIR = undefined;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).STREAMING_METHOD = "";
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).DISPLAY_WIDTH = 742;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).DISPLAY_HEIGHT = 432;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).CELL_WIDTH = 53;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).CELL_HEIGHT = 27;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).CELL_HALF_WIDTH = 26.500000;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).CELL_HALF_HEIGHT = 13.500000;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).LEVEL_HEIGHT = 20;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).HALF_LEVEL_HEIGHT = 10;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).DEFAULT_MAP_WIDTH = 15;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).DEFAULT_MAP_HEIGHT = 17;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).MAX_DEPTH_IN_MAP = 100000;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).CELL_COORD = [[], [[-26.500000, 0], [0, -13.500000], [26.500000, 0], [0, 13.500000]], [[-26.500000, -20], [0, -13.500000], [26.500000, 0], [0, 13.500000]], [[-26.500000, 0], [0, -33.500000], [26.500000, 0], [0, 13.500000]], [[-26.500000, -20], [0, -33.500000], [26.500000, 0], [0, 13.500000]], [[-26.500000, 0], [0, -13.500000], [26.500000, -20], [0, 13.500000]], [[-26.500000, -20], [0, -13.500000], [26.500000, -20], [0, 13.500000]], [[-26.500000, 0], [0, -33.500000], [26.500000, -20], [0, 13.500000]], [[-26.500000, -20], [0, -33.500000], [26.500000, -20], [0, 13.500000]], [[-26.500000, 0], [0, -13.500000], [26.500000, 0], [0, -6.500000]], [[-26.500000, -20], [0, -13.500000], [26.500000, 0], [0, -6.500000]], [[-26.500000, 0], [0, -33.500000], [26.500000, 0], [0, -6.500000]], [[-26.500000, -20], [0, -33.500000], [26.500000, 0], [0, -6.500000]], [[-26.500000, 0], [0, -13.500000], [26.500000, -20], [0, -6.500000]], [[-26.500000, -20], [0, -13.500000], [26.500000, -20], [0, -6.500000]], [[-26.500000, 0], [0, -33.500000], [26.500000, -20], [0, -6.500000]]];
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).EXTERNAL_OBJECT2_SIZE = 20;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).DEFAULT_CELL_CLIP_ID = 1;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).SELECTION_CELL_CLIP_ID = 2;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).FONT1_NAME = "Font1";
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).FONT2_NAME = "Font2";
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).FIRST_SPRITE_DEPTH_ON_CELL = 30;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).MAX_SPRITES_ON_CELL = 100;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).GRID_COLOR = 16777215;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).GRID_ALPHA = 30;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).GHOSTVIEW_SPRITE_ALPHA = 60;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).BUBBLE_BGCOLOR = 16777166;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).BUBBLE_BORDERCOLOR = 4934475;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).BUBBLE_TXTFORMAT = new TextFormat(ank.battlefield.Constants.FONT1_NAME, 10, 0, false, false, false);
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).BUBBLE_REMOVE_TIMER = 4000;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).BUBBLE_REMOVE_CHAR_TIMER = 50;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).BUBBLE_MARGIN = 4;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).BUBBLE_PIC_WIDTH = 10;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).BUBBLE_PIC_HEIGHT = 10;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).BUBBLE_Y_OFFSET = 50;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).DEFAULT_SPRITE_HEIGHT = 50;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).SPRITE_POINTS_OFFSET = 46;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).SPRITE_POINTS_TEXTFORMAT = new TextFormat(ank.battlefield.Constants.FONT2_NAME, 18);
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).VISUAL_EFFECT_MAX_TIMER = 20000;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).INTERACTION_NONE = 0;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).INTERACTION_CELL_NONE = 1;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).INTERACTION_CELL_RELEASE = 2;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).INTERACTION_CELL_OVER_OUT = 3;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).INTERACTION_CELL_RELEASE_OVER_OUT = 4;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).INTERACTION_OBJECT_NONE = 5;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).INTERACTION_OBJECT_RELEASE = 6;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).INTERACTION_OBJECT_OVER_OUT = 7;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).INTERACTION_OBJECT_RELEASE_OVER_OUT = 8;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).INTERACTION_SPRITE_NONE = 9;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).INTERACTION_SPRITE_RELEASE = 10;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).INTERACTION_SPRITE_OVER_OUT = 11;
    (_global.ank.battlefield.Constants = function ()
    {
        super();
    }).INTERACTION_SPRITE_RELEASE_OVER_OUT = 12;
} // end if
#endinitclip

global.spawnroom = -1;
global.day = 0;
global.day_time = 0;
global.follower = 0;
global.message_scale = 0.50;
global.message_color = c_white;
//время до повторной активации диалога
global.message_delay = 0;
//время до включения диалога
global.message_delay_start = 0;
//текст который надо отображать
global.message[0] = 0;
//персонаж которого нужно отображать
global.portrait = 0;
//разделение игры на стадии
global.story_stage = 0;
//название диалога который надо отображать
global.message_name = 0;
global.picked_boy = false;
global.picked_girl = false;
//разделение катсцены на стадии
global.cutscene = 0;
//время перед тем как активировать меню снова
global.ingamemenu = false;
global.walkspeed = 2;
global.view_width = 320;
global.view_height = 240;
display_set_gui_size(global.view_width, global.view_height);
#region default globals
global.key_up = vk_up;
global.key_down = vk_down;
global.key_right = vk_right;
global.key_left = vk_left
global.key_use = vk_enter;
global.key_menu = ord("C");
global.key_cancel = ord("X");
global.key_confirm = ord("Z");
global.language = 0;
global.selectedlanguage = "lang\\en.csv";
#endregion
load_globals();
#region language settings
global.update_langmap = false;
global.dialoguemap = ds_map_create()
var grid = load_csv(global.selectedlanguage)
var height = ds_grid_height(grid) - 1;

var i = 1; repeat(height)
{
	var str = grid[# 1, i];
	ds_map_add(global.dialoguemap, real(grid[# 0, i]), str);
	i++
}
talkmap = global.dialoguemap;
global.talkgrid = grid;
#endregion

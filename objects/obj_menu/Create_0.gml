draw_set_font(f_Mondealy);
enum menu_page
{
	main,
	settings,
	controls,
}

enum menu_type
{
	new_game,
	script_runner,
	page_transfer,
	shift,
	toggle,
	input
}
if room == r_menu
{
	ds_menu_main = create_menu_page(
	[ds_map_find_value(global.dialoguemap, 1),	menu_type.new_game],
	[ds_map_find_value(global.dialoguemap, 2),	menu_type.script_runner,	game_load_page],
	["PROGRESS",								menu_type.script_runner,	goto_progress],
	[ds_map_find_value(global.dialoguemap, 3),	menu_type.page_transfer,	menu_page.settings],
	[ds_map_find_value(global.dialoguemap, 4),	menu_type.script_runner,	close_game]);

	ds_menu_settings = create_menu_page(
	[ds_map_find_value(global.dialoguemap, 5),	menu_type.shift,		 set_fullscreen, 0, [ds_map_find_value(global.dialoguemap, 7), ds_map_find_value(global.dialoguemap, 6)]],
	[ds_map_find_value(global.dialoguemap, 8),	menu_type.shift,		 change_language, global.language, [ds_map_find_value(global.dialoguemap, 9), ds_map_find_value(global.dialoguemap, 10)]],
	[ds_map_find_value(global.dialoguemap, 11),	menu_type.page_transfer, menu_page.controls],
	[ds_map_find_value(global.dialoguemap, 12),	menu_type.page_transfer, menu_page.main]);

	ds_menu_controls = create_menu_page(
	[ds_map_find_value(global.dialoguemap, 13),	menu_type.input, "key_up", global.key_up],
	[ds_map_find_value(global.dialoguemap, 14),	menu_type.input, "key_down", global.key_down],
	[ds_map_find_value(global.dialoguemap, 15),	menu_type.input, "key_left", global.key_left],
	[ds_map_find_value(global.dialoguemap, 16),	menu_type.input, "key_right", global.key_right],
	[ds_map_find_value(global.dialoguemap, 18),	menu_type.input, "key_menu", global.key_menu],
	[ds_map_find_value(global.dialoguemap, 19),	menu_type.input, "key_cancel", global.key_cancel],
	[ds_map_find_value(global.dialoguemap, 20),	menu_type.input, "key_confirm", global.key_confirm],
	[ds_map_find_value(global.dialoguemap, 12),	menu_type.page_transfer, menu_page.settings]);
}
if room != r_menu
{
	ds_menu_main = create_menu_page(
	[ds_map_find_value(global.dialoguemap, 3),	menu_type.page_transfer,	menu_page.settings],
	[ds_map_find_value(global.dialoguemap, 21),	menu_type.script_runner,	close_game]);

	ds_menu_settings = create_menu_page(
	[ds_map_find_value(global.dialoguemap, 5),	menu_type.shift,		 set_fullscreen, 0, [ds_map_find_value(global.dialoguemap, 7), ds_map_find_value(global.dialoguemap, 6)]],
	[ds_map_find_value(global.dialoguemap, 11),	menu_type.page_transfer, menu_page.controls],
	[ds_map_find_value(global.dialoguemap, 12),	menu_type.page_transfer, menu_page.main]);

	ds_menu_controls = create_menu_page(
	[ds_map_find_value(global.dialoguemap, 13),	menu_type.input, "key_up", global.key_up],
	[ds_map_find_value(global.dialoguemap, 14),	menu_type.input, "key_down", global.key_down],
	[ds_map_find_value(global.dialoguemap, 15),	menu_type.input, "key_left", global.key_left],
	[ds_map_find_value(global.dialoguemap, 16),	menu_type.input, "key_right", global.key_right],
	[ds_map_find_value(global.dialoguemap, 18),	menu_type.input, "key_menu", global.key_menu],
	[ds_map_find_value(global.dialoguemap, 19),	menu_type.input, "key_cancel", global.key_cancel],
	[ds_map_find_value(global.dialoguemap, 20),	menu_type.input, "key_confirm", global.key_confirm],
	[ds_map_find_value(global.dialoguemap, 12),	menu_type.page_transfer, menu_page.settings]);
}
	

page = 0;
menu_pages = [ds_menu_main, ds_menu_settings, ds_menu_controls]

var i = 0, arr_length = array_length(menu_pages);
repeat(arr_length)
{
	menu_option[i] = 0;
	i++
}
inputting = false;









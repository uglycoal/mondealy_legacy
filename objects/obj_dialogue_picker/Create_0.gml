draw_set_font(f_Mondealy);
enum picker
{
	script_runner
}

game_start_choose_character = create_menu_page(
[ds_map_find_value(global.dialoguemap, 26),	picker.script_runner, picked_start_boy],
[ds_map_find_value(global.dialoguemap, 27),	picker.script_runner, picked_start_girl]);

page = 0;
picker_index = 0;
picker_text = [game_start_choose_character]

var i = 0, arr_length = array_length(picker_text);
repeat(arr_length)
{
	picker_option[i] = 0;
	i++
}

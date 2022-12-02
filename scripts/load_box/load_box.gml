///@arg load_color
///@arg back_color
function load_box(argument0, argument1) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	var line_start_x = global.view_width - 265;
	var line_start_y = global.view_height - 160;
	var line_end_x = 263;
	var line_end_y = global.view_height - 80;
	var	text_buffer = 10;
	var rc = c_black;
	if scr_return_char_boy_var() == true
	{
		var char = "Story of a boy..."
	}
	else
	{
		var char = "Story of a girl..."
	}
	var day = string(global.day);
	var stage = return_stage();
	var roomname = return_room()
	//создать темный фон и надпись о сохранении
	draw_set_alpha(0.7)
	draw_rectangle_color(line_start_x + 1, line_start_y + 1, line_end_x, line_end_y, rc, rc, rc, rc, false)
	draw_text_transformed(global.view_width/2, 234, ds_map_find_value(global.dialoguemap, 36), 0.2, 0.2, 0)
	draw_set_alpha(1)
	//создать линии вокруг фона
	draw_line_width_color(line_start_x, line_start_y, line_end_x, line_start_y, 1, argument0, argument0)
	draw_line_width_color(line_start_x, line_end_y, line_end_x, line_end_y, 1, argument0, argument0)
	draw_line_width_color(line_start_x, line_start_y, line_start_x, line_end_y, 1, argument0, argument0)
	draw_line_width_color(line_end_x, line_start_y, line_end_x, line_end_y, 1, argument0, argument0)
	//кнопка назад
	draw_text_transformed_color(global.view_width/2, global.view_height/2 +64, ds_map_find_value(global.dialoguemap, 12), 0.5, 0.5, 0, argument1, argument1, argument1, argument1, 1);

	if file_exists("save.ini")
	{
		draw_text_transformed_color(global.view_width/2, line_start_y+text_buffer, char, 0.5, 0.5, 0.5, argument0,argument0,argument0,argument0,1)
		draw_text_transformed_color(global.view_width/2, line_start_y+text_buffer*3, ds_map_find_value(global.dialoguemap, 30)+string(day), 0.5, 0.5, 0, argument0,argument0,argument0,argument0,1)
		draw_text_transformed_color(global.view_width/2, line_start_y+text_buffer*5, ds_map_find_value(global.dialoguemap, 31)+string(stage), 0.5, 0.5, 0, argument0,argument0,argument0,argument0,1)
		draw_text_transformed_color(global.view_width/2, line_start_y+text_buffer*7, ds_map_find_value(global.dialoguemap, 32)+string(roomname), 0.5, 0.5, 0, argument0,argument0,argument0,argument0,1)
	}
	else 
	{
		draw_text_color(global.view_width/2, line_start_y+text_buffer*5, ds_map_find_value(global.dialoguemap, 38), argument0, argument0, argument0, argument0, 1)	
	}


}

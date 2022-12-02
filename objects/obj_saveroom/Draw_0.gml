draw_set_valign(fa_center)
draw_set_halign(fa_center)
var xx = global.view_width/2;
var yy = global.view_height/2;
var stage = return_stage();
if global.message_delay_start == 0
{
	draw_text_transformed_color(xx, yy-64,  ds_map_find_value(global.dialoguemap, 29), 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_color(xx, yy,		ds_map_find_value(global.dialoguemap, 31)+string(stage), 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_transformed_color(xx, yy+64,  ds_map_find_value(global.dialoguemap, 30)+string(global.day), 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1);
}

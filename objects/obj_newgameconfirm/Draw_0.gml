var c1 = c_white;
var c = c_white;
draw_set_halign(fa_center)
draw_set_valign(fa_center)
if select = 0
{
	var c1 = c_white;
	var c = make_colour_rgb(255,248,191);
}
if select = 1
{
	var c1 = make_colour_rgb(255,248,191);
	var c = c_white;
}
draw_set_alpha(0.6)
draw_set_color(c_black)
draw_rectangle(0,0,global.view_width,global.view_height, false)
draw_set_color(c_white)
draw_set_alpha(1)

draw_text_ext_transformed(global.view_width/2, global.view_height/2-32, ds_map_find_value(global.dialoguemap, 37), 34, 600,0.5,0.5,0);
draw_text_transformed_color(global.view_width/4, global.view_height/2+32, ds_map_find_value(global.dialoguemap, 1),0.5,0.5,0, c, c, c, c, 1)
draw_text_transformed_color(global.view_width*0.75, global.view_height/2+32, ds_map_find_value(global.dialoguemap, 12),0.5,0.5,0, c1, c1, c1, c1, 1)

///@arg str
function scr_text_writer(argument0) {
	draw_set_font(f_Mondealy);
	var str_show = argument0;
	var str_letter = 0;
	var changepos = 200;
	var c = global.message_color;
	var scale = global.message_scale;
	var player = 0
	if !(room == r_pickcharacter)
	{
		var xtext = 10;
		var ytext = global.view_height - 60;
	}
	else
	{
		var xtext = 6;
		var ytext = global.view_height - 90;
	}
	var portrait = global.portrait;
	var message_array_length = array_length(global.message)

	if room == r_pickcharacter
	{
		if portrait == 0
		{
			draw_text_transformed_color(xtext, ytext, str_show, scale, scale, 0, c, c, c, c, 1);
		}
	}
	
	if global.picked_boy == true and room != r_pickcharacter
	{
		var player = obj_male
	}
	else if global.picked_girl == true and room != r_pickcharacter
	{
		var player = obj_female;
	}

	if player != 0
	{
		if (player.y <= camera_get_view_y(view_camera[0]) + changepos)
		{	
			if portrait == 0
			{
				draw_text_transformed_color(xtext, ytext, str_show, scale, scale, 0, c, c, c, c, 1);
			}
			else
			{
				draw_sprite(portrait, 0, 9 + sprite_get_width(portrait)/2, global.view_height - (sprite_get_height(portrait) / 2 + 9))
				draw_text_transformed_color(xtext + sprite_get_width(portrait) + 4, ytext, str_show, scale, scale, 0, c, c, c, c, 1);
			}
		}
		if (player.y >= camera_get_view_y(view_camera[0]) + changepos)
		{	
			ytext = 16;
			if portrait == 0
			{
				draw_text_transformed_color(xtext, ytext, str_show, scale, scale, 0, c, c, c, c, 1);
			}
			else
			{
				draw_sprite(portrait, 0, 9 + sprite_get_width(portrait)/2, sprite_get_height(portrait)/2 + 9)
				draw_text_transformed_color(xtext + sprite_get_width(portrait) + 4, ytext, str_show, scale, scale, 0, c, c, c, c, 1);
			}
		}
	}


}

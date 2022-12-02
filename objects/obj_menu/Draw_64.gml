#region главное меню
if room == r_menu
{
	#region средний и левый текст
	var gwidth = global.view_width, gheight = global.view_height; //положение на экране, 1 - x координата, 2 - y
	var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
	var y_buffer = 16, x_buffer = 4; //расстояние между текстом и экраном
	var start_y = (gheight/2) - (((ds_height-1)/2) * y_buffer), start_x = gwidth / 2;
	#region написание текста
	if menu_pages[page] == ds_menu_main
	{
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	}
	if menu_pages[page] == ds_menu_settings
	{
		draw_sprite(SettingsBar, 0, global.view_width/2, 70)
		draw_set_halign(fa_right);
		draw_set_valign(fa_middle);
	}
	if menu_pages[page] == ds_menu_controls
	{
	    draw_sprite(SettingsBar, 0, global.view_width/2, 50)
		draw_sprite_part(SettingsBar, 0, 0, 13, 8, 35, global.view_width/2-4, 147)
		draw_set_halign(fa_right);
		draw_set_valign(fa_middle);
	}
	#endregion
	
	//средний или левый текст
	var lefttext_x = start_x, lefttext_y, textscale, yoffset;
	var leftoffset = 0;
	var yy = 0; repeat(ds_height)
	{
		lefttext_y = start_y + yy * y_buffer;
		var col = c_white;
		textscale = 0.5;
		yoffset = 0;
		if yy == menu_option[page]
		{
			col = make_colour_rgb(255,248,191);
			textscale = 0.6;
		}
		if inputting and yy == menu_option[page]
		{ 
			col = c_white; 
			textscale = 0.6; 
		}
		if menu_pages[page] == ds_menu_controls or menu_pages[page] == ds_menu_settings
		{
			var leftoffset = 4;	
		}
		draw_text_transformed_color(lefttext_x - leftoffset, lefttext_y, ds_grid[# 0, yy], textscale, textscale, 0, col, col, col, col, 1); //нарисовать текст с цветом
		yy++; //добавить следующую строчку
	}	
	if menu_pages[page] == ds_menu_settings or menu_pages[page] == ds_menu_controls
	{
		
	}	
	#endregion
	
	#region правый текст (настройки)
	//правый текст
	draw_set_halign(fa_left);	
	x_buffer = 4;
	var righttext_x = start_x + x_buffer, righttext_y;
	yy = 0; repeat(ds_height)
	{
		righttext_y = start_y + (yy * y_buffer);
		switch(ds_grid[# 1, yy])
		{
			case menu_type.shift:
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			var left_shift = "< ";
			var right_shift = " >";
			col = c_white
			if current_val == 0 left_shift = "";
			if current_val == array_length(ds_grid[# 4, yy])-1 right_shift = "";
			textscale = 0.5;			
			if inputting and yy == menu_option[page]
			{
				col = make_colour_rgb(255,248,191);
				textscale = 0.6
			}
			draw_text_transformed_color(righttext_x, righttext_y, left_shift+current_array[current_val]+right_shift, textscale, textscale, 0, col, col, col, col, 1);
			break;
			
			case menu_type.input:
			var current_val = ds_grid[# 3, yy];
			var string_val;
			switch(current_val)
			{
				case vk_up: string_val = "UP ARROW"; break;
				case vk_down: string_val = "DOWN ARROW"; break;
				case vk_left: string_val = "LEFT ARROW"; break;
				case vk_right: string_val = "RIGHT ARROW"; break;
				case vk_enter: string_val = "ENTER"; break;
				case ord("C"): string_val = "C"; break;
				case ord("X"): string_val = "X"; break;
				case ord("Z"): string_val = "Z"; break;		
				default: string_val = chr(current_val); break;
			}
			col = c_white;
			textscale = 0.5;
			if (inputting and yy == menu_option[page])
			{ 
				col = make_colour_rgb(255,248,191); 
				textscale = 0.6
			}
			draw_text_transformed_color(righttext_x, righttext_y, string_val, textscale, textscale, 0, col, col, col, col, 1);
		}		
		yy++
	}
	draw_set_valign(fa_middle);
	#endregion
}
#endregion
#region игровое меню
if room != r_menu and global.ingamemenu = true
{
	var gwidth = global.view_width, gheight = global.view_height; //положение на экране, 1 - x координата, 2 - y
	var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
	var char = 0;
	
	#region средний и левый текст
	//изменение позиции относительно персонажа
	if global.picked_boy
	{
		var char = obj_male;
	}
	else
	{
		var char = obj_female;
	}
	if char != 0
	{
		if (char.y <= camera_get_view_y(view_camera[0]) + 200)
		{	
			var y_buffer = 16, x_buffer = 160; //расстояние между текстом и экраном
			var start_y = gheight - 32, start_x = 80;
			scr_dialoguebox();
		}
		else if (char.y >= camera_get_view_y(view_camera[0]) + 200)
		{				
			var y_buffer = 16, x_buffer = 160; //расстояние между текстом и экраном
			var start_y = gheight - 206, start_x = 80;
			scr_dialoguebox();
		}
	}
		
	#region написание текста
	if (menu_pages[page] == ds_menu_main)
	{
		draw_set_halign(fa_middle);
		draw_set_valign(fa_middle);
	}
	if (menu_pages[page] == ds_menu_settings)
	{
		start_x = 80;
		x_buffer = 80;
		draw_set_halign(fa_middle);
		draw_set_valign(fa_middle);
	}
	if (menu_pages[page] == ds_menu_controls)
	{
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		var lefttext_x = start_x, lefttext_y, textscale, yoffset;
	}
	#endregion	
	//средний или левый текст
	if (menu_pages[page] == ds_menu_controls)
	{	
		y_buffer = 14;
		var start_y = gheight - 112, start_x = 80;
		if char != 0
		{
			if (char.y <= camera_get_view_y(view_camera[0]) + 200)
			{
				var start_y = gheight - 115;
				var lefttext_x = start_x, lefttext_y, textscale, yoffset;			
				scr_big_dialbox();
			}
			if (char.y >= camera_get_view_y(view_camera[0]) + 200)
			{		
				var start_y = gheight - 222;
				var lefttext_x = start_x, lefttext_y, textscale, yoffset;
				scr_big_dialbox();
			}
		}
		//средний или левый текст
		var lefttext_x = start_x, lefttext_y, textscale, yoffset;
		var yy = 0; repeat(ds_height)
		{
			lefttext_y = start_y + (yy * y_buffer);
			var col = c_white;
			textscale = 0.5;
			yoffset = 0;
			if(yy == menu_option[page])
			{
				col = c_yellow;
				yoffset = 4;
			}
			if (inputting and yy == menu_option[page])
			{ 
				col = c_white;
			}
			draw_text_transformed_color(lefttext_x, lefttext_y, ds_grid[# 0, yy], textscale, textscale, 0, col, col, col, col, 1); //нарисовать текст с цветом
			yy++; //добавить следующую строчку
		}	
	}
	else
	{			
		var lefttext_x, lefttext_y = start_y, textscale, yoffset;
		var xx = 0; repeat(ds_height)
		{
			lefttext_x = start_x + (xx * x_buffer);
			var col = c_white;
			textscale = 0.5;
			yoffset = 0;
			if(xx == menu_option[page])
			{
				col = c_yellow;
				yoffset = 4;
			}
			if (inputting and xx == menu_option[page])
			{ 
				col = c_white;
			}
			draw_text_transformed_color(lefttext_x, lefttext_y, ds_grid[# 0, xx], textscale, textscale, 0, col, col, col, col, 1); //нарисовать текст с цветом
			xx++; //добавить следующую строчку
		}	
	}	
	#endregion	
	
	#region правый текст (настройки)
	//правый текст
	var righttext_x = start_x, righttext_y = start_y + y_buffer;
	textscale = 0.5;
	yy = 0; repeat(ds_height)
	{
		switch(ds_grid[# 1, yy])
		{
			case menu_type.shift:
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			col = c_white		
			if (inputting and yy == menu_option[page])
			{
				col = c_yellow;
			}
			draw_text_transformed_color(righttext_x, righttext_y, current_array[current_val], textscale, textscale, 0, col, col, col, col, 1);
			break;
			
			case menu_type.input:
			draw_set_halign(fa_right)
			var current_val = ds_grid[# 3, yy];
			var string_val;
			if char != 0
			{
				if (char.y <= camera_get_view_y(view_camera[0]) + 200)
				{
					var righttext_x = 240, righttext_y = start_y + (yy * y_buffer);
					textscale = 0.5;
				}
				if (char.y >= camera_get_view_y(view_camera[0]) + 200)
				{		
					var righttext_x = 240, righttext_y = start_y + (yy * y_buffer);
					textscale = 0.5;
				}
			}
			
			switch(current_val)
			{
				case vk_control: string_val = "CTRL"; break;
				case vk_shift: string_val = "SHIFT"; break;
				case vk_up: string_val = "UP ARROW"; break;
				case vk_down: string_val = "DOWN ARROW"; break;
				case vk_left: string_val = "LEFT ARROW"; break;
				case vk_right: string_val = "RIGHT ARROW"; break;
				case vk_enter: string_val = "ENTER"; break;
				case ord("C"): string_val = "C"; break;
				case ord("X"): string_val = "X"; break;
				case ord("Z"): string_val = "Z"; break;		
				default: string_val = chr(current_val); break;
			}
			col = c_white;
			if (inputting and yy == menu_option[page])
			{ 
				col = c_yellow;
			}
			draw_text_transformed_color(righttext_x, righttext_y, string_val, textscale, textscale, 0, col, col, col, col, 1);
		}		
		yy++
	}
	#endregion
}	
#endregion
if !instance_exists(obj_fader) or !instance_exists(obj_newgameconfirm)
{
	input_up = keyboard_check_pressed(global.key_up);
	input_down = keyboard_check_pressed(global.key_down);
	input_enter = keyboard_check_pressed(global.key_use);
	input_right = keyboard_check_pressed(global.key_right);
	input_left = keyboard_check_pressed(global.key_left);

	var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
	if room == r_menu
	{
		var optionchange = input_down - input_up;
	}
	if !(room == r_menu)
	{
		var optionchange = input_right - input_left;
	}
	if menu_pages[page] == ds_menu_controls
	{
		var optionchange = input_down - input_up;
	}

	if inputting
	{
		switch(ds_grid[# 1, menu_option[page]])
		{	
			case menu_type.shift:
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if hinput != 0
			{
				//аудио
				ds_grid[# 3, menu_option[page]] += hinput;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]]) - 1);
			}
			break;
		
		
			case menu_type.input:
			var key = keyboard_lastkey;		
			if (key != vk_enter
			and key != vk_f1
			and key != vk_f2
			and key != vk_f3
			and key != vk_f4
			and key != vk_f5
			and key != vk_f6
			and key != vk_f7
			and key != vk_f8
			and key != vk_f9
			and key != vk_f10
			and key != vk_numpad0
			and key != vk_numpad1
			and key != vk_numpad2
			and key != vk_numpad3
			and key != vk_numpad4
			and key != vk_numpad5
			and key != vk_numpad6
			and key != vk_numpad7
			and key != vk_numpad8
			and key != vk_numpad9
			and key != vk_backspace
			and key != vk_add
			and key != vk_decimal
			and key != vk_delete
			and key != vk_divide
			and key != vk_end
			and key != vk_tab
			and key != vk_return
			and key != vk_pagedown
			and key != vk_pageup	
			and key != vk_pause
			and key != vk_printscreen
			and key != vk_subtract)
			{
				///if(key != ds_grid[# 3, menu_options[page]])    audio
				ds_grid[# 3, menu_option[page]] = key;
				variable_global_set(ds_grid[# 2, menu_option[page]], key)
				inputting = !inputting;
			}
			break;
		}
	}
	else
	{
		if optionchange != 0
		{
			menu_option[page] += optionchange;
			if menu_option[page] > ds_height - 1
			{
				menu_option[page] = 0;
			}	
			if menu_option[page] < 0
			{
				menu_option[page] = ds_height - 1
			}
			audio_play_sound(sound_buttons, 5, false);
		}
	}
	
	if (input_enter)
	{
		switch(ds_grid[# 1, menu_option[page]])
		{	
			case menu_type.new_game:
			if !file_exists("save.ini")
			{
				reset_globals();
				scr_create_fader(0.02, c_black, 0);
				instance_destroy();
			}
			else
			{
				instance_create_depth(0,0,0,obj_newgameconfirm);
				instance_destroy();
			};
			break;
			case menu_type.script_runner: script_execute(ds_grid[# 2, menu_option[page]]); break;
			case menu_type.page_transfer:
			page = ds_grid [# 2, menu_option[page]];
			break;
			case menu_type.shift:
			if inputting
			{ 
				script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]); 
			}
			case menu_type.input:
			inputting = !inputting;
			break;		
		}
		audio_play_sound(sound_confirm, 5, false);
	}
}
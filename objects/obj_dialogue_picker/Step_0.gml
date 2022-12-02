input_up = keyboard_check_pressed(global.key_up);
input_down = keyboard_check_pressed(global.key_down);
input_enter = keyboard_check_pressed(global.key_use);
input_right = keyboard_check_pressed(global.key_right);
input_left = keyboard_check_pressed(global.key_left);

var ds_grid = picker_text[picker_index], ds_height = ds_grid_height(ds_grid);
if instance_exists(obj_fader)
{
	var optionchange = 0;
}

var optionchange = input_right - input_left;

if (optionchange != 0)
{
	picker_option[page] += optionchange;
	if (picker_option[page] > ds_height - 1)
	{
		picker_option[page] = 0;
	}	
	if (picker_option[page] < 0)
	{
		picker_option[page] = ds_height - 1
	}
	audio_play_sound(sound_buttons, 5, false);
}

if input_enter 
{
	switch(ds_grid[# 1, picker_option[page]])
	{
		case picker.script_runner: script_execute(ds_grid[# 2, picker_option[page]]); break;
	}
	audio_play_sound(sound_confirm, 5, false);
}
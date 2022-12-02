if select == 1
{
	if keyboard_check_pressed(global.key_up)
	{
		select = 0;
		audio_play_sound(sound_buttons, 5, false)
	}
}
else
{
	if keyboard_check_pressed(global.key_down)
	{
		select = 1;
		audio_play_sound(sound_buttons, 5, false)
	}
}
if keyboard_check_pressed(global.key_use)
{
	audio_play_sound(sound_confirm, 5, false);
	if file_exists("save.ini")
	{
		if select = 0
		{
			scr_game_load();
		}
	}
	if select = 1
	{
		instance_destroy();
		update_menu();
	}
}
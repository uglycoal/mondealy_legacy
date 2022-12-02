if select == 1
{
	if keyboard_check_pressed(global.key_left)
	{
		select = 0;
		audio_play_sound(sound_buttons, 5, false)
	}
}
else
{
	if keyboard_check_pressed(global.key_right)
	{
		select = 1;
		audio_play_sound(sound_buttons, 5, false)
	}
}
if keyboard_check_pressed(global.key_use)
{
	audio_play_sound(sound_confirm, 5, false);
	if select = 0
	{
		reset_globals();
		instance_destroy();
		scr_create_fader(0.02, c_black, 0)
		file_delete("save.ini")
	}
	if select = 1
	{
		instance_destroy();
		update_menu();
	}
}

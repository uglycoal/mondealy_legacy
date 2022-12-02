if !global.message_delay_start == 0
{
	global.message_delay_start--;
}
if global.message_delay_start == 0
{
	if keyboard_check_pressed(global.key_use) or keyboard_check_pressed(global.key_confirm)
	{		
		instance_destroy();
		scr_game_load();
	}
}
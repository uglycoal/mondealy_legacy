draw_set_halign(fa_left)
draw_set_valign(fa_top)
if keyboard_check_pressed(global.key_confirm)
{
	if !instance_exists(obj_dialogue_picker)
	{
		if counter < string_length(global.str_to_show)
		{
			counter = string_length(global.str_to_show)
		}
		else if message_showing < array_length(global.message) - 1
		{
			counter = 0;
			message_showing++
			active = 1;
		}
		else 
		{
			if instance_exists(obj_scene)
			{
				with(obj_scene)
				{
					scene_next();
				}
			}
			instance_destroy();
			scr_delete_texter();
		}
	}
}

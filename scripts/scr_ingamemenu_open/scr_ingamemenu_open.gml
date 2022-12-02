function scr_ingamemenu_open(argument0) {
	show_debug_message("ingame opened")
	///@arg character
	instance_create_layer(0, 0, "Menu_Layer", obj_menu)
	global.ingamemenu = true;
	argument0.has_control = false;
	audio_play_sound(sound_confirm, 5, false);
	if instance_exists(obj_progress)
	{
		instance_destroy(obj_progress)
	}


}

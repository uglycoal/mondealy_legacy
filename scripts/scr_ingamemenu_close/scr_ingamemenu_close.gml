function scr_ingamemenu_close(argument0) {
	show_debug_message("ingame closed")
	///@arg character
	global.ingamemenu = false;
	argument0.has_control = true;
	instance_destroy(obj_menu);


}

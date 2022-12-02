function scr_delete_texter() {
	global.message_scale = 0.5;
	global.message_delay = 15;
	global.portrait = 0;
	global.message = 0;
	global.message_name = 0;
	if global.picked_boy
	{
		obj_male.has_control = true
	}
	else
	{
		obj_female.has_control = true
	}


}

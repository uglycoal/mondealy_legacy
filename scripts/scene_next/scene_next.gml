function scene_next() {
	if global.picked_boy == true
	{	
		var obj = obj_male;
	}
	else 
	{
		var obj = obj_female;
	}
	obj.image_index = 3;
	obj.image_speed = 0
	scene++;
	if (scene > array_length(scene_info) - 1)
	{
		instance_destroy();
		obj.has_control = true;
		if obj.image_xscale != 1
		{
			obj.image_xscale = 1
		}
		exit;
	}

	event_perform(ev_other, ev_user0);


}

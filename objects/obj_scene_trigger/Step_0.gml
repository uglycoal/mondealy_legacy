if(!instance_exists(obj_scene))
{
	if(place_meeting(x, y, obj_male))
	{
		scene_create(trigger_scene);
		instance_destroy();
	}
}
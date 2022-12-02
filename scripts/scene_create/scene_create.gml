///@arg scene
function scene_create(argument0) {

	var inst = instance_create_depth(0, 0, 0, obj_scene);
	with(inst)
	{
		scene_info = argument0;
		event_perform(ev_other, ev_user0);
	}


}

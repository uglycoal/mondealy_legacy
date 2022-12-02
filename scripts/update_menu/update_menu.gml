function update_menu() {
	if instance_exists(obj_menu)
	{
		instance_destroy(obj_menu);
	}
	if !instance_exists(obj_menu)
	{
		instance_create_depth(0, 0, 0, obj_menu);
	}


}

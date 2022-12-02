function scr_text_creator() {
	if !instance_exists(obj_text_writer)
	{
		instance_create_depth(0, 0, 0, obj_text_writer);
		obj_text_writer.active = 1;
	}


}

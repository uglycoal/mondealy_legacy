function picked_start_girl() {
	show_debug_message("you picked girl")
	global.picked_girl = true;
	obj_text_writer.message_showing += 1;
	obj_text_writer.counter = 0;
	obj_text_writer.active = 1;
	save_globals();
	instance_destroy();


}

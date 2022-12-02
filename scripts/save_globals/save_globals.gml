function save_globals() {
	show_debug_message("saved globals")

	file_delete("options.ini")
	ini_open("options.ini");
	ini_write_string("language", "langselected", global.selectedlanguage)
	ini_write_real("language", "lang", global.language)
	ini_write_real("keys", "keyup", global.key_up)
	ini_write_real("keys", "keydown", global.key_down)
	ini_write_real("keys", "keyleft", global.key_left)
	ini_write_real("keys", "keyright", global.key_right)
	ini_write_real("keys", "keymenu", global.key_menu)
	ini_write_real("keys", "keycancel", global.key_cancel)
	ini_write_real("keys", "keyconfirm", global.key_confirm)
	ini_close();

	if room == r_menu
	{
		update_menu();
	}


}

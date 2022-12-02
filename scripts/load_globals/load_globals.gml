function load_globals() {
	if file_exists("options.ini")
	{	
		ini_open("options.ini")
		global.selectedlanguage = ini_read_string("language", "langselected", "lang/en.csv");
		global.language = ini_read_real("language", "lang", 0);
		global.key_up = ini_read_real("keys", "keyup", 38);
		global.key_down = ini_read_real("keys", "keydown", 40);
		global.key_left = ini_read_real("keys", "keyleft", 37)
		global.key_right = ini_read_real("keys", "keyright", 39)
		global.key_menu = ini_read_real("keys", "keymenu", 67)
		global.key_cancel = ini_read_real("keys", "keycancel", 88)
		global.key_confirm = ini_read_real("keys", "keyconfirm", 90)
		ini_close()
	}
	if file_exists("save.ini")
	{	
		ini_open("save.ini")
		global.spawnroom = ini_read_real("save_room", "room", 0)
		global.day = ini_read_real("day_time", "day", 0);
		global.story_stage = ini_read_real("game_stage", "story", 0);
		global.picked_boy = ini_read_real("character", "boyselect", true);
		global.picked_girl = ini_read_real("character", "girlselect", true);
		ini_close()
	}


}

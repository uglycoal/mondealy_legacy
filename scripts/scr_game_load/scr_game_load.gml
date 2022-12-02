function scr_game_load() {
	var xx = 0;
	var yy = 0;

	if file_exists("save.ini")
	{	
		ini_open("save.ini")
		global.spawnroom = ini_read_real("save_room", "room", 0)
		global.follower = ini_read_string("followers", "follower", "Ellie");
		global.day_time = ini_read_string("day_time", "time", "Day");
		global.day = ini_read_real("day_time", "day", 0);
		global.story_stage = ini_read_real("game_stage", "story", 0);
		ini_close()
	}

	if room != global.spawnroom
	{
		room_goto(global.spawnroom)
	}



}

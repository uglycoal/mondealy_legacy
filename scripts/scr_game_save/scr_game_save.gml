function scr_game_save() {
	show_debug_message("game saved")
	ini_open("save.ini");
	var daytime = global.day_time;
	var day = global.day;
	var saveroom = room;
	var gamestage = global.story_stage;
	var follower = global.follower;
	var boyselect = global.picked_boy, girlselect = global.picked_girl;
	ini_write_real("character", "boyselect", boyselect)
	ini_write_real("character", "girlselect", girlselect)
	ini_write_string("followers", "follower", follower);
	ini_write_string("day_time", "time", daytime);
	ini_write_real("day_time", "day", day);
	ini_write_real("game_stage", "story", gamestage);
	ini_write_real("save_room", "room", saveroom);
	ini_close();


}

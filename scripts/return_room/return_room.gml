function return_room() {
	var roomname = 0;
	switch global.spawnroom
	{
		case 6: roomname = ds_map_find_value(global.dialoguemap, 34); break;
	}
	return roomname;


}

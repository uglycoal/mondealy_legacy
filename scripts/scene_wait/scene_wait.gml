///@arg seconds
function scene_wait(argument0) {
	scene_pause++;

	if(scene_pause >= argument0 * room_speed)
	{
		scene_pause = 0;
		scene_next();
	}


}

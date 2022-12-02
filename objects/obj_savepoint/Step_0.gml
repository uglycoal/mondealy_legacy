if active == 1
{
	if !instance_exists(obj_fader)
	{
		scr_create_fader(0.02, c_black, 0)
	}
}
if instance_exists(obj_fader)
{
	if active == 1 and obj_fader.alpha == 1
	{
		room_goto(r_saveroom);
	}
}
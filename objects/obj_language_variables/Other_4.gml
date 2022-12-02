if !room == r_menu
{
	scr_create_unfader(0.1, c_black, 1);
}
var xx, yy;
switch global.spawnroom
{
	case 6: xx = 142; yy = 175; break;
}
if room == global.spawnroom
{
	if scr_return_char_boy_var() == true
	{
		if !instance_exists(obj_male)
		{
			instance_create_depth(xx, yy, -100, obj_male)
		}
	}
	else
	{
		if !instance_exists(obj_female)
		{
			instance_create_depth(xx, yy, -100, obj_female)
		}
	}
}
/// @description female goto
obj_female.has_control = false;
if !instance_exists(obj_fader)
{
	scr_create_fader(0.1, c_black, 0)
}

if obj_fader.alpha == 1
{
	room_goto(targetroom)
	obj_female.x = targetx;
	obj_female.y = targety;
	if instance_exists(obj_male)
	{
		if obj_male.follow = true
		{
			obj_male.x = targetx;
			obj_male.y = targety;
		}
	}
	instance_destroy(obj_fader);
}
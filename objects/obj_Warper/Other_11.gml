/// @description male goto
obj_male.has_control = false
obj_male.image_index = 3;
obj_male.image_speed = 0;
if !instance_exists(obj_fader)
{
	scr_create_fader(0.1, c_black, 0)
}

if obj_fader.alpha == 1
{
	room_goto(targetroom)
	obj_male.x = targetx;
	obj_male.y = targety;
	instance_destroy(obj_fader);
}
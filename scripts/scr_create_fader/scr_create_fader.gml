///@arg fadespeed
///@arg color
///@arg alpha
function scr_create_fader(argument0, argument1, argument2) {
	instance_create_depth(0, 0, -100, obj_fader)
	with obj_fader
	{
		fadespeed = argument0;
		color = argument1;
		alpha = argument2;
	}


}

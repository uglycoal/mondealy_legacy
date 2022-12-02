function scr_create_unfader(argument0, argument1, argument2) {
	instance_create_depth(0, 0, -100, obj_unfader)
	with obj_unfader
	{
		fadespeed = argument0;
		color = argument1;
		alpha = argument2;
	}


}

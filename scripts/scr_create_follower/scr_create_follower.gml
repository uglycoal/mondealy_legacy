///@arg leader
///@arg follower
function scr_create_follower(argument0, argument1) {
	instance_create_depth(argument0.x, argument0.y, 0, argument1);
	with argument1
	{
		follow = true;	
	}



}

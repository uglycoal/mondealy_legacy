///@arg obj
///@arg move_from_x_to_new_x
///@arg move_from_y_to_new_y
///@arg speed
function scene_move_obj(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	///@arg sprite
	///@arg xscale
	///@arg speed
	var obj = argument0, spd = argument3;

	if(x_dest == -1)
	{
		x_dest = obj.x + argument1;
		y_dest = obj.y + argument2;
	}

	var xx = x_dest;
	var yy = y_dest;

	with(obj)
	{
		sprite_index = argument4;
		image_xscale = argument5;
		image_speed = argument6;
		if(point_distance(x, y, xx, yy) >= spd)
		{
			var dir = point_direction(x, y, xx, yy);
			var len_dir_x = lengthdir_x(spd, dir)
			var len_dir_y = lengthdir_y(spd, dir)
	
			x += len_dir_x;
			y += len_dir_y;
		}
		else
		{
			x = xx;
			y = yy;
		
			with(other)
			{
				x_dest = -1;
				y_dest = -1;
				scene_next();
			}
		}
	}


}

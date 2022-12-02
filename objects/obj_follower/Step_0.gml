if ds_list_size(global.follow_x) > 30 and ds_list_size(global.follow_y) > 30 and ds_list_size(global.follow_dir) > 30
{
	if !(obj_male.x == obj_male.xprevious and obj_male.y == obj_male.yprevious)
	{
		ds_list_delete(global.follow_x, 0)
		ds_list_delete(global.follow_y, 0)
		ds_list_delete(global.follow_dir, 0)
	}
}

if global.picked_boy == true
{
	if !(obj_male.x == obj_male.xprevious and obj_male.y == obj_male.yprevious)
	{
		ds_list_add(global.follow_x, obj_male.x)
		ds_list_add(global.follow_y, obj_male.y)
		ds_list_add(global.follow_dir, obj_male.dir)
	}
}
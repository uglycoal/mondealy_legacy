#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height)
if global.picked_boy
{
	if instance_exists(obj_male)
	{
		var xm = clamp(obj_male.x - (sprite_get_width(CharMaleDown)/2 + view_width/2), 0, room_width - view_width)
		var ym = clamp(obj_male.y - (sprite_get_height(CharMaleDown)/2 + view_height/2), 0, room_height - view_height)
		camera_set_view_pos(view, xm, ym)
	}
}

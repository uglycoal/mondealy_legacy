function scr_big_dialbox() {
	var xbuffer = 4;
	var ybuffer = 4;
	var boxheight = 128;
	var xx = 0 + xbuffer;
	var yy = global.view_height - (ybuffer+boxheight);
	var xx2 = global.view_width - xbuffer;
	var yy2 = global.view_height - ybuffer;
	var boxoffset = 2;
	var c = c_black;
	if global.picked_boy
	{
		var c1 = make_color_rgb(180, 245, 245);
		var char = obj_male;
	}
	else
	{
		var c1 = make_color_rgb(255, 190, 240);
		var char = obj_female;
	}
	var changepos2 = 200;

	if instance_exists(char)
	{
		if (char.y <= camera_get_view_y(view_camera[0]) + changepos2)
		{	
			draw_rectangle_color(xx, yy, xx2, yy2, c1, c1, c1, c1, 0);
			draw_rectangle_color(xx + boxoffset, yy + boxoffset, xx2 - boxoffset, yy2 - boxoffset, c, c, c, c, 0);
		}
		else if (char.y >= camera_get_view_y(view_camera[0]) + changepos2)
		{				
			draw_rectangle_color(xx, ybuffer, xx2, ybuffer+boxheight, c1, c1, c1, c1, 0);
			draw_rectangle_color(xx+boxoffset, ybuffer+boxoffset, xx2-boxoffset, (ybuffer+boxheight)-boxoffset, c, c, c, c, 0);
		}
	}



}

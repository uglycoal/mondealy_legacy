draw_set_font(f_Mondealy);
draw_set_halign(fa_left)
draw_set_valign(fa_top)
pause = false
counter = 0;
message_showing = 0;
str_to_show = 0;
active = 0;
textspeed = 1;
if global.picked_boy
{
	with obj_male
	{
		image_speed = 0;
	}
}
else
{
	with obj_female
	{
		image_speed = 0;
	}
}
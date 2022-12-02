var c1 = c_white;
var c = c_white;

if select = 0
{
	var c1 = c_white;
	var c = make_colour_rgb(255,248,191);
}
if select = 1
{
	var c1 = make_colour_rgb(255,248,191);
	var c = c_white;
}
load_box(c, c1)

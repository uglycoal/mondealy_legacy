layer = layer_get_id("Window");
background = layer_background_get_id(layer);
if global.day_time = "Day"
{
	layer_background_sprite(background, WindowBG1Day);
}
if global.day_time = "Evening"
{
	layer_background_sprite(background, WindowBG1Evening);
}
if global.day_time = "Night"
{
	layer_background_sprite(background, WindowBG1Night);
}
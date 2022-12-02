layer = layer_get_id("Window");
background = layer_background_get_id(layer);
if global.day_time = "Day"
{
	layer_background_sprite(background, WindowBGDay);
}
if global.day_time = "Evening"
{
	layer_background_sprite(background, WindowBGEvening);
}
if global.day_time = "Night"
{
	layer_background_sprite(background, WindowBGNight);
}

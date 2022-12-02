scr_scripted_text_activator();
if global.message_delay_start > 0
{
	scr_text_delay_start();
}
if keyboard_check(vk_shift)
{
	global.walkspeed = 3;
}
else
{
	global.walkspeed = 2;
}
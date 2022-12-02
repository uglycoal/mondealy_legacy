if alpha < 1
{
	alpha += fadespeed;
}
if room == r_menu and alpha == 1
{
	room_goto(r_pickcharacter);
}
if room == r_pickcharacter and alpha == 1
{
	if global.picked_boy == true
	{
		scr_game_start_boy();
	}
	if global.picked_girl == true
	{
		scr_game_start_girl()
	}
}
if active == 1
{
	event_perform(ev_other, ev_user0);
	active = 0
}
if global.message_name != 0 and global.message_delay_start == 0
{
	scr_dialoguebox();
	if counter < string_length(global.str_to_show) and !pause
	{
		counter += textspeed;
		//if counter mod 2 == 0 and counter < string_length(global.str_to_show)
		//{
		//	audio_play_sound(dialogue_default, 4, 0)
		//}
		switch (string_char_at(global.str_to_show, counter))
		{
			case ",": pause = true; alarm[0] = 4; break;
			case "!":
			case "?":
			case ".": pause = true; alarm[0] = 8; break;
		}
	}
	var str_counter_to_show = string_copy(global.str_to_show, 1, counter);
	scr_text_writer(str_counter_to_show);
}
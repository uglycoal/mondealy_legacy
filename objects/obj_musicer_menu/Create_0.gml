if !scr_music_playing(music_menu)
{
	scr_start_music_fader(music_menu, 0.70, 10)
	audio_play_sound(music_menu, 1000, true)
}

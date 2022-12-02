///@arg sound
///@arg volume
///@arg time (ms)
function scr_start_music_fader(argument0, argument1, argument2) {
	var sound = argument0;
	var volume = argument1;
	var time = argument2;

	audio_sound_gain(sound, volume, time * 1000)


}

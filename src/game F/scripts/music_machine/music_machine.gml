/// music_machine(snd)
function music_machine(snd) {
	
	with (obj_audio_controller) audio_play_sound(snd, false, true);
	
}
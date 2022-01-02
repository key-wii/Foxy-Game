if (!audio_is_playing(tv_on)) {
	audio_play_sound(tv_hum, false, true);
} else {
	alarm_set(1, 1);
}
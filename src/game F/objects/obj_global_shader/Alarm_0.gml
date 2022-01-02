var f = ticks / duration_ticks;
if (f <= .25) {
	audio_play_sound(tv_on, false, false);
	alarm_set(1, 1);
} else {
	alarm_set(0, 1);
}
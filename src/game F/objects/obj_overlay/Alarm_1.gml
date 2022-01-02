var _dt = delta_time / 1000000;
y += 500 * _dt;

if (y >= sprite_height) {
	global.start = true;
	audio_stop_sound(tv_hum);
	room_goto_next();
	instance_destroy();
}
else alarm_set(1, 1);
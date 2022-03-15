var _dt = delta_time / 1000000;
y += 250 * _dt;

if (y >= sprite_height / 2) {
	y = sprite_height / 2;
	moving = false
}
else alarm_set(0, 1);
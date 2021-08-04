var _dt = delta_time / 1000000;
global.seconds += 1 * _dt;
if (drop) {
	timer -= 1 * _dt;
	drop = false;
	if (timer <= 0) global.gameover = true;
}
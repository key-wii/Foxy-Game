var _dt = delta_time / 1000000;
global.seconds += 1 * _dt;
if (drop) {
	timer -= 1 * _dt;
	drop = false;
	if (timer <= 0) {
		global.gameover = true;
		if (foxes < 11) timer = 0;
		if (timer <= -5 && foxes >= 11 && !obj_global_shader.active) {
			gameover = true;
			obj_global_shader.active = true;
		}
	}
}
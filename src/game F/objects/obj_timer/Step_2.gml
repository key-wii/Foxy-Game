var _dt = delta_time / 1000000;
global.seconds += 1 * _dt;
if (drop) {
	var last_time = timer;
	timer -= 1 * _dt;
	if (instance_exists(obj_clock)) with (obj_clock) {
		timer = other.timer;
		direction -= (last_time - timer) * (360 / maxTimer);
	}
	drop = false;
	if (timer <= 0) {
		if (instance_exists(obj_clock)) with (obj_clock) lost = true;
		global.gameover = true;
		if (foxes < 11) timer = 0;
		if (timer <= -5 && foxes >= 11 && !obj_global_shader.active) {
			gameover = true;
			obj_global_shader.active = true;
			audio_play_sound(tv_off, false, false);
		}
	}
}

if (global.newsStarted > 0) global.newsStarted--;
if (global.staticStarted > 0) global.staticStarted--;
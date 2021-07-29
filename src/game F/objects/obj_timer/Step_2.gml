if (drop) {
	var _dt = delta_time / 1000000;
	timer -= 1 * _dt;
	drop = false;
	if (timer <= 0) {
		//global.gameover = true;
		instance_destroy(vid_parent);
	}
}
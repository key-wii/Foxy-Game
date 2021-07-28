if (drop) {
	timer -= 1;
	drop = false;
	if (timer <= 0) {
		//global.gameover = true;
		instance_destroy(vid_parent);
	}
}
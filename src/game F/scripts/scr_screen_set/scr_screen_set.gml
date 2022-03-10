function screen_set_col() {
	if (breakingNews) {
		set_news();
		image_index = floor(frameCounter / frameSpeed);
		exit;
	}
	frameSpeed = 1000000 / 10; //10 fps
	
	var ran = screen_set_ran(4);
	if (sprite_index == -1) ran = irandom(5);
	switch (ran) {
		case 0: sprite_index = spr_screen_col0; break;
		case 1: sprite_index = spr_screen_col1; break;
		case 2: sprite_index = spr_screen_col2; break;
		case 3: sprite_index = spr_screen_col3; break;
		case 4: sprite_index = spr_screen_col4; break;
		//case 5: sprite_index = spr_screen_col_news; break;
	}
	random_frameBackward();
	/*if (!global.channelOn) {
		global.channelOn = true;
		global.tvSound = audio_play_sound(tv_talking, false, true);
	}*/
	
	switch (fox_sprite) {
		case spr_foxy_col0: fox_sprite = spr_foxy_col1; break;
		case spr_foxy_col1: fox_sprite = spr_foxy_col0; break;
	}
}

function screen_set_bw() {
	if (breakingNews) {
		set_news();
		image_index = floor(frameCounter / frameSpeed);
		exit;
	}
	frameSpeed = 1000000 / 10; //10 fps
	
	var ran = screen_set_ran(4);
	if (sprite_index == -1) ran = irandom(5);
	switch (ran) {
		case 0: sprite_index = spr_screen_bw0; break;
		case 1: sprite_index = spr_screen_bw1; break;
		case 2: sprite_index = spr_screen_bw2; break;
		case 3: sprite_index = spr_screen_bw3; break;
		case 4: sprite_index = spr_screen_bw4; break;
	}
	random_frameBackward();
	switch (fox_sprite) {
		case spr_foxy_bw0: fox_sprite = spr_foxy_bw1; break;
		case spr_foxy_bw1: fox_sprite = spr_foxy_bw0; break;
	}
}

function screen_set_cpu() {
	var ran = screen_set_ran(3);
	if (sprite_index == -1) ran = irandom(4);
	switch (ran) {
		case 0: sprite_index = spr_screen_cpu0; break;
		case 1: sprite_index = spr_screen_cpu1; break;
		case 2: sprite_index = spr_screen_cpu2; break;
		case 3: sprite_index = spr_screen_cpu3; break;
	}
	random_frameBackward();
	switch (fox_sprite) {
		case spr_foxy_cpu0: fox_sprite = spr_foxy_cpu1;
		case spr_foxy_cpu1: fox_sprite = spr_foxy_cpu0;
	}
}

function screen_set_ran(max) {
	if (sprite_index == -1) var ran = irandom(max);
	else {
		var ranList = ds_list_create();
		for (var i = 0; i <= max; i++) if (i != last_sprite) ds_list_add(ranList, i);
		ds_list_shuffle(ranList);
		ran = ranList[| 0];
		ds_list_destroy(ranList);
	}
	last_sprite = ran;
	return ran;
}

function random_frameForward() {
	frameDuration = frameSpeed * image_number;
	image_index = irandom(frameDuration);
	frameCounter = image_index;
}

function random_frameBackward() {
	frameDuration = frameSpeed * image_number;
	image_index = frameDuration - irandom(frameDuration);
	frameCounter = image_index;
}
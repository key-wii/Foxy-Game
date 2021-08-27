function screen_set_col() {
	var ran = screen_set_ran(7);
	switch (ran) {
		case 0: sprite_index = spr_screen_col0; break;
		case 1: sprite_index = spr_screen_col1; break;
		case 2: sprite_index = spr_screen_col2; break;
		case 3: sprite_index = spr_screen_col3; break;
		case 4: sprite_index = spr_screen_col4; break;
		case 5: sprite_index = spr_screen_col5; break;
		case 6: sprite_index = spr_screen_col6; break;
		case 7: sprite_index = spr_screen_col7; break;
	}
	random_frame();
}

function screen_set_bw() {
	var ran = screen_set_ran(5);
	if (sprite_index == -1) var ran = irandom(6);
	switch (ran) {
		case 0: sprite_index = spr_screen_bw0; break;
		case 1: sprite_index = spr_screen_bw1; break;
		case 2: sprite_index = spr_screen_bw2; break;
		case 3: sprite_index = spr_screen_bw3; break;
		case 4: sprite_index = spr_screen_bw4; break;
		//case 5: sprite_index = spr_screen_bw5; break;
	}
	random_frame();
}

function screen_set_cpu() {
	var ran = screen_set_ran(3);
	if (sprite_index == -1) var ran = irandom(4);
	switch (ran) {
		case 0: sprite_index = spr_screen_cpu0; break;
		case 1: sprite_index = spr_screen_cpu1; break;
		case 2: sprite_index = spr_screen_cpu2; break;
		case 3: sprite_index = spr_screen_cpu3; break;
	}
	random_frame();
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

function random_frame() {
	frameDuration = frameSpeed * image_number;
	image_index = irandom(image_number / 2);
	frameCounter = image_index;
}
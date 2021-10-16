function set_news() {
	var ran = irandom(1);
	if (firstNews) var broadcast = obj_timer.news;
	else var broadcast = irandom(6);
	if ((firstNews || ran == 0) && !global.gameover) {
		switch (col) {
			case false: switch (broadcast) {
				case 0: sprite_index = spr_news0_bw break;
				case 1: sprite_index = spr_news1_bw break;
				case 2: sprite_index = spr_news2_bw break;
				case 3: sprite_index = spr_news3_bw break;
				case 4: sprite_index = spr_news4_bw break;
				case 5: sprite_index = spr_news5_bw break;
				case 6: sprite_index = spr_news6_bw break;
			} break;
			case true: switch (broadcast) {
				case 0: sprite_index = spr_news0_col break;
				case 1: sprite_index = spr_news1_col break;
				case 2: sprite_index = spr_news2_col break;
				case 3: sprite_index = spr_news3_col break;
				case 4: sprite_index = spr_news4_col break;
				case 5: sprite_index = spr_news5_col break;
				case 6: sprite_index = spr_news6_col break;
			} break;
		}
		frameSpeed = 1000000 / 8; //8 fps
		frameDuration = frameSpeed * image_number;
		image_index = frameDuration;
		frameCounter = image_index;
		
		firstNews = false;
		
		delta_alarm = irandom_range(8, 20) * 1000000; //8-20 seconds
		
		if (instance_exists(obj_clock)) with (obj_clock) draw_time = true;
	} else set_fox();
	
	breakingNews = false;
}
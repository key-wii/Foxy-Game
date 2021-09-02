if (room == room_start && x < 0) exit;

if (delta_alarm_start > 0) {
	//sprite_index = spr_screen_static;
	delta_alarm_start -= delta_time;
	if (delta_alarm_start <= 0)	setScreen();
}

//Delta Alarm
if (delta_alarm > 0) {
	delta_alarm -= delta_time;
	if (delta_alarm <= 0) {
		//Get fox'd lol
		with (obj_timer) foxes++;
		ssSudden(1, 10, false, false);
		fox = true;
		foxCount = 10;
		sprite_index = fox_sprite;
		
		frameDuration = frameSpeed * image_number;
		image_index = frameDuration;
		frameCounter = image_index;
		
		/*image_xscale *= 1.1;
		image_yscale *= 1.1;
		wDiff = w_initial - sprite_width;
		hDiff = h_initial - sprite_height;
		x += wDiff / 2;
		y += hDiff / 2;*/
	}
}

/*if (foxCount > 0) {
	foxCount--;
	if (foxCount == 0) {
		image_xscale = xscale_initial;
		image_yscale = yscale_initial;
		x = xstart;
		y = ystart;
	}
}*/

//Animate
frameCounter -= delta_time;
if (frameCounter < 0) {
	frameCounter += frameDuration;
	var ran = irandom(2);
	if (!fox) setScreen();
	else if (ran == 0) {
		switch (fox_sprite) {
			case spr_foxy_bw0: fox_sprite = spr_foxy_bw1; break;
			case spr_foxy_bw1: fox_sprite = spr_foxy_bw0; break;
			case spr_foxy_col0: fox_sprite = spr_foxy_col1; break;
			case spr_foxy_col1: fox_sprite = spr_foxy_col0; break;
			case spr_foxy_cpu0: fox_sprite = spr_foxy_cpu1; break;
			case spr_foxy_cpu1: fox_sprite = spr_foxy_cpu0; break;
		}
		sprite_index = fox_sprite;
	}
}
image_index = floor(frameCounter / frameSpeed);
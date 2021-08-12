//Delta Alarm
if (delta_alarm > 0) {
	delta_alarm -= delta_time;
	if (delta_alarm <= 0) {
		//Get fox'd lol
		ssSudden(1, 10, false, false);
		fox = true;
		foxCount = 10;
		sprite_index = fox_sprite;
		
		image_xscale *= 1.1;
		image_yscale *= 1.1;
		wDiff = w_initial - sprite_width;
		hDiff = h_initial - sprite_height;
		x += wDiff / 2;
		y += hDiff / 2;
	}
}

if (foxCount > 0) {
	foxCount--;
	if (foxCount == 0) {
		image_xscale = xscale_initial;
		image_yscale = yscale_initial;
		x = xstart;
		y = ystart;
	}
}

//Animate
frameCounter += delta_time;
if (frameCounter > frameDuration) {
	frameCounter -= frameDuration;
	if (!fox) setScreen();
}
image_index = floor(frameCounter / frameSpeed);
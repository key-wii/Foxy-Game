//Delta Alarm
if (delta_alarm > 0) {
	delta_alarm -= delta_time;
	if (delta_alarm <= 0) {
		//Get fox'd lol
		fox = true;
		sprite_index = fox_sprite;
		delta_alarm = irandom_range(1, 5) * 1000000; //1-5 seconds
	}
}

//Animate
frameCounter += delta_time;
if (frameCounter > frameDuration) {
	frameCounter -= frameDuration;
	if (!fox) setScreen();
}
image_index = floor(frameCounter / frameSpeed);
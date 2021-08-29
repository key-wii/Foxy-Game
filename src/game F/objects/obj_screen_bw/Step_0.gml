event_inherited();

//Animate
frameCounter += delta_time;
if (frameCounter > frameDuration) {
	frameCounter -= frameDuration;
	if (!fox) setScreen();
}
image_index = floor(frameCounter / frameSpeed);
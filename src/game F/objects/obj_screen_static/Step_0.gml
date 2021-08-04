//Animate
frameCounter += delta_time;
if (frameCounter > frameDuration) frameCounter -= frameDuration;
image_index = floor(frameCounter / frameSpeed);
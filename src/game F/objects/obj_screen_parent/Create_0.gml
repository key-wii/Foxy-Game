fox = false;
delta_alarm = irandom_range(5, 25) * 1000000; //5-25 seconds
inputChange = false;

image_speed = 0;
frameSpeed = 1000000 / 10; //10 fps
frameDuration = frameSpeed * image_number;
frameCounter = 0;

sprite_index = -1;
last_sprite = -1;
setScreen();
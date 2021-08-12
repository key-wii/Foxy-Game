fox = false;
foxCount = 0;
delta_alarm = irandom_range(5, 25) * 1000000; //5-25 seconds
inputChange = false;

image_speed = 0;
frameSpeed = 1000000 / 10; //10 fps
frameDuration = frameSpeed * image_number;
frameCounter = 0;

sprite_index = -1;
last_sprite = -1;
setScreen();

tapCount = 0;
mx = mouse_x;
my = mouse_y;

w_initial = sprite_width;
h_initial = sprite_height;
xscale_initial = image_xscale;
yscale_initial = image_yscale;
wDiff = 0;
hDiff = 0;
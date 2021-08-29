w_initial = sprite_width;
h_initial = sprite_height;
xscale_initial = image_xscale;
yscale_initial = image_yscale;
wDiff = 0;
hDiff = 0;

image_speed = 0;
frameSpeed = 1000000 / 10; //10 fps
frameDuration = frameSpeed * image_number;
frameCounter = 0;

sprite_index = -1;
last_sprite = -1;
//setScreen();
if (x > 0) global.screens++;
delta_alarm_start = (global.screens + random(.1)) * 1000000; //n seconds
var das = clamp(delta_alarm_start, 6 * 1000000, 99 * 1000000);

fox = false;
foxCount = 0;
delta_alarm = das + (irandom_range(7, 25) * 1000000); //7-25 + n seconds
inputChange = false;

tapCount = 0;
mx = mouse_x;
my = mouse_y;
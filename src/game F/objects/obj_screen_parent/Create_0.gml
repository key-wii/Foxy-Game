if (x >= 0) {
	shift();
}

w_initial = sprite_width;
h_initial = sprite_height;
/*xscale_initial = image_xscale;
yscale_initial = image_yscale;
wDiff = 0;
hDiff = 0;*/
sprite_index = spr_start;

image_speed = 0;
frameSpeed = 1000000 / 10; //10 fps
frameDuration = frameSpeed * image_number;
frameCounter = 0;

sprite_index = -1;
last_sprite = -1;
//setScreen();
if (x > 0) global.screens++;
delta_alarm_start = (global.screens + random(.1)) * 800000;
//var das = clamp(delta_alarm_start, 6 * 1000000, 99 * 1000000);
static_wait = global.screens * 800000 / 1.1 / global.screens;

fox = false;
foxCount = 0;
//delta_alarm = das + (irandom_range(7, 25) * 1000000); //7-25 + n seconds
delta_alarm = 13 * 1000000; //13 seconds
inputChange = false;

tapCount = 0;
mx = mouse_x;
my = mouse_y;

firstNews = true;
breakingNews = false;
if (room == room_start && x > 0) {
	instance_change(obj_screen_start, true);
	sprite_index = spr_start_col;
	exit;
}
spr_start = spr_start_col;

setScreen = screen_set_col;
var ran = irandom(1);
switch (ran) {
	case 0: fox_sprite = spr_foxy_col0;
	case 1: fox_sprite = spr_foxy_col1;
}
sprite_bn0 = spr_bn0_col;
sprite_bn1 = spr_bn1_col;
sprite_bn2 = spr_bn2_col;

event_inherited();

col = true;

noises[0] = talk1c;
noises[1] = talk2c;
noises[2] = talk3c;
noises[3] = talk4c;
noises[4] = talk5c;
noise = 0;

pressSound = press_tv;
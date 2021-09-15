if (room == room_start && x > 0) {
	instance_change(obj_screen_start, true);
	sprite_index = spr_start_bw;
	exit;
}
spr_start = spr_start_bw;

setScreen = screen_set_bw;
var ran = irandom(1);
switch (ran) {
	case 0: fox_sprite = spr_foxy_bw0;
	case 1: fox_sprite = spr_foxy_bw1;
}
sprite_bn0 = spr_bn0_bw;
sprite_bn1 = spr_bn1_bw;
sprite_bn2 = spr_bn2_bw;

event_inherited();

col = false;
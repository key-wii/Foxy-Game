if (room == room_start && x > 0) {
	instance_change(obj_screen_start, true);
	sprite_index = spr_start_cpu;
	exit;
}
spr_start = spr_start_cpu;

setScreen = screen_set_cpu;
var ran = irandom(1);
switch (ran) {
	case 0: fox_sprite = spr_foxy_cpu0;
	case 1: fox_sprite = spr_foxy_cpu1;
}
sprite_bn0 = spr_bn0_col;
sprite_bn1 = spr_bn1_col;
sprite_bn2 = spr_bn2_col;

event_inherited();

delta_alarm = irandom_range(35, 60) * 1000000; //35-60 seconds

pressSound = press_cpu;
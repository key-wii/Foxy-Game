if (room == room_start && x > 0) {
	instance_change(obj_screen_static, true);
	exit;
}

setScreen = screen_set_cpu;
var ran = irandom(1);
switch (ran) {
	case 0: fox_sprite = spr_foxy_cpu0;
	case 1: fox_sprite = spr_foxy_cpu1;
}

event_inherited();
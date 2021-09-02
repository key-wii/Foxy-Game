if (room == room_start && x > 0) {
	instance_change(obj_screen_static, true);
	exit;
}

setScreen = screen_set_col;
var ran = irandom(1);
switch (ran) {
	case 0: fox_sprite = spr_foxy_col0;
	case 1: fox_sprite = spr_foxy_col1;
}

event_inherited();
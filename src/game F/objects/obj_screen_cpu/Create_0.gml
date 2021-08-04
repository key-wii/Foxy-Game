if (room == room_start) {
	instance_change(obj_screen_static, true);
	exit;
}

setScreen = screen_set_cpu;
fox_sprite = spr_foxy_cpu;

event_inherited();
if (room == room_start) {
	instance_change(obj_screen_static, true);
	exit;
}

setScreen = screen_set_bw;
fox_sprite = spr_foxy_bw;

event_inherited();
if (room == room_start && x > 0) {
	instance_change(obj_screen_static, true);
	exit;
}

setScreen = screen_set_col;
fox_sprite = spr_foxy_col;

event_inherited();
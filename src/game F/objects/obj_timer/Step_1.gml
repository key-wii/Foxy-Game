if (timer <= -13 && (mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right))) {
	global.points = 0;
	global.screens = 0;
	global.start = true;
	instance_destroy(obj_camera);
	room_goto(room_start);
}
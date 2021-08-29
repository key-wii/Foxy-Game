if (!global.start && (mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right))) {
	global.start = true;
	room_goto_next();
}
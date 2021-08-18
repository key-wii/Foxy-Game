if (!start && (mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right))) {
	start = true;
	room_goto_next();
}
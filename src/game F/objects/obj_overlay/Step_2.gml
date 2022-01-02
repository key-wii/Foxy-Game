if ((mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right)) &&
	!obj_global_shader.turn_on && !moving) {
		if (y == 0) {
			moving = true;
			alarm_set(0, 1);
		} else {
			moving = true;
			alarm_set(1, 1);
			global.start = true;
		}
		audio_play_sound(slide, false, false);
}
if (mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right)) {
	if (sprite_index == spr_title) sprite_index = spr_tutorial;
	else {
		global.start = true;
		with (obj_camera)
			cameraY = -room_height / 2;
		instance_destroy();
	}
}
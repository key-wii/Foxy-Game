if (mouse_check_button_pressed(mb_left) &&
	mouse_x >= x && mouse_x <= x + w &&
	mouse_y >= y && mouse_y <= y + h) inputChange = true;
else inputChange = false;

if (fox && inputChange) {
	fox = false;
	if (video_exists(v) && video_is_paused(v)) video_play(v);
	alarm_set(0, irandom(200));
}
if (mouse_check_button_pressed(mb_left) &&
	mouse_x >= x && mouse_x <= x + w &&
	mouse_y >= y && mouse_y <= y + h) inputChange = true;
else inputChange = false;

if (fox && inputChange) {
	fox = false;
	if (video_exists(v) && video_is_paused(v)) video_play(v);
	alarm_set(0, irandom(200));
} else if (!fox && !video_is_playing(v)) {
	if (file_exists(fname)) {
		buffer_delete(buff);
		surface_free(surf);

		video_stop(v);
		video_delete(v);

		instance_create_layer(x, y, layer, object_index);

		instance_destroy();
	}
}
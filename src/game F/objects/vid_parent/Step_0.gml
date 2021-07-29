/// @description Update frame buffer & Delta Alarm

if (video_exists(v)) {
    video_grab_frame_buffer(v, buffer_get_address(buff));
    is_playing = true;
} 

//Delta Alarm
if (delta_alarm > 0) {
	delta_alarm -= delta_time;
	if (delta_alarm <= 0) {
		//Get fox'd lol
		fox = true;
		if (video_exists(v) && video_is_playing(v)) video_pause(v);
	}
}
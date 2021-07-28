/// @description Update the frame buffer

if (video_exists(v)) {
    video_grab_frame_buffer(v, buffer_get_address(buff));
    is_playing = true;
}
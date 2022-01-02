if (delta_alarm_start > static_wait) draw_sprite_stretched(spr_start, image_index, x, y, w_initial, h_initial);
else if (delta_alarm_start > 0) {
	draw_sprite_stretched(spr_screen_static, image_index, x, y, w_initial, h_initial);
	if (!audio_is_playing(snd_static)) audio_play_sound(snd_static, false, false);
}
else draw_self();
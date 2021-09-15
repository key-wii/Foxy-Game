if (delta_alarm_start > static_wait) draw_sprite_stretched(spr_start, image_index, x, y, w_initial, h_initial);
else if (delta_alarm_start > 0) draw_sprite_stretched(spr_screen_static, image_index, x, y, w_initial, h_initial);
else draw_self();
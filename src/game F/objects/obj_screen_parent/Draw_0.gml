if (fox) draw_sprite_stretched(fox_sprite, image_index, x, y, w_initial, h_initial);
else if (delta_alarm_start > 0) draw_sprite_stretched(spr_screen_static, image_index, x, y, w_initial, h_initial);
else draw_self();
display_set_gui_size(window_get_width(), window_get_height());

draw_set_color(c_white);
draw_sprite_stretched(sprite_index, 0, x - 10, y - 10, w + 20, h + 20);

if (fox) {
	draw_sprite_stretched(spr_fox, 0, x, y, w, h);
	with (obj_timer) drop = true;
} else if (video_exists(v)) {

  if (!surface_exists(surf)) {
    surf = surface_create(w, h);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
  }

  buffer_set_surface(buff, surf, 0);
  draw_surface(surf, x, y);
}

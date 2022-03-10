draw_self();

draw_set_font(fnt_timer);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (lost) {
	draw_sprite_ext(spr_hand, 0, x, y, image_xscale / 2, image_yscale / 2, 0, c_white, 1);
	//draw_sprite_ext(spr_hand, 0, x, y, image_xscale / 2, image_yscale / 2, 0, c_black, 1);
}
else {
	draw_sprite_ext(spr_hand, 0, x, y, image_xscale / 2, image_yscale / 2, direction, c_white, 1);
	if (draw_time) draw_text_colour_outline(x, y, string(ceil(timer)), c_red, c_red, 1, c_black, c_black, 1, 8, 10, 1, 1, 0);
}
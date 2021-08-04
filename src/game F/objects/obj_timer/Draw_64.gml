draw_set_font(fnt_timer);
if (timer <= 0) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_colour_outline(display_get_gui_width() / 2, display_get_gui_height() / 2, "Game Over", c_red, c_red, 1, c_orange, c_orange, 1, 2, 10, 1, 1, 0);
} else {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_colour_outline(70, display_get_gui_height() - 30, "points " + string(global.points), c_white, c_white, 1, c_white, c_white, .5, 3, 1, 1, 1, 0);
	//DEBUG
	draw_text_colour_outline(display_get_gui_width() - 70, display_get_gui_height() - 30, "fps " + string(fps), c_white, c_white, 1, c_white, c_white, .5, 3, 1, 1, 1, 0);
}
draw_set_valign(fa_top);

draw_set_halign(fa_left);
draw_text_colour_outline(						   10, 10, "100", c_red, c_orange, 1, c_yellow, c_white, .5, 4, 10, 1, 1, 0);
draw_set_halign(fa_center);
draw_text_colour_outline( display_get_gui_width() / 2, 10, "50", c_red, c_orange, 1, c_yellow, c_white, .5, 4, 10, 1, 1, 0);
draw_set_halign(fa_right);
draw_text_colour_outline(display_get_gui_width() - 10, 10, "0", c_red, c_orange, 1, c_yellow, c_white, .5, 4, 10, 1, 1, 0);
//draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);

draw_set_alpha(.5);
draw_set_halign(fa_left);
var time = timer / maxTimer * 100;
if (!global.gameover) draw_healthbar(display_get_gui_width() - 40, 60, 40, 90, time, c_black, c_red, c_red, 0, false, false);
draw_set_alpha(1);
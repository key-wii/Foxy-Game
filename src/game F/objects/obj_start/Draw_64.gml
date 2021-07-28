draw_set_font(fnt_timer);

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_colour_outline(display_get_gui_width() / 2, display_get_gui_height() / 2, "Ready?", c_yellow, c_yellow, 1, c_black, c_black, 1, 4, 100, 1, 1, 0);
draw_set_valign(fa_top);

draw_set_halign(fa_left);
draw_text_colour_outline(						   10, 10, "2:00", c_red, c_orange, 1, c_yellow, c_white, .5, 4, 10, 1, 1, 0);
draw_set_halign(fa_center);
draw_text_colour_outline( display_get_gui_width() / 2, 10, "1:00", c_red, c_orange, 1, c_yellow, c_white, .5, 4, 10, 1, 1, 0);
draw_set_halign(fa_right);
draw_text_colour_outline(display_get_gui_width() - 10, 10, "0:00", c_red, c_orange, 1, c_yellow, c_white, .5, 4, 10, 1, 1, 0);
//draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);

draw_set_alpha(.5);
draw_set_halign(fa_left);
var time = 100;
draw_healthbar(display_get_gui_width() - 40, 60, 40, 90, time, c_black, c_red, c_red, 0, false, false);
draw_set_alpha(1);
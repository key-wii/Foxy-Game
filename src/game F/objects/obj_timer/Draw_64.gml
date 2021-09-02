if (!global.gameover) {
	draw_set_alpha(.5);
	draw_set_halign(fa_left);
	var time = timer / maxTimer * 100;
	var xx = 0;
	var xx2 = 0;
	var yy = 0;
	if (timer != timer_prev) {
		xx = irandom_range(-1, 1);
		xx2 = irandom_range(-10, 1);
		yy = irandom_range(-1, 1);
		timer_prev = timer;
	}
	draw_healthbar(display_get_gui_width() - 20 + xx, 60 + yy, 20 + xx2, 90 + yy, time, c_black, c_red, c_red, 0, false, false);
}

var f = obj_global_shader.ticks / obj_global_shader.duration_ticks;
if (!global.gameover || (gameover && f > 2)) {
	draw_set_font(fnt_points);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	var xx = display_get_gui_width() / 2;
	var yy = display_get_gui_height() / 2;
	if (timer <= 0) {
		draw_text_colour_outline(xx, yy, "Game Over", c_red, c_red, 1, c_orange, c_orange, 1, 2, 10, 1, 1, 0);
		if (timer <= -13) draw_text_colour_outline(xx, yy + 50, "Play Again?", c_blue, c_blue, 1, c_teal, c_teal, 1, 2, 10, 1, 1, 0);
	}

	if (timer >= 0) {
		draw_set_halign(fa_left);
		var xx = 10;
		var yy = display_get_gui_height() - 30;
		draw_text(xx, yy + 100, "points " + string(global.points));
	}
	else draw_text(xx, yy + 100, string(global.points));
	draw_set_color(c_lime);
	draw_set_halign(fa_right);
	draw_text(display_get_gui_width() - 10, display_get_gui_height() - 30, "fps " + string(fps)); //DEBUG
}

if (!global.gameover) {
	draw_set_font(fnt_timer);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text_colour_outline(						   10, 10, "100", c_red, c_orange, 1, c_yellow, c_white, .5, 4, 10, 1, 1, 0);
	draw_set_halign(fa_center);
	draw_text_colour_outline( display_get_gui_width() / 2, 10, "50", c_red, c_orange, 1, c_yellow, c_white, .5, 4, 10, 1, 1, 0);
	draw_set_halign(fa_right);
	draw_text_colour_outline(display_get_gui_width() - 10, 10, "0", c_red, c_orange, 1, c_yellow, c_white, .5, 4, 10, 1, 1, 0);
	//draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);
}

draw_set_alpha(1);
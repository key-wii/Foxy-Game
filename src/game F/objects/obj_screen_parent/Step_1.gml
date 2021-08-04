if (mouse_check_button_pressed(mb_left) &&
	mouse_x >= x && mouse_x <= x + sprite_width &&
	mouse_y >= y && mouse_y <= y + sprite_height &&
	!global.gameover) inputChange = true;
else inputChange = false;

if (fox && inputChange) {
	global.points++;
	fox = false;
	setScreen();
		if (global.seconds > 120) delta_alarm = irandom_range(1, 4)  * 1000000; //1-4  seconds
	else if (global.seconds > 90) delta_alarm = irandom_range(1, 5)  * 1000000; //1-5  seconds
	else if (global.seconds > 50) delta_alarm = irandom_range(3, 8)  * 1000000; //3-8  seconds
	else if (global.seconds > 25) delta_alarm = irandom_range(5, 15) * 1000000; //5-15 seconds
	else						  delta_alarm = irandom_range(8, 20) * 1000000; //8-20 seconds
} else if (fox) with (obj_timer) drop = true;
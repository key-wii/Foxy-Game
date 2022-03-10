if (room == room_start && x < 0) exit;

for (i = 0; i <= 4; i++) {
	var tap = (device_mouse_check_button_pressed(i, mb_left) || device_mouse_check_button_pressed(i, mb_right));
	if (tap && !global.gameover) {
		part_particles_create(global.P_System, device_mouse_x(i), device_mouse_y(i), global.PartTap, 1);
	}
	if (tap && !global.gameover &&
		device_mouse_x(i) >= x && device_mouse_x(i) <= x + sprite_width &&
		device_mouse_y(i) >= y && device_mouse_y(i) <= y + sprite_height) inputChange = true;
	else inputChange = false;

	//fox screen tap
	if (fox && inputChange) {
		with (obj_timer) foxes--;
		part_particles_create(global.P_System, device_mouse_x(i), device_mouse_y(i), global.PartChange, 1);
		instance_create_layer(device_mouse_x(i) + 40, device_mouse_y(i), "UI", obj_point);
		tapCount = 10;
		mx = device_mouse_x(i);
		my = device_mouse_y(i);
		global.points++;
		fox = false;
		setScreen();
		audio_play_sound(pressSound, false, false);
		
		global.channels++;
		set_tvs_volume();
	
			if (global.seconds > 120) delta_alarm = irandom_range(1, 4)  * 1000000; //1-4  seconds
		else if (global.seconds > 90) delta_alarm = irandom_range(1, 5)  * 1000000; //1-5  seconds
		else if (global.seconds > 50) delta_alarm = irandom_range(3, 8)  * 1000000; //3-8  seconds
		else if (global.seconds > 25) delta_alarm = irandom_range(5, 15) * 1000000; //5-15 seconds
		else						  delta_alarm = irandom_range(8, 20) * 1000000; //8-20 seconds
	} else if (fox) with (obj_timer) drop = true;

	//tiny particles after fox tap
	if (tapCount > 5 && tapCount mod 2 == 0) {
		for (var i = 0; i < 2; i++) {
			var radius = 10 * (9 - tapCount);
			var angle = random(360);
			part_type_direction(global.PartTap2, angle, angle, 0, 0);
			var xx = mx + cos(angle) * radius;
			var yy = my + sin(angle) * radius;
			part_particles_create(global.P_System, xx, yy, global.PartTap2, 1);
		}
	}
	if (tapCount > 0) tapCount -= .2;
}
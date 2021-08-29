if (instance_number(obj_global_shader) > 1) with (instance_nearest(x, y, obj_global_shader)) if (id > other.id) instance_destroy();



application_surface_draw_enable(false);


ticks = 0;
duration_ticks = room_speed * 3;
active = false;
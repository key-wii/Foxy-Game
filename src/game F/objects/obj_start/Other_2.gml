room_speed = 120;

//Set some particles
global.P_System = part_system_create();

global.PartTap = part_type_create();
part_type_shape(global.PartTap, pt_shape_circle);
part_type_size(global.PartTap, .1, .1, .25, 0);
part_type_color1(global.PartTap, c_gray);
part_type_alpha2(global.PartTap, .15, 0);
part_type_life(global.PartTap, 19, 19);
global.PartTap2 = part_type_create();
part_type_shape(global.PartTap2, pt_shape_disk);
part_type_size(global.PartTap2, .12, .12, -.0012, 0);
part_type_color1(global.PartTap2, c_black);
part_type_alpha2(global.PartTap2, .9, 0);
part_type_life(global.PartTap2, 60, 60);
part_type_speed(global.PartTap2, 4, 4, 0, 0);

global.PartChange = part_type_create();
part_type_shape(global.PartChange, pt_shape_flare);
part_type_size(global.PartChange, 1, 1, 4, 0);
part_type_color1(global.PartChange, c_green);
part_type_alpha2(global.PartChange, .2, 0);
part_type_life(global.PartChange, 11, 11);
part_type_blend(global.PartChange, true);
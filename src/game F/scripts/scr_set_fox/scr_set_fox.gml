function set_fox() {
	with (obj_timer) foxes++;
	fox = true;
	foxCount = 10;
	sprite_index = fox_sprite;
		
	frameDuration = frameSpeed * image_number;
	image_index = frameDuration;
	frameCounter = image_index;
	
	global.channels--;
	set_tvs_volume();
}
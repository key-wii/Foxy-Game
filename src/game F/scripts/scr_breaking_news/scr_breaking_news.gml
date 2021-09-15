function breaking_news() {
	var bn = irandom(2);
	switch (bn) {
		case 0: sprite_index = sprite_bn0; break;
		case 1: sprite_index = sprite_bn1; break;
		case 2: sprite_index = sprite_bn2; break;
	}
	frameDuration = frameSpeed * image_number;
	image_index = frameDuration;
	frameCounter = image_index;
	
	breakingNews = true;
}
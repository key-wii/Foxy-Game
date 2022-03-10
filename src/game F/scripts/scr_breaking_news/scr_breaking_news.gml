function breaking_news() {
	var bn = irandom(2);
	switch (bn) {
		case 0: 
			sprite_index = sprite_bn0;
			if (global.newsStarted == 0) audio_play_sound(breaking_news3, false, false);
			break;
		case 1: 
			sprite_index = sprite_bn1;
			if (global.newsStarted == 0) audio_play_sound(breaking_news2, false, false);
			break;
		case 2: 
			sprite_index = sprite_bn2;
			if (global.newsStarted == 0) audio_play_sound(breaking_news, false, false);
			break;
	}
	frameDuration = frameSpeed * image_number;
	image_index = frameDuration;
	frameCounter = image_index;
	
	breakingNews = true;
	global.newsStarted = 5;
}
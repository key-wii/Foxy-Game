if (keyboard_check_pressed(vk_tab) && keyboard_check_pressed(vk_shift)) game_restart();

if ((timer <= -13 && (mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right))) ||
	timer <= -600) {
	game_restart();
	/*global.points = 0;
	global.screens = 0;
	global.start = true;
	global.seconds = 0;
	global.gameover = false;
	audio_play_sound(press_tv, false, false);
	room_goto(room_start);*/
}
/// @description Move to next room
if (!down) {
	cameraY -= 3;
	if (cameraY < -100) down = true;
} else {
	if (cameraY < room_height / 4) cameraY += 12;
	else cameraY += 20;
	if (cameraY > room_height * 2) room_goto_next();
}
alarm_set(1, 1);
y -= spd;

var wspd = spd;
if (count < 1000000 / 8) wspd = 5;
if (w) {
	x += 2;
	if (wiggle > w_max / 2) wiggle += 1 * wspd / 2;
	else wiggle += 2 * wspd / 2;
	if (wiggle > w_max) {
		wiggle = 0;
		w = false;
	}
} else {
	x -= 2;
	if (wiggle < -w_max / 2) wiggle -= 1 * wspd / 2;
	else wiggle -= 2 * wspd / 2;
	if (wiggle < -w_max) {
		wiggle = 0;
		w = true;
	}
}

count += delta_time;
if (count > 1000000 && y < 300) alpha -= .01;
if (y < 120) alpha -= .05;
if (y < 110) alpha -= .05;
if (alpha < 0) instance_destroy();

//Delta Alarm 0
if (delta_alarm0 > 0) {
	delta_alarm0 -= delta_time;
	if (delta_alarm0 <= 0) {
		spd += .1;
		delta_alarm1 = 1000000 / 6; //alarm_set(1, 10);
	}
}

//Delta Alarm 1
if (delta_alarm1 > 0) {
	delta_alarm1 -= delta_time;
	if (delta_alarm1 <= 0) {
		if (spd < 8) spd += .2;
		if (spd > 5) w_max += .1;
		delta_alarm1 = 1000000 / 60; //alarm_set(1, 1);
	}
}
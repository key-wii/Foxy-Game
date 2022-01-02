/// @description  Advance time.
var is_compiled = shader_is_compiled(crtshutdown_shader);
if (!is_compiled) exit;

if (active)
    ticks++;
else if (turn_on) {
	var f = ticks / duration_ticks;
	if (f > .5) ticks -= 1;
	ticks -= .45;
	if (ticks <= -room_speed / 2) turn_on = false;
}
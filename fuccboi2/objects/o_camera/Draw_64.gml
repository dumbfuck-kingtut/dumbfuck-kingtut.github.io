count++;
if count >= 20 {
	draw_set_color(c_white);
	draw_set_alpha(falloff);
	draw_rectangle(0, 0, 10000, 10000, false);
	draw_set_alpha(1);
	falloff -= .02;
}
if falloff <= 0 {
	instance_destroy();
}
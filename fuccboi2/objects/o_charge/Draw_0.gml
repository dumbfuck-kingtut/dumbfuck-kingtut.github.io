surface_set_target(global.gameplay);
x = SNART.x;
y = SNART.y;
count -= 2;
draw_set_color(c_white);
draw_circle_width(x, y, count, 4, true);
if count <= 0 {
	if irandom(1) {
		instance_create(x, y, o_bullet1);
	} else {
		instance_create(x, y, o_bulletwo);
	}
	instance_destroy();
}
surface_reset_target();
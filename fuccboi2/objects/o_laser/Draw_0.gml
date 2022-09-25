surface_set_target(global.gameplay);
draw_set_color(c_white);
draw_line_width(x, y, x-999, y, width);
width = lerp(width, 0, .1);
if width > 5 {
	if collision_line(x, y+width/2, x-999, y+width/2, o_mordecai, true, false) || collision_line(x, y-width/2, x-999, y-width/2, o_mordecai, true, false) {
		with o_mordecai {
			if !inv {
				hp--;
				inv = 120;
				hspd = -5;
				vspd = -4;
				y -= 5;
			}
		}
	}
}
if width <= .5 instance_destroy();
surface_reset_target();
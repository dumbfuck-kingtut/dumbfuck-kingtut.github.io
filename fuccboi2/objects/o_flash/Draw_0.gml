dude -= 3.5;
if !dude instance_destroy();
surface_set_target(global.gameplay);
draw_set_color(c_white);
draw_set_alpha(dude/100);
draw_rectangle(0, 0, 99999, 99999, false);
draw_set_alpha(1);
surface_reset_target();
surface_set_target(global.gameplay);
draw_set_alpha(1-(inv==true)*.5);
draw_self();
draw_set_alpha(1);
surface_reset_target();
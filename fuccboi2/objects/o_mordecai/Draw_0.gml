surface_set_target(global.gameplay);
draw_set_alpha(1-(inv==true)*.5);
draw_self();
draw_set_alpha(1);
var i;
draw_set_color(c_white);
for (i=0; i<hp; i++) {
	draw_rectangle(x+(i%4)*8-16, y+floor(i/4)*8+40, x+(i%4)*8-16+5, y+5+floor(i/4)*8+40, false);
}
surface_reset_target();
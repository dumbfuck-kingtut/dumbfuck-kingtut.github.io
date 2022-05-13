count = lerp(count, 110, .1);
surface_set_target(global.gameplay);
image_blend = make_color_hsv(0, 0, 255-count);
draw_self();
//draw_point(x,bbox_top-32);
surface_reset_target();
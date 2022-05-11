//if room = 
draw_surface_stretched(global.gameplay, 1600-o_mordecai.x*3, 0, 18000, 1080);
surface_set_target(global.gameplay);
draw_clear_alpha(c_white, 0);
draw_sprite(bk_grass, 0, 0, 0);
surface_reset_target();
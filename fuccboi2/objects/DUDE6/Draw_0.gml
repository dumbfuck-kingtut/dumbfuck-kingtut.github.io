//if room = 
draw_surface_stretched(global.gameplay, 500-o_mordecai.x*3, 0, 18000, 1080);
draw_surface(global.apain, o_hurts.x*3-1000, 0);
surface_set_target(global.gameplay);
draw_clear_alpha(c_white, 0);
draw_sprite(bk_grass, 0, 0, 0);
draw_sprite(bk_grass, 0, 1576, 0);
draw_sprite(bk_grass, 0, 1576*2, 0);
draw_sprite(bk_grass, 0, 1576*3, 0);
   
tileMapA = layer_tilemap_get_id(layer_get_id("Tiles_1"));
draw_tilemap(tileMapA,0,0);
   
surface_reset_target();
layer_set_visible(layer_get_id("Tiles_1"),0);

if o_mordecai.x <= -200 {
	audio_stop_all();
	room_goto_next();
}
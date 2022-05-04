if txtprocessed {
	//surface_set_target(global.surfaces.HUD);
	draw_sprite(bg, 0, 0, 0);
	//draw_self();
	//log(talker, talkindex, spriteposx, spriteposy);
	for (i=0; i<array_length(talker); i++) {
		draw_sprite_ext(talker[i], talkindex[i], x+(i-3)*width/7+width/7, y, -ineg(i<2), 1, 0, c_white, 1);
	}
	draw_set_color(c_black)
	draw_rectangle(x-width/2, y, x+width/2, y+height, false);
	draw_set_color(c_white);
	draw_rectangle(x-width/2, y, x+width/2, y+height, true);
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	draw_text(x+width/20-width/2, y-6, name);
	draw_set_valign(fa_top);
	//var otherfonts = draw_get_font();
	draw_set_font(Font1);
	clr = c_white;
	
	var clrdur = 0;
	var xpos = 0;
	var lb = 0;
	sizemult = 1;
	var effchars = drawchars;
	specialchars = 0;
	wigglex = 0;
	wiggley = 0;
	shake = 0;
	sizepos = 0;
	pressing = 0;
	fontsize = font_get_size(draw_get_font())-22;
	for (i=1; i<=effchars; i++) {
		
		while string_char_at(msg[talkpos].text, i) = "|" {
	        c_txtspecial();
	    }
		effchars = drawchars+specialchars;
		//log(wiggle);
	    draw_text_ext_transformed_colour(
			x+width/20+xpos*(fontsize)-width/2+cos((count+i*2)/(talkspeed*20))*wigglex+random(shake/2)-shake/4+20,
			y+(fontsize)+lb*(fontsize*2)+sin((count+i*2)/(talkspeed*20))*wiggley+random(shake/2)-shake/4,
			string_hash_to_newline(string_char_at(msg[talkpos].text, i)),
			0, 999, sizemult, sizemult, 0, clr, clr, clr, clr, 1
		);
		//font_get_italic()
		
	    if string_char_at(msg[talkpos].text, i) = "#" {
	        lb++;
	        xpos = -1;
	    }
	    xpos += sizemult;
	    //clrdur--;
		
	}
	//draw_set_font(otherfonts);
	//surface_reset_target();
}

//ds_map_add

/* */
/*  */

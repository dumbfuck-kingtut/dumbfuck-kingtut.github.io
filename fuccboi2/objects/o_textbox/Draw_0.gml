if txtprocessed {
	//surface_set_target(global.surfaces.HUD);
	draw_set_alpha(fartalpha);
	draw_sprite(bg, 0, 0, 0);
	draw_set_alpha(1);
	//draw_self();
	//log(talker, talkindex, spriteposx, spriteposy);
	draw_set_font(Font12);
	var guy = 999;
	for (i=array_length(talker)-1; i>=0; i--) {
		//log(i);
		//log(talker[i]);
		//draw_sprite_ext(talker[i], talkindex[i], x+(i-2)*width/7+width/7, spriteposy, -ineg(i<2), 1, 0, c_white, 1);
		draw_sprite_ext(talker[i].sprite,
		talker[i].index,
		x+(talker[i].position-2)*width/7,
		y,
		ineg(talker[i].position >= SPRITEPOS.CENTER),
		1, 0, make_color_hsv(0, 0, 255-(i>0)*100), talker[i].position <= SPRITEPOS.RIGHT);
	}
	//draw_set_color(c_black);
	if !farts {
		draw_sprite(s_textbox, 0, x, y);
		if talker[0].name == "SNART" {
			var shits = chr(irandom(52)+65)+chr(irandom(52)+65)+chr(irandom(52)+65)+chr(irandom(52)+65)+chr(irandom(52)+65);
			draw_text(x+width/20-width/2+30, y-55, shits);
		} else {
			draw_text(x+width/20-width/2+30, y-55, name);
		}
	}
	//draw_rectangle(x-width/2, y, x+width/2, y+height, false);
	//draw_set_color(c_white);
	//draw_rectangle(x-width/2, y, x+width/2, y+height, true);
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	
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
		var centerOffset = 0;

		//calculations for center and right offsets
		if(draw_get_halign() == fa_center || draw_get_halign() == fa_right){
		//if(true){
			var lineList = string_split(msg[talkpos].text,"#")

			//get the length of this line
			var msglen = string_length(lineList[lb])
			
			//do some math with it
			centerOffset = ((width/(fontsize+5))) - msglen;
			if(draw_get_halign() == fa_center)
				centerOffset/=2;
		}
		
		var textWiggleX = cos((count+i*2)/(talkspeed*20))*wigglex;
		var textWiggleY = sin((count+i*2)/(talkspeed*20))*wiggley;
		var textXPosition = x+width/20+(xpos+centerOffset)*(fontsize)-width/2+textWiggleX+random(shake/2)-shake/4+20;
		var textYPosition = y+(fontsize)+lb*(fontsize*2)+textWiggleY+random(shake/2)-shake/4+40
		var theText = string_hash_to_newline(string_char_at(msg[talkpos].text, i));
	    draw_text_ext_transformed_colour(textXPosition,textYPosition,theText,0, 999, sizemult, sizemult, 0, clr, clr, clr, clr, 1);
		
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

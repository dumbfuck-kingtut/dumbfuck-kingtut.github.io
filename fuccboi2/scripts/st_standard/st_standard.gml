function st_standard() {
	hput = right-left;
	//vput = down-up;
	hspd = lerp(hspd, hput*3.5, .1);
	inv--;
	
	var a = {bbox_left: bbox_left,
		bbox_top:bbox_top+grav,
		bbox_right: bbox_right,
		bbox_bottom:bbox_bottom+grav}
	var ymeeting = bread_collision(a,o_solid,COLTYPE.LESSTHAN)
	
	if !ymeeting {
	    vspd += grav;
	    leniance--;
	    aerial = true;
	} else { //.gravity
	    leniance = 5;
		if aerial {
			aerial = false;
			audio_play_sound(se_talk2, 0, false);
		}
	    vspd = 0;
	}
	//vspd = lerp(vput*5, vspd, .1);
	
	if leniance > 0 {
	    if (jump) {
			audio_play_sound(se_jump, 0, false);
	        vspd = jspd;
	        leniance = 0;
	    }
	}
	//.held jump?
	if vspd < 0 {
	    if (jumpr) {
	        vspd = vspd/2;
	    }
	}


	//c_basiccollision();
	c_newcollision();
	
	x += hspd;
	y += vspd;
	

	
	///st_standard();
//for real this time
//.gravity if floored

//.leniance 
	if aerial {
		if vspd <= 0 {
			sprite_index = s_mordjump;
		} else {
			sprite_index = s_mordfall;
			if vspd > .8 {
				image_index = 1;
			} else {
				image_index = 0;
			}
		}
	} else {
		if hput == 0 {
			sprite_index = s_mordstand;
		} else if sign(hspd) != sign(hput) {
			sprite_index = s_mordrunturn;
		} else {
			sprite_index = s_mordrun;
			image_speed = .4;
		}
	}
	if(hput != 0){
		if(image_xscale > hput)
			x--;
		if(image_xscale < hput)
			x++;
		if hput != 0 image_xscale = hput;
	}
}
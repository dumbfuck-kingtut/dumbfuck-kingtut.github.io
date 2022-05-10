function st_standard() {
	hput = right-left;
	//vput = down-up;
	hspd = lerp(hspd, hput*5, .1);
	
	if !place_meeting(x, y+1, o_solid) {
	    vspd += grav;
	    leniance--;
	    aerial = true;
	} else { //.gravity
	    leniance = 5;
	    aerial = false;
	    y = floor(y);
	    vspd = 0;
	}
	//vspd = lerp(vput*5, vspd, .1);
	
	if leniance > 0 {
	    if (jump) {
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
	//.buggy fix for something
	if abs(hspd) < 0.2 && !aerial {
	    hspd = 0;
	}
	y = floor(y);
	c_basiccollision();
	y = floor(y);
	
	x += hspd;
	y += vspd;
	
	y = floor(y);
	
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
	if hput != 0 image_xscale = hput;
}
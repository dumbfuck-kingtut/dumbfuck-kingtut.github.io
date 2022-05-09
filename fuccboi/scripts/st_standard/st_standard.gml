function st_standard() {
	hput = right-left;
	//vput = down-up;
	hspd = lerp(hput*5, hspd, .1);
	
	if !place_meeting(x, y+clamp(sign(vspd), 0, 1), o_solid) {
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

	c_basiccollision();

	x += hspd;
	y += vspd;
	
	///st_standard();
//for real this time
//.gravity if floored

//.leniance 

}
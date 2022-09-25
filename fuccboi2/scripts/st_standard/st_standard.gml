function st_standard() {
	hput = 1-left*.5+right*.5;
	//vput = down-up;
	hspd = lerp(hspd, hput*3.5, .1);
	inv--;
	
	if vspd >= 0 {
		var a = {bbox_left: bbox_left,
			bbox_top:bbox_top+grav,
			bbox_right: bbox_right,
			bbox_bottom:bbox_bottom+grav}
		var ymeeting = bread_collision(a,o_solid,COLTYPE.LESSTHAN);
	} else {
		var ymeeting = false;
	}
	
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
	if vspd >= 0 {
		c_newcollision();
	}
	
	x += hspd;
	y += vspd;
	y = min(y, 1000);

	
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
		} else if left {
			sprite_index = s_mordwalk;
			image_speed = .4;
		} else {
			sprite_index = s_mordrun;
			image_speed = .4;
		}
	}
	if x >= 16000 {
		with all {
			x -= 16000;
		}
		instance_create(0, 0, o_flash);
	}
	if inv image_alpha = .4 else image_alpha = 1;
	
	if hp <= 0 room_goto(Room16)
	
	if collision_point(x, y, SNART, false, true) {
		audio_stop_all();
		room_goto(Room15);
	}
	//if hspd > 3.5 && right {
		SNART.x += lerp(hspd, 3.5, hspd > 3.5 ? .21 : .7);
	//}
}

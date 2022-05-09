function st_standard() {
	hput = right-left;
	//vput = down-up;
	hspd = lerp(hput*5, hspd, .1);
	//vspd = lerp(vput*5, vspd, .1);
	if !place_meeting(x, y+vspd, o_solid) {
		vspd += grav;
	} else {
		vspd = 0;
		if jump {
			vspd = jspd;
		}
	}
	x += hspd;
	y += vspd;
}
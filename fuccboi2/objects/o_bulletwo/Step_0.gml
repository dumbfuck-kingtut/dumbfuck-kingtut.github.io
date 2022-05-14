x += hspd;
y += vspd;
vspd += .2;
if vspd && y >= o_mordecai.y {
	vspd = 0
	hspd = lerp(hspd, -2, .2);
}
if place_meeting(x, y, o_mordecai) {
	with o_mordecai {
		if !inv {
			hp--;
		}
		inv = 120;
		hspd = -5;
		vspd = -4;
		y -= 5;
		
	}
	instance_destroy();
}
x += hspd;
y += vspd;
if y >= 300 {
	vspd = 0;
	hspd = lerp(hspd, -2, .2);
	image_angle += 3;
} else {
	vspd += .2;
	image_angle++;
}
if place_meeting(x, y, o_mordecai) {
	with o_mordecai {
		if !inv {
			hp--;
			inv = 120;
			hspd = -5;
		vspd = -4;
		y -= 5;
		}
		
		
		
	}
}
x -= 3.5;
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
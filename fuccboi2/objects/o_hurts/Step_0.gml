x += 3.5;
if collision_rectangle(x-200, 0, x, 360, o_mordecai, false, false) {
	o_mordecai.x = x;
	with o_mordecai {
		if !inv {
			hp--;
			inv = 120;
			
		}
		hspd = 18;
			vspd = -4;
			y -= 5
		
	}
}
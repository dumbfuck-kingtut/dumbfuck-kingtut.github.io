x++;
if collision_rectangle(x-200, 0, x, 360, o_mordecai, false, false) {
	with o_mordecai {
		if !inv {
			hp--;
		}
		inv = 120;
		hspd = 18;
		vspd = -4;
	}
}
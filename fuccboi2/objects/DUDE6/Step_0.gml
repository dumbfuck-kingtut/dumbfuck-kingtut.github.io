count++;
if !collision_point(o_mordecai.x, 300, o_solid, false, true) {
	instance_create(o_mordecai.x, 300, o_solid);
}
if ncm(16) && o_mordecai.hspd {
	instance_create(o_mordecai.x+500, 140+sin(count/40)*60, o_solid);
}

if !(irandom(300)) {
	
}
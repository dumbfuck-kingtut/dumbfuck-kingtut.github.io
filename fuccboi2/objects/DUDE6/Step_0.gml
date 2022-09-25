count++;
if !collision_point(o_mordecai.x, 300, o_solid, false, true) {
	instance_create(o_mordecai.x, 300, o_solid);
}
if ncm(30) && o_mordecai.hspd {
	instance_create(o_mordecai.x+500, 190+sin(count/100)*80, o_solid);
}

if !(irandom(300)) {
	
}
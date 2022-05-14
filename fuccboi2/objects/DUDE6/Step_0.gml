count++;
if !collision_point(o_mordecai.x, 300, o_solid, false, true) {
	instance_create(o_mordecai.x, 300, o_solid);
}
if ncm((irandom(5)+1)*10) && o_mordecai.hspd {
	with instance_create(o_mordecai.x+500, 300-(irandom(6)+1)*32, o_solid) {sprite_index = Sprite101136}
}

if !(irandom(300)) {
	instance_create(o_mordecai.x+500, 300-32, o_bounce);
}
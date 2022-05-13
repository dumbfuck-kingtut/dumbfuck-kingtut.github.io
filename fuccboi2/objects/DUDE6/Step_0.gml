count++;
if !collision_point(o_mordecai.x, 300, o_solid, false, true) {
	instance_create(o_mordecai.x, 300, o_solid);
}
if ncm(20) && o_mordecai.hspd {
	with instance_create(o_mordecai.x+500, 300-(irandom(6)+1)*32, o_solid) {sprite_index = Sprite101136}
}
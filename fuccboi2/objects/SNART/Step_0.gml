c_input();
//x += 3.5;
//x = max(x-.9, o_mordecai.x);
if !dontmove {
	if whai > o_mordecai.y vspd -= .1;
	if whai < o_mordecai.y vspd += .1;
	y = lerp(y, o_mordecai.y, .05);
}
whai += vspd;
var guy = abs(point_distance(x, y, o_mordecai.x, o_mordecai.y)-700);
if abs(x-o_mordecai.x) < 120 {
	y += irandom(guy/100)-guy/200;
	x += irandom(guy/100)-guy/200;
}
x = max(x, o_mordecai.x);

count++;
if abs(x-o_mordecai.x) > 290 {
	if ncm(80-round(guy/35)) && abs(x-o_mordecai.x) >= 120 {
		instance_create(x, y, o_charge);
	}
} else {
	if ncm(8) && count%80 < 24 && abs(x-o_mordecai.x) >= 120 {
		instance_create(x, y, o_charge);
	}
}

dontmove = false;
//phy
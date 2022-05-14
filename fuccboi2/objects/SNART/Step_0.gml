x += 3.5;
x = max(x-.9, o_mordecai.x);
if whai > o_mordecai.y vspd -= .1;
if whai < o_mordecai.y vspd += .1;



whai += vspd;

y = lerp(y, o_mordecai.y, .05);
var guy = abs(point_distance(x, y, o_mordecai.x, o_mordecai.y)-700);
if abs(x-o_mordecai.x) < 120 {
	y += irandom(guy/100)-guy/200;
	x += irandom(guy/100)-guy/200;
}

count++;
if ncm(80-round(guy/35)) && abs(x-o_mordecai.x) >= 120 {
	instance_create(x, y, o_charge);
}


//phy
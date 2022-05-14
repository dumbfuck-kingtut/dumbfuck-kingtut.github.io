x += 3.5;
x = max(x-.1, o_mordecai.x);
if whai > o_mordecai.y vspd -= .1;
if whai < o_mordecai.y vspd += .1;

whai += vspd;

y = lerp(y, o_mordecai.y, .05);
var guy = abs(point_distance(x, y, o_mordecai.x, o_mordecai.y)-700);
y += irandom(guy/100)-guy/200;
x += irandom(guy/100)-guy/200;


//phy
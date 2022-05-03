txtprocessed = false;
keyboard_check_advanced = keyboard_check;
msgscript = txt_test;
name = "";
clr = c_white;
//draw_set_font(fm_couriernewreallybig);
msg = [txt()];
talkspeed = .5;
endevent = c_null;
talkchars = [];

width = 300;
height = 100;
spriteposx = 0;
spriteposy = 0;
talker = [s_null, s_null, s_null, s_null, s_null];
talkindex = [0, 0, 0, 0, 0];
count = 0;

waiting = 0;
waited = array_create(20);
pressing = 0;
pressed = array_create(20);
wait = 0;
wigglex = 0;
wiggley = 0;
shake = 0;
selecting = false;
skipped = false;
specialchars = 0;
advance = true;

bg = s_null;
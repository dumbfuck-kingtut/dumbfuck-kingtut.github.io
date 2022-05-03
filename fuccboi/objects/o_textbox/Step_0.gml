c_input();
log(select);
count++;

if !txtprocessed {
    msgscript();
    txtprocessed = true;
	talksize = array_length(msg);
	talkpos = 0;
	talklength = string_length(msg[talkpos].text)+1;
	drawing = ""
	drawchars = 0;
	name = msg[talkpos].name;
	msg[talkpos].event();
	spritepos = msg[talkpos].spritepos
	talker[spritepos] = global.textguy[?string_lower(name)];
	talkindex[spritepos] = msg[talkpos].sprite;
	if msg[talkpos].bg != "UNCHANGED" bg = msg[talkpos].bg;
}

if wait {
	wait--;
	exit;
}


if ctrlh {
    select = true;
}
if !advance {
	select = false;
}
if selecting {
	select = true;
	selecting = false;
}

if drawchars <= talklength {
    skip = select;
    drawchars += talkspeed;
    if skip { //yeah almost
		while drawchars <= talklength && string_copy(msg[talkpos].text, drawchars+specialchars, 2) != "|w" {
			//log(string_copy(msg[talkpos].text, drawchars, 2))
			drawchars++;
		}
    }
    message_draw = string_copy(msg[talkpos].text, 0, drawchars);
} else { 
    if select {
        if (talkpos < talksize-1) {
			talkpos++;
			talklength = string_length(msg[talkpos].text);
			drawing = "";
			drawchars = 0;
			name = msg[talkpos].name;
			msg[talkpos].event();
			spritepos = msg[talkpos].spritepos
			talker[spritepos] = global.textguy[?string_lower(name)];
			talkindex[spritepos] = msg[talkpos].sprite;
			if msg[talkpos].bg != "UNCHANGED" bg = msg[talkpos].bg;
        } else {
			endevent();
            instance_destroy();
        }
    }
}
c_input();
count++;

if !txtprocessed {
    msgscript();
    txtprocessed = true;
	talksize = array_length(msg);
	talkpos = 0;
	talklength = string_length(msg[talkpos].text)+1;
	drawing = ""
	drawchars = 0;
	msg[talkpos].event();
	skipped = false;
	c_charpush(new talkchar(msg[talkpos].sprite, msg[talkpos].name, msg[talkpos].spritepos));
	name = msg[talkpos].name;
	if msg[talkpos].bg != "UNCHANGED" bg = msg[talkpos].bg;
}
fartalpha += .01*(bg != s_null);
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


if drawchars <= talklength && !skipped {
    skip = select;
    drawchars += talkspeed;
	if ncm(6) {
		switch name { //DONT DO THIS
			case "Mordecai":
				guy = audio_play_sound(se_rigby, 0, false);
				audio_sound_pitch(guy, random(1)+.5);
				//audio_sound_gain(guy, 2, 0);
				break;
			case "Rigby":
				guy = audio_play_sound(se_talk2, 0, false);
				audio_sound_pitch(guy, random(1)+.5);
				break;
			case "SNART":
				guy = audio_play_sound(se_snart, 0, false);
				audio_sound_pitch(guy, random(1)+.5);
				//audio_sound_gain(guy, 2, 0);
				break;
		}
	}
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
			skipped = false;
			c_charpush(new talkchar(msg[talkpos].sprite, msg[talkpos].name, msg[talkpos].spritepos));
			if msg[talkpos].bg != "UNCHANGED" bg = msg[talkpos].bg;
        } else {
			endevent();
            instance_destroy();
        }
    }
}
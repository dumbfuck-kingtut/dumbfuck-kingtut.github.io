function c_charpush(char) {
	var i;
	for (i=0; i<array_length(talker); i++) {
		log(i);
		log(char);
		log(talker);
		if char.name == talker[i].name {
			if char.position == SPRITEPOS.REPLACE {
				char.position = talker[i].position;
			}
			array_delete(talker, i, 1);
			i--;
		}
	}
	array_insert(talker, 0, char);
}

function talkchar(spriteindex_=s_null, name_="", position_=SPRITEPOS.HIDDEN) constructor {
	sprite = global.textguy[?string_lower(name_)];
	name = name_;
	index = spriteindex_;
	position = position_;
}
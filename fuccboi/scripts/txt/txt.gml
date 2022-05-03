function txt(text_=c_errorstring(), name_="", sprite_=0, spritepos_=SPRITEPOS.LEFT, bg_="UNCHANGED", event_=c_null) {
	return {
		text: text_,
		name: name_,
		sprite: sprite_,
		event: event_,
		spritepos: spritepos_,
		bg: bg_,
	};
}//not technically a constructor since dont wanna write new every time

enum SPRITEPOS {
	LEFT,
	MIDLEFT,
	CENTER,
	MIDRIGHT,
	RIGHT,
}
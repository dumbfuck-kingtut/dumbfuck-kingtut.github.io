function txt_12() {
	//>("____________________________________")
	msg =  [
	
	txt("...Margaret?", "Mordecai", MORDECAI.SEVEN, SPRITEPOS.MIDRIGHT, bk_coffee),
	txt("(What's going on? It should be her shift right now)", "Mordecai", MORDECAI.EIGHT),
	txt("(Actually, it's not just her.#There's no one here at all?)", "Mordecai", MORDECAI.EIGHT, u, bk_coffee2),
	txt("(Wait, what's that?)", "Mordecai", MORDECAI.EIGHT, SPRITEPOS.HIDDEN, bk_note1),
	txt("Wha-", "Mordecai", MORDECAI.SEVEN, u, bk_notwo),
	
	]
	
	endevent = function(){instance_create(0, 0, o_glitch)};
}
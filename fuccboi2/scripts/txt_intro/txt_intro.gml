function txt_intro() {
	//>("________________________________________________________________")
	msg =  [
	
	txt("Oh?", "SNART", u, u, u, function() {y -= 750; farts = true; audio_play_sound(m_eerie, 0, true)}),
	txt("So you've finally made it?", "SNART"),
	txt("It's nice to see that I've got at least one loyal subject.", "SNART"),
	txt("Maybe those two did not completely fail me...", "SNART", u, u),
	ntxt(100),
	txt("...", "SNART", u, u, bk_snart, function() {y += 750; farts = false}),
	txt("Who the fuck is this guy talking to", "Rigby", u, u, u),
	txt("Foolish badger.", "SNART"),
	txt("What? Badgers don't have ringed tails I'm clearly#a fucking raccoon", "Rigby"),
	txt("...", "SNART"),
	txt("It seems you are even more disappointing in-person.", "SNART"),
	txt("Hey, what's that supposed to mean, man?", "Mordecai"),
	txt("Perhaps I should explain...", "SNART"),
	
	txt("", ""),
	
	]
	endevent = function(){audio_stop_all() room_goto_next()};
}
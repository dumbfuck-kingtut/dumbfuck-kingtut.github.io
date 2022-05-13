function txt_intro() {
	//>("________________________________________________________________")
	msg =  [
	
	txt("Oh?", "SNART", u, u, u, function() {y -= 350; farts = true; audio_play_sound(m_eerie, 0, true)}),
	txt("So you've finally made it?", "SNART"),
	txt("It's nice to see that I've got at least one loyal subject.", "SNART"),
	txt("Maybe those two did not completely fail me...", "SNART", u, u),
	ntxt(100, u, u, u, bk_snart),
	txt("...", "SNART", u, u, u, function() {y += 350; farts = false}),
	txt("Who the fuck is this guy talking to", "Rigby", RIGBY.SEVEN, SPRITEPOS.RIGHT),
	txt("Foolish badger.", "SNART"),
	txt("What? Badgers don't have ringed tails I'm clearly#a fucking raccoon", "Rigby", RIGBY.EIGHT, SPRITEPOS.RIGHT),
	txt("...", "SNART"),
	txt("It seems you are even more disappointing in-person.", "SNART"),
	txt("Hey, what's that supposed to mean, man?", "Mordecai", MORDECAI.SIX, SPRITEPOS.RIGHT),
	txt("Perhaps I should explain...", "SNART"),
	
	txt("Long ago, I gifted you quite a special opportunity.", "SNART"),
	txt("I granted you access to the world's most popular social media platform in hopes that you would achieve something great for me.", "SNART"),
	txt("What are you talking about? Rigby had the idea to make us an Instagram account", "Mordecai", MORDECAI.SIX, SPRITEPOS.RIGHT),
	txt("Yeah! Stop taking credit for shit we did!", "Rigby", RIGBY.EIGHT, SPRITEPOS.RIGHT),
	txt("Is that so?", "SNART"),
	txt("Perhaps you've forgotten where you acquired that cellphone. I couldn't blame you, it's been many years.", "SNART"),
	txt("The phone...?", "Mordecai", MORDECAI.SEVEN, SPRITEPOS.RIGHT),
	txt("(Wait, that's right... Rigby said he just found the phone somewhere in the park...)", "Mordecai", MORDECAI.EIGHT, SPRITEPOS.RIGHT),
	txt("So, you put that left that phone in the park that day for us? ", "Mordecai", MORDECAI.SEVEN, SPRITEPOS.RIGHT),
	txt("Precisely.", "SNART"),
	txt("You have always acted within my planned expectations.", "SNART"),
	txt("Your free will is merely an illusion.", "SNART"),
	txt("Who's will?", "Rigby", RIGBY.SEVEN, SPRITEPOS.RIGHT),
	txt("Dude, it's so obvious you're making this up. How can you have any control over us? I choose to do stuff all the time on my own free will", "Mordecai", MORDECAI.SIX, SPRITEPOS.RIGHT),
	txt("Well, of course I have no hand in your exact decisions.", "SNART"),
	txt("But you exist within my world. ", "SNART"),
	txt("Dude we literally don't", "Rigby", RIGBY.EIGHT, SPRITEPOS.RIGHT),
	txt("Have you ever wondered why you can't see color?", "SNART"),
	txt("A world of black and white. You are living evidence of my reign. ", "SNART"),
	txt("How can you still deny my control when I influence the very nature of your being?", "SNART"),
	
	txt("", ""),
	
	]
	endevent = function(){audio_stop_all() room_goto_next()};
}
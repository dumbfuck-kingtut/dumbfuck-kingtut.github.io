function txt_() {
	//>("________________________________________________________________")
	msg =  [
	
	txt("Uggggggh im so boredddd", "Rigby", RIGBY.TWO, SPRITEPOS.RIGHT, bk_bedroom, function() {audio_play_sound(m_josuke, 0, true)}),
	txt("Yeahh... Ever since Benson smashed our dreamcast in a blind rage#when we accidentally ran over his double platinum J's#with the cart there's nothing to do for fun anymore", "Mordecai", MORDECAI.TWO, SPRITEPOS.LEFT),
	txt("AGGHGHGHHHHH", "Rigby", RIGBY.THREE, SPRITEPOS.RIGHT),
	txt("...Wait, i've got an idea", "Rigby", RIGBY.FIVE, SPRITEPOS.RIGHT),
	txt("What?", "Mordecai", MORDECAI.SEVEN, SPRITEPOS.LEFT),
	txt("We should, like, do social media.", "Rigby", RIGBY.FOUR, SPRITEPOS.RIGHT),
	txt("Dude, we don't even have a phone.", "Mordecai", MORDECAI.SEVEN, SPRITEPOS.LEFT),
	txt("Right here dude, right here.", "Rigby", RIGBY.ONE, SPRITEPOS.RIGHT),
	txt("Where did you get that? Cuz I know you didn't buy it.", "Mordecai", MORDECAI.SIX, SPRITEPOS.LEFT),
	txt("I just FOUND it in the park yesterday. It was just lying around on a#bench or something.", "Rigby", RIGBY.SEVEN, SPRITEPOS.RIGHT),
	txt("Some idiot must have just forgotten it there. There isn't even a#password.", "Rigby", RIGBY.SIX, SPRITEPOS.RIGHT),
	txt("Why don't we make an instagram account?", "Rigby", RIGBY.FOUR, SPRITEPOS.RIGHT),
	txt("What? ...Why?", "Mordecai", MORDECAI.SEVEN, SPRITEPOS.LEFT),
	txt("Think about it, dude. All our friends have instagram accounts.", "Rigby", RIGBY.SEVEN, SPRITEPOS.RIGHT),
	txt("Benson,", "Rigby", RIGBY.SEVEN, SPRITEPOS.RIGHT, bk_lolz1), //show benson
	txt("Skips,", "Rigby", RIGBY.SEVEN, SPRITEPOS.RIGHT, bk_lolz2), //show skips
	txt("even POPS has one.", "Rigby", RIGBY.SEVEN, SPRITEPOS.RIGHT, bk_lolz3), //show pops
	txt("Don't you feel like we're missing out on something?", "Rigby", RIGBY.SEVEN, SPRITEPOS.RIGHT, bk_bedroom),
	txt("Hmmmm... alright. But what should we post?#Margaret's probably gonna see it,#i don't want her to think i'm an idiot", "Mordecai", MORDECAI.EIGHT, SPRITEPOS.LEFT),
	txt("I'm not gonna let you post some fake garbage just to impress#Margaret. Girls think honesty is hot.#We gotta be like, authentic.", "Rigby", RIGBY.EIGHT, SPRITEPOS.RIGHT),
	txt("If you dont stay true to yourself you'll end up unhappy", "Rigby", RIGBY.EIGHT, SPRITEPOS.RIGHT),
	txt("Dude. That's like, philosophical", "Mordecai", MORDECAI.NINE, SPRITEPOS.LEFT),
	txt("I know. I'm objectively smarter than most of the population#you know", "Rigby", RIGBY.ONE, SPRITEPOS.RIGHT),
	txt("But like, what even are our \"true selves\" anyway?", "Mordecai", MORDECAI.SEVEN, SPRITEPOS.LEFT),
	txt("I don't know. We're just awesome.#We get so many bitches Mordecai, and we know it.#Women practically throw themselves at us. We're fuckboys", "Rigby", RIGBY.ONE, SPRITEPOS.RIGHT),
	txt("Dude. You're so right.", "Mordecai", MORDECAI.ONE, SPRITEPOS.LEFT),
	txt("But doesn't the word \"fuckboy\" have a pretty negative connotation?#Our current society is pretty sensitive to misogynistic terms", "Mordecai", MORDECAI.SEVEN, SPRITEPOS.LEFT),
	txt("What are you saying? Those aren't even real words", "Rigby", RIGBY.EIGHT, SPRITEPOS.RIGHT),
	txt("It's real, dude", "Mordecai", MORDECAI.SEVEN, SPRITEPOS.LEFT),
	txt("Whatever we'll just spell it differently,#that makes it a different a word.#Then people can't call us mycologists, or whatever", "Rigby", RIGBY.ONE, SPRITEPOS.RIGHT),
	txt("Alright, for our first post we gotta take like,#an awesome picture of us. No one will believe we're#fuccbois unless they SEE it.", "Mordecai", MORDECAI.ONE, SPRITEPOS.LEFT),
	txt(" |w130 |-", "", u, u, u, function() {instance_create(0, 0, o_camera)}), //take photo
	txt("Lemme see it!", "Rigby", RIGBY.FOUR, SPRITEPOS.RIGHT),
	txt("(...)", "", u, u, bk_post1),
	txt("Dude. we look so COOL!", "Rigby", RIGBY.FIVE, SPRITEPOS.RIGHT),
	txt("Really?", "Mordecai", MORDECAI.SEVEN, SPRITEPOS.LEFT),
	txt("Holy shit. This is perfect.", "Mordecai", MORDECAI.ONE, SPRITEPOS.LEFT),
	txt("Post the picture post the picture post the pic", "Rigby", RIGBY.FOUR, SPRITEPOS.RIGHT, bk_bedroom), //skip here
	txt("Wait no, we gotta put like, some cool words on it", "Mordecai", MORDECAI.EIGHT, SPRITEPOS.LEFT),
	txt("YES! okay let me write it", "Rigby", RIGBY.FOUR, SPRITEPOS.RIGHT),
	txt("No dude, you're just gonna make it say something dumb", "Mordecai", MORDECAI.SIX, SPRITEPOS.LEFT),
	txt("No no I won't just trust me", "Rigby", RIGBY.FOUR, SPRITEPOS.RIGHT),
	txt("FINE.#But you better not post it without showing me first", "Mordecai", MORDECAI.SIX, SPRITEPOS.LEFT),
	txt("Yeah yeah ok", "Rigby", RIGBY.FOUR, SPRITEPOS.RIGHT),
	txt("(...)", ""),
	txt("Check it.", "Rigby", RIGBY.ONE, SPRITEPOS.RIGHT),
	txt("", "", u, u, bk_postwo), //show first post
	txt("That's so cool", "Mordecai", MORDECAI.ONE, SPRITEPOS.LEFT),
	txt("I told you I'm a genius", "Rigby", RIGBY.ONE, SPRITEPOS.RIGHT),
	txt("I'm posting it", "Mordecai", MORDECAI.ONE, SPRITEPOS.LEFT, bk_bedroom),
	ntxt(1, "", u, u, bk_computer, c_resettalkers), //cg one
	txt("Yes yes yes", "Rigby", RIGBY.NOTHING, SPRITEPOS.HIDDEN),
	txt("Hehehe", "Mordecai", MORDECAI.NOTHING, SPRITEPOS.HIDDEN),
	txt("", "", u, u, bk_posthree), //show post on instagram
	txt("Man, how are we so good at social media?", "Rigby", RIGBY.ONE, SPRITEPOS.RIGHT),
	txt("We're just naturals, dude. Nothing else to it.", "Mordecai", MORDECAI.FOUR, SPRITEPOS.LEFT),
	txt("There's no way Margaret won't go out with you now", "Rigby", RIGBY.ONE, SPRITEPOS.RIGHT, bk_bedroom),
	txt("You're right. I gotta go tell her to follow me!", "Mordecai", MORDECAI.FIVE, SPRITEPOS.LEFT),
	txt("I'm gonna go tell her right now. See you later dude", "Mordecai", MORDECAI.THREE, SPRITEPOS.LEFT),
	txt("Cya", "Rigby", RIGBY.ONE, SPRITEPOS.RIGHT),
	
	]
	endevent = function(){audio_stop_all() room_goto_next()};
}
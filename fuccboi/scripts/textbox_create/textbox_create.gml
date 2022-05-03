function textbox_create(textscript=txt_test, style=global.textdefault, advancable=true) {
	instance_destroy(o_textbox);
	var chump = instance_create(style.x, style.y, o_textbox, layer_get_id("Instances_ui"));
	chump.width = style.width;
	chump.height = style.height;
	chump.spriteposx = style.spriteposx;
	chump.spriteposy = style.spriteposy;
	chump.advance = advancable;
	chump.msgscript = textscript;
}

global.textdefault = {
	x: 320,
	y: 250,
	width: 420,
	height: 80,
	spriteposx: 210,
	spriteposy: 190,
}

enum FONT {
	
}
function textbox_create(textscript=txt_test, style=global.textdefault, advancable=true) {
	instance_destroy(o_textbox);
	var chump = instance_create(style.x, style.y, o_textbox, layer_get_id("Instances"));
	chump.width = style.width;
	chump.height = style.height;
	chump.advance = advancable;
	chump.msgscript = textscript;
}

global.textdefault = {
	x: 1920/2,
	y: 1080-300,
	width: 2000,
	height: 1000,
}
global.textdefaultwo = {
	x: 1920/2,
	y: 999999,
	width: 2000,
	height: 1000,
}

enum FONT {
	
}
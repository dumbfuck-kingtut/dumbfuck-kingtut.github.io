function textbox_create(textscript=txt_test, style=global.textdefault, advancable=true) {
	instance_destroy(o_textbox);
	var chump = instance_create(style.x, style.y, o_textbox, layer_get_id("Instances"));
	chump.width = style.width;
	chump.height = style.height;
	chump.advance = advancable;
	chump.msgscript = textscript;
}

global.textdefault = {
	x: 1267/2,
	y: 1080-300,
	width: 1267,
	height: 1000,
}
global.textdefault = {
	x: 1920/2,
	y: 0,
	width: 2000,
	height: 1000,
}

enum FONT {
	
}
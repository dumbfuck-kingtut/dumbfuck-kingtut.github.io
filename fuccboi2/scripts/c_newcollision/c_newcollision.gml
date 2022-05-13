function c_newcollision(){
	//var xmeeting = collision_rectangle(bbox_left+hspd,bbox_top,floor(bbox_right+hspd),bbox_bottom,o_solid,false,false)
	var a = {bbox_left: bbox_left+hspd,
		bbox_top:bbox_top,
		bbox_right: bbox_right+hspd,
		bbox_bottom:bbox_bottom}
	var xmeeting = bread_collision(a,o_solid,COLTYPE.LESSTHAN)
	if(xmeeting){
		switch(sign(hspd)){
			case 1:
				x = xmeeting.bbox_left - (sprite_get_bbox_right(sprite_index)-sprite_get_xoffset(sprite_index) );
			break;
			case -1:
				log(xmeeting.x)
				log(a.bbox_right)
				log(xmeeting.bbox_left)
				log(a.bbox_right > xmeeting.bbox_left)
				x = xmeeting.bbox_right + ( sprite_get_xoffset(sprite_index)  -sprite_get_bbox_left(sprite_index)) -1;
			break;
			case 0:
				log("im in your walls (horizontally)")
			break;
		}
		
		hspd = 0;
	}
	//var ymeeting = collision_rectangle(bbox_left,ceil(bbox_top+vspd),bbox_right,ceil(bbox_bottom+vspd),o_solid,false,false);
	//var ymeeting = place_meeting(x,y+vspd,o_solid);
	var a = {bbox_left: bbox_left,
		bbox_top:bbox_top+vspd,
		bbox_right: bbox_right,
		bbox_bottom:bbox_bottom+vspd}
	var ymeeting = bread_collision(a,o_solid,COLTYPE.LESSTHAN)
	if(ymeeting){
		switch(sign(vspd)){
			case 1:
				y = ymeeting.bbox_top - (sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index))-1;
			break;
			case -1:
				y = ymeeting.bbox_bottom + sprite_get_bbox_top(sprite_index);
			break;
			case 0:
				log("im in your walls (vertically)");
		}
		vspd = 0;
	}
}
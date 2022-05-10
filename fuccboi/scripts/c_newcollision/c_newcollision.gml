function c_newcollision(){
	var xmeeting = collision_rectangle(floor(bbox_left+hspd),bbox_top,ceil(bbox_right+hspd),bbox_bottom,o_solid,false,false)
	if(xmeeting){
		switch(sign(hspd)){
			case 1:
				x = xmeeting.bbox_left - (sprite_get_bbox_right(sprite_index)-sprite_get_xoffset(sprite_index) )-1;
			break;
			case -1:
				x = xmeeting.bbox_right + ( sprite_get_xoffset(sprite_index)  -sprite_get_bbox_left(sprite_index)) ;
			break;
		}
		hspd = 0;
		
	}
	var ymeeting = collision_rectangle(bbox_left,ceil(bbox_top+vspd),bbox_right,ceil(bbox_bottom+vspd),o_solid,false,false);
	//var ymeeting = place_meeting(x,y+vspd,o_solid);
	if(ymeeting){
		switch(sign(vspd)){
			case 1:
				y = ymeeting.bbox_top - (sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index))-1;
			break;
			case -1:
				y = ymeeting.bbox_bottom + sprite_get_bbox_top(sprite_index);
			break;
		}
		vspd = 0;
	}
}
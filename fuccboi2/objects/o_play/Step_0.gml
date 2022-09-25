image_speed = 0;
if mouse_x > 740 && mouse_x < 1200 && mouse_y > 210 && mouse_y < 520 {
	if mouse_check_button_pressed(mb_left) {
		room_goto(game);
	}
	image_index = mouse_y < 354;
}
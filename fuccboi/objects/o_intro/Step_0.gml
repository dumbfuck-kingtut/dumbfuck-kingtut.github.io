count++;
if count == 135 || count == 260 || count == 370 {
	image_index++;
}
if count == 460 {
	room_goto_next();
}
if keyboard_check_pressed(vk_enter) {room_goto_next() audio_stop_all()}
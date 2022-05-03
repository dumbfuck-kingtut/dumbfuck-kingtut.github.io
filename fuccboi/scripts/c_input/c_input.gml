function c_input() {
	left = keyboard_check(vk_left) | keyboard_check(ord("A"));
	right = keyboard_check(vk_right) | keyboard_check(ord("D"));
	jump = keyboard_check_pressed(vk_space) | keyboard_check_pressed(ord("Z")) | keyboard_check_pressed(vk_up) | keyboard_check_pressed(ord("W"));
	
	ctrlh = keyboard_check(vk_control);
	back = keyboard_check_pressed(vk_escape) | keyboard_check_pressed(ord("x"));
	select = jump | keyboard_check_pressed(vk_enter);
}
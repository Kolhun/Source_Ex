if (mode == INPUT_MODE.KEYBOARD) {
	key_left = keyboard_check(key_left_index);
	key_right = keyboard_check(key_right_index);
	key_up = keyboard_check(key_up_index);
	key_down = keyboard_check(key_down_index);
	
	movement_axis.update(key_right - key_left, key_down - key_up);
}
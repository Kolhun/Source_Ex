enum INPUT_MODE {
	KEYBOARD
}

mode = INPUT_MODE.KEYBOARD;

key_left_index = ord("A");
key_right_index = ord("D");
key_up_index = ord("W");
key_down_index = ord("S");

key_left = false;
key_right = false;
key_up = false;
key_down = false;

movement_axis = new axis_template();
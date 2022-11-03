function scrollbar_temp(_x, _y, _max_pos, _width = 16, _height = 100) constructor {
	// start position
	start_x = _x;
	start_y = _y;
	
	x = start_x;
	y = start_y;
	
	// maximum offset (from start_pos to start_pos + max_pos)
	max_pos = _max_pos /* - _height */ 
	
	// size of scrollbar
	width = _width;
	height = _height;
	
	value = 0; // range from 0 to 1
	
	selected = false;
	click = false;
	
	check_to_select = function() {
		var mx, my;
		mx = device_mouse_x_to_gui(0);
		my = device_mouse_y_to_gui(0);
		
		return point_in_rectangle(mx, my, x, y, x + width, y + height);
	}
	
	check_to_unselect = function() {
		return mouse_check_button_released(mb_left);
	}
	
	check_to_click = function() {
		return mouse_check_button(mb_left);
	}
	
	// can be changed on x instead of y
	
	get_real_position = function() {
		return y;
	}
	
	get_mouse_position = function() {
		return device_mouse_y_to_gui(0);
	}
	
	get_start_position = function() {
		return start_y;
	}
	
	set_real_position = function(_val) {
		y = _val;
	}
	
	fix_position = function() { // by default it's y
		return (get_mouse_position() - get_real_position());
	}
	
	clamp_position = function() { // and here
		var mouse_pos, start_pos;
		mouse_pos = get_mouse_position();
		start_pos = get_start_position();
		
		set_real_position(clamp(mouse_pos - pos_offset, start_pos, start_pos + max_pos))
	}
	
	delta_position = function() { // and here too
		return (get_real_position() - get_start_position());
	}
	
	step = function() {
		var clicked_prev = click;
		
		selected = selected || check_to_select();
		click = check_to_click();
		
		if (check_to_unselect()) selected = false;
		
		if (click && selected) {
			if (!clicked_prev) pos_offset = fix_position();
			
			clamp_position();
		}
		
		value = delta_position() / max_pos;
	}
	
	draw = function() {
		draw_rectangle(x, y, x + width, y + height, false);
	}
	
	get_value = function() {
		return value;
	}
}

function scrollbar_hor(_x, _y, _max_pos, _width = 100, _height = 16) : scrollbar_temp(_x, _y, _max_pos, _width, _height) constructor {
	get_real_position = function() {
		return x;
	}
	
	get_mouse_position = function() {
		return device_mouse_x_to_gui(0);
	}
	
	get_start_position = function() {
		return start_x;
	}
	
	set_real_position = function(_val) {
		x = _val;
	}
}






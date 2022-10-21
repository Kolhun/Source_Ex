function axis_template() constructor {
	x = 0;
	y = 0;
	
	// (normalised)
	nx = 0;
	ny = 0;
	
	update = function(_x, _y) {
		x = _x;
		y = _y;
		
		nx = x;
		ny = y;
		
		var len = sqrt(nx * nx + ny * ny);
		if (len != 0) {
			nx /= len;
			ny /= len;
		}
	}
}
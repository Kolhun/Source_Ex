#region Base. 

function physics_system_create() {
	asset_add_tags(object_index, "physics", asset_object);
	
	hsp = 0;
	vsp = 0;
}

function physics_system_process() {
	var x_force, y_force;
	x_force = hsp;
	y_force = vsp;
	
	if (instance_has_tag(id, "bounce")) {
		physics_bounce_system_process();
		
		x_force += bounce_hsp;
		y_force += bounce_vsp;
	}
	
	x += x_force;
	y += y_force;
}

#endregion

#region Bounce. 

function physics_bounce_system_create(_fric) {
	asset_add_tags(object_index, "bounce", asset_object);
	
	bounce_fric = _fric;
	
	bounce_hsp = 0;
	bounce_vsp = 0;
	
	bounce_force = 0;
	bounce_dir = 0;
}

function physics_bounce_system_process() {
	bounce_force -= bounce_fric;
	bounce_force = max(0, bounce_force);
	
	bounce_hsp = lengthdir_x(bounce_force, bounce_dir);
	bounce_vsp = lengthdir_y(bounce_force, bounce_dir);
}

function physics_bounce_set(_force, _dir, _inst = id) {
	if (instance_has_tag(_inst, "bounce")) with(_inst) {
		bounce_force = _force;
		bounce_dir = _dir;
	}
}

#endregion
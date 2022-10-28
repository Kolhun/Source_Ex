if (event_to_me()) {
	switch(event_data[? "message"]) {
		case("run_jump") :
		
		var dir = point_direction(x, y, o_player.x, o_player.y);
		hsp = lengthdir_x(spd, dir);
		vsp = lengthdir_y(spd, dir);
		
		break;
		
		case("attack_jump") :
		
		var dist, dir;
		dist = point_distance(x, y, o_player.x, o_player.y);
		dir = point_direction(x, y, o_player.x, o_player.y);
		
		var frames_to_animend, jump_force;
		frames_to_animend = (image_number - image_index - 1) / (image_speed * (sprite_get_speed(sprite_index) / 60));
		jump_force = dist / frames_to_animend;
		
		hsp = lengthdir_x(jump_force, dir);
		vsp = lengthdir_y(jump_force, dir);
		
		break;
	}
}
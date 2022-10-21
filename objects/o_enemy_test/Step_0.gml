var dist = distance_to_point(o_player.x, o_player.y);
if (state != "attack") {
	if (dist < dist_run) {
		state = "run";
	}

	if (dist < dist_attack) {
		state = "attack";
	}
}

switch(state) {
	case("stop") :
	
	sprite_index = spr_enemy_test;
	
	hsp = 0;
	vsp = 0;
	
	break;
	
	case("run") :
	
	sprite_index = spr_enemy_test;
	
	enemy_run_to_player();
	
	break;
	
	case("attack") :
	
	sprite_index = spr_enemy_test_attack;
	
	hsp = 0;
	vsp = 0;
	
	if (place_meeting(x, y, o_player)) o_player.get_damage(damage, knockback);
	
	if (animation_end()) state = "stop";
	
	break;
}

physics_system_process();
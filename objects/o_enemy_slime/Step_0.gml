mask_index = sprite_index;

switch(state) {
	case("stop") :
	
	sprite_index = spr_enemy_slime_idle;
	
	hsp = 0;
	vsp = 0;
	
	if (animation_end()) {
		stop_pause_timer --;
		
		if (stop_pause_timer <= 0) {
			var dist = point_distance(x, y, o_player.x, o_player.y);
			if (dist < dist_run) {
				state = "run";
			}
	
			if (dist < dist_attack) {
				state = "attack";
			}
		}
	}
	
	break;
	
	case("run") :
	
	sprite_index = spr_enemy_slime_jump;
	
	if (animation_end()) state_to_stop();
	
	break;
	
	case("attack") :
	
	sprite_index = spr_enemy_slime_attack;
	mask_index = spr_enemy_slime_mask_attack;
	
	if (place_meeting(x, y, o_player)) o_player.get_damage(damage, knockback);
	
	if (animation_end()) state_to_stop();
	
	break;
}

if (hsp != 0) image_xscale = sign(hsp);

state_prev = state;

physics_system_process();
/// @description Insert description here
// You can write your code in this editor

speed_in_player = 4

hp = 20;

physics_system_create();
physics_bounce_system_create(0.4);

immortality_time = 30;
immortality_timer = immortality_time;

can_get_damage = function() {
	return (immortality_timer <= 0);
}

get_damage = function(_damage, _knockback) {
	if (can_get_damage()) {
		immortality_timer = immortality_time;
		
		o_single.personality_health -= _damage;
		
		var dir = point_direction(other.x, other.y, x, y);
		physics_bounce_set(_knockback, dir);
	}
}

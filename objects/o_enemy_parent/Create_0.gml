#region Getting damage, hp, immortality and etc. 

hp = 0;

immortality_time = 30;
immortality_timer = immortality_time;

can_get_damage_base = function() {
	return (immortality_timer <= 0);
}

can_get_damage = function() {
	can_get_damage_base();
}

get_damage_base = function(_damage) {
	hp -= _damage;
}

get_damage = function(_damage) {
	get_damage_base(_damage);
}

#endregion

damage = 2;
knockback = 10;
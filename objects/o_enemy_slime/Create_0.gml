event_inherited();

state = "stop";
state_prev = "";

state_to_stop = function() {
	stop_pause_timer = stop_pause_time
		
	state = "stop";
}

physics_system_create();

spd = 3;

dist_run = 400;
dist_attack = 120;

stop_pause_time = 1;
stop_pause_timer = stop_pause_time;
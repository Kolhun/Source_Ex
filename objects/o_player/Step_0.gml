var axis_h, axis_v;
axis_h = o_input_controller.movement_axis.nx;
axis_v = o_input_controller.movement_axis.ny;

hsp = axis_h * speed_in_player;
vsp = axis_v * speed_in_player;

immortality_timer --;

sprite_index = s_idle;

var moving = (hsp != 0) || (vsp != 0);
sprite_index = (moving ? s_walk : s_idle);

if (hsp != 0) image_xscale = sign(hsp);

physics_system_process();
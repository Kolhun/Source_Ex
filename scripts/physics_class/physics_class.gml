#region Base. 

#macro LAYER_TILE_COLLISION layer_get_id("TileCollision")
#macro TILEMAP_COLLISION_ID layer_tilemap_get_id(LAYER_TILE_COLLISION)
#macro TILEMAP_COLLISION_TILESET tilemap_get_tileset(TILEMAP_COLLISION_ID)
#macro TILEMAP_COLLISION_WIDTH tilemap_get_tile_width(TILEMAP_COLLISION_ID)
#macro TILEMAP_COLLISION_HEIGHT tilemap_get_tile_height(TILEMAP_COLLISION_ID)

global.tilemap_collision_mask_map = ds_map_create();
global.tilemap_collision_mask_map[? tst_test_collision] = spr_test_collision_tileset_mask;

function physics_system_create(_solid) {
	asset_add_tags(object_index, "physics", asset_object);
	
	hsp = 0;
	vsp = 0;
	
	if (_solid) physics_system_mark_as_solid();
}

function physics_system_mark_as_solid() {
	asset_add_tags(object_index, "solid", asset_object);
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
	
	var collided_instance, collided_tile;
	collided_instance = physics_instance_collision_process(x_force, y_force, tag_get_asset_ids(["solid"], asset_object));
	collided_tile = physics_tile_collision_process(x_force, y_force);
	
	if (collided_instance.x || collided_tile.x) x_force = 0;
	if (collided_instance.y || collided_tile.y) y_force = 0;
	
	x += x_force;
	y += y_force;
}

#endregion

#region Collision. 

function place_meeting_array(_x, _y, _array) {
	var num = array_length(_array), collided = noone;
	for(var i = 0; i < num; i ++) {
		if (place_meeting(_x, _y, _array[i])) {
			collided = instance_place(_x, _y, _array[i]);
			
			break;
		}
	}
	
	return collided;
}

function tile_meeting(_x, _y) {
	var collided = false;
	
	if (!instance_exists(o_tile_collider)) instance_create_depth(0, 0, depth - 1, o_tile_collider);
	
	var px, py, ps;
	px = x;
	py = y;
	
	ps = image_xscale;
	
	x = _x;
	y = _y;
	
	image_xscale = 1;
	
	var xlen, ylen;
	xlen = sprite_width / TILEMAP_COLLISION_WIDTH + 1;
	ylen = sprite_height / TILEMAP_COLLISION_HEIGHT + 1;
	
	for(var i = 0; i <= sprite_width; i += sprite_width / xlen) {
		for(var j = 0; j <= sprite_height; j += sprite_height / ylen) {
			var xx, yy;
			xx = ((bbox_left + i) div TILEMAP_COLLISION_WIDTH) * TILEMAP_COLLISION_WIDTH;
			yy = ((bbox_top + j) div TILEMAP_COLLISION_HEIGHT) * TILEMAP_COLLISION_HEIGHT;
			
			with(o_tile_collider) {
				x = xx;
				y = yy;
		
				sprite_index = global.tilemap_collision_mask_map[? TILEMAP_COLLISION_TILESET];
				image_index = tilemap_get_at_pixel(TILEMAP_COLLISION_ID, xx, yy);
			}
			
			if (place_meeting(x, y, o_tile_collider)) {
				collided = true;
				
				break;
			}
		}
	}
	
	x = px;
	y = py;
	
	image_xscale = ps;
	
	return collided;
}

function physics_instance_collision_process(_force_x, _force_y, _array) {
	var collided = {x: false, y: false};
	
	var hor = place_meeting_array(x + _force_x, y, _array);
	if (hor != noone) {
		while(!place_meeting(x + sign(_force_x), y, hor)) x += sign(_force_x);
		
		collided.x = true;
	}
	
	var ver = place_meeting_array(x, y + _force_y, _array);
	if (ver != noone) {
		while(!place_meeting(x, y + sign(_force_y), ver)) y += sign(_force_y);
		
		collided.y = true;
	}
	
	return collided;
}

function physics_tile_collision_process(_force_x, _force_y) {
	var collided = {x: false, y: false};
	if (!layer_exists(LAYER_TILE_COLLISION)) return collided;
	
	if (tile_meeting(x + _force_x, y)) {
		while(!tile_meeting(x + sign(_force_x), y)) x += sign(_force_x);
		
		collided.x = true;
	}
	
	if (tile_meeting(x, y + _force_y)) {
		while(!tile_meeting(x, y + sign(_force_y))) y += sign(_force_y);
		
		collided.y = true;
	}
	
	return collided;
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